uint64_t sub_23318F40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a4;
  v37 = sub_23328D7CC();
  v39 = *(v37 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23328D80C();
  v36 = *(v38 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v31 - v16;
  v34 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  sub_233121D34(a1, &v31 - v16, &unk_27DDE25D0, &unk_233290330);
  v18 = sub_23328CC9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  (*(v19 + 16))(&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v18);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v19 + 80) + v22 + 16) & ~*(v19 + 80);
  v24 = swift_allocObject();
  sub_233121D9C(v17, v24 + v21, &unk_27DDE25D0, &unk_233290330);
  v25 = (v24 + v22);
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  (*(v19 + 32))(v24 + v23, &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  aBlock[4] = sub_2331BC9A0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_449;
  v27 = _Block_copy(aBlock);

  sub_23328D7DC();
  v40 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v28 = v35;
  v29 = v37;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v28, v27);
  _Block_release(v27);
  (*(v39 + 8))(v28, v29);
  (*(v36 + 8))(v12, v38);
}

uint64_t sub_23318F8A4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTSVBError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  sub_233121D34(a1, &v25 - v13, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v14, v10, type metadata accessor for TTSVBError);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v15);
    v18 = &v25 - v17;
    sub_2331BDBEC(v10, &v25 - v17, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    a2(v18);
    sub_233121E04(v18, &qword_27DDE19A8, &qword_233299A30);
    return sub_2331BDC54(v10, type metadata accessor for TTSVBError);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v20);
    v23 = &v25 - v22;
    v24 = sub_23328CC9C();
    (*(*(v24 - 8) + 16))(v23, a4, v24);
    swift_storeEnumTagMultiPayload();
    a2(v23);
    return sub_233121E04(v23, &qword_27DDE19A8, &qword_233299A30);
  }
}

uint64_t TTSVBVoiceBankingManager.importTrainingData(fromDirectory:creatingVoiceName:localeID:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v76 = a7;
  v72 = a4;
  v73 = a2;
  v12 = sub_23328D7CC();
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_23328D80C();
  v16 = *(v70 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v70);
  v19 = &v62[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_23328D6EC();
  v74 = *(v20 - 8);
  v75 = v20;
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v62[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (TTSVBIsInternalUIBuild())
  {
    v69 = a5;
    v70 = v7;
    v71 = a6;
    v24 = sub_233225314();
    (*(v74 + 16))(v23, v24, v75);
    v25 = sub_23328CC9C();
    v67 = v62;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    v28 = MEMORY[0x28223BE20](v25);
    v29 = *(v26 + 16);
    v68 = a1;
    v30 = a1;
    v32 = v31;
    v66 = v29;
    v29(&v62[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)], v30, v31, v28);

    v33 = sub_23328D6CC();
    v34 = sub_23328DE4C();

    v35 = os_log_type_enabled(v33, v34);
    v65 = a3;
    if (v35)
    {
      v36 = a3;
      v37 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v37 = 136315394;
      *(v37 + 4) = sub_23311A8F4(v73, v36, aBlock);
      *(v37 + 12) = 2080;
      v63 = v34;
      v38 = sub_23328CC6C();
      v40 = v39;
      (*(v26 + 8))(&v62[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)], v32);
      v41 = sub_23311A8F4(v38, v40, aBlock);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_233109000, v33, v63, "Will import new voice '%s' with data from: %s", v37, 0x16u);
      v42 = v64;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v42, -1, -1);
      v43 = v37;
      v44 = v73;
      MEMORY[0x23839CFD0](v43, -1, -1);

      v45 = (*(v74 + 8))(v23, v75);
    }

    else
    {

      (*(v26 + 8))(&v62[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)], v32);
      v45 = (*(v74 + 8))(v23, v75);
      v44 = v73;
    }

    v50 = MEMORY[0x28223BE20](v45);
    v66(&v62[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)], v68, v32, v50);
    v51 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v52 = (v27 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v32;
    v55 = v70;
    *(v53 + 16) = v70;
    (*(v26 + 32))(v53 + v51, &v62[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)], v54);
    v56 = (v53 + v52);
    v57 = v65;
    *v56 = v44;
    v56[1] = v57;
    v58 = (v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8));
    v59 = v69;
    *v58 = v72;
    v58[1] = v59;

    v60 = v55;

    sub_233178950(sub_2331B3C18, v53, v71, v76, &unk_284875588, sub_2331BDEF0, &block_descriptor_590);
  }

  else
  {
    v46 = *(v7 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v47 = swift_allocObject();
    v48 = v76;
    *(v47 + 16) = a6;
    *(v47 + 24) = v48;
    aBlock[4] = sub_2331B3BEC;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_121;
    v49 = _Block_copy(aBlock);

    sub_23328D7DC();
    v77 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v19, v15, v49);
    _Block_release(v49);
    (*(v71 + 8))(v15, v12);
    (*(v16 + 8))(v19, v70);
  }
}

uint64_t sub_233190280(void (*a1)(char *), uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  TTSVBError.init(_:_:_:)(0xD000000000000018, 0x80000002332A8D40, 0, 0, 0, &v12 - v9);
  swift_storeEnumTagMultiPayload();
  a1(v10);
  return sub_233121E04(v10, a3, a4);
}

void sub_233190364(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v315 = a4;
  v316 = a5;
  v355 = a1;
  v332 = a6;
  v313 = type metadata accessor for TTSVBError.Reason(0);
  v9 = *(*(v313 - 8) + 64);
  MEMORY[0x28223BE20](v313);
  v312 = &v263 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v11 = *(*(v311 - 8) + 64);
  MEMORY[0x28223BE20](v311);
  v310 = &v263 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v320 = &v263 - v15;
  v331 = sub_23328D6EC();
  v16 = *(v331 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v331);
  v308 = &v263 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v307 = &v263 - v20;
  MEMORY[0x28223BE20](v21);
  v330 = &v263 - v22;
  MEMORY[0x28223BE20](v23);
  v329 = &v263 - v24;
  v25 = sub_23328D83C();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v263 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v333 = v6;
  v31 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v30 = v31;
  v32 = v26[13];
  v325 = *MEMORY[0x277D85200];
  v324 = v26 + 13;
  v323 = v32;
  v32(v30, v28);
  v322 = v31;
  LOBYTE(v31) = sub_23328D85C();
  v33 = v26[1];
  v326 = v30;
  v328 = v25;
  v327 = v26 + 1;
  v321 = v33;
  v33(v30, v25);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v317 = a2;
  v319 = a3;
  v309 = v16;
  v34 = sub_23328CC9C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v263 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v334;
  sub_233187ABC(v355, v37);
  if (v38)
  {
    return;
  }

  v314 = v35;
  static TTSVBTrainingScript.parseScript(fromMetadatFile:)(&v263 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), &v346);
  v303 = v36;
  v39 = v346;
  v40 = v332;
  sub_23317646C(v317, v319, v315, v316, v332);
  v42 = *(v39 + 16);
  v297 = &v263;
  v298 = &v263 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = v34;
  v43 = v39;
  if (v42)
  {
    v44 = 0;
    v302 = (v314 + 16);
    v295 = (v309 + 16);
    v296 = (v314 + 8);
    v294 = (v309 + 8);
    v270 = (v314 + 48);
    v271 = (v314 + 56);
    v269 = v314 + 32;
    v266 = v303 + 7;
    v264 = MEMORY[0x277D84F90];
    v45 = 32;
    *&v41 = 134218498;
    v268 = v41;
    *&v41 = 136315138;
    v267 = v41;
    v265 = xmmword_233299210;
    v46 = v42;
    v272 = v43;
    v273 = v42;
    v263 = 32;
LABEL_7:
    v47 = v45 + 120 * v44;
    v48 = v44 + 1;
    while (v48 - 1 < v46)
    {
      v301 = v48;
      v334 = v38;
      v293 = &v263;
      v291 = v47;
      v55 = *(v43 + v47);
      v56 = *(v43 + v47 + 16);
      v57 = *(v43 + v47 + 48);
      v344[2] = *(v43 + v47 + 32);
      v344[3] = v57;
      v344[0] = v55;
      v344[1] = v56;
      v58 = *(v43 + v47 + 64);
      v59 = *(v43 + v47 + 80);
      v60 = *(v43 + v47 + 96);
      v345 = *(v43 + v47 + 112);
      v344[5] = v59;
      v344[6] = v60;
      v344[4] = v58;
      v62 = *(v43 + v47 + 32);
      v61 = *(v43 + v47 + 48);
      v64 = *(v43 + v47);
      v63 = *(v43 + v47 + 16);
      v66 = *(v43 + v47 + 80);
      v65 = *(v43 + v47 + 96);
      v67 = *(v43 + v47 + 64);
      v68 = *(v43 + v47 + 112);
      v292 = v48 - 1;
      v346 = (v48 - 1);
      v351 = v67;
      v352 = v66;
      v353 = v65;
      v354 = v68;
      v347 = v64;
      v348 = v63;
      v349 = v62;
      v350 = v61;
      MEMORY[0x28223BE20](v43);
      v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
      v343[0] = v347;
      sub_2331B4B78(v344, &v335);

      MEMORY[0x23839B7E0](1717658414, 0xE400000000000000);
      sub_23328CBEC();

      v71 = sub_233225314();
      v72 = *v295;
      v73 = v329;
      v305 = v71;
      v306 = v72;
      v74 = v331;
      v75 = (v72)(v329);
      v315 = &v263;
      v76 = MEMORY[0x28223BE20](v75);
      v77 = &v263 - v70;
      v78 = *v302;
      v316 = &v263 - v70;
      v300 = v78;
      v78(&v263 - v70, &v263 - v70, v34, v76);
      v79 = sub_23328D6CC();
      v80 = sub_23328DE4C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v335 = v82;
        *v81 = v268;
        *(v81 + 4) = v301;
        *(v81 + 12) = 2048;
        *(v81 + 14) = v273;
        *(v81 + 22) = 2080;
        sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
        v83 = sub_23328E51C();
        v85 = v84;
        v289 = *v296;
        (v289)(v77, v318);
        v86 = sub_23311A8F4(v83, v85, &v335);

        *(v81 + 24) = v86;
        _os_log_impl(&dword_233109000, v79, v80, "Will process import item %ld of %ld: %s", v81, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v82);
        v87 = v82;
        v34 = v318;
        MEMORY[0x23839CFD0](v87, -1, -1);
        v88 = v81;
        v37 = v298;
        MEMORY[0x23839CFD0](v88, -1, -1);

        v89 = *v294;
        v90 = v73;
        v91 = v331;
        (*v294)(v90, v331);
      }

      else
      {

        v289 = *v296;
        (v289)(v77, v34);
        v89 = *v294;
        (*v294)(v73, v74);
        v91 = v74;
      }

      v92 = v330;
      *&v335 = *sub_2331DEBE8();
      v93 = v335;
      v94 = v316;
      v95 = _TTSVBFileManager.fileExists(_:)();

      v304 = v89;
      if ((v95 & 1) == 0)
      {
        v183 = v91;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v264 = sub_2331B330C(0, *(v264 + 2) + 1, 1, v264);
        }

        v185 = v306;
        v184 = v307;
        v186 = v264;
        v188 = *(v264 + 2);
        v187 = *(v264 + 3);
        if (v188 >= v187 >> 1)
        {
          v186 = sub_2331B330C((v187 > 1), v188 + 1, 1, v264);
        }

        *(v186 + 2) = v188 + 1;
        v264 = v186;
        v189 = &v186[120 * v188];
        v190 = v347;
        v191 = v348;
        v192 = v350;
        *(v189 + 4) = v349;
        *(v189 + 5) = v192;
        *(v189 + 2) = v190;
        *(v189 + 3) = v191;
        v193 = v351;
        v194 = v352;
        v195 = v353;
        *(v189 + 18) = v354;
        *(v189 + 7) = v194;
        *(v189 + 8) = v195;
        *(v189 + 6) = v193;
        v196 = (v185)(v184);
        v315 = &v263;
        v197 = MEMORY[0x28223BE20](v196);
        v199 = &v263 - ((v198 + 15) & 0xFFFFFFFFFFFFFFF0);
        v300(v199, v94, v34, v197);
        v200 = sub_23328D6CC();
        v201 = sub_23328DE3C();
        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          v306 = swift_slowAlloc();
          *&v335 = v306;
          *v202 = v267;
          v203 = sub_23328CC6C();
          v205 = v204;
          v206 = v199;
          v207 = v289;
          (v289)(v206, v34);
          v208 = sub_23311A8F4(v203, v205, &v335);
          v209 = v207;

          *(v202 + 4) = v208;
          _os_log_impl(&dword_233109000, v200, v201, "Audio file missing for import item: %s", v202, 0xCu);
          v210 = v306;
          __swift_destroy_boxed_opaque_existential_0(v306);
          MEMORY[0x23839CFD0](v210, -1, -1);
          v211 = v202;
          v94 = v316;
          MEMORY[0x23839CFD0](v211, -1, -1);

          v212 = v307;
          v213 = v331;
        }

        else
        {

          v214 = v289;
          (v289)(v199, v34);
          v212 = v184;
          v213 = v183;
          v209 = v214;
        }

        (v304)(v212, v213);
        v37 = v298;
        v44 = v301;
        sub_233192194(v292, v273, v94);
        v215 = v94;
        v216 = v318;
        (v209)(v215, v318);
        v43 = v272;
        v46 = *(v272 + 16);
        v38 = v334;
        v34 = v216;
        v45 = v263;
        v40 = v332;
        if (v46 != v44)
        {
          goto LABEL_7;
        }

        goto LABEL_39;
      }

      v96 = v349;

      v97 = v334;
      static TTSVBAudioTools.analyzeRecording(atURL:detectUserSpeech:expectedText:detectMetrics:)(v94, 1, v96, *(&v96 + 1), 1, &v335);
      v334 = v97;
      if (v97)
      {

        sub_233121E04(&v346, &qword_27DDE29F0, &qword_233299AF8);

        sub_233192194(v292, v273, v94);
        v252 = v289;
        (v289)(v94, v34);
        v253 = sub_23328CE8C();
        (*(*(v253 - 8) + 8))(v332, v253);
        (v252)(v37, v34);
        return;
      }

      v98 = *(&v335 + 1);
      v299 = v335;
      v99 = v336;
      v100 = v91;
      v101 = *(&v336 + 1);
      (v306)(v92, v305, v100);
      v102 = v101;

      v103 = v98;
      v104 = sub_23328D6CC();
      v105 = sub_23328DE4C();
      v306 = v102;

      v106 = os_log_type_enabled(v104, v105);
      v315 = v103;
      v290 = v99;
      if (v106)
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&v343[0] = v108;
        *v107 = v267;
        *&v335 = v299;
        *(&v335 + 1) = v103;
        *&v336 = v99;
        *(&v336 + 1) = v101;
        v109 = TTSVBAudioTools.RecordingAnalysis.description.getter();
        v111 = sub_23311A8F4(v109, v110, v343);

        *(v107 + 4) = v111;
        v112 = v318;
        _os_log_impl(&dword_233109000, v104, v105, "Audio Analysis: %s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v108);
        v113 = v332;
        MEMORY[0x23839CFD0](v108, -1, -1);
        v114 = v107;
        v37 = v298;
        MEMORY[0x23839CFD0](v114, -1, -1);

        (v304)(v330, v331);
      }

      else
      {

        (v304)(v92, v331);
        v113 = v332;
        v112 = v318;
      }

      v115 = v306;
      if (!v101)
      {
        sub_233121E04(&v346, &qword_27DDE29F0, &qword_233299AF8);

        type metadata accessor for TTSVBError(0);
        sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
        swift_allocError();
        TTSVBError.init(_:_:_:)(0xD000000000000024, 0x80000002332A8CC0, 0, 0, 0, v256);
        swift_willThrow();

        v257 = v316;
        sub_233192194(v292, v273, v316);
        v258 = v289;
        (v289)(v257, v112);
        v259 = sub_23328CE8C();
        (*(*(v259 - 8) + 8))(v113, v259);
        (v258)(v37, v112);
        return;
      }

      v339 = v351;
      v340 = v352;
      v341 = v353;
      v342 = v354;
      v335 = v347;
      v336 = v348;
      v337 = v349;
      v338 = v350;
      v116 = v306;
      v117 = v334;
      sub_23318B8A4(v113, &v335);
      v334 = v117;
      if (v117)
      {

        sub_233121E04(&v346, &qword_27DDE29F0, &qword_233299AF8);
        v260 = v316;
        sub_233192194(v292, v273, v316);
        v261 = v289;
        (v289)(v260, v112);
        v262 = sub_23328CE8C();
        (*(*(v262 - 8) + 8))(v113, v262);
        (v261)(v37, v112);
        return;
      }

      v286 = v119;
      v287 = v118;
      sub_233121E04(&v346, &qword_27DDE29F0, &qword_233299AF8);
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      v289 = &v263;
      v285 = *(v120 - 8);
      v121 = *(v285 + 64);
      v122 = MEMORY[0x28223BE20](v120 - 8);
      v304 = v123;
      v124 = (&v263 - v123);
      v300((&v263 - v123), v316, v112, v122);
      v125 = *v271;
      v306 = v124;
      v125(v124, 0, 1, v112);
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v288 = &v263;
      v284 = *(v126 - 8);
      v127 = (*(v284 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v126 - 8);
      v128 = sub_23328CE1C();
      v129 = *(*(v128 - 8) + 56);
      v305 = &v263 - v127;
      v129(&v263 - v127, 1, 1, v128);
      v130 = MEMORY[0x277D85000];
      v131 = *((*MEMORY[0x277D85000] & *v116) + 0xA0);

      v133 = v131(v132);
      v134 = (*((*v130 & *v116) + 0x100))();
      v135 = (*((*v130 & *v116) + 0x118))();
      v136 = *((*v130 & *v116) + 0x178);
      v283 = v116;
      v137 = v136();
      v138 = v326;
      v140 = v322;
      v139 = v323;
      *v326 = v322;
      v141 = v328;
      v139(v138, v325, v328);
      v142 = v140;
      LOBYTE(v140) = sub_23328D85C();
      v321(v138, v141);
      if ((v140 & 1) == 0)
      {
        goto LABEL_50;
      }

      if (v315)
      {
        v143 = v315;
      }

      else
      {
        v143 = 0xE000000000000000;
      }

      v144 = v299;
      if (!v315)
      {
        v144 = 0;
      }

      v279 = v144;
      v280 = v143;
      v145 = sub_23328CE8C();
      v299 = &v263;
      v276 = v145;
      v146 = *(v145 - 8);
      v147 = *(v146 + 64);
      v148 = MEMORY[0x28223BE20](v145);
      v277 = &v263 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
      v149 = (*(v146 + 16))(v148);
      v282 = &v263;
      v150 = v121;
      v278 = v121;
      MEMORY[0x28223BE20](v149);
      v274 = &v263 - v304;
      v151 = sub_233121D34(v306, &v263 - v304, &qword_27DDE19A0, &unk_233290360);
      v281 = &v263;
      MEMORY[0x28223BE20](v151);
      v275 = &v263 - v127;
      sub_233121D34(v305, &v263 - v127, &qword_27DDE1A18, &unk_233297730);
      v152 = (*(v146 + 80) + 40) & ~*(v146 + 80);
      v153 = (v147 + *(v285 + 80) + v152) & ~*(v285 + 80);
      v154 = (v150 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v154 + 11) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v155 + 11) & 0xFFFFFFFFFFFFFFF8;
      v285 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
      v157 = (*(v284 + 80) + v285 + 16) & ~*(v284 + 80);
      v158 = swift_allocObject();
      v159 = v286;
      v160 = v287;
      *(v158 + 2) = v333;
      *(v158 + 3) = v160;
      *(v158 + 4) = v159;
      (*(v146 + 32))(&v158[v152], v277, v276);
      sub_233121D9C(v274, &v158[v153], &qword_27DDE19A0, &unk_233290360);
      *&v158[v154] = v290;
      v161 = &v158[v155];
      *v161 = v133;
      v161[1] = v134;
      v162 = &v158[v156];
      *v162 = v135;
      v162[1] = v137;
      v163 = &v158[v285];
      v164 = v280;
      *v163 = v279;
      v163[1] = v164;
      v165 = sub_233121D9C(v275, &v158[v157], &qword_27DDE1A18, &unk_233297730);
      v290 = &v263;
      v166 = v303;
      MEMORY[0x28223BE20](v165);
      v167 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
      v168 = &v263 - v167;
      MEMORY[0x28223BE20](v169);
      v170 = (&v263 - v304);
      sub_233121D34(v306, &v263 - v304, &qword_27DDE19A0, &unk_233290360);
      v34 = v318;
      if ((*v270)(v170, 1, v318) == 1)
      {
        v49 = v333;
        sub_233121E04(v170, &qword_27DDE19A0, &unk_233290360);
        v335 = v265;
        LOBYTE(v336) = 3;
        v50 = v312;
        swift_storeEnumTagMultiPayload();
        v51 = v310;
        TTSVBError.init(_:_:_:)(&v335, v50, 0, v310);
        swift_storeEnumTagMultiPayload();
        sub_23319249C(v51);

        v52 = v283;

        sub_233121E04(v51, &unk_27DDE25D0, &unk_233290330);
        sub_233121E04(v305, &qword_27DDE1A18, &unk_233297730);
        sub_233121E04(v306, &qword_27DDE19A0, &unk_233290360);
        v53 = v296;
      }

      else
      {
        v304 = *(v314 + 32);
        (v304)(&v263 - v167, v170, v34);
        v171 = sub_23328DCBC();
        v172 = (*(*(v171 - 8) + 56))(v320, 1, 1, v171);
        v287 = &v263;
        v173 = MEMORY[0x28223BE20](v172);
        v174 = &v263 - v167;
        v300(&v263 - v167, &v263 - v167, v34, v173);
        v175 = (*(v314 + 80) + 32) & ~*(v314 + 80);
        v176 = (v266 + v175) & 0xFFFFFFFFFFFFFFF8;
        v177 = swift_allocObject();
        *(v177 + 16) = 0;
        *(v177 + 24) = 0;
        v178 = v177 + v175;
        v34 = v318;
        (v304)(v178, v174, v318);
        v179 = (v177 + v176);
        *v179 = sub_2331BE6A0;
        v179[1] = v158;
        v180 = (v177 + ((v176 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v180 = sub_23319249C;
        v180[1] = 0;
        v181 = v333;

        sub_233193E34(0, 0, v320, &unk_233299B00, v177);

        v182 = v283;

        v53 = v296;
        (*(v314 + 8))(v168, v34);
        sub_233121E04(v305, &qword_27DDE1A18, &unk_233297730);
        sub_233121E04(v306, &qword_27DDE19A0, &unk_233290360);
      }

      v54 = v316;
      sub_233192194(v292, v273, v316);
      (*v53)(v54, v34);
      v43 = v272;
      v46 = *(v272 + 16);
      v48 = v301 + 1;
      v47 = v291 + 120;
      v38 = v334;
      v37 = v298;
      v40 = v332;
      if (v301 == v46)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_49;
  }

  v264 = MEMORY[0x277D84F90];
LABEL_39:
  v334 = v38;

  if (*(v264 + 2) && (v217 = v334, sub_23318B2C8(v40, v264), (v334 = v217) != 0))
  {

    v218 = sub_23328CE8C();
    (*(*(v218 - 8) + 8))(v40, v218);
    (*(v314 + 8))(v37, v34);
  }

  else
  {
    v219 = v40;

    v220 = sub_233225314();
    v221 = v308;
    (*(v309 + 16))(v308, v220, v331);
    v222 = sub_23328CE8C();
    v333 = &v263;
    v223 = *(v222 - 8);
    v224 = *(v223 + 64);
    v225 = MEMORY[0x28223BE20](v222);
    v227 = &v263 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
    v228 = *(v223 + 16);
    v330 = v229;
    v230 = v228(v227, v219, v225);
    v332 = &v263;
    v231 = MEMORY[0x28223BE20](v230);
    v233 = &v263 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
    v234 = v314;
    (*(v314 + 16))(v233, v355, v318, v231);
    v235 = v319;

    v236 = sub_23328D6CC();
    LODWORD(v219) = sub_23328DE4C();

    LODWORD(v355) = v219;
    v237 = v219;
    v238 = v236;
    if (os_log_type_enabled(v236, v237))
    {
      v239 = v234;
      v240 = swift_slowAlloc();
      v329 = swift_slowAlloc();
      v346 = v329;
      *v240 = 136315650;
      *(v240 + 4) = sub_23311A8F4(v317, v235, &v346);
      *(v240 + 12) = 2080;
      v241 = sub_23328CE3C();
      v243 = v242;
      (*(v223 + 8))(v227, v330);
      v244 = sub_23311A8F4(v241, v243, &v346);

      *(v240 + 14) = v244;
      *(v240 + 22) = 2080;
      v245 = sub_23328CC6C();
      v247 = v246;
      v248 = *(v239 + 8);
      v249 = v318;
      v248(v233, v318);
      v250 = sub_23311A8F4(v245, v247, &v346);

      *(v240 + 24) = v250;
      _os_log_impl(&dword_233109000, v238, v355, "Finished import of new voice '%s' (ID=%s) with data from: %s", v240, 0x20u);
      v251 = v329;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v251, -1, -1);
      MEMORY[0x23839CFD0](v240, -1, -1);

      (*(v309 + 8))(v308, v331);
      v248(v298, v249);
    }

    else
    {

      v254 = *(v234 + 8);
      v255 = v318;
      v254(v233, v318);
      (*(v223 + 8))(v227, v330);
      (*(v309 + 8))(v221, v331);
      v254(v298, v255);
    }
  }
}

uint64_t *sub_233192194(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = a2;
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_233225314();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_23328CC9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a3, v11, v14);
  v17 = sub_23328D6CC();
  v18 = sub_23328DE4C();
  if (os_log_type_enabled(v17, v18))
  {
    v27 = v5;
    v19 = swift_slowAlloc();
    result = swift_slowAlloc();
    v29 = result;
    *v19 = 134218498;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      *(v19 + 4) = a1 + 1;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v28;
      *(v19 + 22) = 2080;
      v28 = result;
      sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
      v21 = sub_23328E51C();
      v23 = v22;
      (*(v12 + 8))(v16, v11);
      v24 = sub_23311A8F4(v21, v23, &v29);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_233109000, v17, v18, "Did process import item %ld of %ld: %s", v19, 0x20u);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23839CFD0](v25, -1, -1);
      MEMORY[0x23839CFD0](v19, -1, -1);

      return (*(v6 + 8))(v9, v27);
    }
  }

  else
  {

    (*(v12 + 8))(v16, v11);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_23319249C(uint64_t a1)
{
  v28 = sub_23328D6EC();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTSVBError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  sub_233121D34(a1, &v27 - v15, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_233121E04(v16, &unk_27DDE25D0, &unk_233290330);
  }

  sub_2331BDDC4(v16, v12, type metadata accessor for TTSVBError);
  v17 = sub_233225314();
  (*(v2 + 16))(v5, v17, v28);
  sub_2331BDBEC(v12, v9, type metadata accessor for TTSVBError);
  v18 = sub_23328D6CC();
  v19 = sub_23328DE3C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v20 = 138412290;
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v21 = swift_allocError();
    sub_2331BDBEC(v9, v22, type metadata accessor for TTSVBError);
    sub_2331524CC(&v31);
    v29 = v31;
    v30 = v32;
    swift_allocError();
    static TTSVBError.map(_:_:)(v21, &v29, v23);
    sub_2331220AC(v29, *(&v29 + 1), v30);

    v24 = _swift_stdlib_bridgeErrorToNSError();
    sub_2331BDC54(v9, type metadata accessor for TTSVBError);
    *(v20 + 4) = v24;
    v25 = v27;
    *v27 = v24;
    _os_log_impl(&dword_233109000, v18, v19, "%@", v20, 0xCu);
    sub_233121E04(v25, &qword_27DDE2978, &qword_233299A50);
    MEMORY[0x23839CFD0](v25, -1, -1);
    MEMORY[0x23839CFD0](v20, -1, -1);
  }

  else
  {

    sub_2331BDC54(v9, type metadata accessor for TTSVBError);
  }

  (*(v2 + 8))(v5, v28);
  return sub_2331BDC54(v12, type metadata accessor for TTSVBError);
}

void sub_2331928FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23328D83C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x277D85200], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_23328D85C();
  (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v16 = *(v4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v16)
    {
      v21 = 1;
      v17 = v16;
      v18 = sub_2331E511C(&v21);

      MEMORY[0x28223BE20](v19);
      *(&v20 - 6) = a1;
      *(&v20 - 5) = a2;
      *(&v20 - 4) = a3;
      *(&v20 - 3) = v18;
      *(&v20 - 2) = v4;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_233192AD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for TTSVBLocalVoiceSampleMO();
  v9 = static TTSVBLocalVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v11 - 8);
    v14 = &v19 - v13;
    v15 = sub_23328CC9C();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_2331B8434(v10, v14, 0.0);
    sub_233121E04(v14, &qword_27DDE19A0, &unk_233290360);
    [v10 setUserScore:0xFFFFFFFFLL];
    LODWORD(v16) = -1.0;
    [v10 setSnr:v16];
    LODWORD(v17) = -1.0;
    [v10 setSpl:v17];
    v18 = sub_23328D95C();
    [v10 setUserPhrase:v18];

    NSManagedObjectContext.trySave()();
  }
}

