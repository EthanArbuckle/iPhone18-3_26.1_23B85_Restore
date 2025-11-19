void sub_1DD449160()
{
  v1 = v0;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "[UCG] Updating trial factors in the CRR Cache...", v5, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  v6 = type metadata accessor for ContactResolverCache();
  v7 = *(v6 + 76);
  if (*(v1 + v7))
  {
    v8 = v6;
    v9 = *(v1 + v7);

    sub_1DD5FFDD8();
    v10 = OUTLINED_FUNCTION_35_7(0xD000000000000021, "triggeringCondition");

    if (v10)
    {
      v11 = [v10 BOOLeanValue];
    }

    else
    {
      v11 = 0;
    }

    *(v1 + v8[26]) = v11;
    v12 = sub_1DD5FFDD8();
    v13 = sub_1DD603474(v12, *(v1 + v8[24]));

    v14 = (v1 + v8[29]);
    *v14 = v13 & 1;
    v14[1] = HIBYTE(v13) & 1;
    v15 = v8[20];
    if (*(v1 + v15))
    {
      v16 = *(v1 + v15);

      v17 = sub_1DD5FFDD8();
      v18 = sub_1DD59B690(0x4533457273417369, 0xEE0064656C62616ELL, v17);

      if (v18)
      {
        v63 = [v18 BOOLeanValue];
      }

      else
      {
        v63 = 0;
      }

      v19 = sub_1DD5FFDD8();
      v20 = OUTLINED_FUNCTION_31_9();
      v22 = sub_1DD59B690(v20, v21, v19);

      if (v22 && (v23 = sub_1DD44FB0C(v22), v24))
      {
        v61 = v23;
      }

      else
      {

        v61 = 1701736302;
      }

      v25 = sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v28 = sub_1DD59B690(v26 + 3, v27 | 0x8000000000000000, v25);

      if (v28)
      {
        [v28 longValue];
      }

      v29 = sub_1DD5FFDD8();
      v30 = OUTLINED_FUNCTION_31_9();
      v32 = sub_1DD59B690(v30, v31, v29);

      if (v32)
      {
        [v32 longValue];
      }

      sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v35 = OUTLINED_FUNCTION_35_7(v33 + 4, v34);

      if (v35)
      {
        [v35 doubleValue];
      }

      sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v38 = OUTLINED_FUNCTION_35_7(v36 + 4, v37);

      if (v38)
      {
        [v38 doubleValue];
      }

      sub_1DD5FFDD8();
      OUTLINED_FUNCTION_8_13();
      v41 = OUTLINED_FUNCTION_35_7(v39 + 7, v40);

      if (v41)
      {
        v42 = [v41 BOOLeanValue];

        v44 = OUTLINED_FUNCTION_11_16(v43);
        OUTLINED_FUNCTION_14_17(v44, v45, v46, v47, v48, v49, v50, v51, v61, v62, v63);
        *(v1 + 56) = v42;
      }

      else
      {

        v53 = OUTLINED_FUNCTION_11_16(v52);
        OUTLINED_FUNCTION_14_17(v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
        *(v1 + 56) = 0;
      }
    }

    else
    {
    }
  }
}

void sub_1DD4495C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ContactResolverCache();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCD0, &qword_1DD64AF48);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DD54EF7C();
  qword_1EE16F000 = v10;
}

uint64_t sub_1DD449678()
{
  v0 = sub_1DD640478();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1DD640438();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = sub_1DD63FBD8();
  v14 = OUTLINED_FUNCTION_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FBC8();
  sub_1DD640428();
  (*(v3 + 104))(v8, *MEMORY[0x1E69E8090], v0);
  result = sub_1DD6404A8();
  qword_1EE16F008 = result;
  return result;
}

id sub_1DD44980C()
{
  result = sub_1DD449834();
  qword_1EE16F010 = result;
  *algn_1EE16F018 = v1;
  qword_1EE16F020 = v2;
  unk_1EE16F028 = v3;
  return result;
}

id sub_1DD449834()
{
  v0 = type metadata accessor for Signpost();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v8 = qword_1EE166460;
  v9 = v7;
  if (v8 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v10 = qword_1EE16F0C0;
  v11 = v6 + *(v0 + 20);
  *v11 = "CRR.initContactStoreObserver";
  *(v11 + 8) = 28;
  *(v11 + 16) = 2;
  v12 = v10;
  sub_1DD63F9B8();
  *(v6 + *(v0 + 24)) = v12;
  v13 = v12;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD643F90;
  v15 = sub_1DD6408F8();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1DD392BD8();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  OUTLINED_FUNCTION_22();
  sub_1DD63F998();

  v18 = [objc_opt_self() defaultCenter];
  v19 = *MEMORY[0x1E695C3E0];
  v33 = sub_1DD44F114;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1DD44F5CC;
  v32 = &block_descriptor_80;
  v20 = _Block_copy(&aBlock);
  [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  v21 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];

  v22 = v21;
  v23 = *MEMORY[0x1E695C458];
  OUTLINED_FUNCTION_57();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v33 = sub_1DD44FF70;
  v34 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1DD44F5CC;
  v32 = &block_descriptor_86;
  v25 = _Block_copy(&aBlock);
  v26 = v22;

  [v18 addObserverForName:v23 object:0 queue:0 usingBlock:v25];

  _Block_release(v25);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_7_17();
  sub_1DD4501D4(v6, v27);
  return v9;
}

uint64_t sub_1DD449C00@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)(uint64_t a1)@<X6>, int a8@<W7>, void *a9@<X8>, unsigned __int8 *a10, void *a11, char a12, unint64_t a13, double a14, unsigned __int16 a15, uint64_t a16, unsigned __int8 a17)
{
  LODWORD(v283) = a8;
  v308 = a7;
  v303 = a6;
  v304 = a4;
  v306 = a5;
  v285 = a2;
  v286 = a3;
  v315 = a1;
  v318 = a11;
  v18 = *a10;
  v341[0] = *(a10 + 1);
  *(v341 + 3) = *(a10 + 1);
  v19 = *(a10 + 1);
  v267 = *(a10 + 2);
  v268 = v19;
  v20 = *(a10 + 4);
  v266 = *(a10 + 3);
  v264 = v20;
  v21 = *(a10 + 5);
  v22 = *(a10 + 6);
  v270 = a10;
  v287 = a10[56];
  v288 = v18;
  v305 = sub_1DD63F308();
  v316 = *(v305 - 8);
  v23 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v305);
  v279 = v24;
  v281 = &v256 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v269 = &v256 - v27;
  v317 = sub_1DD63D168();
  v319 = *(v317 - 8);
  v28 = *(v319 + 64);
  v29 = MEMORY[0x1EEE9AC00](v317);
  v297 = &v256 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v312 = &v256 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v262 = &v256 - v34;
  v35 = sub_1DD63FB78();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v256 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_1DD63FBD8();
  v40 = *(v329 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v329);
  v43 = &v256 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ContactResolverCache();
  v45 = a9 + *(v44 + 56);
  v46 = type metadata accessor for MLContactRecommender();
  v284 = v45;
  v311 = v46;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
  v320 = a9;
  v321 = v44;
  v47 = a9 + *(v44 + 120);
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  v314 = v47;
  if (qword_1EE165278 != -1)
  {
    swift_once();
  }

  v299 = a16;
  v48 = qword_1EE16F008;
  v337 = sub_1DD44C16C;
  v338 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_3;
  v49 = _Block_copy(&aBlock);
  v50 = v48;
  sub_1DD63FBA8();
  *&v332 = MEMORY[0x1E69E7CC0];
  v51 = sub_1DD45003C(&qword_1EE163978, MEMORY[0x1E69E7F60]);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
  v53 = sub_1DD44FA38();
  v323 = v52;
  v322 = v53;
  v326 = v51;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v43, v39, v49);
  _Block_release(v49);

  v54 = *(v36 + 8);
  v328 = v36 + 8;
  v325 = v54;
  v54(v39, v35);
  v55 = *(v40 + 8);
  v327 = v40 + 8;
  v324 = v55;
  v55(v43, v329);
  v56 = v318;
  v301 = v39;
  v302 = v35;
  v300 = v43;
  if (v318 == 2)
  {
    v56 = sub_1DD4C01D8();
    v58 = v57 & 1;
  }

  else
  {
    v58 = a12;
  }

  v59 = v320;
  v60 = v308;
  v340 = BYTE1(v56);
  v339 = BYTE5(v56);
  v61 = v320 + v321[7];
  *v61 = v56;
  v61[8] = v58;
  sub_1DD3C4EB4();
  if (v333)
  {
    sub_1DD3AA4A8(&v332, &aBlock);
  }

  else
  {
    v62 = sub_1DD63F848();
    v63 = sub_1DD63F838();
    v336 = v62;
    v337 = &off_1F58C1B10;
    *&aBlock = v63;
    if (v333)
    {
      sub_1DD390754(&v332, &qword_1ECCDCCD8, &unk_1DD64AF60);
    }
  }

  v64 = v321[24];
  v65 = v340;
  sub_1DD3AA4A8(&aBlock, v59 + v321[10]);
  sub_1DD44FA9C(v299, v314);
  *(v59 + v64) = v60;
  if (v65)
  {
    v66 = qword_1EE160540;
    v67 = v60;
    if (v66 != -1)
    {
      swift_once();
    }

    v68 = sub_1DD63F9F8();
    __swift_project_value_buffer(v68, qword_1EE16EF00);
    v69 = sub_1DD63F9D8();
    v70 = sub_1DD640368();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1DD38D000, v69, v70, "Trial is disabled for this request", v71, 2u);
      MEMORY[0x1E12B3DA0](v71, -1, -1);
    }

    v72 = 0;
    v73 = 0;
    v318 = 0;
    v74 = 1;
  }

  else
  {
    v75 = objc_opt_self();
    v76 = v60;
    v77 = [v75 clientWithIdentifier_];
    type metadata accessor for TrialManager();
    v78 = swift_allocObject();
    v72 = sub_1DD5506B4(v77, 0xD000000000000027, 0x80000001DD669B10, v78);

    v79 = [v75 clientWithIdentifier_];
    v80 = swift_allocObject();
    v318 = sub_1DD5506B4(v79, 0xD000000000000021, 0x80000001DD66C320, v80);

    v81 = [v75 clientWithIdentifier_];
    v82 = swift_allocObject();
    v73 = sub_1DD5506B4(v81, 0xD000000000000026, 0x80000001DD66C350, v82);
    LOBYTE(v81) = v339;
    v74 = v72 == 0;

    if ((v81 & 1) == 0 && v72)
    {
      v83 = sub_1DD5FFDD8();
      v84 = sub_1DD59B690(0xD000000000000012, 0x80000001DD66C510, v83);

      if (v84 && (v85 = [v84 BOOLeanValue], v84, v85))
      {
        if (qword_1EE160540 != -1)
        {
          swift_once();
        }

        v86 = sub_1DD63F9F8();
        __swift_project_value_buffer(v86, qword_1EE16EF00);
        v87 = sub_1DD63F9D8();
        v88 = sub_1DD640368();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_1DD38D000, v87, v88, "Trial override: searchNLCandidates=true", v89, 2u);
          MEMORY[0x1E12B3DA0](v89, -1, -1);
        }

        v74 = 0;
        v61[5] = 1;
      }

      else
      {
        v74 = 0;
      }
    }
  }

  v263 = dispatch_group_create();
  v90 = swift_allocObject();
  v314 = v90;
  *(v90 + 16) = 0;
  v271 = v90 + 16;
  v91 = swift_allocObject();
  v313 = v91;
  *(v91 + 16) = 0;
  v272 = v91 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
  v296 = swift_allocBox();
  v277 = v92;
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v311);
  v93 = type metadata accessor for StringTokenizer();
  v295 = swift_allocBox();
  *v94 = 0;
  v95 = *(v93 + 20);
  v278 = v94;
  sub_1DD63D158();
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  v273 = v96 + 16;
  v294 = v96;
  *(v96 + 24) = 0;
  v97 = swift_allocObject();
  v311 = v97;
  *(v97 + 16) = 0;
  v274 = v97 + 16;
  v98 = swift_allocObject();
  v310 = v98;
  *(v98 + 16) = 0;
  v276 = v98 + 16;
  v99 = swift_allocObject();
  v309 = v99;
  *(v99 + 16) = MEMORY[0x1E69E7CD0];
  v275 = v99 + 16;
  v100 = swift_allocObject();
  *(v100 + 16) = 0u;
  v280 = v100 + 16;
  *(v100 + 32) = 0u;
  v293 = v100;
  *(v100 + 48) = 0;
  if (v74 || (, v101 = sub_1DD5FFDD8(), , v102 = sub_1DD59B690(0xD000000000000021, 0x80000001DD66C4E0, v101), , !v102))
  {
    LODWORD(v265) = 0;
  }

  else
  {
    LODWORD(v265) = [v102 BOOLeanValue];
  }

  v290 = 1701736302;
  LODWORD(v292) = v74;
  if (v73)
  {

    v103 = sub_1DD5FFDD8();

    v104 = sub_1DD59B690(0x4533457273417369, 0xEE0064656C62616ELL, v103);

    if (v104)
    {
      v105 = [v104 BOOLeanValue];
    }

    else
    {
      v105 = 0;
    }

    v111 = sub_1DD5FFDD8();

    v112 = sub_1DD59B690(0xD000000000000013, 0x80000001DD66C4C0, v111);

    if (v112 && (v113 = sub_1DD44FB0C(v112), v114))
    {
      v307 = v114;
      v290 = v113;
    }

    else
    {
      v307 = 0xE400000000000000;
    }

    v115 = sub_1DD5FFDD8();

    v116 = sub_1DD59B690(0xD000000000000016, 0x80000001DD66C420, v115);

    if (v116)
    {
      v289 = [v116 longValue];
    }

    else
    {
      v289 = 0;
    }

    v117 = sub_1DD5FFDD8();

    v118 = sub_1DD59B690(0xD000000000000013, 0x80000001DD66C440, v117);

    if (v118)
    {
      v107 = [v118 longValue];
    }

    else
    {
      v107 = 0;
    }

    v119 = sub_1DD5FFDD8();

    v120 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66C460, v119);

    if (v120)
    {
      [v120 doubleValue];
      v110 = v121;
    }

    else
    {
      v110 = 0x4059000000000000;
    }

    v122 = sub_1DD5FFDD8();

    v123 = sub_1DD59B690(0xD000000000000017, 0x80000001DD66C480, v122);

    if (v123)
    {
      [v123 doubleValue];
      v109 = v124;
    }

    else
    {
      v109 = 0;
    }

    v125 = sub_1DD5FFDD8();

    v126 = sub_1DD59B690(0xD00000000000001ALL, 0x80000001DD66C4A0, v125);

    if (v126)
    {
      v106 = [v126 BOOLeanValue];
    }

    else
    {
      v106 = 0;
    }

    v108 = v307;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v289 = 0;
    v105 = 0;
    v108 = 0xE400000000000000;
    v109 = 0;
    v110 = 0x4059000000000000;
  }

  if (*(v270 + 2))
  {

    v331[0] = v341[0];
    *(v331 + 3) = *(v341 + 3);
    v108 = v267;
    v289 = v266;
    v290 = v268;
    v270 = v264;
  }

  else
  {
    v270 = v107;
    v287 = v106;
    v288 = v105;
    v21 = v110;
    v22 = v109;
  }

  v128 = v321[21];
  v127 = v321[22];
  v307 = v108;
  v129 = 0;
  if (v105)
  {
    type metadata accessor for EuclidEmbeddingApi();
    swift_allocObject();
    v130 = sub_1DD4BA174();
    v131 = v320;
    *(v320 + v128) = v130;
    type metadata accessor for EuclidVectorDb();
    swift_allocObject();
    v129 = sub_1DD4B97D4();
  }

  else
  {
    v131 = v320;
    *(v320 + v128) = 0;
  }

  *(v131 + v127) = v129;
  if (v318 && (, v132 = sub_1DD5FFDD8(), , v133 = sub_1DD59B690(0xD000000000000014, 0x80000001DD66C400, v132), , v133))
  {
    LODWORD(v268) = [v133 BOOLeanValue];
  }

  else
  {
    LODWORD(v268) = 1;
  }

  if ((v292 & 1) != 0 || (v134 = sub_1DD5FFDD8(), , v135 = sub_1DD59B690(0xD000000000000014, 0x80000001DD66C400, v134), , !v135))
  {
    v136 = 1;
  }

  else
  {
    v136 = [v135 BOOLeanValue];
  }

  v137 = 999.999;
  if (v318)
  {

    v138 = sub_1DD5FFDD8();

    v139 = sub_1DD59B690(0xD000000000000021, 0x80000001DD66C3A0, v138);

    if (v139)
    {
      v140 = [v139 BOOLeanValue];
    }

    else
    {
      v140 = 1;
    }

    v141 = sub_1DD5FFDD8();

    v142 = sub_1DD59B690(0xD000000000000026, 0x80000001DD66C3D0, v141);

    if (v142)
    {
      [v142 doubleValue];
      v137 = v143;
    }
  }

  else
  {
    v140 = 1;
  }

  v144 = a15;
  if (a13 == 2)
  {
    v145 = v268;
  }

  else
  {
    v145 = a13;
  }

  if (a13 == 2)
  {
    v146 = v136;
  }

  else
  {
    v146 = (a13 >> 8) & 1;
  }

  if (a13 != 2)
  {
    v140 = (a13 >> 16) & 1;
    v137 = a14;
  }

  v336 = &type metadata for ContactFeatures;
  v337 = sub_1DD3E6184();
  LOBYTE(aBlock) = 7;
  v147 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  LODWORD(v268) = v146;
  v148 = 256;
  if (!v146)
  {
    v148 = 0;
  }

  v266 = v145;
  LODWORD(v267) = v140;
  if (sub_1DD517EC0(v147 & 1, v148 & 0xFFFE | v145 & 1))
  {
    v149 = sub_1DD6401F8();
    __swift_storeEnumTagSinglePayload(v262, 1, 1, v149);
    v150 = swift_allocObject();
    *(v150 + 16) = 0;
    *(v150 + 24) = 0;
    sub_1DD4B0E18();
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v151 = sub_1DD63F9F8();
    __swift_project_value_buffer(v151, qword_1EE16F068);
    v152 = sub_1DD63F9D8();
    v153 = sub_1DD640368();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&aBlock = v155;
      *v154 = 136315138;
      *(v154 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &aBlock);
      _os_log_impl(&dword_1DD38D000, v152, v153, "%s ECR integration OFF. Skip creation of MegadomeSignalProvider", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v155);
      MEMORY[0x1E12B3DA0](v155, -1, -1);
      MEMORY[0x1E12B3DA0](v154, -1, -1);
    }
  }

  v156 = v317;
  v157 = v319;
  v158 = v269;
  if (a15 == 2)
  {
    if (v292)
    {
      v144 = 0;
      LODWORD(v264) = 0;
      goto LABEL_98;
    }

    v159 = sub_1DD5FFDD8();
    v144 = sub_1DD603474(v159, v308);
  }

  LODWORD(v264) = (v144 >> 8) & 1;
