uint64_t sub_21D058820()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20PrivateMLClientAlert_logger;
  v6 = sub_21D094230();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivateMLClientAlert()
{
  result = qword_27CE54230;
  if (!qword_27CE54230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D058930()
{
  result = sub_21D094230();
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

uint64_t sub_21D0589D0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of InferenceProviderWithPrewarm.prewarmHint(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21D051DB8;

  return v11(a1, a2, a3);
}

uint64_t sub_21D058B08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_21D094730();
  v68 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v11;
  v12 = sub_21D092FC0();
  v70 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v16;
  v53 = sub_21D094230();
  v17 = *(*(v53 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v53);
  v61 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v49 - v20;
  v62 = v21;
  v22 = *(v21 + 16);
  v54 = v21 + 16;
  v55 = v22;
  v22();
  v23 = _s18InstrumentedTokensVMa(0);
  v24 = v23[5];
  v63 = v13;
  v52 = *(v13 + 16);
  v52(v16, v2 + v24, v12);
  v25 = v23[6];
  v59 = v2;
  v26 = (v2 + v25);
  v27 = v26[1];
  v67 = *v26;
  v50 = v27;
  v28 = v23[8];
  v64 = v8;
  v51 = *(v8 + 16);
  v51(v11, v2 + v28, v7);
  v29 = sub_21D094290();
  v56 = *(*(v29 - 8) + 56);
  v65 = v6;
  v56(v6, 1, 1, v29);
  v30 = v23[7];
  v31 = v23[9];
  v32 = _s18InstrumentedTokensV13AsyncIteratorVMa(0);
  v33 = v32[10];

  v34 = v60;
  v35 = v59;
  sub_21D093450();
  sub_21D0590D0(v35 + v31, v73);
  v36 = (v35 + v23[10]);
  v59 = *v36;
  v58 = *(v36 + 4);
  v57 = v32[9];
  v56((v34 + v57), 1, 1, v29);
  v56 = v32[13];
  v37 = v53;
  v38 = v55;
  (v55)(v34, v69, v53);
  v52((v34 + v32[5]), v71, v70);
  v39 = (v34 + v32[6]);
  v40 = v66;
  v41 = v50;
  *v39 = v67;
  v39[1] = v41;
  v51((v34 + v32[7]), v40, v68);
  v42 = v37;
  sub_21D0590D0(v73, v34 + v32[11]);
  v38();
  v43 = qword_281221758;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = v32[8];

  v45 = v58;
  v72 = v58;
  v46 = v59;
  sub_21D0942A0();
  __swift_destroy_boxed_opaque_existential_0(v73);
  (*(v64 + 8))(v66, v68);
  (*(v63 + 8))(v71, v70);
  (*(v62 + 8))(v69, v42);
  result = sub_21D05B198(v65, v34 + v57);
  *(v56 + v34) = 0;
  v48 = v34 + v32[12];
  *v48 = v46;
  *(v48 + 4) = v45;
  return result;
}

uint64_t sub_21D0590D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21D059134(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21D094290();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54138, &qword_21D0959E0);
  v2[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = sub_21D0933E0();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v14 = sub_21D094230();
  v2[22] = v14;
  v15 = *(v14 - 8);
  v2[23] = v15;
  v16 = *(v15 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v18 = sub_21D093460();
  v2[30] = v18;
  v19 = *(v18 - 8);
  v2[31] = v19;
  v20 = *(v19 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v21 = sub_21D092FC0();
  v2[34] = v21;
  v22 = *(v21 - 8);
  v2[35] = v22;
  v23 = *(v22 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D05950C, 0, 0);
}

uint64_t sub_21D05950C()
{
  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[3];
  v5 = _s18InstrumentedTokensV13AsyncIteratorVMa(0);
  v0[41] = v5;
  v6 = *(v5 + 20);
  v7 = *(v3 + 16);
  v0[42] = v7;
  v0[43] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v6, v2);
  v8 = *(v5 + 40);
  v9 = *(MEMORY[0x277D414F8] + 4);
  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_21D059604;
  v11 = v0[29];

  return MEMORY[0x2821A2278](v11);
}

uint64_t sub_21D059604()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_21D05AC6C;
  }

  else
  {
    v3 = sub_21D059718;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D059718()
{
  v281 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[41];
    v5 = v0[20];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];
    sub_21D04D27C(v3, &qword_27CE54250, &unk_21D095CB0);
    v9 = *(v4 + 36);
    sub_21D05B270(v8 + v9, v5, &qword_27CE54240, &qword_21D095C90);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_21D04D27C(v0[20], &qword_27CE54240, &qword_21D095C90);
    }

    else
    {
      v43 = v0[41];
      v45 = v0[5];
      v44 = v0[6];
      v47 = v0[3];
      v46 = v0[4];
      (*(v45 + 32))(v44, v0[20], v46);
      v48 = *(v47 + *(v43 + 52));
      sub_21D094270();
      sub_21D094280();
      (*(v45 + 8))(v44, v46);
      sub_21D04D27C(v8 + v9, &qword_27CE54240, &qword_21D095C90);
      (*(v45 + 56))(v8 + v9, 1, 1, v46);
    }

    v49 = v0[40];
    v50 = v0[34];
    v51 = v0[35];
    v52 = *(v0[41] + 28);
    logMetric(logger:name:startInstant:)(v0[3], 0xD000000000000019, 0x800000021D096EC0);
    (*(v51 + 8))(v49, v50);
    v53 = 1;
    goto LABEL_49;
  }

  v11 = v0[32];
  v10 = v0[33];
  v12 = *(v2 + 32);
  v12(v10, v3, v1);
  (*(v2 + 16))(v11, v10, v1);
  v13 = (*(v2 + 88))(v11, v1);
  if (v13 == *MEMORY[0x277D41518])
  {
    v276 = v12;
    v14 = v0[42];
    v267 = v0[43];
    v15 = v0[39];
    v16 = v0[40];
    v17 = v0[34];
    v18 = v0[32];
    v19 = v0[28];
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[3];
    (*(v0[31] + 96))(v18, v0[30]);
    v23 = *v18;
    v24 = v18[1];
    v258 = v23;
    v240 = *(v21 + 16);
    v240(v19, v22, v20);
    v14(v15, v16, v17);

    v25 = sub_21D094210();
    v26 = sub_21D094560();
    v268 = v24;

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[39];
    v29 = v0[34];
    v30 = v0[35];
    v31 = v0[28];
    v32 = v0[22];
    v33 = v0[23];
    if (v27)
    {
      v34 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v280 = v231;
      *v34 = 136315395;
      sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v211 = v26;
      v35 = sub_21D094790();
      v222 = v31;
      v37 = v36;
      v38 = *(v30 + 8);
      v12 = (v30 + 8);
      v38(v28, v29);
      v39 = v35;
      v40 = v38;
      v41 = sub_21D05550C(v39, v37, &v280);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2081;
      v42 = sub_21D05550C(v258, v268, &v280);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_21D044000, v25, v211, "%s received token %{private}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v231, -1, -1);
      MEMORY[0x223D3CDF0](v34, -1, -1);

      (*(v33 + 8))(v222, v32);
    }

    else
    {

      v92 = *(v30 + 8);
      v12 = (v30 + 8);
      v40 = v92;
      v92(v28, v29);
      (*(v33 + 8))(v31, v32);
    }

    v93 = v0[41];
    v94 = v0[3];
    v95 = v93[13];
    v96 = *(v94 + v95);
    if (!v96)
    {
      v272 = v40;
      v127 = v0[27];
      v128 = v0[22];
      v129 = v94 + v93[8];
      sub_21D0942B0();
      v240(v127, v94, v128);
      v130 = (v94 + v93[6]);
      v131 = v130[1];
      v263 = *v130;
      v132 = (v94 + v93[12]);
      v245 = *v132;
      v227 = *(v132 + 4);
      v133 = qword_281221758;

      if (v133 != -1)
      {
        swift_once();
      }

      v253 = v0[41];
      v134 = v0[35];
      v208 = v0[34];
      v214 = v0[40];
      v135 = v0[27];
      v136 = v0[21];
      v137 = v0[5];
      v219 = v0[4];
      v236 = v0[3];

      LOBYTE(v280) = v227;
      sub_21D094260();
      v272(v214, v208);
      (*(v137 + 56))(v136, 0, 1, v219);
      sub_21D05B198(v136, v236 + *(v253 + 36));
      v98 = 1;
      goto LABEL_16;
    }

    v97 = v0[35] + 8;
    v59 = (v40)(v0[40], v0[34]);
    v98 = v96 + 1;
    if (!__OFADD__(v96, 1))
    {
LABEL_16:
      *(v94 + v95) = v98;
LABEL_33:
      v276(v0[2], v0[33], v0[30]);
LABEL_48:
      v53 = 0;
LABEL_49:
      v185 = v0[39];
      v186 = v0[40];
      v188 = v0[37];
      v187 = v0[38];
      v189 = v0[36];
      v191 = v0[32];
      v190 = v0[33];
      v193 = v0[28];
      v192 = v0[29];
      v196 = v0[27];
      v198 = v0[26];
      v200 = v0[25];
      logb = v0[24];
      v205 = v0[21];
      v210 = v0[20];
      v216 = v0[19];
      v221 = v0[18];
      v230 = v0[15];
      v239 = v0[14];
      v248 = v0[13];
      v257 = v0[12];
      v266 = v0[10];
      v275 = v0[9];
      v278 = v0[8];
      v279 = v0[6];
      (*(v0[31] + 56))(v0[2], v53, 1, v0[30]);

      v194 = v0[1];

      return v194();
    }

    __break(1u);
  }

  else
  {
    if (v13 != *MEMORY[0x277D41510])
    {
      if (v13 == *MEMORY[0x277D41500])
      {
        v276 = v12;
        v251 = v0[42];
        v261 = v0[43];
        v225 = v0[36];
        v234 = v0[34];
        v243 = v0[40];
        v99 = v0[32];
        v100 = v0[23];
        v101 = v0[24];
        v102 = v0[22];
        v104 = v0[9];
        v103 = v0[10];
        v105 = v0[3];
        (*(v0[31] + 96))(v99, v0[30]);
        v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
        sub_21D05B208(v99 + *(v271 + 48), v103, &qword_27CE54248, &unk_21D095CA0);
        (*(v100 + 16))(v101, v105, v102);
        v251(v225, v243, v234);
        sub_21D05B270(v103, v104, &qword_27CE54248, &unk_21D095CA0);
        v106 = sub_21D094210();
        v107 = sub_21D094560();
        v108 = os_log_type_enabled(v106, v107);
        v109 = v0[40];
        v111 = v0[35];
        v110 = v0[36];
        v112 = v0[34];
        v113 = v0[23];
        v244 = v0[22];
        v252 = v0[24];
        v114 = v0[9];
        v262 = v0[10];
        if (v108)
        {
          loga = v0[8];
          v207 = v0[7];
          v213 = v107;
          v115 = swift_slowAlloc();
          v218 = swift_slowAlloc();
          v280 = v218;
          *v115 = 136315394;
          sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0]);
          v116 = sub_21D094790();
          v117 = v112;
          v226 = v112;
          v235 = v109;
          v118 = v116;
          v120 = v119;
          v121 = *(v111 + 8);
          v121(v110, v117);
          v122 = sub_21D05550C(v118, v120, &v280);

          *(v115 + 4) = v122;
          *(v115 + 12) = 2082;
          sub_21D05B270(v114, loga, &qword_27CE54248, &unk_21D095CA0);
          v123 = sub_21D094430();
          v125 = v124;
          sub_21D04D27C(v114, &qword_27CE54248, &unk_21D095CA0);
          v126 = sub_21D05550C(v123, v125, &v280);

          *(v115 + 14) = v126;
          _os_log_impl(&dword_21D044000, v106, v213, "%s received environment. Server environment %{public}s", v115, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v218, -1, -1);
          MEMORY[0x223D3CDF0](v115, -1, -1);

          (*(v113 + 8))(v252, v244);
          sub_21D04D27C(v262, &qword_27CE54248, &unk_21D095CA0);
          v121(v235, v226);
        }

        else
        {

          sub_21D04D27C(v114, &qword_27CE54248, &unk_21D095CA0);
          v165 = *(v111 + 8);
          v165(v110, v112);
          (*(v113 + 8))(v252, v244);
          sub_21D04D27C(v262, &qword_27CE54248, &unk_21D095CA0);
          v165(v109, v112);
        }

        v166 = v0[32];
        sub_21D04D27C(v166 + *(v271 + 64), &qword_27CE54260, &unk_21D095CC0);
        v167 = sub_21D0934B0();
        (*(*(v167 - 8) + 8))(v166, v167);
        goto LABEL_33;
      }

      v162 = v0[31];
      v161 = v0[32];
      v163 = v0[30];
      (*(v0[35] + 8))(v0[40], v0[34]);
      (*(v162 + 8))(v161, v163);
LABEL_47:
      v12(v0[2], v0[33], v0[30]);
      goto LABEL_48;
    }

    v54 = v0[32];
    v56 = v0[18];
    v55 = v0[19];
    v57 = v0[16];
    v58 = v0[17];
    (*(v0[31] + 96))(v54, v0[30]);
    (*(v58 + 32))(v55, v54, v57);
    (*(v58 + 16))(v56, v55, v57);
    v59 = (*(v58 + 88))(v56, v57);
    if (v59 == *MEMORY[0x277D414D8])
    {
      v277 = v12;
      v269 = v0[43];
      v223 = v0[38];
      v232 = v0[34];
      v241 = v0[40];
      v60 = v0[26];
      v62 = v0[22];
      v61 = v0[23];
      v63 = v0[18];
      v64 = v0[15];
      v65 = v0[14];
      v249 = v0[13];
      v259 = v0[42];
      v66 = v0[3];
      (*(v0[17] + 96))(v63, v0[16]);
      sub_21D05B208(v63, v64, &qword_27CE54138, &qword_21D0959E0);
      (*(v61 + 16))(v60, v66, v62);
      v259(v223, v241, v232);
      sub_21D05B270(v64, v65, &qword_27CE54138, &qword_21D0959E0);
      sub_21D05B270(v64, v249, &qword_27CE54138, &qword_21D0959E0);
      v67 = sub_21D094210();
      v68 = sub_21D094560();
      v69 = os_log_type_enabled(v67, v68);
      v217 = v0[40];
      v70 = v0[38];
      v72 = v0[34];
      v71 = v0[35];
      v73 = v0[26];
      v242 = v73;
      v250 = v0[23];
      v233 = v0[22];
      v270 = v0[19];
      v74 = v0[17];
      v260 = v0[16];
      v75 = v0[14];
      v224 = v0[15];
      if (v69)
      {
        v212 = v0[17];
        v76 = v0[11];
        v77 = v0[12];
        v197 = v0[13];
        log = v67;
        v78 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v280 = v199;
        *v78 = 136315650;
        sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0]);
        v79 = sub_21D094790();
        v80 = v72;
        v206 = v72;
        v82 = v81;
        v83 = *(v71 + 8);
        v83(v70, v80);
        v84 = sub_21D05550C(v79, v82, &v280);

        *(v78 + 4) = v84;
        *(v78 + 12) = 2048;
        sub_21D05B270(v75, v77, &qword_27CE54138, &qword_21D0959E0);
        v85 = *(v77 + 8);

        v86 = *(v77 + 24);
        v87 = *(v76 + 80);
        v88 = sub_21D093230();
        v195 = v68;
        v89 = *(*(v88 - 8) + 8);
        v89(v77 + v87, v88);
        sub_21D04D27C(v75, &qword_27CE54138, &qword_21D0959E0);
        *(v78 + 14) = v86;
        *(v78 + 22) = 1024;
        sub_21D05B270(v197, v77, &qword_27CE54138, &qword_21D0959E0);
        v90 = *(v77 + 8);

        LODWORD(v87) = *(v77 + 16);
        v89(v77 + *(v76 + 80), v88);
        sub_21D04D27C(v197, &qword_27CE54138, &qword_21D0959E0);
        *(v78 + 24) = v87;
        _os_log_impl(&dword_21D044000, log, v195, "%s received media header with total size: %lld and total chucks: %d.", v78, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x223D3CDF0](v199, -1, -1);
        MEMORY[0x223D3CDF0](v78, -1, -1);

        (*(v250 + 8))(v242, v233);
        sub_21D04D27C(v224, &qword_27CE54138, &qword_21D0959E0);
        (*(v212 + 8))(v270, v260);
        result = (v83)(v217, v206);
      }

      else
      {
        sub_21D04D27C(v0[13], &qword_27CE54138, &qword_21D0959E0);
        sub_21D04D27C(v75, &qword_27CE54138, &qword_21D0959E0);

        v164 = *(v71 + 8);
        v164(v70, v72);
        (*(v250 + 8))(v242, v233);
        sub_21D04D27C(v224, &qword_27CE54138, &qword_21D0959E0);
        (*(v74 + 8))(v270, v260);
        result = (v164)(v217, v72);
      }

      goto LABEL_45;
    }
  }

  if (v59 == *MEMORY[0x277D414D0])
  {
    v277 = v12;
    v273 = v0[43];
    v254 = v0[40];
    v264 = v0[42];
    v138 = v0[37];
    v139 = v0[34];
    v140 = v0[25];
    v142 = v0[22];
    v141 = v0[23];
    v143 = v0[18];
    v144 = v0[3];
    (*(v0[17] + 96))(v143, v0[16]);
    v146 = v143[1];
    v145 = v143[2];
    v147 = v143[3];
    (*(v141 + 16))(v140, v144, v142);
    v264(v138, v254, v139);

    sub_21D055C20(v145, v147);

    v274 = v145;
    sub_21D055C20(v145, v147);
    v148 = sub_21D094210();
    v149 = sub_21D094560();
    if (os_log_type_enabled(v148, v149))
    {
      v255 = v149;
      v150 = v0[37];
      v152 = v0[34];
      v151 = v0[35];
      v153 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v280 = v237;
      *v153 = 136315394;
      sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v154 = sub_21D094790();
      v156 = v155;
      v246 = *(v151 + 8);
      v246(v150, v152);
      v157 = sub_21D05550C(v154, v156, &v280);

      *(v153 + 4) = v157;
      *(v153 + 12) = 2048;
      v158 = v147 >> 62;
      v159 = v148;
      if ((v147 >> 62) > 1)
      {
        if (v158 == 2)
        {
          v175 = *(v145 + 16);
          v176 = *(v274 + 24);

          result = sub_21D04FE3C(v274, v147);
          v160 = v176 - v175;
          if (__OFSUB__(v176, v175))
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        else
        {

          sub_21D04FE3C(v145, v147);
          v160 = 0;
        }
      }

      else if (v158)
      {

        result = sub_21D04FE3C(v145, v147);
        LODWORD(v160) = HIDWORD(v145) - v145;
        if (__OFSUB__(HIDWORD(v145), v145))
        {
LABEL_54:
          __break(1u);
          return result;
        }

        v160 = v160;
      }

      else
      {

        sub_21D04FE3C(v145, v147);
        v160 = BYTE6(v147);
      }

      v220 = v0[34];
      v229 = v0[40];
      v177 = v0[22];
      v178 = v0[23];
      v215 = v0[19];
      v179 = v0[17];
      v204 = v0[25];
      v209 = v0[16];
      *(v153 + 14) = v160;

      sub_21D04FE3C(v274, v147);
      _os_log_impl(&dword_21D044000, v159, v255, "%s received media chunk with data size: %ld.", v153, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v237);
      MEMORY[0x223D3CDF0](v237, -1, -1);
      MEMORY[0x223D3CDF0](v153, -1, -1);

      sub_21D04FE3C(v274, v147);
      (*(v178 + 8))(v204, v177);
      (*(v179 + 8))(v215, v209);
      result = (v246)(v229, v220);
    }

    else
    {
      v169 = v0[37];
      v171 = v0[34];
      v170 = v0[35];
      v172 = v0[23];
      v228 = v0[22];
      v238 = v0[25];
      v256 = v0[19];
      v265 = v0[40];
      v173 = v0[17];
      v247 = v0[16];

      sub_21D04FE3C(v145, v147);

      sub_21D04FE3C(v145, v147);

      sub_21D04FE3C(v145, v147);
      v174 = *(v170 + 8);
      v174(v169, v171);
      (*(v172 + 8))(v238, v228);
      (*(v173 + 8))(v256, v247);
      result = (v174)(v265, v171);
    }

LABEL_45:
    v12 = v277;
    v180 = v0[3];
    v181 = *(v0[41] + 52);
    v182 = *(v180 + v181);
    v183 = __OFADD__(v182, 1);
    v184 = v182 + 1;
    if (!v183)
    {
      *(v180 + v181) = v184;
      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_53;
  }

  v168 = v0[16];

  return sub_21D0947C0();
}

uint64_t sub_21D05AC6C()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v12 = v0[27];
  v13 = v0[26];
  v14 = v0[25];
  v15 = v0[24];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[8];
  v27 = v0[6];
  (*(v0[35] + 8))(v0[40], v0[34]);

  v9 = v0[1];
  v10 = v0[45];

  return v9();
}

uint64_t sub_21D05AE24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D051DB8;

  return sub_21D059134(a1);
}

uint64_t sub_21D05AEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_21D05AF5C;

  return sub_21D059134(a1);
}

uint64_t sub_21D05AF5C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = sub_21D0944B0();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_21D05B0CC, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_21D05B0CC()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_21D05B16C@<X0>(uint64_t a1@<X8>)
{
  sub_21D058B08(a1);

  return sub_21D05B6E0(v1);
}

uint64_t sub_21D05B198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D05B208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21D05B270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21D05B300()
{
  sub_21D094230();
  if (v0 <= 0x3F)
  {
    sub_21D092FC0();
    if (v1 <= 0x3F)
    {
      sub_21D093470();
      if (v2 <= 0x3F)
      {
        sub_21D094730();
        if (v3 <= 0x3F)
        {
          sub_21D05B3EC();
          if (v4 <= 0x3F)
          {
            sub_21D05B450();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21D05B3EC()
{
  result = qword_2812217A0;
  if (!qword_2812217A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812217A0);
  }

  return result;
}

void sub_21D05B450()
{
  if (!qword_281221460)
  {
    v0 = sub_21D094690();
    if (!v1)
    {
      atomic_store(v0, &qword_281221460);
    }
  }
}

void sub_21D05B4C8()
{
  sub_21D094230();
  if (v0 <= 0x3F)
  {
    sub_21D092FC0();
    if (v1 <= 0x3F)
    {
      sub_21D094730();
      if (v2 <= 0x3F)
      {
        sub_21D0942C0();
        if (v3 <= 0x3F)
        {
          sub_21D05B5EC();
          if (v4 <= 0x3F)
          {
            sub_21D093440();
            if (v5 <= 0x3F)
            {
              sub_21D05B3EC();
              if (v6 <= 0x3F)
              {
                sub_21D05B450();
                if (v7 <= 0x3F)
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

void sub_21D05B5EC()
{
  if (!qword_281221480)
  {
    sub_21D094290();
    v0 = sub_21D094690();
    if (!v1)
    {
      atomic_store(v0, &qword_281221480);
    }
  }
}

uint64_t sub_21D05B698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D05B6E0(uint64_t a1)
{
  v2 = _s18InstrumentedTokensVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D05B73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54428, &qword_21D096438);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_21D0931D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_21D04D27C(a1, &qword_27CE54428, &qword_21D096438);
    sub_21D08F420(a2, a3, v10);

    return sub_21D04D27C(v10, &qword_27CE54428, &qword_21D096438);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_21D056F88(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_21D05B914(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void logMetric(logger:name:startInstant:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_21D094730();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
  if (sub_21D0945C0())
  {
    sub_21D094710();
    sub_21D094720();
    (*(v6 + 8))(v9, v5);

    v10 = sub_21D094210();
    v11 = sub_21D094580();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_21D05550C(a2, a3, &v18);
      *(v12 + 12) = 2080;
      v14 = sub_21D094880();
      v16 = sub_21D05550C(v14, v15, &v18);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_21D044000, v10, v11, "performance metric: %s %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v13, -1, -1);
      MEMORY[0x223D3CDF0](v12, -1, -1);
    }
  }
}

uint64_t sub_21D05BBEC()
{
  v0 = sub_21D094230();
  __swift_allocate_value_buffer(v0, qword_2812217C8);
  __swift_project_value_buffer(v0, qword_2812217C8);

  return sub_21D094220();
}

uint64_t PrivateMLClientInferenceProviderError.code.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 6;
    }

    else
    {
      return 1;
    }
  }

  else if (v1 == 2)
  {
    return 10;
  }

  else if (v1 == 3)
  {
    return 15;
  }

  else
  {
    return qword_21D096598[*v0];
  }
}

uint64_t sub_21D05BCC8(uint64_t a1)
{
  v2 = sub_21D090AF0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21D05BD04(uint64_t a1)
{
  v2 = sub_21D090AF0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PrivateMLClientInferenceProviderError.descriptionWithoutUnderlying.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  swift_beginAccess();
  v4 = qword_27CE54280;
  v3 = off_27CE54288;
  if (v2 > 1)
  {
    if (v2 == 2)
    {

      sub_21D0946E0();

      v11 = v4;
      v5 = ": unknown image format";
      v6 = 0xD00000000000001ALL;
      goto LABEL_8;
    }

    if (v2 == 3)
    {

      sub_21D0946E0();

      v11 = v4;
      v5 = "eMLClientInferenceProvider";
      v6 = 0xD00000000000001CLL;
LABEL_8:
      v7 = v5 | 0x8000000000000000;
      goto LABEL_9;
    }

    if (v1 <= 4)
    {
      if (v1 <= 1)
      {
        if (!v1)
        {
          v11 = qword_27CE54280;

          v6 = 0x746163206F6E203ALL;
          v7 = 0xEC000000676F6C61;
          goto LABEL_9;
        }

        sub_21D0946E0();

        v11 = v4;
        v5 = ": untrusted bundle";
        v6 = 0xD000000000000019;
        goto LABEL_8;
      }

      if (v1 == 2)
      {

        sub_21D0946E0();

        v11 = v4;
        v5 = ": invalid session UUID";
        v6 = 0xD000000000000012;
        goto LABEL_8;
      }

      if (v1 == 3)
      {

        sub_21D0946E0();

        v11 = v4;
        v9 = ": invalid session UUID";
        goto LABEL_33;
      }

      sub_21D0946E0();

      v11 = v4;
      v10 = ": unknown response type";
    }

    else
    {
      if (v1 > 7)
      {
        if (v1 == 8)
        {

          sub_21D0946E0();

          v11 = v4;
          v5 = "tadata not handled";
          v6 = 0xD000000000000023;
        }

        else
        {

          sub_21D0946E0();

          v11 = v4;
          if (v1 == 9)
          {
            v5 = ": no request data";
            v6 = 0xD000000000000022;
          }

          else
          {
            v5 = ": denied due to availability";
            v6 = 0xD000000000000011;
          }
        }

        goto LABEL_8;
      }

      if (v1 != 5)
      {
        if (v1 == 6)
        {

          sub_21D0946E0();

          v11 = v4;
          v5 = ": denied due to rate limit";
          v6 = 0xD000000000000015;
          goto LABEL_8;
        }

        sub_21D0946E0();

        v11 = v4;
        v9 = ": unknown image format";
LABEL_33:
        v7 = (v9 - 32) | 0x8000000000000000;
        v6 = 0xD000000000000016;
        goto LABEL_9;
      }

      sub_21D0946E0();

      v11 = v4;
      v10 = ": request not supported";
    }

    v5 = (v10 - 32);
    v6 = 0xD000000000000017;
    goto LABEL_8;
  }

  if (v2)
  {
    v11 = 0;

    sub_21D0946E0();
    MEMORY[0x223D3C530](v4, v3);

    MEMORY[0x223D3C530](0xD00000000000001CLL, 0x800000021D097080);
    sub_21D094740();
    return v11;
  }

  sub_21D0946E0();

  v11 = v4;
  v6 = 0x776F6E6B6E55203ALL;
  v7 = 0xEF726F727265206ELL;
LABEL_9:
  MEMORY[0x223D3C530](v6, v7);
  return v11;
}

uint64_t PrivateMLClientInferenceProviderError.underlyingErrors.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 4 && *v0)
  {
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t PrivateMLClientInferenceProviderError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (*(v1 + 8))
    {
      v4 = MEMORY[0x277CEDEC8];
    }

    else
    {
      v4 = MEMORY[0x277CEDED0];
    }
  }

  else if (v3 == 2 || v3 == 3)
  {
    v4 = MEMORY[0x277CEDED8];
  }

  else
  {
    v4 = qword_278329150[*v1];
  }

  v5 = *v4;
  v6 = sub_21D094080();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_21D05C31C()
{
  swift_beginAccess();
  v0 = qword_27CE54280;

  return v0;
}

uint64_t PrivateMLClientInferenceProviderError.domain.getter()
{
  swift_beginAccess();
  v0 = qword_27CE54280;

  return v0;
}

uint64_t PrivateMLClientInferenceProviderError.description.getter()
{
  v1 = *(v0 + 8);
  v21 = *v0;
  v22 = v1;
  v2 = PrivateMLClientInferenceProviderError.descriptionWithoutUnderlying.getter();
  v4 = v3;
  v13 = v21;
  LOBYTE(v14) = v1;
  v5 = *(PrivateMLClientInferenceProviderError.underlyingErrors.getter() + 16);

  if (!v5)
  {
    v11 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_5;
  }

  v19 = 14906;
  v20 = 0xE200000000000000;
  v17 = v21;
  v18 = v1;
  v6 = PrivateMLClientInferenceProviderError.underlyingErrors.getter();
  if (*(v6 + 16))
  {
    sub_21D0590D0(v6 + 32, &v13);

    v7 = v16;
    __swift_project_boxed_opaque_existential_1(&v13, v15);
    v8 = *(v7 + 24);
    v9 = sub_21D094790();
    MEMORY[0x223D3C530](v9);

    __swift_destroy_boxed_opaque_existential_0(&v13);
    v11 = v19;
    v10 = v20;
LABEL_5:
    v13 = v2;
    v14 = v4;

    MEMORY[0x223D3C530](v11, v10);

    return v13;
  }

  __break(1u);
  return result;
}

void sub_21D05C4F8()
{
  sub_21D090A98();

  JUMPOUT(0x223D3C1B0);
}

uint64_t static PrivateMLClientInferenceProviderError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27CE54280;

  return v0;
}

void sub_21D05C588()
{
  sub_21D090A98();

  JUMPOUT(0x223D3C1E0);
}

PrivateMLClientInferenceProvider::ErrorCodeDifferentiator_optional __swiftcall ErrorCodeDifferentiator.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 39999)
  {
    switch(rawValue)
    {
      case 10000:
        *v1 = 0;
        return rawValue;
      case 20000:
        *v1 = 1;
        return rawValue;
      case 30000:
        *v1 = 2;
        return rawValue;
    }

LABEL_14:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 59999)
  {
    if (rawValue == 60000)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 70000)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_14;
  }

  if (rawValue == 40000)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 50000)
  {
    goto LABEL_14;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_21D05C6A0()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](10000 * v1 + 10000);
  return sub_21D094870();
}

uint64_t sub_21D05C720()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](10000 * v1 + 10000);
  return sub_21D094870();
}

uint64_t static PrivateMLClientInferenceProviderError.errorDomain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27CE54280 = a1;
  off_27CE54288 = a2;
}

uint64_t sub_21D05C838()
{
  v0 = sub_21D094250();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_21D094240();
  qword_2812217C0 = result;
  return result;
}

uint64_t NewInferenceProvider.__allocating_init()()
{
  v1 = v0;
  v2 = sub_21D094230();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_2812217C8);
  v12 = *(v3 + 16);
  v12(v9 + v10, v11, v2);
  sub_21D094700();
  v12(v6, v9 + v10, v2);
  sub_21D094190();
  return v9;
}

uint64_t NewInferenceProvider.init()()
{
  v1 = sub_21D094230();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21D0941B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_2812217C8);
  v13 = *(v2 + 16);
  v13(v0 + v11, v12, v1);
  sub_21D094700();
  v13(v5, v0 + v11, v1);
  sub_21D094190();
  (*(v7 + 32))(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster, v10, v6);
  return v0;
}

uint64_t NewInferenceProvider.loadIn(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D05CBF0, 0, 0);
}