uint64_t TTSVBVoiceBankingManager.updateDataForSample(_:voiceID:audioFileURLOrNil:userScore:userPhrase:recordingDate:spl:splThreshold:snr:snrThreshold:completion:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v66 = a10;
  v67 = a11;
  v62 = a1;
  v63 = a9;
  v64 = a13;
  v65 = a14;
  v23 = j___s31TextToSpeechVoiceBankingSupport25TTSVBMaximumUserEditScoreSivg();
  static TTSVBAnalytics.sampleCaptured(spl:splThreshold:snr:snrThreshold:userScore:userScoreThreshold:)(a9, v23, a3, a4, a5, a6);
  v60 = sub_23328CE8C();
  v24 = *(*(v60 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v60);
  v61 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  v52 = v26;
  (*(v26 + 16))(v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v56 = *(v28 - 8);
  v29 = *(v56 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v59 = &v51 - v30;
  sub_233121D34(a8, &v51 - v30, &qword_27DDE19A0, &unk_233290360);
  v57 = sub_23328CE1C();
  v31 = *(v57 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v57);
  v58 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33);
  v34 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v35 = (v24 + *(v56 + 80) + v34) & ~*(v56 + 80);
  v56 = (v29 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v31 + 80) + v36 + 16) & ~*(v31 + 80);
  v55 = (v32 + v37 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v53 = v37;
  v54 = (v55 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v38 = (v54 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = (v38 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v40 = swift_allocObject();
  v41 = v61;
  v42 = v62;
  *(v40 + 2) = v15;
  *(v40 + 3) = v42;
  *(v40 + 4) = a2;
  (*(v52 + 32))(&v40[v34], v41, v60);
  sub_233121D9C(v59, &v40[v35], &qword_27DDE19A0, &unk_233290360);
  v43 = v57;
  *&v40[v56] = v63;
  v44 = &v40[v36];
  v45 = v67;
  *v44 = v66;
  *(v44 + 1) = v45;
  (*(v31 + 32))(&v40[v53], v58, v43);
  v46 = v54;
  *&v40[v55] = a3;
  *&v40[v46] = a4;
  *&v40[v38] = a5;
  *&v40[v39] = a6;
  v47 = &v40[(v39 + 11) & 0xFFFFFFFFFFFFFFF8];
  v48 = v65;
  *v47 = v64;
  *(v47 + 1) = v48;
  v49 = v15;

  sub_233178950(sub_2331B3D44, v40, nullsub_1, 0, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

uint64_t sub_2331930D8(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, uint64_t a13, void (*a14)(char *), void (*a15)(char *))
{
  v78 = a8;
  v79 = a5;
  v75 = a6;
  v76 = a7;
  v71 = a4;
  v73 = a2;
  v74 = a3;
  v20 = sub_23328D83C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v70 = v27;
  v28 = &v61 - v27;
  v29 = sub_23328CE1C();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v28, a13, v29);
  (*(v30 + 56))(v28, 0, 1, v29);
  v77 = a1;
  v31 = *&a1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v24 = v31;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v32 = v31;
  LOBYTE(v31) = sub_23328D85C();
  result = (*(v21 + 8))(v24, v20);
  if (v31)
  {
    v67 = a14;
    v68 = a15;
    v34 = sub_23328CE8C();
    v69 = &v61;
    v63 = v34;
    v35 = *(*(v34 - 8) + 64);
    v36 = MEMORY[0x28223BE20](v34);
    v64 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v37;
    v61 = v37;
    (*(v37 + 16))(v36);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v71 = &v61;
    v40 = *(v39 - 8);
    v41 = v74;
    v42 = *(v40 + 64);
    MEMORY[0x28223BE20](v39 - 8);
    v62 = &v61 - v43;
    v44 = sub_233121D34(v79, &v61 - v43, &qword_27DDE19A0, &unk_233290360);
    v66 = &v61;
    MEMORY[0x28223BE20](v44);
    v70 = &v61 - v70;
    v65 = v28;
    sub_233121D34(v28, v70, &qword_27DDE1A18, &unk_233297730);
    v45 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v46 = (v35 + *(v40 + 80) + v45) & ~*(v40 + 80);
    v47 = (v42 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 11) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 11) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = (*(v72 + 80) + v50 + 16) & ~*(v72 + 80);
    v52 = swift_allocObject();
    v53 = v77;
    v54 = v73;
    *(v52 + 16) = v77;
    *(v52 + 24) = v54;
    *(v52 + 32) = v41;
    (*(v61 + 32))(v52 + v45, v64, v63);
    sub_233121D9C(v62, v52 + v46, &qword_27DDE19A0, &unk_233290360);
    v55 = v76;
    *(v52 + v47) = v75;
    v56 = (v52 + v48);
    *v56 = a9;
    v56[1] = a10;
    v57 = (v52 + v49);
    *v57 = a11;
    v57[1] = a12;
    v58 = (v52 + v50);
    v59 = v78;
    *v58 = v55;
    v58[1] = v59;
    sub_233121D9C(v70, v52 + v51, &qword_27DDE1A18, &unk_233297730);
    v60 = v53;

    sub_2331B8F28(v79, v67, v68, v52);

    return sub_233121E04(v65, &qword_27DDE1A18, &unk_233297730);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_233193638(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v1)
  {
    v5 = 1;
    v2 = v1;
    v3 = sub_2331E511C(&v5);

    MEMORY[0x28223BE20](v4);
    sub_23328DF5C();
  }

  else
  {
    __break(1u);
  }
}

void sub_233193780(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, double a7, float a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for TTSVBLocalVoiceSampleMO();
  v26 = static TTSVBLocalVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(a1, a2, a3, a4);
  if (v14)
  {
    return;
  }

  v27 = v26;
  sub_2331B8434(v26, a5, a7);
  if (a6 < -32768)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a6 >= 0x8000)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v27 setUserScore:a6];
  *&v28 = a8;
  [v27 setSpl:v28];
  *&v29 = a9;
  [v27 setSplThreshold:v29];
  *&v30 = a10;
  [v27 setSnr:v30];
  *&v31 = a11;
  [v27 setSnrThreshold:v31];
  v32 = sub_23328D95C();
  [v27 setUserPhrase:v32];

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v40 - v35;
  sub_233121D34(a14, &v40 - v35, &qword_27DDE1A18, &unk_233297730);
  v37 = sub_23328CE1C();
  v38 = *(v37 - 8);
  v39 = 0;
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    v39 = sub_23328CD9C();
    (*(v38 + 8))(v36, v37);
  }

  [v27 setRecordingDate:v39];

  NSManagedObjectContext.trySave()();
}

uint64_t sub_233193A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v8[6] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_233193AFC;

  return static TTSVBAudioTools.audioDurationForAudioFileSync(_:)(a4);
}

uint64_t sub_233193AFC(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v8 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = sub_233193D44;
  }

  else
  {
    *(v4 + 80) = a1;
    v6 = sub_233193C20;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_233193C20()
{
  v15 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 80));
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  if (v1)
  {
    sub_2331524CC(&v11);
    v13 = v11;
    v14 = v12;
    static TTSVBError.map(_:_:)(v1, &v13, v3);
    sub_2331220AC(v13, *(&v13 + 1), v14);
    swift_storeEnumTagMultiPayload();
    v6(v3);
  }

  else
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 48);
    swift_storeEnumTagMultiPayload();
    v6(v3);
  }

  sub_233121E04(*(v0 + 56), &unk_27DDE25D0, &unk_233290330);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_233193D44()
{
  v12 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_2331524CC(&v8);
  v10 = v8;
  v11 = v9;
  static TTSVBError.map(_:_:)(v1, &v10, v3);
  sub_2331220AC(v10, *(&v10 + 1), v11);
  swift_storeEnumTagMultiPayload();
  v5(v3);

  sub_233121E04(v0[7], &unk_27DDE25D0, &unk_233290330);

  v6 = v0[1];

  return v6();
}

uint64_t sub_233193E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_233121D34(a3, v27 - v11, &qword_27DDE2958, &qword_233299A38);
  v13 = sub_23328DCBC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_233121E04(v12, &qword_27DDE2958, &qword_233299A38);
  }

  else
  {
    sub_23328DCAC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23328DC7C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23328DA0C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_233121E04(a3, &qword_27DDE2958, &qword_233299A38);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_233121E04(a3, &qword_27DDE2958, &qword_233299A38);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_233194154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v21 = a5;
  v12 = sub_23328CE8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v7;
  *(v17 + 3) = a1;
  *(v17 + 4) = a2;
  (*(v13 + 32))(&v17[v16], &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v18 = v7;

  sub_233178950(v20, v17, a4, v21, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_2331942D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x277D85200], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v15 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v15)
    {
      v20 = 1;
      v16 = v15;
      v17 = sub_2331E511C(&v20);

      MEMORY[0x28223BE20](v18);
      *(&v19 - 4) = v17;
      *(&v19 - 3) = a1;
      *(&v19 - 2) = a2;
      *(&v19 - 1) = a3;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2331944A4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v30 = type metadata accessor for TTSVBError.Reason(0);
  v8 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_23328D6EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTSVBLocalVoiceMO();
  v38 = a2;
  v32 = a2;
  v33 = a3;
  if (static DSO<>.count(in:configure:)(a1, sub_2331BB9AC, v31, v16, &protocol witness table for TTSVBLocalVoiceMO) < 1)
  {
    sub_23310BA90(&v36);
    v34 = v36;
    v35 = v37;
    v24 = v29;
    v25 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a4, a1, &v34);
    sub_2331220AC(v34, *(&v34 + 1), v35);
    if (!v24)
    {
      v26 = sub_23328D95C();
      [v25 setName_];

      NSManagedObjectContext.trySave()();
    }
  }

  else
  {
    v17 = sub_233225440();
    (*(v12 + 16))(v15, v17, v11);

    v18 = sub_23328D6CC();
    v19 = sub_23328DE1C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      *&v36 = v22;
      *v21 = 136315138;
      v23 = v38;
      *(v21 + 4) = sub_23311A8F4(v38, v29, &v36);
      _os_log_impl(&dword_233109000, v18, v19, "Datastore already contains voice with name: %s. Bailing on create voice", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23839CFD0](v22, -1, -1);
      a3 = v29;
      MEMORY[0x23839CFD0](v21, -1, -1);

      (*(v12 + 8))(v15, v11);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
      v23 = v38;
    }

    v36 = xmmword_2332991C0;
    v37 = 3;
    *v10 = v23;
    v10[1] = a3;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    v28 = v27;

    TTSVBError.init(_:_:_:)(&v36, v10, 0, v28);
    swift_willThrow();
  }
}

void sub_23319486C(uint64_t a1)
{
  v3 = sub_23328D83C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D85200], v3, v6);
  v10 = v9;
  v11 = sub_23328D85C();
  (*(v4 + 8))(v8, v3);
  if (v11)
  {
    v12 = sub_23317503C();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_2331BB0E4;
    *(v13 + 24) = a1;
    aBlock[4] = sub_2331BB218;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23317E0C8;
    aBlock[3] = &block_descriptor_368;
    v14 = _Block_copy(aBlock);

    [v12 getAllTasksReplyOnQueue:v10 statusHandler:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_233194A5C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v6 = &v63 - v5;
  v7 = sub_23328D6EC();
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v63 - v12;
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v65 = v6;
    if (!i)
    {
      break;
    }

    v6 = 0;
    v18 = a1 & 0xC000000000000001;
    v78 = a1 & 0xFFFFFFFFFFFFFF8;
    v74 = (v68 + 8);
    v75 = (v68 + 16);
    *&v14 = 136315394;
    v69 = v14;
    v72 = v7;
    v73 = a1;
    v70 = v16;
    v71 = v10;
    v76 = a1 & 0xC000000000000001;
    v77 = i;
    do
    {
      if (v18)
      {
        v20 = MEMORY[0x23839BFC0](v6, a1);
      }

      else
      {
        if (v6 >= *(v78 + 16))
        {
          goto LABEL_37;
        }

        v20 = *(a1 + 8 * v6 + 32);
      }

      v21 = v20;
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v23 = sub_233225514();
      (*v75)(v16, v23, v7);
      v24 = v21;
      v25 = sub_23328D6CC();
      v26 = sub_23328DE4C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v80 = v28;
        *v27 = v69;
        v29 = [v24 taskID];
        v30 = sub_23328D98C();
        v32 = v31;

        v33 = sub_23311A8F4(v30, v32, &v80);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2080;
        v34 = TTSVBSiriTTSTrainerTaskStatusDescription([v24 status]);
        v35 = sub_23328D98C();
        v37 = v36;

        v38 = v35;
        v7 = v72;
        v39 = sub_23311A8F4(v38, v37, &v80);
        v10 = v71;

        *(v27 + 14) = v39;
        v16 = v70;
        _os_log_impl(&dword_233109000, v25, v26, "Existing task: %s - %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v28, -1, -1);
        v40 = v27;
        a1 = v73;
        MEMORY[0x23839CFD0](v40, -1, -1);
      }

      (*v74)(v16, v7);
      ++v6;
      v18 = v76;
      v19 = v77;
    }

    while (v22 != v77);
    v6 = 0;
    v80 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18)
      {
        v41 = MEMORY[0x23839BFC0](v6, a1);
      }

      else
      {
        if (v6 >= *(v78 + 16))
        {
          goto LABEL_39;
        }

        v41 = *(a1 + 8 * v6 + 32);
      }

      v42 = v41;
      v16 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v41 isUnfinishedOrPending])
      {
        sub_23328E2BC();
        v43 = *(v80 + 16);
        sub_23328E2EC();
        a1 = v73;
        sub_23328E2FC();
        sub_23328E2CC();
      }

      else
      {
      }

      ++v6;
      if (v16 == v19)
      {
        v44 = v80;
        goto LABEL_25;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_25:
  v45 = v44 < 0 || (v44 & 0x4000000000000000) != 0;
  if (v45)
  {
    if (sub_23328E19C())
    {
      goto LABEL_30;
    }
  }

  else if (*(v44 + 16))
  {
LABEL_30:
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000026, 0x80000002332A8890);
    if (v45)
    {
      v46 = sub_23328E19C();
    }

    else
    {
      v46 = *(v44 + 16);
    }

    v79 = v46;
    v47 = sub_23328E51C();
    MEMORY[0x23839B7E0](v47);

    MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332A88C0);
    v48 = v80;
    v49 = v81;
    v50 = sub_233225514();
    v51 = v68;
    (*(v68 + 16))(v10, v50, v7);

    v52 = sub_23328D6CC();
    v53 = sub_23328DE3C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v80 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_23311A8F4(v48, v49, &v80);
      _os_log_impl(&dword_233109000, v52, v53, "%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23839CFD0](v55, -1, -1);
      MEMORY[0x23839CFD0](v54, -1, -1);
    }

    (*(v51 + 8))(v10, v7);
    v56 = v65;
    TTSVBError.init(_:_:_:)(v48, v49, 0, 0, 0, v65);
    goto LABEL_45;
  }

  v57 = sub_233225514();
  v58 = v63;
  (*(v68 + 16))(v63, v57, v7);
  v59 = sub_23328D6CC();
  v60 = sub_23328DE4C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_233109000, v59, v60, "No pending training exist. Will proceed with new training request", v61, 2u);
    MEMORY[0x23839CFD0](v61, -1, -1);
  }

  (*(v68 + 8))(v58, v7);
  v56 = v65;
LABEL_45:
  swift_storeEnumTagMultiPayload();
  v67(v56);
  return sub_233121E04(v56, &unk_27DDE25D0, &unk_233290330);
}

TextToSpeechVoiceBankingSupport::TTSVBVoiceBankingManager::TrainingDataSource_optional __swiftcall TTSVBVoiceBankingManager.TrainingDataSource.init(rawValue:)(Swift::String rawValue)
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

unint64_t TTSVBVoiceBankingManager.TrainingDataSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6F63655272657375;
  }

  *v0;
  return result;
}

uint64_t sub_233195298(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x6F63655272657375;
  }

  if (v3)
  {
    v5 = 0xEE0073676E696472;
  }

  else
  {
    v5 = 0x80000002332A7F50;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6F63655272657375;
  }

  if (*a2)
  {
    v7 = 0x80000002332A7F50;
  }

  else
  {
    v7 = 0xEE0073676E696472;
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

uint64_t sub_233195350()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331953E4()
{
  *v0;
  sub_23328DA3C();
}

uint64_t sub_233195464()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331954F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_233195554(unint64_t *a1@<X8>)
{
  v2 = 0x80000002332A7F50;
  v3 = 0x6F63655272657375;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEE0073676E696472;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t TTSVBVoiceBankingManager.train(voiceID:mode:startImmediately:trainingDataSource:validateTrainingSamples:overrideMinimumPhraseCount:completion:)(uint64_t *a1, uint64_t a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v90 = a8;
  LODWORD(v84) = a7;
  v101 = a6;
  LODWORD(v83) = a5;
  LODWORD(v82) = a3;
  v12 = sub_23328D7CC();
  v95 = *(v12 - 8);
  v96 = v12;
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v12);
  v93 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_23328D80C();
  v92 = *(v94 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D6EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v85 = *(v22 - 8);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v76 - v23;
  v25 = sub_23328CE8C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v99 = v24;
  v27(v24, 1, 1, v25);
  v28 = sub_233225514();
  v78 = v18;
  v29 = *(v18 + 16);
  v79 = v17;
  v30 = v29(v21, v28, v17);
  v31 = *(v26 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v33 = *(v26 + 16);
  v89 = a1;
  v81 = v26 + 16;
  v80 = v33;
  v33(&v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v25, v32);
  v34 = sub_23328D6CC();
  v35 = v101;
  v36 = v34;
  v37 = sub_23328DE4C();
  v38 = os_log_type_enabled(v36, v37);
  v98 = a2;
  v88 = v25;
  v87 = v26;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    aBlock[0] = v77;
    *v39 = 136316418;
    v40 = sub_23328CE3C();
    v42 = v41;
    (*(v26 + 8))(&v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v43 = sub_23311A8F4(v40, v42, aBlock);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2048;
    *(v39 + 22) = 1024;
    *(v39 + 24) = v82 & 1;
    v44 = v83;
    *(v39 + 28) = 1024;
    *(v39 + 30) = v44 & 1;
    v45 = v101;
    if (v84)
    {
      v45 = -1;
    }

    *(v39 + 14) = v98;
    *(v39 + 34) = 2048;
    *(v39 + 36) = v45;
    *(v39 + 44) = 2080;
    if (v100)
    {
      v46 = 0xD000000000000011;
    }

    else
    {
      v46 = 0x6F63655272657375;
    }

    if (v100)
    {
      v47 = 0x80000002332A7F50;
    }

    else
    {
      v47 = 0xEE0073676E696472;
    }

    v48 = sub_23311A8F4(v46, v47, aBlock);

    *(v39 + 46) = v48;
    _os_log_impl(&dword_233109000, v36, v37, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v39, 0x36u);
    v49 = v77;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v49, -1, -1);
    v35 = v101;
    MEMORY[0x23839CFD0](v39, -1, -1);

    v50 = (*(v78 + 8))(v21, v79);
    a2 = v98;
  }

  else
  {

    (*(v26 + 8))(&v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
    v50 = (*(v78 + 8))(v21, v79);
  }

  v83 = a9;
  MEMORY[0x28223BE20](v50);
  v51 = v89;
  *(&v76 - 6) = v89;
  *(&v76 - 5) = a2;
  LODWORD(v79) = v52 & 1;
  *(&v76 - 32) = v52 & 1;
  LODWORD(v78) = v53 & 1;
  *(&v76 - 31) = v53 & 1;
  *(&v76 - 3) = v35;
  LODWORD(v77) = v54 & 1;
  *(&v76 - 16) = v54 & 1;
  *(&v76 - 15) = v100;
  v55 = sub_233175210();
  if (v55)
  {
    MEMORY[0x28223BE20](v55);
    *(&v76 - 2) = sub_2331B3F84;
    *(&v76 - 1) = (&v76 - 8);
    sub_23328D2BC();
  }

  v84 = &v76;
  v56 = v97;
  v82 = *&v97[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v57 = MEMORY[0x28223BE20](v55);
  v58 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v88;
  v60 = v80(v58, v51, v88, v57);
  v89 = &v76;
  v61 = v86;
  MEMORY[0x28223BE20](v60);
  sub_233121D34(v99, &v76 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27DDE19B0, &qword_233290370);
  v62 = v87;
  v63 = (*(v87 + 80) + 50) & ~*(v87 + 80);
  v64 = v63 + v31;
  v65 = (*(v85 + 80) + v64 + 1) & ~*(v85 + 80);
  v66 = swift_allocObject();
  v67 = v98;
  *(v66 + 16) = v56;
  *(v66 + 24) = v67;
  *(v66 + 32) = v79;
  *(v66 + 40) = v101;
  *(v66 + 48) = v77;
  *(v66 + 49) = v78;
  (*(v62 + 32))(v66 + v63, v58, v59);
  *(v66 + v64) = v100;
  sub_233121D9C(&v76 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0), v66 + v65, &qword_27DDE19B0, &qword_233290370);
  v68 = (v66 + ((v61 + v65 + 7) & 0xFFFFFFFFFFFFFFF8));
  v69 = v83;
  *v68 = v90;
  v68[1] = v69;
  aBlock[4] = sub_2331B3F88;
  aBlock[5] = v66;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_140;
  v70 = _Block_copy(aBlock);
  v71 = v56;

  v72 = v91;
  sub_23328D7DC();
  v102 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v73 = v93;
  v74 = v96;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v72, v73, v70);
  _Block_release(v70);
  (*(v95 + 8))(v73, v74);
  (*(v92 + 8))(v72, v94);
  sub_233121E04(v99, &qword_27DDE19B0, &qword_233290370);
}

uint64_t sub_233195FE4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332A8C00);
  v9 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0x3D65646F6D20, 0xE600000000000000);
  v10 = sub_23328E51C();
  MEMORY[0x23839B7E0](v10);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8C20);
  if (a3)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a3)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v11, v12);

  MEMORY[0x23839B7E0](0xD000000000000019, 0x80000002332A8C40);
  if (a4)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a4)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v13, v14);

  MEMORY[0x23839B7E0](0xD00000000000001CLL, 0x80000002332A8C60);
  v15 = sub_23328E51C();
  MEMORY[0x23839B7E0](v15);

  MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A8C80);
  if (a7)
  {
    v16 = 0xD000000000000011;
  }

  else
  {
    v16 = 0x6F63655272657375;
  }

  if (a7)
  {
    v17 = 0x80000002332A7F50;
  }

  else
  {
    v17 = 0xEE0073676E696472;
  }

  MEMORY[0x23839B7E0](v16, v17);

  return 0;
}