LABEL_98:
  LODWORD(v262) = a17;
  sub_1DD3C4EB4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v158, 1, v156);
  v298 = v72;
  v282 = v73;
  LODWORD(v269) = v144;
  if (EnumTagSinglePayload == 1)
  {
    v161 = v312;
    sub_1DD44C624(v312);
    if (__swift_getEnumTagSinglePayload(v158, 1, v156) != 1)
    {
      sub_1DD390754(v158, &qword_1ECCDC3F0, &unk_1DD64AF50);
    }
  }

  else
  {
    v161 = v312;
    (*(v157 + 32))(v312, v158, v156);
  }

  v162 = v263;
  dispatch_group_enter(v263);
  v261 = qword_1EE16F008;
  v163 = v297;
  v257 = *(v157 + 16);
  v258 = v157 + 16;
  v257(v297, v161, v156);
  v164 = (*(v157 + 80) + 40) & ~*(v157 + 80);
  v165 = (v291 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
  v256 = *(v157 + 80);
  v166 = swift_allocObject();
  v167 = v294;
  v166[2] = v295;
  v166[3] = v167;
  v166[4] = v311;
  v168 = *(v157 + 32);
  v259 = v164;
  v319 = v157 + 32;
  v292 = v168;
  v168(v166 + v164, v163, v156);
  v260 = v165;
  *(v166 + v165) = v162;
  v337 = sub_1DD44FB7C;
  v338 = v166;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v291 = &v335;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_25;
  v169 = _Block_copy(&aBlock);
  v170 = v261;

  v171 = v162;
  v172 = v300;
  sub_1DD63FBA8();
  *&v332 = MEMORY[0x1E69E7CC0];
  v174 = v301;
  v173 = v302;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v172, v174, v169);
  _Block_release(v169);

  v325(v174, v173);
  v324(v172, v329);

  dispatch_group_enter(v171);
  v175 = qword_1EE16F008;
  v176 = swift_allocObject();
  *(v176 + 16) = v314;
  *(v176 + 24) = v171;
  v337 = sub_1DD44FB80;
  v338 = v176;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_31;
  v177 = _Block_copy(&aBlock);
  v178 = v171;
  v179 = v175;

  sub_1DD63FBA8();
  *&v332 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v172, v174, v177);
  _Block_release(v177);

  v325(v174, v173);
  v324(v172, v329);

  dispatch_group_enter(v178);
  v180 = qword_1EE16F008;
  v181 = swift_allocObject();
  *(v181 + 16) = v313;
  *(v181 + 24) = v178;
  v337 = sub_1DD44FBC4;
  v338 = v181;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_37;
  v182 = _Block_copy(&aBlock);
  v183 = v178;
  v261 = v183;
  v184 = v180;

  sub_1DD63FBA8();
  *&v332 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v172, v174, v182);
  _Block_release(v182);

  v325(v174, v173);
  v324(v172, v329);

  dispatch_group_enter(v183);
  v263 = qword_1EE16F008;
  v185 = v316;
  v186 = v281;
  v187 = v305;
  (*(v316 + 16))(v281, v306, v305);
  v188 = (*(v185 + 80) + 16) & ~*(v185 + 80);
  v189 = (v279 + v188 + 7) & 0xFFFFFFFFFFFFFFF8;
  v190 = swift_allocObject();
  v191 = *(v185 + 32);
  v316 = v185 + 32;
  v281 = v191;
  (v191)(v190 + v188, v186, v187);
  v192 = v261;
  *(v190 + v189) = v261;
  v193 = v172;
  v337 = sub_1DD44FC08;
  v338 = v190;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_43;
  v194 = _Block_copy(&aBlock);
  v195 = v192;
  v196 = v263;
  sub_1DD63FBA8();
  *&v332 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v193, v174, v194);
  _Block_release(v194);

  v325(v174, v173);
  v324(v193, v329);

  dispatch_group_enter(v195);
  if (v262)
  {
    v197 = v308;
    v198 = v312;
    if (v308)
    {
      v199 = sub_1DD63FDA8();
      v200 = [v197 BOOLForKey_];

      v201 = v200 ^ 1;
    }

    else
    {
      v201 = 1;
    }
  }

  else
  {
    v198 = v312;

    v201 = 0;
  }

  v202 = v265;
  if (v283 != 2)
  {
    v202 = v283;
  }

  LODWORD(v291) = v202;
  v283 = v321[11];
  v203 = v321[16];
  v279 = v321[17];
  v265 = (v320 + v203);
  v204 = v321[19];
  v262 = v321[20];
  v263 = v204;
  v261 = v321[23];
  v205 = qword_1EE16F008;
  v206 = v297;
  v207 = v317;
  v257(v297, v198, v317);
  v208 = v260;
  v209 = swift_allocObject();
  *(v209 + 16) = v201;
  v210 = v296;
  *(v209 + 24) = v298;
  *(v209 + 32) = v210;
  v292(v209 + v259, v206, v207);
  *(v209 + v208) = v195;
  v337 = sub_1DD44FC84;
  v338 = v209;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_49;
  v211 = _Block_copy(&aBlock);

  v212 = v195;
  v213 = v205;

  v214 = v300;
  sub_1DD63FBA8();
  *&v332 = MEMORY[0x1E69E7CC0];
  v216 = v301;
  v215 = v302;
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v214, v216, v211);
  _Block_release(v211);

  v325(v216, v215);
  v324(v214, v329);

  dispatch_group_enter(v212);
  v217 = qword_1EE16F008;
  sub_1DD3C2388(v315, &v332);
  v218 = swift_allocObject();
  *(v218 + 16) = v310;
  sub_1DD3AA4A8(&v332, v218 + 24);
  *(v218 + 64) = v212;
  v337 = sub_1DD44FD08;
  v338 = v218;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v308 = &v335;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_55;
  v219 = _Block_copy(&aBlock);
  v220 = v212;
  v221 = v217;

  sub_1DD63FBA8();
  v330 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v214, v216, v219);
  _Block_release(v219);

  v325(v216, v215);
  v324(v214, v329);

  dispatch_group_enter(v220);
  v222 = qword_1EE16F008;
  v223 = v315;
  sub_1DD3C2388(v315, &v332);
  v224 = swift_allocObject();
  sub_1DD3AA4A8(&v332, v224 + 16);
  *(v224 + 56) = v220;
  v337 = sub_1DD44FD18;
  v338 = v224;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_61;
  v225 = _Block_copy(&aBlock);
  v226 = v220;
  v227 = v222;
  sub_1DD63FBA8();
  v330 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v214, v216, v225);
  _Block_release(v225);

  v325(v216, v215);
  v324(v214, v329);

  dispatch_group_enter(v226);
  v228 = qword_1EE16F008;
  sub_1DD3C2388(v223, &v332);
  v229 = swift_allocObject();
  *(v229 + 16) = v309;
  sub_1DD3AA4A8(&v332, v229 + 24);
  *(v229 + 64) = v226;
  v337 = sub_1DD44FD68;
  v338 = v229;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_67;
  v230 = _Block_copy(&aBlock);
  v231 = v226;
  v232 = v228;

  sub_1DD63FBA8();
  v330 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v214, v216, v230);
  _Block_release(v230);

  v325(v216, v215);
  v324(v214, v329);

  dispatch_group_enter(v231);
  v233 = qword_1EE16F008;
  v234 = swift_allocObject();
  *(v234 + 16) = v293;
  *(v234 + 24) = v231;
  v337 = sub_1DD44FDC4;
  v338 = v234;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v335 = sub_1DD3CBCD0;
  v336 = &block_descriptor_73;
  v235 = _Block_copy(&aBlock);
  v236 = v231;
  v237 = v233;

  sub_1DD63FBA8();
  *&v332 = MEMORY[0x1E69E7CC0];
  sub_1DD640718();
  MEMORY[0x1E12B27A0](0, v214, v216, v235);
  _Block_release(v235);

  v325(v216, v215);
  v324(v214, v329);

  sub_1DD640418();

  sub_1DD390754(v299, &qword_1ECCDC250, &qword_1DD645B10);
  sub_1DD390754(v303, &qword_1ECCDC3F0, &unk_1DD64AF50);
  sub_1DD390754(v304, &qword_1ECCDCCD8, &unk_1DD64AF60);
  v238 = v320;
  v239 = v321;
  *(&v263->isa + v320) = v298;
  v240 = v261;
  *(v238 + v262) = v282;
  *(v238 + v240) = v318;
  sub_1DD3AA4A8(v315, v238 + v239[8]);
  sub_1DD3AA4A8(v285, v238 + v239[9]);
  v241 = v239;
  *(v238 + v239[12]) = v286;
  swift_beginAccess();
  *v238 = *(v314 + 16);
  swift_beginAccess();
  v238[1] = *(v313 + 16);
  (v281)(v238 + v239[6], v306, v305);
  swift_beginAccess();

  sub_1DD390754(v284, &qword_1ECCDCC98, &unk_1DD64AF10);
  sub_1DD3C4EB4();
  swift_beginAccess();
  v242 = v239[15];
  sub_1DD44FF80();
  swift_beginAccess();
  v243 = *(v294 + 16);
  v244 = *(v294 + 24);
  v245 = v265;
  *v265 = v243;
  v245[1] = v244;
  swift_beginAccess();
  v329 = *(v311 + 16);
  *(v238 + v279) = v329;
  swift_beginAccess();
  v246 = *(v310 + 16);
  *(v238 + v283) = v246;
  swift_beginAccess();
  *(v238 + v239[13]) = *(v309 + 16);
  v292(v238 + v239[18], v312, v317);
  v247 = v280;
  swift_beginAccess();
  v248 = v241[25];
  sub_1DD3FA84C(v247, v238 + v248);
  *(v238 + v241[26]) = v291 & 1;
  v249 = v238 + v241[27];
  *v249 = v288;
  *(v249 + 1) = v331[0];
  *(v249 + 1) = *(v331 + 3);
  v250 = v307;
  *(v249 + 1) = v290;
  *(v249 + 2) = v250;
  v251 = v270;
  *(v249 + 3) = v289;
  *(v249 + 4) = v251;
  *(v249 + 5) = v21;
  *(v249 + 6) = v22;
  v249[56] = v287;
  v252 = (v238 + v241[28]);
  *v252 = v266 & 1;
  *(v252 + 1) = v268;
  *(v252 + 2) = v267;
  v252[1] = v137;
  sub_1DD3FA59C(v243);
  v253 = v246;

  sub_1DD44FDCC(v238 + v248);
  sub_1DD3FA84C(v247, v238 + v248);

  v254 = v238 + v241[29];
  *v254 = v269 & 1;
  v254[1] = v264;
}

uint64_t sub_1DD44C16C()
{
  if (qword_1EE165280 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1DD44C19C()
{
  v1 = type metadata accessor for Signpost();
  v0[20] = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  v0[21] = swift_task_alloc();
  v3 = sub_1DD63D078();
  v0[22] = v3;
  v4 = *(v3 - 8);
  v0[23] = v4;
  v5 = *(v4 + 64) + 15;
  v0[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD44C288, 0, 0);
}

uint64_t sub_1DD44C288()
{
  v26 = v0;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F068);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_54();
    v5 = OUTLINED_FUNCTION_62();
    v25 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DD39565C(0x6D6F646167654D5BLL, 0xEE005D5243452065, &v25);
    _os_log_impl(&dword_1DD38D000, v2, v3, "%s ECR integration ON. Creating MegadomeSignalProvider...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  if (qword_1EE162EF8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 192);
  v7 = qword_1EE16EFD8;
  *(v0 + 104) = type metadata accessor for MegadomeClient();
  *(v0 + 112) = &off_1F58BB3C8;
  *(v0 + 80) = v7;
  *(v0 + 144) = &type metadata for ContactFeatures;
  *(v0 + 152) = sub_1DD3E6184();
  *(v0 + 120) = 7;

  v24 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  sub_1DD63D068();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 168);
  v23 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = qword_1EE16F0C0;
  v13 = v10 + *(v11 + 20);
  *v13 = "ContactResolver.MegadomeSignalProvider.init";
  *(v13 + 8) = 43;
  *(v13 + 16) = 2;
  v14 = v12;
  sub_1DD63F9B8();
  *(v10 + *(v11 + 24)) = v14;
  v15 = v14;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD643F90;
  v17 = sub_1DD6408F8();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1DD392BD8();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  OUTLINED_FUNCTION_22();
  sub_1DD63F998();

  sub_1DD3C2388(v0 + 80, v0 + 16);
  *(v0 + 56) = v24 & 1;
  *(v0 + 64) = 257;
  *(v0 + 66) = 1;
  *(v0 + 72) = 0x408F3FFDF3B645A2;
  sub_1DD5186BC();
  OUTLINED_FUNCTION_7_17();
  sub_1DD4501D4(v10, v20);
  (*(v9 + 8))(v8, v23);
  sub_1DD3FABB0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1DD44C624@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD63D168();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - v15;
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F458();
    sub_1DD63F498();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16F068);
    (*(v5 + 16))(v14, v16, v2);
    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640368();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_54();
      v54 = OUTLINED_FUNCTION_62();
      v55 = a1;
      v56 = v54;
      *v20 = 136315138;
      OUTLINED_FUNCTION_0_40();
      sub_1DD45003C(v21, v22);
      v23 = sub_1DD640CB8();
      v24 = v2;
      v25 = v5;
      v27 = v26;
      (*(v25 + 8))(v14, v24);
      v28 = sub_1DD39565C(v23, v27, &v56);
      v5 = v25;
      v2 = v24;

      *(v20 + 4) = v28;
      _os_log_impl(&dword_1DD38D000, v18, v19, "Siri task locale is %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      a1 = v55;
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      (*(v5 + 8))(v14, v2);
    }

    return (*(v5 + 32))(a1, v16, v2);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v29 = sub_1DD63F9F8();
    __swift_project_value_buffer(v29, qword_1EE16F068);
    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640368();
    v32 = os_log_type_enabled(v30, v31);
    v53 = v5;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_54();
      v34 = OUTLINED_FUNCTION_62();
      v55 = a1;
      v56 = v34;
      v35 = v34;
      *v33 = 136315138;
      sub_1DD63D158();
      OUTLINED_FUNCTION_0_40();
      sub_1DD45003C(v36, v37);
      sub_1DD640CB8();
      (*(v5 + 8))(v10, v2);
      v38 = OUTLINED_FUNCTION_15_0();
      v41 = sub_1DD39565C(v38, v39, v40);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_1DD38D000, v30, v31, "no current Siri task. Falling back to system locale, Locale.current: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640368();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_54();
      v45 = OUTLINED_FUNCTION_62();
      v56 = v45;
      *v44 = 136315138;
      sub_1DD63F478();
      sub_1DD63F458();

      sub_1DD63F498();

      OUTLINED_FUNCTION_0_40();
      sub_1DD45003C(v46, v47);
      sub_1DD640CB8();
      (*(v53 + 8))(v10, v2);
      v48 = OUTLINED_FUNCTION_15_0();
      v51 = sub_1DD39565C(v48, v49, v50);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_1DD38D000, v42, v43, "environment.default.siriLocale: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    return sub_1DD63D158();
  }
}

uint64_t sub_1DD44CB74(uint64_t *a1, uint64_t a2)
{
  v30 = a1;
  v3 = sub_1DD63D168();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v29 = v27 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  sub_1DD530CF4(a2);
  v31 = a2;
  v20 = *(v6 + 16);
  v20(v19, a2, v3);
  v21 = sub_1DD5FDD34(v19);
  v27[4] = v26;
  v28 = v21;
  v20(v16, a2, v3);
  sub_1DD53C9B4(v16);
  v22 = v29;
  v20(v29, v31, v3);
  v20(v11, v22, v3);
  if (sub_1DD4F9BB8())
  {
    v23 = 1;
  }

  else
  {
    v34 = sub_1DD63D118();
    v35 = v24;
    v32 = 24938;
    v33 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v23 = sub_1DD63FD48();
  }

  sub_1DD5E8D74(v11, v23 & 1, v30);
  (*(v6 + 8))(v22, v3);
  return v28;
}

uint64_t sub_1DD44D008()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (v20 - v2);
  v4 = sub_1DD63CE68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  if (qword_1EE1659B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EE16F038);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v3;
    v20[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    type metadata accessor for InferenceError();
    v16 = v12;
    sub_1DD4DE56C(v12, 2, 0xD00000000000007ALL, 0x80000001DD66C5E0, 0x2928424464616F6CLL, 0xE800000000000000, 525);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16F0C8);
    sub_1DD4DEB78();

    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v19 = sub_1DD608CA4(v9);
    (*(v5 + 8))(v11, v4);
  }

  return v19;
}

uint64_t sub_1DD44D32C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (v20 - v2);
  v4 = sub_1DD63CE68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  if (qword_1EE165A48 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EE16F050);
  sub_1DD3C4EB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v3;
    v20[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    swift_willThrowTypedImpl();
    type metadata accessor for InferenceError();
    v16 = v12;
    sub_1DD4DE56C(v12, 2, 0xD00000000000007ALL, 0x80000001DD66C5E0, 0x2928424464616F6CLL, 0xE800000000000000, 525);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16F0C8);
    sub_1DD4DEB78();

    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC260, &unk_1DD645B20);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v19 = sub_1DD608CA4(v9);
    (*(v5 + 8))(v11, v4);
  }

  return v19;
}

void sub_1DD44D650(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  OUTLINED_FUNCTION_18_7();
  v8 = v7();
  OUTLINED_FUNCTION_100();
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  swift_beginAccess();
  if (*(v5 + 16))
  {

    a4(&v11, v10);
  }

  dispatch_group_leave(v4);
}

void sub_1DD44D708(uint64_t a1, NSObject *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  sub_1DD63F2E8();
  v7 = sub_1DD63F308();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_1DD390754(v6, &qword_1ECCDCCE8, &unk_1DD64AF90);
  dispatch_group_leave(a2);
}

void sub_1DD44D7E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v101 = a5;
  v95 = a4;
  v96 = a2;
  v6 = sub_1DD63D168();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v91 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v84 - v18;
  v99 = sub_1DD63CE68();
  v97 = *(v99 - 1);
  v20 = *(v97 + 64);
  v21 = MEMORY[0x1EEE9AC00](v99);
  v90 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v98 = (&v84 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v102 = &v84 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v85 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v86 = &v84 - v29;
  v30 = type metadata accessor for Signpost();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = swift_projectBox();
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v34 = qword_1EE16F0C0;
  v35 = &v33[*(v30 + 20)];
  *v35 = "ContactResolver.Recommend.ML.init";
  *(v35 + 1) = 33;
  v35[16] = 2;
  v36 = v34;
  sub_1DD63F9B8();
  *&v33[*(v30 + 24)] = v36;
  v37 = v36;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DD643F90;
  v39 = sub_1DD6408F8();
  v41 = v40;
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = sub_1DD392BD8();
  *(v38 + 32) = v39;
  *(v38 + 40) = v41;
  v100 = v37;
  sub_1DD63F998();

  if (a1)
  {
    if (v96 && (v42 = sub_1DD5FFDD8(), v43 = sub_1DD59B690(0x52746361746E6F43, 0xED000072656B6E61, v42), , v43))
    {
      sub_1DD5FF528(v19);

      v44 = v99;
      if (__swift_getEnumTagSinglePayload(v19, 1, v99) != 1)
      {
        v45 = v86;
        (*(v97 + 32))(v86, v19, v44);
        if (qword_1EE160540 != -1)
        {
          swift_once();
        }

        v46 = sub_1DD63F9F8();
        __swift_project_value_buffer(v46, qword_1EE16EF00);
        v47 = sub_1DD63F9D8();
        v48 = sub_1DD640368();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_1DD38D000, v47, v48, "using Trial URL for ContactRanker", v49, 2u);
          MEMORY[0x1E12B3DA0](v49, -1, -1);
        }

        v50 = v97;
        v51 = v85;
        (*(v97 + 16))(v85, v45, v44);
        v52 = v87;
        (*(v93 + 16))(v87, v95, v94);
        v53 = v88;
        sub_1DD5224F8(v51, v52, v88);
        (*(v50 + 8))(v45, v44);
        v83 = type metadata accessor for MLContactRecommender();
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v83);
        goto LABEL_27;
      }
    }

    else
    {
      v44 = v99;
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v99);
    }

    sub_1DD390754(v19, &qword_1ECCDBF78, &unk_1DD644440);
  }

  else
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v54 = sub_1DD63F9F8();
    __swift_project_value_buffer(v54, qword_1EE16F068);
    v55 = sub_1DD63F9D8();
    v56 = sub_1DD640378();
    v57 = os_log_type_enabled(v55, v56);
    v44 = v99;
    if (v57)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1DD38D000, v55, v56, "⚠️ Should only be set to FALSE in unit test mock to ignore Trial's ContactRanker model", v58, 2u);
      MEMORY[0x1E12B3DA0](v58, -1, -1);
    }
  }

  if (qword_1EE160540 != -1)
  {
    swift_once();
  }

  v59 = sub_1DD63F9F8();
  __swift_project_value_buffer(v59, qword_1EE16EF00);
  v60 = sub_1DD63F9D8();
  v61 = sub_1DD640368();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v103[0] = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_1DD39565C(0xD000000000000028, 0x80000001DD66C5B0, v103);
    _os_log_impl(&dword_1DD38D000, v60, v61, "using default URL for ContactRanker %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1E12B3DA0](v63, -1, -1);
    MEMORY[0x1E12B3DA0](v62, -1, -1);
  }

  v64 = v102;
  v65 = v98;
  sub_1DD628068(0xD000000000000028, v102);
  v66 = v97;
  v99 = *(v97 + 16);
  (v99)(v65, v64, v44);
  v67 = sub_1DD63F9D8();
  v68 = sub_1DD640368();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v103[0] = v98;
    *v69 = 136315138;
    sub_1DD45003C(&qword_1EE165CE0, MEMORY[0x1E6968FB0]);
    LODWORD(v96) = v68;
    v70 = sub_1DD640CB8();
    v71 = v65;
    v72 = v70;
    v74 = v73;
    v75 = *(v66 + 8);
    v75(v71, v44);
    v76 = sub_1DD39565C(v72, v74, v103);

    *(v69 + 4) = v76;
    _os_log_impl(&dword_1DD38D000, v67, v96, "using default URL for ContactRanker %s", v69, 0xCu);
    v77 = v98;
    __swift_destroy_boxed_opaque_existential_1(v98);
    MEMORY[0x1E12B3DA0](v77, -1, -1);
    v78 = v69;
    v64 = v102;
    MEMORY[0x1E12B3DA0](v78, -1, -1);
  }

  else
  {

    v75 = *(v66 + 8);
    v75(v65, v44);
  }

  v79 = v92;
  v80 = v90;
  (v99)(v90, v64, v44);
  v81 = v91;
  (*(v93 + 16))(v91, v95, v94);
  sub_1DD5224F8(v80, v81, v79);
  v75(v64, v44);
  v82 = type metadata accessor for MLContactRecommender();
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v82);
LABEL_27:
  swift_beginAccess();
  sub_1DD3E6284();
  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD4501D4(v33, type metadata accessor for Signpost);
  dispatch_group_leave(v101);
}

uint64_t sub_1DD44E4B0(uint64_t a1, void *a2, NSObject *a3)
{
  v31 = a3;
  v5 = type metadata accessor for Signpost();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  v10 = &v8[*(v5 + 20)];
  *v10 = "CRR.findMeCard";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = v9;
  sub_1DD63F9B8();
  *&v8[*(v5 + 24)] = v11;
  v12 = v11;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD643F90;
  v14 = sub_1DD6408F8();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DD392BD8();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD63F9F8();
  __swift_project_value_buffer(v17, qword_1EE16F068);
  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DD38D000, v18, v19, "ContactResolverCache::init - Attempting to find meCard.", v20, 2u);
    MEMORY[0x1E12B3DA0](v20, -1, -1);
  }

  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v23 = (*(v22 + 16))(qword_1EE16F080, v21, v22);
  swift_beginAccess();
  v24 = *(a1 + 16);
  *(a1 + 16) = v23;

  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640368();
  if (os_log_type_enabled(v25, v26))
  {
    if (v23)
    {
      v27 = "ContactResolverCache::init - Found meCard!";
    }

    else
    {
      v27 = "ContactResolverCache::init - Unable to find meCard!";
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1DD38D000, v25, v26, v27, v28, 2u);
    MEMORY[0x1E12B3DA0](v28, -1, -1);
  }

  dispatch_group_leave(v31);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD4501D4(v8, type metadata accessor for Signpost);
}