uint64_t sub_21D05CBF0()
{
  v12 = v0;
  v2 = v0[3];
  v1 = v0[4];

  v3 = sub_21D094210();
  v4 = sub_21D094580();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21D05550C(v6, v5, &v11);
    _os_log_impl(&dword_21D044000, v3, v4, "%s load in", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D3CDF0](v8, -1, -1);
    MEMORY[0x223D3CDF0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t NewInferenceProvider.loadOut(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D05CD60, 0, 0);
}

uint64_t sub_21D05CD60()
{
  v12 = v0;
  v2 = v0[3];
  v1 = v0[4];

  v3 = sub_21D094210();
  v4 = sub_21D094580();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21D05550C(v6, v5, &v11);
    _os_log_impl(&dword_21D044000, v3, v4, "%s load out", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D3CDF0](v8, -1, -1);
    MEMORY[0x223D3CDF0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t NewInferenceProvider.prewarmHint(_:)(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  v3 = sub_21D093FE0();
  v2[114] = v3;
  v4 = *(v3 - 8);
  v2[115] = v4;
  v5 = *(v4 + 64) + 15;
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v6 = sub_21D092FC0();
  v2[137] = v6;
  v7 = *(v6 - 8);
  v2[138] = v7;
  v8 = *(v7 + 64) + 15;
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();
  v9 = sub_21D093E70();
  v2[141] = v9;
  v10 = *(v9 - 8);
  v2[142] = v10;
  v11 = *(v10 + 64) + 15;
  v2[143] = swift_task_alloc();
  v12 = sub_21D094180();
  v2[144] = v12;
  v13 = *(v12 - 8);
  v2[145] = v13;
  v14 = *(v13 + 64) + 15;
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D05D18C, 0, 0);
}

uint64_t sub_21D05D18C()
{
  v380 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 904);
  sub_21D094170();
  v3 = sub_21D0941A0();
  v4 = sub_21D094660();
  if (sub_21D094680())
  {
    v5 = *(v0 + 1176);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v3, v4, v7, "prewarmHint", "", v6, 2u);
    MEMORY[0x223D3CDF0](v6, -1, -1);
  }

  v8 = *(v0 + 1176);
  v9 = *(v0 + 1168);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 896);

  (*(v10 + 16))(v9, v8, v11);
  v13 = sub_21D0941F0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 1184) = sub_21D0941E0();
  v16 = (*(v10 + 8))(v8, v11);
  *(v0 + 1312) = 0;
  v17 = MEMORY[0x223D3C0A0](v16);
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  v19 = sub_21D0937E0();
  if (!*(v18 + 16))
  {

    goto LABEL_10;
  }

  v21 = sub_21D055BA8(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_10:

    goto LABEL_15;
  }

  v24 = (*(v18 + 56) + 16 * v21);
  v26 = *v24;
  v25 = v24[1];

  if (v26 == 0x746E656E696D6D69 && v25 == 0xE800000000000000)
  {
  }

  else
  {
    v27 = sub_21D0947D0();

    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v28 = *(v0 + 904);
  *(v0 + 1312) = 1;
  v29 = sub_21D094210();
  v30 = sub_21D094560();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_21D044000, v29, v30, "Prewam Urgency Level: imminent", v31, 2u);
    MEMORY[0x223D3CDF0](v31, -1, -1);
  }

LABEL_15:
  v32 = *(v0 + 1144);
  v33 = *(v0 + 1136);
  v34 = *(v0 + 1128);
  v35 = *(v0 + 1120);
  v36 = *(v0 + 896);
  v37 = sub_21D093D00();
  *(v0 + 1192) = v37;
  v38 = *(v37 - 8);
  v364 = v37;
  v368 = v38;
  *(v0 + 1200) = v38;
  v39 = *(v38 + 64) + 15;
  v40 = swift_task_alloc();
  *(v0 + 1208) = v40;
  sub_21D093CF0();
  sub_21D093FB0();
  sub_21D093E60();
  (*(v33 + 8))(v32, v34);
  LOBYTE(v379[0]) = 0;
  sub_21D093CE0();
  sub_21D092FB0();
  v41 = sub_21D092FA0();
  v43 = v42;
  *(v0 + 1216) = v41;
  *(v0 + 1224) = v42;
  v44 = sub_21D093F90();
  v45 = sub_21D0605B4(v35, v44, 0);
  v47 = v46;
  *(v0 + 1232) = v45;
  *(v0 + 1240) = v46;
  v48 = sub_21D093040();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_21D093030();
  sub_21D093FC0();
  sub_21D093010();

  v350 = v45;
  v352 = v41;
  v356 = v43;
  v362 = v47;
  v354 = v40;
  if (!*(v0 + 80))
  {
    v91 = *(v0 + 968);
    v92 = *(v0 + 960);
    v93 = *(v0 + 952);
    v94 = *(v0 + 920);
    v95 = *(v0 + 912);
    v96 = *(v0 + 904);
    v97 = *(v0 + 896);
    sub_21D04D27C(v0 + 56, &qword_27CE54290, &qword_21D095DF8);
    v98 = *(v94 + 16);
    v98(v91, v97, v95);
    v98(v92, v97, v95);
    v98(v93, v97, v95);

    v99 = sub_21D094210();
    v100 = sub_21D094570();

    v373 = v99;
    v101 = os_log_type_enabled(v99, v100);
    v346 = *(v0 + 1120);
    if (v101)
    {
      v102 = *(v0 + 1112);
      v103 = *(v0 + 1104);
      v104 = *(v0 + 1096);
      v105 = *(v0 + 968);
      v323 = *(v0 + 952);
      v106 = *(v0 + 920);
      v315 = *(v0 + 912);
      v318 = *(v0 + 960);
      v332 = v100;
      v107 = swift_slowAlloc();
      v339 = swift_slowAlloc();
      v379[0] = v339;
      *v107 = 136316162;
      v108 = sub_21D05550C(v352, v356, v379);

      *(v107 + 4) = v108;
      *(v107 + 12) = 2080;
      MEMORY[0x223D3C050](v109);
      v110 = sub_21D092FA0();
      v112 = v111;
      v358 = *(v103 + 8);
      v358(v102, v104);
      v113 = *(v106 + 8);
      v113(v105, v315);
      v114 = sub_21D05550C(v110, v112, v379);

      *(v107 + 14) = v114;
      *(v107 + 22) = 2080;
      v115 = sub_21D093FC0();
      v117 = v116;
      v113(v318, v315);
      v118 = sub_21D05550C(v115, v117, v379);

      *(v107 + 24) = v118;
      *(v107 + 32) = 2080;
      v120 = MEMORY[0x223D3C070](v119);
      v122 = v121;
      v113(v323, v315);
      v123 = sub_21D05550C(v120, v122, v379);

      *(v107 + 34) = v123;
      *(v107 + 42) = 2080;
      v124 = sub_21D05550C(v350, v362, v379);

      *(v107 + 44) = v124;
      _os_log_impl(&dword_21D044000, v373, v332, "%s prewarm for unknown bundle. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v107, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v339, -1, -1);
      MEMORY[0x223D3CDF0](v107, -1, -1);

      v358(v346, v104);
    }

    else
    {
      v172 = *(v0 + 1104);
      v173 = *(v0 + 1096);
      v174 = *(v0 + 968);
      v175 = *(v0 + 960);
      v176 = *(v0 + 952);
      v177 = *(v0 + 920);
      v178 = *(v0 + 912);

      v179 = *(v177 + 8);
      v179(v176, v178);
      v179(v175, v178);
      v179(v174, v178);
      (*(v172 + 8))(v346, v173);
    }

    (*(v368 + 8))(v354, v364);
LABEL_49:

    v235 = *(v0 + 1184);
    v236 = *(v0 + 1176);
    v237 = *(v0 + 1168);
    v238 = *(v0 + 1144);
    v239 = *(v0 + 1120);
    v240 = *(v0 + 1112);
    v241 = *(v0 + 1088);
    v242 = *(v0 + 1080);
    v243 = *(v0 + 1072);
    v311 = *(v0 + 1064);
    v312 = *(v0 + 1056);
    v313 = *(v0 + 1048);
    v316 = *(v0 + 1040);
    v321 = *(v0 + 1032);
    v326 = *(v0 + 1024);
    v329 = *(v0 + 1016);
    v335 = *(v0 + 1008);
    v342 = *(v0 + 1000);
    v349 = *(v0 + 992);
    v351 = *(v0 + 984);
    v353 = *(v0 + 976);
    v355 = *(v0 + 968);
    v361 = *(v0 + 960);
    v363 = *(v0 + 952);
    v365 = *(v0 + 944);
    v369 = *(v0 + 936);
    v376 = *(v0 + 928);
    v244 = *(v0 + 904);
    sub_21D060360();

    v245 = *(v0 + 8);

    return v245();
  }

  sub_21D046D78((v0 + 56), v0 + 16);
  v51 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_21D093060();
  v53 = result;
  v54 = *(result + 16);
  if (!v54)
  {
LABEL_21:
    v57 = *(v0 + 992);
    v58 = *(v0 + 984);
    v59 = *(v0 + 976);
    v60 = *(v0 + 920);
    v61 = *(v0 + 912);
    v62 = *(v0 + 904);
    v63 = *(v0 + 896);

    v64 = *(v60 + 16);
    v64(v57, v63, v61);
    v64(v58, v63, v61);
    v64(v59, v63, v61);

    v65 = sub_21D094210();
    v66 = sub_21D094570();

    v372 = v65;
    v67 = os_log_type_enabled(v65, v66);
    v345 = *(v0 + 1120);
    if (v67)
    {
      v68 = *(v0 + 1112);
      v69 = *(v0 + 1104);
      v70 = *(v0 + 1096);
      v71 = *(v0 + 992);
      v322 = *(v0 + 976);
      v72 = *(v0 + 920);
      v314 = *(v0 + 912);
      v317 = *(v0 + 984);
      v331 = v66;
      v73 = swift_slowAlloc();
      v338 = swift_slowAlloc();
      v379[0] = v338;
      *v73 = 136316162;
      v74 = sub_21D05550C(v352, v356, v379);

      *(v73 + 4) = v74;
      *(v73 + 12) = 2080;
      MEMORY[0x223D3C050](v75);
      v76 = sub_21D092FA0();
      v78 = v77;
      v357 = *(v69 + 8);
      v357(v68, v70);
      v79 = *(v72 + 8);
      v79(v71, v314);
      v80 = sub_21D05550C(v76, v78, v379);

      *(v73 + 14) = v80;
      *(v73 + 22) = 2080;
      v81 = sub_21D093FC0();
      v83 = v82;
      v79(v317, v314);
      v84 = sub_21D05550C(v81, v83, v379);

      *(v73 + 24) = v84;
      *(v73 + 32) = 2080;
      v86 = MEMORY[0x223D3C070](v85);
      v88 = v87;
      v79(v322, v314);
      v89 = sub_21D05550C(v86, v88, v379);

      *(v73 + 34) = v89;
      *(v73 + 42) = 2080;
      v90 = sub_21D05550C(v350, v362, v379);

      *(v73 + 44) = v90;
      _os_log_impl(&dword_21D044000, v372, v331, "%s prewarm with no LLModel called. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v73, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v338, -1, -1);
      MEMORY[0x223D3CDF0](v73, -1, -1);

      v357(v345, v70);
    }

    else
    {
      v125 = *(v0 + 1104);
      v126 = *(v0 + 1096);
      v127 = *(v0 + 992);
      v128 = *(v0 + 984);
      v129 = *(v0 + 976);
      v130 = *(v0 + 920);
      v131 = *(v0 + 912);

      v132 = *(v130 + 8);
      v132(v129, v131);
      v132(v128, v131);
      v132(v127, v131);
      (*(v125 + 8))(v345, v126);
    }

    (*(v368 + 8))();
LABEL_48:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_49;
  }

  v55 = 0;
  v56 = result + 32;
  while (1)
  {
    if (v55 >= *(v53 + 16))
    {
      __break(1u);
      goto LABEL_59;
    }

    sub_21D0590D0(v56, v0 + 176);
    sub_21D0590D0(v0 + 176, v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54298, &qword_21D095E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A0, &qword_21D095E08);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v55;
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v56 += 40;
    if (v54 == v55)
    {
      goto LABEL_21;
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  sub_21D046D78((v0 + 176), v0 + 136);
  sub_21D046D78((v0 + 136), v0 + 96);
  v133 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_21D093060();
  v134 = result;
  v135 = *(result + 16);
  if (!v135)
  {
LABEL_32:
    v138 = *(v0 + 1016);
    v139 = *(v0 + 1008);
    v140 = *(v0 + 1000);
    v141 = *(v0 + 920);
    v142 = *(v0 + 912);
    v143 = *(v0 + 904);
    v144 = *(v0 + 896);

    v145 = *(v141 + 16);
    v145(v138, v144, v142);
    v145(v139, v144, v142);
    v145(v140, v144, v142);

    v146 = sub_21D094210();
    v147 = sub_21D094570();

    v374 = v146;
    v148 = os_log_type_enabled(v146, v147);
    v347 = *(v0 + 1120);
    if (v148)
    {
      v149 = *(v0 + 1112);
      v150 = *(v0 + 1104);
      v340 = *(v0 + 1096);
      v333 = v147;
      v151 = *(v0 + 1016);
      v319 = *(v0 + 1008);
      v324 = *(v0 + 1000);
      v152 = *(v0 + 920);
      v153 = *(v0 + 912);
      v154 = swift_slowAlloc();
      v327 = swift_slowAlloc();
      v379[0] = v327;
      *v154 = 136316162;
      v155 = sub_21D05550C(v352, v356, v379);

      *(v154 + 4) = v155;
      *(v154 + 12) = 2080;
      MEMORY[0x223D3C050](v156);
      v157 = sub_21D092FA0();
      v159 = v158;
      v359 = *(v150 + 8);
      v359(v149, v340);
      v160 = *(v152 + 8);
      v160(v151, v153);
      v161 = sub_21D05550C(v157, v159, v379);

      *(v154 + 14) = v161;
      *(v154 + 22) = 2080;
      v162 = sub_21D093FC0();
      v164 = v163;
      v160(v319, v153);
      v165 = sub_21D05550C(v162, v164, v379);

      *(v154 + 24) = v165;
      *(v154 + 32) = 2080;
      v167 = MEMORY[0x223D3C070](v166);
      v169 = v168;
      v160(v324, v153);
      v170 = sub_21D05550C(v167, v169, v379);

      *(v154 + 34) = v170;
      *(v154 + 42) = 2080;
      v171 = sub_21D05550C(v350, v362, v379);

      *(v154 + 44) = v171;
      _os_log_impl(&dword_21D044000, v374, v333, "%s prewarm with no LLMAdapter called. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v154, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v327, -1, -1);
      MEMORY[0x223D3CDF0](v154, -1, -1);

      v359(v347, v340);
    }

    else
    {
      v180 = *(v0 + 1104);
      v181 = *(v0 + 1096);
      v182 = *(v0 + 1016);
      v183 = *(v0 + 1008);
      v184 = *(v0 + 1000);
      v185 = *(v0 + 920);
      v186 = *(v0 + 912);

      v187 = *(v185 + 8);
      v187(v184, v186);
      v187(v183, v186);
      v187(v182, v186);
      (*(v180 + 8))(v347, v181);
    }

    (*(v368 + 8))();
LABEL_47:
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    goto LABEL_48;
  }

  v136 = 0;
  v137 = result + 32;
  while (v136 < *(v134 + 16))
  {
    sub_21D0590D0(v137, v0 + 376);
    sub_21D0590D0(v0 + 376, v0 + 416);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A8, &qword_21D095E10);
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 456));
      sub_21D046D78((v0 + 376), v0 + 336);
      sub_21D046D78((v0 + 336), v0 + 296);
      v188 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      result = sub_21D093060();
      v189 = result;
      v190 = *(result + 16);
      if (!v190)
      {
LABEL_43:
        v193 = *(v0 + 1040);
        v194 = *(v0 + 1032);
        v195 = *(v0 + 1024);
        v196 = *(v0 + 920);
        v197 = *(v0 + 912);
        v198 = *(v0 + 904);
        v199 = *(v0 + 896);

        v200 = *(v196 + 16);
        v200(v193, v199, v197);
        v200(v194, v199, v197);
        v200(v195, v199, v197);

        v201 = sub_21D094210();
        v202 = sub_21D094570();

        v375 = v201;
        v203 = os_log_type_enabled(v201, v202);
        v348 = *(v0 + 1120);
        if (v203)
        {
          v204 = *(v0 + 1112);
          v205 = *(v0 + 1104);
          v341 = *(v0 + 1096);
          v334 = v202;
          v206 = *(v0 + 1040);
          v320 = *(v0 + 1032);
          v325 = *(v0 + 1024);
          v207 = *(v0 + 920);
          v208 = *(v0 + 912);
          v209 = swift_slowAlloc();
          v328 = swift_slowAlloc();
          v379[0] = v328;
          *v209 = 136316162;
          v210 = sub_21D05550C(v352, v356, v379);

          *(v209 + 4) = v210;
          *(v209 + 12) = 2080;
          MEMORY[0x223D3C050](v211);
          v212 = sub_21D092FA0();
          v214 = v213;
          v360 = *(v205 + 8);
          v360(v204, v341);
          v215 = *(v207 + 8);
          v215(v206, v208);
          v216 = sub_21D05550C(v212, v214, v379);

          *(v209 + 14) = v216;
          *(v209 + 22) = 2080;
          v217 = sub_21D093FC0();
          v219 = v218;
          v215(v320, v208);
          v220 = sub_21D05550C(v217, v219, v379);

          *(v209 + 24) = v220;
          *(v209 + 32) = 2080;
          v222 = MEMORY[0x223D3C070](v221);
          v224 = v223;
          v215(v325, v208);
          v225 = sub_21D05550C(v222, v224, v379);

          *(v209 + 34) = v225;
          *(v209 + 42) = 2080;
          v226 = sub_21D05550C(v350, v362, v379);

          *(v209 + 44) = v226;
          _os_log_impl(&dword_21D044000, v375, v334, "%s prewarm with no Tokenizer called. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v209, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v328, -1, -1);
          MEMORY[0x223D3CDF0](v209, -1, -1);

          v360(v348, v341);
        }

        else
        {
          v227 = *(v0 + 1104);
          v228 = *(v0 + 1096);
          v229 = *(v0 + 1040);
          v230 = *(v0 + 1032);
          v231 = *(v0 + 1024);
          v232 = *(v0 + 920);
          v233 = *(v0 + 912);

          v234 = *(v232 + 8);
          v234(v231, v233);
          v234(v230, v233);
          v234(v229, v233);
          (*(v227 + 8))(v348, v228);
        }

        (*(v368 + 8))();
        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        goto LABEL_47;
      }

      v191 = 0;
      v192 = result + 32;
      while (v191 < *(v189 + 16))
      {
        sub_21D0590D0(v192, v0 + 536);
        sub_21D0590D0(v0 + 536, v0 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B0, &qword_21D095E18);
        if (swift_dynamicCast())
        {
          v246 = *(v0 + 896);

          __swift_destroy_boxed_opaque_existential_0((v0 + 616));
          sub_21D046D78((v0 + 536), v0 + 496);
          sub_21D093FC0();
          v247 = sub_21D092FF0();
          v249 = v248;
          v343 = *(v0 + 1088);
          v366 = *(v0 + 1080);
          v370 = *(v0 + 1072);
          v250 = *(v0 + 920);
          v336 = *(v0 + 912);
          v377 = *(v0 + 904);
          v251 = *(v0 + 896);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
          v252 = swift_allocObject();
          *(v252 + 16) = xmmword_21D095DC0;
          *(v252 + 32) = 0x6C65646F6DLL;
          *(v252 + 40) = 0xE500000000000000;
          v253 = *(v0 + 128);
          __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
          *(v252 + 48) = sub_21D093050();
          *(v252 + 56) = v254;
          *(v252 + 64) = 0x72657470616461;
          *(v252 + 72) = 0xE700000000000000;
          v255 = *(v0 + 328);
          __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
          *(v252 + 80) = sub_21D093050();
          *(v252 + 88) = v256;
          strcpy((v252 + 96), "inference-id");
          *(v252 + 109) = 0;
          *(v252 + 110) = -5120;
          *(v252 + 112) = v247;
          *(v252 + 120) = v249;
          *(v252 + 128) = 0x65662D656C707061;
          *(v252 + 136) = 0xEF64696572757461;
          *(v252 + 144) = MEMORY[0x223D3C070]();
          *(v252 + 152) = v257;
          v258 = sub_21D0900B0(v252);
          *(v0 + 1248) = v258;
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542C0, &qword_21D095E28);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v0 + 1256) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
          v259 = *(v250 + 16);
          *(v0 + 1264) = v259;
          *(v0 + 1272) = (v250 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v259(v343, v251, v336);
          v259(v366, v251, v336);
          v259(v370, v251, v336);
          sub_21D0590D0(v0 + 96, v0 + 656);
          sub_21D0590D0(v0 + 296, v0 + 696);
          sub_21D0590D0(v0 + 496, v0 + 736);

          v260 = v362;

          v261 = sub_21D094210();
          v262 = sub_21D094580();

          if (os_log_type_enabled(v261, v262))
          {
            v378 = v261;
            v263 = *(v0 + 1112);
            v264 = *(v0 + 1104);
            v265 = v258;
            v266 = *(v0 + 1088);
            v330 = *(v0 + 1096);
            v337 = *(v0 + 1080);
            v344 = *(v0 + 1072);
            v267 = *(v0 + 920);
            v268 = *(v0 + 912);
            v269 = swift_slowAlloc();
            v371 = swift_slowAlloc();
            v379[0] = v371;
            *v269 = 136316930;
            *(v269 + 4) = sub_21D05550C(v352, v356, v379);
            *(v269 + 12) = 2080;
            v367 = v262;
            MEMORY[0x223D3C050]();
            v270 = sub_21D092FA0();
            v272 = v271;
            (*(v264 + 8))(v263, v330);
            v273 = *(v267 + 8);
            v274 = v266;
            v258 = v265;
            v273(v274, v268);
            v275 = sub_21D05550C(v270, v272, v379);

            *(v269 + 14) = v275;
            *(v269 + 22) = 2080;
            v276 = sub_21D093FC0();
            v278 = v277;
            v273(v337, v268);
            v279 = sub_21D05550C(v276, v278, v379);

            *(v269 + 24) = v279;
            *(v269 + 32) = 2080;
            v281 = MEMORY[0x223D3C070](v280);
            v283 = v282;
            v273(v344, v268);
            v260 = v362;
            v284 = sub_21D05550C(v281, v283, v379);

            *(v269 + 34) = v284;
            *(v269 + 42) = 2080;
            v285 = v350;
            *(v269 + 44) = sub_21D05550C(v350, v362, v379);
            *(v269 + 52) = 2080;
            v286 = *(v0 + 688);
            __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
            v287 = sub_21D093050();
            v289 = v288;
            __swift_destroy_boxed_opaque_existential_0((v0 + 656));
            v290 = sub_21D05550C(v287, v289, v379);

            *(v269 + 54) = v290;
            *(v269 + 62) = 2080;
            v291 = *(v0 + 728);
            __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
            v292 = sub_21D093050();
            v294 = v293;
            __swift_destroy_boxed_opaque_existential_0((v0 + 696));
            v295 = sub_21D05550C(v292, v294, v379);

            *(v269 + 64) = v295;
            *(v269 + 72) = 2080;
            v296 = *(v0 + 768);
            __swift_project_boxed_opaque_existential_1((v0 + 736), *(v0 + 760));
            v297 = sub_21D093050();
            v299 = v298;
            __swift_destroy_boxed_opaque_existential_0((v0 + 736));
            v300 = sub_21D05550C(v297, v299, v379);
            v301 = v352;

            *(v269 + 74) = v300;
            _os_log_impl(&dword_21D044000, v378, v367, "%s Initiating prewarm. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s\nmodel=%s adapter=%stokenizerResource=%s", v269, 0x52u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v371, -1, -1);
            MEMORY[0x223D3CDF0](v269, -1, -1);

            v302 = v354;
          }

          else
          {
            v303 = *(v0 + 1088);
            v304 = *(v0 + 1080);
            v305 = *(v0 + 1072);
            v306 = *(v0 + 920);
            v307 = *(v0 + 912);

            v273 = *(v306 + 8);
            v273(v305, v307);
            v273(v304, v307);
            v273(v303, v307);
            __swift_destroy_boxed_opaque_existential_0((v0 + 656));
            __swift_destroy_boxed_opaque_existential_0((v0 + 696));
            __swift_destroy_boxed_opaque_existential_0((v0 + 736));
            v301 = v352;
            v302 = v354;
            v285 = v350;
          }

          *(v0 + 1280) = v273;
          v308 = *(v0 + 896);
          v309 = swift_task_alloc();
          *(v0 + 1288) = v309;
          v309[2] = v301;
          v309[3] = v356;
          v309[4] = v258;
          v309[5] = v308;
          v309[6] = v285;
          v309[7] = v260;
          v309[8] = v0 + 1312;
          v310 = swift_task_alloc();
          *(v0 + 1296) = v310;
          *v310 = v0;
          v310[1] = sub_21D05F468;

          return sub_21D090360(v302, &unk_21D095E38, v309);
        }

        ++v191;
        result = __swift_destroy_boxed_opaque_existential_0((v0 + 536));
        v192 += 40;
        if (v190 == v191)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_60;
    }

    ++v136;
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 376));
    v137 += 40;
    if (v135 == v136)
    {
      goto LABEL_32;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_21D05F468()
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  v4 = *v1;
  *(*v1 + 1304) = v0;

  v5 = *(v2 + 1288);
  v6 = *(v2 + 1248);

  if (v0)
  {
    v7 = sub_21D05FD28;
  }

  else
  {
    v7 = sub_21D05F5B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21D05F5B8()
{
  v112 = v0;
  v1 = v0[159];
  v2 = v0[158];
  v108 = v0[157];
  v3 = v0[155];
  v4 = v0[153];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[114];
  v8 = v0[113];
  v9 = v0[112];
  v2(v0[133], v9, v7);
  v2(v5, v9, v7);
  v2(v6, v9, v7);
  sub_21D0590D0((v0 + 12), (v0 + 97));
  sub_21D0590D0((v0 + 37), (v0 + 102));
  sub_21D0590D0((v0 + 62), (v0 + 107));

  v10 = sub_21D094210();
  v11 = sub_21D094580();

  v109 = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[160];
  v106 = v0[155];
  if (v12)
  {
    v86 = v0[154];
    v14 = v0[153];
    v92 = v11;
    v15 = v0[152];
    v103 = v0[151];
    v97 = v0[150];
    v100 = v0[149];
    v94 = v0[140];
    v16 = v0[139];
    v17 = v0[138];
    v18 = v0[137];
    v88 = v18;
    v19 = v0[133];
    v20 = v0[132];
    v82 = v0[131];
    v77 = v0[115];
    v79 = v0[114];
    v21 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v111 = v90;
    *v21 = 136316930;
    v22 = sub_21D05550C(v15, v14, &v111);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2080;
    MEMORY[0x223D3C050](v23);
    v24 = sub_21D092FA0();
    v26 = v25;
    v84 = *(v17 + 8);
    v84(v16, v18);
    v13(v19, v79);
    v27 = sub_21D05550C(v24, v26, &v111);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = sub_21D093FC0();
    v30 = v29;
    v13(v20, v79);
    v31 = sub_21D05550C(v28, v30, &v111);

    *(v21 + 24) = v31;
    *(v21 + 32) = 2080;
    v33 = MEMORY[0x223D3C070](v32);
    v35 = v34;
    v13(v82, v79);
    v36 = sub_21D05550C(v33, v35, &v111);

    *(v21 + 34) = v36;
    *(v21 + 42) = 2080;
    v37 = sub_21D05550C(v86, v106, &v111);

    *(v21 + 44) = v37;
    *(v21 + 52) = 2080;
    v38 = v0[101];
    __swift_project_boxed_opaque_existential_1(v0 + 97, v0[100]);
    v39 = sub_21D093050();
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    v42 = sub_21D05550C(v39, v41, &v111);

    *(v21 + 54) = v42;
    *(v21 + 62) = 2080;
    v43 = v0[106];
    __swift_project_boxed_opaque_existential_1(v0 + 102, v0[105]);
    v44 = sub_21D093050();
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    v47 = sub_21D05550C(v44, v46, &v111);

    *(v21 + 64) = v47;
    *(v21 + 72) = 2080;
    v48 = v0[111];
    __swift_project_boxed_opaque_existential_1(v0 + 107, v0[110]);
    v49 = sub_21D093050();
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_0(v0 + 107);
    v52 = sub_21D05550C(v49, v51, &v111);

    *(v21 + 74) = v52;
    _os_log_impl(&dword_21D044000, v109, v92, "%s prewarm complete. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s model=%s adapter=%stokenizerResource=%s", v21, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v90, -1, -1);
    MEMORY[0x223D3CDF0](v21, -1, -1);

    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    v84(v94, v88);
    (*(v97 + 8))(v103, v100);
  }

  else
  {
    v53 = v0[153];
    v104 = v0[151];
    v54 = v0[150];
    v98 = v0[140];
    v101 = v0[149];
    v55 = v0[138];
    v95 = v0[137];
    v56 = v0[133];
    v57 = v0[132];
    v58 = v0[131];
    v59 = v0[115];
    v60 = v0[114];

    v13(v58, v60);
    v13(v57, v60);
    v13(v56, v60);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    (*(v55 + 8))(v98, v95);
    (*(v54 + 8))(v104, v101);
    __swift_destroy_boxed_opaque_existential_0(v0 + 107);
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v61 = v0[151];

  v62 = v0[148];
  v63 = v0[147];
  v64 = v0[146];
  v65 = v0[143];
  v66 = v0[140];
  v67 = v0[139];
  v68 = v0[136];
  v69 = v0[135];
  v70 = v0[134];
  v74 = v0[133];
  v75 = v0[132];
  v76 = v0[131];
  v78 = v0[130];
  v80 = v0[129];
  v81 = v0[128];
  v83 = v0[127];
  v85 = v0[126];
  v87 = v0[125];
  v89 = v0[124];
  v91 = v0[123];
  v93 = v0[122];
  v96 = v0[121];
  v99 = v0[120];
  v102 = v0[119];
  v105 = v0[118];
  v107 = v0[117];
  v110 = v0[116];
  v71 = v0[113];
  sub_21D060360();

  v72 = v0[1];

  return v72();
}

uint64_t sub_21D05FD28()
{
  v96 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[155];
  v2 = v0[153];
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[114];
  v90 = v0[113];
  v93 = v0[163];
  v6 = v0[112];
  v7 = *(v0[115] + 16);
  v7(v0[118], v6, v5);
  v7(v3, v6, v5);
  v7(v4, v6, v5);

  v8 = sub_21D094210();
  v9 = sub_21D094580();

  v91 = v8;
  v10 = os_log_type_enabled(v8, v9);
  v88 = v0[155];
  if (v10)
  {
    v73 = v0[154];
    v11 = v0[153];
    v12 = v0[152];
    v82 = v0[149];
    v85 = v0[151];
    v77 = v0[140];
    v79 = v0[150];
    v13 = v0[139];
    v75 = v9;
    v14 = v0[138];
    v15 = v0[137];
    v16 = v0[118];
    v67 = v0[116];
    v17 = v0[115];
    v63 = v0[114];
    v65 = v0[117];
    v18 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v95 = v71;
    *v18 = 136316162;
    v19 = sub_21D05550C(v12, v11, &v95);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2080;
    MEMORY[0x223D3C050](v20);
    v21 = sub_21D092FA0();
    v23 = v22;
    v24 = *(v14 + 8);
    v24(v13, v15);
    v25 = *(v17 + 8);
    v25(v16, v63);
    v26 = sub_21D05550C(v21, v23, &v95);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2080;
    v27 = sub_21D093FC0();
    v29 = v28;
    v25(v65, v63);
    v30 = sub_21D05550C(v27, v29, &v95);

    *(v18 + 24) = v30;
    *(v18 + 32) = 2080;
    v32 = MEMORY[0x223D3C070](v31);
    v34 = v33;
    v25(v67, v63);
    v35 = sub_21D05550C(v32, v34, &v95);

    *(v18 + 34) = v35;
    *(v18 + 42) = 2080;
    v36 = sub_21D05550C(v73, v88, &v95);

    *(v18 + 44) = v36;
    _os_log_impl(&dword_21D044000, v91, v75, "%s prewarm failed. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v71, -1, -1);
    MEMORY[0x223D3CDF0](v18, -1, -1);

    v24(v77, v15);
    (*(v79 + 8))(v85, v82);
  }

  else
  {
    v37 = v0[153];
    v38 = v0[150];
    v83 = v0[149];
    v86 = v0[151];
    v80 = v0[140];
    v39 = v0[138];
    v40 = v0[137];
    v41 = v0[118];
    v42 = v0[117];
    v43 = v0[116];
    v44 = v0[115];
    v45 = v0[114];

    v46 = *(v44 + 8);
    v46(v43, v45);
    v46(v42, v45);
    v46(v41, v45);
    (*(v39 + 8))(v80, v40);
    (*(v38 + 8))(v86, v83);
  }

  v47 = v0[151];

  v48 = v0[148];
  v49 = v0[147];
  v50 = v0[146];
  v51 = v0[143];
  v52 = v0[140];
  v53 = v0[139];
  v54 = v0[136];
  v55 = v0[135];
  v56 = v0[134];
  v60 = v0[133];
  v61 = v0[132];
  v62 = v0[131];
  v64 = v0[130];
  v66 = v0[129];
  v68 = v0[128];
  v69 = v0[127];
  v70 = v0[126];
  v72 = v0[125];
  v74 = v0[124];
  v76 = v0[123];
  v78 = v0[122];
  v81 = v0[121];
  v84 = v0[120];
  v87 = v0[119];
  v89 = v0[118];
  v92 = v0[117];
  v94 = v0[116];
  v57 = v0[113];
  sub_21D060360();

  v58 = v0[1];

  return v58();
}

uint64_t sub_21D060360()
{
  v0 = sub_21D0941C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21D094180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21D0941A0();
  sub_21D0941D0();
  v11 = sub_21D094650();
  if (sub_21D094680())
  {

    sub_21D094200();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v10, v11, v14, "prewarmHint", v12, v13, 2u);
    MEMORY[0x223D3CDF0](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21D0605B4(uint64_t *a1, uint64_t a2, int a3)
{
  LODWORD(v162) = a3;
  v164 = a1;
  v4 = sub_21D092FC0();
  v165 = *(v4 - 8);
  v166 = v4;
  v5 = *(v165 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v158 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v160 = &v158 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v161 = &v158 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v158 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v158 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v158 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = sub_21D094230();
  v26 = *(v25 - 1);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v25, qword_2812217C8);
  v31 = *(v26 + 16);
  v168 = v25;
  v169 = v29;
  v31(v29, v30, v25);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_59;
  }

  v29 = a2;
  if (a2 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
    goto LABEL_32;
  }

  v167 = v26;
  v32 = [objc_opt_self() identifierWithPid_];
  if (!v32)
  {
    v34 = v165;
    v35 = v166;
    (*(v165 + 16))(v8, v164, v166);
    v36 = v169;
    v37 = sub_21D094210();
    v38 = sub_21D094560();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v163 = v29;
      v41 = v40;
      v171[0] = v40;
      *v39 = 136315394;
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v42 = sub_21D094790();
      v44 = v43;
      (*(v34 + 8))(v8, v35);
      v45 = sub_21D05550C(v42, v44, v171);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2048;
      *(v39 + 14) = v163;
      _os_log_impl(&dword_21D044000, v37, v38, "%s could not get identifier for pid %ld", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x223D3CDF0](v41, -1, -1);
      MEMORY[0x223D3CDF0](v39, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v8, v35);
    }

    (*(v167 + 8))(v36, v168);
    return 0x6E6B6E752E6D6F63;
  }

  v33 = v32;
  v163 = a2;
  sub_21D091E88(0, &qword_2812217A8, 0x277D46F48);
  v29 = v33;
  v25 = sub_21D09029C(v29);

  v46 = [v25 isDaemon];
  if (v46)
  {
    v47 = [v25 name];
    if (v47)
    {
      v48 = v47;
      v49 = sub_21D0943F0();
      v51 = v50;
    }

    else
    {
      v49 = 0xD000000000000012;
      v51 = 0x800000021D097500;
    }

    v75 = v169;
    v159 = v49;
    v171[0] = v49;
    v171[1] = v51;
    MEMORY[0x28223BE20](v47);
    *(&v158 - 2) = v171;
    if ((sub_21D05B914(sub_21D091FD4, (&v158 - 4), &unk_282E968B0) & 1) == 0 && (v162 & 1) == 0)
    {
      v160 = v29;
      v76 = v165;
      v77 = v166;
      (*(v165 + 16))(v24, v164, v166);

      v78 = sub_21D094210();
      v79 = sub_21D094560();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v162 = v25;
        v81 = v80;
        v82 = swift_slowAlloc();
        v171[0] = v82;
        *v81 = 136315650;
        sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
        v83 = sub_21D094790();
        v85 = v84;
        (*(v76 + 8))(v24, v77);
        v86 = sub_21D05550C(v83, v85, v171);
        v75 = v169;

        *(v81 + 4) = v86;
        *(v81 + 12) = 2080;
        v87 = sub_21D05550C(v159, v51, v171);

        *(v81 + 14) = v87;
        *(v81 + 22) = 2048;
        *(v81 + 24) = v163;
        _os_log_impl(&dword_21D044000, v78, v79, "%s daemon %s for pid=%ld is not allowed", v81, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v82, -1, -1);
        v88 = v81;
        v25 = v162;
        MEMORY[0x223D3CDF0](v88, -1, -1);
      }

      else
      {

        (*(v76 + 8))(v24, v77);
      }

      v95 = v167;

      (*(v95 + 8))(v75, v168);
      return 0xD000000000000012;
    }

    v89 = sub_21D094210();
    v90 = sub_21D094560();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = v25;
      v93 = swift_slowAlloc();
      v171[0] = v93;
      *v91 = 136315138;
      v94 = v159;
      *(v91 + 4) = sub_21D05550C(v159, v51, v171);
      _os_log_impl(&dword_21D044000, v89, v90, "allowing daemon %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x223D3CDF0](v93, -1, -1);
      MEMORY[0x223D3CDF0](v91, -1, -1);

      (*(v167 + 8))(v75, v168);
      return v94;
    }

    (*(v167 + 8))(v75, v168);
    return v159;
  }

  v53 = [v25 bundle];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 identifier];
    if (v55)
    {
      v56 = v55;
      v57 = sub_21D0943F0();
      v59 = v58;

      v159 = v57;
      if ((sub_21D08F17C() & 1) == 0 && (v162 & 1) == 0)
      {

        v60 = v165;
        v61 = v166;
        (*(v165 + 16))(v18, v164, v166);
        v62 = sub_21D094210();
        v63 = sub_21D094560();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v164 = v54;
          v65 = v64;
          v66 = swift_slowAlloc();
          v162 = v25;
          v67 = v66;
          v171[0] = v66;
          *v65 = 136315138;
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
          v68 = sub_21D094790();
          v69 = v29;
          v71 = v70;
          (*(v60 + 8))(v18, v61);
          v72 = sub_21D05550C(v68, v71, v171);
          v29 = v69;

          *(v65 + 4) = v72;
          _os_log_impl(&dword_21D044000, v62, v63, "%s is third party bundle-id", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          v73 = v67;
          v25 = v162;
          MEMORY[0x223D3CDF0](v73, -1, -1);
          v74 = v65;
          v54 = v164;
          MEMORY[0x223D3CDF0](v74, -1, -1);
        }

        else
        {

          (*(v60 + 8))(v18, v61);
        }

        v156 = v167;

        (*(v156 + 8))(v169, v168);
        return 0xD000000000000017;
      }

      v162 = v25;
      v116 = v165;
      v117 = v166;
      (*(v165 + 16))(v21, v164, v166);

      v96 = v169;
      v118 = sub_21D094210();
      v119 = sub_21D094560();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v164 = v54;
        v121 = v120;
        v122 = swift_slowAlloc();
        v160 = v29;
        v123 = v122;
        v171[0] = v122;
        *v121 = 136315650;
        sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
        v124 = sub_21D094790();
        v126 = v125;
        (*(v116 + 8))(v21, v117);
        v127 = sub_21D05550C(v124, v126, v171);

        *(v121 + 4) = v127;
        *(v121 + 12) = 2080;
        v128 = v159;
        *(v121 + 14) = sub_21D05550C(v159, v59, v171);
        *(v121 + 22) = 2048;
        *(v121 + 24) = v163;
        _os_log_impl(&dword_21D044000, v118, v119, "%s is bundle-id %s for pid %ld", v121, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v123, -1, -1);
        MEMORY[0x223D3CDF0](v121, -1, -1);

        (*(v167 + 8))(v169, v168);
        return v128;
      }

      (*(v116 + 8))(v21, v117);
      goto LABEL_54;
    }
  }

  if (qword_281221488 != -1)
  {
    goto LABEL_60;
  }

LABEL_32:
  swift_beginAccess();
  v96 = v169;
  v98 = v165;
  v97 = v166;
  if (byte_281221490 != 1)
  {
    (*(v165 + 16))(v11, v164, v166);
    v104 = sub_21D094210();
    v105 = sub_21D094560();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v108 = v98;
      v162 = v25;
      v109 = v107;
      v170[0] = v107;
      *v106 = 136315394;
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v110 = sub_21D094790();
      v111 = v29;
      v113 = v112;
      (*(v108 + 8))(v11, v97);
      v114 = sub_21D05550C(v110, v113, v170);
      v29 = v111;

      *(v106 + 4) = v114;
      *(v106 + 12) = 2048;
      *(v106 + 14) = v163;
      _os_log_impl(&dword_21D044000, v104, v105, "%s could not get process bundle for pid=%ld", v106, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v109);
      v115 = v109;
      v25 = v162;
      MEMORY[0x223D3CDF0](v115, -1, -1);
      MEMORY[0x223D3CDF0](v106, -1, -1);
    }

    else
    {

      (*(v98 + 8))(v11, v97);
    }

    v129 = v167;

    (*(v129 + 8))(v169, v168);
    return 0xD000000000000012;
  }

  v99 = [v25 name];
  if (v99)
  {
    v100 = v99;
    v101 = sub_21D0943F0();
    v103 = v102;
  }

  else
  {
    v103 = 0x800000021D0974C0;
    v101 = 0xD000000000000010;
  }

  v159 = v101;
  v170[0] = v101;
  v170[1] = v103;
  MEMORY[0x28223BE20](v99);
  *(&v158 - 2) = v170;
  if (sub_21D05B914(sub_21D091ED0, (&v158 - 4), &unk_282E96900) & 1) != 0 || (v162)
  {
    v142 = v161;
    (*(v98 + 16))(v161, v164, v97);

    v143 = sub_21D094210();
    v144 = sub_21D094560();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v164 = v143;
      v146 = v142;
      v147 = v145;
      v148 = swift_slowAlloc();
      v162 = v25;
      v160 = v29;
      v149 = v148;
      v170[0] = v148;
      *v147 = 136315394;
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
      v150 = sub_21D094790();
      v151 = v96;
      v153 = v152;
      (*(v98 + 8))(v146, v97);
      v154 = sub_21D05550C(v150, v153, v170);

      *(v147 + 4) = v154;
      *(v147 + 12) = 2080;
      v128 = v159;
      *(v147 + 14) = sub_21D05550C(v159, v103, v170);
      v155 = v164;
      _os_log_impl(&dword_21D044000, v164, v144, "%s bundle identifier is cli tool %s", v147, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v149, -1, -1);
      MEMORY[0x223D3CDF0](v147, -1, -1);

      (*(v167 + 8))(v151, v168);
      return v128;
    }

    (*(v98 + 8))(v142, v97);
LABEL_54:
    (*(v167 + 8))(v96, v168);
    return v159;
  }

  v130 = v160;
  (*(v98 + 16))(v160, v164, v97);
  v131 = sub_21D094210();
  v132 = v97;
  v133 = sub_21D094560();
  if (os_log_type_enabled(v131, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v162 = v25;
    v164 = v135;
    v170[0] = v135;
    *v134 = 136315138;
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v136 = sub_21D094790();
    v137 = v96;
    v139 = v138;
    (*(v98 + 8))(v130, v132);
    v140 = sub_21D05550C(v136, v139, v170);
    v96 = v137;

    *(v134 + 4) = v140;
    _os_log_impl(&dword_21D044000, v131, v133, "%s bundle identifier is an unknown cli tool", v134, 0xCu);
    v141 = v164;
    __swift_destroy_boxed_opaque_existential_0(v164);
    v25 = v162;
    MEMORY[0x223D3CDF0](v141, -1, -1);
    MEMORY[0x223D3CDF0](v134, -1, -1);
  }

  else
  {

    (*(v98 + 8))(v130, v132);
  }

  v157 = v167;

  (*(v157 + 8))(v96, v168);
  return 0xD000000000000010;
}