uint64_t sub_23319624C(void *a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a6;
  v37 = a8;
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v38 = a10;
  v39 = a11;
  v12 = sub_23328CE8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a7, v12, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = &v31 - v20;
  sub_233121D34(a9, &v31 - v20, &qword_27DDE19B0, &qword_233290370);
  v22 = (*(v13 + 80) + 50) & ~*(v13 + 80);
  v23 = v22 + v14;
  v24 = (*(v18 + 80) + v23 + 1) & ~*(v18 + 80);
  v25 = swift_allocObject();
  v26 = v31;
  *(v25 + 16) = v32;
  *(v25 + 24) = v26;
  *(v25 + 32) = v33;
  *(v25 + 40) = v34;
  *(v25 + 48) = v35 & 1;
  *(v25 + 49) = v36;
  (*(v13 + 32))(v25 + v22, v16, v12);
  *(v25 + v23) = v37 & 1;
  sub_233121D9C(v21, v25 + v24, &qword_27DDE19B0, &qword_233290370);
  v27 = (v25 + ((v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  v29 = v26;

  sub_23319486C(v25);
}

unsigned __int8 *sub_2331964C8(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t *a5, int a6, int a7, void (*a8)(char *, char *, uint64_t), unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v495 = a8;
  LODWORD(v497) = a7;
  LODWORD(v496) = a6;
  v493 = a5;
  v491 = a4;
  v509 = a12;
  v510 = a3;
  v508 = a11;
  v14 = sub_23328D7CC();
  v506 = *(v14 - 8);
  v507 = v14;
  v15 = v506[8];
  MEMORY[0x28223BE20](v14);
  v504 = v453 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = sub_23328D80C();
  v503 = *(v505 - 1);
  v17 = *(v503 + 64);
  MEMORY[0x28223BE20](v505);
  v502 = v453 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = type metadata accessor for TTSVBError.Reason(0);
  v19 = *(*(v464 - 8) + 64);
  MEMORY[0x28223BE20](v464);
  v465 = (v453 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v484 = type metadata accessor for TTSVBPath();
  v21 = *(*(v484 - 1) + 8);
  MEMORY[0x28223BE20](v484);
  v485 = v453 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v498 = type metadata accessor for TTSVBVoiceModel();
  v494 = *(v498 - 8);
  v23 = *(v494 + 64);
  MEMORY[0x28223BE20](v498);
  v469 = v453 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v467 = v453 - v26;
  MEMORY[0x28223BE20](v27);
  v470 = v453 - v28;
  MEMORY[0x28223BE20](v29);
  v473 = v453 - v30;
  MEMORY[0x28223BE20](v31);
  v463 = (v453 - v32);
  MEMORY[0x28223BE20](v33);
  v483 = v453 - v34;
  MEMORY[0x28223BE20](v35);
  v481 = (v453 - v36);
  MEMORY[0x28223BE20](v37);
  v492 = v453 - v38;
  v468 = v39;
  MEMORY[0x28223BE20](v40);
  v486 = v453 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v489 = v453 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v488 = v453 - v46;
  MEMORY[0x28223BE20](v47);
  v478 = (v453 - v48);
  MEMORY[0x28223BE20](v49);
  v499 = v453 - v50;
  v500 = sub_23328D6EC();
  v501 = *(v500 - 8);
  v51 = *(v501 + 64);
  MEMORY[0x28223BE20](v500);
  v466 = v453 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v471 = v453 - v54;
  MEMORY[0x28223BE20](v55);
  v472 = v453 - v56;
  MEMORY[0x28223BE20](v57);
  v474 = v453 - v58;
  MEMORY[0x28223BE20](v59);
  v475 = v453 - v60;
  MEMORY[0x28223BE20](v61);
  v479 = v453 - v62;
  MEMORY[0x28223BE20](v63);
  v482 = v453 - v64;
  MEMORY[0x28223BE20](v65);
  v490 = v453 - v66;
  MEMORY[0x28223BE20](v67);
  *&v487 = v453 - v68;
  MEMORY[0x28223BE20](v69);
  v71 = v453 - v70;
  MEMORY[0x28223BE20](v72);
  v477 = (v453 - v73);
  MEMORY[0x28223BE20](v74);
  v480 = (v453 - v75);
  MEMORY[0x28223BE20](v76);
  v476 = (v453 - v77);
  MEMORY[0x28223BE20](v78);
  v80 = v453 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = v453 - v83;
  v85 = type metadata accessor for TTSVBError(0);
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v88 = v453 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233121D34(a1, v84, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v84, v88, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v89 = swift_allocError();
    sub_2331BDBEC(v88, v90, type metadata accessor for TTSVBError);
    swift_willThrow();
    sub_2331BDC54(v88, type metadata accessor for TTSVBError);
LABEL_4:
    v91 = *&v510[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue];
    v92 = swift_allocObject();
    v93 = v509;
    v92[2] = v508;
    v92[3] = v93;
    v92[4] = v89;
    v518 = sub_2331BE6E0;
    v519 = v92;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v516 = sub_2331221F8;
    v517 = &block_descriptor_374;
    v94 = _Block_copy(&aBlock);

    v95 = v89;
    v96 = v502;
    sub_23328D7DC();
    v512 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v97 = v504;
    v98 = v507;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v96, v97, v94);
    _Block_release(v94);

    (v506[1])(v97, v98);
    (*(v503 + 8))(v96, v505);
  }

  v462 = v85;
  sub_233121E04(v84, &unk_27DDE25D0, &unk_233290330);
  TTSVBRequireDiskSpaceAvailableForTraining(inMode:)(a2);
  v99 = v510;
  v461 = TTSVBVoiceBankingManager.audioService.getter();
  result = sub_2331C4568();
  v101 = *&v99[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v101)
  {
    __break(1u);
    goto LABEL_116;
  }

  v459 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore;
  *&v457 = *result;
  v456 = result[1];
  v102 = *(result + 1);
  LOBYTE(aBlock) = 1;
  *(&v457 + 1) = v102;
  v103 = v102;
  v104 = v101;
  v105 = sub_2331E511C(&aBlock);

  v106 = v500;
  if (a2 == 2)
  {
    v107 = sub_233225514();
    (*(v501 + 16))(v80, v107, v106);
    v108 = sub_23328D6CC();
    v109 = sub_23328DE4C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_233109000, v108, v109, "requested training mode is PV2. Will force training to start immediately", v110, 2u);
      v111 = v110;
      v106 = v500;
      MEMORY[0x23839CFD0](v111, -1, -1);
    }

    (*(v501 + 8))(v80, v106);
    v491 = 1;
  }

  if (v496)
  {
    LOBYTE(aBlock) = a2 == 2;
    v493 = TTSVBMinimumUserPhraseCount(forExperience:)(&aBlock);
  }

  LODWORD(aBlock) = 0;
  sub_2331BB220();
  sub_23328E6FC();
  if (v497)
  {
    LOBYTE(aBlock) = a9 & 1;
    v112 = TTSVBVoiceBankingManager.recordedPhraseCount(forVoice:validDataOnly:trainingDataSource:)(v495, 1, &aBlock);
    v454 = a9;
    v497 = v103;
    v165 = v493;
    if (v112 >= v493)
    {
      v192 = sub_233225514();
      v193 = v501;
      v194 = v480;
      v496 = *(v501 + 16);
      v496(v480, v192, v106);
      v195 = sub_23328D6CC();
      v196 = sub_23328DE4C();
      v197 = os_log_type_enabled(v195, v196);
      v455 = a2;
      if (v197)
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        *&aBlock = v199;
        *v198 = 136315394;
        if (v454)
        {
          v200 = 0xD000000000000011;
        }

        else
        {
          v200 = 0x6F63655272657375;
        }

        if (v454)
        {
          v201 = 0x80000002332A7F50;
        }

        else
        {
          v201 = 0xEE0073676E696472;
        }

        v202 = v105;
        v203 = sub_23311A8F4(v200, v201, &aBlock);

        *(v198 + 4) = v203;
        v105 = v202;
        *(v198 + 12) = 2048;
        *(v198 + 14) = v165;
        _os_log_impl(&dword_233109000, v195, v196, "validateTrainingSamples=true, trainingDataSource=%s and validPhraseCount is greater than minimum required=%ld", v198, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v199);
        v204 = v199;
        v106 = v500;
        MEMORY[0x23839CFD0](v204, -1, -1);
        MEMORY[0x23839CFD0](v198, -1, -1);

        v205 = *(v193 + 8);
        v205(v480, v106);
      }

      else
      {

        v205 = *(v193 + 8);
        v205(v194, v106);
      }

      v124 = v499;
    }

    else
    {
      v166 = v105;
      v167 = v112;
      LOBYTE(aBlock) = a9 & 1;
      v168 = TTSVBVoiceBankingManager.recordedPhraseCount(forVoice:validDataOnly:trainingDataSource:)(v495, 0, &aBlock);
      v254 = v168;
      v255 = v493;
      if (v168 < v493)
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_23328E24C();
        MEMORY[0x23839B7E0](0xD00000000000004BLL, 0x80000002332A8980);
        v512 = v254;
        v256 = sub_23328E51C();
        MEMORY[0x23839B7E0](v256);

        MEMORY[0x23839B7E0](0xD00000000000001FLL, 0x80000002332A89D0);
        v512 = v255;
        v257 = sub_23328E51C();
        MEMORY[0x23839B7E0](v257);

        MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332A89F0);
        if (v454)
        {
          v258 = 0xD000000000000011;
        }

        else
        {
          v258 = 0x6F63655272657375;
        }

        if (v454)
        {
          v259 = 0x80000002332A7F50;
        }

        else
        {
          v259 = 0xEE0073676E696472;
        }

        MEMORY[0x23839B7E0](v258, v259);

        v260 = aBlock;
        sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
        v89 = swift_allocError();
        TTSVBError.init(_:_:_:)(v260, *(&v260 + 1), 0, 0, 0, v261);
        swift_willThrow();

        goto LABEL_4;
      }

      v269 = sub_233225514();
      v270 = v501;
      v271 = v476;
      v496 = *(v501 + 16);
      v496(v476, v269, v106);
      v272 = sub_23328D6CC();
      v273 = sub_23328DE4C();
      v274 = os_log_type_enabled(v272, v273);
      v455 = a2;
      if (v274)
      {
        v275 = v270;
        v276 = swift_slowAlloc();
        v277 = swift_slowAlloc();
        *&aBlock = v277;
        *v276 = 134218754;
        *(v276 + 4) = v167;
        *(v276 + 12) = 2048;
        *(v276 + 14) = v493;
        *(v276 + 22) = 2048;
        *(v276 + 24) = v254;
        *(v276 + 32) = 2080;
        if (v454)
        {
          v278 = 0xD000000000000011;
        }

        else
        {
          v278 = 0x6F63655272657375;
        }

        if (v454)
        {
          v279 = 0x80000002332A7F50;
        }

        else
        {
          v279 = 0xEE0073676E696472;
        }

        v280 = sub_23311A8F4(v278, v279, &aBlock);

        *(v276 + 34) = v280;
        _os_log_impl(&dword_233109000, v272, v273, "validPhraseCount=%ld is less than the ideal minimum=%ld, will continue to train with unfilteredPhraseCount=%ld. trainingDataSource=%s", v276, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v277);
        v281 = v277;
        v106 = v500;
        MEMORY[0x23839CFD0](v281, -1, -1);
        MEMORY[0x23839CFD0](v276, -1, -1);

        v282 = v275;
      }

      else
      {

        v282 = v270;
      }

      v205 = *(v282 + 8);
      v205(v271, v106);
      v299 = sub_233167A18();
      sub_23319A328(&aBlock, *v299);
      v124 = v499;
      v105 = v166;
    }

    v251 = v495;
    TTSVBVoiceBankingManager.durationOfRecordingData(forVoice:validDataOnly:)(v495, 0);
    v253 = v252;
    TTSVBVoiceBankingManager.durationOfRecordingData(forVoice:validDataOnly:)(v251, 1);
    v458 = 0;
    v284 = v283;
    v285 = sub_233225514();
    v286 = v477;
    v496(v477, v285, v106);
    v287 = sub_23328D6CC();
    v288 = sub_23328DE4C();
    v289 = os_log_type_enabled(v287, v288);
    v460 = v105;
    v476 = v205;
    if (v289)
    {
      v290 = v205;
      v291 = swift_slowAlloc();
      v292 = v106;
      v293 = swift_slowAlloc();
      *&aBlock = v293;
      *v291 = 134218498;
      *(v291 + 4) = v253;
      *(v291 + 12) = 2048;
      *(v291 + 14) = v284;
      *(v291 + 22) = 2080;
      if (v454)
      {
        v294 = 0xD000000000000011;
      }

      else
      {
        v294 = 0x6F63655272657375;
      }

      if (v454)
      {
        v295 = 0x80000002332A7F50;
      }

      else
      {
        v295 = 0xEE0073676E696472;
      }

      v296 = sub_23311A8F4(v294, v295, &aBlock);

      *(v291 + 24) = v296;
      _os_log_impl(&dword_233109000, v287, v288, "Unfiltered training duration=%f | Valid recording duration=%f trainingDataSource=%s", v291, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v293);
      MEMORY[0x23839CFD0](v293, -1, -1);
      MEMORY[0x23839CFD0](v291, -1, -1);

      v290(v477, v292);
    }

    else
    {

      v205(v286, v106);
    }
  }

  else
  {
    v497 = v103;
    v113 = sub_233225514();
    v114 = v501;
    v496 = *(v501 + 16);
    v496(v71, v113, v106);
    v115 = sub_23328D6CC();
    v116 = sub_23328DE4C();
    v117 = os_log_type_enabled(v115, v116);
    v460 = v105;
    v455 = a2;
    v454 = a9;
    v458 = 0;
    if (v117)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *&aBlock = v119;
      *v118 = 136315138;
      if (a9)
      {
        v120 = 0xD000000000000011;
      }

      else
      {
        v120 = 0x6F63655272657375;
      }

      if (a9)
      {
        v121 = 0x80000002332A7F50;
      }

      else
      {
        v121 = 0xEE0073676E696472;
      }

      v122 = sub_23311A8F4(v120, v121, &aBlock);

      *(v118 + 4) = v122;
      _os_log_impl(&dword_233109000, v115, v116, "validateTrainingSamples=false. Will train with all available data. trainingDataSource=%s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v119);
      MEMORY[0x23839CFD0](v119, -1, -1);
      MEMORY[0x23839CFD0](v118, -1, -1);

      v123 = *(v114 + 8);
      v123(v71, v500);
    }

    else
    {

      v123 = *(v114 + 8);
      v123(v71, v106);
    }

    v124 = v499;
    v476 = v123;
    v125 = sub_233167A00();
    sub_23319A328(&aBlock, *v125);
  }

  v126 = *(v494 + 56);
  v453[1] = v494 + 56;
  v453[0] = v126;
  v126(v124, 1, 1, v498);
  v127 = sub_23328CE8C();
  v477 = v453;
  v128 = *(v127 - 8);
  v129 = *(v128 + 8);
  MEMORY[0x28223BE20](v127);
  v130 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v131 = v453 - v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v133 = (*(*(v132 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v132 - 8);
  v135 = v453 - v134;
  sub_233121D34(a10, v453 - v134, &qword_27DDE19B0, &qword_233290370);
  v480 = v128;
  if ((*(v128 + 6))(v135, 1, v127) == 1)
  {
    v136 = v127;
    result = sub_233121E04(v135, &qword_27DDE19B0, &qword_233290370);
    v137 = *&v510[v459];
    if (v137)
    {
      v138 = v514;
      LOBYTE(aBlock) = 1;
      v139 = v137;
      v140 = sub_2331E511C(&aBlock);

      MEMORY[0x28223BE20](v141);
      v453[-6] = v495;
      v453[-5] = v140;
      v453[-4] = 1;
      LOBYTE(v453[-3]) = 0;
      v451 = v455;
      LODWORD(v452) = v138;
      v142 = v486;
      v143 = v498;
      v144 = v458;
      sub_23328DF5C();
      v89 = v144;
      v145 = v499;
      v146 = v460;
      if (v144)
      {
        sub_233121E04(v499, &qword_27DDE2388, &qword_233297728);

        goto LABEL_4;
      }

      sub_233121E04(v499, &qword_27DDE2388, &qword_233297728);

      v179 = v478;
      sub_2331BDDC4(v142, v478, type metadata accessor for TTSVBVoiceModel);
      (v453[0])(v179, 0, 1, v143);
      sub_233121D9C(v179, v145, &qword_27DDE2388, &qword_233297728);
      v150 = v500;
      v173 = v490;
      v170 = v489;
      v169 = v145;
      v172 = v143;
      goto LABEL_38;
    }

LABEL_116:
    __break(1u);
    return result;
  }

  v147 = v480;
  v480[4](v453 - v130, v135, v127);
  v148 = sub_233225514();
  v149 = v487;
  v150 = v500;
  v151 = (v496)(v487, v148, v500);
  v152 = MEMORY[0x28223BE20](v151);
  v153 = v453 - v130;
  v154 = v147;
  v155 = v149;
  (v154[2])(v453 - v130, v453 - v130, v127, v152);
  v156 = sub_23328D6CC();
  v157 = sub_23328DE4C();
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v486 = v131;
    v160 = v159;
    *&aBlock = v159;
    *v158 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v161 = sub_23328E51C();
    v163 = v162;
    v495 = v480[1];
    (v495)(v153, v127);
    v164 = sub_23311A8F4(v161, v163, &aBlock);
    v150 = v500;

    *(v158 + 4) = v164;
    _os_log_impl(&dword_233109000, v156, v157, "Existing model ID was specified. Attempting to re-use model. %s", v158, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v160);
    v131 = v486;
    MEMORY[0x23839CFD0](v160, -1, -1);
    MEMORY[0x23839CFD0](v158, -1, -1);
  }

  else
  {

    v495 = v480[1];
    (v495)(v153, v127);
  }

  (v476)(v155, v150);
  v169 = v499;
  v136 = v127;
  v170 = v489;
  type metadata accessor for TTSVBLocalVoiceModelMO();
  v146 = v460;
  v171 = static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(v131, v460);
  v172 = v498;
  v173 = v490;
  if (v171)
  {
    v174 = v171;
    v175 = v498;
    v176 = v169;
    v177 = v488;
    (*((*MEMORY[0x277D85000] & *v171) + 0x58))(0);

    v178 = v177;
    v169 = v176;
    v172 = v175;
    (v495)(v131, v136);
    sub_233121E04(v169, &qword_27DDE2388, &qword_233297728);
  }

  else
  {
    (v495)(v131, v136);
    sub_233121E04(v169, &qword_27DDE2388, &qword_233297728);
    v178 = v488;
    (v453[0])(v488, 1, 1, v172);
  }

  sub_233121D9C(v178, v169, &qword_27DDE2388, &qword_233297728);
  v89 = v458;
LABEL_38:
  sub_233121D34(v169, v170, &qword_27DDE2388, &qword_233297728);
  if ((*(v494 + 48))(v170, 1, v172) == 1)
  {
    sub_233121E04(v169, &qword_27DDE2388, &qword_233297728);

    return sub_233121E04(v170, &qword_27DDE2388, &qword_233297728);
  }

  else
  {
    v486 = v136;
    v180 = v492;
    sub_2331BDDC4(v170, v492, type metadata accessor for TTSVBVoiceModel);
    v489 = sub_233225514();
    v488 = (v501 + 16);
    (v496)(v173);
    v181 = v481;
    sub_2331BDBEC(v180, v481, type metadata accessor for TTSVBVoiceModel);
    v182 = sub_23328D6CC();
    v183 = sub_23328DE4C();
    v184 = os_log_type_enabled(v182, v183);
    v460 = v146;
    if (v184)
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&aBlock = v186;
      *v185 = 136315138;
      v187 = *v181;
      v188 = v181[1];

      sub_2331BDC54(v181, type metadata accessor for TTSVBVoiceModel);
      v189 = sub_23311A8F4(v187, v188, &aBlock);
      v172 = v498;

      *(v185 + 4) = v189;
      _os_log_impl(&dword_233109000, v182, v183, "Training new model for '%s'", v185, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v186);
      v190 = v186;
      v150 = v500;
      MEMORY[0x23839CFD0](v190, -1, -1);
      MEMORY[0x23839CFD0](v185, -1, -1);

      v191 = v490;
    }

    else
    {

      sub_2331BDC54(v181, type metadata accessor for TTSVBVoiceModel);
      v191 = v173;
    }

    v206 = v476;
    (v476)(v191, v150);
    v207 = v482;
    v496(v482, v489, v150);
    v208 = v483;
    sub_2331BDBEC(v492, v483, type metadata accessor for TTSVBVoiceModel);
    v209 = sub_23328D6CC();
    v210 = sub_23328DE4C();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = v206;
      v212 = v207;
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      *&aBlock = v214;
      *v213 = 136315138;
      v215 = v208 + *(v172 + 24);
      v216 = sub_23328CE3C();
      v218 = v217;
      sub_2331BDC54(v208, type metadata accessor for TTSVBVoiceModel);
      v219 = sub_23311A8F4(v216, v218, &aBlock);

      *(v213 + 4) = v219;
      _os_log_impl(&dword_233109000, v209, v210, "Created model instance %s", v213, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v214);
      v220 = v214;
      v150 = v500;
      MEMORY[0x23839CFD0](v220, -1, -1);
      MEMORY[0x23839CFD0](v213, -1, -1);

      v211(v212, v150);
    }

    else
    {

      sub_2331BDC54(v208, type metadata accessor for TTSVBVoiceModel);
      v206(v207, v150);
    }

    v221 = sub_23328CC9C();
    v490 = v453;
    v495 = v221;
    v222 = *(v221 - 1);
    v223 = *(v222 + 64);
    MEMORY[0x28223BE20](v221);
    v224 = (v223 + 15) & 0xFFFFFFFFFFFFFFF0;
    v225 = (v453 - v224);
    v226 = v492;
    v227 = v485;
    sub_2331BDBEC(v492, v485, type metadata accessor for TTSVBVoiceModel);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v453 - v224);
    sub_2331BDC54(v227, type metadata accessor for TTSVBPath);
    v228 = sub_2331DEBE8();
    v512 = *v228;
    v487 = xmmword_233299220;
    aBlock = xmmword_233299220;
    LOBYTE(v516) = 3;
    v229 = v512;
    _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v453 - v224, 0, 1, &aBlock);
    if (v89)
    {

      (*(v222 + 8))(v453 - v224, v495);
      sub_233121E04(v499, &qword_27DDE2388, &qword_233297728);
      sub_2331BDC54(v226, type metadata accessor for TTSVBVoiceModel);
      goto LABEL_4;
    }

    v484 = v228;

    v230 = v222;
    v231 = v479;
    v232 = (v496)(v479, v489, v150);
    v482 = v453;
    v485 = v223;
    v233 = MEMORY[0x28223BE20](v232);
    v234 = v453 - v224;
    v235 = *(v230 + 16);
    v236 = v495;
    v480 = (v230 + 16);
    v478 = v235;
    (v235)(v234, v225, v495, v233);
    v237 = sub_23328D6CC();
    v238 = sub_23328DE4C();
    v239 = os_log_type_enabled(v237, v238);
    v483 = v230;
    if (v239)
    {
      v240 = swift_slowAlloc();
      v481 = v225;
      v241 = v240;
      v242 = swift_slowAlloc();
      *&aBlock = v242;
      *v241 = 136315138;
      v243 = sub_23328CC6C();
      v245 = v244;
      v246 = *(v230 + 8);
      v246(v234, v236);
      v247 = sub_23311A8F4(v243, v245, &aBlock);

      *(v241 + 4) = v247;
      _os_log_impl(&dword_233109000, v237, v238, "Using staging directory: %s", v241, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v242);
      MEMORY[0x23839CFD0](v242, -1, -1);
      v248 = v241;
      v225 = v481;
      MEMORY[0x23839CFD0](v248, -1, -1);

      v249 = v479;
      v250 = v500;
    }

    else
    {

      v246 = *(v230 + 8);
      v246(v234, v236);
      v249 = v231;
      v250 = v150;
    }

    v262 = (v476)(v249, v250);
    v263 = v485;
    MEMORY[0x28223BE20](v262);
    v264 = (v263 + 15) & 0xFFFFFFFFFFFFFFF0;
    v265 = v484;
    v512 = *v484;
    aBlock = 0uLL;
    LOBYTE(v516) = -1;
    v266 = v512;
    _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v225, 7103853, 0xE300000000000000, 0, &aBlock, v453 - v264);

    v482 = (v483 + 8);
    v267 = (v246)(v453 - v264, v495);
    MEMORY[0x28223BE20](v267);
    v512 = *v265;
    aBlock = 0uLL;
    LOBYTE(v516) = -1;
    v268 = v512;
    _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)(v225, 0x5F65636E656C6973, 0xEF64656D6D697274, 0, &aBlock, v453 - v264);

    v297 = (v246)(v453 - v264, v495);
    v479 = v453;
    MEMORY[0x28223BE20](v297);
    TTSVBVoiceModel.url.getter(v453 - v264);
    v512 = *v265;
    aBlock = v487;
    LOBYTE(v516) = 3;
    v298 = v512;
    _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v453 - v264, 0, 1, &aBlock);
    *&v487 = v246;
    v481 = v225;

    v300 = v475;
    v301 = v500;
    v302 = (v496)(v475, v489);
    v477 = v453;
    v303 = MEMORY[0x28223BE20](v302);
    v304 = v453 - v264;
    v484 = (v453 - v264);
    (v478)(v453 - v264, v453 - v264, v495, v303);
    v305 = sub_23328D6CC();
    v306 = sub_23328DE4C();
    if (os_log_type_enabled(v305, v306))
    {
      v307 = swift_slowAlloc();
      v308 = swift_slowAlloc();
      *&aBlock = v308;
      *v307 = 136315138;
      v309 = sub_23328CC6C();
      v311 = v310;
      (v487)(v304, v495);
      v312 = sub_23311A8F4(v309, v311, &aBlock);
      v313 = v492;

      *(v307 + 4) = v312;
      _os_log_impl(&dword_233109000, v305, v306, "Using voice directory: %s", v307, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v308);
      MEMORY[0x23839CFD0](v308, -1, -1);
      MEMORY[0x23839CFD0](v307, -1, -1);

      v314 = v301;
      (v476)(v475, v301);
      v315 = v455;
    }

    else
    {

      (v487)(v453 - v264, v495);
      v316 = v300;
      v314 = v301;
      (v476)(v316, v301);
      v315 = v455;
      v313 = v492;
    }

    v317 = v474;
    v496(v474, v489, v314);
    v318 = sub_23328D6CC();
    v319 = sub_23328DE4C();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      *v320 = 0;
      _os_log_impl(&dword_233109000, v318, v319, "Will write out training data", v320, 2u);
      MEMORY[0x23839CFD0](v320, -1, -1);
    }

    v455 = v315;

    v321 = v501 + 8;
    v322 = v500;
    (v476)(v317, v500);
    v323 = *(v498 + 20);
    LODWORD(v512) = v514;
    v324 = v457 | (v456 << 8);
    v325 = *(&v457 + 1);
    aBlock = v457 | (v456 << 8);
    LOBYTE(v511) = v454 & 1;
    v326 = v497;
    v327 = sub_2331B695C((v313 + v323), v481, &v512, &aBlock, v460, &v511, v493);
    v501 = v321;
    v497 = v326;
    v328 = v492;
    sub_2331BB2A0(v324, v325);
    v329 = v472;
    v496(v472, v489, v322);
    v330 = sub_23328D6CC();
    v331 = sub_23328DE4C();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      *v332 = 134217984;
      *(v332 + 4) = v327;
      _os_log_impl(&dword_233109000, v330, v331, "Did write out training data. samplesWritten=%ld", v332, 0xCu);
      MEMORY[0x23839CFD0](v332, -1, -1);
    }

    v333 = (v476)(v329, v500);
    MEMORY[0x28223BE20](v333);
    v451 = v328;
    v452 = v327;
    v334 = v510;
    v335 = sub_233175210();
    v336 = v487;
    v337 = v455;
    if (v335)
    {
      v338 = v455;
      MEMORY[0x28223BE20](v335);
      v451 = sub_2331BB2B0;
      v452 = &v453[-4];
      sub_23328D2BC();

      v337 = v338;
    }

    v339 = TTSVBMinimumRequiredPhraseCount(forTrainingMode:)(v337);
    v340 = v485;
    if (v327 < v339)
    {
      v341 = v339;
      MEMORY[0x28223BE20](v339);
      v453[-4] = v328;
      v453[-3] = v327;
      v451 = v342;
      v343 = *&v334[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger];
      if (v343)
      {
        MEMORY[0x28223BE20](v342);
        v451 = sub_2331BB540;
        v452 = v344;

        sub_23328D2CC();
        sub_2331B9710(v343);
      }

      aBlock = xmmword_233298590;
      LOBYTE(v516) = 3;
      v512 = 0;
      v513 = 0xE000000000000000;
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000047, 0x80000002332A8910);
      v511 = v327;
      v345 = sub_23328E51C();
      MEMORY[0x23839B7E0](v345);

      MEMORY[0x23839B7E0](0xD000000000000019, 0x80000002332A8960);
      v511 = v341;
      v346 = sub_23328E51C();
      MEMORY[0x23839B7E0](v346);

      v347 = v513;
      v348 = v465;
      *v465 = v512;
      *(v348 + 8) = v347;
      swift_storeEnumTagMultiPayload();
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      v89 = swift_allocError();
      TTSVBError.init(_:_:_:)(&aBlock, v348, 0, v349);
      swift_willThrow();

      v350 = v495;
      v336(v484, v495);
      v336(v481, v350);
      sub_233121E04(v499, &qword_27DDE2388, &qword_233297728);
      sub_2331BDC54(v328, type metadata accessor for TTSVBVoiceModel);
      goto LABEL_4;
    }

    v351 = v471;
    v496(v471, v489, v500);
    v352 = v463;
    sub_2331BDBEC(v328, v463, type metadata accessor for TTSVBVoiceModel);
    sub_2331BDBEC(v328, v473, type metadata accessor for TTSVBVoiceModel);
    v353 = v470;
    v354 = sub_2331BDBEC(v328, v470, type metadata accessor for TTSVBVoiceModel);
    v507 = v453;
    v355 = MEMORY[0x28223BE20](v354);
    v356 = v453 - ((v340 + 15) & 0xFFFFFFFFFFFFFFF0);
    v357 = v495;
    v358 = v478;
    v359 = (v478)(v356, v481, v495, v355);
    v506 = v453;
    v360 = MEMORY[0x28223BE20](v359);
    v358(v356, v484, v357, v360);
    v361 = sub_23328D6CC();
    LODWORD(v505) = sub_23328DE4C();
    if (os_log_type_enabled(v361, v505))
    {
      v362 = swift_slowAlloc();
      v504 = swift_slowAlloc();
      *&aBlock = v504;
      *v362 = 136316162;
      v363 = *v352;
      v364 = v352[1];
      v365 = v473;

      sub_2331BDC54(v352, type metadata accessor for TTSVBVoiceModel);
      v366 = sub_23311A8F4(v363, v364, &aBlock);

      *(v362 + 4) = v366;
      *(v362 + 12) = 2080;
      v367 = v498;
      v368 = v365 + *(v498 + 24);
      v369 = sub_23328CE3C();
      v371 = v370;
      sub_2331BDC54(v365, type metadata accessor for TTSVBVoiceModel);
      v372 = sub_23311A8F4(v369, v371, &aBlock);

      *(v362 + 14) = v372;
      *(v362 + 22) = 2080;
      v373 = *(v367 + 56);
      v340 = v485;
      v374 = v470;
      v375 = (v470 + v373);
      v376 = *v375;
      v377 = v375[1];

      sub_2331BDC54(v374, type metadata accessor for TTSVBVoiceModel);
      v378 = sub_23311A8F4(v376, v377, &aBlock);

      *(v362 + 24) = v378;
      *(v362 + 32) = 2080;
      v379 = sub_23328CC6C();
      v381 = v380;
      v382 = v487;
      (v487)(v356, v357);
      v383 = sub_23311A8F4(v379, v381, &aBlock);

      *(v362 + 34) = v383;
      *(v362 + 42) = 2080;
      v384 = sub_23328CC6C();
      v386 = v385;
      v382(v356, v357);
      v387 = sub_23311A8F4(v384, v386, &aBlock);

      *(v362 + 44) = v387;
      _os_log_impl(&dword_233109000, v361, v505, "Initializing Siri training task:\n - Name: '%s'\n - taskID: %s\n - Locale: %s\n - Data Path: %s\n - Output Path: %s", v362, 0x34u);
      v388 = v504;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v388, -1, -1);
      MEMORY[0x23839CFD0](v362, -1, -1);

      v389 = v471;
    }

    else
    {

      v390 = v487;
      (v487)(v356, v357);
      v390(v356, v357);
      sub_2331BDC54(v353, type metadata accessor for TTSVBVoiceModel);
      sub_2331BDC54(v473, type metadata accessor for TTSVBVoiceModel);
      sub_2331BDC54(v352, type metadata accessor for TTSVBVoiceModel);
      v389 = v351;
    }

    (v476)(v389, v500);
    v391 = v498;
    v392 = v492;
    v393 = v492 + *(v498 + 24);
    v502 = sub_23328CE3C();
    v394 = (v392 + *(v391 + 56));
    v396 = *v394;
    v395 = v394[1];
    v507 = v396;
    v503 = v395;
    v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v506 = v453;
    v398 = (*(*(v397 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v399 = MEMORY[0x28223BE20](v397 - 8);
    v401 = v453 - v400;
    v402 = v483;
    v403 = (*(v483 + 56))(v453 - v400, 1, 1, v357, v399);
    v505 = v453;
    v404 = MEMORY[0x28223BE20](v403);
    v405 = v453 - ((v340 + 15) & 0xFFFFFFFFFFFFFFF0);
    v406 = v478;
    v407 = (v478)(v405, v481, v357, v404);
    v504 = v453;
    v408 = MEMORY[0x28223BE20](v407);
    v406(v405, v484, v357, v408);
    v409 = sub_23328D95C();

    v410 = sub_23328D95C();
    if ((*(v402 + 48))(v401, 1, v357) == 1)
    {
      v411 = 0;
    }

    else
    {
      v411 = sub_23328CBCC();
      (v487)(v401, v495);
    }

    v412 = objc_allocWithZone(TTSVBSiriTTSTrainerTask);
    v413 = sub_23328CBCC();
    v414 = sub_23328CBCC();
    LOBYTE(v451) = v491 & 1;
    v507 = [v412 initWithTaskID:v409 localeID:v410 trainingAssetURL:v411 dataAssetURL:v413 inferenceAssetURL:v414 trainingMode:v455 startImmediately:v451];

    v415 = v495;
    v416 = v487;
    (v487)(v405, v495);
    v416(v405, v415);
    v417 = v466;
    v418 = v500;
    v496(v466, v489, v500);
    v419 = v492;
    v420 = v467;
    sub_2331BDBEC(v492, v467, type metadata accessor for TTSVBVoiceModel);
    v421 = sub_23328D6CC();
    v422 = sub_23328DE4C();
    if (os_log_type_enabled(v421, v422))
    {
      v423 = v417;
      v424 = swift_slowAlloc();
      v425 = swift_slowAlloc();
      *&aBlock = v425;
      *v424 = 136315138;
      v426 = *(v498 + 24);
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
      v427 = sub_23328E51C();
      v428 = v420;
      v430 = v429;
      sub_2331BDC54(v428, type metadata accessor for TTSVBVoiceModel);
      v431 = sub_23311A8F4(v427, v430, &aBlock);

      *(v424 + 4) = v431;
      _os_log_impl(&dword_233109000, v421, v422, "Will call startTraining() on session with taskID: %s", v424, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v425);
      MEMORY[0x23839CFD0](v425, -1, -1);
      MEMORY[0x23839CFD0](v424, -1, -1);

      v432 = v423;
    }

    else
    {

      sub_2331BDC54(v420, type metadata accessor for TTSVBVoiceModel);
      v432 = v417;
    }

    v433 = (v476)(v432, v418);
    MEMORY[0x28223BE20](v433);
    v451 = v419;
    v435 = *&v510[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger];
    v436 = v497;
    if (v435)
    {
      MEMORY[0x28223BE20](v434);
      v451 = sub_2331BB3CC;
      v452 = v437;

      sub_23328D2BC();
      sub_2331B9710(v435);
    }

    v438 = v510;
    v439 = sub_23317503C();
    v440 = v469;
    sub_2331BDBEC(v419, v469, type metadata accessor for TTSVBVoiceModel);
    v441 = (*(v494 + 80) + 16) & ~*(v494 + 80);
    v442 = (v468 + v441 + 7) & 0xFFFFFFFFFFFFFFF8;
    v443 = swift_allocObject();
    sub_2331BDDC4(v440, v443 + v441, type metadata accessor for TTSVBVoiceModel);
    *(v443 + v442) = v438;
    v444 = (v443 + ((v442 + 15) & 0xFFFFFFFFFFFFFFF8));
    v445 = v509;
    *v444 = v508;
    v444[1] = v445;
    v518 = sub_2331BB494;
    v519 = v443;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v516 = sub_23319B314;
    v517 = &block_descriptor_383;
    v446 = _Block_copy(&aBlock);
    v447 = v438;

    v448 = v507;
    [v439 startTraining:v507 replyOnQueue:0 trainingStartedHandler:v446];

    _Block_release(v446);
    v449 = v495;
    v450 = v487;
    (v487)(v484, v495);
    v450(v481, v449);
    sub_233121E04(v499, &qword_27DDE2388, &qword_233297728);
    return sub_2331BDC54(v419, type metadata accessor for TTSVBVoiceModel);
  }
}

BOOL sub_23319A328(_DWORD *a1, int a2)
{
  v7 = *v2;
  sub_233156AF4();
  sub_23328E0FC();
  sub_233168AA8();
  v4 = sub_23328D90C();
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v5 = a2;
    sub_23328E11C();
  }

  *a1 = v5;
  return (v4 & 1) == 0;
}

uint64_t sub_23319A41C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  result = sub_233175210();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v9 = a1;
    v10 = a2;
    a4(a3);
  }

  return result;
}

uint64_t sub_23319A4B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = a4;
  v98 = a5;
  v96 = a3;
  v105 = a2;
  v6 = sub_23328D7CC();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  MEMORY[0x28223BE20](v6);
  v100 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D80C();
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v9);
  v99 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTSVBError.Reason(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TTSVBError(0);
  v94 = *(v92 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v89 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v89 - v21;
  v93 = type metadata accessor for TTSVBVoiceModel();
  v23 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v89 - v27;
  v29 = sub_23328D6EC();
  v106 = *(v29 - 8);
  v107 = v29;
  v30 = *(v106 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  if (a1)
  {
    aBlock = xmmword_233298590;
    LOBYTE(v110) = 3;
    swift_storeEnumTagMultiPayload();
    v36 = a1;
    v37 = sub_23328CA6C();
    TTSVBError.init(_:_:_:)(&aBlock, v15, v37, v22);
    v38 = sub_233225514();
    (*(v106 + 16))(v32, v38, v107);
    v39 = v105;
    sub_2331BDBEC(v105, v25, type metadata accessor for TTSVBVoiceModel);
    v90 = v22;
    sub_2331BDBEC(v22, v19, type metadata accessor for TTSVBError);
    v40 = sub_23328D6CC();
    v41 = sub_23328DE3C();
    v42 = os_log_type_enabled(v40, v41);
    v91 = a1;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&aBlock = v44;
      *v43 = 136315394;
      v45 = *(v93 + 24);
      sub_23328CE8C();
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
      v46 = sub_23328E51C();
      v48 = v47;
      sub_2331BDC54(v25, type metadata accessor for TTSVBVoiceModel);
      v49 = sub_23311A8F4(v46, v48, &aBlock);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2112;
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      sub_2331BDBEC(v19, v50, type metadata accessor for TTSVBError);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      sub_2331BDC54(v19, type metadata accessor for TTSVBError);
      *(v43 + 14) = v51;
      v52 = v89;
      *v89 = v51;
      _os_log_impl(&dword_233109000, v40, v41, "Error occurred requesting training task: %s. %@", v43, 0x16u);
      sub_233121E04(v52, &qword_27DDE2978, &qword_233299A50);
      MEMORY[0x23839CFD0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23839CFD0](v44, -1, -1);
      v53 = v43;
      v39 = v105;
      MEMORY[0x23839CFD0](v53, -1, -1);
    }

    else
    {

      sub_2331BDC54(v19, type metadata accessor for TTSVBError);
      sub_2331BDC54(v25, type metadata accessor for TTSVBVoiceModel);
    }

    v65 = (*(v106 + 8))(v32, v107);
    MEMORY[0x28223BE20](v65);
    v66 = v90;
    *(&v89 - 2) = v39;
    *(&v89 - 1) = v66;
    v67 = v96;
    v68 = sub_233175210();
    if (v68)
    {
      MEMORY[0x28223BE20](v68);
      *(&v89 - 2) = sub_2331BB778;
      *(&v89 - 1) = &v89 - 4;
      sub_23328D2CC();
    }

    v69 = *(v67 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v70 = v95;
    sub_2331BDBEC(v66, v95, type metadata accessor for TTSVBError);
    v71 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v72 = swift_allocObject();
    v73 = v98;
    *(v72 + 16) = v97;
    *(v72 + 24) = v73;
    sub_2331BDDC4(v70, v72 + v71, type metadata accessor for TTSVBError);
    v112 = sub_2331BB8B0;
    v113 = v72;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v110 = sub_2331221F8;
    v111 = &block_descriptor_398;
    v74 = _Block_copy(&aBlock);

    v75 = v99;
    sub_23328D7DC();
    v108 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v76 = v100;
    v77 = v104;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v75, v76, v74);

    _Block_release(v74);
    (*(v103 + 8))(v76, v77);
    (*(v101 + 8))(v75, v102);

    return sub_2331BDC54(v66, type metadata accessor for TTSVBError);
  }

  else
  {
    v54 = sub_233225514();
    (*(v106 + 16))(v35, v54, v107);
    v55 = v105;
    sub_2331BDBEC(v105, v28, type metadata accessor for TTSVBVoiceModel);
    v56 = sub_23328D6CC();
    v57 = sub_23328DE4C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v58 = 136315138;
      v60 = *(v93 + 24);
      sub_23328CE8C();
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
      v61 = sub_23328E51C();
      v63 = v62;
      sub_2331BDC54(v28, type metadata accessor for TTSVBVoiceModel);
      v64 = sub_23311A8F4(v61, v63, &aBlock);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_233109000, v56, v57, "Successfully requested training task: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x23839CFD0](v59, -1, -1);
      MEMORY[0x23839CFD0](v58, -1, -1);
    }

    else
    {

      sub_2331BDC54(v28, type metadata accessor for TTSVBVoiceModel);
    }

    v79 = (*(v106 + 8))(v35, v107);
    MEMORY[0x28223BE20](v79);
    *(&v89 - 2) = v55;
    v80 = v96;
    v81 = sub_233175210();
    if (v81)
    {
      MEMORY[0x28223BE20](v81);
      *(&v89 - 2) = sub_2331BB6B4;
      *(&v89 - 1) = &v89 - 4;
      sub_23328D2BC();
    }

    v82 = *(v80 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v83 = swift_allocObject();
    v84 = v98;
    *(v83 + 16) = v97;
    *(v83 + 24) = v84;
    v112 = sub_2331BE578;
    v113 = v83;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v110 = sub_2331221F8;
    v111 = &block_descriptor_391;
    v85 = _Block_copy(&aBlock);

    v86 = v99;
    sub_23328D7DC();
    v108 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v87 = v100;
    v88 = v104;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v86, v87, v85);
    _Block_release(v85);
    (*(v103 + 8))(v87, v88);
    (*(v101 + 8))(v86, v102);
  }
}