uint64_t sub_1DD44E8A4(void *a1, NSObject *a2)
{
  v4 = type metadata accessor for Signpost();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE16F0C0;
  v9 = &v7[*(v4 + 20)];
  *v9 = "CRR.dummyContactRequest";
  *(v9 + 1) = 23;
  v9[16] = 2;
  v10 = v8;
  sub_1DD63F9B8();
  *&v7[*(v4 + 24)] = v10;
  v11 = v10;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643F90;
  v13 = sub_1DD6408F8();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1DD392BD8();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1DD63F998();

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 8))(0x73616D6F6874, 0xE600000000000000, v16, v17);

  dispatch_group_leave(a2);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD4501D4(v7, type metadata accessor for Signpost);
}

uint64_t sub_1DD44EB0C(uint64_t a1, NSObject *a2)
{
  v3 = type metadata accessor for Signpost();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  v8 = &v6[*(v3 + 20)];
  *v8 = "CRR.loadPicsStore";
  *(v8 + 1) = 17;
  v8[16] = 2;
  v9 = v7;
  sub_1DD63F9B8();
  *&v6[*(v3 + 24)] = v9;
  v10 = v9;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD643F90;
  v12 = sub_1DD6408F8();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1DD392BD8();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_1DD63F998();

  swift_beginAccess();
  sub_1DD63F988();
  sub_1DD3E6284();
  swift_endAccess();
  dispatch_group_leave(a2);
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD4501D4(v6, type metadata accessor for Signpost);
}

void sub_1DD44ED58(uint64_t a1, void *a2, NSObject *a3)
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F068);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "ContactResolverCache::refresh - Attempting to find meCard", v9, 2u);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v12 = (*(v11 + 16))(qword_1EE16F080, v10, v11);
  swift_beginAccess();
  v13 = *(a1 + 16);
  *(a1 + 16) = v12;

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();
  if (os_log_type_enabled(v14, v15))
  {
    if (v12)
    {
      v16 = "ContactResolverCache::refresh - Found meCard!";
    }

    else
    {
      v16 = "ContactResolverCache::refresh - Unable to find meCard!";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DD38D000, v14, v15, v16, v17, 2u);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  dispatch_group_leave(a3);
}

void sub_1DD44EF88(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 56))(v5, v6);
  OUTLINED_FUNCTION_100();
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  dispatch_group_leave(a3);
}

void sub_1DD44F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v9 = type metadata accessor for StringTokenizer();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = (v14 - v13);
  v16 = swift_projectBox();
  v17 = sub_1DD44CB74(v15, a4);
  v19 = v18;
  v21 = v20;
  OUTLINED_FUNCTION_100();
  sub_1DD44FECC(v15, v16);
  OUTLINED_FUNCTION_100();
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  sub_1DD44FF30(v22);
  OUTLINED_FUNCTION_100();
  v24 = *(a3 + 16);
  *(a3 + 16) = v21;

  dispatch_group_leave(a5);
}

uint64_t sub_1DD44F114()
{
  if (qword_1EE165270 != -1)
  {
    swift_once();
  }

  sub_1DD5FF92C();
}

uint64_t sub_1DD44F1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for ContactResolverCache();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1DD390754(v5, &qword_1ECCDC700, &qword_1DD64AE00);
  }

  sub_1DD41B520(v5, v9);
  v11 = &v9[*(v6 + 32)];
  v12 = *(v11 + 3);
  v13 = *(v11 + 4);
  __swift_project_boxed_opaque_existential_1(v11, v12);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  v14 = (*(v13 + 16))(qword_1EE16F080, v12, v13);
  sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
  v15 = *(v6 + 44);

  *&v9[v15] = v14;
  sub_1DD44FF80();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD63F9F8();
  __swift_project_value_buffer(v16, qword_1EE16F068);
  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640368();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DD38D000, v17, v18, "updated ContactResolverCache meCard", v19, 2u);
    MEMORY[0x1E12B3DA0](v19, -1, -1);
  }

  return sub_1DD4501D4(v9, type metadata accessor for ContactResolverCache);
}

uint64_t sub_1DD44F5CC(uint64_t a1)
{
  v2 = sub_1DD63C888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1DD63C878();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DD44F6C0(uint64_t a1)
{
  if (qword_1EE165270 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);

  sub_1DD5FF92C();
}

uint64_t sub_1DD44F774(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for ContactResolverCache();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1DD390754(v7, &qword_1ECCDC700, &qword_1DD64AE00);
  }

  sub_1DD390754(a1, &qword_1ECCDC700, &qword_1DD64AE00);
  sub_1DD41B520(v7, v11);
  v13 = [a2 entries];
  sub_1DD39638C(0, &qword_1EE1638B0, 0x1E695CE98);
  v14 = sub_1DD640118();

  v15 = sub_1DD4E7C30(v14);

  v16 = *(v8 + 52);
  v17 = *&v11[v16];

  *&v11[v16] = v15;
  sub_1DD44FF80();
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1EE16F068);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640368();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DD38D000, v19, v20, "updated ContactResolverCache favoriteHandleValues", v21, 2u);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  return sub_1DD4501D4(v11, type metadata accessor for ContactResolverCache);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DD44FA38()
{
  result = qword_1EE1638E0;
  if (!qword_1EE1638E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1638E0);
  }

  return result;
}

uint64_t sub_1DD44FA9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC250, &qword_1DD645B10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD44FB0C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

void sub_1DD44FC08()
{
  v1 = sub_1DD63F308();
  OUTLINED_FUNCTION_51(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_21_9();
  v10 = *(v0 + v9);

  sub_1DD44D708(v0 + v8, v10);
}

void sub_1DD44FC84()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_51(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_21_9();
  v9 = *(v0 + 16);
  v11 = *(v0 + v10);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);

  sub_1DD44D7E8(v9, v12, v13, v0 + v8, v11);
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  OUTLINED_FUNCTION_23_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD44FE20()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD3B5438;

  return sub_1DD44C19C();
}

uint64_t sub_1DD44FECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringTokenizer();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD44FF30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD44FF80()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

uint64_t sub_1DD45003C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_6_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

void sub_1DD45015C()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_51(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_21_9();
  sub_1DD44F018(v0[2], v0[3], v0[4], v0 + v9, *(v0 + v8));
}

uint64_t sub_1DD4501D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_12_17@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_14_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *v11 = a11;
  *(v11 + 8) = a9;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
}

void *OUTLINED_FUNCTION_35_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1DD59B690(a1, a2 | 0x8000000000000000, v2);
}