uint64_t sub_21D061B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_21D092FC0();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D061C40, 0, 0);
}

uint64_t sub_21D061C40()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = MEMORY[0x223D3C070]();
  v7 = v6;
  v0[13] = v6;
  MEMORY[0x223D3C050]();
  LOBYTE(v1) = *v3;
  v8 = *(MEMORY[0x277D41590] + 4);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_21D061D30;
  v10 = v0[12];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v15 = v0[2];
  v14 = v0[3];

  return MEMORY[0x2821A23D0](v14, v12, v13, v5, v7, v11, v2, v10);
}

uint64_t sub_21D061D30()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t NewInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a2;
  v77 = a1;
  v80 = a3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542C8, &qword_21D095E48);
  v76 = *(v78 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v64[-v5];
  v6 = sub_21D094230();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v6);
  v75 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21D092FC0();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_21D094070();
  v12 = *(v81 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v81);
  v72 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v64[-v16];
  v18 = sub_21D094180();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v64[-v24];
  sub_21D0941A0();
  sub_21D094150();
  v82 = v3;
  v26 = sub_21D0941A0();
  v27 = sub_21D094660();
  if (sub_21D094680())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v26, v27, v29, "requestStream", "full request", v28, 2u);
    MEMORY[0x223D3CDF0](v28, -1, -1);
  }

  (*(v19 + 16))(v23, v25, v18);
  v30 = sub_21D0941F0();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v71 = sub_21D0941E0();
  (*(v19 + 8))(v25, v18);
  v33 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v34 = *(v12 + 16);
  v35 = v17;
  v36 = v81;
  v34(v17, v83, v81);
  v37 = sub_21D094210();
  v38 = sub_21D094580();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = v12;
    v67 = v34;
    v41 = v39;
    v66 = swift_slowAlloc();
    v84 = v66;
    *v41 = 136315138;
    v42 = v68;
    v65 = v38;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v43 = v33;
    v44 = v70;
    v45 = sub_21D094790();
    v47 = v46;
    v48 = v44;
    v33 = v43;
    (*(v69 + 8))(v42, v48);
    (*(v40 + 8))(v35, v81);
    v49 = sub_21D05550C(v45, v47, &v84);

    *(v41 + 4) = v49;
    _os_log_impl(&dword_21D044000, v37, v65, "%s executing stream request with client data", v41, 0xCu);
    v50 = v66;
    __swift_destroy_boxed_opaque_existential_0(v66);
    v36 = v81;
    MEMORY[0x223D3CDF0](v50, -1, -1);
    v51 = v41;
    v34 = v67;
    MEMORY[0x223D3CDF0](v51, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v17, v36);
  }

  v52 = v82;
  (*(v73 + 16))(v75, v82 + v33, v74);
  v53 = v83;
  v34(v72, v83, v36);
  v54 = sub_21D093670();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_21D093650();
  v58 = MEMORY[0x28223BE20](v57);
  v59 = v71;
  *&v64[-48] = v52;
  *&v64[-40] = v59;
  v60 = v77;
  *&v64[-32] = v53;
  *&v64[-24] = v60;
  *&v64[-16] = v58;
  sub_21D093EB0();
  (*(v76 + 104))(v79, *MEMORY[0x277D858A0], v78);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542D0, &qword_21D095E50);
  v62 = v80;
  v80[3] = v61;
  v62[4] = sub_21D090A4C(&qword_27CE542D8, &qword_27CE542D0, &qword_21D095E50);
  __swift_allocate_boxed_opaque_existential_1(v62);
  sub_21D094530();
}

uint64_t sub_21D0625E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a3;
  v40 = a6;
  v37 = a5;
  v38 = a2;
  v35 = a4;
  v41 = a1;
  v6 = sub_21D093EB0();
  v42 = *(v6 - 8);
  v43 = v6;
  v36 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  v9 = sub_21D094070();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  v30 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  v34 = &v30 - v19;
  v21 = sub_21D0944D0();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, v41, v12);
  (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v9);
  v22 = v42;
  (*(v42 + 16))(v8, v37, v43);
  v23 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v24 = (v14 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v25 = (v11 + *(v22 + 80) + v24) & ~*(v22 + 80);
  v26 = (v36 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v39;
  *(v27 + 4) = v38;
  *(v27 + 5) = v28;
  (*(v13 + 32))(&v27[v23], v16, v30);
  (*(v10 + 32))(&v27[v24], v32, v31);
  (*(v42 + 32))(&v27[v25], v33, v43);
  *&v27[v26] = v40;

  sub_21D05156C(0, 0, v34, &unk_21D096550, v27);
  return sub_21D094500();
}

uint64_t sub_21D0629D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v40;
  v8[70] = a8;
  v8[69] = a7;
  v8[68] = a6;
  v8[67] = a5;
  v8[66] = a4;
  v9 = sub_21D093EF0();
  v8[72] = v9;
  v10 = *(v9 - 8);
  v8[73] = v10;
  v11 = *(v10 + 64) + 15;
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v12 = sub_21D0941C0();
  v8[78] = v12;
  v13 = *(v12 - 8);
  v8[79] = v13;
  v14 = *(v13 + 64) + 15;
  v8[80] = swift_task_alloc();
  v15 = sub_21D093EE0();
  v8[81] = v15;
  v16 = *(v15 - 8);
  v8[82] = v16;
  v17 = *(v16 + 64) + 15;
  v8[83] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78) - 8) + 64) + 15;
  v8[84] = swift_task_alloc();
  v19 = sub_21D094070();
  v8[85] = v19;
  v20 = *(v19 - 8);
  v8[86] = v20;
  v21 = *(v20 + 64) + 15;
  v8[87] = swift_task_alloc();
  v22 = sub_21D094330();
  v8[88] = v22;
  v23 = *(v22 - 8);
  v8[89] = v23;
  v24 = *(v23 + 64) + 15;
  v8[90] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54318, &qword_21D095E98) - 8) + 64) + 15;
  v8[91] = swift_task_alloc();
  v26 = sub_21D094360();
  v8[92] = v26;
  v27 = *(v26 - 8);
  v8[93] = v27;
  v28 = *(v27 + 64) + 15;
  v8[94] = swift_task_alloc();
  v29 = sub_21D093A50();
  v8[95] = v29;
  v30 = *(v29 - 8);
  v8[96] = v30;
  v31 = *(v30 + 64) + 15;
  v8[97] = swift_task_alloc();
  v32 = sub_21D094180();
  v8[98] = v32;
  v33 = *(v32 - 8);
  v8[99] = v33;
  v34 = *(v33 + 64) + 15;
  v8[100] = swift_task_alloc();
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v35 = sub_21D092FC0();
  v8[103] = v35;
  v36 = *(v35 - 8);
  v8[104] = v36;
  v37 = *(v36 + 64) + 15;
  v8[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D062E38, 0, 0);
}

id sub_21D062E38()
{
  v269 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 552);
  v6 = *(v0 + 528);
  sub_21D094010();
  v7 = sub_21D092FA0();
  v9 = v8;
  *(v0 + 848) = v7;
  *(v0 + 856) = v8;
  v266 = *(v2 + 8);
  v266(v1, v3);
  *(v0 + 864) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  sub_21D0941A0();
  sub_21D094150();

  v10 = sub_21D0941A0();
  v11 = sub_21D094660();

  v260 = v7;
  if (sub_21D094680())
  {
    v12 = *(v0 + 816);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v268[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_21D05550C(v7, v9, v268);
    v15 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v10, v11, v15, "requestStream", "first token requestIdentifier=%{public, signpost.description=attribute,public}s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D3CDF0](v14, -1, -1);
    MEMORY[0x223D3CDF0](v13, -1, -1);
  }

  v16 = *(v0 + 840);
  v17 = *(v0 + 824);
  v18 = *(v0 + 816);
  v19 = *(v0 + 792);
  v20 = *(v0 + 784);
  v21 = *(v0 + 560);
  (*(v19 + 16))(*(v0 + 808), v18, v20);
  v22 = sub_21D0941F0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_21D0941E0();
  v26 = *(v19 + 8);
  *(v0 + 872) = v26;
  *(v0 + 880) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v18, v20);
  *(v0 + 472) = v25;
  sub_21D092FB0();
  v27 = sub_21D092FA0();
  v29 = v28;
  *(v0 + 888) = v28;
  v266(v16, v17);
  v30 = sub_21D093E90();
  *(v0 + 896) = v30;
  *(v0 + 904) = v31;
  if (v31 >> 60 == 15)
  {
    v32 = *(v0 + 528);

    v33 = sub_21D094210();
    v34 = sub_21D094570();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_21D044000, v33, v34, "No data provided for stream request", v35, 2u);
      MEMORY[0x223D3CDF0](v35, -1, -1);
    }

    v36 = *(v0 + 664);
    v37 = *(v0 + 656);
    v38 = *(v0 + 648);
    v39 = *(v0 + 584);
    v40 = *(v0 + 576);

    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093ED0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v41 = swift_allocError();
    v43 = v42;
    (*(v37 + 16))(v42, v36, v38);
    (*(v39 + 104))(v43, *MEMORY[0x277D29DB0], v40);
    swift_willThrow();
    (*(v37 + 8))(v36, v38);
LABEL_19:
    v102 = *(v0 + 616);
    v103 = *(v0 + 576);
    *(v0 + 480) = v41;
    v104 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    if (swift_dynamicCast())
    {
      v105 = *(v0 + 616);
      v106 = *(v0 + 608);
      v107 = *(v0 + 584);
      v108 = *(v0 + 576);
      v109 = *(v0 + 544);

      (*(v107 + 32))(v106, v105, v108);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      v110 = swift_allocError();
      (*(v107 + 16))(v111, v106, v108);
      *(v0 + 520) = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
      sub_21D094520();
      (*(v107 + 8))(v106, v108);
      v112 = *(v0 + 480);
LABEL_35:

      goto LABEL_36;
    }

    *(v0 + 488) = v41;
    v113 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
    if (swift_dynamicCast())
    {
      v114 = *(v0 + 528);

      sub_21D046D78((v0 + 208), v0 + 248);
      sub_21D0590D0(v0 + 248, v0 + 288);
      sub_21D0590D0(v0 + 248, v0 + 328);
      sub_21D0590D0(v0 + 248, v0 + 368);
      v115 = sub_21D094210();
      v116 = sub_21D094550();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v268[0] = v118;
        *v117 = 136315650;
        v119 = *(v0 + 320);
        __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
        v120 = *(v119 + 8);
        v121 = sub_21D094090();
        v123 = v122;
        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        v124 = sub_21D05550C(v121, v123, v268);

        *(v117 + 4) = v124;
        *(v117 + 12) = 2048;
        v125 = *(v0 + 360);
        __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
        v126 = sub_21D093520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));
        *(v117 + 14) = v126;
        *(v117 + 22) = 2080;
        v127 = *(v0 + 400);
        __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
        v128 = sub_21D093530();
        v130 = v129;
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
        v131 = sub_21D05550C(v128, v130, v268);

        *(v117 + 24) = v131;
        _os_log_impl(&dword_21D044000, v115, v116, "Request failed: %s %ld %s", v117, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v118, -1, -1);
        MEMORY[0x223D3CDF0](v117, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));

        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      }

      v158 = *(v0 + 576);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      v267 = swift_allocError();
      v160 = v159;
      v161 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      sub_21D093530();
      v162 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      v163 = *(v162 + 8);
      sub_21D094090();
      v164 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      result = sub_21D093520();
      if (!__OFADD__(result, 10000))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21D0959B0;
        v166 = *MEMORY[0x277CCA7E8];
        *(inited + 32) = sub_21D0943F0();
        *(inited + 40) = v167;
        v168 = *(v0 + 272);
        v169 = *(v0 + 280);
        __swift_project_boxed_opaque_existential_1((v0 + 248), v168);
        *(inited + 48) = MEMORY[0x223D3C1D0](v168, *(v169 + 8));
        *(inited + 56) = v170;
        sub_21D0900B0(inited);
        swift_setDeallocating();
        sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
        v171 = *(v0 + 272);
        v172 = *(v0 + 280);
        v173 = __swift_project_boxed_opaque_existential_1((v0 + 248), v171);
        v174 = *(v171 - 8);
        v175 = *(v174 + 64) + 15;
        v176 = swift_task_alloc();
        (*(v174 + 16))(v176, v173, v171);
        v177 = *(*(*(v172 + 8) + 8) + 8);
        if (sub_21D0947A0())
        {
          (*(v174 + 8))(v176, v171);
        }

        else
        {
          swift_allocError();
          (*(v174 + 32))(v184, v176, v171);
        }

        v185 = *(v0 + 584);
        v186 = *(v0 + 576);
        v187 = *(v0 + 544);
        sub_21D093EC0();

        (*(v185 + 104))(v160, *MEMORY[0x277D29DA8], v186);
        *(v0 + 512) = v267;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 248));
        v112 = *(v0 + 488);
        goto LABEL_35;
      }
    }

    else
    {

      v132 = sub_21D092F10();
      *(v0 + 496) = v41;
      v133 = v41;
      sub_21D094430();
      v134 = [v132 domain];
      sub_21D0943F0();

      result = [v132 code];
      if (!__OFADD__(result, 20000))
      {
        v136 = *(v0 + 600);
        v137 = *(v0 + 584);
        v233 = *(v0 + 576);
        v236 = *(v0 + 592);
        v239 = *(v0 + 528);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        v138 = swift_initStackObject();
        *(v138 + 16) = xmmword_21D0959B0;
        v139 = *MEMORY[0x277CCA7E8];
        *(v138 + 32) = sub_21D0943F0();
        *(v138 + 40) = v140;
        v141 = [v132 description];
        v142 = sub_21D0943F0();
        v144 = v143;

        *(v138 + 48) = v142;
        *(v138 + 56) = v144;
        sub_21D0900B0(v138);
        swift_setDeallocating();
        sub_21D04D27C(v138 + 32, &qword_27CE542C0, &qword_21D095E28);
        v243 = v132;
        sub_21D093EC0();
        (*(v137 + 104))(v136, *MEMORY[0x277D29DA8], v233);
        v145 = *(v137 + 16);
        v145(v236, v136, v233);
        v146 = sub_21D094210();
        v147 = sub_21D094550();
        v148 = os_log_type_enabled(v146, v147);
        v149 = *(v0 + 592);
        v150 = *(v0 + 584);
        v151 = *(v0 + 576);
        if (v148)
        {
          bufc = swift_slowAlloc();
          v257 = swift_slowAlloc();
          v268[0] = v257;
          *bufc = 136315138;
          sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0]);
          formatc = v147;
          v152 = sub_21D094790();
          v263 = v145;
          v154 = v153;
          v155 = *(v150 + 8);
          v155(v149, v151);
          v156 = v155;
          v157 = sub_21D05550C(v152, v154, v268);
          v145 = v263;

          *(bufc + 4) = v157;
          _os_log_impl(&dword_21D044000, v146, formatc, "Request failed: %s", bufc, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v257);
          MEMORY[0x223D3CDF0](v257, -1, -1);
          MEMORY[0x223D3CDF0](bufc, -1, -1);
        }

        else
        {

          v178 = *(v150 + 8);
          v178(v149, v151);
          v156 = v178;
        }

        v179 = *(v0 + 600);
        v180 = *(v0 + 576);
        v181 = *(v0 + 544);
        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
        v182 = swift_allocError();
        v145(v183, v179, v180);
        *(v0 + 504) = v182;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094520();

        v156(v179, v180);
LABEL_36:
        v188 = *(v0 + 864);
        v189 = *(v0 + 856);
        v190 = *(v0 + 800);
        v191 = *(v0 + 528);
        v192 = *(v0 + 472);

        v193 = sub_21D0941A0();
        sub_21D0941D0();
        v194 = sub_21D094650();

        if (sub_21D094680())
        {
          v195 = *(v0 + 640);
          v196 = *(v0 + 632);
          v197 = *(v0 + 624);

          sub_21D094200();

          if ((*(v196 + 88))(v195, v197) == *MEMORY[0x277D85B00])
          {
            v198 = 0;
            v199 = 0;
            format = "[Error] Interval already ended";
          }

          else
          {
            (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
            format = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
            v199 = 2;
            v198 = 1;
          }

          v258 = *(v0 + 872);
          v264 = *(v0 + 880);
          v205 = *(v0 + 856);
          v206 = *(v0 + 848);
          v207 = *(v0 + 800);
          bufd = *(v0 + 784);
          v208 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          v268[0] = v209;
          *v208 = v199;
          *(v208 + 1) = v198;
          *(v208 + 2) = 2082;
          v210 = sub_21D05550C(v206, v205, v268);

          *(v208 + 4) = v210;
          v211 = sub_21D094160();
          _os_signpost_emit_with_name_impl(&dword_21D044000, v193, v194, v211, "requestStream", format, v208, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v209);
          MEMORY[0x223D3CDF0](v209, -1, -1);
          MEMORY[0x223D3CDF0](v208, -1, -1);

          v258(v207, bufd);
        }

        else
        {
          v200 = *(v0 + 880);
          v201 = *(v0 + 872);
          v202 = *(v0 + 856);
          v203 = *(v0 + 800);
          v204 = *(v0 + 784);

          v201(v203, v204);
        }

        v212 = *(v0 + 840);
        v213 = *(v0 + 816);
        v214 = *(v0 + 808);
        v215 = *(v0 + 800);
        v216 = *(v0 + 776);
        v229 = *(v0 + 752);
        v230 = *(v0 + 728);
        v231 = *(v0 + 720);
        v234 = *(v0 + 696);
        v237 = *(v0 + 672);
        v240 = *(v0 + 664);
        v244 = *(v0 + 640);
        formatd = *(v0 + 616);
        bufe = *(v0 + 608);
        v259 = *(v0 + 600);
        v265 = *(v0 + 592);
        v217 = *(v0 + 568);
        v218 = *(v0 + 544);
        v219 = *(v0 + 536);
        v220 = *(v0 + 528);
        sub_21D093640();

        sub_21D06D62C(v220, v219, v218, &qword_27CE544D8, &qword_21D096540);

        v221 = *(v0 + 8);

        return v221();
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v44 = v30;
  v45 = v31;
  v46 = *(v0 + 776);
  v47 = *(v0 + 760);
  sub_21D091B40(&qword_27CE544E0, MEMORY[0x277D71D00]);
  sub_21D0937C0();
  buf = v27;
  v256 = (v0 + 408);
  v48 = *(v0 + 744);
  v49 = *(v0 + 736);
  v50 = *(v0 + 728);
  v51 = *(v0 + 560);
  sub_21D093E80();
  if ((*(v48 + 48))(v50, 1, v49) == 1)
  {
    sub_21D04D27C(*(v0 + 728), &qword_27CE54318, &qword_21D095E98);
  }

  else
  {
    (*(*(v0 + 744) + 32))(*(v0 + 752), *(v0 + 728), *(v0 + 736));
    sub_21D094350();
    v52 = MEMORY[0x223D3CEB0]();
    if (v52 == sub_21D094320())
    {
      v53 = *(v0 + 776);
      v238 = *(v0 + 736);
      v241 = *(v0 + 752);
      v54 = *(v0 + 720);
      v55 = *(v0 + 712);
      v232 = *(v0 + 704);
      v235 = *(v0 + 744);
      swift_unknownObjectRetain();
      sub_21D094340();
      sub_21D093A40();
      swift_unknownObjectRelease();
      (*(v55 + 8))(v54, v232);
      (*(v235 + 8))(v241, v238);
    }

    else
    {
      (*(*(v0 + 744) + 8))(*(v0 + 752), *(v0 + 736));
      swift_unknownObjectRelease();
    }
  }

  v56 = *(v0 + 568);
  v57 = *(v0 + 544);
  v58 = *(v0 + 528);
  v59 = sub_21D093670();
  v60 = MEMORY[0x277D41578];
  *(v0 + 432) = v59;
  *(v0 + 440) = v60;
  *(v0 + 408) = v56;
  v61 = swift_task_alloc();
  *(v0 + 912) = v61;
  v61[2] = buf;
  v61[3] = v29;
  v61[4] = v58;
  v61[5] = v0 + 472;
  v61[6] = v260;
  v61[7] = v9;
  v61[8] = v56;
  v61[9] = v57;
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);

  if (sub_21D0945A0())
  {
    v62 = *(v0 + 528);
    (*(*(v0 + 688) + 16))(*(v0 + 696), *(v0 + 552), *(v0 + 680));
    v63 = sub_21D094210();
    v64 = sub_21D094570();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 840);
      bufb = v64;
      v66 = *(v0 + 696);
      v67 = *(v0 + 688);
      v242 = *(v0 + 824);
      formata = *(v0 + 680);
      v68 = swift_slowAlloc();
      v261 = swift_slowAlloc();
      v268[0] = v261;
      *v68 = 136315138;
      sub_21D094010();
      v69 = sub_21D092FA0();
      v71 = v70;
      v266(v65, v242);
      (*(v67 + 8))(v66, formata);
      v72 = sub_21D05550C(v69, v71, v268);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_21D044000, v63, bufb, "%s Fallback is enabled", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v261);
      MEMORY[0x223D3CDF0](v261, -1, -1);
      MEMORY[0x223D3CDF0](v68, -1, -1);
    }

    else
    {
      v86 = *(v0 + 696);
      v87 = *(v0 + 688);
      v88 = *(v0 + 680);

      (*(v87 + 8))(v86, v88);
    }

    v89 = *(v0 + 584);
    v90 = *(v0 + 576);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v41 = swift_allocError();
    v92 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_21D0959B0;
    v94 = *MEMORY[0x277CCA7E8];
    *(v93 + 32) = sub_21D0943F0();
    *(v93 + 40) = v95;
    *(v93 + 48) = 0xD00000000000001FLL;
    *(v93 + 56) = 0x800000021D0971A0;
    sub_21D0900B0(v93);
    swift_setDeallocating();
    sub_21D04D27C(v93 + 32, &qword_27CE542C0, &qword_21D095E28);
    sub_21D093ED0();
    (*(v89 + 104))(v92, *MEMORY[0x277D29DA8], v90);
    swift_willThrow();

    v96 = *(v0 + 912);
    v97 = *(v0 + 904);
    v98 = *(v0 + 896);
    v99 = *(v0 + 776);
    v100 = *(v0 + 768);
    v101 = *(v0 + 760);

    sub_21D058258(v98, v97);
    (*(v100 + 8))(v99, v101);
    __swift_destroy_boxed_opaque_existential_0(v256);
    goto LABEL_19;
  }

  v73 = *(v0 + 840);
  v74 = *(v0 + 824);
  formatb = *(v0 + 672);
  v75 = *(v0 + 552);
  v76 = *(v0 + 528);
  sub_21D094010();
  v262 = sub_21D092FA0();
  bufa = v77;
  *(v0 + 920) = v77;
  v266(v73, v74);
  logMetric(logger:name:startInstant:)(v76 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, 0xD000000000000012, 0x800000021D097180);
  v78 = sub_21D093D00();
  *(v0 + 928) = v78;
  v79 = *(v78 - 8);
  *(v0 + 936) = v79;
  v80 = *(v79 + 64) + 15;
  v81 = swift_task_alloc();
  *(v0 + 944) = v81;
  sub_21D093CF0();
  sub_21D094000();
  v82 = sub_21D093E70();
  v83 = *(v82 - 8);
  v84 = (*(v83 + 48))(formatb, 1, v82);
  v85 = *(v0 + 672);
  if (v84 == 1)
  {
    sub_21D04D27C(*(v0 + 672), &qword_27CE542F8, &qword_21D095E78);
  }

  else
  {
    sub_21D093E50();
    (*(v83 + 8))(v85, v82);
  }

  v222 = v84 == 1;
  v223 = *(v0 + 776);
  v224 = *(v0 + 552);
  v225 = *(v0 + 528);
  LOBYTE(v268[0]) = v222;
  sub_21D093CE0();
  v226 = swift_task_alloc();
  *(v0 + 952) = v226;
  v226[2] = v223;
  v226[3] = v225;
  v226[4] = v262;
  v226[5] = bufa;
  v226[6] = v256;
  v226[7] = v44;
  v226[8] = v45;
  v226[9] = v224;
  v226[10] = &unk_21D096560;
  v226[11] = v61;
  v227 = swift_task_alloc();
  *(v0 + 960) = v227;
  *v227 = v0;
  v227[1] = sub_21D06480C;
  v228 = *(v0 + 528);

  return sub_21D07BC88(v227, v262, bufa, 0, v81, &unk_21D096570, v226);
}