uint64_t sub_23319B228(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_2331BDBEC(a3, &v10 - v7, type metadata accessor for TTSVBError);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_233121E04(v8, &unk_27DDE25D0, &unk_233290330);
}

void sub_23319B314(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t TTSVBVoiceBankingManager.discardTrainingTasks(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_2331B3FB4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_146;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_23328D7DC();
  v20 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_23319B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D6EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_233225514();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_23328D6CC();
  v13 = sub_23328DE4C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_233109000, v12, v13, "Will request discard of training tasks", v14, 2u);
    MEMORY[0x23839CFD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  if (sub_233175210())
  {
    sub_23328D2BC();
  }

  v15 = sub_23317503C();
  v16 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_2331BE6D4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331889C4;
  aBlock[3] = &block_descriptor_358;
  v18 = _Block_copy(aBlock);

  [v15 discardTrainingTasksReplyOnQueue:v16 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_23319B900(void *a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  if (a1)
  {
    v8 = a1;
    sub_2331524CC(&v12);
    v10 = v12;
    v11 = v13;
    static TTSVBError.map(_:_:)(a1, &v10, v7);
    sub_2331220AC(v10, *(&v10 + 1), v11);
    swift_storeEnumTagMultiPayload();
    a2(v7);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    a2(v7);
  }

  return sub_233121E04(v7, &unk_27DDE25D0, &unk_233290330);
}

uint64_t TTSVBVoiceBankingManager.cancelTrainingTask(taskID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
  v22[1] = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v4;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_2331B3FC0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_152;
  v19 = _Block_copy(aBlock);

  v20 = v4;

  sub_23328D7DC();
  v24 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void sub_23319BD28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_233225514();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_23328D6CC();
  v16 = sub_23328DE4C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_23311A8F4(a1, a2, aBlock);
    _os_log_impl(&dword_233109000, v15, v16, "Will request cancelation of training task: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23839CFD0](v19, -1, -1);
    v20 = v18;
    a5 = v28;
    MEMORY[0x23839CFD0](v20, -1, -1);
  }

  v21 = (*(v10 + 8))(v13, v9);
  MEMORY[0x28223BE20](v21);
  *(&v28 - 2) = a1;
  *(&v28 - 1) = a2;
  v22 = sub_233175210();
  if (v22)
  {
    MEMORY[0x28223BE20](v22);
    *(&v28 - 2) = sub_2331BB068;
    *(&v28 - 1) = (&v28 - 4);
    sub_23328D2BC();
  }

  v23 = sub_23317503C();
  v24 = sub_23328D95C();
  v25 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  *(v26 + 24) = a5;
  aBlock[4] = sub_2331BE6D4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331889C4;
  aBlock[3] = &block_descriptor_352;
  v27 = _Block_copy(aBlock);

  [v23 cancelTaskWithID:v24 replyOnQueue:v25 completionHandler:v27];
  _Block_release(v27);
}

uint64_t TTSVBVoiceBankingManager.startV1ToV2VoiceMigrationIfNeeded()()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2818, &qword_233299258) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for TTSVBVoice();
  v1[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_23328D6EC();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23319C1CC, 0, 0);
}

uint64_t sub_23319C1CC()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  IsVoicebankingd = TTSVBProcessIsVoicebankingd();
  if (IsVoicebankingd)
  {
    v12 = v0[3];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = v12;
    sub_233178950(sub_2331B3FE0, v13, sub_2331B3FD8, v2, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);

    v15 = swift_task_alloc();
    v0[12] = v15;
    *(v15 + 16) = v14;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    v0[13] = v17;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2820, &qword_233299260);
    *v17 = v0;
    v17[1] = sub_23319C390;
    v9 = sub_2331B400C;
    IsVoicebankingd = (v0 + 2);
    v8 = 0x80000002332A7FD0;
    v5 = 0;
    v6 = 0;
    v7 = 0xD000000000000019;
    v10 = v15;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](IsVoicebankingd, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_23319C390()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_23319C4AC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_23319C554;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23319C4AC()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23319C554()
{
  v1 = v0[14];
  v2 = v0[2];

  sub_2331B4940(v3);
  v5 = v4;

  v6 = *(v5 + 16);
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = v0[11];
      v8 = v0[7];
      v9 = v0[8];

      v10 = sub_233225314();
      (*(v9 + 16))(v7, v10, v8);
      v11 = sub_23328D6CC();
      v12 = sub_23328DE4C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_233109000, v11, v12, "No eligible V1->V2 voices found to migrate", v13, 2u);
        MEMORY[0x23839CFD0](v13, -1, -1);
      }

      v14 = v0[11];
      v15 = v0[7];
      v16 = v0[8];
      v17 = v0[3];

      (*(v16 + 8))(v14, v15);
      if (sub_233175210())
      {
        sub_23328D2BC();
      }

      v19 = v0[10];
      v18 = v0[11];
      v20 = v0[9];
      v21 = v0[6];
      v22 = v0[4];

      v23 = v0[1];

      return v23();
    }

    v25 = v0[10];
    v26 = v0[7];
    v27 = v0[8];
    v28 = sub_233225314();
    (*(v27 + 16))(v25, v28, v26);

    v29 = sub_23328D6CC();
    v30 = sub_23328DE4C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = *(v5 + 16);

      _os_log_impl(&dword_233109000, v29, v30, "Multiple (%ld) eligible V1->V2 voices found to migrate. Selecting one at random to migrate first", v31, 0xCu);
      MEMORY[0x23839CFD0](v31, -1, -1);
    }

    else
    {
    }

    v32 = v0[3];
    (*(v0[8] + 8))(v0[10], v0[7]);
    v33 = swift_task_alloc();
    *(v33 + 16) = v5;
    if (sub_233175210())
    {
      v34 = swift_task_alloc();
      *(v34 + 16) = sub_2331B4AA4;
      *(v34 + 24) = v33;
      sub_23328D2BC();
    }
  }

  v35 = v0[4];
  sub_2331887E4(v5, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2828, &qword_233299268);
  v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
  if (v37 == 1)
  {
    __break(1u);
  }

  else
  {
    v46 = v0[5];
    v45 = v0[6];
    v48 = v0[3];
    v47 = v0[4];

    v49 = *(v47 + *(v36 + 48));

    sub_2331BDDC4(v47, v45, type metadata accessor for TTSVBVoice);
    v50 = v45 + *(v46 + 20);
    v51 = sub_233167D94();
    v53 = *v51;
    v52 = v51[1];
    v0[15] = v52;

    v54 = sub_233167B90();
    v56 = *v54;
    v55 = v54[1];
    v0[16] = v55;

    v57 = swift_task_alloc();
    v0[17] = v57;
    v57[2] = v48;
    v57[3] = v50;
    v57[4] = v53;
    v57[5] = v52;
    v57[6] = v56;
    v57[7] = v55;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v37 = swift_task_alloc();
    v0[18] = v37;
    *v37 = v0;
    v37[1] = sub_23319CA44;
    v42 = sub_2331B4AA0;
    v41 = 0x80000002332A7FF0;
    v44 = MEMORY[0x277D84F78] + 8;
    v38 = 0;
    v39 = 0;
    v40 = 0xD00000000000004BLL;
    v43 = v57;
  }

  return MEMORY[0x2822008A0](v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_23319CA44()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_23319CD24;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_23319CB60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23319CB60()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = sub_233225314();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_23328D6CC();
  v8 = sub_23328DE4C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_233109000, v7, v8, "Did perform V1->V2 voice migration task", v9, 2u);
    MEMORY[0x23839CFD0](v9, -1, -1);
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  v13 = v0[3];

  (*(v11 + 8))(v10, v12);
  if (sub_233175210())
  {
    sub_23328D2BC();
  }

  sub_2331BDC54(v0[6], type metadata accessor for TTSVBVoice);
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[9];
  v17 = v0[6];
  v18 = v0[4];

  v19 = v0[1];

  return v19();
}

uint64_t sub_23319CD24()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[6];

  sub_2331BDC54(v4, type metadata accessor for TTSVBVoice);
  v5 = v0[19];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[6];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_23319CE00(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v37 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = sub_23328D6EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  sub_233121D34(a1, &v36 - v18, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v19, v7, type metadata accessor for TTSVBError);
    v20 = sub_233225314();
    (*(v9 + 16))(v12, v20, v8);
    sub_2331BDBEC(v7, v38, type metadata accessor for TTSVBError);
    v21 = sub_23328D6CC();
    v22 = sub_23328DE4C();
    v23 = v7;
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      v26 = v38;
      sub_2331BDBEC(v38, v27, type metadata accessor for TTSVBError);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      sub_2331BDC54(v26, type metadata accessor for TTSVBError);
      *(v24 + 4) = v28;
      *v25 = v28;
      _os_log_impl(&dword_233109000, v21, v22, "[V1->V2 migration]: Failed to update cloud audio files %@.", v24, 0xCu);
      sub_233121E04(v25, &qword_27DDE2978, &qword_233299A50);
      MEMORY[0x23839CFD0](v25, -1, -1);
      MEMORY[0x23839CFD0](v24, -1, -1);
    }

    else
    {

      sub_2331BDC54(v38, type metadata accessor for TTSVBError);
    }

    v34 = (*(v9 + 8))(v12, v8);
    MEMORY[0x28223BE20](v34);
    *(&v36 - 2) = v23;
    v35 = sub_233175210();
    if (v35)
    {
      MEMORY[0x28223BE20](v35);
      *(&v36 - 2) = sub_2331BAF84;
      *(&v36 - 1) = (&v36 - 4);
      sub_23328D2BC();
    }

    return sub_2331BDC54(v23, type metadata accessor for TTSVBError);
  }

  else
  {
    v29 = sub_233225314();
    (*(v9 + 16))(v15, v29, v8);
    v30 = sub_23328D6CC();
    v31 = sub_23328DE4C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_233109000, v30, v31, "[V1->V2 migration]: Did update missing cloud audio files if neccesary.", v32, 2u);
      MEMORY[0x23839CFD0](v32, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    result = sub_233175210();
    if (result)
    {
      sub_23328D2BC();
    }
  }

  return result;
}

uint64_t sub_23319D394()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2820, &qword_233299260);
  *v4 = v0;
  v4[1] = sub_23319D49C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x80000002332A7FD0, sub_2331BE6D8, v2, v5);
}

uint64_t sub_23319D49C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_23319D5D4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_23319D5B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23319D5D4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t TTSVBVoiceBankingManager.createSupplementaryModelForVoiceAsync(voiceID:sourceVersion:targetVersion:)(uint64_t a1, void *a2, void *a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v5 = a2[1];
  v4[4] = *a2;
  v4[5] = v5;
  v6 = a3[1];
  v4[6] = *a3;
  v4[7] = v6;
  return MEMORY[0x2822009F8](sub_23319D668, 0, 0);
}

uint64_t sub_23319D668()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = vextq_s8(*(v0 + 16), *(v0 + 16), 8uLL);
  *(v3 + 32) = v8;
  *(v3 + 48) = v2;
  *(v3 + 56) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_23319D77C;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000004BLL, 0x80000002332A7FF0, sub_2331BE67C, v3, v6);
}

uint64_t sub_23319D77C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23319D8B0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_23319D898;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23319D8B0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_23319D914(uint64_t a1, char *a2)
{
  v4 = sub_23328D7CC();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D80C();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29A8, &qword_233299AC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v23 - v16;
  v23[1] = *&a2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  (*(v13 + 16))(v23 - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v13 + 32))(v19 + v18, v17, v12);
  aBlock[4] = sub_2331BAC10;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_326;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  sub_23328D7DC();
  v27 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v7, v20);
  _Block_release(v20);
  (*(v26 + 8))(v7, v4);
  (*(v24 + 8))(v11, v25);
}

void sub_23319DCBC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v1)
  {
    LOBYTE(v5) = 1;
    v2 = v1;
    v3 = sub_2331E511C(&v5);

    MEMORY[0x28223BE20](v4);
    sub_23328DF5C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23319DDB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v52 = type metadata accessor for TTSVBVoice();
  v59 = *(v52 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v52);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for TTSVBLocalVoiceMO();
  v13 = sub_2331F88A8(v12, &protocol witness table for TTSVBLocalVoiceMO);
  v53 = a1;
  v56 = v12;
  v15 = static DSO<>.fetch(in:config:)(a1, v13, v14, v12, &protocol witness table for TTSVBLocalVoiceMO);

  if (v15 >> 62)
  {
    v16 = sub_23328E19C();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      *&v57 = MEMORY[0x277D84F90];
      sub_2331229AC(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        goto LABEL_35;
      }

      v51 = v2;
      v17 = 0;
      v18 = v57;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x23839BFC0](v17, v15);
        }

        else
        {
          v19 = *(v15 + 8 * v17 + 32);
        }

        v20 = v19;
        TTSVBCommonVoiceMO.immutableVoice()(v56, &protocol witness table for TTSVBLocalVoiceMO, v11);

        *&v57 = v18;
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2331229AC(v21 > 1, v22 + 1, 1);
          v18 = v57;
        }

        ++v17;
        *(v18 + 16) = v22 + 1;
        sub_2331BDDC4(v11, v18 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v22, type metadata accessor for TTSVBVoice);
      }

      while (v16 != v17);

      v3 = v51;
      goto LABEL_14;
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_14:
  v23 = sub_2331B9374(MEMORY[0x277D84F90]);
  v24 = v54;
  v51 = *(v18 + 16);
  if (!v51)
  {
LABEL_30:

    *&v57 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29A8, &qword_233299AC0);
    return sub_23328DC9C();
  }

  v25 = 0;
  while (v25 < *(v18 + 16))
  {
    v28 = *(v59 + 72);
    v29 = v55;
    sub_2331BDBEC(v18 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + v28 * v25, v55, type metadata accessor for TTSVBVoice);
    sub_2331BDBEC(v29, v24, type metadata accessor for TTSVBVoice);
    v30 = *(v52 + 20);
    v57 = 0uLL;
    v58 = 3;
    v31 = static TTSVBLocalVoiceMO.modelVersions(forVoiceWithID:moc:problemForThrownError:)(v29 + v30, v53, &v57);
    if (v3)
    {

      sub_2331BDC54(v24, type metadata accessor for TTSVBVoice);
      sub_2331BDC54(v55, type metadata accessor for TTSVBVoice);
    }

    v32 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v24;
    v35 = isUniquelyReferenced_nonNull_native;
    *&v57 = v23;
    v36 = sub_2331B4340(v34);
    v38 = v23[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_33;
    }

    v42 = v37;
    if (v23[3] >= v41)
    {
      if ((v35 & 1) == 0)
      {
        v48 = v36;
        sub_2331B55F8();
        v36 = v48;
      }

      v24 = v54;
      v23 = v57;
      if (v42)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_2331B458C(v41, v35);
      v24 = v54;
      v36 = sub_2331B4340(v54);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_36;
      }

      v23 = v57;
      if (v42)
      {
LABEL_16:
        v26 = v23[7];
        v27 = *(v26 + 8 * v36);
        *(v26 + 8 * v36) = v32;

        sub_2331BDC54(v24, type metadata accessor for TTSVBVoice);
        sub_2331BDC54(v55, type metadata accessor for TTSVBVoice);
        goto LABEL_17;
      }
    }

    v23[(v36 >> 6) + 8] |= 1 << v36;
    v44 = v23[6] + v36 * v28;
    v45 = v36;
    sub_2331BDBEC(v24, v44, type metadata accessor for TTSVBVoice);
    *(v23[7] + 8 * v45) = v32;
    sub_2331BDC54(v24, type metadata accessor for TTSVBVoice);
    sub_2331BDC54(v55, type metadata accessor for TTSVBVoice);
    v46 = v23[2];
    v40 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v40)
    {
      goto LABEL_34;
    }

    v23[2] = v47;
LABEL_17:
    ++v25;
    v3 = 0;
    if (v51 == v25)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_23328E5AC();
  __break(1u);
  return result;
}

uint64_t sub_23319E320(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v79 = a6;
  v72 = a5;
  v88 = a4;
  v90 = a2;
  v10 = sub_23328D7CC();
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v10);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23328D80C();
  v82 = *(v84 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D6EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v71 - v24;
  (*(v21 + 16))(&v71 - v24, a1, v20, v23);
  v26 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v28 = *(v21 + 32);
  v80 = v27;
  v29 = v20;
  v30 = v72;
  v28(v27 + v26, v25, v29);
  v31 = sub_233225514();
  v76 = v16;
  v32 = *(v16 + 16);
  v77 = v15;
  v32(v19, v31, v15);
  v33 = sub_23328CE8C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v37 = *(v34 + 16);
  v89 = a3;
  v75 = v34 + 16;
  v74 = v37;
  v37(&v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v33, v36);

  v73 = v19;
  v38 = a7;
  v39 = sub_23328D6CC();
  v40 = sub_23328DE4C();

  v41 = os_log_type_enabled(v39, v40);
  v87 = v38;
  v78 = v33;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315650;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v44 = sub_23328E51C();
    v45 = v33;
    v47 = v46;
    (*(v34 + 8))(&v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
    v48 = sub_23311A8F4(v44, v47, aBlock);

    *(v42 + 4) = v48;
    v38 = v87;
    v49 = v88;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_23311A8F4(v49, v30, aBlock);
    *(v42 + 22) = 2080;
    v50 = v79;
    *(v42 + 24) = sub_23311A8F4(v79, v38, aBlock);
    _os_log_impl(&dword_233109000, v39, v40, "Requesting creation of supplemental model for voice: %s. source=%s target=%s", v42, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v43, -1, -1);
    MEMORY[0x23839CFD0](v42, -1, -1);

    v51 = (*(v76 + 8))(v73, v77);
    v52 = v50;
  }

  else
  {

    (*(v34 + 8))(&v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
    v51 = (*(v76 + 8))(v73, v77);
    v49 = v88;
    v52 = v79;
  }

  MEMORY[0x28223BE20](v51);
  *(&v71 - 6) = v89;
  *(&v71 - 5) = v49;
  v53 = v30;
  *(&v71 - 4) = v30;
  *(&v71 - 3) = v52;
  *(&v71 - 2) = v38;
  v54 = sub_233175210();
  if (v54)
  {
    MEMORY[0x28223BE20](v54);
    *(&v71 - 2) = sub_2331BE52C;
    *(&v71 - 1) = (&v71 - 8);
    sub_23328D2BC();
  }

  v79 = &v71;
  v55 = v90;
  v77 = *&v90[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v56 = MEMORY[0x28223BE20](v54);
  v57 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v78;
  v74(v57, v89, v78, v56);
  v59 = (*(v34 + 80) + 56) & ~*(v34 + 80);
  v60 = v59 + v35;
  v61 = (v59 + v35) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 2) = v88;
  *(v62 + 3) = v53;
  *(v62 + 4) = v52;
  *(v62 + 5) = v87;
  *(v62 + 6) = v55;
  (*(v34 + 32))(&v62[v59], v57, v58);
  v62[v60] = 2;
  v63 = &v62[v61];
  v64 = v80;
  *(v63 + 1) = sub_2331BAA54;
  *(v63 + 2) = v64;
  aBlock[4] = sub_2331BE530;
  aBlock[5] = v62;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_317;
  v65 = _Block_copy(aBlock);

  v66 = v55;

  v67 = v81;
  sub_23328D7DC();
  v91 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v68 = v83;
  v69 = v86;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v67, v68, v65);
  _Block_release(v65);
  (*(v85 + 8))(v68, v69);
  (*(v82 + 8))(v67, v84);
}

uint64_t sub_23319EC1C(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v9, v5, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_2331BDBEC(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2331BDC54(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t TTSVBVoiceBankingManager.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:startTrainingImmediately:completion:)(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v76 = a5;
  v77 = a6;
  v75 = a4;
  v9 = sub_23328D7CC();
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_23328D80C();
  v79 = *(v81 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D6EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[1];
  v20 = *a3;
  v21 = a3[1];
  v85 = *a2;
  v86 = v20;
  v22 = sub_233225514();
  v69 = v15;
  v23 = *(v15 + 16);
  v70 = v14;
  v23(v18, v22, v14);
  v24 = sub_23328CE8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v73 = v28;
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v25 + 16);
  v72 = v25 + 16;
  v71 = v30;
  v30(v29, a1, v24, v27);

  v31 = sub_23328D6CC();
  v32 = sub_23328DE4C();

  v33 = os_log_type_enabled(v31, v32);
  v84 = v21;
  v74 = v24;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v68 = v19;
    v35 = v34;
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v35 = 136315650;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v36 = sub_23328E51C();
    v37 = a1;
    v39 = v38;
    (*(v25 + 8))(v29, v24);
    v40 = sub_23311A8F4(v36, v39, aBlock);
    a1 = v37;
    v21 = v84;

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = v85;
    *(v35 + 14) = sub_23311A8F4(v85, v68, aBlock);
    *(v35 + 22) = 2080;
    v42 = v86;
    *(v35 + 24) = sub_23311A8F4(v86, v21, aBlock);
    _os_log_impl(&dword_233109000, v31, v32, "Requesting creation of supplemental model for voice: %s. source=%s target=%s", v35, 0x20u);
    v43 = v67;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v43, -1, -1);
    v44 = v35;
    v19 = v68;
    MEMORY[0x23839CFD0](v44, -1, -1);

    v45 = (*(v69 + 8))(v18, v70);
  }

  else
  {

    (*(v25 + 8))(v29, v24);
    v45 = (*(v69 + 8))(v18, v70);
    v41 = v85;
    v42 = v86;
  }

  MEMORY[0x28223BE20](v45);
  *(&v66 - 6) = a1;
  *(&v66 - 5) = v41;
  *(&v66 - 4) = v19;
  *(&v66 - 3) = v42;
  *(&v66 - 2) = v21;
  v46 = sub_233175210();
  if (v46)
  {
    MEMORY[0x28223BE20](v46);
    *(&v66 - 2) = sub_2331B4B70;
    *(&v66 - 1) = (&v66 - 8);
    sub_23328D2BC();
  }

  v70 = &v66;
  v47 = v87;
  v69 = *&v87[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v48 = v73;
  v49 = MEMORY[0x28223BE20](v46);
  v50 = &v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v74;
  v71(v50, a1, v74, v49);
  v52 = (*(v25 + 80) + 56) & ~*(v25 + 80);
  v53 = v52 + v48;
  v54 = (v52 + v48) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v86;
  *(v55 + 2) = v85;
  *(v55 + 3) = v19;
  v57 = v84;
  *(v55 + 4) = v56;
  *(v55 + 5) = v57;
  *(v55 + 6) = v47;
  (*(v25 + 32))(&v55[v52], v50, v51);
  v55[v53] = v75;
  v58 = &v55[v54];
  v59 = v77;
  *(v58 + 1) = v76;
  *(v58 + 2) = v59;
  aBlock[4] = sub_2331B4B74;
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_175;
  v60 = _Block_copy(aBlock);

  v61 = v47;

  v62 = v78;
  sub_23328D7DC();
  v88 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v63 = v80;
  v64 = v83;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v62, v63, v60);
  _Block_release(v60);
  (*(v82 + 8))(v63, v64);
  (*(v79 + 8))(v62, v81);
}

uint64_t sub_23319F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332A84B0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v9 = sub_23328E51C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0x656372756F73202ELL, 0xE90000000000003DLL);
  MEMORY[0x23839B7E0](a2, a3);
  MEMORY[0x23839B7E0](0x3D74656772617420, 0xE800000000000000);
  MEMORY[0x23839B7E0](a4, a5);
  return 0;
}