BOOL sub_1DD450388()
{
  OUTLINED_FUNCTION_20_9();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_1DD450430(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1DD3CC020(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12B2C10](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_1DD450524()
{
  OUTLINED_FUNCTION_20_9();
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    memcpy(__dst, v3, sizeof(__dst));
    memcpy(__src, v3, sizeof(__src));
    sub_1DD3E6404(__dst, v8);
    v5 = v1(__src);
    if (v0)
    {
      memcpy(v8, __src, sizeof(v8));
      sub_1DD3E6460(v8);
      return v4 != 0;
    }

    v6 = v5;
    v3 += 80;
    memcpy(v8, __src, sizeof(v8));
    sub_1DD3E6460(v8);
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1DD450638(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1DD450728()
{
  OUTLINED_FUNCTION_20_9();
  v3 = (v2 + 72);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v6 = *(v3 - 2);
    v7 = *(v3 - 1);
    v8 = *(v3 - 4);
    v9 = *(v3 - 3);
    v13[0] = *(v3 - 40);
    v14 = v8;
    v15 = v9;
    v16 = v6;
    v17 = v7;
    v18 = v5;

    v10 = v1(v13);
    if (v0)
    {

      return v4 != 0;
    }

    v11 = v10;
    v3 += 6;
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1DD450800()
{
  OUTLINED_FUNCTION_20_9();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v10 = *v4;

    v7 = v1(&v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;

    ++v4;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1DD4508D8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1DD4509C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1DD450A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1DD450A6C()
{
  v1 = *v0;
  v2 = 1;
  switch(*v0)
  {
    case 1:
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_28_5();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_38_6();
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_23_11();
LABEL_5:
      v3 = sub_1DD640CD8();

      if (v3)
      {
        return v2 & 1;
      }

      OUTLINED_FUNCTION_28_5();
      switch(v1)
      {
        case 2:
          goto LABEL_9;
        case 3:
          OUTLINED_FUNCTION_38_6();
          goto LABEL_9;
        case 4:
          OUTLINED_FUNCTION_23_11();
LABEL_9:
          v2 = sub_1DD640CD8();
          break;
        default:
          break;
      }

LABEL_10:

      return v2 & 1;
    default:
      goto LABEL_10;
  }
}

void sub_1DD450B90()
{
  OUTLINED_FUNCTION_58_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (qword_1EE165FB0 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0_5();
  }

  v6 = sub_1DD63F9F8();
  __swift_project_value_buffer(v6, qword_1EE16F068);
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640378();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_9();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "do not use the deprecated ContactResolverConfig initializer!", v9, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();
  v11 = *(v3 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v10 = *(v3 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);
  v12 = *(v5 + 48);

  *(v5 + 40) = v11;
  *(v5 + 48) = v10;
  v36 = v3;
  v13 = *(v3 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v35 = v1;
    v37 = MEMORY[0x1E69E7CC0];

    sub_1DD42A2D4();
    v15 = v37;
    v16 = (v13 + 40);
    do
    {
      v17 = *(v16 - 1);
      v3 = *v16;
      v18 = *(v37 + 16);
      v19 = *(v37 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_1DD42A2D4();
      }

      *(v37 + 16) = v18 + 1;
      v20 = v37 + 16 * v18;
      *(v20 + 32) = v17;
      *(v20 + 40) = v3;
      v16 += 3;
      --v14;
    }

    while (v14);

    v1 = v35;
  }

  v21 = type metadata accessor for ContactResolverConfig(0);
  v22 = v21[11];
  v23 = *(v5 + v22);

  *(v5 + v22) = v15;
  v24 = *(v15 + 16);
  if (v24)
  {
    v25 = (v15 + 40);
    v26 = -v24;
    v27 = -1;
    do
    {
      v28 = v26 + v27 != -1;
      if (v26 + v27 == -1)
      {
        break;
      }

      if (++v27 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v29 = v25 + 2;
      v31 = *(v25 - 1);
      v30 = *v25;

      v3 = sub_1DD41B6C8(v31, v30);

      v25 = v29;
    }

    while ((v3 & 1) == 0);
  }

  else
  {
    v28 = 1;
  }

  *(v5 + v21[12]) = v28;
  v32 = 5;
  if (*(v36 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) == 1)
  {
    v32 = 1;
  }

  if (*(v36 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain))
  {
    v33 = v32;
  }

  else
  {
    v33 = 4;
  }

  *(v5 + v21[13]) = v33;
  v34 = *(v1 + 17);

  *(v5 + v21[14]) = v34;
  OUTLINED_FUNCTION_57_7();
}

uint64_t sub_1DD450E3C()
{
  OUTLINED_FUNCTION_58_4();
  v2 = v1;
  v26[0] = *v0;
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  v24 = *(v0 + 40);
  v25 = *(v0 + 8);
  v7 = type metadata accessor for ContactResolverConfig(0);
  v8 = v7[8];
  v9 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v10 = v9[8];
  v11 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v11);
  (*(v12 + 16))(v2 + v10, v0 + v8);
  v13 = *(v0 + v7[9]);
  v14 = *(v0 + v7[11]);
  v15 = *(v0 + v7[12]);
  v16 = *(v0 + v7[13]);
  v17 = *(v0 + v7[14]);
  v18 = (v0 + v7[17]);
  v19 = *v18;
  v20 = v18[1];
  *v2 = v26[0];
  *(v2 + 8) = v4;
  *(v2 + 16) = v3;
  *(v2 + 24) = v25;
  *(v2 + 32) = v5;
  *(v2 + 40) = v24;
  *(v2 + 48) = v6;
  *(v2 + v9[9]) = v13;
  *(v2 + v9[10]) = v14;
  *(v2 + v9[11]) = v15;
  *(v2 + v9[12]) = v16;
  *(v2 + v9[13]) = v17;
  v21 = (v2 + v9[14]);
  *v21 = v19;
  v21[1] = v20;

  OUTLINED_FUNCTION_57_7();
}

uint64_t ContactResolverConfig.requestId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ContactResolverConfig.requestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContactResolverConfig.supportGondola.setter(char a1)
{
  result = type metadata accessor for ContactResolverConfig(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t ContactResolverConfig.presentAllValidHandlesInDisambiguation.setter(char a1)
{
  result = type metadata accessor for ContactResolverConfig(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

void sub_1DD4511A4()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = sub_1DD63F728();
  v4 = OUTLINED_FUNCTION_0(v3);
  v31 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880) - 8) + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_4();
  *v2 = 4;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0xE000000000000000;
  v13 = type metadata accessor for ContactResolverConfig(0);
  *(v2 + v13[9]) = 1;
  *(v2 + v13[10]) = 0;
  *(v2 + v13[11]) = MEMORY[0x1E69E7CC0];
  *(v2 + v13[12]) = 1;
  *(v2 + v13[13]) = 5;
  *(v2 + v13[14]) = 2;
  *(v2 + v13[15]) = 512;
  v14 = (v2 + v13[16]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v2 + v13[17]);
  v16 = AFCurrentUserInterfaceIdiom();
  v17 = sub_1DD63FDD8();
  v19 = v18;

  *v15 = v17;
  v15[1] = v19;
  *(v2 + v13[18]) = 0;
  *(v2 + v13[19]) = 0;
  v20 = (v2 + v13[20]);
  *v20 = 0;
  v20[1] = 0;
  *(v2 + v13[21]) = 1;
  *(v2 + v13[22]) = 0;
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();
    sub_1DD63F758();

    if (__swift_getEnumTagSinglePayload(v0, 1, v3))
    {
      sub_1DD4559C8(v0);
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    else
    {
      (*(v31 + 16))(v10, v0, v3);
      sub_1DD4559C8(v0);
      v24 = sub_1DD63F718();
      v26 = v25;
      (*(v31 + 8))(v10, v3);
      if (v26)
      {
        v21 = v24;
      }

      else
      {
        v21 = 0;
      }

      v22 = 0xE000000000000000;
      if (v26)
      {
        v22 = v26;
      }
    }

    *(v2 + 24) = v21;
    *(v2 + 32) = v22;
    sub_1DD63F448();
    v27 = sub_1DD63F738();
    v29 = v28;

    *(v2 + 8) = v27;
    *(v2 + 16) = v29;
    sub_1DD63F458();
    v30 = v2 + v13[8];
    sub_1DD63F498();
  }

  else
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 0xE000000000000000;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    v23 = v2 + v13[8];
    sub_1DD63D158();
  }

  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_18_4();
  v68 = OUTLINED_FUNCTION_5_24(v35, v36, v37, v38, v39, v40);
  v41 = OUTLINED_FUNCTION_0(v68);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v44)
  {
    v45 = *(v30 + 32);

    *(v30 + 24) = v34;
    *(v30 + 32) = v32;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  OUTLINED_FUNCTION_35_8();
  sub_1DD63FD98();
  v46 = OUTLINED_FUNCTION_30_8();
  v47(v46);
  if ((v34 & 1) == 0)
  {
    v48 = type metadata accessor for ContactResolverConfig(0);
    v49 = OUTLINED_FUNCTION_54_5(v48);
    v50(v49);
  }

  OUTLINED_FUNCTION_67_1();
  v51 = OUTLINED_FUNCTION_43_8();
  v52 = v51[9];
  OUTLINED_FUNCTION_52_5();
  if (OUTLINED_FUNCTION_4_20(v53, v54))
  {
    OUTLINED_FUNCTION_18_9();
    v55 = swift_allocObject();
    v56 = OUTLINED_FUNCTION_18_14(v55);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v57 = (v30 + v51[16]);
  v59 = *v57;
  v58 = v57[1];
  v60 = OUTLINED_FUNCTION_13_15(v56);
  sub_1DD39E698(v60);
  OUTLINED_FUNCTION_63_1();

  *(v57 + v30) = v31;
  if (*(v31 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v62 = -1;
    do
    {
      v63 = v59 + v62 != -1;
      if (v59 + v62 == -1)
      {
        break;
      }

      if (++v62 >= *(v31 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6(v61);
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
      v61 = v68;
    }

    while ((v33 & 1) == 0);
  }

  else
  {
    v63 = 1;
  }

  v64 = OUTLINED_FUNCTION_41_5();
  v65(v64);
  *(v30 + v51[12]) = v63;
  *(v30 + v51[18]) = a27 & 1;
  *(v30 + v51[19]) = a28 & 1;
  v66 = (v30 + v51[20]);
  v67 = v66[1];

  *v66 = a29;
  v66[1] = a30;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4516B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD4516C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  OUTLINED_FUNCTION_18_4();
  v64 = OUTLINED_FUNCTION_5_24(v32, v33, v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_0(v64);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v43)
  {
    v44 = *(v27 + 32);

    *(v27 + 24) = v31;
    *(v27 + 32) = v29;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  OUTLINED_FUNCTION_35_8();
  sub_1DD63FD98();
  v45 = OUTLINED_FUNCTION_31_10();
  v46(v45);
  if ((v31 & 1) == 0)
  {
    v47 = type metadata accessor for ContactResolverConfig(0);
    (*(v40 + 24))(v27 + *(v47 + 32), v63, v64);
  }

  OUTLINED_FUNCTION_67_1();
  v48 = OUTLINED_FUNCTION_43_8();
  v49 = v48[9];
  OUTLINED_FUNCTION_52_5();
  if (OUTLINED_FUNCTION_4_20(v50, v51))
  {
    OUTLINED_FUNCTION_18_9();
    v52 = swift_allocObject();
    v53 = OUTLINED_FUNCTION_18_14(v52);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v54 = (v27 + v48[16]);
  v56 = *v54;
  v55 = v54[1];
  v57 = OUTLINED_FUNCTION_13_15(v53);
  sub_1DD39E698(v57);
  OUTLINED_FUNCTION_61_5();

  *(v54 + v27) = v28;
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v59 = -1;
    do
    {
      v60 = v56 + v59 != -1;
      if (v56 + v59 == -1)
      {
        break;
      }

      if (++v59 >= *(v28 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6(v58);
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
      v58 = v64;
    }

    while ((v30 & 1) == 0);
  }

  else
  {
    v60 = 1;
  }

  v61 = OUTLINED_FUNCTION_41_5();
  v62(v61);
  *(v27 + v48[12]) = v60;
  *(v27 + v48[18]) = a27 & 1;
  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:commsHasForcePrompted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  OUTLINED_FUNCTION_18_4();
  v63 = OUTLINED_FUNCTION_5_24(v32, v33, v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_0(v63);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v41)
  {
    v42 = *(v27 + 32);

    *(v27 + 24) = v31;
    *(v27 + 32) = v29;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  OUTLINED_FUNCTION_35_8();
  sub_1DD63FD98();
  v43 = OUTLINED_FUNCTION_30_8();
  v44(v43);
  if ((v31 & 1) == 0)
  {
    v45 = type metadata accessor for ContactResolverConfig(0);
    v46 = OUTLINED_FUNCTION_54_5(v45);
    v47(v46);
  }

  OUTLINED_FUNCTION_67_1();
  v48 = OUTLINED_FUNCTION_43_8();
  v49 = v48[9];
  OUTLINED_FUNCTION_52_5();
  if (OUTLINED_FUNCTION_4_20(v50, v51))
  {
    OUTLINED_FUNCTION_18_9();
    v52 = swift_allocObject();
    v53 = OUTLINED_FUNCTION_18_14(v52);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v54 = (v27 + v48[16]);
  v56 = *v54;
  v55 = v54[1];
  v57 = OUTLINED_FUNCTION_13_15(v53);
  sub_1DD39E698(v57);
  OUTLINED_FUNCTION_63_1();

  *(v54 + v27) = v28;
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v59 = -1;
    do
    {
      v60 = v56 + v59 != -1;
      if (v56 + v59 == -1)
      {
        break;
      }

      if (++v59 >= *(v28 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6(v58);
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
      v58 = v63;
    }

    while ((v30 & 1) == 0);
  }

  else
  {
    v60 = 1;
  }

  v61 = OUTLINED_FUNCTION_41_5();
  v62(v61);
  *(v27 + v48[12]) = v60;
  *(v27 + v48[18]) = 0;
  *(v27 + v48[19]) = a27 & 1;
  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, __int16 *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28)
{
  OUTLINED_FUNCTION_18_4();
  v30 = v29;
  v95 = v31;
  v33 = v32;
  v93 = v34;
  v94 = v35;
  v37 = v36;
  v39 = v38;
  v92 = v40;
  v41 = type metadata accessor for ContactResolverConfig(0);
  v42 = OUTLINED_FUNCTION_7(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_53_4();
  v45 = sub_1DD63D168();
  v46 = OUTLINED_FUNCTION_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v52 = &v89 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v53);
  v55 = *a21;
  v56 = *a23;
  v57 = *(v48 + 16);
  v96 = &v89 - v59;
  v97 = v58;
  v91 = v33;
  v57(v54);
  sub_1DD4511A4();
  v60 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v60 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {
    v61 = *(v28 + 4);

    *(v28 + 3) = v39;
    *(v28 + 4) = v37;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  v62 = v97;
  v63 = sub_1DD63FD98();
  v90 = *(v48 + 8);
  v90(v52, v62);
  if ((v63 & 1) == 0)
  {
    (*(v48 + 24))(&v28[v41[8]], v96, v97);
  }

  v64 = *(v28 + 6);

  v65 = v94;
  *(v28 + 5) = v93;
  *(v28 + 6) = v65;
  v66 = v41[9];
  OUTLINED_FUNCTION_52_5();
  v28[v67] = v68;
  *&v28[v41[13]] = v55;
  *&v28[v41[15]] = v56;
  v69 = v98;
  if (v98)
  {
    OUTLINED_FUNCTION_18_9();
    v70 = swift_allocObject();
    v69 = v98;
    *(v70 + 16) = v98;
    *(v70 + 24) = a26;
    v71 = sub_1DD455C18;
  }

  else
  {
    v71 = 0;
    v70 = 0;
  }

  v72 = &v28[v41[16]];
  v74 = *v72;
  v73 = *(v72 + 1);
  v75 = OUTLINED_FUNCTION_13_15(v69);
  sub_1DD39E698(v75);
  *v72 = v71;
  *(v72 + 1) = v70;
  v76 = v41[11];
  v77 = *&v28[v76];

  *&v28[v76] = v30;
  v78 = *(v30 + 16);
  if (v78)
  {
    v79 = (v30 + 40);
    v80 = -v78;
    v81 = -1;
    do
    {
      v82 = v80 + v81 != -1;
      if (v80 + v81 == -1)
      {
        break;
      }

      if (++v81 >= *(v30 + 16))
      {
        __break(1u);
        return;
      }

      v83 = v79 + 2;
      v85 = *(v79 - 1);
      v84 = *v79;

      LOBYTE(v85) = sub_1DD41B6C8(v85, v84);

      v79 = v83;
    }

    while ((v85 & 1) == 0);
  }

  else
  {
    v82 = 1;
  }

  sub_1DD39E698(v98);
  v86 = v90;
  v87 = v97;
  v90(v91, v97);
  v86(v96, v87);
  v28[v41[12]] = v82;
  v28[v41[18]] = a27 & 1;
  v88 = v92;
  sub_1DD451E8C(v28, v92);
  *(v88 + v41[19]) = a28 & 1;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD451E8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_18_4();
  v22 = v21;
  v56 = v23;
  v53 = v24;
  v54 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v55 = sub_1DD63D168();
  v32 = OUTLINED_FUNCTION_0(v55);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_11_17();
  if (v37)
  {
    v38 = *(v31 + 4);

    *(v31 + 3) = v29;
    *(v31 + 4) = v27;
  }

  else
  {
  }

  OUTLINED_FUNCTION_37_9();
  sub_1DD63D158();
  OUTLINED_FUNCTION_1_31(&qword_1EE1637F8);
  sub_1DD63FD98();
  v39 = OUTLINED_FUNCTION_31_10();
  v40(v39);
  if ((v29 & 1) == 0)
  {
    v41 = type metadata accessor for ContactResolverConfig(0);
    (*(v34 + 24))(&v31[*(v41 + 32)], v56, v55);
  }

  OUTLINED_FUNCTION_67_1();
  *(v31 + 5) = v53;
  *(v31 + 6) = v54;
  v42 = type metadata accessor for ContactResolverConfig(0);
  if (OUTLINED_FUNCTION_4_20(v42, v42[9]))
  {
    OUTLINED_FUNCTION_18_9();
    v43 = swift_allocObject();
    v44 = OUTLINED_FUNCTION_18_14(v43);
  }

  else
  {
    OUTLINED_FUNCTION_51_6();
  }

  v45 = &v31[v42[16]];
  v47 = *v45;
  v46 = *(v45 + 1);
  v48 = OUTLINED_FUNCTION_13_15(v44);
  sub_1DD39E698(v48);
  OUTLINED_FUNCTION_61_5();

  *&v45[v31] = v22;
  if (*(v22 + 16))
  {
    OUTLINED_FUNCTION_50_8();
    v50 = -1;
    do
    {
      v51 = v47 + v50 != -1;
      if (v47 + v50 == -1)
      {
        break;
      }

      if (++v50 >= *(v22 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_29_6(v49);
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_66_2();
      v49 = v55;
    }

    while ((a21 & 1) == 0);
  }

  else
  {
    v51 = 1;
  }

  sub_1DD39E698(v57);
  v52(v56, v55);
  v31[v42[12]] = v51;
  v31[v42[18]] = 0;
  OUTLINED_FUNCTION_17();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:includeResolutionSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_24_8();
  v34 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v34);
  (*(v35 + 8))(v29);
  v36 = *v31;
  if (qword_1EE165FB0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_5();
  }

  v37 = sub_1DD63F9F8();
  __swift_project_value_buffer(v37, qword_1EE16F068);
  v38 = sub_1DD63F9D8();
  v39 = sub_1DD640378();
  if (os_log_type_enabled(v38, v39))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_62_4(&dword_1DD38D000, v40, v41, "do not use the deprecated ContactResolverConfig initializer!");
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();
  v42 = *(v28 + 48);

  *(v28 + 40) = v33;
  *(v28 + 48) = v32;
  v43 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_25_7(v43);
  if (a26)
  {
    OUTLINED_FUNCTION_18_9();
    v44 = swift_allocObject();
    *(v44 + 16) = a26;
    *(v44 + 24) = a27;
    v33 = sub_1DD455C18;
  }

  else
  {
    v33 = 0;
  }

  OUTLINED_FUNCTION_22_8();

  *(v28 + v33) = v30;
  v45 = *(v30 + 16);
  if (v45)
  {
    v46 = (v30 + 40);
    v47 = -v45;
    v48 = -1;
    do
    {
      v49 = v47 + v48 != -1;
      if (v47 + v48 == -1)
      {
        break;
      }

      if (++v48 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v50 = v46 + 2;
      v52 = *(v46 - 1);
      v51 = *v46;

      v33 = sub_1DD41B6C8(v52, v51);

      v46 = v50;
    }

    while ((v33 & 1) == 0);
  }

  else
  {
    v49 = 1;
  }

  sub_1DD39E698(a10);
  *(v28 + *(v32 + 48)) = v49;
  *(v28 + *(v32 + 72)) = a28 & 1;
  OUTLINED_FUNCTION_100_0();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_24_8();
  v33 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v33);
  (*(v34 + 8))(v28);
  v35 = *v30;
  if (qword_1EE165FB0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_1DD63F9F8();
  __swift_project_value_buffer(v36, qword_1EE16F068);
  v37 = sub_1DD63F9D8();
  v38 = sub_1DD640378();
  if (os_log_type_enabled(v37, v38))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_62_4(&dword_1DD38D000, v39, v40, "do not use the deprecated ContactResolverConfig initializer!");
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();
  v41 = *(v27 + 48);

  *(v27 + 40) = v32;
  *(v27 + 48) = v31;
  v42 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_25_7(v42);
  if (a26)
  {
    OUTLINED_FUNCTION_18_9();
    v43 = swift_allocObject();
    *(v43 + 16) = a26;
    *(v43 + 24) = a27;
    v32 = sub_1DD455C18;
  }

  else
  {
    v32 = 0;
  }

  OUTLINED_FUNCTION_22_8();

  *(v27 + v32) = v29;
  v44 = *(v29 + 16);
  if (v44)
  {
    v45 = (v29 + 40);
    v46 = -v44;
    v47 = -1;
    do
    {
      v48 = v46 + v47 != -1;
      if (v46 + v47 == -1)
      {
        break;
      }

      if (++v47 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v49 = v45 + 2;
      v51 = *(v45 - 1);
      v50 = *v45;

      v32 = sub_1DD41B6C8(v51, v50);

      v45 = v49;
    }

    while ((v32 & 1) == 0);
  }

  else
  {
    v48 = 1;
  }

  sub_1DD39E698(a10);
  *(v27 + *(v31 + 48)) = v48;
  *(v27 + *(v31 + 72)) = 0;
  OUTLINED_FUNCTION_100_0();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:searchFirstPartyContacts:bundleIdsForThirdPartyContactSearch:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:includeResolutionSignals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  OUTLINED_FUNCTION_101_0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v41);
  (*(v42 + 8))(v34);
  v43 = *a24;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v44 = a27;
  v45 = a23;
  v46 = sub_1DD63F9F8();
  __swift_project_value_buffer(v46, qword_1EE16F068);
  v47 = sub_1DD63F9D8();
  v48 = sub_1DD640378();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_9();
    *v49 = 0;
    _os_log_impl(&dword_1DD38D000, v47, v48, "do not use the deprecated ContactResolverConfig initializer!", v49, 2u);
    v45 = a23;
    v44 = a27;
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();
  v50 = *(v40 + 48);

  *(v40 + 40) = v38;
  *(v40 + 48) = v36;
  v51 = type metadata accessor for ContactResolverConfig(0);
  *(v40 + v51[9]) = v32 & 1;
  v52 = v51[11];
  v53 = *(v40 + v52);

  *(v40 + v52) = v45;
  *(v40 + v51[12]) = v30 & 1;
  *(v40 + v51[13]) = v43;
  if (v44)
  {
    OUTLINED_FUNCTION_18_9();
    v54 = swift_allocObject();
    *(v54 + 16) = v44;
    *(v54 + 24) = a28;
    v55 = sub_1DD455C18;
  }

  else
  {
    v55 = 0;
    v54 = 0;
  }

  v56 = (v40 + v51[16]);
  v57 = v56[1];
  sub_1DD39E698(*v56);
  *v56 = v55;
  v56[1] = v54;
  *(v40 + v51[18]) = a29 & 1;
  OUTLINED_FUNCTION_100_0();
}

void ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:searchFirstPartyContacts:bundleIdsForThirdPartyContactSearch:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t (*a29)@<X0>(void *@<X0>, uint64_t *@<X8>), uint64_t a30)
{
  OUTLINED_FUNCTION_58_4();
  v62 = v30;
  v60 = v31;
  v59 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v61 = *a26;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v43 = a29;
  v44 = sub_1DD63F9F8();
  __swift_project_value_buffer(v44, qword_1EE16F068);
  v45 = sub_1DD63F9D8();
  v46 = sub_1DD640378();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_9();
    *v47 = 0;
    _os_log_impl(&dword_1DD38D000, v45, v46, "do not use the deprecated ContactResolverConfig initializer!", v47, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4511A4();
  v48 = *(v42 + 4);

  *(v42 + 3) = v40;
  *(v42 + 4) = v38;
  v49 = *(v42 + 6);

  *(v42 + 5) = v36;
  *(v42 + 6) = v34;
  v50 = type metadata accessor for ContactResolverConfig(0);
  v51 = v50[8];
  v52 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v52);
  (*(v53 + 40))(&v42[v51], v59);
  v42[v50[9]] = v60 & 1;
  v54 = v50[11];
  v55 = *&v42[v54];

  *&v42[v54] = a25;
  v42[v50[12]] = v62 & 1;
  *&v42[v50[13]] = v61;
  if (a29)
  {
    OUTLINED_FUNCTION_18_9();
    v56 = swift_allocObject();
    *(v56 + 16) = a29;
    *(v56 + 24) = a30;
    v43 = sub_1DD455C18;
  }

  else
  {
    v56 = 0;
  }

  v57 = &v42[v50[16]];
  v58 = v57[1];
  sub_1DD39E698(*v57);
  *v57 = v43;
  v57[1] = v56;
  v42[v50[18]] = 0;
  OUTLINED_FUNCTION_57_7();
}

uint64_t static ContactResolverConfig.== infix(_:_:)(unsigned __int8 *a1, char *a2)
{
  if ((OUTLINED_FUNCTION_60_4(a1, a2) & 1) == 0)
  {
    goto LABEL_45;
  }

  v5 = v3[2];
  v6 = v2[2];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_45;
    }

    v7 = v3[1] == v2[1] && v5 == v6;
    if (!v7 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v6)
  {
    goto LABEL_45;
  }

  v8 = v3[3] == v2[3] && v3[4] == v2[4];
  if (!v8 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_45;
  }

  v9 = v3[5] == v2[5] && v3[6] == v2[6];
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_45;
  }

  v10 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_59_3(v10);
  if ((v11 & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_21(v4[9]);
  if (!v7)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_21(v4[10]);
  if (!v7)
  {
    goto LABEL_45;
  }

  if ((sub_1DD3C3778(*(v3 + v4[11]), *(v2 + v4[11])) & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_6_21(v4[12]);
  if (!v7 || *(v3 + v4[13]) != *(v2 + v4[13]) || (sub_1DD3AF2D8(*(v3 + v4[14]), *(v2 + v4[14])) & 1) == 0)
  {
    goto LABEL_45;
  }

  v12 = v4[15];
  v13 = *(v3 + v12);
  v14 = *(v2 + v12);
  v15 = *(v3 + v12);
  v16 = *(v2 + v12);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_45;
    }

LABEL_37:
    OUTLINED_FUNCTION_45_4(v4[17]);
    v21 = v7 && v19 == v20;
    if (!v21 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_6_21(v4[18]);
    if (!v7)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_6_21(v4[19]);
    if (!v7)
    {
      goto LABEL_45;
    }

    v23 = v4[20];
    v24 = (v3 + v23);
    v25 = *(v3 + v23 + 8);
    v26 = (v2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_45;
      }

      v28 = *v24 == *v26 && v25 == v27;
      if (!v28 && (sub_1DD640CD8() & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_56:
      OUTLINED_FUNCTION_6_21(v4[21]);
      if (v7)
      {
        v17 = *(v3 + v4[22]) ^ *(v2 + v4[22]) ^ 1;
        return v17 & 1;
      }

      goto LABEL_45;
    }

    if (!v27)
    {
      goto LABEL_56;
    }

LABEL_45:
    v17 = 0;
    return v17 & 1;
  }

  if (v16 == 2)
  {
    goto LABEL_45;
  }

  v17 = 0;
  v18 = v13 ^ v14;
  if (v18 <= 0xFF && (v18 & 1) == 0)
  {
    goto LABEL_37;
  }

  return v17 & 1;
}

uint64_t sub_1DD452B18(unsigned __int8 *a1, char *a2)
{
  if ((OUTLINED_FUNCTION_60_4(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v5 = v3[1] == v2[1] && v3[2] == v2[2];
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = v3[4];
  v7 = v2[4];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v3[3] == v2[3] && v6 == v7;
    if (!v8 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v3[5] == v2[5] && v3[6] == v2[6];
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for PrivatizedContactResolverConfig(0);
  OUTLINED_FUNCTION_59_3(v10);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_21(v4[9]);
  if (!v5)
  {
    return 0;
  }

  if ((sub_1DD3C3778(*(v3 + v4[10]), *(v2 + v4[10])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_21(v4[11]);
  if (!v5 || *(v3 + v4[12]) != *(v2 + v4[12]) || (sub_1DD3AF2D8(*(v3 + v4[13]), *(v2 + v4[13])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_4(v4[14]);
  if (v5 && v12 == v13)
  {
    return 1;
  }

  return sub_1DD640CD8();
}

uint64_t sub_1DD452C60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463617265746E69 && a2 == 0xED000064496E6F69;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7954746E65746E69 && a2 == 0xEE00656D614E6570;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x69546E7552676F6CLL && a2 == 0xEE0061746144656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001DD66C6A0 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x80000001DD66C6C0 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x80000001DD66C6E0 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000012 && 0x80000001DD66C700 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1DD640CD8();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1DD452FD4(char a1)
{
  result = 0x79546E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x7463617265746E69;
      break;
    case 2:
      result = 0x4974736575716572;
      break;
    case 3:
      result = 0x7954746E65746E69;
      break;
    case 4:
      result = 0x656C61636F6CLL;
      break;
    case 5:
      result = 0x69546E7552676F6CLL;
      break;
    case 6:
      result = 0x6449656C646E7562;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD453150(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD58, &qword_1DD64B878);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD455554();
  sub_1DD640EF8();
  LOBYTE(v28) = *v3;
  v29 = 0;
  sub_1DD455764();
  OUTLINED_FUNCTION_10();
  sub_1DD640C68();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    OUTLINED_FUNCTION_7_18(1);
    sub_1DD640C18();
    v16 = *(v3 + 24);
    v17 = *(v3 + 32);
    OUTLINED_FUNCTION_7_18(2);
    sub_1DD640BC8();
    v18 = *(v3 + 40);
    v19 = *(v3 + 48);
    OUTLINED_FUNCTION_7_18(3);
    sub_1DD640C18();
    v20 = type metadata accessor for PrivatizedContactResolverConfig(0);
    v21 = v20[8];
    LOBYTE(v28) = 4;
    sub_1DD63D168();
    sub_1DD42A458(&qword_1EE165CB8);
    OUTLINED_FUNCTION_64_3();
    v22 = *(v3 + v20[9]);
    LOBYTE(v28) = 5;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v28 = *(v3 + v20[10]);
    v29 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4557B8(&qword_1EE1638D0);
    OUTLINED_FUNCTION_64_3();
    v23 = *(v3 + v20[11]);
    LOBYTE(v28) = 7;
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    v28 = *(v3 + v20[12]);
    v29 = 8;
    sub_1DD455824();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
    LOBYTE(v28) = *(v3 + v20[13]);
    v29 = 9;
    sub_1DD455878();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
    v24 = (v3 + v20[14]);
    v25 = *v24;
    v26 = v24[1];
    OUTLINED_FUNCTION_7_18(10);
    sub_1DD640C18();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1DD45347C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DD63D168();
  v6 = OUTLINED_FUNCTION_0(v5);
  v37 = v7;
  v38 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD50, &unk_1DD64B868);
  OUTLINED_FUNCTION_0(v36);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v40 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v16 = OUTLINED_FUNCTION_7(v40);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v39 = v20 - v19;
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD455554();
  sub_1DD640ED8();
  if (!v2)
  {
    sub_1DD4555A8();
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *v39 = v41;
    OUTLINED_FUNCTION_3_22(1);
    *(v39 + 8) = sub_1DD640B28();
    *(v39 + 16) = v26;
    OUTLINED_FUNCTION_3_22(2);
    *(v39 + 24) = sub_1DD640AD8();
    *(v39 + 32) = v27;
    OUTLINED_FUNCTION_3_22(3);
    *(v39 + 40) = sub_1DD640B28();
    *(v39 + 48) = v28;
    LOBYTE(v41) = 4;
    sub_1DD42A458(&qword_1EE1637F0);
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    (*(v37 + 32))(v39 + v40[8], v12, v38);
    OUTLINED_FUNCTION_3_22(5);
    *(v39 + v40[9]) = sub_1DD640B38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4557B8(&qword_1EE160268);
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *(v39 + v40[10]) = v41;
    OUTLINED_FUNCTION_3_22(7);
    *(v39 + v40[11]) = sub_1DD640B38() & 1;
    sub_1DD4555FC();
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *(v39 + v40[12]) = v41;
    sub_1DD455650();
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_12_18();
    sub_1DD640B78();
    *(v39 + v40[13]) = 4;
    OUTLINED_FUNCTION_12_18();
    v29 = sub_1DD640B28();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_33_6();
    v33(v32);
    v34 = (v39 + v40[14]);
    *v34 = v29;
    v34[1] = v31;
    sub_1DD4556A4(v39, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DD455708(v39);
  }

  OUTLINED_FUNCTION_15_16();
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (v21)
  {
    v23 = *(v39 + 48);

    if (v22)
    {
      goto LABEL_9;
    }
  }

  else if (v22)
  {
LABEL_9:
    v24 = v40;
    result = (*(v37 + 8))(v39 + v40[8], v38);
    if ((v12 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v24 = v40;
  if (v12)
  {
LABEL_10:
    v25 = *(v39 + v24[10]);
  }

  return result;
}

uint64_t sub_1DD453ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD452C60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD453AE4(uint64_t a1)
{
  v2 = sub_1DD455554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD453B20(uint64_t a1)
{
  v2 = sub_1DD455554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolverDomain.description.getter()
{
  v1 = *v0;
  v2 = 0x736567617373656DLL;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x656E6F6870;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  if (v1 == 5)
  {
    return 7105633;
  }

  else
  {
    return v2;
  }
}

void sub_1DD453CDC(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1DD39E5BC(a1);
}

void sub_1DD453CE8(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1DD39E5D4(a1);
}

void sub_1DD453D0C(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1DD39E660(a1);
}

SiriInference::ContactResolverDomain sub_1DD453D34@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ContactResolverDomain.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DD453D74@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolverDomain.rawValue.getter();
  *a1 = result;
  return result;
}

SiriInference::SearchSuggestedContacts_optional __swiftcall SearchSuggestedContacts.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SearchSuggestedContacts.rawValue.getter()
{
  v1 = 28526;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7562617;
  }
}

uint64_t sub_1DD453E84@<X0>(uint64_t *a1@<X8>)
{
  result = SearchSuggestedContacts.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::RecommenderType_optional __swiftcall RecommenderType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t RecommenderType.rawValue.getter()
{
  v1 = 0x6D6D6F6365526C6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6369736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53656E4F69726973;
  }
}

uint64_t sub_1DD454050@<X0>(uint64_t *a1@<X8>)
{
  result = RecommenderType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContactActionType.description.getter()
{
  result = 0x656D697465636166;
  switch(*v0)
  {
    case 2:
      result = 0x6C6143656E6F6870;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    case 4:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

SiriInference::ContactActionType_optional __swiftcall ContactActionType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_1DD640AA8();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DD454258@<X0>(uint64_t *a1@<X8>)
{
  result = ContactActionType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ContactHandleTypePreference.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0x3D6570797428, 0xE600000000000000);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](0x6975716552736920, 0xEC0000003D646572);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v3, v4);

  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DD45447C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7269757165527369 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD45454C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x7269757165527369;
  }
}

uint64_t sub_1DD454588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD45447C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4545B0(uint64_t a1)
{
  v2 = sub_1DD454978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4545EC(uint64_t a1)
{
  v2 = sub_1DD454978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactHandleTypePreference.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCF0, &qword_1DD64AFA0);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD454978();
  sub_1DD640EF8();
  v19 = 0;
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_1DD415E20();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t ContactHandleTypePreference.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD00, &qword_1DD64AFA8);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD454978();
  sub_1DD640ED8();
  if (!v2)
  {
    v20 = 0;
    v14 = sub_1DD640B38();
    v18 = 1;
    sub_1DD415E74();
    sub_1DD640B78();
    (*(v7 + 8))(v12, v5);
    v16 = v19;
    *a2 = v14 & 1;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD454978()
{
  result = qword_1ECCDCCF8;
  if (!qword_1ECCDCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCCF8);
  }

  return result;
}

unint64_t sub_1DD4549D0()
{
  result = qword_1EE165168;
  if (!qword_1EE165168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165168);
  }

  return result;
}

unint64_t sub_1DD454A28()
{
  result = qword_1ECCDCD08;
  if (!qword_1ECCDCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD08);
  }

  return result;
}

unint64_t sub_1DD454A80()
{
  result = qword_1ECCDCD10;
  if (!qword_1ECCDCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD10);
  }

  return result;
}

unint64_t sub_1DD454AD8()
{
  result = qword_1ECCDCD18;
  if (!qword_1ECCDCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD18);
  }

  return result;
}

unint64_t sub_1DD454B30()
{
  result = qword_1ECCDCD20;
  if (!qword_1ECCDCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD20);
  }

  return result;
}

unint64_t sub_1DD454B88()
{
  result = qword_1ECCDCD28;
  if (!qword_1ECCDCD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD28);
  }

  return result;
}

unint64_t sub_1DD454BE0()
{
  result = qword_1EE162678;
  if (!qword_1EE162678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162678);
  }

  return result;
}

uint64_t sub_1DD454C5C()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1DD454E04(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_1DD63D168();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1DD454E04(319, &qword_1EE1638D8, v0, MEMORY[0x1E69E62F8]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1DD454E04(319, qword_1EE1611D8, &type metadata for ContactHandleTypePreference, MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1DD454E54();
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1DD454E04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DD454E54()
{
  if (!qword_1EE1632A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCD30, &qword_1DD64B5C8);
    v0 = type metadata accessor for Transparent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1632A8);
    }
  }
}

_BYTE *sub_1DD454ED8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContactActionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactHandleTypePreference(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactHandleTypePreference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

void sub_1DD455250()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1DD454E04(319, &qword_1EE163958, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DD63D168();
    if (v2 <= 0x3F)
    {
      sub_1DD454E04(319, &qword_1EE1638D8, v0, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ContactHandleTypePreference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD455450()
{
  result = qword_1ECCDCD38;
  if (!qword_1ECCDCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD38);
  }

  return result;
}

unint64_t sub_1DD4554A8()
{
  result = qword_1ECCDCD40;
  if (!qword_1ECCDCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD40);
  }

  return result;
}

unint64_t sub_1DD455500()
{
  result = qword_1ECCDCD48;
  if (!qword_1ECCDCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD48);
  }

  return result;
}

unint64_t sub_1DD455554()
{
  result = qword_1EE163CE0;
  if (!qword_1EE163CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CE0);
  }

  return result;
}

unint64_t sub_1DD4555A8()
{
  result = qword_1EE162670;
  if (!qword_1EE162670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162670);
  }

  return result;
}

unint64_t sub_1DD4555FC()
{
  result = qword_1EE161B60;
  if (!qword_1EE161B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161B60);
  }

  return result;
}

unint64_t sub_1DD455650()
{
  result = qword_1EE161748;
  if (!qword_1EE161748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161748);
  }

  return result;
}

uint64_t sub_1DD4556A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivatizedContactResolverConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD455708(uint64_t a1)
{
  v2 = type metadata accessor for PrivatizedContactResolverConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD455764()
{
  result = qword_1EE165560;
  if (!qword_1EE165560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165560);
  }

  return result;
}

uint64_t sub_1DD4557B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD455824()
{
  result = qword_1EE165170;
  if (!qword_1EE165170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165170);
  }

  return result;
}

unint64_t sub_1DD455878()
{
  result = qword_1EE164088;
  if (!qword_1EE164088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164088);
  }

  return result;
}

unint64_t sub_1DD4558CC()
{
  result = qword_1EE165558;
  if (!qword_1EE165558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165558);
  }

  return result;
}

unint64_t sub_1DD455920()
{
  result = qword_1ECCDCD60;
  if (!qword_1ECCDCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD60);
  }

  return result;
}

unint64_t sub_1DD455974()
{
  result = qword_1EE164080;
  if (!qword_1EE164080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164080);
  }

  return result;
}

uint64_t sub_1DD4559C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PrivatizedContactResolverConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD455B10()
{
  result = qword_1ECCDCD70;
  if (!qword_1ECCDCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD70);
  }

  return result;
}

unint64_t sub_1DD455B68()
{
  result = qword_1EE163CD0;
  if (!qword_1EE163CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CD0);
  }

  return result;
}

unint64_t sub_1DD455BC0()
{
  result = qword_1EE163CD8;
  if (!qword_1EE163CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_15(uint64_t a1)
{
  *(v3 - 112) = v1;
  sub_1DD4516B4(a1);
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  v5 = (v0 + *(v2 + 64));
  v6 = *v5;
  v7 = v5[1];
  sub_1DD4516B4(v1);
  sub_1DD39E698(v6);
  *v5 = v4;
  v5[1] = v3;
  v8 = *(v0 + *(v2 + 44));
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  v2 = *(v0 + 16);
}

void OUTLINED_FUNCTION_26_11()
{
  v3 = *v1;
  v4 = *v0;

  sub_1DD4511A4();
}

uint64_t OUTLINED_FUNCTION_29_6@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(a1 - 1);
  v2 = *a1;
}

uint64_t OUTLINED_FUNCTION_30_8()
{
  result = v1;
  *(v2 - 128) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  result = v0;
  *(v2 - 128) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_6()
{
  v2 = *(v1 - 128);
  v3 = *(*(v1 - 136) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_41_5()
{
  v1 = *(v0 - 112);
  sub_1DD39E698(*(v0 - 88));
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  v4 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_8()
{
  v4 = *(v2 - 120);
  *(v0 + 40) = v1;
  *(v0 + 48) = v4;

  return type metadata accessor for ContactResolverConfig(0);
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t a1)
{
  v4 = *(v2 + 24);
  result = v1 + *(a1 + 32);
  v6 = *(v3 - 104);
  v7 = *(v3 - 96);
  return result;
}

void OUTLINED_FUNCTION_59_3(uint64_t a1)
{
  v2 = *(a1 + 32);

  JUMPOUT(0x1E12AF450);
}

uint64_t OUTLINED_FUNCTION_60_4(unsigned __int8 *a1, char *a2)
{
  v3 = *a2;
  v4 = *a1;

  return sub_1DD3AF160(v4, v3);
}

uint64_t OUTLINED_FUNCTION_61_5()
{
  *v1 = v4;
  v1[1] = v3;
  v6 = *(v0 + *(v2 + 44));
}

void OUTLINED_FUNCTION_62_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_63_1()
{
  *v2 = v4;
  v2[1] = v3;
  v6 = *(v0 + *(v1 + 44));
}

uint64_t OUTLINED_FUNCTION_64_3()
{

  return sub_1DD640C68();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_1DD41B6C8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_66_2()
{
}

uint64_t OUTLINED_FUNCTION_67_1()
{
  v3 = *(v1 + 56);
  v4 = *(v0 + 48);
}

void sub_1DD456000(unint64_t *a1, uint64_t a2, const char *a3, int a4)
{
  v5 = v4;
  LODWORD(v314) = a4;
  v313 = a3;
  v307 = a2;
  v7 = type metadata accessor for ContactResolver.SignalSet(0);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v321 = v11;
  v12 = OUTLINED_FUNCTION_6_2();
  matched = type metadata accessor for PrivatizedContactMatchRuntimeData(v12);
  v13 = OUTLINED_FUNCTION_7(matched);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v319 = v16;
  v17 = OUTLINED_FUNCTION_6_2();
  v18 = type metadata accessor for ContactMatchRuntimeData(v17);
  v19 = OUTLINED_FUNCTION_0(v18);
  v317 = v20;
  v318 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v278 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for StitchedContactResolverRecommendation(0);
  v25 = OUTLINED_FUNCTION_0(v324);
  v304 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  v296 = v29;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v30);
  v312 = &v278 - v31;
  v32 = OUTLINED_FUNCTION_6_2();
  v301 = type metadata accessor for StitchedContactResolverRequest(v32);
  v33 = OUTLINED_FUNCTION_0(v301);
  v303 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v308 = v37;
  v38 = OUTLINED_FUNCTION_6_2();
  v39 = type metadata accessor for StitchedContactData(v38);
  v40 = OUTLINED_FUNCTION_7(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1();
  v300 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD78, &qword_1DD64B990);
  v45 = OUTLINED_FUNCTION_3(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v322 = &v278 - v48;
  v49 = OUTLINED_FUNCTION_6_2();
  v302 = type metadata accessor for ContactResolverRunTimeData(v49);
  v50 = OUTLINED_FUNCTION_7(v302);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  v294 = v53;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v54);
  v299 = &v278 - v55;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v56);
  v316 = &v278 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD80, &qword_1DD64B998);
  v59 = OUTLINED_FUNCTION_3(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v278 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v278 - v65;
  v310 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v67 = OUTLINED_FUNCTION_7(v310);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_2_1();
  v311 = v70;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v71);
  v315 = &v278 - v72;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v278 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v323 = &v278 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v79 = OUTLINED_FUNCTION_3(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_2_1();
  v306 = v82;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v278 - v84;
  v295 = v39;
  v86 = *(v39 + 28);
  v309 = a1;
  v305 = v86;
  sub_1DD4572EC(a1 + v86, &v278 - v84);
  v87 = type metadata accessor for StitchableInteraction();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v87);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v85, &qword_1ECCDC1B0, &unk_1DD6454F0);
    v292 = 0;
    goto LABEL_7;
  }

  v89 = *&v85[*(v87 + 28)];
  sub_1DD4577D4(v85, type metadata accessor for StitchableInteraction);
  sub_1DD55D704(v89);
  if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_86;
  }

  if (v90 <= -9.22337204e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v90 >= 9.22337204e18)
  {
LABEL_88:
    __break(1u);
    return;
  }

  v292 = v90;
LABEL_7:
  LODWORD(v325) = EnumTagSinglePayload;
  v91 = v309[4];
  sub_1DD558CD0(v91, v66);
  v92 = v301;
  v93 = __swift_getEnumTagSinglePayload(v66, 1, v301);
  v293 = v24;
  v284 = v91;
  if (v93 == 1)
  {
    sub_1DD390754(v66, &qword_1ECCDCD80, &qword_1DD64B998);
    v94 = v92;
    v95 = v91;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_23();
  sub_1DD457774(v66, v75, v96);
  OUTLINED_FUNCTION_1_32();
  sub_1DD4577D4(v66, v97);
  v98 = v75;
  v99 = v323;
  sub_1DD457714(v98, v323, type metadata accessor for PrivatizedContactResolverConfig);
  sub_1DD558CD0(v91, v63);
  v94 = v92;
  v95 = v91;
  if (__swift_getEnumTagSinglePayload(v63, 1, v92) == 1)
  {
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v99, v100);
    v101 = &qword_1ECCDCD80;
    v102 = &qword_1DD64B998;
LABEL_13:
    sub_1DD390754(v63, v101, v102);
    goto LABEL_14;
  }

  v103 = *&v63[*(v92 + 24)];

  OUTLINED_FUNCTION_1_32();
  sub_1DD4577D4(v63, v104);
  v63 = v322;
  sub_1DD558DAC(v103, v322);

  if (__swift_getEnumTagSinglePayload(v63, 1, v324) == 1)
  {
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v99, v105);
    v101 = &qword_1ECCDCD78;
    v102 = &qword_1DD64B990;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_9_14();
  v221 = v299;
  sub_1DD457774(v63, v299, v222);
  OUTLINED_FUNCTION_2_22();
  sub_1DD4577D4(v63, v223);
  v224 = v221;
  v225 = v316;
  sub_1DD457714(v224, v316, type metadata accessor for ContactResolverRunTimeData);
  v226 = v300;
  sub_1DD457774(v309, v300, type metadata accessor for StitchedContactData);
  v227 = v313;

  v228 = sub_1DD46953C(v226, v307, v227, v314);
  if (v229)
  {
    v232 = v228;
    v233 = v229;
    v279 = v231;
    v280 = v230;
    OUTLINED_FUNCTION_3_23();
    v234 = v315;
    sub_1DD457774(v99, v315, v235);
    v236 = *(v302 + 64);
    v237 = (v225 + *(v302 + 60));
    v238 = *v237;
    v313 = v237[1];
    v286 = v237[2];
    v287 = v238;
    v239 = v237[4];
    v285 = v237[3];
    v283 = v239;
    v240 = v237[5];
    LODWORD(v299) = *(v225 + 264);
    v241 = *(v225 + 272);
    v322 = *(v225 + 280);
    LODWORD(v300) = *(v225 + v236);
    v242 = *(v234 + 48);
    v297 = *(v234 + 40);
    v298 = v241;
    v314 = v242;
    v243 = v310;
    v244 = v234 + v310[8];
    v245 = sub_1DD63D118();
    v246 = *(v234 + v243[12]);
    v307 = v233;
    v281 = v232;
    v290 = v247;
    v291 = v245;
    switch(v246)
    {
      case 1:
        v289 = 0xE500000000000000;
        v248 = 0x656E6F6870;
        break;
      case 4:
        v289 = 0xE800000000000000;
        OUTLINED_FUNCTION_14_18();
        break;
      case 5:
        v289 = 0xE300000000000000;
        v248 = 7105633;
        break;
      default:
        v289 = 0xE700000000000000;
        v248 = 0x6E776F6E6B6E75;
        break;
    }

    v288 = v248;
    v282 = v240;
    v324 = v5;
    v252 = *(v234 + v310[10]);
    v253 = *(v252 + 16);
    if (v253)
    {

      v254 = (v252 + 40);
      v255 = -v253;
      v256 = -1;
      do
      {
        v257 = v255 + v256 != -1;
        if (v255 + v256 == -1)
        {
          break;
        }

        if (++v256 >= *(v252 + 16))
        {
          goto LABEL_85;
        }

        v258 = v254 + 2;
        v259 = *(v254 - 1);
        v260 = *v254;

        v261 = OUTLINED_FUNCTION_16_15();

        v254 = v258;
      }

      while ((v261 & 1) != 0);
    }

    else
    {

      v257 = 1;
    }

    v262 = v310[14];
    v263 = v315;
    v264 = *(v315 + v310[13]);
    v265 = *(v315 + v262);
    v266 = *(v315 + v262 + 8);
    if (v313 == 1)
    {
      v267 = 0;
      v268 = 0;
      v269 = 0;
      v270 = 0;
      v271 = 0;
      v272 = 0;
      v94 = v301;
      v95 = v284;
      v273 = v323;
    }

    else
    {
      v272 = v282;

      v268 = v313;
      v94 = v301;
      v271 = v283;
      v95 = v284;
      v273 = v323;
      v269 = v286;
      v267 = v287;
    }

    v353[0] = v291;
    v353[1] = v290;
    v353[2] = v288;
    v353[3] = v289;
    v353[4] = v297;
    v353[5] = v314;
    v354 = v257;
    v355 = v264;
    v356 = v299;
    v357 = v298;
    v358 = v322;
    v359 = v265;
    v360 = v266;
    v361 = v267;
    v362 = v268;
    v363 = v269;
    v364 = v270;
    v365 = v271;
    v366 = v272;
    v367 = v300;

    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v263, v274);
    v275 = v324;
    sub_1DD5EA8F4();
    v5 = v275;
    if (v275)
    {
      OUTLINED_FUNCTION_0_41();
      sub_1DD4577D4(v273, v276);
      sub_1DD45735C(v353);

      OUTLINED_FUNCTION_5_25();
      v220 = v316;
LABEL_55:
      sub_1DD4577D4(v220, v219);
      return;
    }

    sub_1DD45735C(v353);
    sub_1DD4573B0(v281, v307, v280, v279 & 0x101010101010101);
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v273, v277);

    OUTLINED_FUNCTION_5_25();
    v251 = v316;
  }

  else
  {
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v99, v249);
    OUTLINED_FUNCTION_5_25();
    v251 = v225;
  }

  sub_1DD4577D4(v251, v250);
LABEL_14:
  v285 = *(v95 + 16);
  if (v285)
  {
    v106 = 0;
    LODWORD(v291) = v325 == 1;
    v107 = v95 + ((*(v303 + 80) + 32) & ~*(v303 + 80));
    v313 = "userInterfaceIdiom";
    v280 = v107;
    while (1)
    {
      if (v106 >= *(v95 + 16))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v108 = v308;
      sub_1DD457774(v107 + *(v303 + 72) * v106, v308, type metadata accessor for StitchedContactResolverRequest);
      v109 = *(v108 + *(v94 + 24));
      v110 = *(v109 + 16);
      if (v110)
      {
        break;
      }

LABEL_53:
      ++v106;
      OUTLINED_FUNCTION_1_32();
      sub_1DD4577D4(v308, v217);
      v107 = v280;
      if (v106 == v285)
      {
        return;
      }
    }

    v111 = 0;
    v112 = v109 + ((*(v304 + 80) + 32) & ~*(v304 + 80));
    v113 = *(v109 + 16);
    v114 = v312;
    v279 = v106;
    v282 = v109;
    v283 = v110;
    v281 = v112;
    while (2)
    {
      if (v111 >= v113)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v115 = *(v304 + 72);
      v307 = v111;
      OUTLINED_FUNCTION_4_21();
      sub_1DD457774(v116, v114, v117);
      OUTLINED_FUNCTION_3_23();
      v118 = v311;
      sub_1DD457774(v308, v311, v119);
      v120 = *(v302 + 64);
      v121 = (v114 + *(v302 + 60));
      v122 = *v121;
      v123 = v121[1];
      v124 = v121[3];
      v289 = v121[2];
      v290 = v122;
      v125 = v121[4];
      v286 = v121[5];
      v287 = v125;
      LODWORD(v322) = *(v114 + 264);
      v126 = *(v114 + 280);
      v316 = *(v114 + 272);
      LODWORD(v323) = *(v114 + v120);
      v127 = *(v118 + 48);
      v314 = *(v118 + 40);
      v325 = v127;
      v128 = v310;
      v129 = v118 + v310[8];
      v130 = sub_1DD63D118();
      v131 = *(v118 + v128[12]);
      v324 = v5;
      v299 = v132;
      v300 = v130;
      if (v131 == 1)
      {
        v137 = 0xE500000000000000;
        v136 = 0x656E6F6870;
      }

      else
      {
        if (v131 != 4)
        {
          v133 = v131 == 5;
          if (v131 == 5)
          {
            v134 = 7105633;
          }

          else
          {
            v134 = 0x6E776F6E6B6E75;
          }

          v135 = 0xE300000000000000;
          if (!v133)
          {
            v135 = 0xE700000000000000;
          }

          v297 = v134;
          v298 = v135;
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_14_18();
      }

      v297 = v136;
      v298 = v137;
LABEL_31:
      v288 = v124;
      v138 = *(v311 + v310[10]);
      v139 = *(v138 + 16);
      v315 = v126;
      if (v139)
      {

        v140 = (v138 + 40);
        v141 = -v139;
        v142 = -1;
        do
        {
          v143 = v141 + v142 != -1;
          if (v141 + v142 == -1)
          {
            break;
          }

          if (++v142 >= *(v138 + 16))
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v144 = v140 + 2;
          v145 = *(v140 - 1);
          v146 = *v140;

          v147 = OUTLINED_FUNCTION_16_15();

          v140 = v144;
        }

        while ((v147 & 1) != 0);
      }

      else
      {

        v143 = 1;
      }

      v148 = *(v311 + v310[13]);
      v149 = (v311 + v310[14]);
      v150 = *v149;
      v151 = v149[1];
      if (v123 == 1)
      {
        v152 = 0;
        v123 = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v156 = 0;
        v157 = v324;
        v158 = v323;
      }

      else
      {
        v156 = v286;

        v157 = v324;
        v158 = v323;
        v153 = v289;
        v152 = v290;
        v155 = v287;
      }

      v338[0] = v300;
      v338[1] = v299;
      v338[2] = v297;
      v338[3] = v298;
      v338[4] = v314;
      v338[5] = v325;
      v339 = v143;
      v340 = v148;
      v341 = v322;
      v342 = v316;
      v343 = v315;
      v344 = v150;
      v345 = v151;
      v346 = v152;
      v347 = v123;
      v348 = v153;
      v349 = v154;
      v350 = v155;
      v351 = v156;
      v352 = v158;

      OUTLINED_FUNCTION_0_41();
      sub_1DD4577D4(v311, v159);
      v160 = sub_1DD5EA8F4();
      v5 = v157;
      if (v157)
      {
        sub_1DD45735C(v338);
        OUTLINED_FUNCTION_1_32();
        sub_1DD4577D4(v308, v218);
        OUTLINED_FUNCTION_2_22();
        v220 = v312;
        goto LABEL_55;
      }

      v161 = v160;
      sub_1DD45735C(v338);
      OUTLINED_FUNCTION_9_14();
      v162 = v294;
      sub_1DD457774(v312, v294, v163);
      v164 = v309;
      v165 = v306;
      sub_1DD4572EC(v309 + v305, v306);
      v166 = *(v164 + v295[10]);
      v167 = *(v164 + v295[12]);
      v168 = *(v164 + v295[13]);
      v169 = *(v164 + v295[11]);

      v170 = v162;
      v171 = v167;
      sub_1DD463F6C(v170, v165, v166, v167, v168, v169, &v326);
      if ((*(&v326 + 1) & 0xFF0000) != 0x20000)
      {
        v336 = v326;
        memcpy(v337, v327, sizeof(v337));
        sub_1DD457468();
      }

      v172 = v293;
      v173 = v296;
      v174 = v161;
      OUTLINED_FUNCTION_4_21();
      v175 = v312;
      sub_1DD457774(v312, v173, v176);
      sub_1DD46A01C(v173, v292, v291, v171, &v328);
      sub_1DD457520();
      v177 = v309;
      v178 = *v309;
      v179 = v309[1];
      OUTLINED_FUNCTION_4_21();
      sub_1DD457774(v175, v173, v180);
      v181 = v306;
      sub_1DD4572EC(v177 + v305, v306);

      sub_1DD45B3EC(v178, v179, v173, v181, v329);
      if ((v331 & 0xFF00) != 0x200)
      {
        v332 = v329[0];
        v333 = v329[1];
        v334 = v330;
        v335 = v331;
        sub_1DD4575D8();
      }

      ++v307;

      v182 = *(v312 + 296);

      v300 = sub_1DD5941F0(3, v182);
      v315 = v183;
      v316 = v174;
      v185 = v184;
      v187 = v186 >> 1;
      v314 = v186 >> 1;
      while (v187 != v185)
      {
        if (v185 >= v187)
        {
          __break(1u);
          goto LABEL_82;
        }

        v188 = *(v317 + 72);
        v322 = v185;
        sub_1DD457774(v315 + v188 * v185, v172, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD40FF0C();
        v324 = v190;
        v325 = v189;
        v323 = v191;
        v192 = v318;
        v193 = v321;
        sub_1DD457774(v172 + v318[5], v321, type metadata accessor for ContactResolver.SignalSet);
        v194 = v319;
        v195 = matched;
        sub_1DD55DD00(v193, v319 + matched[5]);
        v196 = v172 + v192[6];
        v197 = *(v196 + 8);
        v198 = *(v196 + 16);
        LOBYTE(v326) = *v196;
        *(&v326 + 1) = v197;
        v327[0] = v198;

        sub_1DD55EDF0(&v326);
        v200 = v199;
        v202 = v201;
        v204 = v203;
        v205 = *(v172 + v192[7]);
        sub_1DD55D704(*(v172 + v192[8]));
        v206 = *(v172 + v192[9]);
        v207 = v324;
        *v194 = v325;
        v194[1] = v207;
        v194[2] = v323;
        v208 = v194 + v195[6];
        *v208 = v200 & 1;
        *(v208 + 1) = v202;
        *(v208 + 2) = v204;
        *(v194 + v195[7]) = v205;
        *(v194 + v195[8]) = v209;
        *(v194 + v195[9]) = v206;

        v211 = sub_1DD522770(v210);
        sub_1DD4577D4(v194, type metadata accessor for PrivatizedContactMatchRuntimeData);
        v5 = 0;
        v212 = sub_1DD45B08C(v211);

        v185 = (v322 + 1);

        sub_1DD457690(v213, v212);
        v214 = sub_1DD63FDA8();
        sub_1DD395950();
        v215 = sub_1DD63FC48();

        AnalyticsSendEvent();

        OUTLINED_FUNCTION_10_20();
        v187 = v314;
      }

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_22();
      sub_1DD4577D4(v312, v216);
      v111 = v307;
      if (v307 != v283)
      {
        v113 = *(v282 + 16);
        v114 = v312;
        continue;
      }

      break;
    }

    v94 = v301;
    v95 = v284;
    v106 = v279;
    goto LABEL_53;
  }
}

uint64_t sub_1DD4572EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DD4573B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD5EAC0C(a1, a2, a3, a4 & 0x101010101010101);
  if (!v4)
  {
    v6 = v5;

    sub_1DD457690(v7, v6);
    v8 = sub_1DD63FDA8();
    sub_1DD395950();
    v9 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD457468()
{
  v1 = sub_1DD5EAF24();
  if (!v0)
  {
    v2 = v1;

    sub_1DD457690(v3, v2);
    v4 = sub_1DD63FDA8();
    sub_1DD395950();
    v5 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD457520()
{
  v1 = sub_1DD5EB0C0();
  if (!v0)
  {
    v2 = v1;

    sub_1DD457690(v3, v2);
    v4 = sub_1DD63FDA8();
    sub_1DD395950();
    v5 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD4575D8()
{
  v1 = sub_1DD5EB25C();
  if (!v0)
  {
    v2 = v1;

    sub_1DD457690(v3, v2);
    v4 = sub_1DD63FDA8();
    sub_1DD395950();
    v5 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

uint64_t sub_1DD457690(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1DD45782C(a1, sub_1DD457AE8, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1DD457714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD457774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4577D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD45782C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  sub_1DD4E75B8(v56);
  v7 = v56[1];
  v8 = v58;
  v9 = v59;
  v51 = v60;
  v52 = v56[0];
  v48 = v57;
  v10 = (v57 + 64) >> 6;

  v49 = a3;

  v50 = v7;
  if (v9)
  {
    while (1)
    {
      v53 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v52 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v52 + 56) + 8 * v13);
      v55[0] = *v14;
      v55[1] = v15;
      v55[2] = v16;

      v17 = v16;
      v51(v54, v55);

      v18 = v54[0];
      v19 = v54[1];
      v20 = v54[2];
      v21 = *v61;
      v29 = sub_1DD3978DC();
      v30 = *(v21 + 16);
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (*(v21 + 24) >= v32)
      {
        if ((v53 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC318, &qword_1DD646160);
          sub_1DD640A18();
        }
      }

      else
      {
        v34 = v61;
        sub_1DD4E67A8(v32, v53 & 1, v23, v24, v25, v26, v27, v28, v47, v48, v49, SBYTE4(v49));
        v35 = *v34;
        v36 = sub_1DD3978DC();
        if ((v33 & 1) != (v37 & 1))
        {
          goto LABEL_24;
        }

        v29 = v36;
      }

      v9 &= v9 - 1;
      v38 = *v61;
      if (v33)
      {
        v39 = *(v38[7] + 8 * v29);

        v40 = v38[7];
        v41 = *(v40 + 8 * v29);
        *(v40 + 8 * v29) = v39;
      }

      else
      {
        v38[(v29 >> 6) + 8] |= 1 << v29;
        v42 = (v38[6] + 16 * v29);
        *v42 = v18;
        v42[1] = v19;
        *(v38[7] + 8 * v29) = v20;
        v43 = v38[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_23;
        }

        v38[2] = v45;
      }

      a4 = 1;
      v8 = v11;
      v7 = v50;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1DD3AA5A4();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v53 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD457AE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD4E7344(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_1DD4577D4(v0, type metadata accessor for ContactMatchRuntimeData);
}

uint64_t sub_1DD457B80(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5, int a6, int a7)
{
  v8 = v7;
  v220 = a7;
  LODWORD(v246) = a6;
  v247 = a5;
  v217 = a2;
  v11 = type metadata accessor for ContactResolver.SignalSet(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2();
  v242 = v14 - v13;
  v15 = OUTLINED_FUNCTION_6_2();
  matched = type metadata accessor for ContactMatchRuntimeData(v15);
  v16 = OUTLINED_FUNCTION_0(matched);
  v203 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v240 = v21 - v20;
  v22 = OUTLINED_FUNCTION_6_2();
  v23 = type metadata accessor for PrivatizedContactMatchRuntimeData(v22);
  v24 = OUTLINED_FUNCTION_0(v23);
  v238 = v25;
  v239 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  v216 = sub_1DD63D078();
  v31 = OUTLINED_FUNCTION_0(v216);
  v245 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  v237 = type metadata accessor for ContactResolverRunTimeData(0);
  v38 = OUTLINED_FUNCTION_7(v237);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  v215 = v42 - v41;
  v43 = OUTLINED_FUNCTION_6_2();
  v44 = type metadata accessor for PrivatizedContactResolverConfig(v43);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  OUTLINED_FUNCTION_2();
  v48 = v47 - v46;
  v234 = type metadata accessor for ContactResolverDESRecord();
  v49 = OUTLINED_FUNCTION_7(v234);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_1_4();
  v233 = (v52 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v197 - v55;
  v214 = type metadata accessor for StitchedContactResolverRecommendation(0);
  v57 = OUTLINED_FUNCTION_0(v214);
  v223 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_1_4();
  v236 = v61 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v222 = &v197 - v64;
  v65 = OUTLINED_FUNCTION_6_2();
  v201 = type metadata accessor for StitchedContactResolverRequest(v65);
  v66 = OUTLINED_FUNCTION_0(v201);
  v202 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_2();
  v226 = v71 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72 - 8);
  OUTLINED_FUNCTION_1_4();
  v76 = v74 - v75;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v197 - v78;
  v213 = type metadata accessor for StitchedContactData(0);
  v212 = v213[7];
  sub_1DD4572EC(a1 + v212, v79);
  v80 = type metadata accessor for StitchableInteraction();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v80);
  v221 = v80;
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1DD458B24(v79);
    v83 = 0.0;
  }

  else
  {
    v83 = *&v79[*(v80 + 28)];
    OUTLINED_FUNCTION_4_22();
    result = sub_1DD458CB4(v79, v84);
  }

  if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v83 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v83 < 9.22337204e18)
  {
    v198 = *(*(a1 + 32) + 16);
    if (!v198)
    {
      return result;
    }

    v209 = v83;
    OUTLINED_FUNCTION_11_18(&v235);
    v199 = v87;
    v88 = v246 & 1;
    if (!v247)
    {
      v88 = 2;
    }

    v207 = v88;
    v208 = v245 + 8;
    v89 = fmax(a3, 0.001);
    v247 = v30;
    v211 = v37;
    v227 = v48;
    v210 = v56;
    v56 = v222;
    v204 = v76;
    v90 = v221;
    v205 = a1;
    v197 = v85;
    while (v86 < *(v85 + 16))
    {
      v91 = *(v202 + 72);
      v200 = v86;
      v92 = v226;
      sub_1DD458BF4(v199 + v91 * v86, v226, type metadata accessor for StitchedContactResolverRequest);
      v218 = *(*(v92 + *(v201 + 24)) + 16);
      if (v218)
      {
        v93 = 0;
        OUTLINED_FUNCTION_11_18(&v250);
        v219 = v95;
        v206 = v94;
        while (1)
        {
          if (v93 >= *(v94 + 16))
          {
            __break(1u);
            goto LABEL_47;
          }

          v96 = *(v223 + 72);
          OUTLINED_FUNCTION_6_22();
          v99 = sub_1DD458BF4(v97, v56, v98);
          if ((v220 & 1) == 0 && (v56[v237[12]] & 1) == 0)
          {
            sub_1DD4C193C(v99, 0.0, 1.0);
            if (v100 >= v89)
            {
              if (qword_1EE165FB0 != -1)
              {
                goto LABEL_51;
              }

              goto LABEL_41;
            }
          }

          OUTLINED_FUNCTION_5_26();
          sub_1DD458BF4(v226, v48, v101);
          OUTLINED_FUNCTION_6_22();
          sub_1DD458BF4(v56, v236, v102);
          sub_1DD4572EC(a1 + v212, v76);
          v103 = __swift_getEnumTagSinglePayload(v76, 1, v90);
          v228 = v93;
          if (v103 == 1)
          {
            break;
          }

          v104 = *(v76 + *(v90 + 36));

          OUTLINED_FUNCTION_4_22();
          sub_1DD458CB4(v76, v105);
          v106 = *(v104 + 16);
          if (!v106)
          {

            goto LABEL_27;
          }

          v235 = v8;
          v248[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42A2D4();
          v107 = v248[0];
          v108 = (v104 + 40);
          do
          {
            v110 = *(v108 - 1);
            v109 = *v108;
            v248[0] = v107;
            v112 = *(v107 + 16);
            v111 = *(v107 + 24);

            if (v112 >= v111 >> 1)
            {
              sub_1DD42A2D4();
              v107 = v248[0];
            }

            *(v107 + 16) = v112 + 1;
            v113 = v107 + 16 * v112;
            *(v113 + 32) = v110;
            *(v113 + 40) = v109;
            v108 += 10;
            --v106;
          }

          while (v106);
          v232 = v107;

          v30 = v247;
          v48 = v227;
          v8 = v235;
LABEL_28:
          v230 = *(a1 + v213[12]);
          v114 = (a1 + v213[8]);
          v115 = *(v114 + 6);
          v229 = *(v114 + 2);
          v116 = *v114;
          v118 = v233;
          v117 = v234;
          *v233 = 2;
          v119 = (v118 + v117[7]);
          v231 = v117[19];
          v120 = v118 + v231;
          v120[6] = 0;
          *(v120 + 2) = 0;
          *v120 = 2;
          v121 = v118 + v117[5];
          sub_1DD63D0E8();
          v122 = v117[6];
          OUTLINED_FUNCTION_5_26();
          sub_1DD458BF4(v48, v118 + v123, v124);
          v125 = v236;
          v126 = (v236 + v237[15]);
          v127 = *v126;
          v128 = v126[1];
          v129 = v126[2];
          v130 = v126[3];
          v131 = v126[4];
          v132 = v126[5];
          *v119 = *v126;
          v119[1] = v128;
          v119[2] = v129;
          v119[3] = v130;
          v119[4] = v131;
          v119[5] = v132;
          *(v118 + v117[8]) = *(v125 + 264);
          v133 = *(v125 + 280);
          v134 = (v118 + v117[9]);
          *v134 = *(v125 + 272);
          v134[1] = v133;
          *(v118 + v117[10]) = *(v125 + 288);
          v135 = *(v125 + 296);
          v136 = *(v135 + 16);
          v235 = v8;
          if (v136)
          {
            v224 = v115;
            v225 = v116;
            sub_1DD458B8C(v127, v128);
            v249 = MEMORY[0x1E69E7CC0];

            sub_1DD42B82C(0, v136, 0);
            v137 = v249;
            v138 = v135 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
            v243 = *(v203 + 72);
            do
            {
              v246 = v137;
              v139 = v240;
              sub_1DD458BF4(v138, v240, type metadata accessor for ContactMatchRuntimeData);
              sub_1DD40FF0C();
              v244 = v141;
              v245 = v140;
              v143 = v142;
              v145 = matched;
              v144 = v242;
              sub_1DD458BF4(v139 + matched[5], v242, type metadata accessor for ContactResolver.SignalSet);
              v146 = v239;
              sub_1DD55DD00(v144, v30 + v239[5]);
              v147 = v139 + v145[6];
              v148 = *(v147 + 8);
              v149 = *(v147 + 16);
              LOBYTE(v248[0]) = *v147;
              v248[1] = v148;
              v248[2] = v149;

              sub_1DD55EDF0(v248);
              v151 = v150;
              v153 = v152;
              v155 = v154;
              v156 = *(v139 + v145[7]);
              sub_1DD55D704(*(v139 + v145[8]));
              v157 = *(v139 + v145[9]);
              v158 = v244;
              *v247 = v245;
              v247[1] = v158;
              v247[2] = v143;
              v159 = v247 + v146[6];
              LOBYTE(v158) = v151 & 1;
              v30 = v247;
              *v159 = v158;
              *(v159 + 1) = v153;
              *(v159 + 2) = v155;
              *(v30 + v146[7]) = v156;
              *(v30 + v146[8]) = v160;
              *(v30 + v146[9]) = v157;

              v161 = v139;
              v137 = v246;
              sub_1DD458CB4(v161, type metadata accessor for ContactMatchRuntimeData);
              v249 = v137;
              v163 = *(v137 + 16);
              v162 = *(v137 + 24);
              if (v163 >= v162 >> 1)
              {
                sub_1DD42B82C(v162 > 1, v163 + 1, 1);
                v137 = v249;
              }

              *(v137 + 16) = v163 + 1;
              sub_1DD458C54(v30, v137 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v163, type metadata accessor for PrivatizedContactMatchRuntimeData);
              v138 += v243;
              --v136;
            }

            while (v136);
            v116 = v225;
            v115 = v224;
          }

          else
          {
            sub_1DD458B8C(v127, v128);

            v137 = MEMORY[0x1E69E7CC0];
          }

          v164 = v116 | ((v229 | (v115 << 16)) << 32);
          v165 = v233;
          v166 = v234;
          v167 = v233 + v234[14];
          v246 = v234[17];
          *(v233 + v234[11]) = v137;
          v169 = v236;
          v168 = v237;
          v170 = v236 + v237[10];
          *(v165 + v166[12]) = sub_1DD43D87C();
          *(v165 + v166[13]) = *(v169 + v168[11]);
          v171 = v169 + *(v214 + 20);
          v172 = *v171;
          v173 = *(v171 + 8);
          v174 = *(v171 + 16);
          *v167 = *v171;
          *(v167 + 1) = v173;
          *(v167 + 2) = v174;
          v175 = *(v171 + 24);
          v167[24] = v175;
          *(v165 + v166[15]) = v232;
          *(v165 + v166[16]) = v230;
          LOBYTE(v167) = sub_1DD55D7D8(v209);
          sub_1DD458BE0(v172, v173, v174, v175);
          v48 = v227;
          sub_1DD458CB4(v227, type metadata accessor for PrivatizedContactResolverConfig);
          *(v165 + v166[18]) = v167;
          v176 = v165 + v231;
          *(v176 + 6) = BYTE6(v164);
          *(v176 + 4) = WORD2(v164);
          *v176 = v164;
          v177 = v215;
          sub_1DD458BF4(v169, v215, type metadata accessor for ContactResolverRunTimeData);
          OUTLINED_FUNCTION_0_42();
          sub_1DD458CB4(v169, v178);
          LOBYTE(v172) = *(v177 + v237[16]);
          sub_1DD458CB4(v177, type metadata accessor for ContactResolverRunTimeData);
          *(v165 + v166[20]) = v172;
          *(v165 + v246) = v207;
          v179 = v210;
          sub_1DD458C54(v165, v210, type metadata accessor for ContactResolverDESRecord);
          v180 = __swift_project_boxed_opaque_existential_1(v217, v217[3]);
          v181 = *v180;
          v182 = v180[1];
          v183 = v211;
          sub_1DD63D068();
          v184 = v235;
          sub_1DD4AF850(v179, v183, v181);
          v8 = v184;
          if (v184)
          {
            v189 = OUTLINED_FUNCTION_9_15();
            v190(v189);
            OUTLINED_FUNCTION_8_14();
            OUTLINED_FUNCTION_0_42();
            v192 = v222;
            goto LABEL_44;
          }

          v93 = v228 + 1;
          v185 = OUTLINED_FUNCTION_9_15();
          v186(v185);
          OUTLINED_FUNCTION_8_14();
          OUTLINED_FUNCTION_0_42();
          v56 = v222;
          sub_1DD458CB4(v222, v187);
          a1 = v205;
          v30 = v247;
          v76 = v204;
          v90 = v221;
          v94 = v206;
          if (v93 == v218)
          {
            goto LABEL_37;
          }
        }

        sub_1DD458B24(v76);
LABEL_27:
        v232 = MEMORY[0x1E69E7CC0];
        goto LABEL_28;
      }

LABEL_37:
      v188 = v200 + 1;
      result = OUTLINED_FUNCTION_7_19();
      v86 = v188;
      v85 = v197;
      if (v188 == v198)
      {
        return result;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_41:
  v193 = sub_1DD63F9F8();
  __swift_project_value_buffer(v193, qword_1EE16F068);
  v194 = sub_1DD63F9D8();
  v195 = sub_1DD640368();
  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    *v196 = 0;
    _os_log_impl(&dword_1DD38D000, v194, v195, "skipping logging for non-force prompt", v196, 2u);
    MEMORY[0x1E12B3DA0](v196, -1, -1);
  }

  OUTLINED_FUNCTION_0_42();
  v192 = v56;
LABEL_44:
  sub_1DD458CB4(v192, v191);
  return OUTLINED_FUNCTION_7_19();
}

double sub_1DD4589E4()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = sub_1DD63FDA8();
  v2 = sub_1DD63FDA8();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

BOOL sub_1DD458AD4(char a1, char a2, double a3)
{
  result = 1;
  if ((a2 & 1) == 0 && (a1 & 1) == 0)
  {
    v5 = fmax(a3, 0.001);
    sub_1DD4C193C(1, 0.0, 1.0);
    return v6 < v5;
  }

  return result;
}

uint64_t sub_1DD458B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD458B8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD458BE0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1DD3E7AA0(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1DD458BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD458C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD458CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for ContactResolverDESRecord()
{
  result = qword_1EE161730;
  if (!qword_1EE161730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD458D98()
{
  sub_1DD63D0F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PrivatizedContactResolverConfig(319);
    if (v1 <= 0x3F)
    {
      sub_1DD459010(319, &qword_1EE165590, &type metadata for TrialEnrollment, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        v3 = MEMORY[0x1E69E6370];
        sub_1DD458FB8();
        if (v4 <= 0x3F)
        {
          sub_1DD459010(319, &qword_1EE1613B0, &type metadata for StitchedContactUserPrompt, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1DD459010(319, &qword_1EE1638D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1DD459010(319, &qword_1EE1638C8, v3, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1DD459010(319, &qword_1EE160CD0, &type metadata for PotentialRetryInteractionInfo, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
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

void sub_1DD458FB8()
{
  if (!qword_1EE1602A0)
  {
    type metadata accessor for PrivatizedContactMatchRuntimeData(255);
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1602A0);
    }
  }
}

void sub_1DD459010(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DD459060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726E456C61697274 && a2 == 0xEF746E656D6C6C6FLL;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E656D6D6F636572 && a2 == 0xEF65707954726564;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x80000001DD66C860 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001DD66C880 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7365686374616DLL && a2 == 0xE700000000000000;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ALL && 0x80000001DD66C8A0 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6974756C6F736572 && a2 == 0xEE00657079546E6FLL;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6F72506563726F66 && a2 == 0xEB0000000074706DLL;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x80000001DD66C8C0 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001DD66C8E0 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001ELL && 0x80000001DD66C900 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000019 && 0x80000001DD66C920 == a2;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001DLL && 0x80000001DD66C940 == a2;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000018 && 0x80000001DD66C960 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1DD640CD8();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

unint64_t sub_1DD459570(char a1)
{
  result = 0x6556616D65686373;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x6769666E6F63;
      break;
    case 3:
      result = 0x726E456C61697274;
      break;
    case 4:
      result = 0x6E656D6D6F636572;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7365686374616DLL;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0x6974756C6F736572;
      break;
    case 10:
      result = 0x6F72506563726F66;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD459798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD88, &qword_1DD64BA20);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v38 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD45A6F4();
  sub_1DD640EF8();
  v14 = *v3;
  LOBYTE(v40) = 0;
  OUTLINED_FUNCTION_3_7();
  sub_1DD640C48();
  if (!v2)
  {
    v15 = type metadata accessor for ContactResolverDESRecord();
    v16 = v15[5];
    LOBYTE(v40) = 1;
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_9_16();
    sub_1DD45AB3C(v17, v18);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    v19 = v15[6];
    LOBYTE(v40) = 2;
    type metadata accessor for PrivatizedContactResolverConfig(0);
    OUTLINED_FUNCTION_8_15();
    sub_1DD45AB3C(v20, v21);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    v22 = (v3 + v15[7]);
    v23 = v22[1];
    v40 = *v22;
    v41 = v23;
    v42 = v22[2];
    v39 = 3;
    sub_1DD45A748();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C08();
    OUTLINED_FUNCTION_20_10(v15[8]);
    v39 = 4;
    sub_1DD45A79C();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    v24 = (v3 + v15[9]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v40) = 5;
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C18();
    v27 = *(v3 + v15[10]);
    LOBYTE(v40) = 6;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    *&v40 = *(v3 + v15[11]);
    v39 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD98, &unk_1DD64BA28);
    sub_1DD45AAA0(&qword_1ECCDCDA0, &qword_1ECCDCDA8);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    OUTLINED_FUNCTION_20_10(v15[12]);
    v39 = 8;
    sub_1DD45A7F0();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    OUTLINED_FUNCTION_20_10(v15[13]);
    v39 = 9;
    sub_1DD45A844();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    v28 = v3 + v15[14];
    v29 = *(v28 + 2);
    v30 = v28[24];
    v40 = *v28;
    *&v41 = v29;
    BYTE8(v41) = v30;
    v39 = 10;
    sub_1DD45A898();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C08();
    *&v40 = *(v3 + v15[15]);
    v39 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4557B8(&qword_1EE1638D0);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    v31 = *(v3 + v15[16]);
    LOBYTE(v40) = 12;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v32 = *(v3 + v15[17]);
    LOBYTE(v40) = 13;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640BD8();
    OUTLINED_FUNCTION_20_10(v15[18]);
    v39 = 14;
    sub_1DD45A8EC();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    v33 = v15[19];
    v34 = *(v3 + v33 + 6);
    v35 = *(v3 + v33 + 4);
    LODWORD(v40) = *(v3 + v33);
    BYTE6(v40) = v34;
    WORD2(v40) = v35;
    v39 = 15;
    sub_1DD45A940();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C08();
    v36 = *(v3 + v15[20]);
    LOBYTE(v40) = 16;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD459CE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_1DD63D0F8();
  v11 = OUTLINED_FUNCTION_0(v10);
  v74 = v12;
  v75 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCDC0, &qword_1DD64BA38);
  v18 = OUTLINED_FUNCTION_0(v76);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  v23 = type metadata accessor for ContactResolverDESRecord();
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v86 = (v29 - v28);
  v87 = v27;
  v30 = v27[19];
  v31 = v29 - v28 + v30;
  *(v31 + 6) = 0;
  *(v31 + 4) = 0;
  *v31 = 2;
  v33 = a1[3];
  v32 = a1[4];
  v85 = a1;
  v34 = __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1DD45A6F4();
  v73 = v22;
  v35 = v84;
  sub_1DD640ED8();
  if (v35)
  {
    OUTLINED_FUNCTION_1_33();
    v79 = 1;
    v80 = 0;
    v37 = v86;
    __swift_destroy_boxed_opaque_existential_1(v85);
    v38 = v87;
    sub_1DD447638(v84, v79);
    if (v32)
    {
      v39 = *(v37 + v38[9] + 8);
    }

    if (v34)
    {
      v40 = *(v37 + v38[11]);
    }

    result = sub_1DD3E6340(v78, v77, v30, 0xFFu);
    if (v3)
    {
      v41 = *(v37 + v38[15]);
    }
  }

  else
  {
    v71 = v30;
    LOBYTE(v88) = 0;
    v36 = sub_1DD640B58();
    v42 = v86;
    *v86 = v36;
    LOBYTE(v88) = 1;
    OUTLINED_FUNCTION_9_16();
    sub_1DD45AB3C(v43, v44);
    v45 = v75;
    sub_1DD640B78();
    v46 = v87;
    (*(v74 + 32))(v42 + v87[5], v17, v45);
    LOBYTE(v88) = 2;
    OUTLINED_FUNCTION_8_15();
    sub_1DD45AB3C(v47, v48);
    sub_1DD640B78();
    sub_1DD45A994(v9, v42 + v46[6]);
    v94 = 3;
    sub_1DD45A9F8();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B18();
    v49 = (v42 + v46[7]);
    v50 = v89;
    v51 = v90;
    v52 = v91;
    v53 = v92;
    v54 = v93;
    v83 = v90;
    v84 = v88;
    *v49 = v88;
    v49[1] = v50;
    v79 = v50;
    v80 = v54;
    v49[2] = v51;
    v49[3] = v52;
    v81 = v53;
    v82 = v52;
    v49[4] = v53;
    v49[5] = v54;
    v94 = 4;
    sub_1DD45AA4C();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B78();
    *(v42 + v46[8]) = v88;
    OUTLINED_FUNCTION_7_20(5);
    v55 = sub_1DD640B28();
    v56 = (v42 + v46[9]);
    *v56 = v55;
    v56[1] = v57;
    OUTLINED_FUNCTION_7_20(6);
    *(v42 + v46[10]) = sub_1DD640B38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD98, &unk_1DD64BA28);
    v94 = 7;
    sub_1DD45AAA0(&qword_1ECCDCDC8, &qword_1ECCDCDD0);
    OUTLINED_FUNCTION_15_17();
    sub_1DD640B78();
    *(v42 + v46[11]) = v88;
    v94 = 8;
    sub_1DD45AB84();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B78();
    *(v42 + v87[12]) = v88;
    v94 = 9;
    sub_1DD45ABD8();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B78();
    *(v86 + v87[13]) = v88;
    v94 = 10;
    sub_1DD45AC2C();
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B18();
    v58 = v86 + v87[14];
    v59 = v89;
    v60 = v90;
    v61 = v91;
    v77 = v89;
    v78 = v88;
    *v58 = v88;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    v58[24] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    v94 = 11;
    sub_1DD4557B8(&qword_1EE160268);
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B78();
    *(v86 + v87[15]) = v88;
    OUTLINED_FUNCTION_7_20(12);
    OUTLINED_FUNCTION_14_19();
    *(v86 + v87[16]) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_7_20(13);
    OUTLINED_FUNCTION_14_19();
    *(v86 + v87[17]) = sub_1DD640AE8();
    v94 = 14;
    sub_1DD45AC80();
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B78();
    *(v86 + v87[18]) = v88;
    v94 = 15;
    sub_1DD45ACD4();
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B18();
    v62 = v88;
    v63 = WORD2(v88);
    v64 = v86 + v71;
    v64[6] = BYTE6(v88);
    *(v64 + 2) = v63;
    *v64 = v62;
    OUTLINED_FUNCTION_7_20(16);
    OUTLINED_FUNCTION_14_19();
    v65 = sub_1DD640B38();
    v66 = OUTLINED_FUNCTION_10_21();
    v67(v66);
    v68 = v65 & 1;
    v69 = v86;
    *(v86 + v87[20]) = v68;
    sub_1DD45AD28(v69, v72);
    __swift_destroy_boxed_opaque_existential_1(v85);
    return sub_1DD45AD8C(v69, type metadata accessor for ContactResolverDESRecord);
  }

  return result;
}

uint64_t sub_1DD45A5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD459060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD45A624@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD459568();
  *a1 = result;
  return result;
}

uint64_t sub_1DD45A64C(uint64_t a1)
{
  v2 = sub_1DD45A6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD45A688(uint64_t a1)
{
  v2 = sub_1DD45A6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD45A6F4()
{
  result = qword_1ECCDCD90;
  if (!qword_1ECCDCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD90);
  }

  return result;
}

unint64_t sub_1DD45A748()
{
  result = qword_1EE165598;
  if (!qword_1EE165598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165598);
  }

  return result;
}

unint64_t sub_1DD45A79C()
{
  result = qword_1EE163A68;
  if (!qword_1EE163A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A68);
  }

  return result;
}

unint64_t sub_1DD45A7F0()
{
  result = qword_1ECCDCDB0;
  if (!qword_1ECCDCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDB0);
  }

  return result;
}

unint64_t sub_1DD45A844()
{
  result = qword_1EE1651E8;
  if (!qword_1EE1651E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651E8);
  }

  return result;
}

unint64_t sub_1DD45A898()
{
  result = qword_1EE1613B8[0];
  if (!qword_1EE1613B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1613B8);
  }

  return result;
}

unint64_t sub_1DD45A8EC()
{
  result = qword_1ECCDCDB8;
  if (!qword_1ECCDCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDB8);
  }

  return result;
}

unint64_t sub_1DD45A940()
{
  result = qword_1EE160CD8[0];
  if (!qword_1EE160CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE160CD8);
  }

  return result;
}

uint64_t sub_1DD45A994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivatizedContactResolverConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD45A9F8()
{
  result = qword_1EE162928[0];
  if (!qword_1EE162928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE162928);
  }

  return result;
}

unint64_t sub_1DD45AA4C()
{
  result = qword_1EE160368;
  if (!qword_1EE160368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160368);
  }

  return result;
}

uint64_t sub_1DD45AAA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCD98, &unk_1DD64BA28);
    sub_1DD45AB3C(a2, type metadata accessor for PrivatizedContactMatchRuntimeData);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD45AB3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD45AB84()
{
  result = qword_1ECCDCDD8;
  if (!qword_1ECCDCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDD8);
  }

  return result;
}

unint64_t sub_1DD45ABD8()
{
  result = qword_1EE161BD8;
  if (!qword_1EE161BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161BD8);
  }

  return result;
}

unint64_t sub_1DD45AC2C()
{
  result = qword_1ECCDCDE0;
  if (!qword_1ECCDCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDE0);
  }

  return result;
}

unint64_t sub_1DD45AC80()
{
  result = qword_1ECCDCDE8;
  if (!qword_1ECCDCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDE8);
  }

  return result;
}

unint64_t sub_1DD45ACD4()
{
  result = qword_1ECCDCDF0;
  if (!qword_1ECCDCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDF0);
  }

  return result;
}

uint64_t sub_1DD45AD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverDESRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD45AD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactResolverDESRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactResolverDESRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD45AF4C()
{
  result = qword_1ECCDCDF8;
  if (!qword_1ECCDCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDF8);
  }

  return result;
}

unint64_t sub_1DD45AFA4()
{
  result = qword_1ECCDCE00;
  if (!qword_1ECCDCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE00);
  }

  return result;
}

unint64_t sub_1DD45AFFC()
{
  result = qword_1ECCDCE08;
  if (!qword_1ECCDCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_21()
{
  v2 = *(v0 + 8);
  result = *(v1 - 256);
  v4 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_19()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 232);
  return result;
}

void *sub_1DD45B08C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE10, &qword_1DD64D240);
  result = sub_1DD640A58();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v12 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v4 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v26 + 56) + 8 * v16);
      v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      result = [v21 initWithDouble_];
      *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      v22 = (v3[6] + 16 * v16);
      *v22 = v18;
      v22[1] = v19;
      *(v3[7] + 8 * v16) = result;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD45B228(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD45B268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsMeasurableError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD45B38C()
{
  result = qword_1ECCDCE18;
  if (!qword_1ECCDCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE18);
  }

  return result;
}

void sub_1DD45B3EC(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t i@<X3>, uint64_t a5@<X8>)
{
  v374 = a1;
  v386 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_14_2(&v357 - v10);
  v382 = type metadata accessor for StitchableInteraction();
  v11 = OUTLINED_FUNCTION_7(v382);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v381 = &v357 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_14_2(&v357 - v17);
  v379 = type metadata accessor for Contact();
  v18 = OUTLINED_FUNCTION_0(v379);
  v368 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v357 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v27);
  v29 = OUTLINED_FUNCTION_14_2(&v357 - v28);
  matched = type metadata accessor for ContactMatchRuntimeData(v29);
  v31 = OUTLINED_FUNCTION_0(matched);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
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
  v41 = &v357 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v43 = OUTLINED_FUNCTION_7(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v46);
  v48 = OUTLINED_FUNCTION_14_2(&v357 - v47);
  v49 = type metadata accessor for ContactResolverRunTimeData(v48);
  if ((*(a3 + *(v49 + 48)) & 1) == 0)
  {
    sub_1DD390754(i, &qword_1ECCDC1B0, &unk_1DD6454F0);

    OUTLINED_FUNCTION_11_20();
LABEL_31:
    OUTLINED_FUNCTION_0_44();
    sub_1DD45D624(a3, v80);
    LOBYTE(v51) = 0;
    v63 = 0;
    i = 0;
    v81 = 0;
    v41 = 0;
    LOWORD(a3) = 512;
    goto LABEL_32;
  }

  v50 = v49;
  v367 = a2;
  v365 = v42;
  v366 = 0;
  v51 = *(v49 + 40);
  v385 = a3;
  a3 = 0xE900000000000074;
  switch(sub_1DD43D87C())
  {
    case 1u:
      a3 = 0x80000001DD669AF0;
      goto LABEL_6;
    case 2u:
      a3 = 0x80000001DD668A50;
      goto LABEL_6;
    case 3u:

      goto LABEL_12;
    default:
LABEL_6:
      a2 = sub_1DD640CD8();

      if (a2)
      {
LABEL_12:
        sub_1DD390754(i, &qword_1ECCDC1B0, &unk_1DD6454F0);

LABEL_30:
        OUTLINED_FUNCTION_11_20();
        OUTLINED_FUNCTION_13_17();
        goto LABEL_31;
      }

      v52 = type metadata accessor for StitchedContactResolverRecommendation(0);
      v53 = v385;
      v54 = v385 + *(v52 + 20);
      if (*(v54 + 24) == 255)
      {
        if (qword_1EE165FB0 == -1)
        {
LABEL_9:
          v55 = sub_1DD63F9F8();
          __swift_project_value_buffer(v55, qword_1EE16F068);
          v56 = v367;

          v57 = sub_1DD63F9D8();
          a3 = sub_1DD640378();

          if (os_log_type_enabled(v57, a3))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v388 = v59;
            *v58 = 136315138;
            v60 = OUTLINED_FUNCTION_8_16();
            a2 = sub_1DD39565C(v60, v56, v61);

            *(v58 + 4) = a2;
            _os_log_impl(&dword_1DD38D000, v57, a3, "force prompt but no found user prompt. taskId=%s", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v59);
            MEMORY[0x1E12B3DA0](v59, -1, -1);
            MEMORY[0x1E12B3DA0](v58, -1, -1);
          }

          else
          {
          }

          sub_1DD390754(i, &qword_1ECCDC1B0, &unk_1DD6454F0);
          goto LABEL_30;
        }

LABEL_203:
        OUTLINED_FUNCTION_0_5();
        goto LABEL_9;
      }

      v361 = *(v54 + 24);
      v359 = v25;
      v374 = i;
      v62 = *(v54 + 8);
      v360 = *v54;
      v363 = v62;
      v364 = *(v54 + 16);

      sub_1DD3DD9B4(v53 + v51, v384, &qword_1ECCDBEE0, &unk_1DD645510);
      LOBYTE(v51) = v53;
      v367 = sub_1DD43D87C();
      i = 0;
      a2 = *(v53 + 296);
      v63 = *(a2 + 16);
      a3 = MEMORY[0x1E69E7CC0];
      while (v63 != i)
      {
        if (i >= *(a2 + 16))
        {
          __break(1u);
LABEL_175:
          v81 = 0;
LABEL_176:
          sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
          v315 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v315, v316, v317);
          v318 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v318, v319, v320);
          OUTLINED_FUNCTION_13_17();
          if (v81)
          {

            v81 = 2;
          }

          goto LABEL_187;
        }

        v64 = v63;
        LOBYTE(v51) = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v65 = *(v33 + 72);
        OUTLINED_FUNCTION_4_24();
        sub_1DD45D5C4(v66, v41, v67);
        if (*(v41 + *(matched + 36)) == 1)
        {
          OUTLINED_FUNCTION_12_19();
          sub_1DD45D67C(v41, v383, v69);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v388 = a3;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v71 = *(a3 + 16);
            sub_1DD42B564();
            a3 = v388;
          }

          v72 = *(a3 + 16);
          v73 = v72 + 1;
          if (v72 >= *(a3 + 24) >> 1)
          {
            v362 = v72 + 1;
            v357 = v72;
            sub_1DD42B564();
            v73 = v362;
            a3 = v388;
          }

          ++i;
          *(a3 + 16) = v73;
          OUTLINED_FUNCTION_12_19();
          sub_1DD45D67C(v383, v74, v75);
          v63 = v64;
        }

        else
        {
          OUTLINED_FUNCTION_1_34();
          sub_1DD45D624(v41, v68);
          ++i;
          v63 = v64;
        }
      }

      i = *(a3 + 16);

      if (*(v385 + *(v50 + 64) + 2))
      {
        v76 = 256;
      }

      else
      {
        v76 = 0;
      }

      LODWORD(v362) = v76;
      v77 = sub_1DD556FCC();
      v78 = v376;
      sub_1DD558C3C(v77, v376);

      v79 = v379;
      if (__swift_getEnumTagSinglePayload(v78, 1, v379) == 1)
      {
        sub_1DD390754(v78, &qword_1ECCDC268, &qword_1DD64CE00);
        LOWORD(a3) = 3;
        v41 = -1;
        OUTLINED_FUNCTION_23_12(768);
        v51 = v377;
      }

      else
      {
        OUTLINED_FUNCTION_5_28();
        v82 = v371;
        sub_1DD45D67C(v78, v371, v83);
        v51 = v377;
        if (v63 == 1)
        {
          v41 = *(*(v82 + *(v79 + 80)) + 16);
          if (v41)
          {
            LOWORD(a3) = v41 != 1;
            sub_1DD45D624(v82, type metadata accessor for Contact);
            v84 = (v41 != 1) << 8;
          }

          else
          {
            OUTLINED_FUNCTION_2_24();
            sub_1DD45D624(v82, v86);
            LOWORD(a3) = 2;
            v84 = 512;
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_24();
          sub_1DD45D624(v82, v85);
          LOWORD(a3) = 3;
          v41 = -1;
          v84 = 768;
        }

        OUTLINED_FUNCTION_23_12(v84);
      }

      v87 = OUTLINED_FUNCTION_8_16();
      sub_1DD3DD9B4(v87, v51, v88, v89);
      if (__swift_getEnumTagSinglePayload(v51, 1, v382) != 1)
      {
        sub_1DD45D67C(v51, v381, type metadata accessor for StitchableInteraction);
        if (qword_1EE165FB0 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_207;
      }

      sub_1DD390754(v51, &qword_1ECCDC1B0, &unk_1DD6454F0);
      if (v361)
      {
        if (v361 == 1)
        {
          OUTLINED_FUNCTION_19_13();
          LOWORD(a3) = v90 | 4;
          OUTLINED_FUNCTION_33_7();
          if (v91)
          {
            v371 = v41;
            v92 = i;
            v51 = *(a2 + 16);
            if (!v51)
            {
LABEL_55:
              v103 = OUTLINED_FUNCTION_8_16();
              sub_1DD390754(v103, v104, v105);
              v106 = OUTLINED_FUNCTION_9_17();
              sub_1DD390754(v106, v107, v108);
LABEL_172:
              OUTLINED_FUNCTION_17_16();
              v312 = sub_1DD45D264(v51, v311);
              OUTLINED_FUNCTION_0_44();
              OUTLINED_FUNCTION_25_8(v313, v314);
              v81 = v376 | v312;
              OUTLINED_FUNCTION_11_20();
              i = v92;
LABEL_173:
              v41 = v371;
              goto LABEL_32;
            }

            v93 = 0;
            i = *(matched + 36);
            OUTLINED_FUNCTION_20_11();
            while (v93 < *(a2 + 16))
            {
              v94 = *(v33 + 72);
              OUTLINED_FUNCTION_4_24();
              v95 = v378;
              sub_1DD45D5C4(v96, v378, v97);
              if (*(v95 + i) == 1)
              {
                if (*v95 == v363 && v364 == v95[1])
                {
                  OUTLINED_FUNCTION_1_34();
                  sub_1DD45D624(v95, v300);
LABEL_171:
                  OUTLINED_FUNCTION_33_7();
                  v388 = v302;
                  v389 = v301;
                  MEMORY[0x1EEE9AC00](v303);
                  OUTLINED_FUNCTION_31_0();
                  OUTLINED_FUNCTION_34_9(v304);
                  OUTLINED_FUNCTION_26_12(v387);
                  v305 = OUTLINED_FUNCTION_8_16();
                  sub_1DD390754(v305, v306, v307);
                  v308 = OUTLINED_FUNCTION_9_17();
                  sub_1DD390754(v308, v309, v310);
                  goto LABEL_172;
                }

                v99 = sub_1DD640CD8();
                OUTLINED_FUNCTION_1_34();
                sub_1DD45D624(v101, v100);
                if (v99)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                OUTLINED_FUNCTION_1_34();
                sub_1DD45D624(v95, v102);
              }

              if (v51 == ++v93)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_202;
          }

          v183 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v183, v184, v185);
          v186 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v186, v187, v188);
          OUTLINED_FUNCTION_0_44();
          OUTLINED_FUNCTION_25_8(v189, v190);
          OUTLINED_FUNCTION_18_15();
          v81 = matched | 3;
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_33_7();
        if (!v125)
        {
          v191 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v191, v192, v193);
          v194 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v194, v195, v196);
          OUTLINED_FUNCTION_0_44();
          OUTLINED_FUNCTION_25_8(v197, v198);
          OUTLINED_FUNCTION_18_15();
          v81 = matched | 3;
          OUTLINED_FUNCTION_19_13();
          LOWORD(a3) = v199 | 3;
LABEL_122:
          OUTLINED_FUNCTION_11_20();
LABEL_194:
          OUTLINED_FUNCTION_17_16();
          goto LABEL_32;
        }

        v373 = i;
        v51 = *(a2 + 16);
        if (v51)
        {
          v126 = 0;
          v383 = *(matched + 36);
          OUTLINED_FUNCTION_20_11();
          while (v126 < *(a2 + 16))
          {
            i = v41;
            v127 = *(v33 + 72);
            OUTLINED_FUNCTION_4_24();
            v128 = v370;
            sub_1DD45D5C4(v129, v370, v130);
            v131 = v363;
            if (*(v128 + v383) == 1)
            {
              v132 = *(v370 + *(v379 + 80));
              v133 = (v132 + 80);
              v134 = v364;
              v135 = *(v132 + 16) + 1;
              while (--v135)
              {
                if (*(v133 - 1) != v131 || v134 != *v133)
                {
                  v133 += 10;
                  v137 = sub_1DD640CD8();
                  v134 = v364;
                  v131 = v363;
                  if ((v137 & 1) == 0)
                  {
                    continue;
                  }
                }

                OUTLINED_FUNCTION_1_34();
                v201 = v200;
                v51 = v202;
                v204 = sub_1DD45D624(v370, v203);
                v388 = v201;
                v389 = v51;
                MEMORY[0x1EEE9AC00](v204);
                OUTLINED_FUNCTION_31_0();
                OUTLINED_FUNCTION_34_9(v205);
                v145 = OUTLINED_FUNCTION_26_12(v387);
                v206 = OUTLINED_FUNCTION_8_16();
                sub_1DD390754(v206, v207, v208);
                v209 = OUTLINED_FUNCTION_9_17();
                sub_1DD390754(v209, v210, v211);
                v41 = i;
                goto LABEL_124;
              }
            }

            ++v126;
            OUTLINED_FUNCTION_1_34();
            sub_1DD45D624(v370, v138);
            v41 = i;
            if (v126 == v51)
            {
              goto LABEL_87;
            }
          }

          __break(1u);
          return;
        }

LABEL_87:
        v139 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v139, v140, v141);
        v142 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v142, v143, v144);
        v145 = 0;
LABEL_124:
        OUTLINED_FUNCTION_17_16();
        v213 = v376 | sub_1DD45D264(v51, v212);
        v214 = sub_1DD45D2A8(a3, v145);
        OUTLINED_FUNCTION_0_44();
        OUTLINED_FUNCTION_25_8(v215, v216);
        v217 = v214;
        v81 = v213;
        OUTLINED_FUNCTION_21_10(v217);
        OUTLINED_FUNCTION_11_20();
LABEL_199:
        OUTLINED_FUNCTION_30_9();
        goto LABEL_32;
      }

      break;
  }

  v373 = i;
  OUTLINED_FUNCTION_33_7();
  i = 0xE900000000000064;
  v51 = v124;
  switch(v124)
  {
    case 1:
      i = 0xE800000000000000;
      goto LABEL_128;
    case 3:

      goto LABEL_143;
    default:
LABEL_128:
      v233 = sub_1DD640CD8();

      if (v233)
      {
LABEL_143:
        v246 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v246, v247, v248);
        v249 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v249, v250, v251);
        OUTLINED_FUNCTION_0_44();
        OUTLINED_FUNCTION_25_8(v252, v253);
        OUTLINED_FUNCTION_18_15();
        v81 = matched | 3;
        OUTLINED_FUNCTION_19_13();
        LOWORD(a3) = v254 | 3;
        OUTLINED_FUNCTION_11_20();
        OUTLINED_FUNCTION_17_16();
        goto LABEL_199;
      }

      i = *(a2 + 16);
      if (!i)
      {
        v245 = 0;
        OUTLINED_FUNCTION_11_20();
        goto LABEL_198;
      }

      v383 = v51;
      v358 = v63;
      v234 = 0;
      v63 = *(matched + 36);
      OUTLINED_FUNCTION_20_11();
      v51 = a2 + v235;
      while (v234 < *(a2 + 16))
      {
        v236 = *(v33 + 72);
        OUTLINED_FUNCTION_4_24();
        v237 = v375;
        sub_1DD45D5C4(v238, v375, v239);
        if (*(v237 + v63) == 1)
        {
          if (*v237 == v360 && v363 == v237[1])
          {
            OUTLINED_FUNCTION_1_34();
            sub_1DD45D624(v237, v327);
LABEL_183:
            i = 0xE500000000000000;
            v245 = 1;
            a2 = v386;
            v63 = v358;
            switch(v383)
            {
              case 1:
                i = 0xE800000000000000;
                goto LABEL_196;
              case 2:
                i = 0xE900000000000064;
                goto LABEL_196;
              case 3:
LABEL_196:
                v245 = sub_1DD640CD8();
                break;
              default:
                break;
            }

            goto LABEL_198;
          }

          v241 = sub_1DD640CD8();
          OUTLINED_FUNCTION_1_34();
          sub_1DD45D624(v243, v242);
          if (v241)
          {
            goto LABEL_183;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_34();
          sub_1DD45D624(v237, v244);
        }

        if (i == ++v234)
        {
          v245 = 0;
          OUTLINED_FUNCTION_11_20();
          v63 = v358;
LABEL_198:
          v345 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v345, v346, v347);
          v348 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v348, v349, v350);
          OUTLINED_FUNCTION_17_16();
          v352 = v376 | sub_1DD45D264(v51, v351);
          v353 = sub_1DD45D2A8(a3, v245 & 1);
          OUTLINED_FUNCTION_0_44();
          OUTLINED_FUNCTION_25_8(v354, v355);
          v356 = v353;
          v81 = v352;
          OUTLINED_FUNCTION_21_10(v356);
          goto LABEL_199;
        }
      }

      break;
  }

LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  OUTLINED_FUNCTION_0_5();
LABEL_57:
  v109 = sub_1DD63F9F8();
  __swift_project_value_buffer(v109, qword_1EE16F068);
  v110 = sub_1DD63F9D8();
  v111 = sub_1DD640368();
  os_log_type_enabled(v110, v111);
  OUTLINED_FUNCTION_11_20();
  v50 = v373;
  if (v112)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1DD38D000, v110, v111, "using interaction to collect ModelEvaluation data", v51, 2u);
    MEMORY[0x1E12B3DA0](v51, -1, -1);
  }

  v378 = *(v381 + *(v382 + 9));
  v113 = OUTLINED_FUNCTION_9_17();
  v114 = v372;
  sub_1DD3DD9B4(v113, v372, v115, v116);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  a3 = v385;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_5_28();
      v165 = v359;
      v167 = sub_1DD45D67C(v114, v359, v166);
      MEMORY[0x1EEE9AC00](v167);
      OUTLINED_FUNCTION_31_0();
      *(v168 - 16) = v165;
      OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_36_7();
      if (!v389)
      {
        v225 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v225, v226, v227);
        v228 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v228, v229, v230);
        OUTLINED_FUNCTION_0_44();
        sub_1DD45D624(a3, v231);
        OUTLINED_FUNCTION_3_24();
        OUTLINED_FUNCTION_18_15();
        v81 = &v357 + 2;
        v232 = 2;
        goto LABEL_193;
      }

      OUTLINED_FUNCTION_32_8();
      if (v169)
      {
        OUTLINED_FUNCTION_35_9();
        v171 = v368;
        v170 = v369;

        if (a3)
        {
          if (v170)
          {
            if (v51 == v171 && a3 == v170)
            {

              sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
              v173 = 1;
            }

            else
            {
              a3 = OUTLINED_FUNCTION_29_7();

              sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
              if (a3)
              {
                v173 = 1;
              }

              else
              {
                v173 = 2;
              }
            }

            OUTLINED_FUNCTION_13_17();
            v337 = OUTLINED_FUNCTION_8_16();
            sub_1DD390754(v337, v338, v339);
            v340 = OUTLINED_FUNCTION_9_17();
            sub_1DD390754(v340, v341, v342);
LABEL_192:
            v165 = v359;
            OUTLINED_FUNCTION_0_44();
            sub_1DD45D624(a3, v343);
            OUTLINED_FUNCTION_3_24();
            v232 = v173;
            v81 = v376 | 1;
LABEL_193:
            OUTLINED_FUNCTION_21_10(v232);
            OUTLINED_FUNCTION_2_24();
            sub_1DD45D624(v165, v344);
            goto LABEL_194;
          }

LABEL_163:
          sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
          v283 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v283, v284, v285);
          v286 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v286, v287, v288);
          v173 = 2;
          OUTLINED_FUNCTION_13_17();
          goto LABEL_192;
        }
      }

      else
      {
        if (a3)
        {
          goto LABEL_163;
        }

        v170 = 0;
      }

      sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
      v321 = OUTLINED_FUNCTION_8_16();
      sub_1DD390754(v321, v322, v323);
      v324 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v324, v325, v326);
      OUTLINED_FUNCTION_13_17();
      if (v170)
      {

        v173 = 2;
      }

      else
      {
        v173 = 1;
      }

      goto LABEL_192;
    case 2:
      v373 = i;
      v146 = *v114;
      v147 = *(*v114 + 16);
      v358 = v63;
      v371 = v41;
      if (!v147)
      {
        v377 = MEMORY[0x1E69E7CC0];
LABEL_145:

        i = MEMORY[0x1E69E7CC0];
        goto LABEL_146;
      }

      OUTLINED_FUNCTION_27_11();
      v148 = v388;
      v149 = (*(v368 + 80) + 32) & ~*(v368 + 80);
      v383 = v146;
      a2 = v146 + v149;
      v41 = *(v368 + 72);
      v150 = v146 + v149;
      a3 = v369;
      do
      {
        v151 = v148;
        sub_1DD45D5C4(v150, a3, type metadata accessor for Contact);
        v153 = *a3;
        v152 = *(a3 + 8);

        OUTLINED_FUNCTION_2_24();
        sub_1DD45D624(a3, v154);
        v148 = v151;
        v388 = v151;
        v155 = *(v151 + 16);
        if (v155 >= *(v151 + 24) >> 1)
        {
          sub_1DD42A2D4();
          a3 = v369;
          v148 = v388;
        }

        *(v148 + 16) = v155 + 1;
        v156 = v148 + 16 * v155;
        *(v156 + 32) = v153;
        *(v156 + 40) = v152;
        v150 += v41;
        --v147;
      }

      while (v147);
      v174 = *(v383 + 16);
      if (!v174)
      {
        v377 = v148;
        OUTLINED_FUNCTION_13_17();
        goto LABEL_145;
      }

      v377 = v148;
      v63 = *(v379 + 80);
      i = MEMORY[0x1E69E7CC0];
      a3 = &type metadata for ContactHandle;
      break;
    case 3:
      v157 = OUTLINED_FUNCTION_8_16();
      sub_1DD390754(v157, v158, v159);
      v160 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v160, v161, v162);
      OUTLINED_FUNCTION_0_44();
      sub_1DD45D624(a3, v163);
      OUTLINED_FUNCTION_3_24();
      OUTLINED_FUNCTION_18_15();
      v81 = v114 | 4;
      OUTLINED_FUNCTION_19_13();
      LOWORD(a3) = v164 | 4;
      goto LABEL_194;
    default:
      OUTLINED_FUNCTION_5_28();
      v119 = sub_1DD45D67C(v114, v50, v118);
      MEMORY[0x1EEE9AC00](v119);
      OUTLINED_FUNCTION_31_0();
      *(v120 - 16) = v50;
      OUTLINED_FUNCTION_22_9();
      OUTLINED_FUNCTION_36_7();
      if (!v389)
      {
        v218 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v218, v219, v220);
        v221 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v221, v222, v223);
        OUTLINED_FUNCTION_0_44();
        sub_1DD45D624(a3, v224);
        OUTLINED_FUNCTION_3_24();
        OUTLINED_FUNCTION_23_12(v376 | 2);
        v81 = 2;
        goto LABEL_188;
      }

      OUTLINED_FUNCTION_32_8();
      if (v121)
      {
        OUTLINED_FUNCTION_35_9();
        v122 = v368;
        v81 = v369;

        if (!a3)
        {
          goto LABEL_176;
        }

        if (v81)
        {
          if (v51 == v122 && a3 == v81)
          {

            sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
            v81 = 0;
          }

          else
          {
            a3 = OUTLINED_FUNCTION_29_7();

            sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
            if (a3)
            {
              v81 = 0;
            }

            else
            {
              v81 = 2;
            }
          }

          OUTLINED_FUNCTION_13_17();
          v328 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v328, v329, v330);
          v331 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v331, v332, v333);