uint64_t sub_21D06480C()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *v1;
  *(*v1 + 968) = v0;

  v5 = *(v2 + 952);
  v6 = *(v2 + 920);

  if (v0)
  {
    v7 = sub_21D064D60;
  }

  else
  {
    v7 = sub_21D06495C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21D06495C()
{
  v62 = v0;
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[112];
  v7 = v0[111];
  v8 = v0[97];
  v9 = v0[96];
  v10 = v0[95];

  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 51);
  sub_21D058258(v6, v5);
  (*(v9 + 8))(v8, v10);
  v11 = v0[108];
  v12 = v0[107];
  v13 = v0[100];
  v14 = v0[66];
  v15 = v0[59];

  v16 = sub_21D0941A0();
  sub_21D0941D0();
  v17 = sub_21D094650();

  if (sub_21D094680())
  {
    v18 = v0[80];
    v19 = v0[79];
    v20 = v0[78];

    sub_21D094200();

    if ((*(v19 + 88))(v18, v20) == *MEMORY[0x277D85B00])
    {
      v21 = 0;
      v22 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[79] + 8))(v0[80], v0[78]);
      format = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v22 = 2;
      v21 = 1;
    }

    v57 = v0[109];
    v59 = v0[110];
    v28 = v0[107];
    v29 = v0[106];
    v30 = v0[100];
    v55 = v0[98];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v61 = v32;
    *v31 = v22;
    *(v31 + 1) = v21;
    *(v31 + 2) = 2082;
    v33 = sub_21D05550C(v29, v28, &v61);

    *(v31 + 4) = v33;
    v34 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v16, v17, v34, "requestStream", format, v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x223D3CDF0](v32, -1, -1);
    MEMORY[0x223D3CDF0](v31, -1, -1);

    v57(v30, v55);
  }

  else
  {
    v23 = v0[110];
    v24 = v0[109];
    v25 = v0[107];
    v26 = v0[100];
    v27 = v0[98];

    v24(v26, v27);
  }

  v35 = v0[105];
  v36 = v0[102];
  v37 = v0[101];
  v38 = v0[100];
  v39 = v0[97];
  v46 = v0[94];
  v47 = v0[91];
  v48 = v0[90];
  v49 = v0[87];
  v50 = v0[84];
  v51 = v0[83];
  v52 = v0[80];
  formata = v0[77];
  v56 = v0[76];
  v58 = v0[75];
  v60 = v0[74];
  v40 = v0[71];
  v41 = v0[68];
  v42 = v0[67];
  v43 = v0[66];
  sub_21D093640();

  sub_21D06D62C(v43, v42, v41, &qword_27CE544D8, &qword_21D096540);

  v44 = v0[1];

  return v44();
}

id sub_21D064D60()
{
  v159 = v0;
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);
  v4 = *(v0 + 888);

  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 968);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v8 = *(v0 + 896);
  v9 = *(v0 + 776);
  v10 = *(v0 + 768);
  v11 = *(v0 + 760);

  sub_21D058258(v8, v7);
  (*(v10 + 8))(v9, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  v12 = *(v0 + 616);
  v13 = *(v0 + 576);
  *(v0 + 480) = v5;
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 616);
    v16 = *(v0 + 608);
    v17 = *(v0 + 584);
    v18 = *(v0 + 576);
    v19 = *(v0 + 544);

    (*(v17 + 32))(v16, v15, v18);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v20 = swift_allocError();
    (*(v17 + 16))(v21, v16, v18);
    *(v0 + 520) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
    sub_21D094520();
    (*(v17 + 8))(v16, v18);
    v22 = *(v0 + 480);
LABEL_17:

    goto LABEL_18;
  }

  *(v0 + 488) = v5;
  v23 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 528);

    sub_21D046D78((v0 + 208), v0 + 248);
    sub_21D0590D0(v0 + 248, v0 + 288);
    sub_21D0590D0(v0 + 248, v0 + 328);
    sub_21D0590D0(v0 + 248, v0 + 368);
    v25 = sub_21D094210();
    v26 = sub_21D094550();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v158 = v28;
      *v27 = 136315650;
      v29 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
      v30 = *(v29 + 8);
      v31 = sub_21D094090();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      v34 = sub_21D05550C(v31, v33, &v158);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2048;
      v35 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
      v36 = sub_21D093520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));
      *(v27 + 14) = v36;
      *(v27 + 22) = 2080;
      v37 = *(v0 + 400);
      __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
      v38 = sub_21D093530();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      v41 = sub_21D05550C(v38, v40, &v158);

      *(v27 + 24) = v41;
      _os_log_impl(&dword_21D044000, v25, v26, "Request failed: %s %ld %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v28, -1, -1);
      MEMORY[0x223D3CDF0](v27, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));

      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
    }

    v68 = *(v0 + 576);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v69 = swift_allocError();
    v71 = v70;
    v72 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    sub_21D093530();
    v73 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    v74 = *(v73 + 8);
    sub_21D094090();
    v75 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    result = sub_21D093520();
    if (!__OFADD__(result, 10000))
    {
      v157 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21D0959B0;
      v77 = *MEMORY[0x277CCA7E8];
      *(inited + 32) = sub_21D0943F0();
      *(inited + 40) = v78;
      v79 = *(v0 + 272);
      v80 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), v79);
      *(inited + 48) = MEMORY[0x223D3C1D0](v79, *(v80 + 8));
      *(inited + 56) = v81;
      sub_21D0900B0(inited);
      swift_setDeallocating();
      sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
      v82 = *(v0 + 272);
      v83 = *(v0 + 280);
      v84 = __swift_project_boxed_opaque_existential_1((v0 + 248), v82);
      v85 = *(v82 - 8);
      v86 = *(v85 + 64) + 15;
      v87 = swift_task_alloc();
      (*(v85 + 16))(v87, v84, v82);
      v88 = *(*(*(v83 + 8) + 8) + 8);
      if (sub_21D0947A0())
      {
        (*(v85 + 8))(v87, v82);
      }

      else
      {
        swift_allocError();
        (*(v85 + 32))(v95, v87, v82);
      }

      v96 = *(v0 + 584);
      v97 = *(v0 + 576);
      v98 = *(v0 + 544);
      sub_21D093EC0();

      (*(v96 + 104))(v71, *MEMORY[0x277D29DA8], v97);
      *(v0 + 512) = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
      sub_21D094520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      v22 = *(v0 + 488);
      goto LABEL_17;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v42 = sub_21D092F10();
  *(v0 + 496) = v5;
  v43 = v5;
  sub_21D094430();
  v44 = [v42 domain];
  sub_21D0943F0();

  result = [v42 code];
  if (__OFADD__(result, 20000))
  {
    __break(1u);
    goto LABEL_28;
  }

  v46 = *(v0 + 584);
  v152 = *(v0 + 576);
  v156 = *(v0 + 592);
  v144 = *(v0 + 600);
  v148 = *(v0 + 528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_21D0959B0;
  v48 = *MEMORY[0x277CCA7E8];
  *(v47 + 32) = sub_21D0943F0();
  *(v47 + 40) = v49;
  v50 = [v42 description];
  v51 = sub_21D0943F0();
  v53 = v52;

  *(v47 + 48) = v51;
  *(v47 + 56) = v53;
  sub_21D0900B0(v47);
  swift_setDeallocating();
  sub_21D04D27C(v47 + 32, &qword_27CE542C0, &qword_21D095E28);
  v54 = v42;
  sub_21D093EC0();
  v55 = v152;
  (*(v46 + 104))(v144, *MEMORY[0x277D29DA8], v152);
  v153 = *(v46 + 16);
  v153(v156, v144, v55);
  v56 = sub_21D094210();
  v57 = sub_21D094550();
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v0 + 592);
  v60 = *(v0 + 584);
  v61 = *(v0 + 576);
  if (v58)
  {
    bufa = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v158 = v145;
    *bufa = 136315138;
    sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0]);
    v139 = v57;
    v62 = sub_21D094790();
    v149 = v54;
    v64 = v63;
    v65 = *(v60 + 8);
    v65(v59, v61);
    v66 = v65;
    v67 = sub_21D05550C(v62, v64, &v158);
    v54 = v149;

    *(bufa + 4) = v67;
    _os_log_impl(&dword_21D044000, v56, v139, "Request failed: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v145);
    MEMORY[0x223D3CDF0](v145, -1, -1);
    MEMORY[0x223D3CDF0](bufa, -1, -1);
  }

  else
  {

    v89 = *(v60 + 8);
    v89(v59, v61);
    v66 = v89;
  }

  v90 = *(v0 + 600);
  v91 = *(v0 + 576);
  v92 = *(v0 + 544);
  sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
  v93 = swift_allocError();
  v153(v94, v90, v91);
  *(v0 + 504) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  sub_21D094520();

  v66(v90, v91);
LABEL_18:
  v99 = *(v0 + 864);
  v100 = *(v0 + 856);
  v101 = *(v0 + 800);
  v102 = *(v0 + 528);
  v103 = *(v0 + 472);

  v104 = sub_21D0941A0();
  sub_21D0941D0();
  v105 = sub_21D094650();

  if (sub_21D094680())
  {
    v106 = *(v0 + 640);
    v107 = *(v0 + 632);
    v108 = *(v0 + 624);

    sub_21D094200();

    if ((*(v107 + 88))(v106, v108) == *MEMORY[0x277D85B00])
    {
      v109 = 0;
      v110 = 0;
      buf = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
      buf = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v110 = 2;
      v109 = 1;
    }

    v150 = *(v0 + 872);
    v154 = *(v0 + 880);
    v116 = *(v0 + 856);
    v117 = *(v0 + 848);
    v118 = *(v0 + 800);
    v146 = *(v0 + 784);
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v158 = v120;
    *v119 = v110;
    *(v119 + 1) = v109;
    *(v119 + 2) = 2082;
    v121 = sub_21D05550C(v117, v116, &v158);

    *(v119 + 4) = v121;
    v122 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v104, v105, v122, "requestStream", buf, v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v120);
    MEMORY[0x223D3CDF0](v120, -1, -1);
    MEMORY[0x223D3CDF0](v119, -1, -1);

    v150(v118, v146);
  }

  else
  {
    v111 = *(v0 + 880);
    v112 = *(v0 + 872);
    v113 = *(v0 + 856);
    v114 = *(v0 + 800);
    v115 = *(v0 + 784);

    v112(v114, v115);
  }

  v123 = *(v0 + 840);
  v124 = *(v0 + 816);
  v125 = *(v0 + 808);
  v126 = *(v0 + 800);
  v127 = *(v0 + 776);
  v133 = *(v0 + 752);
  v134 = *(v0 + 728);
  v135 = *(v0 + 720);
  v136 = *(v0 + 696);
  v137 = *(v0 + 672);
  v138 = *(v0 + 664);
  v140 = *(v0 + 640);
  bufb = *(v0 + 616);
  v147 = *(v0 + 608);
  v151 = *(v0 + 600);
  v155 = *(v0 + 592);
  v128 = *(v0 + 568);
  v129 = *(v0 + 544);
  v130 = *(v0 + 536);
  v131 = *(v0 + 528);
  sub_21D093640();

  sub_21D06D62C(v131, v130, v129, &qword_27CE544D8, &qword_21D096540);

  v132 = *(v0 + 8);

  return v132();
}

uint64_t sub_21D065BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 776) = v77;
  *(v8 + 768) = v76;
  *(v8 + 760) = a8;
  *(v8 + 752) = a7;
  *(v8 + 744) = a6;
  *(v8 + 736) = a5;
  *(v8 + 728) = a4;
  *(v8 + 720) = a3;
  *(v8 + 712) = a2;
  v9 = sub_21D0933E0();
  *(v8 + 784) = v9;
  v10 = *(v9 - 8);
  *(v8 + 792) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 800) = swift_task_alloc();
  v12 = sub_21D0937B0();
  *(v8 + 808) = v12;
  v13 = *(v12 - 8);
  *(v8 + 816) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  v15 = sub_21D093420();
  *(v8 + 840) = v15;
  v16 = *(v15 - 8);
  *(v8 + 848) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430);
  *(v8 + 880) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v8 + 888) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54480, &qword_21D096498) - 8) + 64) + 15;
  *(v8 + 896) = swift_task_alloc();
  v21 = *(*(sub_21D093C30() - 8) + 64) + 15;
  *(v8 + 904) = swift_task_alloc();
  v22 = sub_21D093C50();
  *(v8 + 912) = v22;
  v23 = *(v22 - 8);
  *(v8 + 920) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  v25 = sub_21D0935E0();
  *(v8 + 944) = v25;
  v26 = *(v25 - 8);
  *(v8 + 952) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 960) = swift_task_alloc();
  v28 = sub_21D093820();
  *(v8 + 968) = v28;
  v29 = *(v28 - 8);
  *(v8 + 976) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54478, &qword_21D096490) - 8) + 64) + 15;
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  v32 = sub_21D093570();
  *(v8 + 1024) = v32;
  v33 = *(v32 - 8);
  *(v8 + 1032) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  v35 = sub_21D093840();
  *(v8 + 1056) = v35;
  v36 = *(v35 - 8);
  *(v8 + 1064) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  v38 = sub_21D093630();
  *(v8 + 1088) = v38;
  v39 = *(v38 - 8);
  *(v8 + 1096) = v39;
  v40 = *(v39 + 64) + 15;
  *(v8 + 1104) = swift_task_alloc();
  *(v8 + 1112) = swift_task_alloc();
  *(v8 + 1120) = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54260, &unk_21D095CC0) - 8) + 64) + 15;
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0) - 8) + 64) + 15;
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  v43 = sub_21D0934B0();
  *(v8 + 1160) = v43;
  v44 = *(v43 - 8);
  *(v8 + 1168) = v44;
  v45 = *(v44 + 64) + 15;
  *(v8 + 1176) = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544E8, &unk_21D096588);
  *(v8 + 1184) = v46;
  v47 = *(v46 - 8);
  *(v8 + 1192) = v47;
  v48 = *(v47 + 64) + 15;
  *(v8 + 1200) = swift_task_alloc();
  v49 = sub_21D093EB0();
  *(v8 + 1208) = v49;
  v50 = *(v49 - 8);
  *(v8 + 1216) = v50;
  v51 = *(v50 + 64) + 15;
  *(v8 + 1224) = swift_task_alloc();
  *(v8 + 1232) = swift_task_alloc();
  v52 = sub_21D092FC0();
  *(v8 + 1240) = v52;
  v53 = *(v52 - 8);
  *(v8 + 1248) = v53;
  v54 = *(v53 + 64) + 15;
  *(v8 + 1256) = swift_task_alloc();
  v55 = sub_21D093A80();
  *(v8 + 1264) = v55;
  v56 = *(v55 - 8);
  *(v8 + 1272) = v56;
  v57 = *(v56 + 64) + 15;
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  v58 = sub_21D0941C0();
  *(v8 + 1304) = v58;
  v59 = *(v58 - 8);
  *(v8 + 1312) = v59;
  v60 = *(v59 + 64) + 15;
  *(v8 + 1320) = swift_task_alloc();
  *(v8 + 1328) = swift_task_alloc();
  v61 = sub_21D094180();
  *(v8 + 1336) = v61;
  v62 = *(v61 - 8);
  *(v8 + 1344) = v62;
  v63 = *(v62 + 64) + 15;
  *(v8 + 1352) = swift_task_alloc();
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  v64 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0) - 8) + 64) + 15;
  *(v8 + 1392) = swift_task_alloc();
  v65 = sub_21D093460();
  *(v8 + 1400) = v65;
  v66 = *(v65 - 8);
  *(v8 + 1408) = v66;
  v67 = *(v66 + 64) + 15;
  *(v8 + 1416) = swift_task_alloc();
  *(v8 + 1424) = swift_task_alloc();
  *(v8 + 1432) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  *(v8 + 1440) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v68 = MEMORY[0x277D41510];
  *(v8 + 1472) = *MEMORY[0x277D41518];
  *(v8 + 1476) = *v68;
  *(v8 + 1480) = *MEMORY[0x277D41500];
  v69 = MEMORY[0x277D85B00];
  *(v8 + 1484) = *MEMORY[0x277D41508];
  *(v8 + 1488) = *v69;
  *(v8 + 1492) = *MEMORY[0x277D414E0];
  v70 = MEMORY[0x277D71B68];
  *(v8 + 1496) = *MEMORY[0x277D71B50];
  *(v8 + 1500) = *v70;
  *(v8 + 1448) = 0;
  v71 = swift_task_alloc();
  *(v8 + 1456) = v71;
  *v71 = v8;
  v71[1] = sub_21D0665F4;
  v72 = *(v8 + 1392);
  v73 = *(v8 + 712);

  return sub_21D059134(v72);
}