void sub_23319F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v155) = a7;
  v156 = a6;
  v165 = a5;
  v162 = a8;
  v163 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v153 = (v144 - v15);
  v164 = sub_23328D7CC();
  v161 = *(v164 - 1);
  v16 = *(v161 + 64);
  MEMORY[0x28223BE20](v164);
  v158 = v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D80C();
  v159 = *(v18 - 8);
  v160 = v18;
  v19 = *(v159 + 64);
  MEMORY[0x28223BE20](v18);
  v157 = v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D6EC();
  v154 = *(v21 - 8);
  v22 = *(v154 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTSVBError.Reason(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  v171 = a3;
  v172 = a4;
  static TTSVBVoiceModelVersion.validateVersionMigration(from:to:)(&aBlock, &v171);
  v150 = v25;
  v151 = v28;
  v152 = a1;
  v146 = v24;
  v148 = a4;
  v147 = v21;
  v29 = *(v165 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v29)
  {
    v30 = a2;
    LOBYTE(aBlock) = 1;
    v31 = v29;
    v32 = sub_2331E511C(&aBlock);

    type metadata accessor for TTSVBLocalVoiceMO();
    v149 = xmmword_233299230;
    aBlock = xmmword_233299230;
    LOBYTE(v167) = 3;
    v33 = static TTSVBLocalVoiceMO.modelVersions(forVoiceWithID:moc:problemForThrownError:)(v156, v32, &aBlock);
    v42 = v33;
    v43 = v152;
    *&aBlock = v152;
    *(&aBlock + 1) = v30;
    MEMORY[0x28223BE20](v33);
    v144[-2] = &aBlock;
    v44 = sub_2331ACE00(sub_2331BA618, &v144[-4], v42);
    if ((v44 & 1) == 0)
    {

      aBlock = v149;
      LOBYTE(v167) = 3;
      v52 = v151;
      *v151 = v43;
      *(v52 + 8) = v30;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      v49 = swift_allocError();
      v54 = v53;

      TTSVBError.init(_:_:_:)(&aBlock, v52, 0, v54);
      swift_willThrow();

      v47 = v164;
      goto LABEL_3;
    }

    *&aBlock = a3;
    v45 = v148;
    *(&aBlock + 1) = v148;
    MEMORY[0x28223BE20](v44);
    v144[-2] = &aBlock;
    v46 = sub_2331ACE00(sub_2331BE538, &v144[-4], v42);

    v47 = v164;
    if (v46)
    {
      aBlock = v149;
      LOBYTE(v167) = 3;
      v48 = v151;
      *v151 = a3;
      *(v48 + 8) = v45;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      v49 = swift_allocError();
      v51 = v50;

      TTSVBError.init(_:_:_:)(&aBlock, v48, 0, v51);
      swift_willThrow();

LABEL_3:
      v34 = v161;
      v35 = v163;
LABEL_4:
      v36 = *(v165 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
      v37 = swift_allocObject();
      v37[2] = v162;
      v37[3] = v35;
      v37[4] = v49;
      v169 = sub_2331BE6E0;
      v170 = v37;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v167 = sub_2331221F8;
      v168 = &block_descriptor_273_0;
      v38 = _Block_copy(&aBlock);

      v39 = v49;
      v40 = v157;
      sub_23328D7DC();
      v171 = MEMORY[0x277D84F90];
      sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v41 = v158;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v40, v41, v38);
      _Block_release(v38);

      (*(v34 + 8))(v41, v47);
      (*(v159 + 8))(v40, v160);

      return;
    }

    v55 = sub_233167D94();
    v56 = v55[1];
    *&aBlock = *v55;
    *(&aBlock + 1) = v56;
    v57 = v30;
    v58 = v152;
    v171 = v152;
    v172 = v57;
    sub_23315CC14();

    LOBYTE(v56) = sub_23328D90C();

    if (v56)
    {
      v59 = sub_233167B90();
      v61 = *v59;
      v60 = v59[1];
      *&aBlock = v61;
      *(&aBlock + 1) = v60;
      v171 = a3;
      v172 = v45;

      v62 = sub_23328D90C();

      if (v62)
      {
        goto LABEL_13;
      }
    }

    v63 = sub_233167DE4();
    v64 = v63[1];
    *&aBlock = *v63;
    *(&aBlock + 1) = v64;
    v171 = v58;
    v172 = v57;

    v65 = sub_23328D90C();

    if ((v65 & 1) == 0)
    {
      goto LABEL_15;
    }

    v66 = sub_233167B90();
    v68 = *v66;
    v67 = v66[1];
    *&aBlock = v68;
    *(&aBlock + 1) = v67;
    v171 = a3;
    v172 = v45;

    v69 = sub_23328D90C();

    if (v69)
    {
LABEL_13:
      LODWORD(v148) = (v155 == 2) | v155;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
      v153 = v144;
      v151 = *(v70 - 8);
      v152 = *(v151 + 8);
      MEMORY[0x28223BE20](v70 - 8);
      v72 = v144 - v71;
      v73 = sub_23328CE8C();
      v74 = *(v73 - 8);
      v75 = v74;
      v76 = *(v74 + 56);
      v155 = v72;
      v76(v72, 1, 1, v73);
      v77 = sub_233225514();
      v78 = v154;
      v79 = v146;
      v80 = (*(v154 + 16))(v146, v77, v147);
      v144[1] = v144;
      v81 = *(v74 + 64);
      v82 = MEMORY[0x28223BE20](v80);
      v83 = *(v74 + 16);
      v150 = v74 + 16;
      *&v149 = v83;
      v83(v144 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0), v156, v73, v82);
      v84 = sub_23328D6CC();
      v85 = sub_23328DE4C();
      v86 = os_log_type_enabled(v84, v85);
      v145 = v32;
      if (v86)
      {
        v87 = v78;
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v144[0] = v74;
        v90 = v89;
        *&aBlock = v89;
        *v88 = 136316418;
        v91 = sub_23328CE3C();
        v93 = v92;
        (*(v144[0] + 8))(v144 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
        v94 = sub_23311A8F4(v91, v93, &aBlock);

        *(v88 + 4) = v94;
        *(v88 + 12) = 2048;
        *(v88 + 14) = 2;
        *(v88 + 22) = 1024;
        *(v88 + 24) = v148 & 1;
        *(v88 + 28) = 1024;
        *(v88 + 30) = 1;
        *(v88 + 34) = 2048;
        *(v88 + 36) = -1;
        *(v88 + 44) = 2080;
        *(v88 + 46) = sub_23311A8F4(0x6F63655272657375, 0xEE0073676E696472, &aBlock);
        _os_log_impl(&dword_233109000, v84, v85, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v88, 0x36u);
        swift_arrayDestroy();
        v95 = v90;
        v75 = v144[0];
        MEMORY[0x23839CFD0](v95, -1, -1);
        MEMORY[0x23839CFD0](v88, -1, -1);

        v96 = (*(v87 + 8))(v146, v147);
      }

      else
      {

        (*(v74 + 8))(v144 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0), v73);
        v96 = (*(v78 + 8))(v79, v147);
      }

      v97 = v165;
      MEMORY[0x28223BE20](v96);
      v121 = v156;
      v144[-6] = v156;
      v144[-5] = 2;
      LODWORD(v148) = v122 & 1;
      LOBYTE(v144[-4]) = v122 & 1;
      BYTE1(v144[-4]) = 1;
      v144[-3] = 0;
      LOWORD(v144[-2]) = 1;
      v123 = sub_233175210();
      if (v123)
      {
        MEMORY[0x28223BE20](v123);
        v144[-2] = sub_2331BE524;
        v144[-1] = &v144[-8];
        sub_23328D2BC();
      }

      v165 = v144;
      v154 = *(v97 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
      v124 = MEMORY[0x28223BE20](v123);
      v125 = v144 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      v126 = (v149)(v125, v121, v73, v124);
      v156 = v144;
      v127 = v152;
      MEMORY[0x28223BE20](v126);
      v128 = v144 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_233121D34(v155, v128, &qword_27DDE19B0, &qword_233290370);
      v129 = v97;
      v130 = (*(v75 + 80) + 50) & ~*(v75 + 80);
      v131 = v130 + v81;
      v132 = (v151[80] + v131 + 1) & ~v151[80];
      v133 = v127 + v132 + 7;
      v134 = v73;
      v135 = v133 & 0xFFFFFFFFFFFFFFF8;
      v136 = swift_allocObject();
      *(v136 + 16) = v129;
      *(v136 + 24) = 2;
      *(v136 + 32) = v148;
      *(v136 + 40) = 0;
      *(v136 + 48) = 257;
      (*(v75 + 32))(v136 + v130, v125, v134);
      *(v136 + v131) = 0;
      sub_233121D9C(v128, v136 + v132, &qword_27DDE19B0, &qword_233290370);
      v137 = (v136 + v135);
      v138 = v163;
      *v137 = v162;
      v137[1] = v138;
      v169 = sub_2331BE528;
      v170 = v136;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v167 = sub_2331221F8;
      v168 = &block_descriptor_287;
      v139 = _Block_copy(&aBlock);
      v140 = v129;

      v141 = v157;
      sub_23328D7DC();
      v171 = MEMORY[0x277D84F90];
      sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v142 = v158;
      v143 = v164;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v141, v142, v139);
      _Block_release(v139);
      (*(v161 + 8))(v142, v143);
      (*(v159 + 8))(v141, v160);
      sub_233121E04(v155, &qword_27DDE19B0, &qword_233290370);
    }

    else
    {
LABEL_15:
      v98 = sub_233167B90();
      v100 = *v98;
      v99 = v98[1];
      *&aBlock = v100;
      *(&aBlock + 1) = v99;
      v171 = v58;
      v172 = v57;

      v101 = sub_23328D90C();

      if ((v101 & 1) == 0)
      {
        goto LABEL_18;
      }

      v102 = v63[1];
      *&aBlock = *v63;
      *(&aBlock + 1) = v102;
      v171 = a3;
      v172 = v45;

      v103 = sub_23328D90C();

      if ((v103 & 1) == 0)
      {
LABEL_18:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_23328E24C();

        *&aBlock = 0xD00000000000001FLL;
        *(&aBlock + 1) = 0x80000002332A8490;
        MEMORY[0x23839B7E0](v58, v57);
        MEMORY[0x23839B7E0](540945696, 0xE400000000000000);
        MEMORY[0x23839B7E0](a3, v45);
        v119 = *(&aBlock + 1);
        v118 = aBlock;
        type metadata accessor for TTSVBError(0);
        sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
        v49 = swift_allocError();
        TTSVBError.init(_:_:_:)(0xD000000000000024, 0x80000002332A8460, v118, v119, 0, v120);
        swift_willThrow();

        v35 = v163;
        v34 = v161;
        goto LABEL_4;
      }

      v104 = sub_23328DCBC();
      (*(*(v104 - 8) + 56))(v153, 1, 1, v104);
      v105 = sub_23328CE8C();
      v164 = v144;
      v106 = *(v105 - 8);
      v107 = *(v106 + 64);
      v108 = MEMORY[0x28223BE20](v105);
      v109 = v144 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v106 + 16))(v109, v156, v105, v108);
      v110 = (*(v106 + 80) + 40) & ~*(v106 + 80);
      v111 = v110 + v107;
      v112 = (v110 + v107) & 0xFFFFFFFFFFFFFFF8;
      v113 = swift_allocObject();
      *(v113 + 2) = 0;
      *(v113 + 3) = 0;
      v114 = v165;
      *(v113 + 4) = v165;
      (*(v106 + 32))(&v113[v110], v109, v105);
      v113[v111] = v155;
      v115 = &v113[v112];
      v116 = v163;
      *(v115 + 1) = v162;
      *(v115 + 2) = v116;
      v117 = v114;

      sub_233193E34(0, 0, v153, &unk_233299AA8, v113);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2331A0B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 248) = a6;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  v10 = sub_23328D7CC();
  *(v8 + 160) = v10;
  v11 = *(v10 - 8);
  *(v8 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v13 = sub_23328D80C();
  *(v8 + 184) = v13;
  v14 = *(v13 - 8);
  *(v8 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v16 = sub_23328D6EC();
  *(v8 + 208) = v16;
  v17 = *(v16 - 8);
  *(v8 + 216) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v19 = swift_task_alloc();
  *(v8 + 232) = v19;
  *v19 = v8;
  v19[1] = sub_2331A0CE4;

  return TTSVBVoiceBankingManager.synthesizeAudioForTraining(voiceID:)(a5);
}

uint64_t sub_2331A0CE4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_2331A1580;
  }

  else
  {
    v3 = sub_2331A0DF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2331A0DF8()
{
  v72 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[17];
  v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v68 = *(v67 + 64);
  v5 = swift_task_alloc();
  v6 = sub_23328CE8C();
  v7 = *(v6 - 8);
  v8 = v7;
  v70 = v5;
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_233225514();
  (*(v2 + 16))(v1, v9, v3);
  v10 = *(v7 + 64);
  v11 = swift_task_alloc();
  v12 = v4;
  v13 = v6;
  v65 = *(v8 + 16);
  (v65)(v11, v12, v6);
  v14 = sub_23328D6CC();
  v15 = sub_23328DE4C();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[27];
  v17 = v0[28];
  v62 = v0[26];
  v19 = *(v0 + 248);
  v69 = v8;
  if (v16)
  {
    v60 = v10;
    v20 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v71 = v56;
    *v20 = 136316418;
    v58 = v17;
    v21 = sub_23328CE3C();
    v22 = v13;
    v24 = v23;
    v25 = *(v8 + 8);
    v26 = v22;
    v25(v11, v22);
    v27 = sub_23311A8F4(v21, v24, &v71);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2048;
    *(v20 + 14) = 1;
    *(v20 + 22) = 1024;
    v28 = v19 & 1;
    *(v20 + 24) = v28;
    *(v20 + 28) = 1024;
    *(v20 + 30) = 1;
    *(v20 + 34) = 2048;
    *(v20 + 36) = -1;
    *(v20 + 44) = 2080;
    *(v20 + 46) = sub_23311A8F4(0xD000000000000011, 0x80000002332A7F50, &v71);
    _os_log_impl(&dword_233109000, v14, v15, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v20, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v56, -1, -1);
    v29 = v20;
    v10 = v60;
    MEMORY[0x23839CFD0](v29, -1, -1);

    (*(v18 + 8))(v58, v62);
  }

  else
  {

    v30 = *(v8 + 8);
    v26 = v13;
    v30(v11, v13);
    (*(v18 + 8))(v17, v62);
    LOBYTE(v28) = v19 & 1;
  }

  v31 = v0[16];
  v32 = v0[17];

  v33 = swift_task_alloc();
  *(v33 + 16) = v32;
  *(v33 + 24) = 1;
  v63 = v28;
  *(v33 + 32) = v28;
  *(v33 + 33) = 1;
  *(v33 + 40) = 0;
  *(v33 + 48) = 257;
  if (sub_233175210())
  {
    v34 = swift_task_alloc();
    *(v34 + 16) = sub_2331BE524;
    *(v34 + 24) = v33;
    sub_23328D2BC();
  }

  v52 = v0[25];
  v59 = v0[24];
  v61 = v0[23];
  v53 = v0[22];
  v55 = v0[20];
  v57 = v0[21];
  v50 = v0[18];
  v51 = v0[19];
  v35 = v0[16];
  v36 = v0[17];

  v54 = *&v35[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v64 = swift_task_alloc();
  v65();
  v66 = swift_task_alloc();
  sub_233121D34(v70, v66, &qword_27DDE19B0, &qword_233290370);
  v37 = (*(v69 + 80) + 50) & ~*(v69 + 80);
  v38 = v37 + v10;
  v39 = (*(v67 + 80) + v38 + 1) & ~*(v67 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = 1;
  *(v40 + 32) = v63;
  *(v40 + 40) = 0;
  *(v40 + 48) = 257;
  (*(v69 + 32))(v40 + v37, v64, v26);
  *(v40 + v38) = 1;
  sub_233121D9C(v66, v40 + v39, &qword_27DDE19B0, &qword_233290370);
  v41 = (v40 + ((v68 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v41 = v50;
  v41[1] = v51;
  v0[12] = sub_2331BE528;
  v0[13] = v40;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2331221F8;
  v0[11] = &block_descriptor_303;
  v42 = _Block_copy(v0 + 8);
  v43 = v35;

  sub_23328D7DC();
  v0[15] = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v52, v53, v42);
  _Block_release(v42);
  (*(v57 + 8))(v53, v55);
  (*(v59 + 8))(v52, v61);
  sub_233121E04(v70, &qword_27DDE19B0, &qword_233290370);
  v44 = v0[13];

  v45 = v0[28];
  v46 = v0[25];
  v47 = v0[22];

  v48 = v0[1];

  return v48();
}

uint64_t sub_2331A1580()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[22];
  v18 = v0[24];
  v19 = v0[23];
  v4 = v0[20];
  v17 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v16 = *(v0[16] + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v1;
  v0[6] = sub_2331BA754;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2331221F8;
  v0[5] = &block_descriptor_293;
  v8 = _Block_copy(v0 + 2);

  v9 = v1;
  sub_23328D7DC();
  v0[14] = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v2, v3, v8);
  _Block_release(v8);

  (*(v17 + 8))(v3, v4);
  (*(v18 + 8))(v2, v19);
  v10 = v0[7];

  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[22];

  v14 = v0[1];

  return v14();
}

uint64_t TTSVBVoiceBankingManager.synthesizeAudioForTraining(voiceID:)(uint64_t a1)
{
  v2[74] = v1;
  v2[73] = a1;
  v3 = sub_23328D0BC();
  v2[75] = v3;
  v4 = *(v3 - 8);
  v2[76] = v4;
  v5 = *(v4 + 64) + 15;
  v2[77] = swift_task_alloc();
  v6 = sub_23328CFBC();
  v2[78] = v6;
  v7 = *(v6 - 8);
  v2[79] = v7;
  v8 = *(v7 + 64) + 15;
  v2[80] = swift_task_alloc();
  v9 = sub_23328CFAC();
  v2[81] = v9;
  v10 = *(v9 - 8);
  v2[82] = v10;
  v11 = *(v10 + 64) + 15;
  v2[83] = swift_task_alloc();
  v12 = sub_23328D0DC();
  v2[84] = v12;
  v13 = *(v12 - 8);
  v2[85] = v13;
  v14 = *(v13 + 64) + 15;
  v2[86] = swift_task_alloc();
  v15 = type metadata accessor for TTSVBPath();
  v2[87] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[88] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288) - 8) + 64) + 15;
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v18 = sub_23328D07C();
  v2[91] = v18;
  v19 = *(v18 - 8);
  v2[92] = v19;
  v20 = *(v19 + 64) + 15;
  v2[93] = swift_task_alloc();
  v21 = sub_23328CF9C();
  v2[94] = v21;
  v22 = *(v21 - 8);
  v2[95] = v22;
  v23 = *(v22 + 64) + 15;
  v2[96] = swift_task_alloc();
  v24 = sub_23328D04C();
  v2[97] = v24;
  v25 = *(v24 - 8);
  v2[98] = v25;
  v26 = *(v25 + 64) + 15;
  v2[99] = swift_task_alloc();
  v27 = sub_23328D6EC();
  v2[100] = v27;
  v28 = *(v27 - 8);
  v2[101] = v28;
  v29 = *(v28 + 64) + 15;
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2331A1BE0, 0, 0);
}

uint64_t sub_2331A1BE0()
{
  v103 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 584);
  v5 = sub_233225314();
  *(v0 + 856) = v5;
  v6 = *(v2 + 16);
  *(v0 + 864) = v6;
  *(v0 + 872) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = sub_23328CE8C();
  *(v0 + 880) = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  *(v0 + 888) = v8;
  v10 = *(v8 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *(v9 + 16);
  *(v0 + 896) = v12;
  *(v0 + 904) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v11, v4, v7);
  v13 = sub_23328D6CC();
  v14 = sub_23328DE4C();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 848);
  v17 = *(v0 + 808);
  v97 = *(v0 + 800);
  v92 = v7;
  if (v15)
  {
    v18 = swift_slowAlloc();
    v87 = v16;
    v19 = swift_slowAlloc();
    *&v101 = v19;
    *v18 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v20 = sub_23328E51C();
    v21 = v7;
    v23 = v22;
    v24 = *(v9 + 8);
    v24(v11, v21);
    v25 = sub_23311A8F4(v20, v23, &v101);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_233109000, v13, v14, "Will synthesize speech samples using v2 model for voice: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23839CFD0](v19, -1, -1);
    MEMORY[0x23839CFD0](v18, -1, -1);

    v26 = *(v17 + 8);
    v26(v87, v97);
  }

  else
  {

    v24 = *(v9 + 8);
    v24(v11, v7);
    v26 = *(v17 + 8);
    v26(v16, v97);
  }

  *(v0 + 920) = v24;
  *(v0 + 912) = v26;
  v27 = *(v0 + 592);

  v29 = *(v27 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v29)
  {
    __break(1u);
    return result;
  }

  v30 = *(v0 + 584);
  LOBYTE(v101) = 1;
  v31 = v29;
  v32 = sub_2331E511C(&v101);
  *(v0 + 928) = v32;

  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v99);
  v101 = v99;
  v102 = v100;
  v33 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v30, v32, &v101);
  *(v0 + 936) = v33;
  *(v0 + 944) = 0;
  sub_2331220AC(v101, *(&v101 + 1), v102);
  v34 = swift_task_alloc();
  *(v0 + 952) = v34;
  v35 = [v33 voiceID];
  if (!v35)
  {

    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332A8040, 0, 0, 0, v55);
    swift_willThrow();

LABEL_36:
    v74 = *(v0 + 848);
    v75 = *(v0 + 840);
    v76 = *(v0 + 832);
    v77 = *(v0 + 824);
    v78 = *(v0 + 816);
    v79 = *(v0 + 792);
    v80 = *(v0 + 768);
    v81 = *(v0 + 744);
    v82 = *(v0 + 720);
    v83 = *(v0 + 712);
    v86 = *(v0 + 704);
    v89 = *(v0 + 688);
    v91 = *(v0 + 664);
    v93 = *(v0 + 640);
    v96 = *(v0 + 616);

    v84 = *(v0 + 8);

    return v84();
  }

  v90 = v24;
  v85 = v34;
  v36 = v35;
  sub_23328CE6C();

  v37 = (*((*MEMORY[0x277D85000] & *v33) + 0x70))();
  v38 = v37;
  v88 = v32;
  if (v37 >> 62)
  {
LABEL_33:
    v39 = sub_23328E19C();
    if (v39)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
LABEL_34:

    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD00000000000001FLL, 0x80000002332A80C0, 0, 0, 0, v73);
    swift_willThrow();

    v90(v85, v92);
LABEL_35:

    goto LABEL_36;
  }

LABEL_8:
  v40 = 0;
  while (1)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x23839BFC0](v40, v38);
    }

    else
    {
      if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v42 = *(v38 + 8 * v40 + 32);
    }

    v43 = v42;
    *(v0 + 960) = v42;
    v44 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v45 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v46 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
    TTSVBCommonVoiceModelMO.typedVersion.getter(&v101, v45, v46);
    v47 = v101;
    v48 = sub_233167B90();
    v49 = v48[1];
    if (!*(&v47 + 1))
    {
      break;
    }

    v50 = *v48;
    *(v0 + 528) = v47;
    if (!v49)
    {

      v41 = *(v0 + 536);

LABEL_10:

      goto LABEL_11;
    }

    *(v0 + 544) = v50;
    *(v0 + 552) = v49;
    sub_23315CC14();

    v51 = sub_23328D90C();
    v52 = *(v0 + 552);

    v53 = *(v0 + 536);

    if (v51)
    {
      goto LABEL_26;
    }

LABEL_11:
    ++v40;
    if (v44 == v39)
    {
      goto LABEL_34;
    }
  }

  if (v49)
  {
    v54 = v48[1];

    goto LABEL_10;
  }

LABEL_26:

  v57 = (*((*MEMORY[0x277D85000] & *v43) + 0x60))(v56);
  v59 = v57;
  *(v0 + 968) = v57;
  *(v0 + 976) = v58;
  if (!v58)
  {
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000029, 0x80000002332A8060, v59, 0, 0, v72);
    swift_willThrow();

    v90(v85, v92);
    goto LABEL_35;
  }

  v60 = v58;
  v61 = *(v0 + 792);
  v62 = *(v0 + 784);
  v63 = *(v0 + 776);
  v64 = *(v0 + 768);
  v98 = v57;
  v65 = *(v0 + 760);
  v94 = *(v0 + 752);
  sub_23328D0EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2848, &qword_233299290);
  v66 = *(v62 + 72);
  v67 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_233297630;
  sub_23328D03C();
  sub_23328D02C();
  *(v0 + 560) = v68;
  sub_2331B2AAC(&qword_27DDE2850, MEMORY[0x277D702B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2858, &qword_23329D560);
  sub_23315246C(&qword_27DDE2860, &qword_27DDE2858, &qword_23329D560);
  sub_23328E14C();
  (*(v65 + 104))(v64, *MEMORY[0x277D700F8], v94);
  *(v0 + 984) = sub_23328CFCC();
  v69 = *(MEMORY[0x277D70320] + 4);
  v95 = (*MEMORY[0x277D70320] + MEMORY[0x277D70320]);
  v70 = swift_task_alloc();
  *(v0 + 992) = v70;
  *v70 = v0;
  v70[1] = sub_2331A26D8;
  v71 = *(v0 + 720);

  return v95(v71, v98, v60);
}

uint64_t sub_2331A26D8()
{
  v1 = *(*v0 + 992);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2331A27D4, 0, 0);
}

uint64_t sub_2331A27D4()
{
  v102 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 984);
    v5 = *(v0 + 976);
    v6 = *(v0 + 968);
    v7 = *(v0 + 960);
    v8 = *(v0 + 952);
    v9 = *(v0 + 936);
    v93 = *(v0 + 920);
    v10 = *(v0 + 888);
    v86 = *(v0 + 928);
    v90 = *(v0 + 880);
    sub_233121E04(v3, &qword_27DDE2838, &qword_233299288);
    sub_23328E24C();

    v99 = 0xD000000000000027;
    v100 = 0x80000002332A8090;
    MEMORY[0x23839B7E0](v6, v5);

    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000027, 0x80000002332A8090, 0, 0, 0, v11);
    swift_willThrow();

    v93(v8, v90);
LABEL_5:

    v31 = *(v0 + 848);
    v32 = *(v0 + 840);
    v33 = *(v0 + 832);
    v34 = *(v0 + 824);
    v35 = *(v0 + 816);
    v36 = *(v0 + 792);
    v37 = *(v0 + 768);
    v38 = *(v0 + 744);
    v39 = *(v0 + 720);
    v40 = *(v0 + 712);
    v81 = *(v0 + 704);
    v84 = *(v0 + 688);
    v88 = *(v0 + 664);
    v92 = *(v0 + 640);
    v95 = *(v0 + 616);

    v41 = *(v0 + 8);

    return v41();
  }

  v12 = *(v0 + 952);
  v96 = *(v0 + 944);
  v13 = *(v0 + 904);
  v14 = *(v0 + 896);
  v15 = *(v0 + 880);
  v16 = *(v0 + 704);
  v17 = *(v0 + 696);
  (*(v1 + 32))(*(v0 + 744), v3, v2);
  v18 = sub_23328CC9C();
  *(v0 + 1000) = v18;
  v94 = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  *(v0 + 1008) = v19;
  *(v0 + 1016) = *(v19 + 64);
  v21 = swift_task_alloc();
  *(v0 + 1024) = v21;
  v14(v16, v12, v15);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v21);
  sub_2331BDC54(v16, type metadata accessor for TTSVBPath);
  v98 = *sub_2331DEBE8();
  v99 = 0;
  v100 = 0;
  v101 = -1;
  v22 = v98;
  v23 = sub_233126E60();
  _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v21, 0, v23 & 1, &v99);
  if (v96)
  {
    v24 = *(v0 + 984);
    v25 = *(v0 + 976);
    v26 = *(v0 + 952);
    v27 = *(v0 + 936);
    v28 = *(v0 + 928);
    v87 = *(v0 + 880);
    v91 = *(v0 + 920);
    v80 = *(v0 + 744);
    v83 = *(v0 + 888);
    v29 = *(v0 + 736);
    v30 = *(v0 + 728);

    (*(v20 + 8))(v21, v94);
    (*(v29 + 8))(v80, v30);
    v91(v26, v87);

    goto LABEL_5;
  }

  v43 = *(v0 + 872);
  v44 = *(v0 + 864);
  v45 = *(v0 + 856);
  v46 = *(v0 + 840);
  v47 = *(v0 + 800);

  v44(v46, v45, v47);
  v97 = swift_task_alloc();
  (*(v20 + 16))(v97, v21, v94);
  v48 = sub_23328D6CC();
  v49 = sub_23328DE4C();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 912);
  v52 = *(v0 + 840);
  v53 = *(v0 + 808);
  v54 = *(v0 + 800);
  if (v50)
  {
    v55 = swift_slowAlloc();
    v89 = v54;
    v56 = swift_slowAlloc();
    v99 = v56;
    *v55 = 136315138;
    v85 = v51;
    v79 = sub_23328CC6C();
    v82 = v52;
    v58 = v57;
    v59 = *(v20 + 8);
    v59(v97, v94);
    v60 = sub_23311A8F4(v79, v58, &v99);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_233109000, v48, v49, "Using directory for synthesizes samples: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x23839CFD0](v56, -1, -1);
    MEMORY[0x23839CFD0](v55, -1, -1);

    v85(v82, v89);
  }

  else
  {

    v59 = *(v20 + 8);
    v59(v97, v94);
    v51(v52, v54);
  }

  *(v0 + 1032) = v59;
  v61 = *(v0 + 936);

  *(v0 + 1040) = [objc_opt_self() defaultManager];
  LOBYTE(v99) = 0;
  *(v0 + 1048) = TTSVBMinimumUserPhraseCount(forExperience:)(&v99);
  v62 = [v61 localeID];
  if (v62)
  {
    v70 = v62;
    v71 = *(v0 + 976);
    v72 = *(v0 + 592);

    v73 = sub_23328D98C();
    v75 = v74;

    *(v0 + 1056) = v75;
    v76 = swift_task_alloc();
    *(v0 + 1064) = v76;
    v76[2] = v72;
    v76[3] = v73;
    v76[4] = v75;
    v76[5] = @"default";
    v77 = *(MEMORY[0x277D85A40] + 4);
    v78 = swift_task_alloc();
    *(v0 + 1072) = v78;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2810, &qword_233299248);
    *v78 = v0;
    v78[1] = sub_2331A2FA8;
    v67 = sub_2331BE500;
    v62 = (v0 + 568);
    v65 = 0xD000000000000033;
    v66 = 0x80000002332A7F90;
    v63 = 0;
    v64 = 0;
    v68 = v76;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v62, v63, v64, v65, v66, v67, v68, v69);
}

uint64_t sub_2331A2FA8()
{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v8 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v4 = sub_2331A3D28;
  }

  else
  {
    v5 = *(v2 + 1064);
    v6 = *(v2 + 1056);

    v4 = sub_2331A30D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2331A30D0()
{
  v164 = v0;
  v1 = *(v0 + 568);
  *(v0 + 1088) = v1;
  *(v0 + 1096) = *(v1 + 16);
  v2 = sub_23328CE1C();
  *(v0 + 1104) = v2;
  v3 = *(v2 - 8);
  *(v0 + 1112) = v3;
  *(v0 + 1120) = *(v3 + 64);
  *(v0 + 1128) = swift_task_alloc();
  result = sub_23328CE0C();
  v5 = *(v1 + 16);
  *(v0 + 1136) = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (v0 + 16);
    *(v0 + 1200) = *MEMORY[0x277D70198];
    *(v0 + 1204) = *MEMORY[0x277D701A0];
    v8 = 32;
    while (1)
    {
      *(v0 + 1144) = v6;
      v9 = *(v0 + 1088);
      if (v6 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v0 + 1048);
      v11 = *(v9 + v8 + 32);
      v12 = *(v9 + v8 + 48);
      v13 = *(v9 + v8 + 16);
      *(v0 + 136) = *(v9 + v8);
      *(v0 + 184) = v12;
      *(v0 + 168) = v11;
      *(v0 + 152) = v13;
      v15 = *(v9 + v8 + 80);
      v14 = *(v9 + v8 + 96);
      v16 = *(v9 + v8 + 112);
      *(v0 + 200) = *(v9 + v8 + 64);
      *(v0 + 248) = v16;
      *(v0 + 232) = v14;
      *(v0 + 216) = v15;
      memmove(v7, (v9 + v8), 0x78uLL);
      if (v10 < v6)
      {
        sub_2331B4B78(v0 + 136, v0 + 376);

        sub_2331B4CC8(v7);
        goto LABEL_9;
      }

      v148 = v8;
      v152 = v6;
      v17 = *(v0 + 1016);
      v18 = *(v0 + 952);
      v19 = *(v0 + 904);
      v20 = v7;
      v21 = *(v0 + 896);
      v22 = *(v0 + 880);
      v23 = *(v0 + 704);
      v155 = *(v0 + 696);
      v160 = *(v0 + 1040);
      v24 = swift_task_alloc();
      *(v0 + 1152) = v24;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v26 = *(v25 + 48);
      v27 = v23 + *(v25 + 64);
      v21(v23, v18, v22);
      v7 = v20;
      v28 = *v20;
      *(v0 + 496) = *v20;
      *(v23 + v26) = v28;
      sub_2331B4B78(v0 + 136, v0 + 256);
      sub_2331B4BD4(v0 + 496, v0 + 512);
      v29 = sub_2331C464C();
      v30 = *(v29 + 1);
      *v27 = *v29;
      *(v27 + 8) = v30;
      swift_storeEnumTagMultiPayload();
      v31 = v30;
      TTSVBPath.url.getter(v24);
      sub_2331BDC54(v23, type metadata accessor for TTSVBPath);
      sub_23328CC6C();
      v32 = sub_23328D95C();

      LODWORD(v23) = [v160 fileExistsAtPath_];

      if (!v23)
      {
        break;
      }

      v6 = v152 + 1;
      v33 = *(v0 + 1136);
      v34 = *(v0 + 1008) + 8;
      (*(v0 + 1032))(v24, *(v0 + 1000));
      sub_2331B4CC8(v20);

      v8 = v148 + 120;
      if (v152 + 1 == v33)
      {
        goto LABEL_7;
      }
    }

    v162 = v24;
    v115 = *(v0 + 1204);
    v113 = *(v0 + 1200);
    v158 = *(v0 + 872);
    v147 = *(v0 + 856);
    v151 = *(v0 + 864);
    v140 = *(v0 + 832);
    v144 = *(v0 + 800);
    v79 = *(v0 + 736);
    v80 = *(v0 + 728);
    v81 = *(v0 + 712);
    v82 = *(v0 + 664);
    v83 = *(v0 + 656);
    v84 = *(v0 + 640);
    v85 = *(v0 + 632);
    v109 = *(v0 + 648);
    v111 = *(v0 + 624);
    v124 = *(v0 + 616);
    v86 = *(v0 + 608);
    v133 = *(v0 + 688);
    v137 = *(v0 + 1120) + 15;
    (*(v79 + 16))(v81, *(v0 + 744), v80);
    (*(v79 + 56))(v81, 0, 1, v80);
    *(swift_task_alloc() + 16) = v7;
    (*(v83 + 104))(v82, v113, v109);
    (*(v85 + 104))(v84, v115, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2868, &qword_233299298);
    v87 = *(v86 + 72);
    v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_233290950;
    sub_23328D0AC();
    sub_23328D09C();
    sub_23328D08C();
    *(v0 + 576) = v89;
    sub_2331B2AAC(&qword_27DDE2870, MEMORY[0x277D70340]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2878, &unk_2332992A0);
    sub_23315246C(&qword_27DDE2880, &qword_27DDE2878, &unk_2332992A0);
    sub_23328E14C();
    sub_23328D0CC();
    sub_2331B4CC8(v7);

    *(v0 + 1160) = swift_task_alloc();
    sub_23328CE0C();
    v151(v140, v147, v144);
    v90 = sub_23328D6CC();
    v91 = sub_23328DE4C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = *(v0 + 1096);
      v93 = *(v0 + 1048);
      v94 = swift_slowAlloc();
      *v94 = 134218496;
      *(v94 + 4) = v152 + 1;
      *(v94 + 12) = 2048;
      *(v94 + 14) = v92;
      *(v94 + 22) = 2048;
      *(v94 + 24) = v93;
      _os_log_impl(&dword_233109000, v90, v91, "Will synthesize sample %ld of %ld. (stopping at %ld required)", v94, 0x20u);
      MEMORY[0x23839CFD0](v94, -1, -1);
    }

    v95 = *(v0 + 912);
    v96 = *(v0 + 832);
    v97 = *(v0 + 808);
    v98 = *(v0 + 800);

    *(v0 + 1168) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v95(v96, v98);
    v99 = sub_2331B9558(MEMORY[0x277D84F90]);
    *(v0 + 1176) = v99;
    v100 = *(MEMORY[0x277D70328] + 4);
    v159 = (*MEMORY[0x277D70328] + MEMORY[0x277D70328]);
    v101 = swift_task_alloc();
    *(v0 + 1184) = v101;
    *v101 = v0;
    v101[1] = sub_2331A3F38;
    v102 = *(v0 + 984);
    v103 = *(v0 + 688);

    return v159(v103, v162, v99);
  }

  else
  {
LABEL_7:
    v35 = *(v0 + 1088);

LABEL_9:
    v36 = *(v0 + 1128);
    v37 = *(v0 + 1120);
    v38 = *(v0 + 1112);
    v39 = *(v0 + 1104);
    v40 = *(v0 + 872);
    (*(v0 + 864))(*(v0 + 816), *(v0 + 856), *(v0 + 800));
    v161 = swift_task_alloc();
    (*(v38 + 16))(v161, v36, v39);
    v41 = sub_23328D6CC();
    v42 = sub_23328DE4C();
    v153 = v41;
    v43 = os_log_type_enabled(v41, v42);
    v156 = *(v0 + 1128);
    if (v43)
    {
      v44 = *(v0 + 1112);
      v45 = *(v0 + 1104);
      v107 = *(v0 + 1040);
      v141 = *(v0 + 1032);
      v125 = *(v0 + 1008);
      v127 = *(v0 + 1000);
      v130 = *(v0 + 1024);
      v104 = *(v0 + 960);
      v105 = *(v0 + 984);
      v149 = *(v0 + 952);
      v106 = *(v0 + 936);
      v110 = *(v0 + 928);
      v145 = *(v0 + 920);
      v134 = *(v0 + 888);
      v138 = *(v0 + 880);
      v114 = *(v0 + 816);
      v116 = *(v0 + 912);
      v108 = *(v0 + 808);
      v112 = *(v0 + 800);
      v118 = *(v0 + 736);
      v46 = *(v0 + 1120) + 15;
      v120 = *(v0 + 728);
      v122 = *(v0 + 744);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v163 = v48;
      *v47 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_233297B30;
      v50 = swift_task_alloc();
      sub_23328CE0C();
      sub_23328CD8C();
      v52 = v51;
      v53 = *(v44 + 8);
      v53(v50, v45);

      v54 = MEMORY[0x277D83A80];
      *(v49 + 56) = MEMORY[0x277D839F8];
      *(v49 + 64) = v54;
      *(v49 + 32) = v52;
      v55 = sub_23328D9BC();
      v57 = v56;
      v53(v161, v45);
      v58 = sub_23311A8F4(v55, v57, &v163);

      *(v47 + 4) = v58;
      _os_log_impl(&dword_233109000, v153, v42, "Did finish synthesizing samples. total time=%s)", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23839CFD0](v48, -1, -1);
      MEMORY[0x23839CFD0](v47, -1, -1);

      v116(v114, v112);
      v53(v156, v45);
      v141(v130, v127);
      (*(v118 + 8))(v122, v120);
    }

    else
    {
      v59 = *(v0 + 1112);
      v60 = *(v0 + 1104);
      v61 = *(v0 + 1040);
      v142 = *(v0 + 1032);
      v126 = *(v0 + 1008);
      v128 = *(v0 + 1000);
      v131 = *(v0 + 1024);
      v62 = *(v0 + 984);
      v63 = *(v0 + 936);
      v64 = *(v0 + 928);
      v145 = *(v0 + 920);
      v149 = *(v0 + 952);
      v135 = *(v0 + 888);
      v138 = *(v0 + 880);
      v117 = *(v0 + 816);
      v119 = *(v0 + 912);
      v65 = *(v0 + 808);
      v66 = *(v0 + 800);
      v67 = *(v0 + 736);
      v121 = *(v0 + 728);
      v123 = *(v0 + 744);

      v68 = *(v59 + 8);
      v68(v161, v60);
      v119(v117, v66);
      v68(v156, v60);
      v142(v131, v128);
      (*(v67 + 8))(v123, v121);
    }

    v145(v149, v138);
    v69 = *(v0 + 1128);
    v70 = *(v0 + 1024);
    v71 = *(v0 + 952);
    v72 = *(v0 + 848);
    v73 = *(v0 + 840);
    v74 = *(v0 + 832);
    v75 = *(v0 + 824);
    v76 = *(v0 + 816);
    v77 = *(v0 + 792);
    v129 = *(v0 + 768);
    v132 = *(v0 + 744);
    v136 = *(v0 + 720);
    v139 = *(v0 + 712);
    v143 = *(v0 + 704);
    v146 = *(v0 + 688);
    v150 = *(v0 + 664);
    v154 = *(v0 + 640);
    v157 = *(v0 + 616);

    v78 = *(v0 + 8);

    return v78();
  }
}