LABEL_187:
          OUTLINED_FUNCTION_0_44();
          sub_1DD45D624(a3, v334);
          OUTLINED_FUNCTION_3_24();
LABEL_188:
          OUTLINED_FUNCTION_19_13();
          LOWORD(a3) = v335 | v81;
          OUTLINED_FUNCTION_2_24();
          sub_1DD45D624(v50, v336);
          OUTLINED_FUNCTION_17_16();
          goto LABEL_189;
        }
      }

      else if (!a3)
      {
        goto LABEL_175;
      }

      sub_1DD390754(&v388, &qword_1ECCDCE20, &qword_1DD64BCC8);
      v277 = OUTLINED_FUNCTION_8_16();
      sub_1DD390754(v277, v278, v279);
      v280 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v280, v281, v282);
      v81 = 2;
      OUTLINED_FUNCTION_13_17();
      goto LABEL_187;
  }

  do
  {
    v175 = v380;
    sub_1DD45D5C4(a2, v380, type metadata accessor for Contact);
    v176 = *(v175 + v63);

    OUTLINED_FUNCTION_2_24();
    sub_1DD45D624(v175, v177);
    v178 = *(v176 + 16);
    v51 = *(i + 16);
    if (__OFADD__(v51, v178))
    {
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v51 + v178 > *(i + 24) >> 1)
    {
      sub_1DD3BEE1C();
      i = v179;
    }

    if (*(v176 + 16))
    {
      if ((*(i + 24) >> 1) - *(i + 16) < v178)
      {
        __break(1u);
        goto LABEL_205;
      }

      swift_arrayInitWithCopy();

      if (v178)
      {
        v180 = *(i + 16);
        v181 = __OFADD__(v180, v178);
        v182 = v180 + v178;
        if (v181)
        {
          goto LABEL_206;
        }

        *(i + 16) = v182;
      }
    }

    else
    {

      if (v178)
      {
        goto LABEL_201;
      }
    }

    a2 += v41;
    --v174;
  }

  while (v174);

  OUTLINED_FUNCTION_13_17();