uint64_t sub_21D0665F4()
{
  v2 = *(*v1 + 1456);
  v5 = *v1;
  *(*v1 + 1464) = v0;

  if (v0)
  {
    v3 = sub_21D0699C0;
  }

  else
  {
    v3 = sub_21D066708;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D066708()
{
  v617 = v0;
  v1 = v0;
  v2 = v0[176];
  v3 = v1[175];
  v4 = v1[174];
  v5 = (*(v2 + 48))(v4, 1, v3);
  v6 = v1[178];
  v7 = v1[177];
  if (v5 == 1)
  {
    v8 = v1[181];
    v9 = v1[173];
    v10 = v1[172];
    v11 = v1;
    v12 = v1[171];
    v13 = v11[170];
    v14 = v11[169];
    v15 = v11[166];
    v449 = v11[165];
    v451 = v11[162];
    v453 = v11[161];
    v455 = v11[160];
    v457 = v11[157];
    v459 = v11[154];
    v461 = v11[153];
    v463 = v11[150];
    v465 = v11[147];
    v467 = v11[144];
    v469 = v11[143];
    v471 = v11[142];
    v473 = v11[141];
    v475 = v11[140];
    v477 = v11[139];
    v479 = v11[138];
    v481 = v11[135];
    v483 = v11[134];
    v485 = v11[131];
    v487 = v11[130];
    v489 = v11[127];
    v492 = v11[126];
    v495 = v11[125];
    v499 = v11[124];
    v504 = v11[123];
    v509 = v11[120];
    v514 = v11[117];
    v519 = v11[116];
    v525 = v11[113];
    v532 = v11[112];
    v540 = v11[111];
    v550 = v11[109];
    v561 = v11[108];
    v573 = v11[107];
    v587 = v11[104];
    v599 = v11[103];
    v612 = v11[100];

    sub_21D04D27C(v4, &qword_27CE54250, &unk_21D095CB0);

    v16 = v11[1];
LABEL_37:

    return v16();
  }

  v17 = *(v1 + 368);
  (*(v2 + 32))(v1[178], v4, v3);
  (*(v2 + 16))(v7, v6, v3);
  v18 = (*(v2 + 88))(v7, v3);
  v613 = v1;
  if (v18 == v17)
  {
    v19 = v1[180];
    v20 = v1[177];
    v21 = v1[173];
    v22 = v1[93];
    v23 = v1[92];
    (*(v1[176] + 96))(v20, v1[175]);
    v588 = *v20;
    v600 = v20[1];
    v24 = *v22;

    v25 = sub_21D0941A0();
    sub_21D0941D0();
    v26 = sub_21D094650();
    if (sub_21D094680())
    {
      v27 = *(v1 + 372);
      v28 = v1[166];
      v29 = v1[164];
      v30 = v1[163];

      sub_21D094200();

      if ((*(v29 + 88))(v28, v30) == v27)
      {
        v31 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[164] + 8))(v1[166], v1[163]);
        v31 = "token received";
      }

      v50 = v1[173];
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v25, v26, v52, "requestStream", v31, v51, 2u);
      MEMORY[0x223D3CDF0](v51, -1, -1);
    }

    v53 = v1[180];
    v54 = v1[173];
    v55 = v1[172];
    v56 = v1[168];
    v57 = v1[167];
    v58 = v1[95];
    v59 = v1[92];

    v574 = *(v56 + 8);
    v574(v54, v57);
    sub_21D0941A0();
    sub_21D094150();

    v60 = sub_21D0941A0();
    v61 = sub_21D094660();

    if (sub_21D094680())
    {
      v62 = v1[172];
      v63 = v1[95];
      v64 = v1[94];
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v616[0] = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_21D05550C(v64, v63, v616);
      v67 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v60, v61, v67, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x223D3CDF0](v66, -1, -1);
      MEMORY[0x223D3CDF0](v65, -1, -1);
    }

    v68 = v1[172];
    v69 = v1[167];
    v70 = v1[162];
    v551 = v1[158];
    v562 = v1[183];
    v71 = v1[157];
    v72 = v1[156];
    v73 = v1[155];
    v74 = v1[93];
    v75 = v1[91];
    v533 = v1[90];
    v541 = v1[96];
    (*(v1[168] + 16))(v1[171], v68, v69);
    v76 = sub_21D0941F0();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    v79 = sub_21D0941E0();
    v574(v68, v69);
    v80 = *v74;
    *v74 = v79;

    sub_21D092FB0();
    sub_21D092FA0();
    (*(v72 + 8))(v71, v73);
    v1[75] = sub_21D093B40();
    v1[76] = MEMORY[0x277D71D70];
    __swift_allocate_boxed_opaque_existential_1(v1 + 72);

    sub_21D093B30();
    sub_21D093A90();
    sub_21D093660();

    sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
    v81 = sub_21D0937D0();
    if (v562)
    {
      v83 = v1[181];
      v84 = v1[178];
      v85 = v1[176];
      v86 = v1[175];
      v87 = v1[162];
      v88 = v1[159];
      v89 = v1[158];

LABEL_35:
      (*(v88 + 8))(v87, v89);
      (*(v85 + 8))(v84, v86);
      goto LABEL_36;
    }

    v90 = v1[176];
    v590 = v1[175];
    v602 = v1[178];
    v91 = v1[159];
    v563 = v1[158];
    v575 = v1[162];
    v92 = v1[154];
    v93 = v1[153];
    v94 = v1[152];
    v95 = v613[151];
    v96 = v613[150];
    v97 = v613[149];
    v542 = v613[97];
    v552 = v613[148];
    v98 = v81;
    v99 = v82;
    sub_21D055C20(v81, v82);
    MEMORY[0x223D3BF70](v98, v99);
    (*(v94 + 16))(v93, v92, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
    sub_21D094510();
    sub_21D04FE3C(v98, v99);
    (*(v97 + 8))(v96, v552);
    (*(v94 + 8))(v92, v95);
    v100 = v613;
    (*(v91 + 8))(v575, v563);
    (*(v90 + 8))(v602, v590);
    goto LABEL_20;
  }

  if (v18 == *(v1 + 369))
  {
    v32 = v1[181];
    v33 = v1[177];
    v34 = v1[100];
    v35 = v1[99];
    v36 = v1[98];
    (*(v1[176] + 96))(v33, v1[175]);
    (*(v35 + 32))(v34, v33, v36);
    if (!v32)
    {
      if (qword_27CE53E98 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_107;
    }

    v37 = v1[181];
    while (1)
    {
      v141 = v1[183];
      v142 = v1[100];

      v143 = sub_21D0525F4(v142);
      if (v141)
      {
        v84 = v1[178];
        v85 = v1[176];
        v86 = v1[175];
        v87 = v1[100];
        v88 = v1[99];
        v89 = v1[98];

        goto LABEL_35;
      }

      v155 = v143;
      v521 = v37;
      v535 = *(v143 + 16);
      if (!v535)
      {
        break;
      }

      v156 = 0;
      v157 = v143 + 32;
      v527 = v143;
      while (v156 < *(v155 + 16))
      {
        v158 = v613[160];
        v159 = v613[158];
        sub_21D0590D0(v157, (v613 + 2));
        sub_21D093A90();
        sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
        v160 = sub_21D0937D0();
        v162 = v161;
        v593 = v613[158];
        v603 = v613[160];
        v163 = v613[154];
        v164 = v613[153];
        v165 = v613[152];
        v166 = v613[150];
        v167 = v613[149];
        v565 = v613[148];
        v577 = v613[159];
        ++v156;
        v544 = v613[151];
        v554 = v613[97];
        sub_21D055C20(v160, v161);
        MEMORY[0x223D3BF70](v160, v162);
        v1 = v544;
        (*(v165 + 16))(v164, v163, v544);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094510();
        sub_21D04FE3C(v160, v162);
        (*(v167 + 8))(v166, v565);
        (*(v165 + 8))(v163, v544);
        (*(v577 + 8))(v603, v593);
        v157 += 40;
        v155 = v527;
        if (v535 == v156)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_107:
      swift_once();
LABEL_28:
      v125 = qword_27CE540E8;
      v126 = qword_27CE53EA0;

      if (v126 != -1)
      {
        swift_once();
      }

      v127 = qword_27CE540F0;
      v128 = type metadata accessor for MediaProcessor(0);
      v129 = *(v128 + 48);
      v130 = *(v128 + 52);
      v37 = swift_allocObject();
      v131 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
      v132 = qword_281221778;

      if (v132 != -1)
      {
        swift_once();
      }

      v133 = v1[91];
      v134 = v1[90];
      v135 = sub_21D094230();
      v136 = __swift_project_value_buffer(v135, qword_2812217C8);
      (*(*(v135 - 8) + 16))(v37 + v131, v136, v135);
      v137 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v138 = MEMORY[0x277D84F90];
      *(v37 + v137) = sub_21D08FE94(MEMORY[0x277D84F90]);
      v139 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
      *(v37 + v139) = sub_21D08FF98(v138);
      v140 = (v37 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
      *v140 = v134;
      v140[1] = v133;
      *(v37 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats) = v125;
      *(v37 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats) = v127;
      *(v37 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) = 1;
    }

LABEL_44:
    v100 = v613;
    v168 = v613[178];
    v169 = v613[176];
    v170 = v613[175];
    v171 = v613[100];
    v172 = v613[99];
    v173 = v613[98];
    v101 = v521;

    (*(v172 + 8))(v171, v173);
    (*(v169 + 8))(v168, v170);
    goto LABEL_21;
  }

  if (v18 == *(v1 + 370))
  {
    v38 = v1[177];
    v39 = v1[147];
    v40 = v1[146];
    v41 = v1[145];
    v42 = v1[144];
    v43 = v1[143];
    v44 = v1[137];
    v589 = v1[142];
    v601 = v1[136];
    (*(v1[176] + 96))(v38, v1[175]);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
    v46 = v1;
    v47 = *(v45 + 48);
    v48 = *(v45 + 64);
    (*(v40 + 32))(v39, v38, v41);
    sub_21D05B208(v38 + v47, v42, &qword_27CE54248, &unk_21D095CA0);
    sub_21D05B208(v38 + v48, v589, &qword_27CE54260, &unk_21D095CC0);
    sub_21D05B270(v42, v43, &qword_27CE54248, &unk_21D095CA0);
    if ((*(v44 + 48))(v43, 1, v601) == 1)
    {
      sub_21D04D27C(v46[143], &qword_27CE54248, &unk_21D095CA0);
      v49 = v46[183];
      v1 = v46;
      goto LABEL_82;
    }

    v174 = v46[179];
    v175 = v46[140];
    v176 = v46[139];
    v177 = v46[137];
    v178 = v46[136];
    v179 = v46[95];
    v180 = v46[92];
    (*(v177 + 32))(v175, v46[143], v178);
    v181 = *(v177 + 16);
    v181(v176, v175, v178);

    v182 = sub_21D094210();
    v183 = sub_21D094550();

    v184 = os_log_type_enabled(v182, v183);
    v185 = v46[139];
    if (v184)
    {
      v186 = v46[138];
      v187 = v46[137];
      v188 = v46[136];
      v578 = v46[94];
      v594 = v46[95];
      v189 = swift_slowAlloc();
      v604 = swift_slowAlloc();
      v616[0] = v604;
      *v189 = 136315394;
      *(v189 + 4) = sub_21D05550C(v578, v594, v616);
      *(v189 + 12) = 2082;
      v181(v186, v185, v188);
      v190 = sub_21D094430();
      v192 = v191;
      v595 = *(v187 + 8);
      v595(v185, v188);
      v193 = sub_21D05550C(v190, v192, v616);

      *(v189 + 14) = v193;
      _os_log_impl(&dword_21D044000, v182, v183, "%s %{public}s", v189, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v604, -1, -1);
      MEMORY[0x223D3CDF0](v189, -1, -1);
    }

    else
    {
      v216 = v46[137];
      v217 = v46[136];

      v595 = *(v216 + 8);
      v595(v185, v217);
    }

    v1 = v46;
    v218 = v46[140];
    v219 = v46[129];
    v220 = v46[128];
    v221 = v46[127];
    sub_21D093610();
    v222 = *(v219 + 48);
    v223 = v222(v221, 1, v220);
    v224 = v46[140];
    if (v223 == 1)
    {
      v225 = v46[128];
      v226 = v46[126];
      sub_21D04D27C(v46[127], &qword_27CE54478, &qword_21D096490);
      sub_21D093620();
      if (v222(v226, 1, v225) == 1)
      {
        v227 = v46[135];
        v228 = v46[124];
        v229 = v46[122];
        v230 = v46[121];
        sub_21D04D27C(v46[126], &qword_27CE54478, &qword_21D096490);
        sub_21D08FD64(MEMORY[0x277D84F90]);
        sub_21D093810();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
        v231 = *(v229 + 72);
        v232 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v233 = swift_allocObject();
        *(v233 + 16) = xmmword_21D0959B0;
        (*(v229 + 16))(v233 + v232, v228, v230);
        sub_21D093830();
        (*(v229 + 8))(v228, v230);
      }

      else
      {
        v582 = v46[140];
        v608 = v46[135];
        v302 = v46[130];
        v303 = v46[129];
        v304 = v46[128];
        v305 = v46[123];
        v306 = v46[122];
        v307 = v46[121];
        (*(v303 + 32))(v302, v46[126], v304);
        sub_21D093550();
        sub_21D093560();
        sub_21D08FD64(MEMORY[0x277D84F90]);
        v1 = v613;
        sub_21D093810();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
        v308 = *(v306 + 72);
        v309 = (*(v306 + 80) + 32) & ~*(v306 + 80);
        v310 = swift_allocObject();
        *(v310 + 16) = xmmword_21D0959B0;
        (*(v306 + 16))(v310 + v309, v305, v307);
        sub_21D093600();
        sub_21D093830();
        (*(v306 + 8))(v305, v307);
        (*(v303 + 8))(v302, v304);
      }
    }

    else
    {
      v605 = v46[135];
      v234 = v46[131];
      v235 = v46[129];
      v236 = v46[128];
      v237 = v46[127];
      v238 = v46[125];
      v239 = v46[122];
      v580 = v1[121];
      (*(v235 + 32))(v234, v237, v236);
      sub_21D093550();
      sub_21D093560();
      sub_21D08FD64(MEMORY[0x277D84F90]);
      v1 = v613;
      sub_21D093810();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
      v240 = *(v239 + 72);
      v241 = (*(v239 + 80) + 32) & ~*(v239 + 80);
      v242 = swift_allocObject();
      *(v242 + 16) = xmmword_21D0959B0;
      (*(v239 + 16))(v242 + v241, v238, v580);
      sub_21D093600();
      sub_21D093830();
      (*(v239 + 8))(v238, v580);
      (*(v235 + 8))(v234, v236);
    }

    v311 = v1[158];
    v312 = v1[91];
    v313 = v1[90];
    (*(v1[133] + 16))(v1[134], v1[135], v1[132]);
    v314 = sub_21D093B00();
    v315 = MEMORY[0x277D71D60];
    v1[50] = v314;
    v1[51] = v315;
    __swift_allocate_boxed_opaque_existential_1(v1 + 47);

    sub_21D093AF0();
    v1[45] = v311;
    v1[46] = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
    __swift_allocate_boxed_opaque_existential_1(v1 + 42);
    sub_21D093A90();
    if (qword_281221488 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v316 = v1[179];
    v317 = v1[95];
    v318 = v1[92];
    v319 = (v1 + 42);
    if (byte_281221490 == 1)
    {
      sub_21D0590D0(v319, (v1 + 62));

      v320 = sub_21D094210();
      v321 = sub_21D094560();

      if (os_log_type_enabled(v320, v321))
      {
        v322 = v1[95];
        v323 = v1[94];
        v324 = swift_slowAlloc();
        v325 = swift_slowAlloc();
        v616[0] = v325;
        *v324 = 136315394;
        *(v324 + 4) = sub_21D05550C(v323, v322, v616);
        *(v324 + 12) = 2082;
        sub_21D0590D0((v1 + 62), (v1 + 67));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v326 = sub_21D094430();
        v328 = v327;
        __swift_destroy_boxed_opaque_existential_0(v1 + 62);
        v329 = sub_21D05550C(v326, v328, v616);

        *(v324 + 14) = v329;
        v330 = "%s Emitting TG event: %{public}s";
LABEL_75:
        _os_log_impl(&dword_21D044000, v320, v321, v330, v324, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v325, -1, -1);
        MEMORY[0x223D3CDF0](v324, -1, -1);

LABEL_79:
        v338 = v1[183];
        v339 = v1[158];
        v340 = sub_21D0937D0();
        if (v338)
        {
          v342 = v1[181];
          v615 = v1[178];
          v343 = v1[176];
          v569 = v1[147];
          v583 = v1[175];
          v344 = v1[146];
          v547 = v1[144];
          v557 = v1[145];
          v345 = v1[142];
          v346 = v1[140];
          v347 = v1[136];
          v348 = v1[135];
          v349 = v1[133];
          v350 = v1[137] + 8;
          v351 = v1[132];

          (*(v349 + 8))(v348, v351);
          v595(v346, v347);
          sub_21D04D27C(v345, &qword_27CE54260, &unk_21D095CC0);
          sub_21D04D27C(v547, &qword_27CE54248, &unk_21D095CA0);
          (*(v344 + 8))(v569, v557);
          (*(v343 + 8))(v615, v583);
          __swift_destroy_boxed_opaque_existential_0(v1 + 42);
          goto LABEL_36;
        }

        v352 = v1[154];
        v353 = v1[153];
        v354 = v1[152];
        v355 = v1[151];
        v356 = v1[150];
        v357 = v1[149];
        v609 = v1[140];
        v558 = v1[135];
        v358 = v1[133];
        v538 = v1[148];
        v548 = v1[132];
        v570 = v1[137] + 8;
        v584 = v1[136];
        v530 = v1[97];
        v359 = v340;
        v360 = v341;
        sub_21D055C20(v340, v341);
        MEMORY[0x223D3BF70](v359, v360);
        (*(v354 + 16))(v353, v352, v355);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094510();
        sub_21D04FE3C(v359, v360);
        (*(v357 + 8))(v356, v538);
        (*(v354 + 8))(v352, v355);
        (*(v358 + 8))(v558, v548);
        v595(v609, v584);
        __swift_destroy_boxed_opaque_existential_0(v1 + 42);
        v49 = 0;
LABEL_82:
        v361 = v1[141];
        v362 = v1[119];
        v363 = v1[118];
        sub_21D05B270(v1[142], v361, &qword_27CE54260, &unk_21D095CC0);
        if ((*(v362 + 48))(v361, 1, v363) == 1)
        {
          v364 = v1[178];
          v365 = v1[176];
          v366 = v1[175];
          v367 = v1[147];
          v368 = v613[146];
          v369 = v613[145];
          v370 = v613[144];
          v371 = v613[141];
          sub_21D04D27C(v613[142], &qword_27CE54260, &unk_21D095CC0);
          sub_21D04D27C(v370, &qword_27CE54248, &unk_21D095CA0);
          (*(v368 + 8))(v367, v369);
          v100 = v613;
          (*(v365 + 8))(v364, v366);
          sub_21D04D27C(v371, &qword_27CE54260, &unk_21D095CC0);
          goto LABEL_20;
        }

        v610 = v49;
        v372 = v1[112];
        (*(v1[119] + 32))(v1[120], v1[141], v1[118]);
        sub_21D0935B0();
        v373 = sub_21D0935A0();
        v374 = *(v373 - 8);
        v375 = (*(v374 + 48))(v372, 1, v373);
        v376 = v1[112];
        if (v375 == 1)
        {
          sub_21D04D27C(v1[112], &qword_27CE54480, &qword_21D096498);
        }

        else
        {
          sub_21D093590();
          (*(v374 + 8))(v376, v373);
        }

        v377 = v1[147];
        v378 = v1[120];
        v379 = v1[113];
        v380 = v1[111];
        v381 = v1[110];
        sub_21D093C20();
        sub_21D0935C0();
        sub_21D093580();
        sub_21D0932D0();
        sub_21D094430();
        v382 = sub_21D0935D0();
        v383 = *(v382 + 16);
        if (v383)
        {
          v384 = v1 + 88;
          v1[88] = MEMORY[0x277D84F90];
          v385 = v382;
          sub_21D08FAFC(0, v383, 0);
          v386 = v385;
          v387 = v1[88];
          v388 = *(*v384 + 16);
          v389 = 32;
          do
          {
            v390 = *(v386 + v389);
            *v384 = v387;
            v391 = *(v387 + 24);
            if (v388 >= v391 >> 1)
            {
              sub_21D08FAFC((v391 > 1), v388 + 1, 1);
              v386 = v385;
              v387 = *v384;
            }

            *(v387 + 16) = v388 + 1;
            *(v387 + 8 * v388 + 32) = v390;
            v389 += 4;
            ++v388;
            --v383;
          }

          while (v383);
        }

        v392 = v613[158];
        v393 = v613[117];
        v394 = v613[116];
        v395 = v613[115];
        v396 = v613[114];
        v397 = v613[113];
        v398 = v613[91];
        v399 = v613[90];
        sub_21D0900B0(MEMORY[0x277D84F90]);
        sub_21D093C40();
        (*(v395 + 16))(v394, v393, v396);
        v400 = sub_21D093710();
        v401 = MEMORY[0x277D719C8];
        v613[20] = v400;
        v613[21] = v401;
        __swift_allocate_boxed_opaque_existential_1(v613 + 17);

        sub_21D093700();
        v613[15] = v392;
        v613[16] = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
        __swift_allocate_boxed_opaque_existential_1(v613 + 12);
        sub_21D093A90();
        if (qword_281221488 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v402 = v613[179];
        v403 = v613[95];
        v404 = v613[92];
        v405 = (v613 + 12);
        if (byte_281221490)
        {
          sub_21D0590D0(v405, (v613 + 32));

          v406 = sub_21D094210();
          v407 = sub_21D094560();

          if (os_log_type_enabled(v406, v407))
          {
            v408 = v613[95];
            v409 = v613[94];
            v410 = swift_slowAlloc();
            v411 = swift_slowAlloc();
            v616[0] = v411;
            *v410 = 136315394;
            *(v410 + 4) = sub_21D05550C(v409, v408, v616);
            *(v410 + 12) = 2082;
            sub_21D0590D0((v613 + 32), (v613 + 37));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
            v412 = sub_21D094430();
            v414 = v413;
            __swift_destroy_boxed_opaque_existential_0(v613 + 32);
            v415 = sub_21D05550C(v412, v414, v616);

            *(v410 + 14) = v415;
            v416 = "%s Emitting TG event: %{public}s";
LABEL_99:
            _os_log_impl(&dword_21D044000, v406, v407, v416, v410, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v411, -1, -1);
            MEMORY[0x223D3CDF0](v410, -1, -1);

LABEL_103:
            v424 = v613[158];
            v425 = sub_21D0937D0();
            if (!v610)
            {
              v439 = v425;
              v440 = v426;
              v586 = v613[176];
              v598 = v613[175];
              v611 = v613[178];
              v441 = v613[154];
              v442 = v613[153];
              v443 = v613[152];
              v444 = v613[151];
              v445 = v613[150];
              v446 = v613[149];
              v503 = v613[148];
              v560 = v613[145];
              v572 = v613[147];
              v539 = v613[144];
              v549 = v613[146];
              v524 = v613[120];
              v531 = v613[142];
              v447 = v613[119];
              v518 = v613[118];
              v513 = v613[117];
              v448 = v613[115];
              v508 = v613[114];
              v498 = v613[97];
              sub_21D055C20(v425, v426);
              MEMORY[0x223D3BF70](v439, v440);
              (*(v443 + 16))(v442, v441, v444);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
              sub_21D094510();
              sub_21D04FE3C(v439, v440);
              (*(v446 + 8))(v445, v503);
              (*(v443 + 8))(v441, v444);
              (*(v448 + 8))(v513, v508);
              v100 = v613;
              (*(v447 + 8))(v524, v518);
              sub_21D04D27C(v531, &qword_27CE54260, &unk_21D095CC0);
              sub_21D04D27C(v539, &qword_27CE54248, &unk_21D095CA0);
              (*(v549 + 8))(v572, v560);
              (*(v586 + 8))(v611, v598);
              __swift_destroy_boxed_opaque_existential_0(v613 + 12);
              goto LABEL_20;
            }

            v427 = v613[181];
            v428 = v613[176];
            v585 = v613[175];
            v597 = v613[178];
            v429 = v613[146];
            v559 = v613[145];
            v571 = v613[147];
            v430 = v613[144];
            v431 = v613[142];
            v432 = v613[120];
            v433 = v613[119];
            v434 = v613[118];
            v435 = v613[117];
            v436 = v613[115];
            v437 = v613[114];

            v438 = v435;
            v1 = v613;
            (*(v436 + 8))(v438, v437);
            (*(v433 + 8))(v432, v434);
            sub_21D04D27C(v431, &qword_27CE54260, &unk_21D095CC0);
            sub_21D04D27C(v430, &qword_27CE54248, &unk_21D095CA0);
            (*(v429 + 8))(v571, v559);
            (*(v428 + 8))(v597, v585);
            __swift_destroy_boxed_opaque_existential_0(v613 + 12);
LABEL_36:
            v144 = v1[178];
            v145 = v1[177];
            v146 = v1[174];
            v147 = v1[173];
            v148 = v1[172];
            v149 = v1;
            v150 = v1[171];
            v151 = v149[170];
            v152 = v149[169];
            v153 = v149[166];
            v154 = v149[165];
            v450 = v149[162];
            v452 = v149[161];
            v454 = v149[160];
            v456 = v149[157];
            v458 = v149[154];
            v460 = v149[153];
            v462 = v149[150];
            v464 = v149[147];
            v466 = v149[144];
            v468 = v149[143];
            v470 = v149[142];
            v472 = v149[141];
            v474 = v149[140];
            v476 = v149[139];
            v478 = v149[138];
            v480 = v149[135];
            v482 = v149[134];
            v484 = v149[131];
            v486 = v149[130];
            v488 = v149[127];
            v490 = v149[126];
            v493 = v149[125];
            v496 = v149[124];
            v500 = v149[123];
            v505 = v149[120];
            v510 = v149[117];
            v515 = v149[116];
            v520 = v149[113];
            v526 = v149[112];
            v534 = v149[111];
            v543 = v149[109];
            v553 = v149[108];
            v564 = v149[107];
            v576 = v149[104];
            v592 = v149[103];
            v614 = v149[100];

            v16 = v149[1];
            goto LABEL_37;
          }

          v423 = v613 + 32;
        }

        else
        {
          sub_21D0590D0(v405, (v613 + 22));

          v406 = sub_21D094210();
          v407 = sub_21D094560();

          if (os_log_type_enabled(v406, v407))
          {
            v417 = v613[95];
            v418 = v613[94];
            v410 = swift_slowAlloc();
            v411 = swift_slowAlloc();
            v616[0] = v411;
            *v410 = 136315395;
            *(v410 + 4) = sub_21D05550C(v418, v417, v616);
            *(v410 + 12) = 2081;
            sub_21D0590D0((v613 + 22), (v613 + 27));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
            v419 = sub_21D094430();
            v421 = v420;
            __swift_destroy_boxed_opaque_existential_0(v613 + 22);
            v422 = sub_21D05550C(v419, v421, v616);

            *(v410 + 14) = v422;
            v416 = "%s Emitting TG event: %{private}s";
            goto LABEL_99;
          }

          v423 = v613 + 22;
        }

        __swift_destroy_boxed_opaque_existential_0(v423);
        goto LABEL_103;
      }

      v337 = v1 + 62;
    }

    else
    {
      sub_21D0590D0(v319, (v1 + 52));

      v320 = sub_21D094210();
      v321 = sub_21D094560();

      if (os_log_type_enabled(v320, v321))
      {
        v331 = v1[95];
        v332 = v1[94];
        v324 = swift_slowAlloc();
        v325 = swift_slowAlloc();
        v616[0] = v325;
        *v324 = 136315395;
        *(v324 + 4) = sub_21D05550C(v332, v331, v616);
        *(v324 + 12) = 2081;
        sub_21D0590D0((v1 + 52), (v1 + 57));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v333 = sub_21D094430();
        v335 = v334;
        __swift_destroy_boxed_opaque_existential_0(v1 + 52);
        v336 = sub_21D05550C(v333, v335, v616);

        *(v324 + 14) = v336;
        v330 = "%s Emitting TG event: %{private}s";
        goto LABEL_75;
      }

      v337 = v1 + 52;
    }

    __swift_destroy_boxed_opaque_existential_0(v337);
    goto LABEL_79;
  }

  if (v18 != *(v1 + 371))
  {
    v194 = v1[178];
    v579 = v1[181];
    v596 = v1[177];
    v195 = v1[176];
    v196 = v1[175];
    v197 = v1[95];
    v198 = v613[94];
    v199 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    swift_allocError();
    v201 = v200;
    v616[0] = 0;
    v616[1] = 0xE000000000000000;
    sub_21D0946E0();
    v613[86] = 0;
    v613[87] = 0xE000000000000000;
    MEMORY[0x223D3C530](0xD000000000000027, 0x800000021D097420);
    MEMORY[0x223D3C530](v198, v197);
    MEMORY[0x223D3C530](8250, 0xE200000000000000);
    sub_21D094740();
    v202 = v613[86];
    v203 = v613[87];
    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    v1 = v613;
    sub_21D093ED0();
    (*(*(v199 - 8) + 104))(v201, *MEMORY[0x277D29DA8], v199);
    swift_willThrow();

    v204 = *(v195 + 8);
    v204(v194, v196);
    v204(v596, v196);
    goto LABEL_36;
  }

  v106 = v1[179];
  v107 = v1[177];
  v108 = v1[109];
  v109 = v1[108];
  v110 = v1[106];
  v111 = v1[105];
  v112 = v1[92];
  (*(v1[176] + 96))(v107, v1[175]);
  (*(v110 + 32))(v108, v107, v111);
  (*(v110 + 16))(v109, v108, v111);
  v113 = sub_21D094210();
  v114 = sub_21D094560();
  v115 = os_log_type_enabled(v113, v114);
  v116 = v1[108];
  v117 = v1[106];
  v118 = v1[105];
  if (v115)
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v616[0] = v120;
    *v119 = 136315138;
    sub_21D091B40(&qword_27CE544B0, MEMORY[0x277D414E8]);
    v121 = sub_21D094790();
    v123 = v122;
    v591 = *(v117 + 8);
    v591(v116, v118);
    v124 = sub_21D05550C(v121, v123, v616);

    *(v119 + 4) = v124;
    _os_log_impl(&dword_21D044000, v113, v114, "requestStream completionReason: %s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v120);
    MEMORY[0x223D3CDF0](v120, -1, -1);
    MEMORY[0x223D3CDF0](v119, -1, -1);
  }

  else
  {

    v591 = *(v117 + 8);
    v591(v116, v118);
  }

  v205 = v1[180];
  v206 = v1[170];
  v207 = v1[92];
  v208 = *v1[93];

  v209 = sub_21D0941A0();
  sub_21D0941D0();
  v210 = sub_21D094650();
  if (sub_21D094680())
  {
    v211 = *(v1 + 372);
    v212 = v1[165];
    v213 = v1[164];
    v214 = v1[163];

    sub_21D094200();

    if ((*(v213 + 88))(v212, v214) == v211)
    {
      v215 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[164] + 8))(v1[165], v1[163]);
      v215 = "token received";
    }

    v243 = v1[170];
    v244 = swift_slowAlloc();
    *v244 = 0;
    v245 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v209, v210, v245, "requestStream", v215, v244, 2u);
    MEMORY[0x223D3CDF0](v244, -1, -1);
  }

  v246 = v1[180];
  v247 = v1[170];
  v248 = v1[169];
  v249 = v1[168];
  v250 = v1[167];
  v251 = v1[95];
  v252 = v1[92];

  v606 = *(v249 + 8);
  v606(v247, v250);
  sub_21D0941A0();
  sub_21D094150();

  v253 = sub_21D0941A0();
  v254 = sub_21D094660();

  if (sub_21D094680())
  {
    v255 = v1[169];
    v256 = v1[95];
    v257 = v1[94];
    v258 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    v616[0] = v259;
    *v258 = 136446210;
    *(v258 + 4) = sub_21D05550C(v257, v256, v616);
    v260 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v253, v254, v260, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v258, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v259);
    MEMORY[0x223D3CDF0](v259, -1, -1);
    MEMORY[0x223D3CDF0](v258, -1, -1);
  }

  v566 = v1[183];
  v511 = *(v1 + 375);
  v506 = *(v1 + 374);
  v581 = *(v1 + 373);
  v261 = v1[171];
  v262 = v1[169];
  v263 = v1[168];
  v264 = v1[167];
  v545 = v1[161];
  v555 = v1[158];
  v265 = v1[157];
  v516 = v613[156];
  v528 = v613[155];
  v491 = v613[109];
  v266 = v613[107];
  v267 = v613[106];
  v268 = v613[105];
  v497 = v613[104];
  v522 = v613[103];
  v269 = v613[102];
  v494 = v613[101];
  v270 = v613[93];
  v501 = v613[91];
  v536 = v613[90];
  (*(v263 + 16))(v261, v262, v264);
  v271 = sub_21D0941F0();
  v272 = *(v271 + 48);
  v273 = *(v271 + 52);
  swift_allocObject();
  v274 = sub_21D0941E0();
  v606(v262, v264);
  v275 = *v270;
  *v270 = v274;

  (*(v267 + 104))(v266, v581, v268);
  LOBYTE(v274) = sub_21D093140();
  v591(v266, v268);
  if (v274)
  {
    v276 = v511;
  }

  else
  {
    v276 = v506;
  }

  (*(v269 + 104))(v497, v276, v494);

  sub_21D092FB0();
  sub_21D092FA0();
  (*(v516 + 8))(v265, v528);
  (*(v269 + 16))(v522, v497, v494);
  v277 = sub_21D093B20();
  v278 = MEMORY[0x277D71D68];
  v613[10] = v277;
  v613[11] = v278;
  __swift_allocate_boxed_opaque_existential_1(v613 + 7);
  sub_21D093B10();
  sub_21D093A90();
  sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
  v279 = sub_21D0937D0();
  if (v566)
  {
    v281 = v613[181];
    v567 = v613[178];
    v282 = v613[176];
    v283 = v613[175];
    v284 = v613[161];
    v285 = v613[159];
    v286 = v613[158];
    v287 = v613[109];
    v288 = v613[105];
    v289 = v613[104];
    v290 = v613[102];
    v291 = v613[101];

    (*(v285 + 8))(v284, v286);
    v1 = v613;
    (*(v290 + 8))(v289, v291);
    v591(v287, v288);
    (*(v282 + 8))(v567, v283);
    goto LABEL_36;
  }

  v292 = v279;
  v293 = v280;
  v607 = v613[178];
  v556 = v613[176];
  v568 = v613[175];
  v294 = v613[159];
  v523 = v613[158];
  v529 = v613[161];
  v295 = v613[154];
  v296 = v613[153];
  v297 = v613[152];
  v298 = v613[151];
  v299 = v613[150];
  v300 = v613[149];
  v507 = v613[148];
  v537 = v613[105];
  v546 = v613[109];
  v517 = v613[104];
  v301 = v613[102];
  v512 = v613[101];
  v502 = v613[97];
  sub_21D055C20(v279, v280);
  MEMORY[0x223D3BF70](v292, v293);
  (*(v297 + 16))(v296, v295, v298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  sub_21D094510();
  sub_21D04FE3C(v292, v293);
  (*(v300 + 8))(v299, v507);
  (*(v297 + 8))(v295, v298);
  v100 = v613;
  (*(v294 + 8))(v529, v523);
  (*(v301 + 8))(v517, v512);
  v591(v546, v537);
  (*(v556 + 8))(v607, v568);
LABEL_20:
  v101 = v100[181];
LABEL_21:
  v100[181] = v101;
  v102 = swift_task_alloc();
  v100[182] = v102;
  *v102 = v100;
  v102[1] = sub_21D0665F4;
  v103 = v100[174];
  v104 = v100[89];

  return sub_21D059134(v103);
}

uint64_t sub_21D0699C0()
{
  v1 = v0[181];

  v50 = v0[183];
  v2 = v0[178];
  v3 = v0[177];
  v4 = v0[174];
  v5 = v0[173];
  v6 = v0[172];
  v7 = v0[171];
  v8 = v0[170];
  v9 = v0[169];
  v10 = v0[166];
  v11 = v0[165];
  v14 = v0[162];
  v15 = v0[161];
  v16 = v0[160];
  v17 = v0[157];
  v18 = v0[154];
  v19 = v0[153];
  v20 = v0[150];
  v21 = v0[147];
  v22 = v0[144];
  v23 = v0[143];
  v24 = v0[142];
  v25 = v0[141];
  v26 = v0[140];
  v27 = v0[139];
  v28 = v0[138];
  v29 = v0[135];
  v30 = v0[134];
  v31 = v0[131];
  v32 = v0[130];
  v33 = v0[127];
  v34 = v0[126];
  v35 = v0[125];
  v36 = v0[124];
  v37 = v0[123];
  v38 = v0[120];
  v39 = v0[117];
  v40 = v0[116];
  v41 = v0[113];
  v42 = v0[112];
  v43 = v0[111];
  v44 = v0[109];
  v45 = v0[108];
  v46 = v0[107];
  v47 = v0[104];
  v48 = v0[103];
  v49 = v0[100];

  v12 = v0[1];

  return v12();
}

uint64_t NewInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v96 = a2;
  v93 = a1;
  v98 = a4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542E0, &qword_21D095E58);
  v92 = *(v95 - 8);
  v7 = *(v92 + 64);
  MEMORY[0x28223BE20](v95);
  v97 = v78 - v8;
  v9 = sub_21D094230();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v9);
  v91 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21D094180();
  v83 = *(v12 - 1);
  v84 = v12;
  v13 = *(v83 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = v78 - v16;
  v17 = sub_21D092FC0();
  v87 = *(v17 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21D094070();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v88 = v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v85 = v78 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = v78 - v28;
  v30 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v100 = v22;
  v32 = *(v22 + 16);
  v31 = v22 + 16;
  v102 = v32;
  v32(v78 - v28, a3, v21);
  v101 = v30;
  v33 = sub_21D094210();
  v34 = sub_21D094580();
  v35 = os_log_type_enabled(v33, v34);
  v99 = v5;
  v94 = a3;
  v79 = v17;
  v86 = v20;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78[1] = v31;
    v38 = v37;
    v103[0] = v37;
    *v36 = 136315138;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v39 = sub_21D094790();
    v41 = v40;
    (*(v87 + 8))(v20, v17);
    v80 = *(v100 + 8);
    v80(v29, v21);
    v42 = sub_21D05550C(v39, v41, v103);
    v5 = v99;

    *(v36 + 4) = v42;
    _os_log_impl(&dword_21D044000, v33, v34, "%s executing original stream request with data", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x223D3CDF0](v38, -1, -1);
    v43 = v36;
    a3 = v94;
    MEMORY[0x223D3CDF0](v43, -1, -1);
  }

  else
  {

    v80 = *(v100 + 8);
    v80(v29, v21);
  }

  sub_21D0941A0();
  v44 = v82;
  sub_21D094150();
  v45 = sub_21D0941A0();
  v46 = sub_21D094660();
  if (sub_21D094680())
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v45, v46, v48, "requestStream", "full request", v47, 2u);
    v49 = v47;
    v5 = v99;
    MEMORY[0x223D3CDF0](v49, -1, -1);
  }

  v51 = v83;
  v50 = v84;
  (*(v83 + 16))(v81, v44, v84);
  v52 = sub_21D0941F0();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v81 = sub_21D0941E0();
  (*(v51 + 8))(v44, v50);
  v55 = v85;
  v102(v85, a3, v21);
  v56 = sub_21D094210();
  v57 = sub_21D094580();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v86;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v103[0] = v84;
    *v60 = 136315138;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v61 = v79;
    v62 = sub_21D094790();
    v64 = v63;
    (*(v87 + 8))(v59, v61);
    v80(v55, v21);
    v65 = sub_21D05550C(v62, v64, v103);
    v5 = v99;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_21D044000, v56, v57, "%s executing stream request", v60, 0xCu);
    v66 = v84;
    __swift_destroy_boxed_opaque_existential_0(v84);
    a3 = v94;
    MEMORY[0x223D3CDF0](v66, -1, -1);
    MEMORY[0x223D3CDF0](v60, -1, -1);
  }

  else
  {

    v80(v55, v21);
  }

  (*(v89 + 16))(v91, v5 + v101, v90);
  v102(v88, a3, v21);
  v67 = sub_21D093670();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v70 = sub_21D093650();
  v71 = MEMORY[0x28223BE20](v70);
  v72 = v81;
  v78[-6] = v5;
  v78[-5] = v72;
  v73 = v93;
  v78[-4] = a3;
  v78[-3] = v73;
  v74 = v97;
  v78[-2] = v96;
  v78[-1] = v71;
  (*(v92 + 104))(v74, *MEMORY[0x277D858A0], v95);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542E8, &qword_21D095E60);
  v76 = v98;
  v98[3] = v75;
  v76[4] = sub_21D090A4C(&qword_281221470, &qword_27CE542E8, &qword_21D095E60);
  __swift_allocate_boxed_opaque_existential_1(v76);
  sub_21D094530();
}

uint64_t sub_21D06A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v38 = a3;
  v39 = a5;
  v36 = a2;
  v37 = a4;
  v35 = a1;
  v8 = sub_21D094070();
  v32 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v34 = &v30 - v18;
  v20 = sub_21D0944D0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  (*(v9 + 16))(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v8);
  v21 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v22 = (v13 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v38;
  *(v24 + 4) = v36;
  *(v24 + 5) = v25;
  (*(v12 + 32))(&v24[v21], v15, v31);
  (*(v9 + 32))(&v24[v22], v33, v32);
  v26 = &v24[v23];
  v28 = v39;
  v27 = v40;
  *v26 = v39;
  v26[1] = v27;
  *&v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8] = v41;

  sub_21D055C20(v28, v27);

  sub_21D05156C(0, 0, v34, &unk_21D0964F0, v24);
  return sub_21D094500();
}

uint64_t sub_21D06A970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = v31;
  v8[68] = v30;
  v8[67] = a8;
  v8[66] = a7;
  v8[65] = a6;
  v8[63] = a4;
  v8[64] = a5;
  v9 = sub_21D093EF0();
  v8[70] = v9;
  v10 = *(v9 - 8);
  v8[71] = v10;
  v11 = *(v10 + 64) + 15;
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v12 = sub_21D0941C0();
  v8[76] = v12;
  v13 = *(v12 - 8);
  v8[77] = v13;
  v14 = *(v13 + 64) + 15;
  v8[78] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78) - 8) + 64) + 15;
  v8[79] = swift_task_alloc();
  v16 = sub_21D094070();
  v8[80] = v16;
  v17 = *(v16 - 8);
  v8[81] = v17;
  v18 = *(v17 + 64) + 15;
  v8[82] = swift_task_alloc();
  v19 = sub_21D093800();
  v8[83] = v19;
  v20 = *(v19 - 8);
  v8[84] = v20;
  v21 = *(v20 + 64) + 15;
  v8[85] = swift_task_alloc();
  v22 = sub_21D094180();
  v8[86] = v22;
  v23 = *(v22 - 8);
  v8[87] = v23;
  v24 = *(v23 + 64) + 15;
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v25 = sub_21D092FC0();
  v8[91] = v25;
  v26 = *(v25 - 8);
  v8[92] = v26;
  v27 = *(v26 + 64) + 15;
  v8[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D06AC8C, 0, 0);
}