uint64_t sub_2331A3D28()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[130];
  v4 = v0[128];
  v25 = v0[126];
  v27 = v0[125];
  v5 = v0[123];
  v6 = v0[120];
  v7 = v0[119];
  v8 = v0[117];
  v9 = v0[116];
  v29 = v0[111];
  v31 = v0[129];
  v33 = v0[110];
  v35 = v0[115];
  v10 = v0[92];
  v23 = v0[91];
  v24 = v0[93];

  v31(v4, v27);
  (*(v10 + 8))(v24, v23);
  v35(v7, v33);

  v11 = v0[106];
  v12 = v0[105];
  v13 = v0[104];
  v14 = v0[103];
  v15 = v0[102];
  v16 = v0[99];
  v17 = v0[96];
  v18 = v0[93];
  v19 = v0[90];
  v20 = v0[89];
  v26 = v0[88];
  v28 = v0[86];
  v30 = v0[83];
  v32 = v0[80];
  v34 = v0[77];
  v36 = v0[135];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2331A3F38()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v4 = *v1;
  v2[149] = v0;

  v5 = v2[147];
  if (v0)
  {
    v6 = v2[136];

    v7 = sub_2331A4FD0;
  }

  else
  {

    v7 = sub_2331A4080;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2331A4080()
{
  v213 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 872);
  (*(v0 + 864))(*(v0 + 824), *(v0 + 856), *(v0 + 800));
  v208 = swift_task_alloc();
  (*(v3 + 16))(v208, v1, v4);
  v6 = sub_23328D6CC();
  v7 = sub_23328DE4C();
  v193 = v6;
  v8 = os_log_type_enabled(v6, v7);
  v198 = *(v0 + 1168);
  v202 = *(v0 + 1160);
  v189 = *(v0 + 1152);
  v9 = *(v0 + 1112);
  if (v8)
  {
    v10 = *(v0 + 1104);
    v11 = *(v0 + 1096);
    v184 = *(v0 + 1032);
    v180 = *(v0 + 1000);
    v159 = *(v0 + 912);
    v156 = *(v0 + 824);
    v153 = *(v0 + 800);
    v170 = *(v0 + 688);
    v12 = *(v0 + 1144) + 1;
    v175 = *(v0 + 1008) + 8;
    v13 = *(v0 + 1120) + 15;
    v163 = *(v0 + 672);
    v166 = *(v0 + 680);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v212[0] = v15;
    *v14 = 134218498;
    *(v14 + 4) = v12;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    *(v14 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_233297B30;
    v17 = swift_task_alloc();
    sub_23328CE0C();
    sub_23328CD8C();
    v19 = v18;
    v20 = *(v9 + 8);
    v20(v17, v10);

    v21 = MEMORY[0x277D83A80];
    *(v16 + 56) = MEMORY[0x277D839F8];
    *(v16 + 64) = v21;
    *(v16 + 32) = v19;
    v22 = sub_23328D9BC();
    v24 = v23;
    v20(v208, v10);
    v25 = sub_23311A8F4(v22, v24, v212);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_233109000, v193, v7, "Did synthesize sample %ld of %ld. synthesis time=%s", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23839CFD0](v15, -1, -1);
    MEMORY[0x23839CFD0](v14, -1, -1);

    v159(v156, v153);
    v20(v202, v10);
    (*(v166 + 8))(v170, v163);
  }

  else
  {
    v26 = *(v0 + 1104);
    v27 = *(v0 + 1008);
    v180 = *(v0 + 1000);
    v184 = *(v0 + 1032);
    v28 = *(v0 + 912);
    v29 = *(v0 + 824);
    v30 = *(v0 + 800);
    v31 = *(v0 + 688);
    v32 = *(v0 + 680);
    v33 = *(v0 + 672);

    v34 = *(v9 + 8);
    v34(v208, v26);
    v28(v29, v30);
    v34(v202, v26);
    (*(v32 + 8))(v31, v33);
  }

  v184(v189, v180);
  v35 = *(v0 + 1160);
  v36 = *(v0 + 1152);
  v37 = *(v0 + 1136);
  v38 = *(v0 + 1144) + 1;

  if (v38 == v37)
  {
LABEL_10:
    v70 = *(v0 + 1088);

LABEL_12:
    v71 = *(v0 + 1128);
    v72 = *(v0 + 1120);
    v73 = *(v0 + 1112);
    v74 = *(v0 + 1104);
    v75 = *(v0 + 872);
    (*(v0 + 864))(*(v0 + 816), *(v0 + 856), *(v0 + 800));
    v210 = swift_task_alloc();
    (*(v73 + 16))(v210, v71, v74);
    v76 = sub_23328D6CC();
    v77 = sub_23328DE4C();
    v200 = v76;
    v78 = os_log_type_enabled(v76, v77);
    v204 = *(v0 + 1128);
    if (v78)
    {
      v79 = *(v0 + 1112);
      v80 = *(v0 + 1104);
      v142 = *(v0 + 1040);
      v185 = *(v0 + 1032);
      v164 = *(v0 + 1008);
      v167 = *(v0 + 1000);
      v171 = *(v0 + 1024);
      v139 = *(v0 + 960);
      v140 = *(v0 + 984);
      v195 = *(v0 + 952);
      v141 = *(v0 + 936);
      v145 = *(v0 + 928);
      v190 = *(v0 + 920);
      v176 = *(v0 + 888);
      v181 = *(v0 + 880);
      v149 = *(v0 + 816);
      v151 = *(v0 + 912);
      v143 = *(v0 + 808);
      v147 = *(v0 + 800);
      v154 = *(v0 + 736);
      v81 = *(v0 + 1120) + 15;
      v157 = *(v0 + 728);
      v160 = *(v0 + 744);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v212[0] = v83;
      *v82 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_233297B30;
      v85 = swift_task_alloc();
      sub_23328CE0C();
      sub_23328CD8C();
      v87 = v86;
      v88 = *(v79 + 8);
      v88(v85, v80);

      v89 = MEMORY[0x277D83A80];
      *(v84 + 56) = MEMORY[0x277D839F8];
      *(v84 + 64) = v89;
      *(v84 + 32) = v87;
      v90 = sub_23328D9BC();
      v92 = v91;
      v88(v210, v80);
      v93 = sub_23311A8F4(v90, v92, v212);

      *(v82 + 4) = v93;
      _os_log_impl(&dword_233109000, v200, v77, "Did finish synthesizing samples. total time=%s)", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x23839CFD0](v83, -1, -1);
      MEMORY[0x23839CFD0](v82, -1, -1);

      v151(v149, v147);
      v88(v204, v80);
      v185(v171, v167);
      (*(v154 + 8))(v160, v157);
    }

    else
    {
      v94 = *(v0 + 1112);
      v95 = *(v0 + 1104);
      v96 = *(v0 + 1040);
      v186 = *(v0 + 1032);
      v165 = *(v0 + 1008);
      v168 = *(v0 + 1000);
      v172 = *(v0 + 1024);
      v97 = *(v0 + 984);
      v98 = *(v0 + 936);
      v99 = *(v0 + 928);
      v190 = *(v0 + 920);
      v195 = *(v0 + 952);
      v177 = *(v0 + 888);
      v181 = *(v0 + 880);
      v152 = *(v0 + 816);
      v155 = *(v0 + 912);
      v100 = *(v0 + 808);
      v101 = *(v0 + 800);
      v102 = *(v0 + 736);
      v158 = *(v0 + 728);
      v161 = *(v0 + 744);

      v103 = *(v94 + 8);
      v103(v210, v95);
      v155(v152, v101);
      v103(v204, v95);
      v186(v172, v168);
      (*(v102 + 8))(v161, v158);
    }

    v190(v195, v181);
    v104 = *(v0 + 1128);
    v105 = *(v0 + 1024);
    v106 = *(v0 + 952);
    v107 = *(v0 + 848);
    v108 = *(v0 + 840);
    v109 = *(v0 + 832);
    v110 = *(v0 + 824);
    v111 = *(v0 + 816);
    v112 = *(v0 + 792);
    v169 = *(v0 + 768);
    v173 = *(v0 + 744);
    v178 = *(v0 + 720);
    v182 = *(v0 + 712);
    v187 = *(v0 + 704);
    v191 = *(v0 + 688);
    v196 = *(v0 + 664);
    v201 = *(v0 + 640);
    v205 = *(v0 + 616);

    v113 = *(v0 + 8);

    return v113();
  }

  else
  {
    v40 = (v0 + 16);
    v41 = *(v0 + 1144);
    v42 = v41 + 1;
    v43 = 120 * v41 + 152;
    while (1)
    {
      *(v0 + 1144) = v42;
      v44 = *(v0 + 1088);
      if (v42 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      v45 = *(v0 + 1048);
      v46 = *(v44 + v43 + 32);
      v47 = *(v44 + v43 + 48);
      v48 = *(v44 + v43 + 16);
      *(v0 + 136) = *(v44 + v43);
      *(v0 + 184) = v47;
      *(v0 + 168) = v46;
      *(v0 + 152) = v48;
      v50 = *(v44 + v43 + 80);
      v49 = *(v44 + v43 + 96);
      v51 = *(v44 + v43 + 112);
      *(v0 + 200) = *(v44 + v43 + 64);
      *(v0 + 248) = v51;
      *(v0 + 232) = v49;
      *(v0 + 216) = v50;
      memmove(v40, (v44 + v43), 0x78uLL);
      if (v45 < v42)
      {
        sub_2331B4B78(v0 + 136, v0 + 376);

        sub_2331B4CC8(v40);
        goto LABEL_12;
      }

      v194 = v43;
      v199 = v42;
      v52 = *(v0 + 1016);
      v53 = *(v0 + 952);
      v54 = *(v0 + 904);
      v55 = v40;
      v56 = *(v0 + 896);
      v57 = *(v0 + 880);
      v58 = *(v0 + 704);
      v203 = *(v0 + 696);
      v209 = *(v0 + 1040);
      v59 = swift_task_alloc();
      *(v0 + 1152) = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
      v61 = *(v60 + 48);
      v62 = v58 + *(v60 + 64);
      v56(v58, v53, v57);
      v40 = v55;
      v63 = *v55;
      *(v0 + 496) = *v55;
      *(v58 + v61) = v63;
      sub_2331B4B78(v0 + 136, v0 + 256);
      sub_2331B4BD4(v0 + 496, v0 + 512);
      v64 = sub_2331C464C();
      v65 = *(v64 + 1);
      *v62 = *v64;
      *(v62 + 8) = v65;
      swift_storeEnumTagMultiPayload();
      v66 = v65;
      TTSVBPath.url.getter(v59);
      sub_2331BDC54(v58, type metadata accessor for TTSVBPath);
      sub_23328CC6C();
      v67 = sub_23328D95C();

      LODWORD(v58) = [v209 fileExistsAtPath_];

      if (!v58)
      {
        break;
      }

      v42 = v199 + 1;
      v68 = *(v0 + 1136);
      v69 = *(v0 + 1008) + 8;
      (*(v0 + 1032))(v59, *(v0 + 1000));
      sub_2331B4CC8(v55);

      v43 = v194 + 120;
      if (v199 + 1 == v68)
      {
        goto LABEL_10;
      }
    }

    v211 = v59;
    v150 = *(v0 + 1204);
    v148 = *(v0 + 1200);
    v206 = *(v0 + 872);
    v192 = *(v0 + 856);
    v197 = *(v0 + 864);
    v183 = *(v0 + 832);
    v188 = *(v0 + 800);
    v114 = *(v0 + 736);
    v115 = *(v0 + 728);
    v116 = *(v0 + 712);
    v117 = *(v0 + 664);
    v118 = *(v0 + 656);
    v119 = *(v0 + 640);
    v120 = *(v0 + 632);
    v144 = *(v0 + 648);
    v146 = *(v0 + 624);
    v162 = *(v0 + 616);
    v121 = *(v0 + 608);
    v174 = *(v0 + 688);
    v179 = *(v0 + 1120) + 15;
    (*(v114 + 16))(v116, *(v0 + 744), v115);
    (*(v114 + 56))(v116, 0, 1, v115);
    *(swift_task_alloc() + 16) = v40;
    (*(v118 + 104))(v117, v148, v144);
    (*(v120 + 104))(v119, v150, v146);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2868, &qword_233299298);
    v122 = *(v121 + 72);
    v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_233290950;
    sub_23328D0AC();
    sub_23328D09C();
    sub_23328D08C();
    *(v0 + 576) = v124;
    sub_2331B2AAC(&qword_27DDE2870, MEMORY[0x277D70340]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2878, &unk_2332992A0);
    sub_23315246C(&qword_27DDE2880, &qword_27DDE2878, &unk_2332992A0);
    sub_23328E14C();
    sub_23328D0CC();
    sub_2331B4CC8(v40);

    *(v0 + 1160) = swift_task_alloc();
    sub_23328CE0C();
    v197(v183, v192, v188);
    v125 = sub_23328D6CC();
    v126 = sub_23328DE4C();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = *(v0 + 1096);
      v128 = *(v0 + 1048);
      v129 = swift_slowAlloc();
      *v129 = 134218496;
      *(v129 + 4) = v199 + 1;
      *(v129 + 12) = 2048;
      *(v129 + 14) = v127;
      *(v129 + 22) = 2048;
      *(v129 + 24) = v128;
      _os_log_impl(&dword_233109000, v125, v126, "Will synthesize sample %ld of %ld. (stopping at %ld required)", v129, 0x20u);
      MEMORY[0x23839CFD0](v129, -1, -1);
    }

    v130 = *(v0 + 912);
    v131 = *(v0 + 832);
    v132 = *(v0 + 808);
    v133 = *(v0 + 800);

    *(v0 + 1168) = (v132 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v130(v131, v133);
    v134 = sub_2331B9558(MEMORY[0x277D84F90]);
    *(v0 + 1176) = v134;
    v135 = *(MEMORY[0x277D70328] + 4);
    v207 = (*MEMORY[0x277D70328] + MEMORY[0x277D70328]);
    v136 = swift_task_alloc();
    *(v0 + 1184) = v136;
    *v136 = v0;
    v136[1] = sub_2331A3F38;
    v137 = *(v0 + 984);
    v138 = *(v0 + 688);

    return v207(v138, v211, v134);
  }
}

uint64_t sub_2331A4FD0()
{
  v1 = *(v0 + 1160);
  v29 = *(v0 + 1152);
  v2 = *(v0 + 1112);
  v26 = *(v0 + 1104);
  v3 = *(v0 + 1040);
  v27 = *(v0 + 1032);
  v31 = *(v0 + 1024);
  v33 = *(v0 + 1128);
  v25 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 984);
  v6 = *(v0 + 936);
  v7 = *(v0 + 928);
  v39 = *(v0 + 920);
  v41 = *(v0 + 952);
  v35 = *(v0 + 888);
  v37 = *(v0 + 880);
  v30 = *(v0 + 744);
  v8 = *(v0 + 736);
  v28 = *(v0 + 728);
  v9 = *(v0 + 680);
  v23 = *(v0 + 672);
  v24 = *(v0 + 688);

  v10 = *(v2 + 8);
  v10(v1, v26);
  (*(v9 + 8))(v24, v23);
  v27(v29, v4);
  v10(v33, v26);
  v27(v31, v4);
  (*(v8 + 8))(v30, v28);
  v39(v41, v37);

  v42 = *(v0 + 1192);
  v11 = *(v0 + 848);
  v12 = *(v0 + 840);
  v13 = *(v0 + 832);
  v14 = *(v0 + 824);
  v15 = *(v0 + 816);
  v16 = *(v0 + 792);
  v17 = *(v0 + 768);
  v18 = *(v0 + 744);
  v19 = *(v0 + 720);
  v20 = *(v0 + 712);
  v32 = *(v0 + 704);
  v34 = *(v0 + 688);
  v36 = *(v0 + 664);
  v38 = *(v0 + 640);
  v40 = *(v0 + 616);

  v21 = *(v0 + 8);

  return v21();
}

Swift::Void __swiftcall TTSVBVoiceBankingManager.sendMockUserNotification()()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:*sub_233169640() object:0];
}

uint64_t sub_2331A531C()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v6, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Will import voices from cloud store to local store", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331B9BBC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331B9BC4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_219_0;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_2331A5704()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v6, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Will update download status for local models", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331BA4CC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331BE574;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_264;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_2331A5B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = TTSVBProcessIsVoicebankingd();
  if (result)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v10 = v4;
    sub_233178950(a4, v9, a1, a2, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331A5BC0(unint64_t a1, uint64_t a2)
{
  v340 = a2;
  v299 = type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0);
  v298 = *(v299 - 8);
  v3 = *(v298 + 64);
  MEMORY[0x28223BE20](v299);
  v308 = &v297 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v297 - v7);
  v9 = sub_23328D6EC();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v310 = &v297 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v314 = &v297 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v333 = &v297 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v317 = &v297 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v316 = &v297 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v339 = &v297 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v297 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v297 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v315 = &v297 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v318 = &v297 - v33;
  MEMORY[0x28223BE20](v32);
  v304 = &v297 - v34;
  v35 = type metadata accessor for TTSVBLocalVoiceMO();
  v36 = sub_2331F88A8(v35, &protocol witness table for TTSVBLocalVoiceMO);
  v322 = v35;
  v38 = static DSO<>.fetch(in:config:)(a1, v36, v37, v35, &protocol witness table for TTSVBLocalVoiceMO);

  v40 = v38;
  v330 = v38;
  if (v38 >> 62)
  {
    goto LABEL_137;
  }

  v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v41)
  {
LABEL_138:

    return NSManagedObjectContext.saveOrRollback()();
  }

LABEL_3:
  v42 = 0;
  v325 = 0;
  v338 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
  v329 = v40 & 0xC000000000000001;
  v303 = v40 & 0xFFFFFFFFFFFFFF8;
  v302 = v40 + 32;
  v350 = (v10 + 16);
  v351 = (v10 + 8);
  *&v39 = 136315138;
  v341 = v39;
  *&v39 = 134217984;
  v301 = v39;
  v328 = v41;
  v353 = a1;
  v326 = v8;
  v352 = v9;
  v336 = v26;
  v309 = v29;
  while (1)
  {
    if (v329)
    {
      v43 = v42;
      v44 = MEMORY[0x23839BFC0](v42, v40);
      v45 = __OFADD__(v43, 1);
      v46 = v43 + 1;
      if (v45)
      {
        goto LABEL_135;
      }
    }

    else
    {
      if (v42 >= *(v303 + 16))
      {
        goto LABEL_136;
      }

      v47 = v42;
      v44 = *(v302 + 8 * v42);
      v45 = __OFADD__(v47, 1);
      v46 = v47 + 1;
      if (v45)
      {
        goto LABEL_135;
      }
    }

    v337 = v46;
    v48 = *((*MEMORY[0x277D85000] & *v44) + 0x60);
    v49 = (*MEMORY[0x277D85000] & *v44) + 96;
    v357 = v44;
    v335 = v48;
    v334 = v49;
    v50 = v48();
    v10 = v50;
    v8 = *(v50 + 16);
    if (v8)
    {
      v9 = (v50 + 32);
      v26 = MEMORY[0x277D84F90];
      a1 = 0;
      while (a1 < *(v10 + 16))
      {
        v358 = *&v9[4 * a1];
        v29 = (a1 + 1);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        if (TTSVBCommonVoiceModelMO.status.getter(ObjectType, *(&v358 + 1)) == 7)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v360 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_233154978(0, v26[2] + 1, 1);
            v26 = v360;
          }

          v53 = v358;
          v55 = v26[2];
          v54 = v26[3];
          if (v55 >= v54 >> 1)
          {
            sub_233154978((v54 > 1), v55 + 1, 1);
            v53 = v358;
            v26 = v360;
          }

          v26[2] = v55 + 1;
          *&v26[2 * v55 + 4] = v53;
          if ((v8 - 1) == a1)
          {
            goto LABEL_25;
          }

          ++a1;
        }

        else
        {
          swift_unknownObjectRelease();
          ++a1;
          if (v8 == v29)
          {
            goto LABEL_25;
          }
        }
      }

      __break(1u);
      goto LABEL_134;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_25:

    v56 = v26[2];

    v57 = sub_233225440();
    v58 = *v350;
    if (!v56)
    {
      v69 = v304;
      v9 = v352;
      v58(v304, v57, v352);
      v10 = v357;
      v70 = sub_23328D6CC();
      v71 = sub_23328DE4C();

      v72 = os_log_type_enabled(v70, v71);
      a1 = v353;
      if (v72)
      {
        v26 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v360 = v8;
        *v26 = v341;
        v73 = TTSVBCommonVoiceMO.displayName.getter(v322, &protocol witness table for TTSVBLocalVoiceMO);
        v75 = sub_23311A8F4(v73, v74, &v360);

        *(v26 + 4) = v75;
        v9 = v352;
        _os_log_impl(&dword_233109000, v70, v71, "Found voice but it didn't have any completed models. Skipping: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x23839CFD0](v8, -1, -1);
        MEMORY[0x23839CFD0](v26, -1, -1);
      }

      else
      {
      }

      (*v351)(v69, v9);
      goto LABEL_5;
    }

    v59 = v318;
    v347 = v57;
    v60 = v352;
    v348 = v58;
    (v58)(v318);
    v26 = v357;
    v61 = sub_23328D6CC();
    v62 = sub_23328DE4C();

    v63 = os_log_type_enabled(v61, v62);
    a1 = v353;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v360 = v65;
      *v64 = v341;
      v66 = TTSVBCommonVoiceMO.displayName.getter(v322, &protocol witness table for TTSVBLocalVoiceMO);
      v68 = sub_23311A8F4(v66, v67, &v360);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_233109000, v61, v62, "Considering local voice: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x23839CFD0](v65, -1, -1);
      MEMORY[0x23839CFD0](v64, -1, -1);
    }

    v349 = *v351;
    v349(v59, v60);
    v76 = [v26 voiceID];
    v77 = sub_23328CE8C();
    v78 = *(v77 - 8);
    v79 = *(v78 + 64);
    result = MEMORY[0x28223BE20](v77);
    if (!v76)
    {
      break;
    }

    v8 = type metadata accessor for TTSVBCloudVoiceMO();
    sub_23328CE6C();

    v81 = static TTSVBCloudVoiceMO.voiceExists(withID:moc:)(&v297 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    v327 = v78;
    v82 = v78 + 8;
    v323 = *(v78 + 8);
    v323(&v297 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), v77);
    v29 = &unk_2789C4000;
    if (v81)
    {
      v9 = v352;
      v348(v315, v347, v352);
      v83 = sub_23328D6CC();
      v84 = sub_23328DE4C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_233109000, v83, v84, "Cloud voice exists for local voice: Skipping.", v85, 2u);
        MEMORY[0x23839CFD0](v85, -1, -1);
      }

      v86 = (v349)(v315, v9);
      MEMORY[0x28223BE20](v86);
      v10 = (&v297 - 4);
      *(&v297 - 2) = v26;
      v87 = sub_233175210();
      if (v87)
      {
        MEMORY[0x28223BE20](v87);
        *(&v297 - 2) = sub_2331BD1D4;
        *(&v297 - 1) = v10;
        sub_23328D2BC();
      }

      goto LABEL_5;
    }

    v306 = v82;
    v88 = v309;
    v89 = v352;
    v348(v309, v347, v352);
    v90 = v26;
    v91 = sub_23328D6CC();
    v92 = sub_23328DE4C();

    v93 = os_log_type_enabled(v91, v92);
    v321 = v77;
    v307 = v79;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v360 = v95;
      *v94 = v341;
      v96 = TTSVBCommonVoiceMO.displayName.getter(v322, &protocol witness table for TTSVBLocalVoiceMO);
      v98 = sub_23311A8F4(v96, v97, &v360);

      *(v94 + 4) = v98;
      v29 = &unk_2789C4000;
      _os_log_impl(&dword_233109000, v91, v92, "Making new cloud voice for local voice: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x23839CFD0](v95, -1, -1);
      MEMORY[0x23839CFD0](v94, -1, -1);

      v99 = v309;
      v100 = v352;
    }

    else
    {

      v99 = v88;
      v100 = v89;
    }

    v101 = (v349)(v99, v100);
    MEMORY[0x28223BE20](v101);
    *(&v297 - 2) = v90;
    v102 = sub_233175210();
    if (v102)
    {
      MEMORY[0x28223BE20](v102);
      *(&v297 - 2) = sub_2331BCE7C;
      *(&v297 - 1) = (&v297 - 4);
      sub_23328D2BC();
    }

    v103 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) v29[384]];
    v104 = v90;
    v332 = v103;
    sub_233122464(v104, &protocol witness table for TTSVBLocalVoiceMO, v8, &protocol witness table for TTSVBCloudVoiceMO);
    v331 = v104;

    v324 = (MEMORY[0x277D84F90] >> 62);
    if (MEMORY[0x277D84F90] >> 62)
    {
      v296 = MEMORY[0x277D84F90];
      if (sub_23328E19C())
      {
        sub_2331B9F80(v296, &qword_27DDE2A40, &qword_233299B40, type metadata accessor for TTSVBCloudVoiceSampleMO);
      }

      else
      {
        v105 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v105 = MEMORY[0x277D84FA0];
    }

    v362[0] = v105;
    v106 = (*((*MEMORY[0x277D85000] & *v331) + 0x58))();
    v26 = *(v106 + 16);
    v320 = v106;
    if (v26)
    {
      v107 = v106;
      v346 = type metadata accessor for TTSVBCloudVoiceSampleMO();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v108 = (v107 + 40);
      do
      {
        *&v358 = v26;
        v114 = *(v108 - 1);
        v113 = *v108;
        v354 = v108;
        v355 = v113;
        v115 = objc_allocWithZone(ObjCClassFromMetadata);
        swift_unknownObjectRetain();
        v116 = [v115 v29[384]];
        v117 = sub_2331B2AAC(&qword_27DDE2370, type metadata accessor for TTSVBCloudVoiceSampleMO);
        v356 = v116;
        TTSVBCommonVoiceSampleMO.shallowUpdate(fromSample:)(v114, v113, v346, v117);
        v118 = sub_23328CC9C();
        v357 = &v297;
        v119 = *(v118 - 8);
        v120 = *(v119 + 64);
        MEMORY[0x28223BE20](v118);
        v121 = swift_getObjectType();
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
        v123 = (*(*(v122 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v122 - 8);
        v125 = &v297 - v124;
        v126 = v355;
        v355 = v114;
        v127 = v119;
        TTSVBCommonVoiceSampleMO.url.getter(v121, v126, &v297 - v124);
        if ((*(v119 + 48))(v125, 1, v118) == 1)
        {
          sub_233121E04(v125, &qword_27DDE19A0, &unk_233290360);
          v29 = &unk_2789C4000;
          v109 = v358;
          v110 = v356;
        }

        else
        {
          (*(v119 + 32))(&v297 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0), v125, v118);
          v360 = *sub_2331DEBE8();
          v128 = v360;
          v129 = _TTSVBFileManager.fileExists(_:)();

          v130 = (v119 + 16);
          v131 = &v297 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
          if ((v129 & 1) == 0)
          {
            v150 = v339;
            v151 = v352;
            v152 = (v348)(v339, v347, v352);
            v344 = &v297;
            MEMORY[0x28223BE20](v152);
            v153 = &v297 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*v130)(v153, v153, v118);
            v154 = sub_23328D6CC();
            v155 = sub_23328DE3C();
            if (os_log_type_enabled(v154, v155))
            {
              v156 = swift_slowAlloc();
              v342 = swift_slowAlloc();
              v360 = v342;
              *v156 = v341;
              sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
              v157 = sub_23328E51C();
              v158 = v131;
              v160 = v159;
              v161 = v153;
              v162 = *(v127 + 8);
              v162(v161, v118);
              v163 = sub_23311A8F4(v157, v160, &v360);
              v131 = v158;

              *(v156 + 4) = v163;
              _os_log_impl(&dword_233109000, v154, v155, "Failed to add file backed future for audio recording. File doesn't exist. Skipping.: %s.", v156, 0xCu);
              v164 = v342;
              __swift_destroy_boxed_opaque_existential_0(v342);
              MEMORY[0x23839CFD0](v164, -1, -1);
              MEMORY[0x23839CFD0](v156, -1, -1);

              swift_unknownObjectRelease();
              v165 = v339;
              v166 = v352;
            }

            else
            {

              swift_unknownObjectRelease();
              v176 = v153;
              v162 = *(v127 + 8);
              v162(v176, v118);
              v165 = v150;
              v166 = v151;
            }

            v349(v165, v166);
            v29 = &unk_2789C4000;
            v109 = v358;
            v112 = v354;
            v162(v131, v118);
            a1 = v353;
            goto LABEL_49;
          }

          v132 = v336;
          v133 = v352;
          v134 = (v348)(v336, v347, v352);
          v342 = &v297;
          MEMORY[0x28223BE20](v134);
          v135 = &v297 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
          v136 = *v130;
          v344 = v135;
          v136(v135, v135, v118);
          v137 = sub_23328D6CC();
          v138 = sub_23328DE4C();
          v139 = os_log_type_enabled(v137, v138);
          v343 = v118;
          if (v139)
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v360 = v141;
            *v140 = v341;
            sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
            v142 = sub_23328E51C();
            v144 = v143;
            v145 = v118;
            v146 = *(v127 + 8);
            v146(v135, v145);
            v147 = sub_23311A8F4(v142, v144, &v360);

            *(v140 + 4) = v147;
            _os_log_impl(&dword_233109000, v137, v138, "Adding file backed future for audio recording: %s.", v140, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v141);
            MEMORY[0x23839CFD0](v141, -1, -1);
            MEMORY[0x23839CFD0](v140, -1, -1);

            v148 = v132;
            v149 = v352;
          }

          else
          {

            v167 = v118;
            v146 = *(v127 + 8);
            v146(v135, v167);
            v148 = v132;
            v149 = v133;
          }

          v168 = (v349)(v148, v149);
          v109 = v358;
          v169 = MEMORY[0x28223BE20](v168);
          *(&v297 - 2) = v344;
          v170 = *(v340 + v338);
          v29 = &unk_2789C4000;
          if (v170)
          {
            MEMORY[0x28223BE20](v169);
            *(&v297 - 2) = sub_2331BD10C;
            *(&v297 - 1) = v171;

            sub_23328D2BC();
            sub_2331B9710(v170);
          }

          v172 = objc_opt_self();
          v173 = v344;
          v174 = sub_23328CBCC();
          v175 = [v172 createFutureForFileAtURL_];

          v110 = v356;
          [v356 setAudioFuture_];
          swift_unknownObjectRelease();
          v146(v173, v343);
        }

        swift_beginAccess();
        v111 = v110;
        sub_2331B5838(&v361, v111, type metadata accessor for TTSVBCloudVoiceSampleMO, &qword_27DDE2A40, &qword_233299B40, type metadata accessor for TTSVBCloudVoiceSampleMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        a1 = v353;
        v112 = v354;
LABEL_49:
        v108 = v112 + 2;
        v26 = (v109 - 1);
      }

      while (v26);
    }

    v177 = v352;
    v348(v316, v347, v352);
    v178 = sub_23328D6CC();
    v179 = sub_23328DE4C();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = v301;
      swift_beginAccess();
      if ((v362[0] & 0xC000000000000001) != 0)
      {

        v26 = sub_23328E19C();
      }

      else
      {
        v26 = *(v362[0] + 16);
      }

      *(v180 + 4) = v26;
      _os_log_impl(&dword_233109000, v178, v179, "Adding %ld samples to cloud voice", v180, 0xCu);
      MEMORY[0x23839CFD0](v180, -1, -1);
    }

    v181 = (v349)(v316, v177);
    v182 = MEMORY[0x28223BE20](v181);
    *(&v297 - 2) = v362;
    v183 = *(v340 + v338);
    if (v183)
    {
      MEMORY[0x28223BE20](v182);
      *(&v297 - 2) = sub_2331BCF0C;
      *(&v297 - 1) = v184;

      sub_23328D2BC();
      sub_2331B9710(v183);
    }

    swift_beginAccess();
    v185 = v362[0];
    type metadata accessor for TTSVBCloudVoiceSampleMO();
    sub_2331B2AAC(&qword_27DDE2A30, type metadata accessor for TTSVBCloudVoiceSampleMO);

    v186 = sub_23328DD0C();

    [v332 addSamples_];

    v313 = v185;
    if (v324 && (v187 = MEMORY[0x277D84F90], sub_23328E19C()))
    {
      sub_2331B9F80(v187, &qword_27DDE2A48, &unk_233299B48, type metadata accessor for TTSVBCloudVoiceModelMO);
    }

    else
    {
      v188 = MEMORY[0x277D84FA0];
    }

    v361 = v188;
    v189 = v335();
    v9 = *(v189 + 16);
    *&v358 = v189;
    if (v9)
    {
      v190 = v189;
      v26 = type metadata accessor for TTSVBCloudVoiceModelMO();
      v191 = swift_getObjCClassFromMetadata();
      v192 = (v190 + 40);
      do
      {
        v194 = *(v192 - 1);
        v193 = *v192;
        v195 = objc_allocWithZone(v191);
        swift_unknownObjectRetain();
        v196 = [v195 v29[384]];
        v197 = sub_2331B2AAC(&qword_27DDE2358, type metadata accessor for TTSVBCloudVoiceModelMO);
        TTSVBCommonVoiceModelMO.shallowUpdate(fromModel:)(v194, v193, v26, v197);
        swift_beginAccess();
        v198 = v196;
        sub_2331B5838(&v359, v198, type metadata accessor for TTSVBCloudVoiceModelMO, &qword_27DDE2A48, &unk_233299B48, type metadata accessor for TTSVBCloudVoiceModelMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        v192 += 2;
        v9 = (v9 - 1);
      }

      while (v9);
    }

    v199 = v352;
    v348(v317, v347, v352);
    v200 = sub_23328D6CC();
    v201 = sub_23328DE4C();
    v202 = os_log_type_enabled(v200, v201);
    v203 = v327;
    if (v202)
    {
      v204 = swift_slowAlloc();
      *v204 = v301;
      swift_beginAccess();
      if ((v361 & 0xC000000000000001) != 0)
      {

        v26 = sub_23328E19C();
      }

      else
      {
        v26 = *(v361 + 16);
      }

      *(v204 + 4) = v26;
      _os_log_impl(&dword_233109000, v200, v201, "Adding %ld models to cloud voice", v204, 0xCu);
      MEMORY[0x23839CFD0](v204, -1, -1);
    }

    v205 = (v349)(v317, v199);
    v206 = MEMORY[0x28223BE20](v205);
    *(&v297 - 2) = &v361;
    v207 = *(v340 + v338);
    if (v207)
    {
      MEMORY[0x28223BE20](v206);
      *(&v297 - 2) = sub_2331BD00C;
      *(&v297 - 1) = v208;

      sub_23328D2BC();
      sub_2331B9710(v207);
    }

    swift_beginAccess();
    v10 = v361;
    v8 = type metadata accessor for TTSVBCloudVoiceModelMO();
    sub_2331B2AAC(&qword_27DDE2A38, type metadata accessor for TTSVBCloudVoiceModelMO);

    v209 = sub_23328DD0C();

    [v332 addModels_];

    v312 = v10;
    if ((v10 & 0xC000000000000001) != 0)
    {

      sub_23328E18C();
      sub_23328DD4C();
      v10 = v362[1];
      v210 = v362[2];
      v211 = v362[3];
      v212 = v362[4];
      v29 = v362[5];
    }

    else
    {
      v213 = -1 << *(v10 + 32);
      v210 = v10 + 56;
      v214 = ~v213;
      v215 = -v213;
      if (v215 < 64)
      {
        v216 = ~(-1 << v215);
      }

      else
      {
        v216 = -1;
      }

      v29 = (v216 & *(v10 + 56));

      v211 = v214;
      v212 = 0;
    }

    v311 = v211;
    v217 = (v211 + 64) >> 6;
    v320 = (v203 + 56);
    v319 = (v203 + 48);
    v305 = (v203 + 16);
    v344 = v217;
    v354 = v8;
    v346 = v210;
    ObjCClassFromMetadata = v10;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_93;
    }