LABEL_146:
  v255 = *(i + 16);
  if (v255)
  {
    OUTLINED_FUNCTION_27_11();
    v256 = v388;
    v257 = (i + 96);
    do
    {
      v258 = *(v257 - 1);
      v51 = *v257;
      v388 = v256;
      v259 = *(v256 + 16);
      a3 = *(v256 + 24);

      if (v259 >= a3 >> 1)
      {
        a3 = &v388;
        sub_1DD42A2D4();
        v256 = v388;
      }

      *(v256 + 16) = v259 + 1;
      v260 = v256 + 16 * v259;
      *(v260 + 32) = v258;
      *(v260 + 40) = v51;
      v257 += 10;
      --v255;
    }

    while (v255);
    v372 = v256;

    OUTLINED_FUNCTION_13_17();
  }

  else
  {

    v372 = MEMORY[0x1E69E7CC0];
  }

  a2 = 0;
  v379 = v378[2];
  for (i = (v378 + 7); ; i += 80)
  {
    v261 = v374;
    if (v379 == a2)
    {

      sub_1DD390754(v261, &qword_1ECCDC1B0, &unk_1DD6454F0);
      v270 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v270, v271, v272);
      OUTLINED_FUNCTION_0_44();
      sub_1DD45D624(a3, v273);
      OUTLINED_FUNCTION_3_24();
      OUTLINED_FUNCTION_18_15();
      v81 = v261 | 2;
      OUTLINED_FUNCTION_19_13();
      LOWORD(a3) = v274 | 2;
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_17_16();
      v63 = v358;
      OUTLINED_FUNCTION_30_9();
      goto LABEL_173;
    }

    v380 = a2;
    sub_1DD408C00(a2, 1, v378);
    v382 = &v357;
    v263 = *(i + 8);
    v262 = *(i + 16);
    v265 = *(i + 24);
    v264 = *(i + 32);
    v266 = *(i + 40);
    v51 = *(i + 48);
    v267 = *i;
    v375 = *(i - 8);
    a3 = *(i - 16);
    v388 = *(i - 24);
    v389 = a3;
    MEMORY[0x1EEE9AC00](v267);
    OUTLINED_FUNCTION_34_9(&v357);
    v383 = v268;

    v269 = v263;
    sub_1DD458B8C(v263, v262);

    a2 = OUTLINED_FUNCTION_26_12(&v390);
    v366 = v51;

    if (a2)
    {
      break;
    }

    a2 = v380 + 1;

    sub_1DD447638(v263, v262);
    OUTLINED_FUNCTION_13_17();
  }

  v380 = v51;
  v382 = v264;
  v379 = v265;

  OUTLINED_FUNCTION_23_12(v376 | 1);
  v275 = v383;
  if (v383)
  {
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_30_9();
    v276 = v375;
  }

  else
  {

    v276 = 0;
    v275 = 0xE000000000000000;
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_30_9();
  }

  v289 = sub_1DD447638(v269, v262);
  v388 = v276;
  v389 = v275;
  MEMORY[0x1EEE9AC00](v289);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_34_9(v290);
  LOBYTE(v51) = v366;
  v81 = sub_1DD450388();

  v291 = OUTLINED_FUNCTION_8_16();
  sub_1DD390754(v291, v292, v293);
  v294 = OUTLINED_FUNCTION_9_17();
  sub_1DD390754(v294, v295, v296);

  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_25_8(v297, v298);
  OUTLINED_FUNCTION_3_24();
  if (v81)
  {
    v299 = 1;
  }

  else
  {
    v299 = 2;
  }

  LOWORD(a3) = v299 | v362;
  OUTLINED_FUNCTION_17_16();
  v63 = v358;
  v41 = v371;
LABEL_189:
  OUTLINED_FUNCTION_18_15();
LABEL_32:
  *a2 = v51;
  *(a2 + 8) = v63;
  *(a2 + 16) = i;
  *(a2 + 24) = v81;
  *(a2 + 32) = v41;
  *(a2 + 40) = a3;
}