id sub_21D06AC8C()
{
  v239 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 528);
  v6 = *(v0 + 504);
  sub_21D094010();
  v7 = sub_21D092FA0();
  v9 = v8;
  *(v0 + 752) = v7;
  *(v0 + 760) = v8;
  v10 = *(v2 + 8);
  v10(v1, v3);
  *(v0 + 768) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  sub_21D0941A0();
  sub_21D094150();

  v11 = sub_21D0941A0();
  v12 = sub_21D094660();

  v232 = v10;
  format = v9;
  buf = v7;
  if (sub_21D094680())
  {
    v13 = *(v0 + 720);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v238[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_21D05550C(v7, v9, v238);
    v16 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v11, v12, v16, "requestStream", "first token requestIdentifier=%{public, signpost.description=attribute,public}s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D3CDF0](v15, -1, -1);
    MEMORY[0x223D3CDF0](v14, -1, -1);
  }

  v17 = *(v0 + 744);
  v18 = *(v0 + 728);
  v19 = *(v0 + 720);
  v20 = *(v0 + 696);
  v21 = *(v0 + 688);
  v22 = *(v0 + 680);
  v23 = *(v0 + 664);
  v228 = *(v0 + 544);
  v24 = *(v0 + 536);
  (*(v20 + 16))(*(v0 + 712), v19, v21);
  v25 = sub_21D0941F0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_21D0941E0();
  v29 = *(v20 + 8);
  *(v0 + 776) = v29;
  *(v0 + 784) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v19, v21);
  *(v0 + 448) = v28;
  sub_21D092FB0();
  v30 = sub_21D092FA0();
  v32 = v31;
  *(v0 + 792) = v31;
  v232(v17, v18);
  sub_21D091B40(&qword_281221798, MEMORY[0x277D71BC0]);
  sub_21D0937C0();
  v33 = *(v0 + 552);
  v34 = *(v0 + 520);
  v35 = *(v0 + 504);
  v36 = sub_21D093670();
  v37 = MEMORY[0x277D41578];
  *(v0 + 432) = v36;
  *(v0 + 440) = v37;
  *(v0 + 408) = v33;
  v38 = swift_task_alloc();
  *(v0 + 800) = v38;
  v38[2] = v30;
  v38[3] = v32;
  v38[4] = v35;
  v38[5] = v0 + 448;
  v38[6] = buf;
  v38[7] = format;
  v38[8] = v33;
  v38[9] = v34;
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);

  if (sub_21D0945A0())
  {
    v39 = (v0 + 408);
    v40 = *(v0 + 504);
    (*(*(v0 + 648) + 16))(*(v0 + 656), *(v0 + 528), *(v0 + 640));
    v41 = sub_21D094210();
    v42 = sub_21D094570();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 744);
      v44 = *(v0 + 656);
      v45 = *(v0 + 648);
      formatc = *(v0 + 728);
      bufb = *(v0 + 640);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v238[0] = v47;
      *v46 = 136315138;
      sub_21D094010();
      v48 = sub_21D092FA0();
      v50 = v49;
      v232(v43, formatc);
      (*(v45 + 8))(v44, bufb);
      v39 = (v0 + 408);
      v51 = sub_21D05550C(v48, v50, v238);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_21D044000, v41, v42, "%s Fallback is enabled", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223D3CDF0](v47, -1, -1);
      MEMORY[0x223D3CDF0](v46, -1, -1);
    }

    else
    {
      v67 = *(v0 + 656);
      v68 = *(v0 + 648);
      v69 = *(v0 + 640);

      (*(v68 + 8))(v67, v69);
    }

    v70 = *(v0 + 568);
    v71 = *(v0 + 560);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v72 = swift_allocError();
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21D0959B0;
    v76 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_21D0943F0();
    *(inited + 40) = v77;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000021D0971A0;
    sub_21D0900B0(inited);
    swift_setDeallocating();
    sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
    sub_21D093ED0();
    (*(v70 + 104))(v74, *MEMORY[0x277D29DA8], v71);
    swift_willThrow();

    v78 = *(v0 + 800);
    v79 = *(v0 + 680);
    v80 = *(v0 + 672);
    v81 = *(v0 + 664);

    (*(v80 + 8))(v79, v81);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v82 = *(v0 + 600);
    v83 = *(v0 + 560);
    *(v0 + 456) = v72;
    v84 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    if (swift_dynamicCast())
    {
      v85 = *(v0 + 600);
      v86 = *(v0 + 592);
      v87 = *(v0 + 568);
      v88 = *(v0 + 560);
      v89 = *(v0 + 520);

      (*(v87 + 32))(v86, v85, v88);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      v90 = swift_allocError();
      (*(v87 + 16))(v91, v86, v88);
      *(v0 + 496) = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
      sub_21D094520();
      (*(v87 + 8))(v86, v88);
      v92 = *(v0 + 456);
LABEL_29:

      goto LABEL_30;
    }

    *(v0 + 464) = v72;
    v93 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
    if (swift_dynamicCast())
    {
      v94 = *(v0 + 504);

      sub_21D046D78((v0 + 208), v0 + 248);
      sub_21D0590D0(v0 + 248, v0 + 288);
      sub_21D0590D0(v0 + 248, v0 + 328);
      sub_21D0590D0(v0 + 248, v0 + 368);
      v95 = sub_21D094210();
      v96 = sub_21D094550();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v238[0] = v98;
        *v97 = 136315650;
        v99 = *(v0 + 320);
        __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
        v100 = *(v99 + 8);
        v101 = sub_21D094090();
        v103 = v102;
        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        v104 = sub_21D05550C(v101, v103, v238);

        *(v97 + 4) = v104;
        *(v97 + 12) = 2048;
        v105 = *(v0 + 360);
        __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
        v106 = sub_21D093520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));
        *(v97 + 14) = v106;
        *(v97 + 22) = 2080;
        v107 = *(v0 + 400);
        __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
        v108 = sub_21D093530();
        v110 = v109;
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
        v111 = sub_21D05550C(v108, v110, v238);

        *(v97 + 24) = v111;
        _os_log_impl(&dword_21D044000, v95, v96, "Request failed: %s %ld %s", v97, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v98, -1, -1);
        MEMORY[0x223D3CDF0](v97, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));

        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      }

      v138 = *(v0 + 560);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      v236 = swift_allocError();
      v140 = v139;
      v141 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      sub_21D093530();
      v142 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      v143 = *(v142 + 8);
      sub_21D094090();
      v144 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      result = sub_21D093520();
      if (!__OFADD__(result, 10000))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        v145 = swift_initStackObject();
        *(v145 + 16) = xmmword_21D0959B0;
        v146 = *MEMORY[0x277CCA7E8];
        *(v145 + 32) = sub_21D0943F0();
        *(v145 + 40) = v147;
        v148 = *(v0 + 272);
        v149 = *(v0 + 280);
        __swift_project_boxed_opaque_existential_1((v0 + 248), v148);
        *(v145 + 48) = MEMORY[0x223D3C1D0](v148, *(v149 + 8));
        *(v145 + 56) = v150;
        sub_21D0900B0(v145);
        swift_setDeallocating();
        sub_21D04D27C(v145 + 32, &qword_27CE542C0, &qword_21D095E28);
        v151 = *(v0 + 272);
        v152 = *(v0 + 280);
        v153 = __swift_project_boxed_opaque_existential_1((v0 + 248), v151);
        v154 = *(v151 - 8);
        v155 = *(v154 + 64) + 15;
        v156 = swift_task_alloc();
        (*(v154 + 16))(v156, v153, v151);
        v157 = *(*(*(v152 + 8) + 8) + 8);
        if (sub_21D0947A0())
        {
          (*(v154 + 8))(v156, v151);
        }

        else
        {
          swift_allocError();
          (*(v154 + 32))(v171, v156, v151);
        }

        v172 = *(v0 + 568);
        v173 = *(v0 + 560);
        v174 = *(v0 + 520);
        sub_21D093EC0();

        (*(v172 + 104))(v140, *MEMORY[0x277D29DA8], v173);
        *(v0 + 488) = v236;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
        sub_21D094520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 248));
        v92 = *(v0 + 464);
        goto LABEL_29;
      }
    }

    else
    {

      v112 = sub_21D092F10();
      *(v0 + 472) = v72;
      v113 = v72;
      sub_21D094430();
      v114 = [v112 domain];
      sub_21D0943F0();

      result = [v112 code];
      if (!__OFADD__(result, 20000))
      {
        v116 = *(v0 + 584);
        v117 = *(v0 + 568);
        v209 = *(v0 + 560);
        v210 = *(v0 + 576);
        v212 = *(v0 + 504);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        v118 = swift_initStackObject();
        *(v118 + 16) = xmmword_21D0959B0;
        v119 = *MEMORY[0x277CCA7E8];
        *(v118 + 32) = sub_21D0943F0();
        *(v118 + 40) = v120;
        v121 = [v112 description];
        v122 = sub_21D0943F0();
        v124 = v123;

        *(v118 + 48) = v122;
        *(v118 + 56) = v124;
        sub_21D0900B0(v118);
        swift_setDeallocating();
        sub_21D04D27C(v118 + 32, &qword_27CE542C0, &qword_21D095E28);
        v214 = v112;
        sub_21D093EC0();
        (*(v117 + 104))(v116, *MEMORY[0x277D29DA8], v209);
        v125 = *(v117 + 16);
        v125(v210, v116, v209);
        v126 = sub_21D094210();
        v127 = sub_21D094550();
        v128 = os_log_type_enabled(v126, v127);
        v129 = *(v0 + 576);
        v130 = *(v0 + 568);
        v131 = *(v0 + 560);
        if (v128)
        {
          bufc = swift_slowAlloc();
          v229 = swift_slowAlloc();
          v238[0] = v229;
          *bufc = 136315138;
          sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0]);
          formatd = v127;
          v132 = sub_21D094790();
          v233 = v125;
          v134 = v133;
          v135 = *(v130 + 8);
          v135(v129, v131);
          v136 = v135;
          v137 = sub_21D05550C(v132, v134, v238);
          v125 = v233;

          *(bufc + 4) = v137;
          _os_log_impl(&dword_21D044000, v126, formatd, "Request failed: %s", bufc, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v229);
          MEMORY[0x223D3CDF0](v229, -1, -1);
          MEMORY[0x223D3CDF0](bufc, -1, -1);
        }

        else
        {

          v158 = *(v130 + 8);
          v158(v129, v131);
          v136 = v158;
        }

        v159 = *(v0 + 584);
        v160 = *(v0 + 560);
        v161 = *(v0 + 520);
        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
        v162 = swift_allocError();
        v125(v163, v159, v160);
        *(v0 + 480) = v162;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
        sub_21D094520();

        v136(v159, v160);
LABEL_30:
        v175 = *(v0 + 768);
        v176 = *(v0 + 760);
        v177 = *(v0 + 704);
        v178 = *(v0 + 504);
        v179 = *(v0 + 448);

        v180 = sub_21D0941A0();
        sub_21D0941D0();
        v181 = sub_21D094650();

        if (sub_21D094680())
        {
          v182 = *(v0 + 624);
          v183 = *(v0 + 616);
          v184 = *(v0 + 608);

          sub_21D094200();

          if ((*(v183 + 88))(v182, v184) == *MEMORY[0x277D85B00])
          {
            v185 = 0;
            v186 = 0;
            formatb = "[Error] Interval already ended";
          }

          else
          {
            (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));
            formatb = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
            v186 = 2;
            v185 = 1;
          }

          v230 = *(v0 + 776);
          v234 = *(v0 + 784);
          v192 = *(v0 + 760);
          v193 = *(v0 + 752);
          v194 = *(v0 + 704);
          bufd = *(v0 + 688);
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v238[0] = v196;
          *v195 = v186;
          *(v195 + 1) = v185;
          *(v195 + 2) = 2082;
          v197 = sub_21D05550C(v193, v192, v238);

          *(v195 + 4) = v197;
          v198 = sub_21D094160();
          _os_signpost_emit_with_name_impl(&dword_21D044000, v180, v181, v198, "requestStream", formatb, v195, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v196);
          MEMORY[0x223D3CDF0](v196, -1, -1);
          MEMORY[0x223D3CDF0](v195, -1, -1);

          v230(v194, bufd);
        }

        else
        {
          v187 = *(v0 + 784);
          v188 = *(v0 + 776);
          v189 = *(v0 + 760);
          v190 = *(v0 + 704);
          v191 = *(v0 + 688);

          v188(v190, v191);
        }

        v199 = *(v0 + 744);
        v200 = *(v0 + 720);
        v201 = *(v0 + 712);
        v202 = *(v0 + 704);
        v203 = *(v0 + 680);
        v211 = *(v0 + 656);
        v213 = *(v0 + 632);
        v215 = *(v0 + 624);
        formate = *(v0 + 600);
        bufe = *(v0 + 592);
        v231 = *(v0 + 584);
        v235 = *(v0 + 576);
        v204 = *(v0 + 552);
        v205 = *(v0 + 520);
        v206 = *(v0 + 504);
        v207 = *(v0 + 512);
        sub_21D093640();

        sub_21D06D62C(v206, v207, v205, &qword_27CE544C0, &unk_21D0964D8);

        v208 = *(v0 + 8);

        return v208();
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v52 = *(v0 + 744);
  v53 = *(v0 + 728);
  v54 = *(v0 + 632);
  v55 = *(v0 + 528);
  v56 = *(v0 + 504);
  sub_21D094010();
  v57 = sub_21D092FA0();
  formata = v58;
  bufa = v57;
  *(v0 + 808) = v58;
  v232(v52, v53);
  logMetric(logger:name:startInstant:)(v56 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, 0xD000000000000012, 0x800000021D097180);
  v59 = sub_21D093D00();
  *(v0 + 816) = v59;
  v60 = *(v59 - 8);
  *(v0 + 824) = v60;
  v61 = *(v60 + 64) + 15;
  v62 = swift_task_alloc();
  *(v0 + 832) = v62;
  sub_21D093CF0();
  sub_21D094000();
  v63 = sub_21D093E70();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 48))(v54, 1, v63);
  v66 = *(v0 + 632);
  if (v65 == 1)
  {
    sub_21D04D27C(*(v0 + 632), &qword_27CE542F8, &qword_21D095E78);
  }

  else
  {
    sub_21D093E50();
    (*(v64 + 8))(v66, v63);
  }

  v164 = v65 == 1;
  v165 = *(v0 + 680);
  v237 = *(v0 + 536);
  v166 = *(v0 + 528);
  v167 = *(v0 + 504);
  LOBYTE(v238[0]) = v164;
  sub_21D093CE0();
  v168 = swift_task_alloc();
  *(v0 + 840) = v168;
  *(v168 + 16) = v165;
  *(v168 + 24) = v167;
  *(v168 + 32) = bufa;
  *(v168 + 40) = formata;
  *(v168 + 48) = v0 + 408;
  *(v168 + 56) = v237;
  *(v168 + 72) = v166;
  *(v168 + 80) = &unk_21D096500;
  *(v168 + 88) = v38;
  v169 = swift_task_alloc();
  *(v0 + 848) = v169;
  *v169 = v0;
  v169[1] = sub_21D06C2F4;
  v170 = *(v0 + 504);

  return sub_21D07BC88(v169, bufa, formata, 0, v62, &unk_21D096510, v168);
}

uint64_t sub_21D06C2F4()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(*v1 + 856) = v0;

  v5 = *(v2 + 840);
  v6 = *(v2 + 808);

  if (v0)
  {
    v7 = sub_21D06C7F8;
  }

  else
  {
    v7 = sub_21D06C444;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21D06C444()
{
  v56 = v0;
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[85];
  v7 = v0[84];
  v8 = v0[83];

  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 51);
  (*(v7 + 8))(v6, v8);
  v9 = v0[96];
  v10 = v0[95];
  v11 = v0[88];
  v12 = v0[63];
  v13 = v0[56];

  v14 = sub_21D0941A0();
  sub_21D0941D0();
  v15 = sub_21D094650();

  if (sub_21D094680())
  {
    v16 = v0[78];
    v17 = v0[77];
    v18 = v0[76];

    sub_21D094200();

    if ((*(v17 + 88))(v16, v18) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v20 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[77] + 8))(v0[78], v0[76]);
      format = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v20 = 2;
      v19 = 1;
    }

    v51 = v0[97];
    v53 = v0[98];
    v26 = v0[95];
    v27 = v0[94];
    v28 = v0[88];
    v49 = v0[86];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v55 = v30;
    *v29 = v20;
    *(v29 + 1) = v19;
    *(v29 + 2) = 2082;
    v31 = sub_21D05550C(v27, v26, &v55);

    *(v29 + 4) = v31;
    v32 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v14, v15, v32, "requestStream", format, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223D3CDF0](v30, -1, -1);
    MEMORY[0x223D3CDF0](v29, -1, -1);

    v51(v28, v49);
  }

  else
  {
    v21 = v0[98];
    v22 = v0[97];
    v23 = v0[95];
    v24 = v0[88];
    v25 = v0[86];

    v22(v24, v25);
  }

  v33 = v0[93];
  v34 = v0[90];
  v35 = v0[89];
  v36 = v0[88];
  v37 = v0[85];
  v44 = v0[82];
  v45 = v0[79];
  v46 = v0[78];
  formata = v0[75];
  v50 = v0[74];
  v52 = v0[73];
  v54 = v0[72];
  v38 = v0[69];
  v39 = v0[65];
  v40 = v0[63];
  v41 = v0[64];
  sub_21D093640();

  sub_21D06D62C(v40, v41, v39, &qword_27CE544C0, &unk_21D0964D8);

  v42 = v0[1];

  return v42();
}

id sub_21D06C7F8()
{
  v153 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 792);

  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 856);
  v6 = *(v0 + 800);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 664);

  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  v10 = *(v0 + 600);
  v11 = *(v0 + 560);
  *(v0 + 456) = v5;
  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 600);
    v14 = *(v0 + 592);
    v15 = *(v0 + 568);
    v16 = *(v0 + 560);
    v17 = *(v0 + 520);

    (*(v15 + 32))(v14, v13, v16);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v18 = swift_allocError();
    (*(v15 + 16))(v19, v14, v16);
    *(v0 + 496) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
    sub_21D094520();
    (*(v15 + 8))(v14, v16);
    v20 = *(v0 + 456);
LABEL_17:

    goto LABEL_18;
  }

  *(v0 + 464) = v5;
  v21 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
  if (swift_dynamicCast())
  {
    v22 = *(v0 + 504);

    sub_21D046D78((v0 + 208), v0 + 248);
    sub_21D0590D0(v0 + 248, v0 + 288);
    sub_21D0590D0(v0 + 248, v0 + 328);
    sub_21D0590D0(v0 + 248, v0 + 368);
    v23 = sub_21D094210();
    v24 = sub_21D094550();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v152 = v26;
      *v25 = 136315650;
      v27 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
      v28 = *(v27 + 8);
      v29 = sub_21D094090();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      v32 = sub_21D05550C(v29, v31, &v152);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2048;
      v33 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
      v34 = sub_21D093520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));
      *(v25 + 14) = v34;
      *(v25 + 22) = 2080;
      v35 = *(v0 + 400);
      __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
      v36 = sub_21D093530();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      v39 = sub_21D05550C(v36, v38, &v152);

      *(v25 + 24) = v39;
      _os_log_impl(&dword_21D044000, v23, v24, "Request failed: %s %ld %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v26, -1, -1);
      MEMORY[0x223D3CDF0](v25, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));

      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
    }

    v66 = *(v0 + 560);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    v67 = swift_allocError();
    v69 = v68;
    v70 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    sub_21D093530();
    v71 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    v72 = *(v71 + 8);
    sub_21D094090();
    v73 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    result = sub_21D093520();
    if (!__OFADD__(result, 10000))
    {
      v151 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21D0959B0;
      v75 = *MEMORY[0x277CCA7E8];
      *(inited + 32) = sub_21D0943F0();
      *(inited + 40) = v76;
      v77 = *(v0 + 272);
      v78 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), v77);
      *(inited + 48) = MEMORY[0x223D3C1D0](v77, *(v78 + 8));
      *(inited + 56) = v79;
      sub_21D0900B0(inited);
      swift_setDeallocating();
      sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
      v80 = *(v0 + 272);
      v81 = *(v0 + 280);
      v82 = __swift_project_boxed_opaque_existential_1((v0 + 248), v80);
      v83 = *(v80 - 8);
      v84 = *(v83 + 64) + 15;
      v85 = swift_task_alloc();
      (*(v83 + 16))(v85, v82, v80);
      v86 = *(*(*(v81 + 8) + 8) + 8);
      if (sub_21D0947A0())
      {
        (*(v83 + 8))(v85, v80);
      }

      else
      {
        swift_allocError();
        (*(v83 + 32))(v93, v85, v80);
      }

      v94 = *(v0 + 568);
      v95 = *(v0 + 560);
      v96 = *(v0 + 520);
      sub_21D093EC0();

      (*(v94 + 104))(v69, *MEMORY[0x277D29DA8], v95);
      *(v0 + 488) = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
      sub_21D094520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      v20 = *(v0 + 464);
      goto LABEL_17;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v40 = sub_21D092F10();
  *(v0 + 472) = v5;
  v41 = v5;
  sub_21D094430();
  v42 = [v40 domain];
  sub_21D0943F0();

  result = [v40 code];
  if (__OFADD__(result, 20000))
  {
    __break(1u);
    goto LABEL_28;
  }

  v44 = *(v0 + 568);
  v146 = *(v0 + 560);
  v150 = *(v0 + 576);
  v138 = *(v0 + 584);
  v142 = *(v0 + 504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_21D0959B0;
  v46 = *MEMORY[0x277CCA7E8];
  *(v45 + 32) = sub_21D0943F0();
  *(v45 + 40) = v47;
  v48 = [v40 description];
  v49 = sub_21D0943F0();
  v51 = v50;

  *(v45 + 48) = v49;
  *(v45 + 56) = v51;
  sub_21D0900B0(v45);
  swift_setDeallocating();
  sub_21D04D27C(v45 + 32, &qword_27CE542C0, &qword_21D095E28);
  v52 = v40;
  sub_21D093EC0();
  v53 = v146;
  (*(v44 + 104))(v138, *MEMORY[0x277D29DA8], v146);
  v147 = *(v44 + 16);
  v147(v150, v138, v53);
  v54 = sub_21D094210();
  v55 = sub_21D094550();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 576);
  v58 = *(v0 + 568);
  v59 = *(v0 + 560);
  if (v56)
  {
    bufa = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v152 = v139;
    *bufa = 136315138;
    sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0]);
    v133 = v55;
    v60 = sub_21D094790();
    v143 = v52;
    v62 = v61;
    v63 = *(v58 + 8);
    v63(v57, v59);
    v64 = v63;
    v65 = sub_21D05550C(v60, v62, &v152);
    v52 = v143;

    *(bufa + 4) = v65;
    _os_log_impl(&dword_21D044000, v54, v133, "Request failed: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v139);
    MEMORY[0x223D3CDF0](v139, -1, -1);
    MEMORY[0x223D3CDF0](bufa, -1, -1);
  }

  else
  {

    v87 = *(v58 + 8);
    v87(v57, v59);
    v64 = v87;
  }

  v88 = *(v0 + 584);
  v89 = *(v0 + 560);
  v90 = *(v0 + 520);
  sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
  v91 = swift_allocError();
  v147(v92, v88, v89);
  *(v0 + 480) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  sub_21D094520();

  v64(v88, v89);
LABEL_18:
  v97 = *(v0 + 768);
  v98 = *(v0 + 760);
  v99 = *(v0 + 704);
  v100 = *(v0 + 504);
  v101 = *(v0 + 448);

  v102 = sub_21D0941A0();
  sub_21D0941D0();
  v103 = sub_21D094650();

  if (sub_21D094680())
  {
    v104 = *(v0 + 624);
    v105 = *(v0 + 616);
    v106 = *(v0 + 608);

    sub_21D094200();

    if ((*(v105 + 88))(v104, v106) == *MEMORY[0x277D85B00])
    {
      v107 = 0;
      v108 = 0;
      buf = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));
      buf = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v108 = 2;
      v107 = 1;
    }

    v144 = *(v0 + 776);
    v148 = *(v0 + 784);
    v114 = *(v0 + 760);
    v115 = *(v0 + 752);
    v116 = *(v0 + 704);
    v140 = *(v0 + 688);
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v152 = v118;
    *v117 = v108;
    *(v117 + 1) = v107;
    *(v117 + 2) = 2082;
    v119 = sub_21D05550C(v115, v114, &v152);

    *(v117 + 4) = v119;
    v120 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v102, v103, v120, "requestStream", buf, v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v118);
    MEMORY[0x223D3CDF0](v118, -1, -1);
    MEMORY[0x223D3CDF0](v117, -1, -1);

    v144(v116, v140);
  }

  else
  {
    v109 = *(v0 + 784);
    v110 = *(v0 + 776);
    v111 = *(v0 + 760);
    v112 = *(v0 + 704);
    v113 = *(v0 + 688);

    v110(v112, v113);
  }

  v121 = *(v0 + 744);
  v122 = *(v0 + 720);
  v123 = *(v0 + 712);
  v124 = *(v0 + 704);
  v125 = *(v0 + 680);
  v131 = *(v0 + 656);
  v132 = *(v0 + 632);
  v134 = *(v0 + 624);
  bufb = *(v0 + 600);
  v141 = *(v0 + 592);
  v145 = *(v0 + 584);
  v149 = *(v0 + 576);
  v126 = *(v0 + 552);
  v127 = *(v0 + 520);
  v128 = *(v0 + 504);
  v129 = *(v0 + 512);
  sub_21D093640();

  sub_21D06D62C(v128, v129, v127, &qword_27CE544C0, &unk_21D0964D8);

  v130 = *(v0 + 8);

  return v130();
}

uint64_t sub_21D06D62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v21 = a4;
  v22 = a5;
  v23 = a3;
  v5 = sub_21D0941C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21D094180();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21D0941A0();
  sub_21D0941D0();
  v16 = sub_21D094650();
  if (sub_21D094680())
  {

    sub_21D094200();

    if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v15, v16, v19, "requestStream", v17, v18, 2u);
    MEMORY[0x223D3CDF0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  return sub_21D094520();
}

uint64_t sub_21D06D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 856) = v74;
  *(v8 + 848) = v73;
  *(v8 + 840) = a8;
  *(v8 + 832) = a7;
  *(v8 + 824) = a6;
  *(v8 + 816) = a5;
  *(v8 + 808) = a4;
  *(v8 + 800) = a3;
  *(v8 + 792) = a2;
  v9 = sub_21D0933E0();
  *(v8 + 864) = v9;
  v10 = *(v9 - 8);
  *(v8 + 872) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 880) = swift_task_alloc();
  v12 = sub_21D0937B0();
  *(v8 + 888) = v12;
  v13 = *(v12 - 8);
  *(v8 + 896) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  v15 = sub_21D093420();
  *(v8 + 920) = v15;
  v16 = *(v15 - 8);
  *(v8 + 928) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430);
  *(v8 + 960) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v8 + 968) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54480, &qword_21D096498) - 8) + 64) + 15;
  *(v8 + 976) = swift_task_alloc();
  v21 = *(*(sub_21D093C30() - 8) + 64) + 15;
  *(v8 + 984) = swift_task_alloc();
  v22 = sub_21D093C50();
  *(v8 + 992) = v22;
  v23 = *(v22 - 8);
  *(v8 + 1000) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  v25 = sub_21D0935E0();
  *(v8 + 1024) = v25;
  v26 = *(v25 - 8);
  *(v8 + 1032) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 1040) = swift_task_alloc();
  v28 = sub_21D093820();
  *(v8 + 1048) = v28;
  v29 = *(v28 - 8);
  *(v8 + 1056) = v29;
  v30 = *(v29 + 64) + 15;
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54478, &qword_21D096490) - 8) + 64) + 15;
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  v32 = sub_21D093570();
  *(v8 + 1104) = v32;
  v33 = *(v32 - 8);
  *(v8 + 1112) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  v35 = sub_21D093840();
  *(v8 + 1136) = v35;
  v36 = *(v35 - 8);
  *(v8 + 1144) = v36;
  v37 = *(v36 + 64) + 15;
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  v38 = sub_21D093630();
  *(v8 + 1168) = v38;
  v39 = *(v38 - 8);
  *(v8 + 1176) = v39;
  v40 = *(v39 + 64) + 15;
  *(v8 + 1184) = swift_task_alloc();
  *(v8 + 1192) = swift_task_alloc();
  *(v8 + 1200) = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54260, &unk_21D095CC0) - 8) + 64) + 15;
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0) - 8) + 64) + 15;
  *(v8 + 1224) = swift_task_alloc();
  *(v8 + 1232) = swift_task_alloc();
  v43 = sub_21D0934B0();
  *(v8 + 1240) = v43;
  v44 = *(v43 - 8);
  *(v8 + 1248) = v44;
  v45 = *(v44 + 64) + 15;
  *(v8 + 1256) = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C8, &qword_21D096530);
  *(v8 + 1264) = v46;
  v47 = *(v46 - 8);
  *(v8 + 1272) = v47;
  v48 = *(v47 + 64) + 15;
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  v49 = sub_21D092FC0();
  *(v8 + 1320) = v49;
  v50 = *(v49 - 8);
  *(v8 + 1328) = v50;
  v51 = *(v50 + 64) + 15;
  *(v8 + 1336) = swift_task_alloc();
  v52 = sub_21D093A80();
  *(v8 + 1344) = v52;
  v53 = *(v52 - 8);
  *(v8 + 1352) = v53;
  v54 = *(v53 + 64) + 15;
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  v55 = sub_21D0941C0();
  *(v8 + 1384) = v55;
  v56 = *(v55 - 8);
  *(v8 + 1392) = v56;
  v57 = *(v56 + 64) + 15;
  *(v8 + 1400) = swift_task_alloc();
  *(v8 + 1408) = swift_task_alloc();
  v58 = sub_21D094180();
  *(v8 + 1416) = v58;
  v59 = *(v58 - 8);
  *(v8 + 1424) = v59;
  v60 = *(v59 + 64) + 15;
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  v61 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0) - 8) + 64) + 15;
  *(v8 + 1472) = swift_task_alloc();
  v62 = sub_21D093460();
  *(v8 + 1480) = v62;
  v63 = *(v62 - 8);
  *(v8 + 1488) = v63;
  v64 = *(v63 + 64) + 15;
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  *(v8 + 1520) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v65 = MEMORY[0x277D41510];
  *(v8 + 1552) = *MEMORY[0x277D41518];
  *(v8 + 1556) = *v65;
  *(v8 + 1560) = *MEMORY[0x277D41500];
  v66 = MEMORY[0x277D85B00];
  *(v8 + 1564) = *MEMORY[0x277D41508];
  *(v8 + 1568) = *v66;
  *(v8 + 1572) = *MEMORY[0x277D414E0];
  v67 = MEMORY[0x277D71B68];
  *(v8 + 1576) = *MEMORY[0x277D71B50];
  *(v8 + 1580) = *v67;
  *(v8 + 1528) = 0;
  v68 = swift_task_alloc();
  *(v8 + 1536) = v68;
  *v68 = v8;
  v68[1] = sub_21D06E280;
  v69 = *(v8 + 1472);
  v70 = *(v8 + 792);

  return sub_21D059134(v69);
}