LABEL_90:
    while (2)
    {
      v218 = sub_23328E1BC();
      if (v218)
      {
        v359 = v218;
        swift_dynamicCast();
        v219 = v360;
        v220 = v212;
        v9 = v29;
        if (v360)
        {
          while (1)
          {
            *&v358 = v9;
            v223 = sub_2331B2AAC(&qword_27DDE2358, type metadata accessor for TTSVBCloudVoiceModelMO);
            v9 = v219;
            if (TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v8, v223))
            {
              break;
            }

            v230 = v333;
            v231 = v352;
            v348(v333, v347, v352);
            v232 = v9;
            v233 = sub_23328D6CC();
            v234 = sub_23328DE1C();

            if (!os_log_type_enabled(v233, v234))
            {

              v349(v230, v231);
LABEL_125:
              v212 = v220;
              v29 = v358;
              goto LABEL_126;
            }

            v9 = swift_slowAlloc();
            v235 = swift_slowAlloc();
            v360 = v235;
            *v9 = v341;
            v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
            v237 = *(*(v236 - 8) + 64);
            MEMORY[0x28223BE20](v236 - 8);
            v26 = ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
            v238 = (&v297 - v26);
            v239 = [v232 modelID];
            v355 = &v297;
            v240 = MEMORY[0x28223BE20](v239);
            v241 = (&v297 - v26);
            v357 = v235;
            v356 = &v297;
            if (v240)
            {
              v26 = v240;
              sub_23328CE6C();

              v242 = 0;
            }

            else
            {
              v242 = 1;
            }

            v274 = v321;
            (*v320)(v241, v242, 1, v321);
            sub_233121D9C(v241, v238, &qword_27DDE19B0, &qword_233290370);
            v275 = (*v319)(v238, 1, v274);
            if (v275)
            {
              sub_233121E04(v238, &qword_27DDE19B0, &qword_233290370);
              v276 = 0xE500000000000000;
              v277 = 0x3E6C696E3CLL;
            }

            else
            {
              v343 = &v297;
              MEMORY[0x28223BE20](v275);
              v26 = (&v297 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0));
              (*v305)(v26, v238, v274);
              sub_233121E04(v238, &qword_27DDE19B0, &qword_233290370);
              v292 = sub_23328CE3C();
              v276 = v293;
              v323(v26, v274);
              v277 = v292;
            }

            v294 = sub_23311A8F4(v277, v276, &v360);

            *(v9 + 1) = v294;
            _os_log_impl(&dword_233109000, v233, v234, "Skipping file-backed future creation for model: %s. Model version does not use file backed futures", v9, 0xCu);
            v295 = v357;
            __swift_destroy_boxed_opaque_existential_0(v357);
            MEMORY[0x23839CFD0](v295, -1, -1);
            MEMORY[0x23839CFD0](v9, -1, -1);

            v349(v333, v352);
            v212 = v220;
            v29 = v358;
            a1 = v353;
LABEL_126:
            v8 = v354;
            v210 = v346;
            v10 = ObjCClassFromMetadata;
            v217 = v344;
            if (ObjCClassFromMetadata < 0)
            {
              goto LABEL_90;
            }

LABEL_93:
            v221 = v212;
            v222 = v29;
            v220 = v212;
            if (!v29)
            {
              while (1)
              {
                v220 = v221 + 1;
                if (__OFADD__(v221, 1))
                {
                  break;
                }

                if (v220 >= v217)
                {
                  v29 = 0;
                  goto LABEL_129;
                }

                v222 = *(v210 + 8 * v220);
                ++v221;
                if (v222)
                {
                  goto LABEL_97;
                }
              }

LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              v41 = sub_23328E19C();
              v40 = v330;
              if (!v41)
              {
                goto LABEL_138;
              }

              goto LABEL_3;
            }

LABEL_97:
            v9 = ((v222 - 1) & v222);
            v219 = *(*(v10 + 48) + ((v220 << 9) | (8 * __clz(__rbit64(v222)))));
            if (!v219)
            {
              goto LABEL_129;
            }
          }

          v224 = sub_23328CC9C();
          v26 = &v297;
          v343 = *(v224 - 8);
          v225 = v343[8];
          v226 = MEMORY[0x28223BE20](v224);
          v227 = (v225 + 15) & 0xFFFFFFFFFFFFFFF0;
          v357 = &v297;
          MEMORY[0x28223BE20](v226);
          v228 = v326;
          (*((*MEMORY[0x277D85000] & *v219) + 0x60))(0);
          v229 = type metadata accessor for TTSVBVoiceModel();
          if ((*(*(v229 - 8) + 48))(v228, 1, v229) == 1)
          {

            sub_233121E04(v228, &qword_27DDE2388, &qword_233297728);
            v212 = v220;
            v29 = v358;
            v8 = v354;
            v210 = v346;
            v10 = ObjCClassFromMetadata;
            v217 = v344;
            a1 = v353;
            if (ObjCClassFromMetadata < 0)
            {
              continue;
            }

            goto LABEL_93;
          }

          v334 = &v297;
          TTSVBVoiceModel.url.getter(&v297 - v227);
          sub_2331BDC54(v228, type metadata accessor for TTSVBVoiceModel);
          v243 = v343;
          (v343[4])(&v297 - v227, &v297 - v227, v224);
          v244 = v314;
          v26 = v352;
          v245 = (v348)(v314, v347, v352);
          v357 = &v297;
          MEMORY[0x28223BE20](v245);
          v246 = &v297 - v227;
          v247 = v243[2];
          v342 = (&v297 - v227);
          v247(&v297 - v227, &v297 - v227, v224);
          v248 = sub_23328D6CC();
          v249 = sub_23328DE4C();
          v250 = os_log_type_enabled(v248, v249);
          v335 = v9;
          v327 = v224;
          if (v250)
          {
            v26 = swift_slowAlloc();
            v251 = swift_slowAlloc();
            v360 = v251;
            *v26 = v341;
            v252 = sub_23328CC6C();
            v254 = v253;
            v324 = v243[1];
            v324(v246, v224);
            v255 = sub_23311A8F4(v252, v254, &v360);
            v256 = v352;

            *(v26 + 4) = v255;
            _os_log_impl(&dword_233109000, v248, v249, "Creating file futures for model at %s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v251);
            MEMORY[0x23839CFD0](v251, -1, -1);
            MEMORY[0x23839CFD0](v26, -1, -1);

            v349(v314, v256);
            v257 = v308;
            v258 = v310;
            v259 = v325;
          }

          else
          {

            v324 = v243[1];
            v324(v246, v224);
            v349(v244, v26);
            v257 = v308;
            v258 = v310;
            v259 = v325;
            v256 = v26;
          }

          v360 = *sub_2331DEBE8();
          v260 = v360;
          v261 = v342;
          v262 = _TTSVBFileManager.getRelativePathsForFilesInTree(_:)(v342);
          v9 = v259;
          a1 = v353;
          if (v259)
          {

            v348(v258, v347, v256);
            v263 = v259;
            v264 = sub_23328D6CC();
            v265 = sub_23328DE3C();

            if (os_log_type_enabled(v264, v265))
            {
              v266 = swift_slowAlloc();
              v267 = swift_slowAlloc();
              v360 = v267;
              *v266 = v341;
              v268 = sub_23328CA6C();
              v269 = v9;
              v9 = [v268 description];

              v270 = sub_23328D98C();
              v272 = v271;

              v26 = sub_23311A8F4(v270, v272, &v360);

              *(v266 + 4) = v26;
              _os_log_impl(&dword_233109000, v264, v265, "cannot make file future: %s", v266, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v267);
              MEMORY[0x23839CFD0](v267, -1, -1);
              MEMORY[0x23839CFD0](v266, -1, -1);

              v349(v310, v352);
              v273 = v342;
            }

            else
            {

              v349(v258, v256);
              v273 = v261;
            }

            v324(v273, v327);
            v325 = 0;
          }

          else
          {
            v278 = v262;
            v325 = 0;

            v279 = v278[2];
            if (v279)
            {
              type metadata accessor for TTSVBCloudVoiceModelFileMO();
              v357 = swift_getObjCClassFromMetadata();
              v280 = &v257[*(v299 + 20)];
              v356 = objc_opt_self();
              v281 = (*(v298 + 80) + 32) & ~*(v298 + 80);
              v282 = v257;
              v300 = v278;
              v283 = v278 + v281;
              v355 = *(v298 + 72);
              v26 = &unk_2789C4000;
              v284 = v335;
              do
              {
                sub_2331BDBEC(v283, v282, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
                v285 = objc_allocWithZone(v357);
                v286 = [v285 initWithContext_];
                v287 = *v280;
                v288 = *(v280 + 1);
                v289 = sub_23328D95C();
                [v286 setRelativePath_];

                [v286 setModel_];
                v290 = sub_23328CBCC();
                v9 = [v356 createFutureForFileAtURL_];

                [v286 setFileFuture_];
                swift_unknownObjectRelease();
                sub_2331BDC54(v282, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
                v283 += v355;
                --v279;
              }

              while (v279);

              a1 = v353;
            }

            else
            {
            }

            v324(v342, v327);
          }

          goto LABEL_125;
        }
      }

      break;
    }

LABEL_129:
    sub_233113BBC();

LABEL_5:
    v42 = v337;
    v40 = v330;
    if (v337 == v328)
    {
      goto LABEL_138;
    }
  }

  __break(1u);
  return result;
}