uint64_t sub_21D06E280()
{
  v2 = *(*v1 + 1536);
  v5 = *v1;
  *(*v1 + 1544) = v0;

  if (v0)
  {
    v3 = sub_21D0712FC;
  }

  else
  {
    v3 = sub_21D06E394;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D06E394()
{
  v590 = v0;
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1496);
  if (v4 == 1)
  {
    v7 = *(v0 + 1528);
    v8 = *(v0 + 1464);
    v9 = *(v0 + 1456);
    v10 = *(v0 + 1448);
    v11 = *(v0 + 1440);
    v12 = *(v0 + 1432);
    v13 = *(v0 + 1408);
    v439 = *(v0 + 1400);
    v441 = *(v0 + 1376);
    v443 = *(v0 + 1368);
    v445 = *(v0 + 1360);
    v447 = *(v0 + 1336);
    v449 = *(v0 + 1312);
    v451 = *(v0 + 1304);
    v453 = *(v0 + 1296);
    v455 = *(v0 + 1288);
    v457 = *(v0 + 1280);
    v459 = *(v0 + 1256);
    v461 = *(v0 + 1232);
    v463 = *(v0 + 1224);
    v465 = *(v0 + 1216);
    v467 = *(v0 + 1208);
    v469 = *(v0 + 1200);
    v471 = *(v0 + 1192);
    v473 = *(v0 + 1184);
    v475 = *(v0 + 1160);
    v477 = *(v0 + 1152);
    v479 = *(v0 + 1128);
    v481 = *(v0 + 1120);
    v483 = *(v0 + 1096);
    v486 = *(v0 + 1088);
    v489 = *(v0 + 1080);
    v492 = *(v0 + 1072);
    v495 = *(v0 + 1064);
    v498 = *(v0 + 1040);
    v501 = *(v0 + 1016);
    v504 = *(v0 + 1008);
    v507 = *(v0 + 984);
    v511 = *(v0 + 976);
    v517 = *(v0 + 968);
    v524 = *(v0 + 952);
    v532 = *(v0 + 944);
    v541 = *(v0 + 936);
    v553 = *(v0 + 912);
    v565 = *(v0 + 904);
    v576 = *(v0 + 880);

    sub_21D04D27C(v3, &qword_27CE54250, &unk_21D095CB0);

    v14 = *(v0 + 8);
LABEL_102:

    return v14();
  }

  v15 = *(v0 + 1552);
  (*(v1 + 32))(*(v0 + 1504), v3, v2);
  (*(v1 + 16))(v6, v5, v2);
  v16 = (*(v1 + 88))(v6, v2);
  if (v16 == v15)
  {
    v17 = *(v0 + 1520);
    v18 = *(v0 + 1496);
    v19 = *(v0 + 1464);
    v20 = *(v0 + 824);
    v21 = *(v0 + 816);
    (*(*(v0 + 1488) + 96))(v18, *(v0 + 1480));
    v566 = *v18;
    v577 = v18[1];
    v22 = *v20;

    v23 = sub_21D0941A0();
    sub_21D0941D0();
    v24 = sub_21D094650();
    if (sub_21D094680())
    {
      v25 = *(v0 + 1568);
      v26 = *(v0 + 1408);
      v27 = *(v0 + 1392);
      v28 = *(v0 + 1384);

      sub_21D094200();

      if ((*(v27 + 88))(v26, v28) == v25)
      {
        v29 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 1392) + 8))(*(v0 + 1408), *(v0 + 1384));
        v29 = "token received";
      }

      v47 = *(v0 + 1464);
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v23, v24, v49, "requestStream", v29, v48, 2u);
      MEMORY[0x223D3CDF0](v48, -1, -1);
    }

    v50 = *(v0 + 1520);
    v51 = *(v0 + 1464);
    v52 = *(v0 + 1456);
    v53 = *(v0 + 1424);
    v54 = *(v0 + 1416);
    v55 = *(v0 + 840);
    v56 = *(v0 + 816);

    v554 = *(v53 + 8);
    v554(v51, v54);
    sub_21D0941A0();
    sub_21D094150();

    v57 = sub_21D0941A0();
    v58 = sub_21D094660();

    if (sub_21D094680())
    {
      v59 = *(v0 + 1456);
      v60 = *(v0 + 840);
      v61 = *(v0 + 832);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v589[0] = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_21D05550C(v61, v60, v589);
      v64 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v57, v58, v64, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x223D3CDF0](v63, -1, -1);
      MEMORY[0x223D3CDF0](v62, -1, -1);
    }

    v65 = *(v0 + 1456);
    v66 = *(v0 + 1416);
    v533 = *(v0 + 1344);
    v542 = *(v0 + 1544);
    v67 = *(v0 + 1336);
    v68 = *(v0 + 1328);
    v69 = *(v0 + 1320);
    v518 = *(v0 + 1376);
    v525 = *(v0 + 848);
    v70 = *(v0 + 824);
    v71 = *(v0 + 808);
    v512 = *(v0 + 800);
    (*(*(v0 + 1424) + 16))(*(v0 + 1448), v65, v66);
    v72 = sub_21D0941F0();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    v75 = sub_21D0941E0();
    v554(v65, v66);
    v76 = *v70;
    *v70 = v75;

    sub_21D092FB0();
    sub_21D092FA0();
    (*(v68 + 8))(v67, v69);
    v77 = sub_21D093B40();
    v78 = MEMORY[0x277D71D70];
    *(v0 + 120) = v77;
    *(v0 + 128) = v78;
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));

    sub_21D093B30();
    sub_21D093A90();
    sub_21D093660();

    sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
    v79 = sub_21D0937D0();
    if (v542)
    {
      v81 = *(v0 + 1528);
      v82 = *(v0 + 1504);
      v83 = *(v0 + 1488);
      v84 = *(v0 + 1480);
      v85 = *(v0 + 1376);
      v86 = *(v0 + 1352);
      v87 = *(v0 + 1344);

      (*(v86 + 8))(v85, v87);
      (*(v83 + 8))(v82, v84);
LABEL_101:
      v420 = *(v0 + 1504);
      v421 = *(v0 + 1496);
      v422 = *(v0 + 1472);
      v423 = *(v0 + 1464);
      v424 = *(v0 + 1456);
      v425 = *(v0 + 1448);
      v426 = *(v0 + 1440);
      v427 = *(v0 + 1432);
      v428 = *(v0 + 1408);
      v429 = *(v0 + 1400);
      v440 = *(v0 + 1376);
      v442 = *(v0 + 1368);
      v444 = *(v0 + 1360);
      v446 = *(v0 + 1336);
      v448 = *(v0 + 1312);
      v450 = *(v0 + 1304);
      v452 = *(v0 + 1296);
      v454 = *(v0 + 1288);
      v456 = *(v0 + 1280);
      v458 = *(v0 + 1256);
      v460 = *(v0 + 1232);
      v462 = *(v0 + 1224);
      v464 = *(v0 + 1216);
      v466 = *(v0 + 1208);
      v468 = *(v0 + 1200);
      v470 = *(v0 + 1192);
      v472 = *(v0 + 1184);
      v474 = *(v0 + 1160);
      v476 = *(v0 + 1152);
      v478 = *(v0 + 1128);
      v480 = *(v0 + 1120);
      v482 = *(v0 + 1096);
      v485 = *(v0 + 1088);
      v488 = *(v0 + 1080);
      v491 = *(v0 + 1072);
      v494 = *(v0 + 1064);
      v497 = *(v0 + 1040);
      v500 = *(v0 + 1016);
      v503 = *(v0 + 1008);
      v506 = *(v0 + 984);
      v509 = *(v0 + 976);
      v515 = *(v0 + 968);
      v522 = *(v0 + 952);
      v530 = *(v0 + 944);
      v539 = *(v0 + 936);
      v551 = *(v0 + 912);
      v563 = *(v0 + 904);
      v574 = *(v0 + 880);

      v14 = *(v0 + 8);
      goto LABEL_102;
    }

    v579 = *(v0 + 1504);
    v88 = *(v0 + 1488);
    v89 = *(v0 + 1480);
    v90 = *(v0 + 1376);
    v91 = *(v0 + 1352);
    v92 = *(v0 + 1344);
    v93 = *(v0 + 1312);
    v94 = *(v0 + 1272);
    v95 = *(v0 + 1264);
    v96 = *(v0 + 856);
    *(v0 + 768) = v79;
    *(v0 + 776) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
    sub_21D094510();
    (*(v94 + 8))(v93, v95);
    (*(v91 + 8))(v90, v92);
    (*(v88 + 8))(v579, v89);
    goto LABEL_20;
  }

  if (v16 == *(v0 + 1556))
  {
    v30 = *(v0 + 1528);
    v31 = *(v0 + 1496);
    v32 = *(v0 + 880);
    v33 = *(v0 + 872);
    v34 = *(v0 + 864);
    (*(*(v0 + 1488) + 96))(v31, *(v0 + 1480));
    (*(v33 + 32))(v32, v31, v34);
    if (!v30)
    {
      if (qword_27CE53E98 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_107;
    }

    v35 = *(v0 + 1528);
    while (1)
    {
      v137 = *(v0 + 1544);
      v138 = *(v0 + 880);

      v139 = sub_21D0525F4(v138);
      if (v137)
      {
        v140 = *(v0 + 1504);
        v141 = *(v0 + 1488);
        v142 = *(v0 + 1480);
        v143 = *(v0 + 880);
        v144 = *(v0 + 872);
        v145 = *(v0 + 864);

        (*(v144 + 8))(v143, v145);
        (*(v141 + 8))(v140, v142);
        goto LABEL_101;
      }

      v146 = v139;
      v543 = v35;
      v568 = *(v139 + 16);
      if (!v568)
      {
        break;
      }

      v147 = 0;
      v148 = v139 + 32;
      v555 = v139;
      while (v147 < *(v146 + 16))
      {
        v149 = *(v0 + 1360);
        v150 = *(v0 + 1344);
        sub_21D0590D0(v148, v0 + 56);
        sub_21D093A90();
        sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
        v151 = sub_21D0937D0();
        v152 = *(v0 + 1360);
        v153 = *(v0 + 1352);
        v154 = *(v0 + 1344);
        v155 = *(v0 + 1280);
        v156 = *(v0 + 1272);
        v157 = *(v0 + 1264);
        v158 = *(v0 + 856);
        ++v147;
        *(v0 + 752) = v151;
        *(v0 + 760) = v159;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
        sub_21D094510();
        (*(v156 + 8))(v155, v157);
        (*(v153 + 8))(v152, v154);
        v148 += 40;
        v146 = v555;
        if (v568 == v147)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_107:
      swift_once();
LABEL_28:
      v121 = qword_27CE540E8;
      v122 = qword_27CE53EA0;

      if (v122 != -1)
      {
        swift_once();
      }

      v123 = qword_27CE540F0;
      v124 = type metadata accessor for MediaProcessor(0);
      v125 = *(v124 + 48);
      v126 = *(v124 + 52);
      v35 = swift_allocObject();
      v127 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
      v128 = qword_281221778;

      if (v128 != -1)
      {
        swift_once();
      }

      v129 = *(v0 + 808);
      v130 = *(v0 + 800);
      v131 = sub_21D094230();
      v132 = __swift_project_value_buffer(v131, qword_2812217C8);
      (*(*(v131 - 8) + 16))(v35 + v127, v132, v131);
      v133 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v134 = MEMORY[0x277D84F90];
      *(v35 + v133) = sub_21D08FE94(MEMORY[0x277D84F90]);
      v135 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
      *(v35 + v135) = sub_21D08FF98(v134);
      v136 = (v35 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
      *v136 = v130;
      v136[1] = v129;
      *(v35 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats) = v121;
      *(v35 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats) = v123;
      *(v35 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) = 1;
    }

LABEL_39:
    v160 = *(v0 + 1504);
    v161 = *(v0 + 1488);
    v162 = *(v0 + 1480);
    v163 = *(v0 + 880);
    v164 = *(v0 + 872);
    v165 = *(v0 + 864);
    v97 = v543;

    (*(v164 + 8))(v163, v165);
    (*(v161 + 8))(v160, v162);
    goto LABEL_21;
  }

  if (v16 != *(v0 + 1560))
  {
    if (v16 != *(v0 + 1564))
    {
      v186 = *(v0 + 1504);
      v557 = *(v0 + 1528);
      v571 = *(v0 + 1496);
      v187 = *(v0 + 1488);
      v188 = *(v0 + 1480);
      v189 = *(v0 + 840);
      v190 = *(v0 + 832);
      v191 = sub_21D093EF0();
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
      swift_allocError();
      v589[0] = 0;
      v193 = v192;
      v589[1] = 0xE000000000000000;
      sub_21D0946E0();
      *(v0 + 688) = 0;
      *(v0 + 696) = 0xE000000000000000;
      MEMORY[0x223D3C530](0xD000000000000027, 0x800000021D097420);
      MEMORY[0x223D3C530](v190, v189);
      MEMORY[0x223D3C530](8250, 0xE200000000000000);
      sub_21D094740();
      v194 = *(v0 + 688);
      v195 = *(v0 + 696);
      swift_beginAccess();

      sub_21D0900B0(MEMORY[0x277D84F90]);
      sub_21D093ED0();
      (*(*(v191 - 8) + 104))(v193, *MEMORY[0x277D29DA8], v191);
      swift_willThrow();

      v196 = *(v187 + 8);
      v196(v186, v188);
      v196(v571, v188);
      goto LABEL_101;
    }

    v102 = *(v0 + 1512);
    v103 = *(v0 + 1496);
    v104 = *(v0 + 952);
    v105 = *(v0 + 944);
    v106 = *(v0 + 928);
    v107 = *(v0 + 920);
    v108 = *(v0 + 816);
    (*(*(v0 + 1488) + 96))(v103, *(v0 + 1480));
    (*(v106 + 32))(v104, v103, v107);
    (*(v106 + 16))(v105, v104, v107);
    v109 = sub_21D094210();
    v110 = sub_21D094560();
    v111 = os_log_type_enabled(v109, v110);
    v112 = *(v0 + 944);
    v113 = *(v0 + 928);
    v114 = *(v0 + 920);
    if (v111)
    {
      v115 = swift_slowAlloc();
      v580 = swift_slowAlloc();
      v589[0] = v580;
      *v115 = 136315138;
      sub_21D091B40(&qword_27CE544B0, MEMORY[0x277D414E8]);
      v116 = sub_21D094790();
      v118 = v117;
      v119 = *(v113 + 8);
      v119(v112, v114);
      v120 = sub_21D05550C(v116, v118, v589);

      *(v115 + 4) = v120;
      _os_log_impl(&dword_21D044000, v109, v110, "requestStream completionReason: %s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v580);
      MEMORY[0x223D3CDF0](v580, -1, -1);
      MEMORY[0x223D3CDF0](v115, -1, -1);
    }

    else
    {

      v119 = *(v113 + 8);
      v119(v112, v114);
    }

    v197 = *(v0 + 1520);
    v198 = *(v0 + 1440);
    v199 = *(v0 + 816);
    v200 = **(v0 + 824);

    v201 = sub_21D0941A0();
    sub_21D0941D0();
    v202 = sub_21D094650();
    if (sub_21D094680())
    {
      v203 = *(v0 + 1568);
      v204 = *(v0 + 1400);
      v205 = *(v0 + 1392);
      v206 = *(v0 + 1384);

      sub_21D094200();

      if ((*(v205 + 88))(v204, v206) == v203)
      {
        v207 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 1392) + 8))(*(v0 + 1400), *(v0 + 1384));
        v207 = "token received";
      }

      v233 = *(v0 + 1440);
      v234 = swift_slowAlloc();
      *v234 = 0;
      v235 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v201, v202, v235, "requestStream", v207, v234, 2u);
      MEMORY[0x223D3CDF0](v234, -1, -1);
    }

    v572 = v119;
    v236 = *(v0 + 1520);
    v237 = *(v0 + 1440);
    v238 = *(v0 + 1432);
    v239 = *(v0 + 1424);
    v240 = *(v0 + 1416);
    v241 = *(v0 + 840);
    v242 = *(v0 + 816);

    v583 = *(v239 + 8);
    v583(v237, v240);
    sub_21D0941A0();
    sub_21D094150();

    v243 = sub_21D0941A0();
    v244 = sub_21D094660();

    if (sub_21D094680())
    {
      v245 = *(v0 + 1432);
      v246 = *(v0 + 840);
      v247 = *(v0 + 832);
      v248 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      v589[0] = v249;
      *v248 = 136446210;
      *(v248 + 4) = sub_21D05550C(v247, v246, v589);
      v250 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v243, v244, v250, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v248, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v249);
      MEMORY[0x223D3CDF0](v249, -1, -1);
      MEMORY[0x223D3CDF0](v248, -1, -1);
    }

    v545 = *(v0 + 1544);
    v499 = *(v0 + 1580);
    v496 = *(v0 + 1576);
    v559 = *(v0 + 1572);
    v251 = *(v0 + 1432);
    v252 = *(v0 + 1416);
    v526 = *(v0 + 1368);
    v534 = *(v0 + 1344);
    v502 = *(v0 + 1336);
    v505 = *(v0 + 1328);
    v513 = *(v0 + 1320);
    v484 = *(v0 + 952);
    v253 = *(v0 + 936);
    v254 = *(v0 + 928);
    v255 = *(v0 + 920);
    v490 = *(v0 + 912);
    v508 = *(v0 + 904);
    v256 = *(v0 + 896);
    v487 = *(v0 + 888);
    v257 = *(v0 + 824);
    v493 = *(v0 + 808);
    v519 = *(v0 + 800);
    (*(*(v0 + 1424) + 16))(*(v0 + 1448), v251, v252);
    v258 = sub_21D0941F0();
    v259 = *(v258 + 48);
    v260 = *(v258 + 52);
    swift_allocObject();
    v261 = sub_21D0941E0();
    v583(v251, v252);
    v262 = *v257;
    *v257 = v261;

    (*(v254 + 104))(v253, v559, v255);
    LOBYTE(v261) = sub_21D093140();
    v572(v253, v255);
    if (v261)
    {
      v263 = v499;
    }

    else
    {
      v263 = v496;
    }

    (*(v256 + 104))(v490, v263, v487);

    sub_21D092FB0();
    sub_21D092FA0();
    (*(v505 + 8))(v502, v513);
    (*(v256 + 16))(v508, v490, v487);
    v264 = sub_21D093B20();
    v265 = MEMORY[0x277D71D68];
    *(v0 + 160) = v264;
    *(v0 + 168) = v265;
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_21D093B10();
    sub_21D093A90();
    sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
    v266 = sub_21D0937D0();
    if (v545)
    {
      v268 = *(v0 + 1528);
      v269 = *(v0 + 1488);
      v535 = *(v0 + 1480);
      v546 = *(v0 + 1504);
      v270 = *(v0 + 1368);
      v271 = *(v0 + 1352);
      v272 = *(v0 + 1344);
      v273 = *(v0 + 952);
      v274 = *(v0 + 920);
      v275 = *(v0 + 912);
      v276 = *(v0 + 896);
      v277 = *(v0 + 888);

      (*(v271 + 8))(v270, v272);
      (*(v276 + 8))(v275, v277);
      v572(v273, v274);
      (*(v269 + 8))(v546, v535);
      goto LABEL_101;
    }

    v584 = *(v0 + 1504);
    v278 = *(v0 + 1488);
    v279 = *(v0 + 1352);
    v280 = *(v0 + 1344);
    v281 = *(v0 + 1288);
    v282 = *(v0 + 1272);
    v283 = *(v0 + 1264);
    v536 = *(v0 + 952);
    v547 = *(v0 + 1480);
    v520 = *(v0 + 1368);
    v527 = *(v0 + 920);
    v514 = *(v0 + 912);
    v284 = *(v0 + 896);
    v285 = *(v0 + 888);
    v286 = *(v0 + 856);
    *(v0 + 736) = v266;
    *(v0 + 744) = v267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
    sub_21D094510();
    (*(v282 + 8))(v281, v283);
    (*(v279 + 8))(v520, v280);
    (*(v284 + 8))(v514, v285);
    v572(v536, v527);
    (*(v278 + 8))(v584, v547);
    goto LABEL_20;
  }

  v36 = *(v0 + 1496);
  v37 = *(v0 + 1256);
  v38 = *(v0 + 1248);
  v39 = *(v0 + 1240);
  v40 = *(v0 + 1232);
  v41 = *(v0 + 1224);
  v42 = *(v0 + 1176);
  v567 = *(v0 + 1216);
  v578 = *(v0 + 1168);
  (*(*(v0 + 1488) + 96))(v36, *(v0 + 1480));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 64);
  (*(v38 + 32))(v37, v36, v39);
  sub_21D05B208(v36 + v44, v40, &qword_27CE54248, &unk_21D095CA0);
  sub_21D05B208(v36 + v45, v567, &qword_27CE54260, &unk_21D095CC0);
  sub_21D05B270(v40, v41, &qword_27CE54248, &unk_21D095CA0);
  if ((*(v42 + 48))(v41, 1, v578) == 1)
  {
    sub_21D04D27C(*(v0 + 1224), &qword_27CE54248, &unk_21D095CA0);
    v46 = *(v0 + 1544);
    goto LABEL_77;
  }

  v166 = *(v0 + 1512);
  v167 = *(v0 + 1200);
  v168 = *(v0 + 1192);
  v169 = *(v0 + 1176);
  v170 = *(v0 + 1168);
  v171 = *(v0 + 840);
  v172 = *(v0 + 816);
  (*(v169 + 32))(v167, *(v0 + 1224), v170);
  v173 = *(v169 + 16);
  v173(v168, v167, v170);

  v174 = sub_21D094210();
  v175 = sub_21D094550();

  v176 = os_log_type_enabled(v174, v175);
  v177 = *(v0 + 1192);
  if (v176)
  {
    v178 = *(v0 + 1184);
    v179 = *(v0 + 1176);
    v180 = *(v0 + 1168);
    v556 = *(v0 + 832);
    v569 = *(v0 + 840);
    v181 = swift_slowAlloc();
    v581 = swift_slowAlloc();
    v589[0] = v581;
    *v181 = 136315394;
    *(v181 + 4) = sub_21D05550C(v556, v569, v589);
    *(v181 + 12) = 2082;
    v173(v178, v177, v180);
    v182 = sub_21D094430();
    v184 = v183;
    v570 = *(v179 + 8);
    v570(v177, v180);
    v185 = sub_21D05550C(v182, v184, v589);

    *(v181 + 14) = v185;
    _os_log_impl(&dword_21D044000, v174, v175, "%s %{public}s", v181, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v581, -1, -1);
    MEMORY[0x223D3CDF0](v181, -1, -1);
  }

  else
  {
    v208 = *(v0 + 1176);
    v209 = *(v0 + 1168);

    v570 = *(v208 + 8);
    v570(v177, v209);
  }

  v210 = *(v0 + 1200);
  v211 = *(v0 + 1112);
  v212 = *(v0 + 1104);
  v213 = *(v0 + 1096);
  sub_21D093610();
  v214 = *(v211 + 48);
  v215 = v214(v213, 1, v212);
  v216 = *(v0 + 1200);
  if (v215 == 1)
  {
    v217 = *(v0 + 1104);
    v218 = *(v0 + 1088);
    sub_21D04D27C(*(v0 + 1096), &qword_27CE54478, &qword_21D096490);
    sub_21D093620();
    if (v214(v218, 1, v217) == 1)
    {
      v219 = *(v0 + 1160);
      v220 = *(v0 + 1072);
      v221 = *(v0 + 1056);
      v222 = *(v0 + 1048);
      sub_21D04D27C(*(v0 + 1088), &qword_27CE54478, &qword_21D096490);
      sub_21D08FD64(MEMORY[0x277D84F90]);
      sub_21D093810();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
      v223 = *(v221 + 72);
      v224 = (*(v221 + 80) + 32) & ~*(v221 + 80);
      v225 = swift_allocObject();
      *(v225 + 16) = xmmword_21D0959B0;
      (*(v221 + 16))(v225 + v224, v220, v222);
      sub_21D093830();
      (*(v221 + 8))(v220, v222);
    }

    else
    {
      v548 = *(v0 + 1200);
      v560 = *(v0 + 1160);
      v287 = *(v0 + 1120);
      v288 = *(v0 + 1112);
      v585 = *(v0 + 1104);
      v289 = *(v0 + 1064);
      v290 = *(v0 + 1056);
      v291 = *(v0 + 1048);
      (*(v288 + 32))(v287, *(v0 + 1088));
      sub_21D093550();
      sub_21D093560();
      sub_21D08FD64(MEMORY[0x277D84F90]);
      sub_21D093810();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
      v292 = *(v290 + 72);
      v293 = (*(v290 + 80) + 32) & ~*(v290 + 80);
      v294 = swift_allocObject();
      *(v294 + 16) = xmmword_21D0959B0;
      (*(v290 + 16))(v294 + v293, v289, v291);
      sub_21D093600();
      sub_21D093830();
      (*(v290 + 8))(v289, v291);
      (*(v288 + 8))(v287, v585);
    }
  }

  else
  {
    v226 = *(v0 + 1128);
    v227 = *(v0 + 1112);
    v582 = *(v0 + 1104);
    v228 = *(v0 + 1080);
    v229 = *(v0 + 1056);
    v544 = *(v0 + 1048);
    v558 = *(v0 + 1160);
    (*(v227 + 32))(v226, *(v0 + 1096));
    sub_21D093550();
    sub_21D093560();
    sub_21D08FD64(MEMORY[0x277D84F90]);
    sub_21D093810();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
    v230 = *(v229 + 72);
    v231 = (*(v229 + 80) + 32) & ~*(v229 + 80);
    v232 = swift_allocObject();
    *(v232 + 16) = xmmword_21D0959B0;
    (*(v229 + 16))(v232 + v231, v228, v544);
    sub_21D093600();
    sub_21D093830();
    (*(v229 + 8))(v228, v544);
    (*(v227 + 8))(v226, v582);
  }

  v295 = *(v0 + 1344);
  v296 = *(v0 + 808);
  v297 = *(v0 + 800);
  (*(*(v0 + 1144) + 16))(*(v0 + 1152), *(v0 + 1160), *(v0 + 1136));
  *(v0 + 600) = sub_21D093B00();
  *(v0 + 608) = MEMORY[0x277D71D60];
  __swift_allocate_boxed_opaque_existential_1((v0 + 576));

  sub_21D093AF0();
  *(v0 + 560) = v295;
  *(v0 + 568) = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
  __swift_allocate_boxed_opaque_existential_1((v0 + 536));
  sub_21D093A90();
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v298 = *(v0 + 1512);
  v299 = *(v0 + 840);
  v300 = *(v0 + 816);
  v301 = v0 + 536;
  if (byte_281221490 != 1)
  {
    sub_21D0590D0(v301, v0 + 16);

    v302 = sub_21D094210();
    v303 = sub_21D094560();

    if (os_log_type_enabled(v302, v303))
    {
      v313 = *(v0 + 840);
      v314 = *(v0 + 832);
      v306 = swift_slowAlloc();
      v307 = swift_slowAlloc();
      v589[0] = v307;
      *v306 = 136315395;
      *(v306 + 4) = sub_21D05550C(v314, v313, v589);
      *(v306 + 12) = 2081;
      sub_21D0590D0(v0 + 16, v0 + 376);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
      v315 = sub_21D094430();
      v317 = v316;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v318 = sub_21D05550C(v315, v317, v589);

      *(v306 + 14) = v318;
      v312 = "%s Emitting TG event: %{private}s";
      goto LABEL_70;
    }

    v319 = (v0 + 16);
LABEL_73:
    __swift_destroy_boxed_opaque_existential_0(v319);
    goto LABEL_74;
  }

  sub_21D0590D0(v301, v0 + 216);

  v302 = sub_21D094210();
  v303 = sub_21D094560();

  if (!os_log_type_enabled(v302, v303))
  {

    v319 = (v0 + 216);
    goto LABEL_73;
  }

  v304 = *(v0 + 840);
  v305 = *(v0 + 832);
  v306 = swift_slowAlloc();
  v307 = swift_slowAlloc();
  v589[0] = v307;
  *v306 = 136315394;
  *(v306 + 4) = sub_21D05550C(v305, v304, v589);
  *(v306 + 12) = 2082;
  sub_21D0590D0(v0 + 216, v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
  v308 = sub_21D094430();
  v310 = v309;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v311 = sub_21D05550C(v308, v310, v589);

  *(v306 + 14) = v311;
  v312 = "%s Emitting TG event: %{public}s";
LABEL_70:
  _os_log_impl(&dword_21D044000, v302, v303, v312, v306, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D3CDF0](v307, -1, -1);
  MEMORY[0x223D3CDF0](v306, -1, -1);

LABEL_74:
  v320 = *(v0 + 1544);
  v321 = *(v0 + 1344);
  v322 = sub_21D0937D0();
  if (v320)
  {
    v324 = *(v0 + 1528);
    v325 = *(v0 + 1488);
    v549 = *(v0 + 1480);
    v561 = *(v0 + 1504);
    v326 = *(v0 + 1248);
    v528 = *(v0 + 1240);
    v537 = *(v0 + 1256);
    v521 = *(v0 + 1232);
    v327 = *(v0 + 1216);
    v328 = *(v0 + 1200);
    v329 = *(v0 + 1168);
    v330 = *(v0 + 1160);
    v331 = *(v0 + 1144);
    v332 = *(v0 + 1176) + 8;
    v333 = *(v0 + 1136);

    (*(v331 + 8))(v330, v333);
    v570(v328, v329);
    sub_21D04D27C(v327, &qword_27CE54260, &unk_21D095CC0);
    sub_21D04D27C(v521, &qword_27CE54248, &unk_21D095CA0);
    (*(v326 + 8))(v537, v528);
    (*(v325 + 8))(v561, v549);
    v334 = (v0 + 536);
    goto LABEL_100;
  }

  v335 = *(v0 + 1304);
  v336 = *(v0 + 1272);
  v337 = *(v0 + 1264);
  v586 = *(v0 + 1200);
  v338 = *(v0 + 1168);
  v339 = *(v0 + 1160);
  v340 = *(v0 + 1144);
  v341 = *(v0 + 1136);
  v342 = *(v0 + 856);
  v343 = *(v0 + 1176) + 8;
  *(v0 + 704) = v322;
  *(v0 + 712) = v323;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  sub_21D094510();
  (*(v336 + 8))(v335, v337);
  (*(v340 + 8))(v339, v341);
  v570(v586, v338);
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  v46 = 0;
LABEL_77:
  v344 = *(v0 + 1208);
  v345 = *(v0 + 1032);
  v346 = *(v0 + 1024);
  sub_21D05B270(*(v0 + 1216), v344, &qword_27CE54260, &unk_21D095CC0);
  if ((*(v345 + 48))(v344, 1, v346) != 1)
  {
    v355 = *(v0 + 976);
    (*(*(v0 + 1032) + 32))(*(v0 + 1040), *(v0 + 1208), *(v0 + 1024));
    sub_21D0935B0();
    v356 = sub_21D0935A0();
    v357 = *(v356 - 8);
    v358 = (*(v357 + 48))(v355, 1, v356);
    v359 = *(v0 + 976);
    v587 = v46;
    if (v358 == 1)
    {
      sub_21D04D27C(v359, &qword_27CE54480, &qword_21D096498);
    }

    else
    {
      sub_21D093590();
      (*(v357 + 8))(v359, v356);
    }

    v360 = *(v0 + 1256);
    v361 = *(v0 + 1040);
    v362 = *(v0 + 984);
    v363 = *(v0 + 968);
    v364 = *(v0 + 960);
    sub_21D093C20();
    sub_21D0935C0();
    sub_21D093580();
    sub_21D0932D0();
    sub_21D094430();
    v365 = sub_21D0935D0();
    v366 = *(v365 + 16);
    if (v366)
    {
      v367 = (v0 + 784);
      *(v0 + 784) = MEMORY[0x277D84F90];
      v368 = v365;
      sub_21D08FAFC(0, v366, 0);
      v369 = v368;
      v370 = *(v0 + 784);
      v371 = *(v370 + 16);
      v372 = 32;
      do
      {
        v373 = *(v369 + v372);
        *v367 = v370;
        v374 = *(v370 + 24);
        if (v371 >= v374 >> 1)
        {
          sub_21D08FAFC((v374 > 1), v371 + 1, 1);
          v369 = v368;
          v370 = *v367;
        }

        *(v370 + 16) = v371 + 1;
        *(v370 + 8 * v371 + 32) = v373;
        v372 += 4;
        ++v371;
        --v366;
      }

      while (v366);
    }

    v375 = *(v0 + 1344);
    v376 = *(v0 + 1016);
    v377 = *(v0 + 1008);
    v378 = *(v0 + 1000);
    v379 = *(v0 + 992);
    v380 = *(v0 + 984);
    v381 = *(v0 + 808);
    v382 = *(v0 + 800);
    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093C40();
    (*(v378 + 16))(v377, v376, v379);
    v383 = sub_21D093710();
    v384 = MEMORY[0x277D719C8];
    *(v0 + 320) = v383;
    *(v0 + 328) = v384;
    __swift_allocate_boxed_opaque_existential_1((v0 + 296));

    sub_21D093700();
    *(v0 + 280) = v375;
    *(v0 + 288) = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38]);
    __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    sub_21D093A90();
    if (qword_281221488 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v385 = *(v0 + 1512);
    v386 = *(v0 + 840);
    v387 = *(v0 + 816);
    v388 = v0 + 256;
    if (byte_281221490)
    {
      sub_21D0590D0(v388, v0 + 456);

      v389 = sub_21D094210();
      v390 = sub_21D094560();

      if (os_log_type_enabled(v389, v390))
      {
        v391 = *(v0 + 840);
        v392 = *(v0 + 832);
        v393 = swift_slowAlloc();
        v394 = swift_slowAlloc();
        v589[0] = v394;
        *v393 = 136315394;
        *(v393 + 4) = sub_21D05550C(v392, v391, v589);
        *(v393 + 12) = 2082;
        sub_21D0590D0(v0 + 456, v0 + 496);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v395 = sub_21D094430();
        v397 = v396;
        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        v398 = sub_21D05550C(v395, v397, v589);

        *(v393 + 14) = v398;
        v399 = "%s Emitting TG event: %{public}s";
LABEL_94:
        _os_log_impl(&dword_21D044000, v389, v390, v399, v393, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v394, -1, -1);
        MEMORY[0x223D3CDF0](v393, -1, -1);

LABEL_98:
        v407 = *(v0 + 1344);
        v408 = sub_21D0937D0();
        if (!v587)
        {
          v430 = *(v0 + 1488);
          v575 = *(v0 + 1480);
          v588 = *(v0 + 1504);
          v431 = *(v0 + 1296);
          v432 = *(v0 + 1272);
          v433 = *(v0 + 1248);
          v552 = *(v0 + 1240);
          v564 = *(v0 + 1256);
          v531 = *(v0 + 1216);
          v540 = *(v0 + 1232);
          v523 = *(v0 + 1040);
          v434 = *(v0 + 1032);
          v510 = *(v0 + 1264);
          v516 = *(v0 + 1024);
          v435 = *(v0 + 1016);
          v436 = *(v0 + 1000);
          v437 = *(v0 + 992);
          v438 = *(v0 + 856);
          *(v0 + 720) = v408;
          *(v0 + 728) = v409;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
          sub_21D094510();
          (*(v432 + 8))(v431, v510);
          (*(v436 + 8))(v435, v437);
          (*(v434 + 8))(v523, v516);
          sub_21D04D27C(v531, &qword_27CE54260, &unk_21D095CC0);
          sub_21D04D27C(v540, &qword_27CE54248, &unk_21D095CA0);
          (*(v433 + 8))(v564, v552);
          (*(v430 + 8))(v588, v575);
          __swift_destroy_boxed_opaque_existential_0((v0 + 256));
          goto LABEL_20;
        }

        v410 = *(v0 + 1528);
        v411 = *(v0 + 1488);
        v562 = *(v0 + 1480);
        v573 = *(v0 + 1504);
        v412 = *(v0 + 1248);
        v538 = *(v0 + 1240);
        v550 = *(v0 + 1256);
        v529 = *(v0 + 1232);
        v413 = *(v0 + 1216);
        v414 = *(v0 + 1040);
        v415 = *(v0 + 1032);
        v416 = *(v0 + 1024);
        v417 = *(v0 + 1016);
        v418 = *(v0 + 1000);
        v419 = *(v0 + 992);

        (*(v418 + 8))(v417, v419);
        (*(v415 + 8))(v414, v416);
        sub_21D04D27C(v413, &qword_27CE54260, &unk_21D095CC0);
        sub_21D04D27C(v529, &qword_27CE54248, &unk_21D095CA0);
        (*(v412 + 8))(v550, v538);
        (*(v411 + 8))(v573, v562);
        v334 = (v0 + 256);
LABEL_100:
        __swift_destroy_boxed_opaque_existential_0(v334);
        goto LABEL_101;
      }

      v406 = (v0 + 456);
    }

    else
    {
      sub_21D0590D0(v388, v0 + 336);

      v389 = sub_21D094210();
      v390 = sub_21D094560();

      if (os_log_type_enabled(v389, v390))
      {
        v400 = *(v0 + 840);
        v401 = *(v0 + 832);
        v393 = swift_slowAlloc();
        v394 = swift_slowAlloc();
        v589[0] = v394;
        *v393 = 136315395;
        *(v393 + 4) = sub_21D05550C(v401, v400, v589);
        *(v393 + 12) = 2081;
        sub_21D0590D0(v0 + 336, v0 + 416);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v402 = sub_21D094430();
        v404 = v403;
        __swift_destroy_boxed_opaque_existential_0((v0 + 336));
        v405 = sub_21D05550C(v402, v404, v589);

        *(v393 + 14) = v405;
        v399 = "%s Emitting TG event: %{private}s";
        goto LABEL_94;
      }

      v406 = (v0 + 336);
    }

    __swift_destroy_boxed_opaque_existential_0(v406);
    goto LABEL_98;
  }

  v347 = *(v0 + 1504);
  v348 = *(v0 + 1488);
  v349 = *(v0 + 1480);
  v350 = *(v0 + 1256);
  v351 = *(v0 + 1248);
  v352 = *(v0 + 1240);
  v353 = *(v0 + 1232);
  v354 = *(v0 + 1208);
  sub_21D04D27C(*(v0 + 1216), &qword_27CE54260, &unk_21D095CC0);
  sub_21D04D27C(v353, &qword_27CE54248, &unk_21D095CA0);
  (*(v351 + 8))(v350, v352);
  (*(v348 + 8))(v347, v349);
  sub_21D04D27C(v354, &qword_27CE54260, &unk_21D095CC0);