void sub_2331A899C(void *a1, char *a2)
{
  v471 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v435 = &v409 - v5;
  v427 = sub_23328D7CC();
  v6 = *(v427 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v427);
  v426 = &v409 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = sub_23328D80C();
  v9 = *(v425 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v425);
  v424 = &v409 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D6EC();
  v434 = *(v12 - 8);
  v13 = v434[8];
  MEMORY[0x28223BE20](v12);
  v430 = &v409 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v443 = &v409 - v16;
  MEMORY[0x28223BE20](v17);
  v436 = &v409 - v18;
  MEMORY[0x28223BE20](v19);
  v432 = &v409 - v20;
  MEMORY[0x28223BE20](v21);
  v429 = &v409 - v22;
  MEMORY[0x28223BE20](v23);
  v428 = &v409 - v24;
  MEMORY[0x28223BE20](v25);
  v431 = &v409 - v26;
  MEMORY[0x28223BE20](v27);
  v441 = &v409 - v28;
  MEMORY[0x28223BE20](v29);
  *&v457 = &v409 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v409 - v32;
  MEMORY[0x28223BE20](v34);
  v444 = &v409 - v35;
  v36 = type metadata accessor for TTSVBCloudVoiceMO();
  v37 = sub_2331F88A8(v36, &protocol witness table for TTSVBCloudVoiceMO);
  v459 = v36;
  v39 = static DSO<>.fetch(in:config:)(a1, v37, v38, v36, &protocol witness table for TTSVBCloudVoiceMO);

  v40 = type metadata accessor for TTSVBLocalVoiceMO();
  v41 = sub_2331F88A8(v40, &protocol witness table for TTSVBLocalVoiceMO);
  v476 = a1;
  v464 = v40;
  v442 = static DSO<>.fetch(in:config:)(a1, v41, v42, v40, &protocol witness table for TTSVBLocalVoiceMO);

  v486 = MEMORY[0x277D84F90];
  v433 = v39;
  if (v39 >> 62)
  {
    goto LABEL_278;
  }

  v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v473 = v12;
  v45 = v444;
  if (v44)
  {
    v46 = 0;
    v458 = 0;
    v423 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
    v455 = v433 & 0xC000000000000001;
    v456 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
    v453 = v433 + 32;
    v454 = v433 & 0xFFFFFFFFFFFFFF8;
    v467 = (v434 + 2);
    v466 = (v434 + 1);
    v421 = (v6 + 8);
    v422 = v481;
    v420 = (v9 + 8);
    *&v43 = 136315138;
    v440 = v43;
    v452 = MEMORY[0x277D84F90] >> 62;
    *&v43 = 134217984;
    v439 = v43;
    *&v43 = 136316418;
    v419 = v43;
    v438 = v33;
    v449 = v44;
LABEL_8:
    if (v455)
    {
      v47 = v46;
      v48 = MEMORY[0x23839BFC0](v46, v433);
    }

    else
    {
      if (v46 >= *(v454 + 16))
      {
        goto LABEL_273;
      }

      v47 = v46;
      v48 = *(v453 + 8 * v46);
    }

    v6 = v48;
    v49 = __OFADD__(v47, 1);
    v9 = v47 + 1;
    if (v49)
    {
      goto LABEL_272;
    }

    v463 = v9;
    v50 = [v48 voiceID];
    v51 = sub_23328CE8C();
    v52 = *(v51 - 8);
    v53 = v52[8];
    MEMORY[0x28223BE20](v51);
    v450 = v54;
    v55 = &v409 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v50)
    {
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
      return;
    }

    sub_23328CE6C();

    v56 = static TTSVBLocalVoiceMO.voiceExists(withID:moc:)(v55, v476);
    v451 = v52;
    v447 = v52[1];
    v448 = v52 + 1;
    v447(v55, v51);
    v57 = sub_233225440();
    v58 = *v467;
    if (v56)
    {
      (v58)(v45, v57, v12);
      v6 = v6;
      v9 = sub_23328D6CC();
      v59 = sub_23328DE4C();

      if (os_log_type_enabled(v9, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v480 = v61;
        *v60 = v440;
        v62 = TTSVBCommonVoiceMO.displayName.getter(v459, &protocol witness table for TTSVBCloudVoiceMO);
        v64 = sub_23311A8F4(v62, v63, &v480);

        *(v60 + 4) = v64;
        v12 = v473;
        _os_log_impl(&dword_233109000, v9, v59, "Local voice already exists for cloud voice: %s. Moving on to next cloud voice", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        v65 = v61;
        v45 = v444;
        MEMORY[0x23839CFD0](v65, -1, -1);
        MEMORY[0x23839CFD0](v60, -1, -1);
      }

      else
      {
      }

      (*v466)(v45, v12);
      goto LABEL_7;
    }

    v468 = v57;
    v58(v33);
    v66 = v6;
    v67 = sub_23328D6CC();
    v68 = sub_23328DE4C();

    v69 = os_log_type_enabled(v67, v68);
    v437 = v51;
    if (v69)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v480 = v71;
      *v70 = v440;
      v72 = TTSVBCommonVoiceMO.displayName.getter(v459, &protocol witness table for TTSVBCloudVoiceMO);
      v74 = sub_23311A8F4(v72, v73, &v480);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_233109000, v67, v68, "Making new local voice for cloud voice: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x23839CFD0](v71, -1, -1);
      MEMORY[0x23839CFD0](v70, -1, -1);

      v75 = *v466;
      v76 = v33;
      v77 = v473;
    }

    else
    {

      v75 = *v466;
      v76 = v33;
      v77 = v12;
    }

    v472 = v75;
    v78 = (v75)(v76, v77);
    MEMORY[0x28223BE20](v78);
    *(&v409 - 2) = v66;
    v79 = sub_233175210();
    if (v79)
    {
      MEMORY[0x28223BE20](v79);
      *(&v409 - 2) = sub_2331B9BEC;
      *(&v409 - 1) = (&v409 - 4);
      sub_23328D2BC();
    }

    v80 = v464;
    v81 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v82 = [v81 initWithContext_];
    v83 = v66;
    v465 = v82;
    sub_233122464(v83, &protocol witness table for TTSVBCloudVoiceMO, v80, &protocol witness table for TTSVBLocalVoiceMO);
    v462 = v83;

    if (v452 && (v310 = MEMORY[0x277D84F90], sub_23328E19C()))
    {
      sub_2331B9F80(v310, &qword_27DDE2980, &qword_233299A58, type metadata accessor for TTSVBLocalVoiceSampleMO);
    }

    else
    {
      v84 = MEMORY[0x277D84FA0];
    }

    v470 = v58;
    v485 = v84;
    v85 = (*((*MEMORY[0x277D85000] & *v462) + 0x58))();
    v86 = *(v85 + 2);
    v475 = v85;
    if (v86)
    {
      v87 = v85;
      *&v477 = type metadata accessor for TTSVBLocalVoiceSampleMO();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v89 = (v87 + 40);
      v90 = v476;
      do
      {
        v92 = *(v89 - 1);
        v91 = *v89;
        v93 = objc_allocWithZone(ObjCClassFromMetadata);
        swift_unknownObjectRetain();
        v94 = [v93 initWithContext_];
        v95 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);
        TTSVBCommonVoiceSampleMO.shallowUpdate(fromSample:)(v92, v91, v477, v95);
        swift_beginAccess();
        v96 = v94;
        sub_2331B5838(&v478, v96, type metadata accessor for TTSVBLocalVoiceSampleMO, &qword_27DDE2980, &qword_233299A58, type metadata accessor for TTSVBLocalVoiceSampleMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        v89 += 2;
        --v86;
      }

      while (v86);
    }

    v97 = v473;
    (v470)(v457, v468, v473);
    v98 = sub_23328D6CC();
    v99 = sub_23328DE4C();
    v100 = os_log_type_enabled(v98, v99);
    v101 = MEMORY[0x277D84F90];
    if (v100)
    {
      v102 = swift_slowAlloc();
      *v102 = v439;
      swift_beginAccess();
      if ((v485 & 0xC000000000000001) != 0)
      {

        v103 = sub_23328E19C();
      }

      else
      {
        v103 = *(v485 + 16);
      }

      *(v102 + 4) = v103;
      _os_log_impl(&dword_233109000, v98, v99, "Adding %ld samples to local voice", v102, 0xCu);
      MEMORY[0x23839CFD0](v102, -1, -1);
    }

    v104 = (v472)(v457, v97);
    MEMORY[0x28223BE20](v104);
    *(&v409 - 2) = &v485;
    v106 = *&v471[v456];
    if (v106)
    {
      MEMORY[0x28223BE20](v105);
      *(&v409 - 2) = sub_2331B9C7C;
      *(&v409 - 1) = v107;

      sub_23328D2BC();
      sub_2331B9710(v106);
    }

    swift_beginAccess();
    v108 = v485;
    type metadata accessor for TTSVBLocalVoiceSampleMO();
    sub_2331B2AAC(&qword_27DDE2968, type metadata accessor for TTSVBLocalVoiceSampleMO);

    v109 = sub_23328DD0C();

    [v465 addSamples_];

    v445 = v108;
    if (v452 && sub_23328E19C())
    {
      sub_2331B9F80(v101, &qword_27DDE2988, &unk_233299A60, type metadata accessor for TTSVBLocalVoiceModelMO);
    }

    else
    {
      v110 = MEMORY[0x277D84FA0];
    }

    v484 = v110;
    v111 = (*((*MEMORY[0x277D85000] & *v462) + 0x60))();
    v112 = *(v111 + 16);
    if (v112)
    {
      v113 = type metadata accessor for TTSVBLocalVoiceModelMO();
      v114 = swift_getObjCClassFromMetadata();
      v115 = (v111 + 40);
      do
      {
        v117 = *(v115 - 1);
        v118 = *v115;
        v119 = objc_allocWithZone(v114);
        swift_unknownObjectRetain();
        v120 = [v119 initWithContext_];
        v121 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
        TTSVBCommonVoiceModelMO.shallowUpdate(fromModel:)(v117, v118, v113, v121);
        if ((TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v113, v121) & 1) == 0)
        {
          TTSVBCommonVoiceModelMO.trainingStatus.setter(0, v113, v121);
          TTSVBCommonVoiceModelMO.status.setter(0, v113, v121);
        }

        swift_beginAccess();
        v116 = v120;
        sub_2331B5838(&v478, v116, type metadata accessor for TTSVBLocalVoiceModelMO, &qword_27DDE2988, &unk_233299A60, type metadata accessor for TTSVBLocalVoiceModelMO);
        swift_endAccess();

        swift_unknownObjectRelease();
        v115 += 2;
        --v112;
      }

      while (v112);
    }

    v122 = v441;
    v123 = v473;
    (v470)(v441, v468, v473);
    v124 = sub_23328D6CC();
    v125 = sub_23328DE4C();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = v439;
      swift_beginAccess();
      if ((v484 & 0xC000000000000001) != 0)
      {

        v127 = sub_23328E19C();
      }

      else
      {
        v127 = *(v484 + 16);
      }

      *(v126 + 4) = v127;
      _os_log_impl(&dword_233109000, v124, v125, "Adding %ld models to local voice", v126, 0xCu);
      MEMORY[0x23839CFD0](v126, -1, -1);
    }

    v128 = (v472)(v122, v123);
    v9 = &v409;
    MEMORY[0x28223BE20](v128);
    *(&v409 - 2) = &v484;
    v130 = *&v471[v456];
    if (v130)
    {
      MEMORY[0x28223BE20](v129);
      *(&v409 - 2) = sub_2331B9D7C;
      *(&v409 - 1) = v131;

      sub_23328D2BC();
      sub_2331B9710(v130);
    }

    swift_beginAccess();
    v33 = v484;
    v132 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v133 = sub_2331B2AAC(&qword_27DDE2970, type metadata accessor for TTSVBLocalVoiceModelMO);

    v134 = sub_23328DD0C();

    [v465 addModels_];

    v460 = v133;
    *&v461 = v33 & 0xC000000000000001;
    v469 = v33;
    *&v477 = v132;
    if ((v33 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_23328E18C();
      sub_23328DD4C();
      v33 = v487;
      v6 = v488;
      v135 = v489;
      v136 = v490;
      v12 = v491;
    }

    else
    {
      v137 = -1 << *(v33 + 32);
      v6 = v33 + 56;
      v135 = ~v137;
      v138 = -v137;
      if (v138 < 64)
      {
        v139 = ~(-1 << v138);
      }

      else
      {
        v139 = -1;
      }

      v12 = v139 & *(v33 + 56);
      swift_bridgeObjectRetain_n();
      v136 = 0;
    }

    v446 = v135;
    v140 = (v135 + 64) >> 6;
    while (1)
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        v146 = sub_23328E1BC();
        if (!v146)
        {
          goto LABEL_74;
        }

        *&v478 = v146;
        swift_dynamicCast();
        v145 = v480;
        v143 = v136;
        v144 = v12;
        if (!v480)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v141 = v136;
        v142 = v12;
        v143 = v136;
        if (!v12)
        {
          while (1)
          {
            v143 = v141 + 1;
            if (__OFADD__(v141, 1))
            {
              __break(1u);
              goto LABEL_269;
            }

            if (v143 >= v140)
            {
              break;
            }

            v142 = *(v6 + 8 * v143);
            v141 = (v141 + 1);
            if (v142)
            {
              goto LABEL_64;
            }
          }

LABEL_74:
          sub_233113BBC();
          v9 = v469;

LABEL_75:
          v154 = v477;
          if (!v461)
          {
            goto LABEL_93;
          }

          goto LABEL_76;
        }

LABEL_64:
        v144 = (v142 - 1) & v142;
        v145 = *(*(v33 + 48) + ((v143 << 9) | (8 * __clz(__rbit64(v142)))));
        if (!v145)
        {
          goto LABEL_74;
        }
      }

      v474 = v136;
      v147 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
      v475 = v145;
      TTSVBCommonVoiceModelMO.typedVersion.getter(&v480, v477, v147);
      v9 = *(&v480 + 1);
      v148 = v480;
      v149 = sub_233167B90();
      v150 = v149[1];
      if (!v9)
      {
        break;
      }

      v151 = *v149;
      v478 = __PAIR128__(v9, v148);
      if (!v150)
      {

LABEL_57:

        goto LABEL_58;
      }

      v482 = v151;
      v483 = v150;
      sub_23315CC14();

      v152 = sub_23328D90C();

      if (v152)
      {
        sub_233113BBC();
LABEL_79:

        v159 = TTSVBIsPersonalVoiceVersion2Enabled();
        v160 = v473;
        v161 = v432;
        v154 = v477;
        v162 = v470;
        if (v159 && TTSVBDeviceSupportsV2Voices()())
        {
          v162(v431, v468, v160);
          v163 = sub_23328D6CC();
          v164 = sub_23328DE4C();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&dword_233109000, v163, v164, "Found new LLASSI voice model when importing cloud voices to local database.", v165, 2u);
            MEMORY[0x23839CFD0](v165, -1, -1);
          }

          v166 = (v472)(v431, v160);
          v33 = &v409;
          v167 = v450;
          v168 = MEMORY[0x28223BE20](v166);
          v169 = (&v409 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0));
          v170 = [v465 voiceID];
          MEMORY[0x28223BE20](v170);
          v172 = v451;
          if (v171)
          {
            v417 = &v409;
            v173 = v171;
            sub_23328CE6C();

            v174 = v172[4];
            v175 = v437;
            v446 = v172 + 4;
            v418 = v174;
            v174(v169, v169, v437);
            v176 = v428;
            v162(v428, v468, v160);
            v177 = v475;
            v178 = sub_23328D6CC();
            v179 = sub_23328DE4C();

            v180 = os_log_type_enabled(v178, v179);
            v475 = v169;
            v474 = v177;
            if (v180)
            {
              v181 = swift_slowAlloc();
              v182 = swift_slowAlloc();
              *&v480 = v182;
              *v181 = v440;
              v183 = [v177 voice];
              if (v183 && (v184 = v183, v185 = [v183 name], v184, v185))
              {
                v186 = sub_23328D98C();
                v188 = v187;

                v189 = v186;
                v160 = v473;
              }

              else
              {
                v188 = 0xE600000000000000;
                v189 = 0x3E656E6F6E3CLL;
              }

              v252 = sub_23311A8F4(v189, v188, &v480);

              *(v181 + 4) = v252;
              _os_log_impl(&dword_233109000, v178, v179, "LLASSI voice model: %s. Attempting to train.", v181, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v182);
              MEMORY[0x23839CFD0](v182, -1, -1);
              MEMORY[0x23839CFD0](v181, -1, -1);

              (v472)(v428, v160);
              v175 = v437;
              v172 = v451;
            }

            else
            {

              (v472)(v176, v160);
            }

            v253 = [v474 modelID];
            v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
            v416 = &v409;
            v412 = *(v254 - 8);
            v413 = *(v412 + 64);
            MEMORY[0x28223BE20](v254 - 8);
            v256 = &v409 - v255;
            if (v253)
            {
              sub_23328CE6C();

              v257 = 0;
            }

            else
            {
              v257 = 1;
            }

            v258 = v172[7];
            v468 = v256;
            v259 = v258(v256, v257, 1, v175);
            v415 = &v409;
            v260 = v450;
            v261 = MEMORY[0x28223BE20](v259);
            v262 = (v260 + 15) & 0xFFFFFFFFFFFFFFF0;
            v264 = v172[2];
            v263 = v172 + 2;
            v265 = v475;
            v264(&v409 - v262, v475, v175, v261);
            v266 = *(v263 + 64);
            v267 = v263;
            v268 = (v266 + 16) & ~v266;
            v410 = v266;
            v411 = v266 | 7;
            v414 = swift_allocObject();
            v418(v414 + v268, &v409 - v262, v175);
            v269 = sub_233225514();
            v270 = v429;
            v271 = (v470)(v429, v269, v160);
            v470 = &v409;
            v272 = v265;
            v273 = v264;
            v274 = MEMORY[0x28223BE20](v271);
            v275 = v160;
            v276 = &v409 - v262;
            v451 = v267;
            v264(&v409 - v262, v272, v175, v274);
            v277 = sub_23328D6CC();
            v278 = sub_23328DE4C();
            if (os_log_type_enabled(v277, v278))
            {
              v279 = swift_slowAlloc();
              v280 = swift_slowAlloc();
              *&v480 = v280;
              *v279 = v419;
              v281 = sub_23328CE3C();
              v283 = v282;
              v447(v276, v175);
              v284 = sub_23311A8F4(v281, v283, &v480);

              *(v279 + 4) = v284;
              *(v279 + 12) = 2048;
              *(v279 + 14) = 2;
              *(v279 + 22) = 1024;
              *(v279 + 24) = 1;
              *(v279 + 28) = 1024;
              *(v279 + 30) = 1;
              *(v279 + 34) = 2048;
              *(v279 + 36) = -1;
              *(v279 + 44) = 2080;
              *(v279 + 46) = sub_23311A8F4(0x6F63655272657375, 0xEE0073676E696472, &v480);
              _os_log_impl(&dword_233109000, v277, v278, "Got request to train voiceID=%s mode=%ld startImmediately=%{BOOL}d validateTrainingSamples=%{BOOL}d overrideMinimumPhraseCount=%ld trainingDataSource=%s", v279, 0x36u);
              swift_arrayDestroy();
              v285 = v280;
              v272 = v475;
              MEMORY[0x23839CFD0](v285, -1, -1);
              MEMORY[0x23839CFD0](v279, -1, -1);

              v286 = (v472)(v429, v473);
            }

            else
            {

              v447(&v409 - v262, v175);
              v286 = (v472)(v270, v275);
            }

            v287 = v410;
            MEMORY[0x28223BE20](v286);
            *(&v409 - 6) = v272;
            *(&v409 - 5) = 2;
            *(&v409 - 16) = 257;
            *(&v409 - 3) = 0;
            *(&v409 - 8) = 1;
            v289 = *&v471[v456];
            if (v289)
            {
              MEMORY[0x28223BE20](v288);
              *(&v409 - 2) = sub_2331BE524;
              *(&v409 - 1) = v290;

              sub_23328D2BC();
              v288 = sub_2331B9710(v289);
            }

            v472 = &v409;
            v409 = *&v471[v423];
            v291 = v450;
            v292 = MEMORY[0x28223BE20](v288);
            v293 = &v409 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0);
            v294 = v437;
            v295 = v273(v293, v475, v437, v292);
            v470 = &v409;
            v296 = v413;
            MEMORY[0x28223BE20](v295);
            v297 = &v409 - ((v296 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_233121D34(v468, v297, &qword_27DDE19B0, &qword_233290370);
            v298 = (v287 + 50) & ~v287;
            v299 = v298 + v291;
            v300 = (v298 + v291 + *(v412 + 80) + 1) & ~*(v412 + 80);
            v301 = (v296 + v300 + 7) & 0xFFFFFFFFFFFFFFF8;
            v302 = swift_allocObject();
            v303 = v471;
            *(v302 + 16) = v471;
            *(v302 + 24) = 2;
            *(v302 + 32) = 1;
            *(v302 + 40) = 0;
            *(v302 + 48) = 257;
            v418(v302 + v298, v293, v294);
            *(v302 + v299) = 0;
            sub_233121D9C(v297, v302 + v300, &qword_27DDE19B0, &qword_233290370);
            v304 = (v302 + v301);
            v33 = v414;
            *v304 = sub_2331B9F10;
            v304[1] = v33;
            v481[2] = sub_2331BE528;
            v481[3] = v302;
            *&v480 = MEMORY[0x277D85DD0];
            *(&v480 + 1) = 1107296256;
            v481[0] = sub_2331221F8;
            v481[1] = &block_descriptor_238;
            v305 = _Block_copy(&v480);
            v306 = v303;

            v307 = v424;
            sub_23328D7DC();
            *&v478 = MEMORY[0x277D84F90];
            sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
            sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
            v309 = v426;
            v308 = v427;
            sub_23328E14C();
            MEMORY[0x23839BC20](0, v307, v309, v305);
            _Block_release(v305);

            (*v421)(v309, v308);
            (*v420)(v307, v425);
            sub_233121E04(v468, &qword_27DDE19B0, &qword_233290370);

            v447(v475, v437);
            v9 = v469;
            goto LABEL_75;
          }
        }

        else
        {
          v162(v161, v468, v160);
          v190 = sub_23328D6CC();
          v191 = sub_23328DE4C();
          if (os_log_type_enabled(v190, v191))
          {
            v192 = swift_slowAlloc();
            *v192 = 0;
            _os_log_impl(&dword_233109000, v190, v191, "Found llassi model but device doesn't support PV2. Bailing on attempt to train.", v192, 2u);
            MEMORY[0x23839CFD0](v192, -1, -1);
          }

          else
          {
          }

          (v472)(v161, v160);
        }

        v9 = v469;
        if (!v461)
        {
LABEL_93:
          v193 = -1 << *(v9 + 32);
          v155 = v9 + 56;
          v156 = ~v193;
          v194 = -v193;
          if (v194 < 64)
          {
            v195 = ~(-1 << v194);
          }

          else
          {
            v195 = -1;
          }

          v158 = (v195 & *(v9 + 56));
          swift_bridgeObjectRetain_n();
          v157 = 0;
LABEL_97:
          v468 = v156;
          v6 = (v156 + 64) >> 6;
          v472 = v9;
          while (1)
          {
            v12 = v158;
            v196 = v157;
            if (v9 < 0)
            {
              v201 = sub_23328E1BC();
              if (!v201 || (*&v478 = v201, swift_dynamicCast(), v200 = v480, v199 = v12, !v480))
              {
LABEL_116:
                sub_233113BBC();
                v9 = v469;

                v475 = 0;
                if (v461)
                {
                  goto LABEL_117;
                }

LABEL_119:
                v212 = -1 << *(v9 + 32);
                v33 = v9 + 56;
                v209 = ~v212;
                v213 = -v212;
                if (v213 < 64)
                {
                  v214 = ~(-1 << v213);
                }

                else
                {
                  v214 = -1;
                }

                v211 = (v214 & *(v9 + 56));
                swift_bridgeObjectRetain_n();
                v210 = 0;
LABEL_123:
                v451 = v209;
                v215 = (v209 + 64) >> 6;
                v470 = v9;
                while (1)
                {
                  v6 = v211;
                  v216 = v210;
                  if (v9 < 0)
                  {
                    v221 = sub_23328E1BC();
                    if (!v221)
                    {
                      goto LABEL_141;
                    }

                    *&v478 = v221;
                    swift_dynamicCast();
                    v220 = v480;
                    v219 = v6;
                    if (!v480)
                    {
                      goto LABEL_141;
                    }
                  }

                  else
                  {
                    v217 = v210;
                    for (i = v6; !i; ++v217)
                    {
                      v210 = v217 + 1;
                      if (__OFADD__(v217, 1))
                      {
                        goto LABEL_270;
                      }

                      if (v210 >= v215)
                      {
                        goto LABEL_141;
                      }

                      i = *(v33 + 8 * v210);
                    }

                    v219 = ((i - 1) & i);
                    v220 = *(*(v9 + 48) + ((v210 << 9) | (8 * __clz(__rbit64(i)))));
                    if (!v220)
                    {
LABEL_141:
                      sub_233113BBC();
                      v6 = v469;

                      v472 = 0;
                      if (v461)
                      {
LABEL_142:

                        swift_unknownObjectRetain();
                        sub_23328E18C();
                        sub_23328DD4C();
                        v6 = v502;
                        v33 = v503;
                        v229 = v504;
                        v230 = v505;
                        v231 = v506;
                        goto LABEL_148;
                      }

LABEL_144:
                      v232 = -1 << *(v6 + 32);
                      v33 = v6 + 56;
                      v229 = ~v232;
                      v233 = -v232;
                      if (v233 < 64)
                      {
                        v234 = ~(-1 << v233);
                      }

                      else
                      {
                        v234 = -1;
                      }

                      v231 = (v234 & *(v6 + 56));
                      swift_bridgeObjectRetain_n();
                      v230 = 0;
LABEL_148:
                      v468 = v229;
                      v235 = (v229 + 64) >> 6;
                      while (1)
                      {
                        v12 = v230;
                        if (v6 < 0)
                        {
                          v239 = sub_23328E1BC();
                          if (!v239)
                          {
                            v238 = v475;
LABEL_166:
                            sub_233113BBC();
                            v9 = v469;

                            v45 = v444;
                            if (v472 | v238)
                            {
                              v247 = sub_23328DCBC();
                              v6 = v435;
                              (*(*(v247 - 8) + 56))(v435, 1, 1, v247);
                              v248 = swift_allocObject();
                              v248[2] = 0;
                              v248[3] = 0;
                              v249 = v471;
                              v248[4] = v471;
                              v250 = v249;
                              sub_233193E34(0, 0, v6, &unk_233299A48, v248);

                              v251 = v462;
                            }

                            else
                            {

                              v251 = v465;
                            }

                            v12 = v473;
                            v33 = v438;
LABEL_7:
                            v46 = v463;
                            if (v463 == v449)
                            {
                              goto LABEL_194;
                            }

                            goto LABEL_8;
                          }

                          *&v478 = v239;
                          swift_dynamicCast();
                          v9 = v480;
                          v474 = v231;
                          v238 = v475;
                          if (!v480)
                          {
                            goto LABEL_166;
                          }
                        }

                        else
                        {
                          v236 = v230;
                          v237 = v231;
                          v238 = v475;
                          if (!v231)
                          {
                            do
                            {
                              v230 = v236 + 1;
                              if (__OFADD__(v236, 1))
                              {
                                goto LABEL_271;
                              }

                              if (v230 >= v235)
                              {
                                goto LABEL_166;
                              }

                              v237 = *(v33 + 8 * v230);
                              ++v236;
                            }

                            while (!v237);
                          }

                          v474 = ((v237 - 1) & v237);
                          v9 = *(*(v6 + 48) + ((v230 << 9) | (8 * __clz(__rbit64(v237)))));
                          if (!v9)
                          {
                            goto LABEL_166;
                          }
                        }

                        v470 = v231;
                        v240 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
                        TTSVBCommonVoiceModelMO.typedVersion.getter(&v480, v154, v240);
                        v241 = v480;
                        v242 = sub_233167B90();
                        v243 = v242[1];
                        if (!*(&v241 + 1))
                        {
                          v246 = v242[1];

                          if (!v243)
                          {

                            sub_233113BBC();

                            swift_bridgeObjectRelease_n();

                            goto LABEL_176;
                          }

                          goto LABEL_150;
                        }

                        v244 = *v242;
                        v478 = v241;
                        if (!v243)
                        {

LABEL_150:

                          v154 = v477;
                          v231 = v474;
                          continue;
                        }

                        *&v461 = v12;
                        v482 = v244;
                        v483 = v243;
                        sub_23315CC14();
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();
                        v245 = sub_23328D90C();

                        v154 = v477;
                        v231 = v474;
                        if (v245)
                        {

                          sub_233113BBC();

                          swift_bridgeObjectRelease_n();
LABEL_176:
                          v12 = v473;
                          v33 = v438;
                          v45 = v444;
                          goto LABEL_7;
                        }
                      }
                    }
                  }

                  v474 = v219;
                  v468 = v216;
                  v222 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
                  v12 = v154;
                  TTSVBCommonVoiceModelMO.typedVersion.getter(&v480, v154, v222);
                  v9 = *(&v480 + 1);
                  v223 = v480;
                  v224 = sub_233167DE4();
                  v225 = v224[1];
                  if (!v9)
                  {
                    break;
                  }

                  v472 = v220;
                  v226 = *v224;
                  v478 = __PAIR128__(v9, v223);
                  if (!v225)
                  {

LABEL_125:
                    v154 = v12;

                    v9 = v470;
                    v211 = v474;
                    continue;
                  }

                  v482 = v226;
                  v483 = v225;
                  sub_23315CC14();
                  swift_bridgeObjectRetain_n();
                  swift_bridgeObjectRetain_n();
                  v154 = v477;
                  v227 = sub_23328D90C();

                  v9 = v470;
                  v211 = v474;
                  if (v227)
                  {
                    sub_233113BBC();
                    v6 = v469;

                    if (v461)
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_144;
                  }
                }

                v228 = v224[1];

                if (!v225)
                {
                  v472 = v220;
                  sub_233113BBC();
                  v6 = v469;

                  v154 = v12;
                  if (v461)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_144;
                }

                goto LABEL_125;
              }
            }

            else
            {
              v197 = v157;
              v198 = v12;
              if (!v12)
              {
                while (1)
                {
                  v157 = v197 + 1;
                  if (__OFADD__(v197, 1))
                  {
                    break;
                  }

                  if (v157 >= v6)
                  {
                    v12 = 0;
                    goto LABEL_116;
                  }

                  v198 = *(v155 + 8 * v157);
                  ++v197;
                  if (v198)
                  {
                    goto LABEL_105;
                  }
                }

LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
LABEL_275:
                __break(1u);
LABEL_276:
                __break(1u);
LABEL_277:
                __break(1u);
LABEL_278:
                v44 = sub_23328E19C();
                goto LABEL_3;
              }

LABEL_105:
              v199 = ((v198 - 1) & v198);
              v200 = *(*(v9 + 48) + ((v157 << 9) | (8 * __clz(__rbit64(v198)))));
              if (!v200)
              {
                goto LABEL_116;
              }
            }

            v474 = v199;
            v470 = v196;
            v202 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
            v33 = v154;
            TTSVBCommonVoiceModelMO.typedVersion.getter(&v480, v154, v202);
            v203 = v480;
            v204 = sub_233167D94();
            v205 = v204[1];
            if (!*(&v203 + 1))
            {
              break;
            }

            v475 = v200;
            v206 = *v204;
            v478 = v203;
            if (!v205)
            {

LABEL_99:

              v9 = v472;
              v158 = v474;
              continue;
            }

            v482 = v206;
            v483 = v205;
            sub_23315CC14();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v154 = v477;
            v207 = sub_23328D90C();

            v9 = v472;
            v158 = v474;
            if (v207)
            {
              sub_233113BBC();
              v9 = v469;

              if (!v461)
              {
                goto LABEL_119;
              }

LABEL_117:

              swift_unknownObjectRetain();
              sub_23328E18C();
              sub_23328DD4C();
              v9 = v497;
              v33 = v498;
              v209 = v499;
              v210 = v500;
              v211 = v501;
              goto LABEL_123;
            }
          }

          v208 = v204[1];

          if (!v205)
          {
            v475 = v200;
            sub_233113BBC();
            v9 = v469;

            if (!v461)
            {
              goto LABEL_119;
            }

            goto LABEL_117;
          }

          goto LABEL_99;
        }

LABEL_76:

        swift_unknownObjectRetain();
        sub_23328E18C();
        sub_23328DD4C();
        v9 = v492;
        v155 = v493;
        v156 = v494;
        v157 = v495;
        v158 = v496;
        goto LABEL_97;
      }

LABEL_58:
      v136 = v143;
      v12 = v144;
    }

    if (!v150)
    {
      sub_233113BBC();

      goto LABEL_79;
    }

    v153 = v149[1];

    v9 = 0;
    goto LABEL_57;
  }

  v458 = 0;
LABEL_194:
  if (v442 >> 62)
  {
    v311 = sub_23328E19C();
  }

  else
  {
    v311 = *((v442 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = &off_233290000;
  if (!v311)
  {
    v470 = MEMORY[0x277D84F90];
LABEL_239:
    if (v470 >> 62)
    {
      v6 = sub_23328E19C();
      if (v6)
      {
LABEL_241:
        v362 = 0;
        v472 = v470 & 0xC000000000000001;
        v460 = (v470 & 0xFFFFFFFFFFFFFF8);
        v474 = v434 + 2;
        v475 = (v434 + 1);
        *&v43 = *(v9 + 640);
        v461 = v43;
        v467 = v6;
        do
        {
          if (v472)
          {
            v363 = MEMORY[0x23839BFC0](v362, v470);
            v9 = v443;
          }

          else
          {
            v9 = v443;
            if (v362 >= v460[2])
            {
              goto LABEL_277;
            }

            v363 = *(v470 + 8 * v362 + 32);
          }

          if (__OFADD__(v362, 1))
          {
            goto LABEL_275;
          }

          *&v477 = v362 + 1;
          v364 = sub_233225440();
          v365 = *v474;
          v468 = v364;
          v469 = v365;
          v365(v9);
          v33 = v363;
          v366 = sub_23328D6CC();
          v367 = sub_23328DE4C();

          if (os_log_type_enabled(v366, v367))
          {
            LODWORD(v466) = v367;
            v368 = swift_slowAlloc();
            v465 = swift_slowAlloc();
            *&v480 = v465;
            *v368 = v461;
            v369 = TTSVBCommonVoiceMO.displayName.getter(v464, &protocol witness table for TTSVBLocalVoiceMO);
            v371 = sub_23311A8F4(v369, v370, &v480);

            *(v368 + 4) = v371;
            *(v368 + 12) = 2080;
            v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
            v463 = &v409;
            v373 = &v409 - ((*(*(v372 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
            v374 = [v33 voiceID];
            v462 = &v409;
            MEMORY[0x28223BE20](v374);
            if (v375)
            {
              v376 = v375;
              sub_23328CE6C();

              v377 = 0;
            }

            else
            {
              v377 = 1;
            }

            v380 = sub_23328CE8C();
            v381 = *(v380 - 8);
            (*(v381 + 56))(v373, v377, 1, v380);
            sub_233121D9C(v373, v373, &qword_27DDE19B0, &qword_233290370);
            v382 = (*(v381 + 48))(v373, 1, v380);
            if (v382)
            {
              sub_233121E04(v373, &qword_27DDE19B0, &qword_233290370);
              v383 = 0xE600000000000000;
              v384 = 0x3E656E6F6E3CLL;
            }

            else
            {
              v459 = &v409;
              v385 = *(v381 + 64);
              v386 = MEMORY[0x28223BE20](v382);
              v388 = &v409 - ((v387 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v381 + 16))(v388, v373, v380, v386);
              sub_233121E04(v373, &qword_27DDE19B0, &qword_233290370);
              v389 = sub_23328CE3C();
              v383 = v390;
              (*(v381 + 8))(v388, v380);
              v384 = v389;
            }

            v391 = sub_23311A8F4(v384, v383, &v480);

            *(v368 + 14) = v391;
            _os_log_impl(&dword_233109000, v366, v466, "Deleting local voice: %s. %s", v368, 0x16u);
            v392 = v465;
            swift_arrayDestroy();
            MEMORY[0x23839CFD0](v392, -1, -1);
            MEMORY[0x23839CFD0](v368, -1, -1);

            v315 = *v475;
            v379 = (*v475)(v443, v473);
          }

          else
          {
            v378 = v12;

            v315 = *v475;
            v379 = (*v475)(v9, v378);
          }

          MEMORY[0x28223BE20](v379);
          *(&v409 - 2) = v33;
          v393 = sub_233175210();
          if (v393)
          {
            MEMORY[0x28223BE20](v393);
            *(&v409 - 2) = sub_2331BA27C;
            *(&v409 - 1) = (&v409 - 4);
            sub_23328D2BC();
          }

          v394 = [v33 voiceID];
          v395 = sub_23328CE8C();
          v396 = *(v395 - 8);
          v397 = *(v396 + 64);
          MEMORY[0x28223BE20](v395);
          v399 = &v409 - ((v398 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (!v394)
          {
            goto LABEL_284;
          }

          sub_23328CE6C();

          v400 = v458;
          sub_2331771DC(v399);
          v458 = v400;
          if (v400)
          {
            (*(v396 + 8))(v399, v395);

            v6 = v430;
            v469(v430, v468, v473);
            v316 = v458;
            v401 = v458;
            v314 = sub_23328D6CC();
            v402 = sub_23328DE3C();

            if (!os_log_type_enabled(v314, v402))
            {
              goto LABEL_265;
            }

            v403 = swift_slowAlloc();
            v404 = swift_slowAlloc();
            *v403 = 138412290;
            sub_2331524CC(&v480);
            v478 = v480;
            v479 = v481[0];
            type metadata accessor for TTSVBError(0);
            sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
            swift_allocError();
            static TTSVBError.map(_:_:)(v316, &v478, v405);
            sub_2331220AC(v478, *(&v478 + 1), v479);
            v406 = _swift_stdlib_bridgeErrorToNSError();
            *(v403 + 4) = v406;
            *v404 = v406;
            _os_log_impl(&dword_233109000, v314, v402, "%@", v403, 0xCu);
            sub_233121E04(v404, &qword_27DDE2978, &qword_233299A50);
            MEMORY[0x23839CFD0](v404, -1, -1);
            v407 = v403;
            v6 = v430;
            MEMORY[0x23839CFD0](v407, -1, -1);

            goto LABEL_266;
          }

          (*(v396 + 8))(v399, v395);

          ++v362;
          v6 = v467;
          v12 = v473;
        }

        while (v477 != v467);
      }
    }

    else
    {
      v6 = *((v470 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_241;
      }
    }

    goto LABEL_267;
  }

  v33 = 0;
  v469 = (v442 & 0xC000000000000001);
  v467 = v442 & 0xFFFFFFFFFFFFFF8;
  v466 = (v442 + 32);
  v465 = (v434 + 2);
  v463 = (v434 + 1);
  *&v43 = 136315394;
  v457 = v43;
  v470 = MEMORY[0x277D84F90];
  v468 = v311;
  while (1)
  {
    if (v469)
    {
      v312 = MEMORY[0x23839BFC0](v33, v442);
      v49 = __OFADD__(v33++, 1);
      if (v49)
      {
        goto LABEL_274;
      }
    }

    else
    {
      if (v33 >= *(v467 + 16))
      {
        goto LABEL_276;
      }

      v312 = v466[v33];
      v49 = __OFADD__(v33++, 1);
      if (v49)
      {
        goto LABEL_274;
      }
    }

    v474 = v33;
    v313 = *((*MEMORY[0x277D85000] & *v312) + 0x60);
    v475 = v312;
    v314 = v312;
    v6 = v313();
    v315 = *(v6 + 16);
    if (v315)
    {
      break;
    }

    v316 = MEMORY[0x277D84F90];
LABEL_219:

    v324 = v316[2];

    if (v324)
    {
      v325 = [v475 voiceID];
      v326 = sub_23328CE8C();
      v327 = *(v326 - 8);
      v328 = *(v327 + 64);
      MEMORY[0x28223BE20](v326);
      v6 = &v409 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = v473;
      if (!v325)
      {
        goto LABEL_283;
      }

      sub_23328CE6C();

      v329 = static TTSVBCloudVoiceMO.voiceExists(withID:moc:)(&v409 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0), v476);
      *&v477 = *(v327 + 8);
      (v477)(&v409 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0), v326);
      if (v329)
      {

        goto LABEL_199;
      }

      v330 = sub_233225440();
      v331 = v436;
      (*v465)(v436, v330, v12);
      v332 = v475;
      v333 = sub_23328D6CC();
      v334 = sub_23328DE4C();

      if (os_log_type_enabled(v333, v334))
      {
        LODWORD(v462) = v334;
        v472 = v333;
        v335 = swift_slowAlloc();
        *&v461 = swift_slowAlloc();
        *&v480 = v461;
        *v335 = v457;
        v336 = TTSVBCommonVoiceMO.displayName.getter(v464, &protocol witness table for TTSVBLocalVoiceMO);
        v338 = sub_23311A8F4(v336, v337, &v480);

        *(v335 + 4) = v338;
        v470 = v335;
        *(v335 + 12) = 2080;
        v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
        v460 = &v409;
        v340 = *(*(v339 - 8) + 64);
        v341 = MEMORY[0x28223BE20](v339 - 8);
        v342 = (v340 + 15) & 0xFFFFFFFFFFFFFFF0;
        v343 = &v409 - v342;
        v475 = v332;
        v344 = [v332 voiceID];
        MEMORY[0x28223BE20](v344);
        if (v345)
        {
          sub_23328CE6C();

          v346 = 0;
        }

        else
        {
          v346 = 1;
        }

        (*(v327 + 56))(&v409 - v342, v346, 1, v326);
        sub_233121D9C(&v409 - v342, &v409 - v342, &qword_27DDE19B0, &qword_233290370);
        v350 = (*(v327 + 48))(v343, 1, v326);
        v12 = v473;
        if (v350)
        {
          sub_233121E04(v343, &qword_27DDE19B0, &qword_233290370);
          v351 = 0xE600000000000000;
          v352 = 0x3E656E6F6E3CLL;
        }

        else
        {
          v353 = MEMORY[0x28223BE20](v350);
          (*(v327 + 16))(&v409 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0), v343, v326, v353);
          sub_233121E04(v343, &qword_27DDE19B0, &qword_233290370);
          v354 = sub_23328CE3C();
          v351 = v355;
          (v477)(&v409 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0), v326);
          v352 = v354;
          v12 = v473;
        }

        v348 = v468;
        v33 = v474;
        v349 = v475;
        v356 = sub_23311A8F4(v352, v351, &v480);

        v357 = v470;
        *(v470 + 14) = v356;
        v358 = v472;
        _os_log_impl(&dword_233109000, v472, v462, "Found local voice with completed voice model that doesn't exist in cloud database: %s. %s", v357, 0x16u);
        v359 = v461;
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v359, -1, -1);
        MEMORY[0x23839CFD0](v357, -1, -1);

        v347 = (*v463)(v436, v12);
      }

      else
      {

        v347 = (*v463)(v331, v12);
        v348 = v468;
        v33 = v474;
        v349 = v332;
      }

      MEMORY[0x28223BE20](v347);
      *(&v409 - 2) = v349;
      v360 = sub_233175210();
      if (v360)
      {
        MEMORY[0x28223BE20](v360);
        *(&v409 - 2) = sub_2331BA274;
        *(&v409 - 1) = (&v409 - 4);
        sub_23328D2BC();
      }

      v6 = v349;
      MEMORY[0x23839B920]();
      if (*((v486 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v486 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v361 = *((v486 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23328DC1C();
      }

      sub_23328DC4C();

      v470 = v486;
      v9 = 0x233290000;
      if (v33 == v348)
      {
        goto LABEL_239;
      }
    }

    else
    {

      v12 = v473;
LABEL_199:
      v33 = v474;
      if (v474 == v468)
      {
        goto LABEL_239;
      }
    }
  }

  v472 = (v315 - 1);
  v316 = MEMORY[0x277D84F90];
  v317 = 0;
  while (v317 < *(v6 + 16))
  {
    v477 = *(v6 + 32 + 16 * v317);
    v318 = (v317 + 1);
    v314 = v477;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    if (TTSVBCommonVoiceModelMO.status.getter(ObjectType, *(&v477 + 1)) == 7)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v480 = v316;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v314 = &v480;
        sub_233154978(0, v316[2] + 1, 1);
        v316 = v480;
      }

      v321 = v477;
      v323 = v316[2];
      v322 = v316[3];
      if (v323 >= v322 >> 1)
      {
        v314 = &v480;
        sub_233154978((v322 > 1), v323 + 1, 1);
        v321 = v477;
        v316 = v480;
      }

      v316[2] = v323 + 1;
      *&v316[2 * v323 + 4] = v321;
      v9 = 0x233290000;
      if (v472 == v317)
      {
        goto LABEL_219;
      }

      ++v317;
    }

    else
    {
      swift_unknownObjectRelease();
      ++v317;
      if (v315 == v318)
      {
        goto LABEL_219;
      }
    }
  }

  __break(1u);
LABEL_265:

LABEL_266:
  (v315)(v6, v473);
LABEL_267:
  v408 = [objc_opt_self() defaultCenter];
  [v408 postNotificationName:*sub_233169594() object:0];

  NSManagedObjectContext.saveOrRollback()();
}