LABEL_20:
  v97 = *(v0 + 1528);
LABEL_21:
  *(v0 + 1528) = v97;
  v98 = swift_task_alloc();
  *(v0 + 1536) = v98;
  *v98 = v0;
  v98[1] = sub_21D06E280;
  v99 = *(v0 + 1472);
  v100 = *(v0 + 792);

  return sub_21D059134(v99);
}

uint64_t sub_21D0712FC()
{
  v1 = v0[191];

  v52 = v0[193];
  v2 = v0[188];
  v3 = v0[187];
  v4 = v0[184];
  v5 = v0[183];
  v6 = v0[182];
  v7 = v0[181];
  v8 = v0[180];
  v9 = v0[179];
  v10 = v0[176];
  v11 = v0[175];
  v14 = v0[172];
  v15 = v0[171];
  v16 = v0[170];
  v17 = v0[167];
  v18 = v0[164];
  v19 = v0[163];
  v20 = v0[162];
  v21 = v0[161];
  v22 = v0[160];
  v23 = v0[157];
  v24 = v0[154];
  v25 = v0[153];
  v26 = v0[152];
  v27 = v0[151];
  v28 = v0[150];
  v29 = v0[149];
  v30 = v0[148];
  v31 = v0[145];
  v32 = v0[144];
  v33 = v0[141];
  v34 = v0[140];
  v35 = v0[137];
  v36 = v0[136];
  v37 = v0[135];
  v38 = v0[134];
  v39 = v0[133];
  v40 = v0[130];
  v41 = v0[127];
  v42 = v0[126];
  v43 = v0[123];
  v44 = v0[122];
  v45 = v0[121];
  v46 = v0[119];
  v47 = v0[118];
  v48 = v0[117];
  v49 = v0[114];
  v50 = v0[113];
  v51 = v0[110];

  v12 = v0[1];

  return v12();
}

uint64_t NewInferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_21D093EE0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_21D093EB0();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D071740, 0, 0);
}

{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_21D093EE0();
  v4[48] = v5;
  v6 = *(v5 - 8);
  v4[49] = v6;
  v7 = *(v6 + 64) + 15;
  v4[50] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78) - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v9 = sub_21D0930A0();
  v4[52] = v9;
  v10 = *(v9 - 8);
  v4[53] = v10;
  v11 = *(v10 + 64) + 15;
  v4[54] = swift_task_alloc();
  v12 = sub_21D0930C0();
  v4[55] = v12;
  v13 = *(v12 - 8);
  v4[56] = v13;
  v14 = *(v13 + 64) + 15;
  v4[57] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54300, &qword_21D095E80);
  v4[58] = v15;
  v16 = *(v15 - 8);
  v4[59] = v16;
  v17 = *(v16 + 64) + 15;
  v4[60] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54308, &qword_21D095E88);
  v4[61] = v18;
  v19 = *(v18 - 8);
  v4[62] = v19;
  v20 = *(v19 + 64) + 15;
  v4[63] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54310, &qword_21D095E90) - 8) + 64) + 15;
  v4[64] = swift_task_alloc();
  v22 = sub_21D0930E0();
  v4[65] = v22;
  v23 = *(v22 - 8);
  v4[66] = v23;
  v24 = *(v23 + 64) + 15;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v25 = sub_21D093A70();
  v4[69] = v25;
  v26 = *(v25 - 8);
  v4[70] = v26;
  v27 = *(v26 + 64) + 15;
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v28 = sub_21D094330();
  v4[77] = v28;
  v29 = *(v28 - 8);
  v4[78] = v29;
  v30 = *(v29 + 64) + 15;
  v4[79] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54318, &qword_21D095E98) - 8) + 64) + 15;
  v4[80] = swift_task_alloc();
  v32 = sub_21D094360();
  v4[81] = v32;
  v33 = *(v32 - 8);
  v4[82] = v33;
  v34 = *(v33 + 64) + 15;
  v4[83] = swift_task_alloc();
  v35 = sub_21D093800();
  v4[84] = v35;
  v36 = *(v35 - 8);
  v4[85] = v36;
  v37 = *(v36 + 64) + 15;
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v38 = sub_21D094070();
  v4[89] = v38;
  v39 = *(v38 - 8);
  v4[90] = v39;
  v40 = *(v39 + 64) + 15;
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v41 = sub_21D094230();
  v4[94] = v41;
  v42 = *(v41 - 8);
  v4[95] = v42;
  v43 = *(v42 + 64) + 15;
  v4[96] = swift_task_alloc();
  v44 = sub_21D094180();
  v4[97] = v44;
  v45 = *(v44 - 8);
  v4[98] = v45;
  v46 = *(v45 + 64) + 15;
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v47 = sub_21D092FC0();
  v4[101] = v47;
  v48 = *(v47 - 8);
  v4[102] = v48;
  v49 = *(v48 + 64) + 15;
  v4[103] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D072320, 0, 0);
}

uint64_t sub_21D071740()
{
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  sub_21D055C20(v3, v2);
  MEMORY[0x223D3BF70](v3, v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_21D071804;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[4];
  v8 = v0[5];

  return NewInferenceProvider.requestOneShot(clientData:configuration:)(v5, v6, v7);
}

uint64_t sub_21D071804()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v10 = *v1;
  v2[14] = v0;

  v7 = *(v5 + 8);
  v2[15] = v7;
  v2[16] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  if (v0)
  {
    v8 = sub_21D071BEC;
  }

  else
  {
    v8 = sub_21D071988;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21D071988()
{
  v1 = v0[12];
  v2 = sub_21D093E90();
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  if (v3 >> 60 == 15)
  {
    v7 = v0[8];
    v23 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093ED0();
    v10 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    swift_allocError();
    v12 = v11;
    (*(v8 + 16))(v11, v7, v9);
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D29DA8], v10);
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    v5(v6, v23);
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[11];
    v19 = v0[8];
    v20 = v2;
    v21 = v3;
    v5(v0[12], v0[9]);

    v22 = v0[1];

    return v22(v20, v21);
  }
}

uint64_t sub_21D071BEC()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21D072320()
{
  v408 = v0;
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[46];
  v6 = v0[47];
  sub_21D094010();
  v7 = sub_21D092FA0();
  v9 = v8;
  v0[104] = v8;
  v369 = *(v2 + 8);
  v369(v1, v3);
  sub_21D0941A0();
  sub_21D094150();

  v10 = sub_21D0941A0();
  v11 = sub_21D094660();

  v393 = v9;
  v365 = v7;
  if (sub_21D094680())
  {
    v12 = v0[100];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v407[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_21D05550C(v7, v9, v407);
    v15 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v10, v11, v15, "requestOneShot", "full request requestIdentifier=%{public, signpost.description=attribute,public}s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D3CDF0](v14, -1, -1);
    MEMORY[0x223D3CDF0](v13, -1, -1);
  }

  v16 = v0[100];
  v17 = v0[99];
  v18 = v0[98];
  v403 = v0;
  v19 = v0[97];
  v20 = v0[96];
  v21 = v0[95];
  v383 = v403[94];
  v22 = v403[93];
  v396 = v403[92];
  v23 = v403[90];
  v387 = v403[89];
  v24 = v403[47];
  v25 = v403[46];
  (*(v18 + 16))(v17, v16, v19);
  v26 = sub_21D0941F0();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v380 = sub_21D0941E0();
  v403[105] = v380;
  v29 = v19;
  v30 = v403;
  (*(v18 + 8))(v16, v29);
  v31 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v21 + 16))(v20, v24 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v383);
  v32 = *(v23 + 16);
  v32(v22, v25, v387);
  v33 = sub_21D093670();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v360 = v33;
  swift_allocObject();
  v384 = sub_21D093650();
  v403[106] = v384;
  v355 = v32;
  v32(v396, v25, v387);
  v397 = v24;
  v36 = sub_21D094210();
  v37 = sub_21D094580();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v403[103];
    v349 = v31;
    v39 = v403[101];
    v40 = v403[92];
    v41 = v403[90];
    v342 = v403[89];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v407[0] = v43;
    *v42 = 136315138;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0]);
    v44 = sub_21D094790();
    v46 = v45;
    v47 = v39;
    v31 = v349;
    v369(v38, v47);
    v48 = *(v41 + 8);
    v48(v40, v342);
    v49 = sub_21D05550C(v44, v46, v407);
    v30 = v403;

    *(v42 + 4) = v49;
    _os_log_impl(&dword_21D044000, v36, v37, "%s executing one shot request", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x223D3CDF0](v43, -1, -1);
    MEMORY[0x223D3CDF0](v42, -1, -1);
  }

  else
  {
    v50 = v403[92];
    v51 = v403[90];
    v52 = v403[89];

    v48 = *(v51 + 8);
    v48(v50, v52);
  }

  v53 = v30[45];
  v54 = sub_21D093E90();
  v30[107] = v54;
  v30[108] = v55;
  if (v55 >> 60 == 15)
  {

    v56 = sub_21D094210();
    v57 = sub_21D094570();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_21D044000, v56, v57, "No data present in client request", v58, 2u);
      MEMORY[0x223D3CDF0](v58, -1, -1);
    }

    v59 = v30[49];
    v60 = v30[50];
    v61 = v30[48];

    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093ED0();
    v62 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    swift_allocError();
    v64 = v63;
    (*(v59 + 16))(v63, v60, v61);
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D29DB0], v62);
    swift_willThrow();

    (*(v59 + 8))(v60, v61);
    goto LABEL_11;
  }

  v65 = v54;
  v66 = v55;
  v67 = v30[87];
  v68 = v30[84];
  sub_21D091B40(&qword_281221798, MEMORY[0x277D71BC0]);
  sub_21D0937C0();
  v82 = v30[82];
  v83 = v30[81];
  v84 = v30[80];
  v85 = v30[45];
  sub_21D093E80();
  v86 = (*(v82 + 48))(v84, 1, v83);
  if (v86 == 1)
  {
    sub_21D04D27C(v30[80], &qword_27CE54318, &qword_21D095E98);
  }

  else
  {
    (*(v30[82] + 32))(v30[83], v30[80], v30[81]);
    sub_21D094350();
    v87 = MEMORY[0x223D3CEB0]();
    if (v87 == sub_21D094320())
    {
      v88 = v30[87];
      v344 = v66;
      v351 = v30[83];
      v89 = v30[82];
      v334 = v30[81];
      v90 = v30[79];
      v91 = v403[78];
      v92 = v31;
      v93 = v65;
      v94 = v403[77];
      swift_unknownObjectRetain();
      sub_21D094340();
      sub_21D0937F0();
      swift_unknownObjectRelease();
      v95 = v90;
      v66 = v344;
      v96 = v94;
      v65 = v93;
      v31 = v92;
      (*(v91 + 8))(v95, v96);
      v30 = v403;
      (*(v89 + 8))(v351, v334);
    }

    else
    {
      (*(v30[82] + 8))(v30[83], v30[81]);
      swift_unknownObjectRelease();
    }
  }

  v97 = v30[88];
  v98 = v30[86];
  v99 = v30[85];
  v100 = v30[84];
  (*(v99 + 32))(v97, v30[87], v100);
  (*(v99 + 16))(v98, v97, v100);
  v101 = (*(v99 + 88))(v98, v100);
  v102 = v30[86];
  v103 = v30[84];
  v104 = v30[85] + 8;
  if (v101 == *MEMORY[0x277D71B98])
  {

    v105 = *v104;
    (*v104)(v102, v103);
    sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
    v106 = sub_21D094600();
    if ((v107 & 1) == 0)
    {
      v125 = v106;
      v126 = sub_21D094210();
      v127 = sub_21D094560();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 134217984;
        *(v128 + 4) = v125;
        _os_log_impl(&dword_21D044000, v126, v127, "UserDefault overrideContextLength is set. Forcing context length to be %ld", v128, 0xCu);
        MEMORY[0x223D3CDF0](v128, -1, -1);
      }

      v129 = v30[76];
      v130 = v30[69];

      sub_21D093A60();
      sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20]);
      v131 = sub_21D0937D0();
      v132 = v30[88];
      v133 = v30[76];
      v134 = v30[70];
      v135 = v30[69];
      v346 = v66;
      v191 = v30[44];
      v192 = v30[84];
      v193 = v65;
      v194 = v131;
      v391 = v105;
      v196 = v195;
      sub_21D055C20(v131, v195);
      MEMORY[0x223D3BF70](v194, v196);
      sub_21D058258(v193, v346);

      sub_21D04FE3C(v194, v196);

      (*(v134 + 8))(v133, v135);
      v391(v132, v192);
      goto LABEL_47;
    }

    v389 = v105;
    v108 = sub_21D0945E0();
    if ((v109 & 1) == 0)
    {
      v153 = v108;
      v154 = sub_21D094210();
      v155 = sub_21D094560();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 134217984;
        *(v156 + 4) = v153;
        _os_log_impl(&dword_21D044000, v154, v155, "Setting context length from user default contextLengthDefault=%ld", v156, 0xCu);
        MEMORY[0x223D3CDF0](v156, -1, -1);
      }
    }

    v157 = v30[46];
    v158 = v30;
    v159 = sub_21D094060();
    v161 = v160;
    v162 = sub_21D093040();
    v163 = *(v162 + 48);
    v164 = *(v162 + 52);
    swift_allocObject();
    sub_21D093030();
    sub_21D093010();
    v340 = v65;

    if (v158[23])
    {
      v197 = v158[66];
      v198 = v158[65];
      v199 = v158[64];

      sub_21D046D78(v158 + 10, (v158 + 15));
      sub_21D0590D0((v158 + 15), (v158 + 25));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54330, &qword_21D095ED8);
      v200 = swift_dynamicCast();
      v201 = *(v197 + 56);
      v30 = v158;
      if (v200)
      {
        v347 = v66;
        v202 = v158[68];
        v203 = v158[66];
        v204 = v30[65];
        v206 = v30[63];
        v205 = v30[64];
        v207 = v30[61];
        v208 = v30[62];
        v201(v205, 0, 1, v204);
        (*(v203 + 32))(v202, v205, v204);
        sub_21D0930D0();
        sub_21D093080();
        v209 = *(v208 + 8);
        v209(v206, v207);
        if (v30[38])
        {
          v210 = v30[60];
          sub_21D046D78((v30 + 35), (v30 + 30));
          v211 = v30[34];
          __swift_project_boxed_opaque_existential_1(v30 + 30, v30[33]);
          v212 = *(v211 + 8);
          sub_21D093070();
          v267 = sub_21D094210();
          v268 = sub_21D094560();
          if (os_log_type_enabled(v267, v268))
          {
            v269 = swift_slowAlloc();
            *v269 = 0;
            _os_log_impl(&dword_21D044000, v267, v268, "Successfully fetched asset server configuration", v269, 2u);
            MEMORY[0x223D3CDF0](v269, -1, -1);
          }

          v270 = v403[60];
          v272 = v403[57];
          v271 = v403[58];

          sub_21D093000();
          v363 = v209;
          v284 = sub_21D094210();
          v285 = sub_21D094560();
          if (os_log_type_enabled(v284, v285))
          {
            v286 = swift_slowAlloc();
            *v286 = 0;
            _os_log_impl(&dword_21D044000, v284, v285, "Successfully got serverAsset metadata", v286, 2u);
            MEMORY[0x223D3CDF0](v286, -1, -1);
          }

          v287 = v403[68];
          v288 = v403[67];
          v289 = v403[66];
          v373 = v403[65];
          v290 = v403[57];
          v291 = v403[53];
          v292 = v403[54];
          v293 = v403[52];

          v294 = sub_21D0930B0();
          v295 = MEMORY[0x223D3B160](v294);
          (*(v291 + 8))(v292, v293);
          (*(v289 + 16))(v288, v287, v373);
          v296 = sub_21D094210();
          v297 = sub_21D094560();
          v298 = os_log_type_enabled(v296, v297);
          v299 = v403[67];
          v300 = v403[66];
          v301 = v403[65];
          if (v298)
          {
            v302 = v403[63];
            v303 = v403[61];
            v336 = v403[65];
            v304 = swift_slowAlloc();
            v407[0] = swift_slowAlloc();
            v374 = v295;
            v305 = v407[0];
            *v304 = 136315394;
            v358 = v297;
            sub_21D0930D0();
            sub_21D090A4C(&qword_27CE54340, &qword_27CE54308, &qword_21D095E88);
            v306 = sub_21D094790();
            v308 = v307;
            v363(v302, v303);
            v309 = *(v300 + 8);
            v309(v299, v336);
            v310 = sub_21D05550C(v306, v308, v407);

            *(v304 + 4) = v310;
            *(v304 + 12) = 2048;
            *(v304 + 14) = v374;
            _os_log_impl(&dword_21D044000, v296, v358, "Resource bundle %s has context length:%ld.", v304, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v305);
            MEMORY[0x223D3CDF0](v305, -1, -1);
            MEMORY[0x223D3CDF0](v304, -1, -1);
          }

          else
          {

            v309 = *(v300 + 8);
            v309(v299, v301);
          }

          v311 = v403[75];
          v312 = v403[69];
          sub_21D093A60();
          sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20]);
          v313 = sub_21D0937D0();
          v402 = v403[88];
          v337 = v403[75];
          v314 = v403[70];
          v315 = v403[69];
          v375 = v403[68];
          v379 = v403[84];
          v364 = v403[66];
          v368 = v403[65];
          v316 = v309;
          v317 = v403[59];
          v354 = v403[58];
          v359 = v403[60];
          v318 = v403[57];
          v319 = v403[56];
          v320 = v403[55];
          v321 = v403[44];
          v322 = v313;
          v324 = v323;
          sub_21D055C20(v313, v323);
          MEMORY[0x223D3BF70](v322, v324);
          sub_21D058258(v340, v347);

          sub_21D04FE3C(v322, v324);

          (*(v314 + 8))(v337, v315);
          v325 = v318;
          v30 = v403;
          (*(v319 + 8))(v325, v320);
          (*(v317 + 8))(v359, v354);
          v316(v375, v368);
          __swift_destroy_boxed_opaque_existential_0(v403 + 15);
          v389(v402, v379);
          __swift_destroy_boxed_opaque_existential_0(v403 + 30);
          goto LABEL_47;
        }

        sub_21D04D27C((v30 + 35), &qword_27CE54338, &qword_21D095EE0);
        v251 = sub_21D094210();
        v252 = sub_21D094560();
        if (os_log_type_enabled(v251, v252))
        {
          v253 = swift_slowAlloc();
          *v253 = 0;
          _os_log_impl(&dword_21D044000, v251, v252, "Failed to get server configuration. Fallback to default context length", v253, 2u);
          MEMORY[0x223D3CDF0](v253, -1, -1);
        }

        v254 = v30[74];
        v255 = v30[69];

        sub_21D093A60();
        sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20]);
        v256 = sub_21D0937D0();
        v401 = v30[88];
        v273 = v30[74];
        v274 = v30[70];
        v275 = v30[69];
        v372 = v30[68];
        v378 = v30[84];
        v276 = v30[66];
        v277 = v30[65];
        v278 = v30[44];
        v279 = v256;
        v281 = v280;
        sub_21D055C20(v256, v280);
        MEMORY[0x223D3BF70](v279, v281);
        sub_21D058258(v340, v347);

        v282 = v281;
        v30 = v403;
        sub_21D04FE3C(v279, v282);

        (*(v274 + 8))(v273, v275);
        (*(v276 + 8))(v372, v277);
        __swift_destroy_boxed_opaque_existential_0(v403 + 15);
        v266 = v401;
        v283 = v378;
LABEL_46:
        v389(v266, v283);
LABEL_47:
        v213 = v30[103];
        v214 = v30[100];
        v215 = v30[99];
        v216 = v30[96];
        v217 = v30[93];
        v218 = v30[92];
        v219 = v30[91];
        v220 = v30[88];
        v221 = v30[87];
        v222 = v30;
        v223 = v30[86];
        v328 = v222[83];
        v330 = v222[80];
        v332 = v222[79];
        v335 = v222[76];
        v341 = v222[75];
        v348 = v222[74];
        v353 = v222[73];
        v357 = v222[72];
        v362 = v222[71];
        v367 = v222[68];
        v371 = v222[67];
        v377 = v222[64];
        v382 = v222[63];
        v386 = v222[60];
        v392 = v222[57];
        v395 = v222[54];
        v399 = v222[51];
        v405 = v222[50];

        v80 = v222[1];
        goto LABEL_12;
      }

      v232 = v158[64];
      v201(v232, 1, 1, v158[65]);
      sub_21D04D27C(v232, &qword_27CE54310, &qword_21D095E90);
      v233 = sub_21D094210();
      v234 = sub_21D094560();
      if (os_log_type_enabled(v233, v234))
      {
        v235 = swift_slowAlloc();
        *v235 = 0;
        _os_log_impl(&dword_21D044000, v233, v234, "Failed to cast bundle to LLMBundle. Fallback to default context length", v235, 2u);
        MEMORY[0x223D3CDF0](v235, -1, -1);
      }

      v236 = v158[73];
      v237 = v158[69];

      sub_21D093A60();
      sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20]);
      v238 = sub_21D0937D0();
      v406 = v158[88];
      v257 = v158[84];
      v258 = v158[73];
      v259 = v158[70];
      v260 = v30[69];
      v261 = v66;
      v262 = v30[44];
      v263 = v238;
      v265 = v264;
      sub_21D055C20(v238, v264);
      MEMORY[0x223D3BF70](v263, v265);
      sub_21D058258(v340, v261);

      sub_21D04FE3C(v263, v265);

      (*(v259 + 8))(v258, v260);
      __swift_destroy_boxed_opaque_existential_0(v30 + 15);
      v266 = v406;
    }

    else
    {
      sub_21D04D27C((v158 + 20), &qword_27CE54290, &qword_21D095DF8);

      v224 = sub_21D094210();
      v225 = sub_21D094560();

      if (os_log_type_enabled(v224, v225))
      {
        v226 = swift_slowAlloc();
        v227 = v66;
        v228 = swift_slowAlloc();
        v407[0] = v228;
        *v226 = 136315138;
        v229 = v65;
        v230 = sub_21D05550C(v159, v161, v407);

        *(v226 + 4) = v230;
        v65 = v229;
        _os_log_impl(&dword_21D044000, v224, v225, "Failed to get resource bundle for %s. Fallback to default context length", v226, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v228);
        v231 = v228;
        v66 = v227;
        MEMORY[0x223D3CDF0](v231, -1, -1);
        MEMORY[0x223D3CDF0](v226, -1, -1);
      }

      else
      {
      }

      v30 = v403;
      v239 = v403[72];
      v240 = v403[69];
      sub_21D093A60();
      sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20]);
      v241 = sub_21D0937D0();
      v400 = v403[88];
      v257 = v403[84];
      v242 = v403[72];
      v243 = v403[70];
      v244 = v403[69];
      v245 = v66;
      v246 = v403[44];
      v247 = v65;
      v248 = v241;
      v250 = v249;
      sub_21D055C20(v241, v249);
      MEMORY[0x223D3BF70](v248, v250);
      sub_21D058258(v247, v245);

      sub_21D04FE3C(v248, v250);

      (*(v243 + 8))(v242, v244);
      v266 = v400;
    }

    v283 = v257;
    goto LABEL_46;
  }

  v352 = v30 + 10;
  v110 = v30[47];
  v111 = *v104;
  v30[109] = *v104;
  v30[110] = v104 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v111(v102, v103);
  v112 = MEMORY[0x277D41578];
  v30[13] = v360;
  v30[14] = v112;
  v30[10] = v384;
  v113 = swift_task_alloc();
  v30[111] = v113;
  v113[2] = v110;
  v113[3] = v380;
  v113[4] = v384;
  v113[5] = v365;
  v113[6] = v393;
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);

  if (sub_21D0945A0())
  {
    v355(v30[91], v30[46], v30[89]);
    v114 = sub_21D094210();
    v115 = sub_21D094570();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = v30[103];
      v117 = v30[101];
      v118 = v30[91];
      v390 = v30[90];
      v398 = v30[89];
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v407[0] = v120;
      *v119 = 136315138;
      sub_21D094010();
      v121 = sub_21D092FA0();
      v123 = v122;
      v369(v116, v117);
      v48(v118, v398);
      v124 = sub_21D05550C(v121, v123, v407);
      v30 = v403;

      *(v119 + 4) = v124;
      _os_log_impl(&dword_21D044000, v114, v115, "%s Fallback is enabled", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x223D3CDF0](v120, -1, -1);
      MEMORY[0x223D3CDF0](v119, -1, -1);
    }

    else
    {
      v165 = v30[91];
      v166 = v30[90];
      v167 = v30[89];

      v48(v165, v167);
    }

    v168 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0]);
    swift_allocError();
    v170 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21D0959B0;
    v172 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_21D0943F0();
    *(inited + 40) = v173;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000021D0971A0;
    sub_21D0900B0(inited);
    swift_setDeallocating();
    sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
    sub_21D093ED0();
    (*(*(v168 - 8) + 104))(v170, *MEMORY[0x277D29DA8], v168);
    swift_willThrow();

    v174 = v30[111];
    v175 = v30[110];
    v176 = v30[109];
    v177 = v30[108];
    v178 = v30[107];
    v179 = v30[106];
    v180 = v30[105];
    v181 = v30[88];
    v182 = v30[84];

    sub_21D058258(v178, v177);

    v176(v181, v182);
    __swift_destroy_boxed_opaque_existential_0(v352);
LABEL_11:
    v69 = v30[103];
    v70 = v30[100];
    v71 = v30[99];
    v72 = v30[96];
    v73 = v30[93];
    v74 = v30[92];
    v75 = v30[91];
    v76 = v30[88];
    v77 = v30[87];
    v78 = v30;
    v79 = v30[86];
    v326 = v78[83];
    v327 = v78[80];
    v329 = v78[79];
    v331 = v78[76];
    v333 = v78[75];
    v338 = v78[74];
    v343 = v78[73];
    v350 = v78[72];
    v356 = v78[71];
    v361 = v78[68];
    v366 = v78[67];
    v370 = v78[64];
    v376 = v78[63];
    v381 = v78[60];
    v385 = v78[57];
    v388 = v78[54];
    v394 = v78[51];
    v404 = v78[50];

    v80 = v78[1];
LABEL_12:

    return v80();
  }

  v339 = v65;
  v345 = v66;
  v136 = v30[103];
  v137 = v30[101];
  v138 = v403[51];
  v139 = v403[47];
  v140 = v403[46];
  sub_21D094010();
  v141 = sub_21D092FA0();
  v142 = v31;
  v144 = v143;
  v403[112] = v143;
  v369(v136, v137);
  logMetric(logger:name:startInstant:)(v397 + v142, 0xD000000000000012, 0x800000021D097180);
  v145 = sub_21D093D00();
  v403[113] = v145;
  v146 = *(v145 - 8);
  v403[114] = v146;
  v147 = *(v146 + 64) + 15;
  v148 = swift_task_alloc();
  v403[115] = v148;
  sub_21D093CF0();
  sub_21D094000();
  v149 = sub_21D093E70();
  v150 = *(v149 - 8);
  v151 = (*(v150 + 48))(v138, 1, v149);
  v152 = v403[51];
  if (v151 == 1)
  {
    sub_21D04D27C(v403[51], &qword_27CE542F8, &qword_21D095E78);
  }

  else
  {
    sub_21D093E50();
    (*(v150 + 8))(v152, v149);
  }

  v183 = v151 == 1;
  v184 = v403[88];
  v186 = v403[46];
  v185 = v403[47];
  LOBYTE(v407[0]) = v183;
  sub_21D093CE0();
  v187 = swift_task_alloc();
  v403[116] = v187;
  v187[2] = v184;
  v187[3] = v185;
  v187[4] = v141;
  v187[5] = v144;
  v187[6] = v352;
  v187[7] = v339;
  v187[8] = v345;
  v187[9] = v186;
  v187[10] = &unk_21D095EB0;
  v187[11] = v113;
  v188 = swift_task_alloc();
  v403[117] = v188;
  *v188 = v403;
  v188[1] = sub_21D074AE4;
  v189 = v403[47];
  v190 = v403[44];

  return sub_21D07C794(v190, v141, v144, 1, v148, &unk_21D095EC0, v187);
}