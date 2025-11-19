void sub_227434F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v98 = a1;
  v99 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB80, &qword_2276858E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v86 - v12;
  v94 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v14 = *(v94 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v94);
  v95 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B390();
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v86 - v22;
  v23 = *(a2 + 16);
  if (!v23)
  {
    sub_22766A630();
    v76 = sub_22766B380();
    v77 = sub_22766C890();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_226E8E000, v76, v77, "Unable to select scaffold due to zero candidates", v78, 2u);
      MEMORY[0x22AA9A450](v78, -1, -1);
    }

    (*(v97 + 8))(v21, v17);
    v79 = sub_227664EC0();
    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v79 - 8) + 104))(v80, *MEMORY[0x277D51188], v79);
    swift_willThrow();
    return;
  }

  v91 = v17;
  v93 = v4;
  v104 = MEMORY[0x277D84F90];
  v102 = v23;
  sub_226F1FCE8(0, v23, 0);
  v24 = 0;
  v25 = (a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
  v26 = v104;
  v27 = *(v5 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils);
  v100 = *(v14 + 72);
  v101 = v27;
  v92 = v25;
  v28 = v25;
  do
  {
    v29 = *(v7 + 48);
    sub_2274424B0(v28, &v13[v29]);
    *v11 = v24;
    v30 = *(v7 + 48);
    sub_227442570(&v13[v29], v11 + v30);
    sub_227137238(v11 + v30, v24);
    v32 = v31;
    sub_226E97D1C(v11, &qword_27D7BDB80, &qword_2276858E0);
    v104 = v26;
    v34 = *(v26 + 16);
    v33 = *(v26 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_226F1FCE8((v33 > 1), v34 + 1, 1);
      v26 = v104;
    }

    ++v24;
    *(v26 + 16) = v34 + 1;
    *(v26 + 32 + 8 * v34) = v32;
    v28 += v100;
  }

  while (v102 != v24);
  sub_2271317D4(v26);
  if (v35 >= v102)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v36 = v35;
  v37 = v98;
  sub_2274424B0(v92 + v35 * v100, v98);
  if (v36 >= *(v26 + 16))
  {
LABEL_39:
    __break(1u);
    return;
  }

  v38 = *(v26 + 32 + 8 * v36);

  v39 = v96;
  sub_22766A630();
  v40 = v95;
  sub_2274424B0(v37, v95);
  v41 = sub_22766B380();
  LODWORD(v42) = sub_22766C8B0();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v110 = v92;
    *v43 = 134218498;
    *(v43 + 4) = v36;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v38;
    *(v43 + 22) = 2080;
    v44 = *(v40 + *(v94 + 15));
    v45 = *(v44 + 16);
    v46 = MEMORY[0x277D84F90];
    if (v45)
    {
      v47 = 0;
      v102 = v44 + 32;
      v89 = v45 - 1;
      v94 = MEMORY[0x277D84F90];
      v90 = v42;
      v101 = v45;
      do
      {
        v42 = v47;
        while (1)
        {
          if (v42 >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v48 = *(v102 + 8 * v42);

          if (MEMORY[0x22AA95620](v42) != 7)
          {
            if (*(v48 + 16))
            {
              break;
            }
          }

          if (v101 == ++v42)
          {
            LOBYTE(v42) = v90;
            goto LABEL_36;
          }
        }

        v86 = v44;
        v87 = v43;
        v88 = v41;
        sub_2276692E0();
        v49 = sub_22766C080();
        v51 = v50;

        v108 = v49;
        v109 = v51;
        MEMORY[0x22AA98450](91, 0xE100000000000000);
        v52 = *(v48 + 16);
        if (v52)
        {
          v107 = v46;
          sub_226F1EF90(0, v52, 0);
          v53 = v107;
          v54 = (v48 + 64);
          do
          {
            v55 = *(v54 - 3);
            v98 = *(v54 - 4);
            v99 = v55;
            v100 = v53;
            v57 = *(v54 - 1);
            v58 = *v54;
            v104 = *(v54 - 2);
            v56 = v104;
            v105 = v57;
            v106 = v58;

            sub_226EB396C(v56, v57, v58);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
            sub_22713A9EC();
            v104 = sub_227663B60();
            v105 = v59;
            MEMORY[0x22AA98450](40, 0xE100000000000000);
            v103 = v98;
            v60 = sub_22766D140();
            MEMORY[0x22AA98450](v60);

            MEMORY[0x22AA98450](41, 0xE100000000000000);

            sub_226EB2DFC(v56, v57, v58);
            v53 = v100;
            v61 = v104;
            v62 = v105;
            v107 = v100;
            v64 = *(v100 + 16);
            v63 = *(v100 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_226F1EF90(v63 > 1, v64 + 1, 1);
              v53 = v107;
            }

            *(v53 + 16) = v64 + 1;
            v65 = v53 + 16 * v64;
            *(v65 + 32) = v61;
            *(v65 + 40) = v62;
            v54 += 40;
            --v52;
          }

          while (v52);
          v40 = v95;
          v39 = v96;
        }

        else
        {
          v53 = v46;
        }

        v104 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
        sub_22713AA40();
        v66 = sub_22766BF70();
        v68 = v67;

        MEMORY[0x22AA98450](v66, v68);

        MEMORY[0x22AA98450](93, 0xE100000000000000);

        v69 = v108;
        v70 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_226EB3F78(0, *(v94 + 2) + 1, 1, v94);
        }

        v72 = *(v94 + 2);
        v71 = *(v94 + 3);
        v46 = MEMORY[0x277D84F90];
        if (v72 >= v71 >> 1)
        {
          v94 = sub_226EB3F78((v71 > 1), v72 + 1, 1, v94);
        }

        v47 = v42 + 1;
        v73 = v94;
        *(v94 + 2) = v72 + 1;
        v74 = &v73[16 * v72];
        *(v74 + 4) = v69;
        *(v74 + 5) = v70;
        v75 = v89 == v42;
        v41 = v88;
        v43 = v87;
        LOBYTE(v42) = v90;
        v44 = v86;
      }

      while (!v75);
    }

    else
    {
      v94 = MEMORY[0x277D84F90];
    }

LABEL_36:
    v104 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
    sub_22713AA40();
    v81 = sub_22766BF70();
    v83 = v82;

    sub_227442514(v40);
    v84 = sub_226E97AE8(v81, v83, &v110);

    *(v43 + 24) = v84;
    _os_log_impl(&dword_226E8E000, v41, v42, "[Algorithm.Scoring]: === Selected %ld score=%f schedule=%s", v43, 0x20u);
    v85 = v92;
    __swift_destroy_boxed_opaque_existential_0(v92);
    MEMORY[0x22AA9A450](v85, -1, -1);
    MEMORY[0x22AA9A450](v43, -1, -1);

    (*(v97 + 8))(v39, v91);
  }

  else
  {

    (*(v97 + 8))(v39, v91);
    sub_227442514(v40);
  }
}

void *sub_2274358B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v289 = a4;
  v295 = a3;
  v287 = a1;
  v5 = sub_227668240();
  v297 = *(v5 - 8);
  v6 = v297[8];
  v7 = MEMORY[0x28223BE20](v5);
  v284 = &v269 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  i = &v269 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB78, &unk_2276858D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v270 = &v269 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v269 = &v269 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v269 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v269 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v269 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = &v269 - v25;
  v293 = sub_22766B390();
  v292 = *(v293 - 1);
  v27 = v292[8];
  MEMORY[0x28223BE20](v293);
  v29 = &v269 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();

  v30 = sub_22766B380();
  v31 = sub_22766C8B0();
  v298 = a2;

  v32 = os_log_type_enabled(v30, v31);
  v283 = v5;
  v275 = v18;
  v274 = v21;
  v278 = v24;
  v277 = v26;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v299 = v34;
    *v33 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_22704B2CC();
    v35 = sub_22766BEC0();
    v37 = sub_226E97AE8(v35, v36, &v299);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v30, v31, "[Algorithm] Strategy - greedy preference constrainted: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AA9A450](v34, -1, -1);
    v38 = v33;
    v5 = v283;
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  (v292[1])(v29, v293);
  v39 = sub_227667230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
  v40 = sub_22766C380();
  v40[2] = 7;
  v41 = MEMORY[0x277D84F90];
  v40[4] = MEMORY[0x277D84F90];
  v40[5] = v41;
  v40[6] = v41;
  v40[7] = v41;
  v40[8] = v41;
  v40[9] = v41;
  v40[10] = v41;
  v285 = v40;
  v308 = v40;
  v42 = sub_22766C380();
  v42[2] = 7;
  v43 = v295;
  v42[4] = v295;
  v42[5] = v43;
  v42[6] = v43;
  v42[7] = v43;
  v42[8] = v43;
  v42[9] = v43;
  v42[10] = v43;
  v293 = v42;
  v307 = v42;
  v305 = MEMORY[0x277D84FA0];
  v306 = MEMORY[0x277D84FA0];
  v291 = sub_227149A48(v41);
  v304 = v291;

  *&v299 = sub_22726CC44(v298);
  v44 = v296;
  sub_227444EA4(&v299, v39);
  v292 = v44;
  if (v44)
  {
    goto LABEL_234;
  }

  swift_bridgeObjectRelease_n();
  v276 = v299;
  v281 = *(v299 + 16);
  swift_beginAccess();
  v271 = 0;
  v45 = 0;
  v279 = (v297 + 4);
  v46 = v289;
  v47 = v289 + 56;
  v280 = (v297 + 1);
LABEL_6:
  v288 = v293 + 4;
  while (1)
  {
    if (v45 == v281)
    {
      v49 = v281;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
      v51 = v278;
      (*(*(v50 - 8) + 56))(v278, 1, 1, v50);
      v282 = v49;
    }

    else
    {
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_212;
      }

      v52 = v276;
      if (v45 >= *(v276 + 16))
      {
        goto LABEL_213;
      }

      v53 = v45;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
      v55 = *(v54 - 8);
      v56 = v52 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53;
      v51 = v278;
      sub_226E93170(v56, v278, &qword_27D7BAE90, &unk_22767DF70);
      v282 = v53 + 1;
      (*(v55 + 56))(v51, 0, 1, v54);
    }

    v57 = v277;
    sub_226E95D18(v51, v277, &qword_27D7BDB78, &unk_2276858D0);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    if (v60(v57, 1, v58) == 1)
    {
      break;
    }

    v61 = *(v57 + 1);
    v296 = *v57;
    v297 = v61;
    LODWORD(v298) = v57[16];
    (*v279)(i, &v57[*(v58 + 48)], v5);
    v62 = sub_227668200();
    v63 = v62;
    v64 = *(v62 + 16);
    if (v64)
    {
      v65 = 0;
      v295 = v62 + 32;
      v286 = v62;
      v294 = v64;
      while (1)
      {
        if (v65 >= *(v63 + 16))
        {
          __break(1u);
          goto LABEL_200;
        }

        if (*(v46 + 16))
        {
          v73 = *(v295 + v65);
          v74 = *(v46 + 40);
          sub_22766D370();
          v75 = sub_227669310();
          MEMORY[0x22AA996B0](v75);
          v76 = sub_22766D3F0();
          v77 = -1 << *(v46 + 32);
          v78 = v76 & ~v77;
          if ((*(v47 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
          {
            break;
          }
        }

LABEL_20:
        if (++v65 == v64)
        {

          v5 = v283;
          goto LABEL_8;
        }
      }

      v79 = ~v77;
      while (1)
      {
        v80 = *(*(v46 + 48) + v78);
        v81 = sub_227669310();
        if (v81 == sub_227669310())
        {
          break;
        }

        v78 = (v78 + 1) & v79;
        if (((*(v47 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v82 = sub_227669310();
      if ((v82 & 0x8000000000000000) == 0)
      {
        if (v82 >= v293[2])
        {
          goto LABEL_202;
        }

        if (v288[v82] < 1)
        {
          goto LABEL_19;
        }

        v83 = v291;
        if (v291[2] && (v84 = sub_226F3AC2C(v73), (v85 & 1) != 0))
        {
          v86 = *(v83[7] + 8 * v84);
        }

        else
        {
          v86 = MEMORY[0x277D84FA0];
        }

        if (*(v86 + 16))
        {
          v87 = *(v86 + 40);
          v301 = v296;
          v302 = v297;
          v303 = v298;
          sub_22766D370();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_226F480FC();
          sub_227663B10();
          v88 = sub_22766D3F0();
          v89 = -1 << *(v86 + 32);
          v90 = v88 & ~v89;
          if ((*(v86 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
          {
            v91 = ~v89;
            sub_226F48150();
            sub_226EC1E18();
            while (1)
            {
              v92 = *(v86 + 48) + 24 * v90;
              v93 = *(v92 + 16);
              v299 = *v92;
              v300 = v93;
              v301 = v296;
              v302 = v297;
              v303 = v298;
              if (sub_227663B20())
              {
                break;
              }

              v90 = (v90 + 1) & v91;
              if (((*(v86 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v46 = v289;
LABEL_18:

            v63 = v286;
LABEL_19:
            v64 = v294;
            goto LABEL_20;
          }
        }

LABEL_17:

        v66 = sub_227668230();
        v67 = v287;

        v68 = v296;
        v69 = v297;
        v70 = v298;
        sub_226EB396C(v296, v297, v298);
        v71 = v292;
        v72 = sub_2274425D4(v66, v67, v68, v69, v70, &v307);
        v292 = v71;
        sub_226EB2DFC(v68, v69, v70);

        v46 = v289;
        if (!*(v72 + 16))
        {
          goto LABEL_18;
        }

        if (*(v72 + 16))
        {
          v94 = *(v72 + 32);

          v95 = sub_227669310();
          sub_226EB396C(v296, v297, v298);
          v96 = v285;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_2272EC574(v96);
          }

          v5 = v283;
          if ((v95 & 0x8000000000000000) == 0)
          {
            if (v95 >= v96[2])
            {
              goto LABEL_220;
            }

            v97 = v96 + 4;
            v98 = v96[v95 + 4];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v96[v95 + 4] = v98;
            v285 = v96;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v98 = sub_2273A55F4(0, *(v98 + 2) + 1, 1, v98);
              v97[v95] = v98;
            }

            v101 = *(v98 + 2);
            v100 = *(v98 + 3);
            if (v101 >= v100 >> 1)
            {
              v98 = sub_2273A55F4((v100 > 1), v101 + 1, 1, v98);
              v97[v95] = v98;
            }

            *(v98 + 2) = v101 + 1;
            v102 = &v98[40 * v101];
            *(v102 + 4) = v94;
            v103 = v296;
            *(v102 + 5) = MEMORY[0x277D84FA0];
            *(v102 + 6) = v103;
            *(v102 + 7) = v297;
            v102[64] = v298;
            v308 = v285;
            v104 = sub_227669310();
            v105 = v293;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v293 = sub_2272EC328(v105);
            }

            v46 = v289;
            if ((v104 & 0x8000000000000000) == 0)
            {
              v106 = v293;
              if (v104 >= v293[2])
              {
                goto LABEL_222;
              }

              v107 = v293[v104 + 4];
              v108 = __OFSUB__(v107, v94);
              v109 = v107 - v94;
              if (!v108)
              {
                v293[v104 + 4] = v109;
                v307 = v106;
                v110 = v296;
                v111 = v297;
                v112 = v298;
                sub_226EB396C(v296, v297, v298);
                sub_227105A48(&v299, v110, v111, v112);
                sub_226EB2DFC(v299, *(&v299 + 1), v300);
                sub_2270B8928(&v299, v73);
                swift_beginAccess();
                sub_226EA9E3C(v271);
                v113 = swift_isUniquelyReferenced_nonNull_native();
                v114 = v304;
                v301 = v304;
                v115 = sub_226F3AC2C(v73);
                v117 = v114[2];
                v118 = (v116 & 1) == 0;
                v108 = __OFADD__(v117, v118);
                v119 = v117 + v118;
                if (v108)
                {
                  goto LABEL_224;
                }

                v120 = v116;
                v291 = v114;
                if (v114[3] >= v119)
                {
                  if ((v113 & 1) == 0)
                  {
                    v124 = v115;
                    sub_226FF2948();
                    v115 = v124;
                    v291 = v301;
                  }
                }

                else
                {
                  sub_226FE77D8(v119, v113);
                  v291 = v301;
                  v115 = sub_226F3AC2C(v73);
                  if ((v120 & 1) != (v121 & 1))
                  {
                    goto LABEL_233;
                  }
                }

                v122 = v291;
                v304 = v291;
                if ((v120 & 1) == 0)
                {
                  v123 = v115;
                  sub_227366538(v115, v73, MEMORY[0x277D84FA0], v291);
                  v115 = v123;
                }

                v48 = v122[7] + 8 * v115;
                sub_227105A48(&v301, v296, v297, v298);
                swift_endAccess();
                sub_226EB2DFC(v301, v302, v303);
                (*v280)(i, v5);
                v271 = sub_227444F9C;
                v45 = v282;
                goto LABEL_6;
              }

LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
              goto LABEL_227;
            }

LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
            goto LABEL_223;
          }

LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
          goto LABEL_221;
        }

LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

LABEL_8:
    sub_226EB2DFC(v296, v297, v298);
    (*v280)(i, v5);
    v45 = v282;
  }

  v278 = v60;
  v282 = (v59 + 48);
  v288 = 0;
  v125 = 0;
  v272 = v59;
  v277 = (v59 + 56);
  v273 = v58;
  while (1)
  {
    if (v125 == v281)
    {
      v126 = 1;
      v286 = v281;
      v127 = v275;
    }

    else
    {
      if ((v125 & 0x8000000000000000) != 0)
      {
        goto LABEL_214;
      }

      if (v125 >= *(v276 + 16))
      {
        goto LABEL_215;
      }

      v127 = v275;
      v128 = v125;
      sub_226E93170(v276 + ((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v125, v275, &qword_27D7BAE90, &unk_22767DF70);
      v126 = 0;
      v286 = v128 + 1;
    }

    v129 = *v277;
    (*v277)(v127, v126, 1, v58);
    v130 = v127;
    v131 = v274;
    sub_226E95D18(v130, v274, &qword_27D7BDB78, &unk_2276858D0);
    if (v278(v131, 1, v58) == 1)
    {
      v196 = v305;
      if (*(v305 + 16) <= *(v46 + 16) >> 3)
      {
        *&v299 = v46;

        sub_227006178(v196);
        v197 = v299;
      }

      else
      {

        v197 = sub_227008B14(v196, v46);
      }

      v198 = v270;
      v199 = v269;
      v200 = v276;
      v201 = v272;
      v274 = 0;
      v202 = 0;
      v203 = v197 + 56;
      v204 = 1 << *(v197 + 32);
      if (v204 < 64)
      {
        v205 = ~(-1 << v204);
      }

      else
      {
        v205 = -1;
      }

      v206 = v205 & *(v197 + 56);
      v207 = (v204 + 63) >> 6;
      v275 = v197;
      v294 = v197 + 56;
      for (i = v207; ; v207 = i)
      {
        v286 = (v293 + 4);
        while (1)
        {
          do
          {
            if (!v206)
            {
              do
              {
                v208 = v202 + 1;
                if (__OFADD__(v202, 1))
                {
                  goto LABEL_211;
                }

                if (v208 >= v207)
                {

                  v264 = sub_227433F98(v46, &v308);

                  if (v264)
                  {

                    sub_226EA9E3C(v271);
                    sub_226EA9E3C(v288);
                    sub_226EA9E3C(v274);
                    return v285;
                  }

                  else
                  {
                    v266 = sub_227664EC0();
                    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210]);
                    swift_allocError();
                    (*(*(v266 - 8) + 104))(v267, *MEMORY[0x277D511D8], v266);
                    swift_willThrow();
                    v265 = v285;

                    sub_226EA9E3C(v271);
                    sub_226EA9E3C(v288);
                    sub_226EA9E3C(v274);
                  }

                  return v265;
                }

                v206 = *(v203 + 8 * v208);
                ++v202;
              }

              while (!v206);
              v202 = v208;
            }

            LODWORD(v295) = *(*(v197 + 48) + (__clz(__rbit64(v206)) | (v202 << 6)));
            v209 = sub_227669310();
            if ((v209 & 0x8000000000000000) != 0)
            {
              goto LABEL_216;
            }

            if (v209 >= v293[2])
            {
              goto LABEL_217;
            }

            v206 &= v206 - 1;
            v203 = v294;
            v207 = i;
          }

          while (*(v286 + 8 * v209) < 1);
          v210 = 0;
LABEL_147:
          if (v210 == v281)
          {
            v211 = 1;
            v284 = v281;
          }

          else
          {
            if ((v210 & 0x8000000000000000) != 0)
            {
              goto LABEL_225;
            }

            if (v210 >= *(v200 + 16))
            {
              goto LABEL_226;
            }

            v212 = v200 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v210;
            v213 = v210;
            sub_226E93170(v212, v198, &qword_27D7BAE90, &unk_22767DF70);
            v211 = 0;
            v284 = v213 + 1;
          }

          v214 = v273;
          v129(v198, v211, 1, v273);
          sub_226E95D18(v198, v199, &qword_27D7BDB78, &unk_2276858D0);
          if (v278(v199, 1, v214) != 1)
          {
            break;
          }

          v201 = v272;
          v203 = v294;
          v207 = i;
        }

        v215 = *(v199 + 8);
        v296 = *v199;
        v297 = v215;
        LODWORD(v298) = *(v199 + 16);
        v216 = v291;
        if (v291[2])
        {
          v217 = sub_226F3AC2C(v295);
          v218 = v273;
          if (v219)
          {
            v220 = *(v216[7] + 8 * v217);
          }

          else
          {
            v220 = MEMORY[0x277D84FA0];
          }
        }

        else
        {
          v220 = MEMORY[0x277D84FA0];
          v218 = v273;
        }

        v279 = *(v218 + 48);
        if (*(v220 + 16))
        {
          v221 = *(v220 + 40);
          v301 = v296;
          v302 = v297;
          v303 = v298;
          sub_22766D370();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_226F480FC();
          sub_227663B10();
          v222 = sub_22766D3F0();
          v223 = -1 << *(v220 + 32);
          v224 = v222 & ~v223;
          if ((*(v220 + 56 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224))
          {
            v225 = ~v223;
            sub_226F48150();
            sub_226EC1E18();
            while (1)
            {
              v226 = *(v220 + 48) + 24 * v224;
              v227 = *(v226 + 16);
              v299 = *v226;
              v300 = v227;
              v301 = v296;
              v302 = v297;
              v303 = v298;
              if (sub_227663B20())
              {
                break;
              }

              v224 = (v224 + 1) & v225;
              if (((*(v220 + 56 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            sub_226EB2DFC(v296, v297, v298);

            v199 = v269;
            (*v280)(&v279[v269], v283);
LABEL_146:
            v46 = v289;
            v198 = v270;
            v200 = v276;
            v201 = v272;
            v197 = v275;
            v210 = v284;
            goto LABEL_147;
          }
        }

LABEL_163:

        v228 = v287;
        if (*(v287 + 16))
        {
          v229 = sub_226F491D8(v296, v297, v298);
          v230 = v283;
          if (v231)
          {
            v232 = *(*(v228 + 56) + 8 * v229);
          }

          else
          {
            v232 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v232 = MEMORY[0x277D84F90];
          v230 = v283;
        }

        v233 = v292;
        v234 = sub_227433ED0(v232, &v307);
        v236 = v235;
        v292 = v233;

        if (v236)
        {
          v199 = v269;
          (*v280)(&v279[v269], v230);
          sub_226EB2DFC(v296, v297, v298);
          goto LABEL_146;
        }

        v237 = sub_227669310();
        sub_226EB396C(v296, v297, v298);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v237 & 0x8000000000000000) == 0)
          {
            goto LABEL_173;
          }

LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

        v285 = sub_2272EC574(v285);
        if ((v237 & 0x8000000000000000) != 0)
        {
          goto LABEL_227;
        }

LABEL_173:
        if (v237 >= v285[2])
        {
          goto LABEL_228;
        }

        v238 = v285 + 4;
        v239 = v285[v237 + 4];
        v240 = swift_isUniquelyReferenced_nonNull_native();
        v238[v237] = v239;
        if ((v240 & 1) == 0)
        {
          v239 = sub_2273A55F4(0, *(v239 + 2) + 1, 1, v239);
          v238[v237] = v239;
        }

        v242 = *(v239 + 2);
        v241 = *(v239 + 3);
        v243 = (v242 + 1);
        if (v242 >= v241 >> 1)
        {
          v291 = (v242 + 1);
          v263 = sub_2273A55F4((v241 > 1), v242 + 1, 1, v239);
          v243 = v291;
          v239 = v263;
          v238[v237] = v263;
        }

        *(v239 + 2) = v243;
        v244 = &v239[40 * v242];
        *(v244 + 4) = v234;
        v245 = v296;
        *(v244 + 5) = MEMORY[0x277D84FA0];
        *(v244 + 6) = v245;
        *(v244 + 7) = v297;
        v244[64] = v298;
        v308 = v285;
        v246 = sub_227669310();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v246 & 0x8000000000000000) != 0)
          {
            goto LABEL_229;
          }
        }

        else
        {
          v293 = sub_2272EC328(v293);
          if ((v246 & 0x8000000000000000) != 0)
          {
            goto LABEL_229;
          }
        }

        v247 = v293;
        if (v246 >= v293[2])
        {
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
          goto LABEL_233;
        }

        v248 = v293[v246 + 4];
        v108 = __OFSUB__(v248, v234);
        v249 = v248 - v234;
        if (v108)
        {
          goto LABEL_231;
        }

        v293[v246 + 4] = v249;
        v307 = v247;
        v250 = v295;
        sub_2270B8928(&v299, v295);
        swift_beginAccess();
        sub_226EA9E3C(v274);
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v252 = v304;
        v301 = v304;
        v254 = sub_226F3AC2C(v250);
        v255 = v252[2];
        v256 = (v253 & 1) == 0;
        v257 = v255 + v256;
        if (__OFADD__(v255, v256))
        {
          goto LABEL_232;
        }

        v258 = v253;
        v291 = v252;
        if (v252[3] >= v257)
        {
          if ((v251 & 1) == 0)
          {
            sub_226FF2948();
            v291 = v301;
          }
        }

        else
        {
          sub_226FE77D8(v257, v251);
          v291 = v301;
          v259 = sub_226F3AC2C(v295);
          if ((v258 & 1) != (v260 & 1))
          {
            goto LABEL_233;
          }

          v254 = v259;
        }

        v46 = v289;
        v261 = v291;
        v304 = v291;
        if ((v258 & 1) == 0)
        {
          sub_227366538(v254, v295, MEMORY[0x277D84FA0], v291);
        }

        v262 = v261[7] + 8 * v254;
        sub_227105A48(&v301, v296, v297, v298);
        swift_endAccess();
        sub_226EB2DFC(v301, v302, v303);
        v199 = v269;
        (*v280)(&v279[v269], v230);
        v274 = sub_227444F9C;
        v198 = v270;
        v200 = v276;
        v201 = v272;
        v197 = v275;
        v203 = v294;
      }
    }

    v132 = *(v131 + 1);
    v298 = *v131;
    v296 = v132;
    LODWORD(v297) = v131[16];
    (*v279)(v284, &v131[*(v58 + 48)], v5);
    v133 = sub_227668200();
    v134 = v133;
    v295 = *(v133 + 16);
    if (v295)
    {
      break;
    }

LABEL_67:
    sub_226EB2DFC(v298, v296, v297);
    (*v280)(v284, v5);
    v125 = v286;
  }

  v135 = 0;
  v294 = v133 + 32;
  i = v133;
  while (1)
  {
    if (v135 >= *(v134 + 2))
    {
LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

    if (*(v46 + 16))
    {
      v140 = *(v294 + v135);
      v141 = *(v46 + 40);
      sub_22766D370();
      v142 = sub_227669310();
      MEMORY[0x22AA996B0](v142);
      v143 = sub_22766D3F0();
      v144 = -1 << *(v46 + 32);
      v145 = v143 & ~v144;
      if ((*(v47 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145))
      {
        break;
      }
    }

LABEL_78:
    if (++v135 == v295)
    {

      v58 = v273;
      goto LABEL_67;
    }
  }

  v146 = ~v144;
  while (1)
  {
    v147 = *(*(v46 + 48) + v145);
    v148 = sub_227669310();
    if (v148 == sub_227669310())
    {
      break;
    }

    v145 = (v145 + 1) & v146;
    if (((*(v47 + ((v145 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v145) & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  v149 = sub_227669310();
  if ((v149 & 0x8000000000000000) != 0)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v149 >= v293[2])
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  if (v293[v149 + 4] < 1)
  {
    goto LABEL_77;
  }

  v150 = v291;
  if (v291[2])
  {
    v151 = sub_226F3AC2C(v140);
    v152 = v298;
    v153 = v296;
    if (v154)
    {
      v155 = *(v150[7] + 8 * v151);

      if (!*(v155 + 16))
      {
        goto LABEL_100;
      }
    }

    else
    {
      v155 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_100;
      }
    }

LABEL_96:
    v156 = *(v155 + 40);
    v301 = v152;
    v302 = v153;
    v303 = v297;
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v157 = sub_22766D3F0();
    v158 = -1 << *(v155 + 32);
    v159 = v157 & ~v158;
    if (((*(v155 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
    {
      goto LABEL_100;
    }

    v160 = ~v158;
    sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v161 = *(v155 + 48) + 24 * v159;
      v162 = *(v161 + 16);
      v299 = *v161;
      v300 = v162;
      v301 = v298;
      v302 = v296;
      v303 = v297;
      if (sub_227663B20())
      {
        break;
      }

      v159 = (v159 + 1) & v160;
      if (((*(v155 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    v46 = v289;
LABEL_122:
    v5 = v283;
LABEL_77:
    v134 = i;
    goto LABEL_78;
  }

  v155 = MEMORY[0x277D84FA0];
  v152 = v298;
  v153 = v296;
  if (*(MEMORY[0x277D84FA0] + 16))
  {
    goto LABEL_96;
  }

LABEL_100:

  v163 = sub_227668230();
  v164 = v287;

  v165 = v298;
  v166 = v296;
  v167 = v297;
  sub_226EB396C(v298, v296, v297);
  v168 = v292;
  v169 = sub_2274425D4(v163, v164, v165, v166, v167, &v307);
  v292 = v168;
  sub_226EB2DFC(v165, v166, v167);

  v46 = v289;
  if (!*(v169 + 16))
  {

    goto LABEL_122;
  }

  v170 = *(v169 + 32);

  v171 = sub_227669310();
  sub_226EB396C(v165, v166, v167);
  v172 = v285;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v171 & 0x8000000000000000) == 0)
    {
      goto LABEL_103;
    }

LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  v172 = sub_2272EC574(v172);
  if ((v171 & 0x8000000000000000) != 0)
  {
    goto LABEL_205;
  }

LABEL_103:
  if (v171 >= v172[2])
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  v291 = v170;
  v173 = v172 + 4;
  v174 = v172[v171 + 4];
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v172[v171 + 4] = v174;
  v285 = v172;
  if ((v175 & 1) == 0)
  {
    v174 = sub_2273A55F4(0, *(v174 + 2) + 1, 1, v174);
    v173[v171] = v174;
  }

  v177 = *(v174 + 2);
  v176 = *(v174 + 3);
  if (v177 >= v176 >> 1)
  {
    v174 = sub_2273A55F4((v176 > 1), v177 + 1, 1, v174);
    v173[v171] = v174;
  }

  *(v174 + 2) = v177 + 1;
  v178 = &v174[40 * v177];
  v179 = v291;
  *(v178 + 4) = v291;
  v180 = v298;
  *(v178 + 5) = MEMORY[0x277D84FA0];
  *(v178 + 6) = v180;
  *(v178 + 7) = v166;
  v178[64] = v297;
  v308 = v285;
  v181 = sub_227669310();
  v182 = v293;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v181 & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  v182 = sub_2272EC328(v182);
  if ((v181 & 0x8000000000000000) != 0)
  {
    goto LABEL_207;
  }

LABEL_110:
  if (v181 >= *(v182 + 2))
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  v183 = *&v182[8 * v181 + 32];
  v108 = __OFSUB__(v183, v179);
  v184 = v183 - v179;
  if (v108)
  {
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  *&v182[8 * v181 + 32] = v184;
  v293 = v182;
  v307 = v182;
  sub_2270B8928(&v299, v140);
  swift_beginAccess();
  sub_226EA9E3C(v288);
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v186 = v304;
  v301 = v304;
  v188 = sub_226F3AC2C(v140);
  v189 = v186[2];
  v190 = (v187 & 1) == 0;
  v191 = v189 + v190;
  if (__OFADD__(v189, v190))
  {
    goto LABEL_210;
  }

  v192 = v187;
  v291 = v186;
  if (v186[3] >= v191)
  {
    if ((v185 & 1) == 0)
    {
      sub_226FF2948();
      v291 = v301;
    }

    goto LABEL_119;
  }

  sub_226FE77D8(v191, v185);
  v291 = v301;
  v193 = sub_226F3AC2C(v140);
  if ((v192 & 1) == (v194 & 1))
  {
    v188 = v193;
LABEL_119:
    v5 = v283;
    v195 = v291;
    v304 = v291;
    if ((v192 & 1) == 0)
    {
      sub_227366538(v188, v140, MEMORY[0x277D84FA0], v291);
    }

    v136 = v195[7] + 8 * v188;
    v137 = v298;
    v138 = v296;
    v139 = v297;
    sub_226EB396C(v298, v296, v297);
    sub_227105A48(&v301, v137, v138, v139);
    swift_endAccess();
    sub_226EB2DFC(v301, v302, v303);
    v288 = sub_227444F9C;
    v46 = v289;
    goto LABEL_77;
  }

LABEL_233:
  sub_22766D220();
  __break(1u);
LABEL_234:

  __break(1u);
  return result;
}

BOOL sub_227437AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = sub_227668240();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v55 = a1;
  sub_226E93170(a1, v11, &qword_27D7BAE90, &unk_22767DF70);
  sub_226EB2DFC(*v11, *(v11 + 1), v11[16]);
  v20 = v13[4];
  v20(v19, &v11[*(v4 + 48)], v12);
  sub_226E93170(v60, v11, &qword_27D7BAE90, &unk_22767DF70);
  sub_226EB2DFC(*v11, *(v11 + 1), v11[16]);
  v58 = v4;
  v20(v17, &v11[*(v4 + 48)], v12);
  v21 = *(sub_227668200() + 16);

  v22 = *(sub_227668200() + 16);

  if (v21 != v22)
  {
    v35 = *(sub_227668200() + 16);

    v36 = sub_227668200();
LABEL_8:
    v37 = v36;
    v38 = v13[1];
    v38(v17, v12);
    v38(v19, v12);
    v39 = *(v37 + 16);

    return v35 < v39;
  }

  v23 = *(sub_227668230() + 16);

  v24 = *(sub_227668230() + 16);

  if (v23 != v24)
  {
    v35 = *(sub_227668230() + 16);

    v36 = sub_227668230();
    goto LABEL_8;
  }

  v25 = v56;
  sub_226E93170(v55, v56, &qword_27D7BAE90, &unk_22767DF70);
  v27 = *v25;
  v26 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = v57;
  if (*(v57 + 16))
  {
    v30 = *v25;
    v55 = *(v25 + 8);
    v54 = sub_226F491D8(v30, v26, v28);
    v32 = v31;
    sub_226EB2DFC(v27, v55, v28);
    v33 = v58;
    if (v32)
    {
      v34 = *(*(v29 + 56) + 8 * v54);
    }

    else
    {
      v34 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    sub_226EB2DFC(*v25, v26, *(v25 + 16));
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    v33 = v58;
  }

  v41 = v25 + *(v33 + 48);
  v57 = v13[1];
  (v57)(v41, v12);
  v42 = v59;
  sub_226E93170(v60, v59, &qword_27D7BAE90, &unk_22767DF70);
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  if (*(v29 + 16))
  {
    v60 = v34;
    v46 = v43;
    v47 = v44;
    v48 = v45;
    v56 = sub_226F491D8(v43, v44, v45);
    v50 = v49;
    sub_226EB2DFC(v46, v47, v48);
    if (v50)
    {
      v51 = *(*(v29 + 56) + 8 * v56);
    }

    else
    {
      v51 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v34 = v60;
    v33 = v58;
  }

  else
  {
    sub_226EB2DFC(v43, v44, v45);
    v51 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v52 = v57;
  (v57)(v17, v12);
  v52(v19, v12);
  v52((v59 + *(v33 + 48)), v12);
  return v34 < v51;
}

void sub_227437F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = v4;
  v332 = a4;
  v328 = a3;
  v325 = a1;
  v312 = sub_2276681F0();
  v311 = *(v312 - 8);
  isa = v311[8].isa;
  MEMORY[0x28223BE20](v312);
  v310 = &v296 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v304 = *(v10 - 8);
  v11 = *(v304 + 64);
  MEMORY[0x28223BE20](v10);
  v305 = &v296 - v12;
  v13 = sub_227667370();
  v330 = *(v13 - 8);
  v14 = *(v330 + 64);
  MEMORY[0x28223BE20](v13);
  v329 = &v296 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_2276627D0();
  v319 = *(v320 - 8);
  v16 = *(v319 + 64);
  MEMORY[0x28223BE20](v320);
  v321 = &v296 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v307 = &v296 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v318 = &v296 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v306 = &v296 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v315 = &v296 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB68, &qword_2276858C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v324 = &v296 - v30;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB70, &qword_2276858C8);
  v322 = *(v323 - 8);
  v31 = *(v322 + 8);
  v32 = MEMORY[0x28223BE20](v323);
  v309 = &v296 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v308 = &v296 - v34;
  v35 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v36 = *(*(v35 - 1) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v314 = &v296 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v296 - v39;
  v335 = sub_22766B390();
  v338 = *(v335 - 8);
  v41 = v338[8];
  v42 = MEMORY[0x28223BE20](v335);
  v316 = (&v296 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v42);
  v317 = &v296 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v313 = &v296 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v326 = &v296 - v49;
  MEMORY[0x28223BE20](v48);
  v51 = &v296 - v50;
  v334 = *(a2 + v35[8]);
  v52 = sub_227433CAC(v334);
  v336 = v5;
  sub_22766A630();
  v337 = a2;
  sub_2274424B0(a2, v40);

  v53 = sub_22766B380();
  v54 = sub_22766C8B0();

  v55 = os_log_type_enabled(v53, v54);
  v327 = v13;
  v303 = v10;
  v331 = v52;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v333 = v6;
    v57 = v56;
    v302 = swift_slowAlloc();
    v340 = v302;
    *v57 = 136315650;
    v58 = *(v333 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_scoringMode);
    v59 = sub_227668770();
    v61 = sub_226E97AE8(v59, v60, &v340);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2048;
    v62 = *&v40[v35[7]];
    sub_227442514(v40);
    *(v57 + 14) = v62;
    *(v57 + 22) = 2080;
    v63 = MEMORY[0x22AA98660](v52, MEMORY[0x277D837D0]);
    v65 = sub_226E97AE8(v63, v64, &v340);

    *(v57 + 24) = v65;
    _os_log_impl(&dword_226E8E000, v53, v54, "[===]: Building %s schedule: %ld min on %s", v57, 0x20u);
    v66 = v302;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v66, -1, -1);
    v67 = v57;
    v6 = v333;
    MEMORY[0x22AA9A450](v67, -1, -1);
  }

  else
  {
    sub_227442514(v40);
  }

  v68 = v338[1];
  v68(v51, v335);
  v69 = *(v6 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_enumerationUtils);
  v70 = v336;
  v71 = *(v337 + v35[7]);
  v72 = *(v337 + v35[13]);
  v73 = *(v337 + v35[10]);
  v74 = sub_2273267EC(v71, v72, v73, *(v334 + 16), v332);
  if (v70)
  {

    return;
  }

  v333 = v6;
  v298 = v71;
  v297 = v73;
  v299 = v72;
  v300 = v68;
  v302 = 0;
  v301 = v35;
  v75 = *(v74 + 16);

  v76 = v75 + 64;
  v77 = 1 << *(v75 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v75 + 64);
  v80 = (v77 + 63) >> 6;
  v336 = v75;

  v81 = 0;
  v82 = MEMORY[0x277D84F90];
LABEL_11:
  if (v79)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v83 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v83 >= v80)
    {
      break;
    }

    v79 = *(v76 + 8 * v83);
    ++v81;
    if (v79)
    {
      v81 = v83;
LABEL_16:
      v84 = (v81 << 9) | (8 * __clz(__rbit64(v79)));
      v85 = *(*(v336 + 56) + v84);
      v86 = *(v85 + 16);
      v87 = v82[2];
      v88 = v87 + v86;
      if (__OFADD__(v87, v86))
      {
        goto LABEL_150;
      }

      v89 = *(*(v336 + 56) + v84);

      v90 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v88 > v82[3] >> 1)
      {
        if (v87 <= v88)
        {
          v92 = v87 + v86;
        }

        else
        {
          v92 = v87;
        }

        v90 = sub_2273A58B0(isUniquelyReferenced_nonNull_native, v92, 1, v82);
      }

      v79 &= v79 - 1;
      if (*(v85 + 16))
      {
        if ((v90[3] >> 1) - v90[2] < v86)
        {
          goto LABEL_153;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
        swift_arrayInitWithCopy();

        v82 = v90;
        if (v86)
        {
          v93 = v90[2];
          v94 = __OFADD__(v93, v86);
          v95 = v93 + v86;
          if (v94)
          {
            goto LABEL_160;
          }

          v90[2] = v95;
        }
      }

      else
      {

        v82 = v90;
        if (v86)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_11;
    }
  }

  v96 = v82[2];
  if (!v96)
  {

    v104 = v326;
    sub_22766A630();
    v105 = sub_22766B380();
    v106 = sub_22766C890();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_226E8E000, v105, v106, "No splits to use for schedule generation!", v107, 2u);
      MEMORY[0x22AA9A450](v107, -1, -1);
    }

    v300(v104, v335);
    v108 = sub_227664EC0();
    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v108 - 8) + 104))(v109, *MEMORY[0x277D51188], v108);
    swift_willThrow();
    return;
  }

  v326 = v82;
  v98 = v333;
  v97 = v334;
  if ((sub_22743CBB4(v96, *(v334 + 16)) & 1) == 0)
  {
    v103 = v301;
    v100 = v337;
LABEL_36:
    v110 = *(v98 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_scoringMode);
    v111 = sub_227668780();
    if (v111 == sub_227668780())
    {
      v112 = *(v100 + v103[5]);
      v113 = v302;
      v114 = sub_2274358B8(v299, v112, v298, v97);
      v302 = v113;
      if (v113)
      {

        return;
      }

      v140 = v114;
      v323 = v112;
      v141 = v114[2];
      v324 = *(v100 + v103[16]);

      v333 = v140;
      if (v141)
      {
        v142 = 0;
        v143 = v140 + 4;
        v144 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v142 >= v333[2])
          {
            goto LABEL_154;
          }

          v145 = v143[v142];
          v146 = *(v145 + 16);
          v147 = *(v144 + 2);
          v148 = v147 + v146;
          if (__OFADD__(v147, v146))
          {
            goto LABEL_155;
          }

          v149 = v143[v142];

          v150 = swift_isUniquelyReferenced_nonNull_native();
          if (v150 && v148 <= *(v144 + 3) >> 1)
          {
            if (!*(v145 + 16))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v147 <= v148)
            {
              v151 = v147 + v146;
            }

            else
            {
              v151 = v147;
            }

            v144 = sub_2273A55F4(v150, v151, 1, v144);
            if (!*(v145 + 16))
            {
LABEL_48:

              if (v146)
              {
                goto LABEL_156;
              }

              goto LABEL_49;
            }
          }

          if ((*(v144 + 3) >> 1) - *(v144 + 2) < v146)
          {
            goto LABEL_161;
          }

          swift_arrayInitWithCopy();

          if (v146)
          {
            v152 = *(v144 + 2);
            v94 = __OFADD__(v152, v146);
            v153 = v152 + v146;
            if (v94)
            {
              goto LABEL_164;
            }

            *(v144 + 2) = v153;
          }

LABEL_49:
          if (v141 == ++v142)
          {
            goto LABEL_72;
          }
        }
      }

      v144 = MEMORY[0x277D84F90];
LABEL_72:
      v332 = *(v144 + 2);
      v166 = 0;
      if (v332)
      {
        v167 = 0;
        v168 = (v144 + 64);
        v169 = v324;
        v328 = v144;
        while (1)
        {
          if (v167 >= *(v144 + 2))
          {
            goto LABEL_157;
          }

          v170 = *(v168 - 2);
          v171 = *(v168 - 1);
          v172 = *v168;
          v336 = *(v168 - 3);

          sub_226EB396C(v170, v171, v172);
          sub_226EB396C(v170, v171, v172);
          sub_226EA9E3C(v166);
          v173 = swift_isUniquelyReferenced_nonNull_native();
          v340 = v169;
          v175 = sub_226F491D8(v170, v171, v172);
          v176 = *(v169 + 2);
          v177 = (v174 & 1) == 0;
          v178 = v176 + v177;
          if (__OFADD__(v176, v177))
          {
            goto LABEL_158;
          }

          v179 = v174;
          if (*(v169 + 3) >= v178)
          {
            if (v173)
            {
              if ((v174 & 1) == 0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              sub_226FF6744(v178);
              v169 = v340;
              if ((v179 & 1) == 0)
              {
                goto LABEL_79;
              }
            }
          }

          else
          {
            sub_226FF6748(v178, v173);
            v180 = v340;
            v181 = sub_226F491D8(v170, v171, v172);
            if ((v179 & 1) != (v182 & 1))
            {
              goto LABEL_168;
            }

            v175 = v181;
            v169 = v180;
            if ((v179 & 1) == 0)
            {
LABEL_79:
              *&v169[8 * (v175 >> 6) + 64] |= 1 << v175;
              v183 = *(v169 + 6) + 24 * v175;
              *v183 = v170;
              *(v183 + 8) = v171;
              *(v183 + 16) = v172;
              *(*(v169 + 7) + 8 * v175) = 0;
              v184 = *(v169 + 2);
              v94 = __OFADD__(v184, 1);
              v185 = v184 + 1;
              if (v94)
              {
                goto LABEL_163;
              }

              *(v169 + 2) = v185;
              goto LABEL_84;
            }
          }

          sub_226EB2DFC(v170, v171, v172);
LABEL_84:
          v186 = *(v169 + 7);
          v187 = *(v186 + 8 * v175);
          v94 = __OFADD__(v187, 1);
          v188 = v187 + 1;
          if (v94)
          {
            goto LABEL_159;
          }

          v167 = (v167 + 1);
          *(v186 + 8 * v175) = v188;

          sub_226EB2DFC(v170, v171, v172);
          v168 += 40;
          v166 = sub_227444F98;
          v144 = v328;
          if (v332 == v167)
          {
            goto LABEL_90;
          }
        }
      }

      v169 = v324;
LABEL_90:
      v322 = v166;
      v324 = v169;

      v189 = v313;
      sub_22766A630();
      v190 = v333;

      v191 = sub_22766B380();
      v192 = sub_22766C8B0();

      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v346 = v194;
        *v193 = 136315138;
        v195 = v190[2];

        v196 = v327;
        if (v195)
        {
          v197 = 0;
          v336 = (v190 + 4);
          v317 = (v195 - 1);
          v326 = MEMORY[0x277D84F90];
          do
          {
            v198 = v197;
            while (1)
            {
              if (v198 >= v190[2])
              {
                goto LABEL_162;
              }

              v199 = *(v336 + 8 * v198);

              if (MEMORY[0x22AA95620](v198) != 7)
              {
                if (*(v199 + 16))
                {
                  break;
                }
              }

              if (v195 == ++v198)
              {
                goto LABEL_113;
              }
            }

            v312 = v195;
            sub_2276692E0();
            v200 = sub_22766C080();
            v202 = v201;

            v344 = v200;
            v345 = v202;
            MEMORY[0x22AA98450](91, 0xE100000000000000);
            v203 = *(v199 + 16);
            v316 = v194;
            if (v203)
            {
              v309 = v193;
              LODWORD(v310) = v192;
              v311 = v191;
              v343 = MEMORY[0x277D84F90];
              sub_226F1EF90(0, v203, 0);
              v204 = v343;
              v205 = (v199 + 64);
              do
              {
                v331 = v203;
                v332 = v204;
                v206 = *(v205 - 3);
                v328 = *(v205 - 4);
                v208 = *(v205 - 1);
                v209 = *v205;
                v340 = *(v205 - 2);
                v207 = v340;
                v341 = v208;
                v342 = v209;

                sub_226EB396C(v207, v208, v209);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
                sub_22713A9EC();
                v340 = sub_227663B60();
                v341 = v210;
                MEMORY[0x22AA98450](40, 0xE100000000000000);
                v339 = v328;
                v211 = sub_22766D140();
                MEMORY[0x22AA98450](v211);

                MEMORY[0x22AA98450](41, 0xE100000000000000);

                sub_226EB2DFC(v207, v208, v209);
                v204 = v332;
                v212 = v340;
                v213 = v341;
                v343 = v332;
                v215 = v332[2];
                v214 = v332[3];
                if (v215 >= v214 >> 1)
                {
                  sub_226F1EF90(v214 > 1, v215 + 1, 1);
                  v204 = v343;
                }

                v204[2] = v215 + 1;
                v216 = &v204[2 * v215];
                v216[4] = v212;
                v216[5] = v213;
                v205 += 40;
                v203 = v331 - 1;
              }

              while (v331 != 1);
              v191 = v311;
              v192 = v310;
              v193 = v309;
            }

            else
            {
              v204 = MEMORY[0x277D84F90];
            }

            v332 = v204;
            v340 = v204;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
            sub_22713AA40();
            v217 = sub_22766BF70();
            v219 = v218;

            MEMORY[0x22AA98450](v217, v219);

            MEMORY[0x22AA98450](93, 0xE100000000000000);

            v221 = v344;
            v220 = v345;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v326 = sub_226EB3F78(0, *(v326 + 2) + 1, 1, v326);
            }

            v223 = *(v326 + 2);
            v222 = *(v326 + 3);
            if (v223 >= v222 >> 1)
            {
              v326 = sub_226EB3F78((v222 > 1), v223 + 1, 1, v326);
            }

            v197 = v198 + 1;
            v224 = v326;
            *(v326 + 2) = v223 + 1;
            v225 = &v224[16 * v223];
            *(v225 + 4) = v221;
            *(v225 + 5) = v220;
            v196 = v327;
            v190 = v333;
            v194 = v316;
            v195 = v312;
          }

          while (v317 != v198);
        }

        else
        {
          v326 = MEMORY[0x277D84F90];
        }

LABEL_113:

        v340 = v326;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
        sub_22713AA40();
        v226 = sub_22766BF70();
        v228 = v227;

        v229 = sub_226E97AE8(v226, v228, &v346);

        *(v193 + 4) = v229;
        _os_log_impl(&dword_226E8E000, v191, v192, "[===]:  Selected preference schedule: %s", v193, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v194);
        MEMORY[0x22AA9A450](v194, -1, -1);
        MEMORY[0x22AA9A450](v193, -1, -1);

        v300(v313, v335);
      }

      else
      {

        v300(v189, v335);
        v196 = v327;
      }

      v230 = v330;
      v231 = v320;
      v232 = v319;
      v233 = v315;
      (*(v319 + 56))(v315, 1, 1, v320);
      (*(v230 + 56))(v318, 1, 1, v196);
      v234 = v306;
      sub_226E93170(v233, v306, &unk_27D7BB9D0, &qword_227671550);
      v235 = v232;
      v236 = *(v232 + 48);
      v237 = v196;
      if (v236(v234, 1, v231) == 1)
      {
        (*(v235 + 16))(v321, v337, v231);
        v238 = v236(v234, 1, v231);
        v239 = v323;
        if (v238 != 1)
        {
          sub_226E97D1C(v234, &unk_27D7BB9D0, &qword_227671550);
        }
      }

      else
      {
        (*(v235 + 32))(v321, v234, v231);
        v239 = v323;
      }

      v240 = v301;
      v241 = v337;
      v338 = *(v337 + v301[9]);
      v242 = v307;
      sub_226E93170(v318, v307, &qword_27D7BB3E8, &unk_227686370);
      v243 = v330;
      v244 = *(v330 + 48);
      if (v244(v242, 1, v237) == 1)
      {
        (*(v243 + 16))(v329, v241 + v240[14], v237);
        v245 = v244(v242, 1, v237);

        v246 = v334;

        v247 = v299;

        v248 = v237;
        if (v245 != 1)
        {
          sub_226E97D1C(v242, &qword_27D7BB3E8, &unk_227686370);
        }
      }

      else
      {
        (*(v243 + 32))(v329, v242, v237);

        v246 = v334;

        v247 = v299;

        v248 = v237;
      }

      v249 = v301;
      v250 = *(v337 + v301[12]);
      v251 = v314;
      (*(v319 + 16))(v314, v321, v320);
      *&v251[v249[5]] = v239;
      v252 = v333;

      v253 = v324;

      v254 = sub_226F491E4(v239);
      *&v251[v249[6]] = v254;
      *&v251[v249[7]] = v298;
      *&v251[v249[8]] = v246;
      *&v251[v249[9]] = v338;
      v251[v249[12]] = v250;
      *&v251[v249[10]] = v297;
      *&v251[v249[13]] = v247;
      v255 = v330;
      (*(v330 + 16))(&v251[v249[14]], v329, v248);
      *&v251[v249[15]] = v252;
      *&v251[v249[16]] = v253;
      v256 = v254 + 56;
      v257 = 1 << *(v254 + 32);
      v258 = -1;
      if (v257 < 64)
      {
        v258 = ~(-1 << v257);
      }

      v259 = v258 & *(v254 + 56);
      v260 = (v257 + 63) >> 6;

      v338 = v254;

      v335 = 0;
      v261 = 0;
      v336 = MEMORY[0x277D84F98];
      v337 = v256;
      v262 = v329;
      if (!v259)
      {
LABEL_125:
        while (1)
        {
          v263 = v261 + 1;
          if (__OFADD__(v261, 1))
          {
            break;
          }

          if (v263 >= v260)
          {

            v293 = v324;

            v294 = v314;
            *&v314[v249[11]] = v336;
            v295 = sub_22746B5DC(v293);

            (*(v255 + 8))(v262, v248);
            (*(v319 + 8))(v321, v320);
            sub_226E97D1C(v318, &qword_27D7BB3E8, &unk_227686370);
            sub_226E97D1C(v315, &unk_27D7BB9D0, &qword_227671550);
            *(v294 + v249[17]) = v295;
            sub_227442570(v294, v325);
            sub_226EA9E3C(v335);
            sub_226EA9E3C(v322);
            return;
          }

          v259 = *(v256 + 8 * v263);
          ++v261;
          if (v259)
          {
            v261 = v263;
            goto LABEL_129;
          }
        }

LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_22766D220();
        __break(1u);
LABEL_169:
        sub_22766D220();
        __break(1u);
        return;
      }

      while (1)
      {
LABEL_129:
        v264 = __clz(__rbit64(v259));
        v259 &= v259 - 1;
        v265 = v338[6] + 24 * (v264 | (v261 << 6));
        v266 = *v265;
        v267 = *(v265 + 8);
        v268 = *(v265 + 16);
        sub_226EB396C(*v265, v267, *(v265 + 16));
        v269 = sub_2276672C0();
        if (!*(v269 + 16))
        {
          sub_226EB2DFC(v266, v267, v268);
LABEL_138:

          v248 = v327;
          v255 = v330;
          goto LABEL_139;
        }

        v270 = sub_226F491D8(v266, v267, v268);
        v272 = v271;
        sub_226EB2DFC(v266, v267, v268);
        if ((v272 & 1) == 0)
        {
          goto LABEL_138;
        }

        v273 = *(v304 + 72);
        v274 = v305;
        sub_226E93170(*(v269 + 56) + v273 * v270, v305, &qword_27D7B88C0, &unk_22767A720);

        sub_226EA9E3C(v335);
        v275 = v336;
        v276 = swift_isUniquelyReferenced_nonNull_native();
        v340 = v275;
        v278 = sub_226F3ADC4(v274);
        v279 = *(v275 + 16);
        v280 = (v277 & 1) == 0;
        v281 = v279 + v280;
        if (__OFADD__(v279, v280))
        {
          goto LABEL_165;
        }

        v282 = v277;
        if (*(v275 + 24) < v281)
        {
          break;
        }

        v255 = v330;
        if ((v276 & 1) == 0)
        {
          sub_226FF2414();
          goto LABEL_135;
        }

        v285 = v340;
        if ((v277 & 1) == 0)
        {
LABEL_143:
          v286 = v285;
          sub_227444F98(&v340);
          v287 = v340;
          v286[(v278 >> 6) + 8] |= 1 << v278;
          sub_226E93170(v305, v286[6] + v278 * v273, &qword_27D7B88C0, &unk_22767A720);
          *(v286[7] + 8 * v278) = v287;
          v288 = v286[2];
          v94 = __OFADD__(v288, 1);
          v289 = v288 + 1;
          if (v94)
          {
            goto LABEL_167;
          }

          v285 = v286;
          v286[2] = v289;
          v255 = v330;
        }

LABEL_145:
        v290 = *(v285 + 56);
        v291 = *(v290 + 8 * v278);
        v94 = __OFADD__(v291, 1);
        v292 = v291 + 1;
        if (v94)
        {
          goto LABEL_166;
        }

        v336 = v285;
        *(v290 + 8 * v278) = v292;
        sub_226E97D1C(v305, &qword_27D7B88C0, &unk_22767A720);
        v335 = sub_227444F98;
        v248 = v327;
LABEL_139:
        v249 = v301;
        v256 = v337;
        v262 = v329;
        if (!v259)
        {
          goto LABEL_125;
        }
      }

      sub_226FE6DD4(v281, v276);
      v283 = sub_226F3ADC4(v305);
      if ((v282 & 1) != (v284 & 1))
      {
        goto LABEL_169;
      }

      v278 = v283;
LABEL_135:
      v255 = v330;
      v285 = v340;
      if ((v282 & 1) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_145;
    }

    v115 = v317;
    sub_22766A630();
    v116 = sub_22766B380();
    v117 = sub_22766C8B0();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_226E8E000, v116, v117, "[Algorithm] Strategy - enumerated-kernels.", v118, 2u);
      MEMORY[0x22AA9A450](v118, -1, -1);
    }

    v119 = (v338 + 1);
    v120 = v335;
    v300(v115, v335);
    if (v96 > 0x31)
    {

      v128 = v100;
      v129 = v328;
      v130 = v332;
      v125 = v302;
    }

    else
    {
      v121 = v310;
      sub_227667240();
      v122 = sub_227667F10();
      (v311[1].isa)(v121, v312);
      v123 = sub_22743F908(v100, v326, v122);

      v125 = v302;
      v126 = v332;
      if (*(v123 + 16))
      {
        v127 = v316;
LABEL_67:
        MEMORY[0x28223BE20](v124);
        *(&v296 - 2) = v337;
        *(&v296 - 1) = v98;
        v154 = sub_2275F1E9C(sub_227443EA8, (&v296 - 4), v123);
        sub_22766A630();

        v155 = sub_22766B380();
        v156 = sub_22766C8B0();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v337 = v119;
          v158 = v157;
          v159 = swift_slowAlloc();
          v338 = v125;
          v160 = v159;
          v340 = v159;
          *v158 = 136315138;
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE70, &qword_2276798E0);
          v162 = MEMORY[0x22AA98660](v123, v161);
          v164 = v163;

          v165 = sub_226E97AE8(v162, v164, &v340);

          *(v158 + 4) = v165;
          _os_log_impl(&dword_226E8E000, v155, v156, "Determining best general schedule scaffold from kernels: %s", v158, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v160);
          MEMORY[0x22AA9A450](v160, -1, -1);
          MEMORY[0x22AA9A450](v158, -1, -1);

          v300(v127, v335);
        }

        else
        {

          v300(v127, v120);
        }

        sub_227434F24(v325, v154, v328);

        return;
      }

      v128 = v100;
      v129 = v328;
      v130 = v126;
    }

    sub_22743E304(v128, v129, v130);
    v127 = v316;
    if (v125)
    {
      return;
    }

    v123 = v124;
    goto LABEL_67;
  }

  v99 = v324;
  v100 = v337;
  v101 = v302;
  sub_22743CF30(v324, v337, v326, v328);
  v103 = v301;
  if (v101)
  {

    (*(v322 + 7))(v99, 1, 1, v323);
    sub_226E97D1C(v99, &qword_27D7BDB68, &qword_2276858C0);
    v302 = 0;
    goto LABEL_36;
  }

  v131 = v102;

  v132 = v99;
  v133 = v323;
  v134 = *(v323 + 48);

  *(v132 + v134) = v131;
  (*(v322 + 7))(v132, 0, 1, v133);
  v135 = v132;
  v136 = v308;
  sub_226E95D18(v135, v308, &qword_27D7BDB70, &qword_2276858C8);
  v137 = v136;
  v138 = v309;
  sub_226E95D18(v137, v309, &qword_27D7BDB70, &qword_2276858C8);
  v139 = *(v138 + *(v133 + 48));
  sub_227442570(v138, v325);
}

uint64_t sub_22743A05C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v42 = sub_22766B390();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v43 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_2274424B0(a2, a4);
  v17 = sub_2276692F0();
  v46 = *(v17 + 16);
  if (!v46)
  {
  }

  v19 = 0;
  v20 = 0;
  v45 = *(v13 + 32);
  v40 = (v10 + 8);
  v41 = v16;
  v39 = v16 + 32;
  *&v18 = 134217984;
  v37 = v18;
  v21 = v38;
  v22 = v43;
  v44 = v17;
  while (v20 < *(v17 + 16))
  {
    if (sub_22718CB74(*(v17 + v20 + 32), *(a4 + v45)))
    {
      sub_22766A630();
      v23 = sub_22766B380();
      v24 = sub_22766C8B0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = a3;
        v26 = v5;
        v27 = swift_slowAlloc();
        *v27 = v37;
        *(v27 + 4) = sub_227669310();
        _os_log_impl(&dword_226E8E000, v23, v24, "Determining daily schedule at day=%ld", v27, 0xCu);
        v28 = v27;
        v5 = v26;
        a3 = v25;
        v21 = v38;
        MEMORY[0x22AA9A450](v28, -1, -1);
      }

      (*v40)(v21, v42);
      v29 = *(v41 + 16);
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v19 % v29;
      if (v30 < 0)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_21;
      }

      v32 = *(v39 + 8 * v30);

      if (sub_227440298(v33))
      {
        v34 = sub_2274404C0(v32);
      }

      else
      {
        v47 = v32;

        sub_227443E04(&v47);
        if (v5)
        {
          goto LABEL_22;
        }

        v34 = v47;
      }

      v35 = v43;
      WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v34, v43);
      v22 = v35;
    }

    else
    {
      WorkoutPlanGenerationScaffold.withUnscheduledDay()(v22);
    }

    ++v20;
    sub_227442514(a4);
    sub_227442570(v22, a4);
    v17 = v44;
    if (v46 == v20)
    {
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_22743A3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a2;
  v52 = a3;
  v48 = sub_22766B390();
  v6 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v42 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils;
  v14 = (v11 + 63) >> 6;
  v47 = (v7 + 8);

  v16 = 0;
  v53 = xmmword_227670CD0;
  v41 = MEMORY[0x277D84F90];
  v45 = v9;
  v46 = a4;
  v49 = v14;
  v50 = a1 + 64;
  for (i = a1; v13; v10 = v50)
  {
LABEL_8:
    v18 = *(*(a1 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = *(v44 + v42);

      v21 = INFINITY;
      v22 = 32;
      v23 = MEMORY[0x277D84F90];
      v25 = v51;
      v24 = v52;
      do
      {
        v27 = *(v18 + v22);

        v28 = sub_227133B54(v25, v24, v27);
        if (v28 < v21)
        {
          v26 = v28;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
          v23 = swift_allocObject();
          *(v23 + 16) = v53;
          *(v23 + 32) = v27;
          v21 = v26;
        }

        else if (v28 == v21)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_2273A58B0(0, *(v23 + 16) + 1, 1, v23);
          }

          v30 = *(v23 + 16);
          v29 = *(v23 + 24);
          if (v30 >= v29 >> 1)
          {
            v23 = sub_2273A58B0((v29 > 1), v30 + 1, 1, v23);
          }

          *(v23 + 16) = v30 + 1;
          *(v23 + 8 * v30 + 32) = v27;
          v25 = v51;
          v24 = v52;
        }

        else
        {
        }

        v22 += 8;
        --v19;
      }

      while (v19);

      v9 = v45;
      a1 = i;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v13 &= v13 - 1;
    v31 = *(v23 + 16);
    if (v31)
    {
      sub_227664440();
      sub_226EAC0B4(&qword_27D7BB388, MEMORY[0x277D508E8]);
      result = sub_22766BF40();
      v35 = (result * v31) >> 64;
      if (v31 > result * v31)
      {
        v36 = -v31 % v31;
        if (v36 > result * v31)
        {
          do
          {
            result = sub_22766BF40();
          }

          while (v36 > result * v31);
          v35 = (result * v31) >> 64;
        }
      }

      if (v35 >= *(v23 + 16))
      {
        goto LABEL_40;
      }

      v37 = *(v23 + 8 * v35 + 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      v9 = v45;
      if ((result & 1) == 0)
      {
        result = sub_2273A58B0(0, v41[2] + 1, 1, v41);
        v41 = result;
      }

      v39 = v41[2];
      v38 = v41[3];
      if (v39 >= v38 >> 1)
      {
        result = sub_2273A58B0((v38 > 1), v39 + 1, 1, v41);
        v41 = result;
      }

      v40 = v41;
      v41[2] = v39 + 1;
      v40[v39 + 4] = v37;
    }

    else
    {

      sub_22766A630();
      v32 = sub_22766B380();
      v33 = sub_22766C890();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_226E8E000, v32, v33, "Could not identify candidate with smallest duration related penalty", v34, 2u);
        MEMORY[0x22AA9A450](v34, -1, -1);
      }

      result = (*v47)(v9, v48);
    }

    v14 = v49;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v41;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

char *sub_22743A8A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v71 = a1;
  v5 = v4;
  v72 = a4;
  v8 = sub_2276681F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v69 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - v20;
  v74 = a2;
  if (*(a2 + 16))
  {
    v67 = v19;
    v68 = *a3;
    sub_227667240();
    v22 = sub_227667FC0();
    (*(v9 + 8))(v12, v8);
    if (v22)
    {
      v23 = type metadata accessor for WorkoutPlanGenerationScaffold();
      v25 = v71;
      v24 = v72;
      v26 = sub_22743A3E0(v74, *(v71 + *(v23 + 28)), *(v71 + *(v23 + 60)), v72);
      if (v26[2])
      {
LABEL_4:
        v27 = *(v5 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils);
        v76 = v68;
        v28 = v70;
        sub_227131B70(v26, v25, v24, &v76);
        if (v28)
        {
        }

        else
        {
          v12 = v29;

          v56 = v67;
          sub_22766A630();

          v57 = sub_22766B380();
          v58 = sub_22766C8B0();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v66 = v13;
            v61 = v60;
            v75 = v60;
            *v59 = 136315138;
            v62 = MEMORY[0x22AA98660](v12, &type metadata for WorkoutPlanGenerationScheduledItem);
            v65 = v14;
            v64 = sub_226E97AE8(v62, v63, &v75);

            *(v59 + 4) = v64;
            _os_log_impl(&dword_226E8E000, v57, v58, "Daily schedule selected: %s", v59, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v61);
            MEMORY[0x22AA9A450](v61, -1, -1);
            MEMORY[0x22AA9A450](v59, -1, -1);

            (*(v65 + 8))(v56, v66);
          }

          else
          {

            (*(v14 + 8))(v56, v13);
          }
        }

        return v12;
      }
    }

    else
    {
      v65 = v14;
      v66 = v13;
      v12 = (v74 + 64);
      v33 = 1 << *(v74 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v74 + 64);
      v36 = (v33 + 63) >> 6;

      v38 = 0;
      v26 = MEMORY[0x277D84F90];
      v73 = v5;
      while (v35)
      {
LABEL_18:
        v40 = (v38 << 9) | (8 * __clz(__rbit64(v35)));
        v41 = *(*(v74 + 56) + v40);
        v42 = *(v41 + 16);
        v43 = v26[2];
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }

        v45 = *(*(v74 + 56) + v40);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v44 > v26[3] >> 1)
        {
          if (v43 <= v44)
          {
            v46 = v43 + v42;
          }

          else
          {
            v46 = v43;
          }

          result = sub_2273A58B0(result, v46, 1, v26);
          v26 = result;
        }

        v5 = v73;
        v35 &= v35 - 1;
        if (*(v41 + 16))
        {
          if ((v26[3] >> 1) - v26[2] < v42)
          {
            goto LABEL_42;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
          swift_arrayInitWithCopy();

          if (v42)
          {
            v47 = v26[2];
            v48 = __OFADD__(v47, v42);
            v49 = v47 + v42;
            if (v48)
            {
              goto LABEL_43;
            }

            v26[2] = v49;
          }
        }

        else
        {

          if (v42)
          {
            goto LABEL_41;
          }
        }
      }

      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v39 >= v36)
        {
          break;
        }

        v35 = *&v12[8 * v39];
        ++v38;
        if (v35)
        {
          v38 = v39;
          goto LABEL_18;
        }
      }

      v14 = v65;
      v13 = v66;
      v25 = v71;
      v24 = v72;
      if (v26[2])
      {
        goto LABEL_4;
      }
    }

    v50 = v69;
    sub_22766A630();
    v51 = sub_22766B380();
    v52 = sub_22766C890();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_226E8E000, v51, v52, "No candidates found while greedily querying schedule. Exiting with incomplete scaffold error.", v53, 2u);
      MEMORY[0x22AA9A450](v53, -1, -1);
    }

    (*(v14 + 8))(v50, v13);
  }

  else
  {
    sub_22766A630();
    v30 = sub_22766B380();
    v31 = sub_22766C890();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226E8E000, v30, v31, "Could not greedily query schedule, exiting with incomplete scaffold error.", v32, 2u);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    (*(v14 + 8))(v21, v13);
  }

  v54 = sub_227664EC0();
  sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210]);
  swift_allocError();
  (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D511D0], v54);
  swift_willThrow();
  return v12;
}

unint64_t sub_22743AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, double a7)
{
  v272 = a6;
  v265 = a5;
  v216 = a4;
  v226 = a3;
  v217 = a1;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0B0, &unk_227686430);
  v222 = *(v223 - 8);
  v10 = *(v222 + 64);
  v11 = MEMORY[0x28223BE20](v223);
  v215 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v214 = (&v210 - v14);
  MEMORY[0x28223BE20](v13);
  v218 = &v210 - v15;
  v234 = sub_227664EC0();
  v224 = *(v234 - 8);
  v16 = *(v224 + 64);
  v17 = MEMORY[0x28223BE20](v234);
  v231 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v263 = &v210 - v19;
  v20 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v276 = *(v20 - 1);
  v21 = v276[8];
  v22 = MEMORY[0x28223BE20](v20);
  v249 = &v210 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v260 = &v210 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v238 = &v210 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v274 = &v210 - v29;
  MEMORY[0x28223BE20](v28);
  v250 = &v210 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB60, &unk_2276858B0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v227 = &v210 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v242 = &v210 - v36;
  MEMORY[0x28223BE20](v35);
  v235 = &v210 - v37;
  v275 = sub_22766B390();
  v268 = *(v275 - 8);
  v38 = *(v268 + 64);
  v39 = MEMORY[0x28223BE20](v275);
  v230 = &v210 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v267 = &v210 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v237 = &v210 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v262 = &v210 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v210 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v210 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v210 - v53;
  v55 = sub_2276681F0();
  v254 = *(v55 - 8);
  v56 = *(v254 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v210 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = v7;
  v59 = *(v7 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_enumerationUtils);
  v60 = *(a2 + v20[7]);
  v61 = v273;
  v62 = sub_2273267EC(v60, *(a2 + v20[13]), *(a2 + v20[10]), *(*(a2 + v20[8]) + 16), v272);
  v271 = v61;
  if (v61)
  {
    return v54;
  }

  v229 = v54;
  v261 = v52;
  v269 = v49;
  v248 = v20;
  v243 = a2;
  v211 = v62;
  v64 = *(v62 + 16);
  v65 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration;

  v245 = v65;
  sub_227667240();
  v66 = sub_227667FC0();
  v67 = *(v254 + 8);
  v254 += 8;
  v244 = v67;
  v67(v58, v55);
  v247 = v55;
  v246 = v58;
  if ((v66 & 1) == 0)
  {
    v74 = v64 + 64;
    v75 = 1 << *(v64 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v64 + 64);
    v78 = (v75 + 63) >> 6;
    v266 = v64;
    result = swift_bridgeObjectRetain_n();
    v79 = 0;
    v69 = MEMORY[0x277D84F90];
    v71 = v276;
LABEL_10:
    if (v77)
    {
      goto LABEL_16;
    }

    v72 = v248;
    v73 = v250;
    while (1)
    {
      v80 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_106;
      }

      if (v80 >= v78)
      {
        break;
      }

      v77 = *(v74 + 8 * v80);
      ++v79;
      if (v77)
      {
        v79 = v80;
LABEL_16:
        v81 = (v79 << 9) | (8 * __clz(__rbit64(v77)));
        v82 = *(*(v266 + 56) + v81);
        v83 = *(v82 + 16);
        v84 = v69[2];
        v85 = v84 + v83;
        if (!__OFADD__(v84, v83))
        {
          v86 = *(*(v266 + 56) + v81);

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || v85 > v69[3] >> 1)
          {
            if (v84 <= v85)
            {
              v87 = v84 + v83;
            }

            else
            {
              v87 = v84;
            }

            result = sub_2273A58B0(result, v87, 1, v69);
            v69 = result;
          }

          v77 &= v77 - 1;
          if (*(v82 + 16))
          {
            if ((v69[3] >> 1) - v69[2] >= v83)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
              swift_arrayInitWithCopy();

              v71 = v276;
              if (!v83)
              {
                goto LABEL_10;
              }

              v88 = v69[2];
              v89 = __OFADD__(v88, v83);
              v90 = v88 + v83;
              if (!v89)
              {
                v69[2] = v90;
                goto LABEL_10;
              }

LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v71 = v276;
          if (!v83)
          {
            goto LABEL_10;
          }

LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }
    }

    v220 = v69[2];
    if (v220)
    {
      v68 = v243;
      goto LABEL_30;
    }

    v186 = v234;
    v184 = v226;
    v185 = v275;
LABEL_90:

    v187 = v267;
    sub_22766A630();
    v188 = sub_22766B380();
    v189 = sub_22766C8B0();
    v190 = os_log_type_enabled(v188, v189);
    v191 = v268;
    if (v190)
    {
      v192 = swift_slowAlloc();
      *v192 = 134217984;
      *(v192 + 4) = v184;
      _os_log_impl(&dword_226E8E000, v188, v189, "No candidates for rollout on day %ld. Exiting with incomplete scaffold error.", v192, 0xCu);
      v193 = v192;
      v185 = v275;
      MEMORY[0x22AA9A450](v193, -1, -1);
    }

    (*(v191 + 8))(v187, v185);
    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210]);
    v54 = swift_allocError();
    (*(v224 + 104))(v194, *MEMORY[0x277D511D0], v186);
    goto LABEL_93;
  }

  v68 = v243;
  v69 = sub_22743A3E0(v64, v60, *(v243 + v248[15]), v265);
  result = v64;
  v220 = v69[2];
  v71 = v276;
  if (!v220)
  {
LABEL_88:

    v184 = v226;
    v185 = v275;
    v186 = v234;
    goto LABEL_90;
  }

  v266 = result;
  v72 = v248;
  v73 = v250;
LABEL_30:
  v91 = v275;
  v92 = 0;
  v236 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils;
  v225 = v69;
  v221 = v69 + 4;
  v253 = (v71 + 7);
  v232 = (v224 + 88);
  v233 = *MEMORY[0x277D511D0];
  v213 = (v224 + 8);
  v240 = (v71 + 6);
  v219 = MEMORY[0x277D84F90];
  v93 = -INFINITY;
  *&v70 = 134218754;
  v212 = v70;
  *(&v94 + 1) = 2;
  v210 = xmmword_227670CD0;
  *&v94 = 134217984;
  v264 = v94;
  *&v94 = 136315394;
  v256 = v94;
  v276 = (v268 + 8);
  do
  {
    v99 = v225;
    if (v92 >= v225[2])
    {
      goto LABEL_107;
    }

    v100 = v221[v92];
    v239 = v92;
    v228 = v92 + 1;

    sub_22766A630();

    v101 = sub_22766B380();
    v102 = sub_22766C8B0();

    LODWORD(v273) = v102;
    v103 = os_log_type_enabled(v101, v102);
    v251 = v100;
    if (v103)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v277 = v105;
      *v104 = v212;
      *(v104 + 4) = v226;
      *(v104 + 12) = 2048;
      *(v104 + 14) = v228;
      *(v104 + 22) = 2048;
      *(v104 + 24) = v99[2];

      *(v104 + 32) = 2080;
      v106 = MEMORY[0x22AA98660](v100, &type metadata for WorkoutPlanGenerationScheduledItem);
      v108 = sub_226E97AE8(v106, v107, &v277);

      *(v104 + 34) = v108;
      v68 = v243;
      _os_log_impl(&dword_226E8E000, v101, v273, "Day %ld - candidate %ld / %ld: %s", v104, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x22AA9A450](v105, -1, -1);
      v109 = v104;
      v73 = v250;
      v72 = v248;
      MEMORY[0x22AA9A450](v109, -1, -1);
    }

    else
    {
    }

    v272 = *v276;
    (v272)(v229, v91);
    v252 = *v253;
    v252(v235, 1, 1, v72);
    v110 = v246;
    sub_227667240();
    v111 = sub_227667FF0();
    result = v244(v110, v247);
    if (v111 < 0)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v111)
    {
      v255 = 0;
      v112 = -INFINITY;
      v241 = v111;
      while (1)
      {
        sub_2274424B0(v68, v73);
        v115 = v274;
        WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v251, v274);
        sub_227442514(v73);
        sub_227442570(v115, v73);
        v116 = *(*(v73 + v72[15]) + 16);
        v117 = v260;
        sub_2274424B0(v73, v260);
        v118 = v271;
        v119 = sub_227433850(*(v117 + v72[8]));
        v120 = v118;
        v121 = sub_226F43CB8(v119);

        v122 = v246;
        sub_227667240();
        v123 = sub_227668090();
        result = v244(v122, v247);
        if (v123 < v116)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        if (v116 == v123)
        {
LABEL_45:

          v124 = v242;
          sub_227442570(v117, v242);
          v72 = v248;
          v252(v124, 0, 1, v248);
          v68 = v243;
          v73 = v250;
LABEL_46:
          v97 = (*v240)(v124, 1, v72) == 1;
          v271 = v120;
          if (v97)
          {
            sub_226E97D1C(v124, &qword_27D7BDB60, &unk_2276858B0);
            v125 = v237;
            sub_22766A630();
            v126 = sub_22766B380();
            v127 = sub_22766C8B0();
            if (os_log_type_enabled(v126, v127))
            {
              v128 = swift_slowAlloc();
              *v128 = 0;
              _os_log_impl(&dword_226E8E000, v126, v127, "Unable to greedily build scaffold for remaining days.", v128, 2u);
              v129 = v128;
              v91 = v275;
              MEMORY[0x22AA9A450](v129, -1, -1);
            }

            (v272)(v125, v91);
            v113 = v73;
          }

          else
          {
            v155 = v238;
            sub_227442570(v124, v238);
            v156 = *(v270 + v236);
            sub_227137238(v155, v239);
            v158 = v157;
            sub_227442514(v73);
            if (v112 < v158)
            {
              v159 = v235;
              sub_226E97D1C(v235, &qword_27D7BDB60, &unk_2276858B0);
              sub_227442570(v155, v159);
              v252(v159, 0, 1, v72);
              v112 = v158;
              goto LABEL_42;
            }

            v113 = v155;
          }

          sub_227442514(v113);
          goto LABEL_42;
        }

        v259 = v255 == 0;
        LODWORD(v267) = v255 != 0;
        v130 = 7889261;
        if (v255)
        {
          v130 = 0x676E696C706D6173;
        }

        v258 = v130;
        v131 = 0xE300000000000000;
        if (v255)
        {
          v131 = 0xE800000000000000;
        }

        v257 = v131;
        v132 = v269;
        v54 = v272;
        v268 = v121;
        v273 = v123;
        while (1)
        {
          if (v116 >= v123)
          {
            __break(1u);
            goto LABEL_88;
          }

          if (!sub_22718C954(v116, v121))
          {
            sub_22766A630();
            v150 = sub_22766B380();
            v151 = sub_22766C8B0();
            if (os_log_type_enabled(v150, v151))
            {
              v152 = swift_slowAlloc();
              *v152 = v264;
              *(v152 + 4) = v116;
              _os_log_impl(&dword_226E8E000, v150, v151, "Adding an unscheduledDay day for day=%ld", v152, 0xCu);
              v153 = v152;
              v91 = v275;
              MEMORY[0x22AA9A450](v153, -1, -1);
            }

            (v54)(v132, v91);
            v133 = v274;
            WorkoutPlanGenerationScaffold.withUnscheduledDay()(v274);
            goto LABEL_56;
          }

          v134 = v261;
          sub_22766A630();
          v135 = sub_22766B380();
          v136 = sub_22766C8B0();
          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            *v137 = v264;
            *(v137 + 4) = v116;
            _os_log_impl(&dword_226E8E000, v135, v136, "Determining next daily schedule for day=%ld", v137, 0xCu);
            v138 = v137;
            v91 = v275;
            MEMORY[0x22AA9A450](v138, -1, -1);
          }

          v139 = v272;
          (v272)(v134, v91);
          v140 = v262;
          sub_22766A630();
          v141 = sub_22766B380();
          v142 = sub_22766C8B0();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v271 = v120;
            v144 = v143;
            v145 = swift_slowAlloc();
            v277 = v145;
            *v144 = v256;
            v146 = sub_226E97AE8(v258, v257, &v277);

            *(v144 + 4) = v146;
            *(v144 + 12) = 1024;
            *(v144 + 14) = v259;
            _os_log_impl(&dword_226E8E000, v141, v142, "Sampling mode set to %s since isFirstAttempt=%{BOOL}d", v144, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v145);
            v147 = v265;
            MEMORY[0x22AA9A450](v145, -1, -1);
            MEMORY[0x22AA9A450](v144, -1, -1);

            v148 = v140;
            v120 = v271;
            v54 = v272;
            v117 = v260;
            (v272)(v148, v275);
            v149 = v263;
            v133 = v274;
          }

          else
          {

            v139(v140, v91);
            v149 = v263;
            v133 = v274;
            v54 = v139;
            v147 = v265;
          }

          LOBYTE(v277) = v267;
          v154 = sub_22743A8A4(v117, v266, &v277, v147);
          v132 = v269;
          if (v120)
          {
            break;
          }

          WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v154, v133);

          v91 = v275;
          v121 = v268;
LABEL_56:
          ++v116;
          sub_227442514(v117);
          sub_227442570(v133, v117);
          v123 = v273;
          if (v273 == v116)
          {
            goto LABEL_45;
          }
        }

        v277 = v120;
        v160 = v120;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
        v161 = v234;
        v162 = swift_dynamicCast();
        v68 = v243;
        v72 = v248;
        v73 = v250;
        v124 = v242;
        if (v162)
        {
          v163 = (*v232)(v149, v161);
          if (v163 == v233)
          {
            sub_227442514(v260);

            v252(v124, 1, 1, v72);
            v120 = 0;
            v91 = v275;
            goto LABEL_46;
          }

          (*v213)(v149, v161);
        }

        swift_willThrow();
        sub_227442514(v260);
        v277 = v120;
        v164 = v120;
        v165 = v231;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v271 = v120;
          sub_226E97D1C(v235, &qword_27D7BDB60, &unk_2276858B0);

          sub_227442514(v73);
LABEL_96:

          return v54;
        }

        v166 = (*v232)(v165, v161);
        if (v166 != v233)
        {
          v271 = v120;
          sub_226E97D1C(v235, &qword_27D7BDB60, &unk_2276858B0);

          sub_227442514(v73);
          (*v213)(v165, v161);
          goto LABEL_96;
        }

        v167 = v230;
        sub_22766A630();
        v168 = sub_22766B380();
        v169 = sub_22766C8B0();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          *v170 = v264;
          *(v170 + 4) = v255;
          _os_log_impl(&dword_226E8E000, v168, v169, "Rollout %ld unsuccessful, continuing...", v170, 0xCu);
          MEMORY[0x22AA9A450](v170, -1, -1);
        }

        v91 = v275;
        (v272)(v167, v275);
        sub_227442514(v73);

        v271 = 0;
LABEL_42:
        v114 = v249;
        if (++v255 == v241)
        {
          goto LABEL_81;
        }
      }
    }

    v112 = -INFINITY;
    v114 = v249;
LABEL_81:
    v171 = v235;
    v172 = v227;
    sub_226E93170(v235, v227, &qword_27D7BDB60, &unk_2276858B0);
    if ((*v240)(v172, 1, v72) == 1)
    {
      sub_226E97D1C(v171, &qword_27D7BDB60, &unk_2276858B0);

      v95 = v172;
      v96 = v228;
    }

    else
    {
      sub_227442570(v172, v114);
      if (v112 == v93)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0A8, &qword_2276839F8);
        v173 = *(v222 + 72);
        v174 = (*(v222 + 80) + 32) & ~*(v222 + 80);
        v175 = swift_allocObject();
        *(v175 + 16) = v210;
        v176 = *(v223 + 48);
        *(v175 + v174) = v251;
        sub_2274424B0(v249, v175 + v174 + v176);
        v277 = v219;

        v177 = v175;
        v91 = v275;
        sub_227460ADC(v177);
        v178 = v277;

        v219 = v178;
        v114 = v249;
      }

      else if (v93 < v112)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0A8, &qword_2276839F8);
        v179 = *(v222 + 72);
        v180 = (*(v222 + 80) + 32) & ~*(v222 + 80);
        v181 = swift_allocObject();
        *(v181 + 16) = v210;
        v182 = (v181 + v180);
        v91 = v275;
        v183 = *(v223 + 48);
        *v182 = v251;
        sub_2274424B0(v249, v182 + v183);
        v93 = v112;
        v219 = v181;
        v114 = v249;
      }

      v96 = v228;

      sub_227442514(v114);
      v95 = v235;
    }

    result = sub_226E97D1C(v95, &qword_27D7BDB60, &unk_2276858B0);
    v92 = v96;
    v97 = v96 == v220;
    v98 = v234;
  }

  while (!v97);

  v195 = v219;
  v196 = *(v219 + 2);
  if (!v196)
  {

    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210]);
    v54 = swift_allocError();
    (*(v224 + 104))(v206, v233, v98);
LABEL_93:
    v271 = v54;
    swift_willThrow();

    return v54;
  }

  result = sub_2274423E8(v196);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_113;
  }

  v197 = v217;
  v198 = v216;
  v199 = v223;
  v200 = v215;
  v201 = v214;
  v202 = v218;
  if (result >= *(v195 + 2))
  {
    goto LABEL_114;
  }

  sub_226E93170(&v195[((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * result], v218, &qword_27D7BD0B0, &unk_227686430);

  if (v93 > a7)
  {

    sub_226E93170(v202, v201, &qword_27D7BD0B0, &unk_227686430);
    v203 = v202;
    v54 = *v201;
    v204 = *(v199 + 48);
    sub_226E95D18(v203, v200, &qword_27D7BD0B0, &unk_227686430);
    v205 = *v200;

    sub_227442570(v200 + *(v199 + 48), v197);
    sub_227442514(v201 + v204);
    return v54;
  }

  v207 = v248[15];
  v208 = *(v198 + v207);
  v209 = *(*(v68 + v207) + 16);
  if (v209 < *(v208 + 16))
  {
    v54 = *(v208 + 8 * v209 + 32);

    sub_226E97D1C(v218, &qword_27D7BD0B0, &unk_227686430);
    sub_2274424B0(v198, v197);
    return v54;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_22743CBB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2276681F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v17 = 1;
    v18 = a2;
    while (1)
    {
      v19 = v17 * a1;
      if ((v17 * a1) >> 64 != (v17 * a1) >> 63)
      {
        break;
      }

      v17 *= a1;
      if (!--v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v19 = 1;
LABEL_8:
  v46 = v14;
  sub_22766A630();

  v45 = v16;
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();

  v44 = v21;
  v22 = os_log_type_enabled(v20, v21);
  v23 = &unk_27D7CE000;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v43 = v10;
    v25 = v24;
    v41 = swift_slowAlloc();
    v47 = v41;
    *v25 = 136315906;
    v26 = *(v3 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_scoringMode);
    v27 = sub_227668770();
    v42 = v11;
    v29 = a2;
    v30 = v7;
    v31 = sub_226E97AE8(v27, v28, &v47);

    *(v25 + 4) = v31;
    v7 = v30;
    a2 = v29;
    v23 = &unk_27D7CE000;
    *(v25 + 12) = 2048;
    *(v25 + 14) = a1;
    *(v25 + 22) = 2048;
    *(v25 + 24) = a2;
    *(v25 + 32) = 2048;
    *(v25 + 34) = v19;
    _os_log_impl(&dword_226E8E000, v20, v44, "[Algorithm] SearchSpace %s splits:%ld depth:%ld = %ld combinations", v25, 0x2Au);
    v32 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v33 = v25;
    v10 = v43;
    MEMORY[0x22AA9A450](v33, -1, -1);

    (*(v46 + 8))(v45, v42);
  }

  else
  {

    (*(v46 + 8))(v45, v11);
  }

  v34 = *(v3 + v23[113]);
  v35 = sub_227668780();
  if (v35 == sub_227668780())
  {
    v36 = sub_227665ED0();
    sub_227667240();
    v37 = sub_227668110();
    (*(v7 + 8))(v10, v6);
    if (v37 <= v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = v37;
    }

    v39 = v38 < v19;
  }

  else
  {
    if (sub_227665EC0() < a2)
    {
      return 0;
    }

    v39 = sub_227665ED0() < v19;
  }

  return !v39;
}

uint64_t sub_22743CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v152 = a2;
  v136 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v134 = *(v8 - 8);
  v9 = *(v134 + 64);
  MEMORY[0x28223BE20](v8);
  v135 = v131 - v10;
  v11 = sub_227667370();
  v147 = *(v11 - 8);
  v12 = *(v147 + 64);
  MEMORY[0x28223BE20](v11);
  v149 = v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276627D0();
  v145 = *(v14 - 8);
  v146 = v14;
  v15 = *(v145 + 64);
  MEMORY[0x28223BE20](v14);
  v144 = v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v138 = v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v143 = v131 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v137 = (v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v140 = v131 - v26;
  v150 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v27 = *(*(v150 - 1) + 64);
  v28 = MEMORY[0x28223BE20](v150);
  v139 = v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v151 = v131 - v30;
  v141 = sub_22766B390();
  v31 = *(v141 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v141);
  v34 = v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();

  v35 = sub_22766B380();
  v36 = sub_22766C8B0();
  v153 = a3;

  v37 = os_log_type_enabled(v35, v36);
  v133 = v8;
  v148 = v11;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v132 = a4;
    v39 = v38;
    v40 = swift_slowAlloc();
    v156 = v40;
    *v39 = 136315138;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
    v42 = MEMORY[0x22AA98660](v153, v41);
    v44 = sub_226E97AE8(v42, v43, &v156);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_226E8E000, v35, v36, "[Algorithm] Strategy - local-search: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AA9A450](v40, -1, -1);
    v45 = v39;
    a4 = v132;
    MEMORY[0x22AA9A450](v45, -1, -1);
  }

  (*(v31 + 8))(v34, v141);
  v46 = v150;
  v47 = v152;
  v48 = v142;
  v49 = sub_227433850(*(v152 + v150[8]));
  v50 = sub_226F43CB8(v49);

  v51 = swift_allocObject();
  v52 = MEMORY[0x277D84F90];
  *(v51 + 16) = MEMORY[0x277D84F90];
  v157 = v52;
  sub_22743DDA8(0, &v157, v5, v47, v51, v50, v153);

  swift_beginAccess();
  v53 = v151;
  sub_227434F24(v151, *(v51 + 16), a4);
  if (v48)
  {
  }

  v153 = 0;
  v131[1] = v51;
  v55 = *(v53 + v46[15]);
  v56 = *(v55 + 16);
  v57 = MEMORY[0x277D84F90];
  if (v56)
  {
    v155 = MEMORY[0x277D84F90];
    sub_226F1FD08(0, v56, 0);
    v58 = 0;
    v57 = v155;
    v152 = v55 + 32;
    v59 = v55;
    while (v58 < *(v55 + 16))
    {
      v60 = *(v152 + 8 * v58);

      if (sub_227440298(v61))
      {
        v62 = sub_2274404C0(v60);
      }

      else
      {
        v154 = v60;

        v48 = v153;
        sub_227443E04(&v154);
        if (v48)
        {
          goto LABEL_55;
        }

        v153 = 0;

        v62 = v154;
      }

      v155 = v57;
      v64 = *(v57 + 16);
      v63 = *(v57 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_226F1FD08((v63 > 1), v64 + 1, 1);
        v57 = v155;
      }

      ++v58;
      *(v57 + 16) = v64 + 1;
      *(v57 + 8 * v64 + 32) = v62;
      v55 = v59;
      if (v56 == v58)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_51;
  }

LABEL_15:
  v66 = v145;
  v65 = v146;
  v67 = v140;
  (*(v145 + 56))(v140, 1, 1, v146);
  (*(v147 + 56))(v143, 1, 1, v148);
  v68 = v137;
  sub_226E93170(v67, v137, &unk_27D7BB9D0, &qword_227671550);
  v69 = *(v66 + 48);
  if (v69(v68, 1, v65) == 1)
  {
    (*(v66 + 16))(v144, v151, v65);
    if (v69(v68, 1, v65) != 1)
    {
      sub_226E97D1C(v68, &unk_27D7BB9D0, &qword_227671550);
    }
  }

  else
  {
    (*(v66 + 32))(v144, v68, v65);
  }

  v71 = v150;
  v70 = v151;
  v72 = *(v151 + v150[5]);
  v73 = v150[8];
  v137 = *(v151 + v150[7]);
  v142 = *(v151 + v73);
  v74 = v150[10];
  v132 = *(v151 + v150[9]);
  v141 = *(v151 + v74);
  v152 = *(v151 + v150[13]);
  v75 = v138;
  sub_226E93170(v143, v138, &qword_27D7BB3E8, &unk_227686370);
  v77 = v147;
  v76 = v148;
  v78 = *(v147 + 48);
  if (v78(v75, 1, v148) == 1)
  {
    v79 = v70 + v71[14];
    v80 = v149;
    (*(v77 + 16))(v149, v79, v76);
    v81 = v78(v75, 1, v76);

    if (v81 != 1)
    {
      sub_226E97D1C(v75, &qword_27D7BB3E8, &unk_227686370);
    }
  }

  else
  {
    v80 = v149;
    (*(v77 + 32))(v149, v75, v76);
  }

  v82 = v150;
  v83 = *(v151 + v150[16]);
  v84 = *(v151 + v150[12]);
  v85 = v139;
  (*(v145 + 16))(v139, v144, v146);
  *&v85[v82[5]] = v72;

  v86 = sub_226F491E4(v72);
  *&v85[v82[6]] = v86;
  *&v85[v82[7]] = v137;
  *&v85[v82[8]] = v142;
  *&v85[v82[9]] = v132;
  v85[v82[12]] = v84;
  *&v85[v82[10]] = v141;
  *&v85[v82[13]] = v152;
  (*(v77 + 16))(&v85[v82[14]], v80, v76);
  *&v85[v82[15]] = v57;
  *&v85[v82[16]] = v83;
  v48 = (v86 + 56);
  v87 = 1 << *(v86 + 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & *(v86 + 56);
  v90 = (v87 + 63) >> 6;
  v132 = v83;

  v152 = v86;

  v137 = 0;
  v91 = 0;
  v138 = MEMORY[0x277D84F98];
  v92 = v80;
  v141 = v90;
  v142 = v48;
  if (v89)
  {
    while (1)
    {
LABEL_30:
      v94 = __clz(__rbit64(v89));
      v89 &= v89 - 1;
      v95 = *(v152 + 48) + 24 * (v94 | (v91 << 6));
      v96 = *v95;
      v97 = *(v95 + 8);
      v98 = *(v95 + 16);
      sub_226EB396C(*v95, v97, *(v95 + 16));
      v99 = sub_2276672C0();
      if (!*(v99 + 16))
      {
        sub_226EB2DFC(v96, v97, v98);
LABEL_39:

        v92 = v149;
        goto LABEL_40;
      }

      v100 = sub_226F491D8(v96, v97, v98);
      v102 = v101;
      sub_226EB2DFC(v96, v97, v98);
      if ((v102 & 1) == 0)
      {
        goto LABEL_39;
      }

      v103 = *(v134 + 72);
      v104 = *(v99 + 56) + v103 * v100;
      v105 = v135;
      sub_226E93170(v104, v135, &qword_27D7B88C0, &unk_22767A720);

      sub_226EA9E3C(v137);
      v106 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155 = v106;
      v109 = sub_226F3ADC4(v105);
      v110 = *(v106 + 16);
      v111 = (v108 & 1) == 0;
      v112 = v110 + v111;
      if (__OFADD__(v110, v111))
      {
        goto LABEL_52;
      }

      v113 = v108;
      v114 = *(v106 + 24);
      v92 = v149;
      if (v114 < v112)
      {
        break;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v115 = v149;
        sub_226FF2414();
        goto LABEL_36;
      }

      v118 = v155;
      if ((v108 & 1) == 0)
      {
LABEL_44:
        v119 = v92;
        v120 = v118;
        sub_227444F98(&v155);
        v121 = v155;
        v120[(v109 >> 6) + 8] |= 1 << v109;
        sub_226E93170(v135, v120[6] + v109 * v103, &qword_27D7B88C0, &unk_22767A720);
        *(v120[7] + 8 * v109) = v121;
        v122 = v120[2];
        v123 = __OFADD__(v122, 1);
        v124 = v122 + 1;
        if (v123)
        {
          goto LABEL_54;
        }

        v118 = v120;
        v120[2] = v124;
        v92 = v119;
      }

LABEL_46:
      v138 = v118;
      v125 = *(v118 + 56);
      v126 = *(v125 + 8 * v109);
      v123 = __OFADD__(v126, 1);
      v127 = v126 + 1;
      if (v123)
      {
        goto LABEL_53;
      }

      *(v125 + 8 * v109) = v127;
      sub_226E97D1C(v135, &qword_27D7B88C0, &unk_22767A720);
      v137 = sub_227444F98;
LABEL_40:
      v90 = v141;
      v48 = v142;
      if (!v89)
      {
        goto LABEL_26;
      }
    }

    v115 = v149;
    sub_226FE6DD4(v112, isUniquelyReferenced_nonNull_native);
    v116 = sub_226F3ADC4(v135);
    if ((v113 & 1) != (v117 & 1))
    {
      goto LABEL_56;
    }

    v109 = v116;
LABEL_36:
    v92 = v115;
    v118 = v155;
    if ((v113 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

LABEL_26:
  while (1)
  {
    v93 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v93 >= v90)
    {

      v128 = v150;
      v129 = v139;
      *&v139[v150[11]] = v138;
      v130 = sub_22746B5DC(v132);

      (*(v147 + 8))(v92, v148);
      (*(v145 + 8))(v144, v146);
      sub_226E97D1C(v143, &qword_27D7BB3E8, &unk_227686370);
      sub_226E97D1C(v140, &unk_27D7BB9D0, &qword_227671550);
      sub_227442514(v151);
      *(v129 + v128[17]) = v130;
      sub_227442570(v129, v136);
      sub_226EA9E3C(v137);
    }

    v89 = v48[v93];
    ++v91;
    if (v89)
    {
      v91 = v93;
      goto LABEL_30;
    }
  }

  __break(1u);
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
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22743DDA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v58 = a5;
  v12 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v54 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = sub_2276681F0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a3;
  sub_227667240();
  v26 = sub_227668090();
  (*(v22 + 8))(v25, v21);
  if (v26 == a1)
  {
    sub_2274424B0(a4, v20);
    v27 = *(*a2 + 16);
    if (v27)
    {
      v28 = *a2 + 32;
      do
      {
        if (*(*v28 + 16))
        {
          v29 = *v28;

          WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v30, v18);
        }

        else
        {
          WorkoutPlanGenerationScaffold.withUnscheduledDay()(v18);
        }

        sub_227442514(v20);
        sub_227442570(v18, v20);
        v28 += 8;
        --v27;
      }

      while (v27);
    }

LABEL_23:
    if (!WorkoutPlanGenerationScaffold.satisfiesHardConstraints()())
    {
      return sub_227442514(v20);
    }

    a7 = v54;
    sub_2274424B0(v20, v54);
    v43 = v58;
    swift_beginAccess();
    v33 = *(v43 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 16) = v33;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_25:
      v46 = v33[2];
      v45 = v33[3];
      if (v46 >= v45 >> 1)
      {
        v33 = sub_2273A5B90(v45 > 1, v46 + 1, 1, v33);
      }

      v33[2] = v46 + 1;
      sub_227442570(a7, v33 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46);
      *(v58 + 16) = v33;
      swift_endAccess();
      return sub_227442514(v20);
    }

LABEL_40:
    v33 = sub_2273A5B90(0, v33[2] + 1, 1, v33);
    *(v58 + 16) = v33;
    goto LABEL_25;
  }

  result = sub_22718C954(a1, v55);
  if ((result & 1) == 0)
  {
    v47 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_2273A58B0(0, v47[2] + 1, 1, v47);
    }

    v49 = v47[2];
    v48 = v47[3];
    if (v49 >= v48 >> 1)
    {
      v47 = sub_2273A58B0((v48 > 1), v49 + 1, 1, v47);
    }

    v47[2] = v49 + 1;
    v47[v49 + 4] = MEMORY[0x277D84F90];
    *a2 = v47;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      sub_22743DDA8(a1 + 1, a2, v57);
      v49 = *a2;
      if (*(*a2 + 16))
      {
        v50 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v51 = *(v49 + 16);
          if (v51)
          {
LABEL_37:
            v52 = v51 - 1;
            v53 = *(v49 + 8 * v52 + 32);
            *(v49 + 16) = v52;

            *a2 = v49;
            return result;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return result;
        }

LABEL_43:
        result = sub_2272EC574(v49);
        v49 = result;
        v51 = *(result + 16);
        if (v51)
        {
          goto LABEL_37;
        }

        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v56 = a4;
  v32 = *(a7 + 16);
  if (v32)
  {
    v33 = (a1 + 1);
    if (!__OFADD__(a1, 1))
    {
      v34 = *a2;
      for (i = 32; ; i += 8)
      {
        v36 = *(a7 + i);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2273A58B0(0, v34[2] + 1, 1, v34);
        }

        v38 = v34[2];
        v37 = v34[3];
        v20 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          v34 = sub_2273A58B0((v37 > 1), v38 + 1, 1, v34);
        }

        v34[2] = v20;
        v34[v38 + 4] = v36;
        *a2 = v34;
        sub_22743DDA8(v33, a2, v57);
        v34 = *a2;
        if (!*(*a2 + 16))
        {
          break;
        }

        v39 = *a2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v34[2];
          if (!v40)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v34 = sub_2272EC574(v34);
          v40 = v34[2];
          if (!v40)
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        v41 = v40 - 1;
        v42 = v34[v41 + 4];
        v34[2] = v41;

        *a2 = v34;
        if (!--v32)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  return result;
}

void sub_22743E304(uint64_t a1, uint64_t a2, char *a3)
{
  v78 = a2;
  v79 = a3;
  v4 = sub_227664EC0();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v67 - v24;
  sub_2274424B0(a1, &v67 - v24);
  v83 = v23;
  sub_2274424B0(v25, v23);
  sub_22766A630();
  sub_22766B370();
  v26 = *(v8 + 8);
  v76 = v8 + 8;
  v77 = v7;
  v75 = v26;
  v26(v13, v7);
  v27 = sub_2276692F0();
  v29 = v27;
  v30 = *(v27 + 16);
  if (!v30)
  {
    LODWORD(v82) = 0;
    v84 = MEMORY[0x277D84F90];
LABEL_25:

    sub_227442514(v83);
    sub_227442514(v25);
    if (v82)
    {
    }

    return;
  }

  v67 = v4;
  LODWORD(v82) = 0;
  v31 = 0;
  v32 = *(v14 + 32);
  v86 = v27 + 32;
  v87 = v32;
  v73 = v30 - 1;
  v84 = MEMORY[0x277D84F90];
  v33 = -INFINITY;
  *&v28 = 134217984;
  v69 = v28;
  while (1)
  {
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v34 = v14;
      v35 = v31 + 1;
      if (sub_22718CB74(*(v86 + v31), *&v25[v87]))
      {
        break;
      }

      WorkoutPlanGenerationScaffold.withUnscheduledDay()(v20);
      sub_227442514(v25);
      sub_227442570(v20, v25);
      ++v31;
      if (v30 == v35)
      {
        goto LABEL_25;
      }
    }

    sub_22766A630();
    v36 = sub_22766B380();
    v68 = sub_22766C8B0();
    if (os_log_type_enabled(v36, v68))
    {
      v37 = swift_slowAlloc();
      v72 = v36;
      v38 = v37;
      *v37 = v69;
      *(v37 + 4) = sub_227669310();
      _os_log_impl(&dword_226E8E000, v72, v68, "Determining daily schedule at day=%ld", v38, 0xCu);
      v39 = v38;
      v36 = v72;
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    v75(v81, v77);
    v40 = sub_227669310();
    v41 = v83;
    v42 = v85;
    v43 = sub_22743AF8C(v80, v25, v40, v83, v78, v79, v33);
    v85 = v42;
    if (v42)
    {
      break;
    }

    v45 = v43;
    v33 = v44;
    sub_227442514(v41);
    if (v82)
    {
    }

    sub_227442570(v80, v83);

    v47 = sub_227440298(v46);
    v72 = v45;
    if (v47)
    {
      v48 = sub_2274404C0(v45);

      v49 = v48;
    }

    else
    {
      v88 = v45;

      v50 = v85;
      sub_227443E04(&v88);
      v85 = v50;
      if (v50)
      {

        __break(1u);
        return;
      }

      v49 = v88;
    }

    v82 = v49;
    WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v49, v20);
    sub_227442514(v25);
    sub_227442570(v20, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_2273A58B0(0, v84[2] + 1, 1, v84);
    }

    v52 = v84[2];
    v51 = v84[3];
    if (v52 >= v51 >> 1)
    {
      v84 = sub_2273A58B0((v51 > 1), v52 + 1, 1, v84);
    }

    v53 = v84;
    v84[2] = v52 + 1;
    v53[v52 + 4] = v82;
    v14 = v34;
    v54 = *&v25[*(v34 + 64)];
    v88 = *&v25[*(v34 + 24)];

    v56 = sub_226F491E4(v55);
    sub_22746AB34(v56);
    v57 = *(v88 + 2);

    if (!v57)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE68, &qword_2276798D8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_227670CD0;
      *(v66 + 32) = v84;
      sub_227442514(v83);
      sub_227442514(v25);
      return;
    }

    LODWORD(v82) = 1;
    v74 = v72;
    if (v73 == v31++)
    {
      goto LABEL_25;
    }
  }

  v88 = v85;
  v59 = v85;
  v60 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v61 = v71;
  v62 = v67;
  if (!swift_dynamicCast())
  {
LABEL_35:
    sub_227442514(v83);
    sub_227442514(v25);
    goto LABEL_37;
  }

  v63 = v70;
  v64 = (*(v70 + 88))(v61, v62);
  v65 = v83;
  if (v64 == *MEMORY[0x277D511D0])
  {

    sub_227442514(v65);
    sub_227442514(v25);

    if (v82)
    {
    }

    return;
  }

  sub_227442514(v83);
  sub_227442514(v25);
  (*(v63 + 8))(v61, v62);
LABEL_37:

  if (v82)
  {
  }
}

uint64_t sub_22743EAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v94 = a2;
  v95 = a4;
  v6 = sub_22766B390();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = *(v91 + 64);
  MEMORY[0x28223BE20](v6);
  v96 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(a1 + 16);
  v93 = a1;
  if (!v99)
  {

    v9 = 0;
    goto LABEL_22;
  }

  v98 = a1 + 32;

  v9 = 0;
  v10 = 0;
  while (2)
  {
    v11 = *(v98 + 8 * v10);
    v101 = *(v11 + 16);
    if (!v101)
    {
      goto LABEL_3;
    }

    v100 = v10;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);

    v12 = 0;
    v13 = (v11 + 64);
    do
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v15 = *(v13 - 3);
      v14 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;

      sub_226EB396C(v14, v16, v17);
      sub_226EB396C(v14, v16, v17);
      sub_226EA9E3C(v9);
      v18 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = v18;
      v20 = sub_226F491D8(v14, v16, v17);
      v22 = *(v18 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_73;
      }

      v26 = v21;
      if (*(v18 + 24) < v25)
      {
        sub_226FF6748(v25, isUniquelyReferenced_nonNull_native);
        a3 = v102;
        v20 = sub_226F491D8(v14, v16, v17);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_81;
        }

LABEL_13:
        if (v26)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        a3 = v18;
        goto LABEL_13;
      }

      v29 = v20;
      sub_226FF6744(v20);
      v20 = v29;
      a3 = v102;
      if (v26)
      {
LABEL_14:
        v28 = v20;
        sub_226EB2DFC(v14, v16, v17);
        v20 = v28;
        goto LABEL_18;
      }

LABEL_16:
      *(a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = *(a3 + 48) + 24 * v20;
      *v30 = v14;
      *(v30 + 8) = v16;
      *(v30 + 16) = v17;
      *(*(a3 + 56) + 8 * v20) = 0;
      v31 = *(a3 + 16);
      v24 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v24)
      {
        goto LABEL_75;
      }

      *(a3 + 16) = v32;
LABEL_18:
      v33 = *(a3 + 56);
      v34 = *(v33 + 8 * v20);
      v24 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v24)
      {
        goto LABEL_74;
      }

      ++v12;
      *(v33 + 8 * v20) = v35;

      sub_226EB2DFC(v14, v16, v17);
      v13 += 40;
      v9 = sub_227444F98;
    }

    while (v101 != v12);

    v9 = sub_227444F98;
    v10 = v100;
LABEL_3:
    if (++v10 != v99)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v36 = 0;
  v37 = 0;
  v38 = 1 << *(a3 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(a3 + 64);
  v41 = (v38 + 63) >> 6;
  v42 = v96;
  do
  {
    if (v40)
    {
      v43 = v36;
    }

    else
    {
      do
      {
        v43 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_76;
        }

        if (v43 >= v41)
        {
          goto LABEL_34;
        }

        v40 = *(a3 + 64 + 8 * v43);
        ++v36;
      }

      while (!v40);
      v36 = v43;
    }

    v44 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v45 = *(*(a3 + 56) + ((v43 << 9) | (8 * v44))) == 0;
    v24 = __OFADD__(v37, v45);
    v37 += v45;
  }

  while (!v24);
  __break(1u);
LABEL_34:
  if (!v37)
  {
    sub_22766A630();
    v71 = v93;

    v72 = sub_22766B380();
    v73 = sub_22766C8B0();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v102 = v75;
      *v74 = 136315138;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
      v77 = MEMORY[0x22AA98660](v71, v76);
      v79 = sub_226E97AE8(v77, v78, &v102);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_226E8E000, v72, v73, "Partial kernel has set cover. partialKernel=%s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x22AA9A450](v75, -1, -1);
      MEMORY[0x22AA9A450](v74, -1, -1);
    }

    (*(v91 + 8))(v42, v92);

    result = sub_226EA9E3C(v9);
    v81 = 2;
LABEL_71:
    *v95 = v81;
    return result;
  }

  v100 = v37;
  v101 = a3;
  v46 = *(v94 + 16);
  if (v46)
  {
    v47 = 0;
    v48 = (v94 + 64);
    while (1)
    {
      v50 = *(v48 - 3);
      v49 = *(v48 - 2);
      v51 = *(v48 - 1);
      v52 = *v48;

      sub_226EB396C(v49, v51, v52);
      sub_226EB396C(v49, v51, v52);
      sub_226EA9E3C(v47);
      v53 = v101;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v53;
      v55 = sub_226F491D8(v49, v51, v52);
      v57 = *(v53 + 16);
      v58 = (v56 & 1) == 0;
      v24 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v24)
      {
        goto LABEL_78;
      }

      v60 = v56;
      if (*(v53 + 24) < v59)
      {
        break;
      }

      if (v54)
      {
        goto LABEL_42;
      }

      v64 = v55;
      sub_226FF6744(v55);
      v55 = v64;
      v101 = v102;
      if ((v60 & 1) == 0)
      {
LABEL_45:
        v63 = v101;
        *(v101 + 8 * (v55 >> 6) + 64) |= 1 << v55;
        v65 = v63[6] + 24 * v55;
        *v65 = v49;
        *(v65 + 8) = v51;
        *(v65 + 16) = v52;
        *(v63[7] + 8 * v55) = 0;
        v66 = v63[2];
        v24 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v24)
        {
          goto LABEL_80;
        }

        v63[2] = v67;
        goto LABEL_47;
      }

LABEL_43:
      v62 = v55;
      sub_226EB2DFC(v49, v51, v52);
      v55 = v62;
      v63 = v101;
LABEL_47:
      v68 = v63[7];
      v69 = *(v68 + 8 * v55);
      v24 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v24)
      {
        goto LABEL_79;
      }

      *(v68 + 8 * v55) = v70;

      sub_226EB2DFC(v49, v51, v52);
      v48 += 40;
      v47 = sub_227444F98;
      if (!--v46)
      {
        goto LABEL_54;
      }
    }

    sub_226FF6748(v59, v54);
    v101 = v102;
    v55 = sub_226F491D8(v49, v51, v52);
    if ((v60 & 1) != (v61 & 1))
    {
      goto LABEL_82;
    }

LABEL_42:
    if ((v60 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v47 = 0;
LABEL_54:
  v82 = 0;
  v83 = 0;
  v84 = 1 << *(v101 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v101 + 64);
  v87 = (v84 + 63) >> 6;
  while (v86)
  {
    v88 = v82;
LABEL_63:
    v89 = __clz(__rbit64(v86));
    v86 &= v86 - 1;
    v90 = *(*(v101 + 56) + ((v88 << 9) | (8 * v89))) == 0;
    v24 = __OFADD__(v83, v90);
    v83 += v90;
    if (v24)
    {
      __break(1u);
LABEL_66:

      sub_226EA9E3C(v9);
      result = sub_226EA9E3C(v47);
      if (v83 < v100)
      {
        v81 = 1;
      }

      else
      {
        v81 = 2;
      }

      if (!v83)
      {
        v81 = 0;
      }

      goto LABEL_71;
    }
  }

  while (1)
  {
    v88 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v88 >= v87)
    {
      goto LABEL_66;
    }

    v86 = *(v101 + 64 + 8 * v88);
    ++v82;
    if (v86)
    {
      v82 = v88;
      goto LABEL_63;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  sub_22766D220();
  __break(1u);
LABEL_82:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22743F2C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a3;
  v73 = a2;
  v70 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v6 = *(*(v70 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v70);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v69 - v10;
  v12 = sub_2276681F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();
  sub_22766B370();
  (*(v18 + 8))(v21, v17);
  v22 = a1[2];
  if (!v22 || (sub_227667240(), v23 = sub_227667F10(), (*(v13 + 8))(v16, v12), v23 >= v22))
  {

    return a1;
  }

  v78 = v4;
  v24 = 0;
  v77 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils;
  v72 = a1 + 4;
  v25 = MEMORY[0x277D84F90];
  v26 = 0x8000000000000000;
  v71 = v22;
  do
  {
    v75 = v24;
    v76 = v25;
    v27 = v72[v24];
    v28 = *(v27 + 16);
    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
      v29 = swift_allocObject();
      v30 = _swift_stdlib_malloc_size(v29);
      v31 = v30 - 32;
      if (v30 < 32)
      {
        v31 = v30 - 25;
      }

      v29[2] = v28;
      v29[3] = 2 * (v31 >> 3);
      v32 = v27;
      v33 = *(v27 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v28 - 1;
        v36 = v33;
        while ((v33 ^ v34) != 0x8000000000000000)
        {
          v37 = v36 - 1;
          if (v36 - 1 < 0 || v37 >= v33)
          {
            goto LABEL_52;
          }

          v29[v34 + 4] = *(v32 + 24 + 8 * v36);
          if (v35 == v34)
          {

            v27 = v32;
            goto LABEL_17;
          }

          ++v34;
          v36 = v37;
          if (!v37)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_17:
    sub_2274424B0(v73, v11);
    v74 = v27;

    v38 = sub_2276692F0();
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = 0;
      v41 = *(v70 + 32);
      v42 = 0.0;
      while (v40 < *(v38 + 16))
      {
        if (sub_22718CB74(*(v38 + v40 + 32), *&v11[v41]))
        {
          if (!v29[2])
          {
            goto LABEL_29;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_2272EC574(v29);
          }

          v43 = v29[2];
          v44 = v78;
          if (!v43)
          {
            goto LABEL_54;
          }

          v45 = v43 - 1;
          v46 = v29[v45 + 4];
          v29[2] = v45;
          v47 = *(v44 + v77);
          v42 = v42 + sub_22713824C(v46, v11);
          WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v46, v9);
        }

        else
        {
          WorkoutPlanGenerationScaffold.withUnscheduledDay()(v9);
        }

        ++v40;
        sub_227442514(v11);
        sub_227442570(v9, v11);
        if (v39 == v40)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_53;
    }

    v42 = 0.0;
LABEL_29:

    v25 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v71;
    v50 = v75;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_2273A5D10(0, v25[2] + 1, 1, v25);
    }

    v52 = v25[2];
    v51 = v25[3];
    if (v52 >= v51 >> 1)
    {
      v25 = sub_2273A5D10((v51 > 1), v52 + 1, 1, v25);
    }

    v24 = v50 + 1;
    v25[2] = v52 + 1;
    v53 = &v25[2 * v52];
    *(v53 + 4) = v74;
    v53[5] = v42;
    sub_227442514(v11);
  }

  while (v24 != v49);
  v79 = v25;

  v26 = 0;
  sub_227441430(&v79);
  v55 = sub_2273FC470(v69, v79);
  v59 = v58 >> 1;
  v60 = (v58 >> 1) - v57;
  if (__OFSUB__(v58 >> 1, v57))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v26 = v55;
  if (!v60)
  {
LABEL_50:

    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  v61 = v56;
  v62 = v57;
  v79 = MEMORY[0x277D84F90];
  sub_226F1FD48(0, v60 & ~(v60 >> 63), 0);
  if ((v60 & 0x8000000000000000) == 0)
  {
    a1 = v79;
    if (v62 <= v59)
    {
      v63 = v59;
    }

    else
    {
      v63 = v62;
    }

    v64 = v63 - v62;
    v65 = (v61 + 16 * v62);
    while (v64)
    {
      v66 = *v65;
      v79 = a1;
      v68 = a1[2];
      v67 = a1[3];

      if (v68 >= v67 >> 1)
      {
        sub_226F1FD48((v67 > 1), v68 + 1, 1);
        a1 = v79;
      }

      a1[2] = v68 + 1;
      a1[v68 + 4] = v66;
      --v64;
      v65 += 2;
      if (!--v60)
      {

        swift_unknownObjectRelease();
        return a1;
      }
    }

    goto LABEL_55;
  }

LABEL_57:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22743F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  v7 = sub_2276681F0();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v16 = *(v15 + 24);
  v63 = a1;
  v17 = sub_227433A74(*(a1 + v16));
  if (*(v17 + 16))
  {
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
    v19 = sub_22766D010();
    v17 = v18;
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
  }

  v66[0] = v19;
  sub_227441044(v17, 1, v66);
  v20 = v66[0];
  sub_22766A630();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v21 = *(*(v63 + *(v15 + 32)) + 16);
  v22 = 2;
  if (v21 < 2)
  {
    v22 = *(*(v63 + *(v15 + 32)) + 16);
  }

  v23 = MEMORY[0x277D84F90];
  if (v21 <= 5)
  {
    v24 = v22;
  }

  else
  {
    v24 = 3;
  }

  v65 = MEMORY[0x277D84F90];
  v66[0] = MEMORY[0x277D84F90];
  sub_22743FF70(0, v24, v66, &v65, a2, v4, v20);

  v25 = v65;
  v26 = v65[2];
  if (v26)
  {
    v55 = v24;
    v56 = v20;
    v57 = a2;
    v59 = v4;
    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    v29 = 4;
    v64 = xmmword_227670CD0;
    do
    {
      v31 = v25[v29];
      v32 = *(v31 + 16);
      if (v27 < v32)
      {
        v30 = v25[v29];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE68, &qword_2276798D8);
        v28 = swift_allocObject();
        *(v28 + 16) = v64;
        v27 = v32;
        *(v28 + 32) = v31;
      }

      else if (v32 == v27)
      {
        v33 = v25[v29];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_2273A5BB8(0, *(v28 + 16) + 1, 1, v28);
        }

        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          v28 = sub_2273A5BB8((v34 > 1), v35 + 1, 1, v28);
        }

        *(v28 + 16) = v35 + 1;
        *(v28 + 8 * v35 + 32) = v31;
      }

      ++v29;
      --v26;
    }

    while (v26);

    if (v27 >= 2)
    {
      v25 = v28;
    }

    v4 = v59;
    v36 = v60;
    v20 = v56;
    v37 = v25[2];
    sub_227667240();
    v38 = sub_227667F40();
    (*(v61 + 8))(v36, v62);
    a2 = v57;
    if (v38 >= v37)
    {
      v23 = sub_22743F2C4(v25, v63, v58);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v24 = v55;
  }

  if (*(v23 + 16) || v24 != 2)
  {
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v65 = MEMORY[0x277D84F90];
    v66[0] = MEMORY[0x277D84F90];
    sub_22743FF70(0, 3, v66, &v65, a2, v4, v20);

    v39 = v65;
    v40 = v65[2];
    if (v40)
    {
      v59 = v4;
      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      v43 = 4;
      v64 = xmmword_227670CD0;
      do
      {
        v45 = v39[v43];
        v46 = *(v45 + 16);
        if (v41 < v46)
        {
          v44 = v39[v43];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE68, &qword_2276798D8);
          v42 = swift_allocObject();
          *(v42 + 16) = v64;
          v41 = v46;
          *(v42 + 32) = v45;
        }

        else if (v46 == v41)
        {
          v47 = v39[v43];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_2273A5BB8(0, *(v42 + 16) + 1, 1, v42);
          }

          v49 = *(v42 + 16);
          v48 = *(v42 + 24);
          if (v49 >= v48 >> 1)
          {
            v42 = sub_2273A5BB8((v48 > 1), v49 + 1, 1, v42);
          }

          *(v42 + 16) = v49 + 1;
          *(v42 + 8 * v49 + 32) = v45;
        }

        ++v43;
        --v40;
      }

      while (v40);

      if (v41 >= 2)
      {
        v39 = v42;
      }

      v51 = v60;
      v52 = v39[2];
      sub_227667240();
      v53 = sub_227667F40();
      (*(v61 + 8))(v51, v62);
      if (v53 >= v52)
      {
        v23 = sub_22743F2C4(v39, v63, v58);
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }
    }
  }

  return v23;
}

uint64_t sub_22743FF70(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a4;
  v36 = sub_2276681F0();
  v12 = *(*(v36 - 8) + 64);
  result = MEMORY[0x28223BE20](v36);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  if (a1 < a2)
  {
    v17 = *(a5 + 16);
    if (v17)
    {
      v34 = (v14 + 8);
      v35 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration;
      v18 = 32;
      v33 = xmmword_227670CD0;
      do
      {
        v19 = *(a5 + v18);
        v20 = *a3;

        sub_22743EAF0(v20, v19, a7, &v42);
        if (v42)
        {
          if (v42 == 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_2273A58B0(0, v20[2] + 1, 1, v20);
            }

            v22 = v20[2];
            v21 = v20[3];
            if (v22 >= v21 >> 1)
            {
              v20 = sub_2273A58B0((v21 > 1), v22 + 1, 1, v20);
            }

            v20[2] = v22 + 1;
            v20[v22 + 4] = v19;
            *a3 = v20;
            result = sub_22743FF70(v37 + 1, v38, a3, v40, a5, v39, a7);
            v23 = *a3;
            if (!*(*a3 + 16))
            {
              __break(1u);
              return result;
            }

            v24 = *a3;
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v25 = v23[2];
              if (!v25)
              {
                goto LABEL_22;
              }
            }

            else
            {
              result = sub_2272EC574(v23);
              v23 = result;
              v25 = *(result + 16);
              if (!v25)
              {
LABEL_22:
                __break(1u);
                return result;
              }
            }

            v26 = v25 - 1;
            v27 = v23[v26 + 4];
            v23[2] = v26;

            *a3 = v23;
          }

          else
          {
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
          inited = swift_initStackObject();
          *(inited + 16) = v33;
          *(inited + 32) = v19;
          v41 = v20;

          sub_227460998(inited);
          v29 = v41;
          v30 = *v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2273A5BB8(0, v30[2] + 1, 1, v30);
          }

          v32 = v30[2];
          v31 = v30[3];
          if (v32 >= v31 >> 1)
          {
            v30 = sub_2273A5BB8((v31 > 1), v32 + 1, 1, v30);
          }

          v30[2] = v32 + 1;
          v30[v32 + 4] = v29;
          *v40 = v30;
          sub_227667240();
          sub_227667F40();
          result = (*v34)(v16, v36);
        }

        v18 += 8;
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

uint64_t sub_227440298(uint64_t a1)
{
  result = Array<A>.modalityCounts.getter(a1);
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v7 >= v6)
        {
          v9 = 0;
          goto LABEL_13;
        }

        v5 = *(result + 64 + 8 * v7);
        ++v2;
        if (v5)
        {
          v2 = v7;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (*(*(result + 56) + ((v7 << 9) | (8 * v8))) == 2);
  v9 = 1;
LABEL_13:
  if (*(result + 16) != 2 || v9)
  {

    goto LABEL_16;
  }

  v11 = result;
  v12 = sub_2274CD858(2, 0);
  v13 = sub_2274CF83C(&v25, v12 + 4, 2, v11);
  result = sub_226EBB21C();
  if (v13 == 2)
  {
    v14 = v12[2];
    if (v14)
    {
      v15 = v12[4];
      v16 = v12[5];
      v17 = *(v12 + 48);
      v18 = &v12[3 * v14 + 4];
      v19 = *(v18 - 24);
      v20 = *(v18 - 16);
      v21 = *(v18 - 8);
      sub_226EB396C(v15, v16, *(v12 + 48));
      sub_226EB396C(v19, v20, v21);

      v22 = sub_227667250();
      v23 = sub_22718C9FC(v15, v16, v17, v22);

      sub_226EB2DFC(v15, v16, v17);
      v24 = sub_227667250();
      LOBYTE(v15) = sub_22718C9FC(v19, v20, v21, v24);

      sub_226EB2DFC(v19, v20, v21);
      v10 = v23 ^ v15;
    }

    else
    {

LABEL_16:
      v10 = 0;
    }

    return v10 & 1;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2274404C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v82 = result + 32;
    v3 = MEMORY[0x277D84F90];
    v83 = *(result + 16);
LABEL_3:
    v76 = v3;
    while (v2 < v1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_74;
      }

      v5 = v82 + 40 * v2;
      v78 = *v5;
      v80 = *(v5 + 8);
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      v8 = *(v5 + 32);

      sub_226EB396C(v6, v7, v8);
      sub_226EB396C(v6, v7, v8);
      v9 = sub_227667250();
      v10 = v9;
      if (*(v9 + 16))
      {
        v11 = *(v9 + 40);
        sub_22766D370();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v12 = sub_22766D3F0();
        v13 = -1 << *(v10 + 32);
        v14 = v12 & ~v13;
        if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          sub_226F48150();
          sub_226EC1E18();
          while (1)
          {
            v16 = *(v10 + 48) + 24 * v14;
            v89 = *v16;
            v91 = *(v16 + 16);
            if (sub_227663B20())
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          sub_226EB2DFC(v6, v7, v8);
          v3 = v76;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_226F1FD28(0, *(v76 + 16) + 1, 1);
            v3 = v76;
          }

          v18 = *(v3 + 16);
          v17 = *(v3 + 24);
          if (v18 >= v17 >> 1)
          {
            result = sub_226F1FD28((v17 > 1), v18 + 1, 1);
            v3 = v76;
          }

          *(v3 + 16) = v18 + 1;
          v19 = v3 + 40 * v18;
          *(v19 + 32) = v78;
          *(v19 + 40) = v80;
          *(v19 + 48) = v6;
          *(v19 + 56) = v7;
          *(v19 + 64) = v8;
          v1 = v83;
          v2 = v4;
          if (v4 == v83)
          {
LABEL_18:
            v20 = 0;
            v21 = MEMORY[0x277D84F90];
LABEL_19:
            v22 = v20;
            v85 = v21;
            while (v22 < v1)
            {
              if (__OFADD__(v22, 1))
              {
                goto LABEL_76;
              }

              v81 = v22 + 1;
              v23 = v82 + 40 * v22;
              v75 = *v23;
              v25 = *(v23 + 16);
              v24 = *(v23 + 24);
              v26 = *(v23 + 32);
              v79 = *(v23 + 8);

              sub_226EB396C(v25, v24, v26);
              sub_226EB396C(v25, v24, v26);
              v27 = sub_227667250();
              v28 = v27;
              if (!*(v27 + 16))
              {
                goto LABEL_30;
              }

              v29 = *(v27 + 40);
              sub_22766D370();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
              sub_226F480FC();
              sub_227663B10();
              v30 = sub_22766D3F0();
              v31 = -1 << *(v28 + 32);
              v32 = v30 & ~v31;
              if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
LABEL_30:
                sub_226EB2DFC(v25, v24, v26);

                result = swift_isUniquelyReferenced_nonNull_native();
                v21 = v85;
                if ((result & 1) == 0)
                {
                  result = sub_226F1FD28(0, *(v85 + 16) + 1, 1);
                  v21 = v85;
                }

                v1 = v83;
                v20 = v81;
                v36 = *(v21 + 16);
                v35 = *(v21 + 24);
                if (v36 >= v35 >> 1)
                {
                  result = sub_226F1FD28((v35 > 1), v36 + 1, 1);
                  v21 = v85;
                }

                *(v21 + 16) = v36 + 1;
                v37 = v21 + 40 * v36;
                *(v37 + 32) = v75;
                *(v37 + 40) = v79;
                *(v37 + 48) = v25;
                *(v37 + 56) = v24;
                *(v37 + 64) = v26;
                if (v81 == v83)
                {
LABEL_35:
                  v38 = v3;
                  goto LABEL_37;
                }

                goto LABEL_19;
              }

              v33 = ~v31;
              sub_226F48150();
              sub_226EC1E18();
              while (1)
              {
                v34 = *(v28 + 48) + 24 * v32;
                v90 = *v34;
                v92 = *(v34 + 16);
                if (sub_227663B20())
                {
                  break;
                }

                v32 = (v32 + 1) & v33;
                if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              sub_226EB2DFC(v25, v24, v26);

              result = sub_226EB2DFC(v25, v24, v26);
              v22 = v81;
              v1 = v83;
              v21 = v85;
              if (v81 == v83)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_75;
          }

          goto LABEL_3;
        }
      }

LABEL_4:

      sub_226EB2DFC(v6, v7, v8);
      sub_226EB2DFC(v6, v7, v8);

      v1 = v83;
      v2 = v4;
      v3 = v76;
      if (v4 == v83)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
LABEL_37:
    v39 = *(v38 + 16);
    v40 = *(v21 + 16);
    v88 = v39;
    if (v40 > v39)
    {
      v39 = *(v21 + 16);
    }

    v84 = v39;
    if (v39)
    {
      v86 = v21;
      v77 = v38;
      v41 = 0;
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD098, &unk_2276858A0);
        result = swift_initStackObject();
        v44 = result;
        *(result + 16) = xmmword_2276728D0;
        if (v42 >= v40)
        {
          v46 = 0;
          v45 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          if (v42 >= *(v86 + 16))
          {
            goto LABEL_80;
          }

          v46 = *(v86 + v41 + 32);
          v45 = *(v86 + v41 + 40);
          v47 = *(v86 + v41 + 48);
          v48 = *(v86 + v41 + 56);
          v49 = *(v86 + v41 + 64);

          result = sub_226EB396C(v47, v48, v49);
        }

        *(v44 + 32) = v46;
        *(v44 + 40) = v45;
        *(v44 + 48) = v47;
        *(v44 + 56) = v48;
        *(v44 + 64) = v49;
        if (v42 >= v88)
        {
          v51 = 0;
          v50 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
        }

        else
        {
          if (v42 >= *(v77 + 16))
          {
            goto LABEL_81;
          }

          v51 = *(v77 + v41 + 32);
          v50 = *(v77 + v41 + 40);
          v52 = *(v77 + v41 + 48);
          v53 = *(v77 + v41 + 56);
          v54 = *(v77 + v41 + 64);

          result = sub_226EB396C(v52, v53, v54);
        }

        *(v44 + 72) = v51;
        *(v44 + 80) = v50;
        *(v44 + 88) = v52;
        *(v44 + 96) = v53;
        *(v44 + 104) = v54;
        v55 = v43[2];
        v56 = v55 + 2;
        if (__OFADD__(v55, 2))
        {
          goto LABEL_77;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v57 = v43[3] >> 1, v57 < v56))
        {
          if (v55 <= v56)
          {
            v58 = v55 + 2;
          }

          else
          {
            v58 = v55;
          }

          result = sub_2273A6050(result, v58, 1, v43);
          v43 = result;
          v57 = *(result + 24) >> 1;
        }

        if (v57 - v43[2] < 2)
        {
          goto LABEL_78;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0A0, &qword_2276839F0);
        swift_arrayInitWithCopy();

        v59 = v43[2];
        v60 = __OFADD__(v59, 2);
        v61 = v59 + 2;
        if (v60)
        {
          goto LABEL_79;
        }

        v43[2] = v61;
        ++v42;
        v41 += 40;
        if (v84 == v42)
        {

          goto LABEL_61;
        }
      }
    }

    v43 = MEMORY[0x277D84F90];
LABEL_61:
    v62 = 0;
    v63 = v43[2];
    v64 = MEMORY[0x277D84F90];
LABEL_62:
    v65 = &v43[5 * v62 + 2];
    while (1)
    {
      if (v63 == v62)
      {

        return v64;
      }

      if (v62 >= v43[2])
      {
        break;
      }

      ++v62;
      v66 = v65 + 40;
      v67 = *(v65 + 24);
      v65 += 40;
      if (v67)
      {
        v68 = *(v66 - 24);
        v69 = *(v66 - 8);
        v70 = *v66;
        v71 = *(v66 + 8);

        sub_226EB396C(v69, v70, v71 & 1);
        result = swift_isUniquelyReferenced_nonNull_native();
        v87 = v68;
        if ((result & 1) == 0)
        {
          result = sub_2273A55F4(0, *(v64 + 16) + 1, 1, v64);
          v64 = result;
        }

        v73 = *(v64 + 16);
        v72 = *(v64 + 24);
        if (v73 >= v72 >> 1)
        {
          result = sub_2273A55F4((v72 > 1), v73 + 1, 1, v64);
          v64 = result;
        }

        *(v64 + 16) = v73 + 1;
        v74 = v64 + 40 * v73;
        *(v74 + 32) = v87;
        *(v74 + 40) = v67;
        *(v74 + 48) = v69;
        *(v74 + 56) = v70;
        *(v74 + 64) = v71 & 1;
        goto LABEL_62;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

BOOL sub_227440D60(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v18 = *a2;
  v19 = *a1;
  v5 = a2[2];
  v6 = a2[3];
  v7 = *(a2 + 32);
  v8 = sub_227667230();
  if (*(v8 + 16) && (v9 = sub_226F491D8(v2, v3, v4), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = -1;
  }

  v12 = sub_227667230();
  if (*(v12 + 16))
  {
    v13 = sub_226F491D8(v5, v6, v7);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      if (v11 == v15)
      {
        return v19 < v18;
      }

      return v11 < v15;
    }
  }

  if (v11 != -1)
  {
    v15 = -1;
    return v11 < v15;
  }

  return v19 < v18;
}

uint64_t sub_227440E78()
{
  v1 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils);

  v4 = *(v0 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_focusUtils);

  v5 = *(v0 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_enumerationUtils);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanScheduleUtils()
{
  result = qword_27D7BDB50;
  if (!qword_27D7BDB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227440F98()
{
  result = sub_227667370();
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

void sub_227441044(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *a3;
  sub_226EB396C(v6, v5, v8);
  v10 = sub_226F491D8(v6, v5, v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_226FF6748(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_226F491D8(v6, v5, v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v10 = sub_22766D220();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_226FF6744(v10);
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_226EB2DFC(v6, v5, v8);

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = v22[6] + 24 * v10;
  *v23 = v6;
  *(v23 + 8) = v5;
  *(v23 + 16) = v8;
  *(v22[7] + 8 * v10) = v7;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v4 = (a1 + 88);
    v7 = 1;
    while (v7 < *(a1 + 16))
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *v4;
      v8 = *(v4 - 8);
      v27 = *a3;
      sub_226EB396C(v6, v5, v8);
      v28 = sub_226F491D8(v6, v5, v8);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_226FF6748(v32, 1);
        v33 = *a3;
        v28 = sub_226F491D8(v6, v5, v8);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = v35[6] + 24 * v28;
      *v36 = v6;
      *(v36 + 8) = v5;
      *(v36 + 16) = v8;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_227441430(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227117820(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_22766D130();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE80, &unk_2276798F0);
      v7 = sub_22766C380();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22744158C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22744158C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2271171D0(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_2274421E4((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_2273A4F9C((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_2274421E4((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

unint64_t sub_227441B20(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = a5;
  v66 = a3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v59 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_66;
  }

  v24 = v66 - a2;
  if (v66 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v25 = (a2 - a1) / v23;
    v73 = a1;
    v72 = a4;
    if (v25 < v24 / v23)
    {
      v26 = v25 * v23;
      if (a4 < a1 || a1 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = a2;
LABEL_17:
      v28 = a1;
      v69 = v5;
      v65 = a4 + v26;
      v71 = a4 + v26;
      if (v26 >= 1 && result < v66)
      {
        v63 = v17;
        v64 = v21;
        v30 = &qword_27D7BAE90;
        while (1)
        {
          v31 = v23;
          v70 = result;
          v32 = v64;
          sub_226E93170(result, v64, v30, &unk_22767DF70);
          sub_226E93170(a4, v17, v30, &unk_22767DF70);
          v33 = v69;
          v34 = sub_227437AE0(v32, v17, v68);
          v69 = v33;
          if (v33)
          {
            break;
          }

          v35 = v34;
          sub_226E97D1C(v17, v30, &unk_22767DF70);
          v36 = v30;
          sub_226E97D1C(v32, v30, &unk_22767DF70);
          if (v35)
          {
            v23 = v31;
            v37 = v70 + v31;
            if (v28 < v70 || v28 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
              result = v37;
            }

            else if (v28 == v70)
            {
              result = v70 + v31;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              result = v37;
            }
          }

          else
          {
            v23 = v31;
            if (v28 < a4 || v28 >= a4 + v31)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v28 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v72 = a4 + v31;
            a4 += v31;
            result = v70;
          }

          v28 += v23;
          v73 = v28;
          if (a4 < v65)
          {
            v30 = v36;
            v17 = v63;
            if (result < v66)
            {
              continue;
            }
          }

          goto LABEL_64;
        }

        sub_226E97D1C(v17, &qword_27D7BAE90, &unk_22767DF70);
        sub_226E97D1C(v32, &qword_27D7BAE90, &unk_22767DF70);
      }

LABEL_64:
      sub_22711725C(&v73, &v72, &v71);

      return 1;
    }

    v27 = v24 / v23 * v23;
    v65 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        v38 = a4 + v27;
        if (v27 >= 1)
        {
          v39 = -v23;
          v40 = &qword_27D7BAE90;
          v41 = a4 + v27;
          v42 = &unk_22767DF70;
          v43 = v66;
          v61 = a1;
          v62 = a4;
          v64 = v39;
          do
          {
            v59 = v38;
            v44 = result + v39;
            v70 = result + v39;
            v63 = result;
            while (1)
            {
              if (result <= a1)
              {
                v69 = v6;
                v73 = result;
                v71 = v59;
                goto LABEL_64;
              }

              v60 = v38;
              v46 = v64;
              v45 = v65;
              v66 = v41;
              v47 = &v64[v41];
              v48 = v6;
              v49 = v40;
              v50 = v42;
              sub_226E93170(&v64[v41], v65, v40, v42);
              sub_226E93170(v44, v13, v49, v50);
              v51 = sub_227437AE0(v45, v13, v68);
              v52 = v13;
              if (v48)
              {
                sub_226E97D1C(v13, &qword_27D7BAE90, &unk_22767DF70);
                sub_226E97D1C(v45, &qword_27D7BAE90, &unk_22767DF70);
                v73 = v63;
                v71 = v60;
                goto LABEL_64;
              }

              v53 = v51;
              v54 = v43 + v46;
              v55 = v52;
              sub_226E97D1C(v52, v49, v50);
              sub_226E97D1C(v45, v49, v50);
              if (v53)
              {
                break;
              }

              v38 = v47;
              if (v43 < v66 || v54 >= v66)
              {
                swift_arrayInitWithTakeFrontToBack();
                v38 = v47;
                v13 = v55;
                a1 = v61;
              }

              else
              {
                v13 = v55;
                a1 = v61;
                if (v43 != v66)
                {
                  swift_arrayInitWithTakeBackToFront();
                  v38 = v47;
                }
              }

              v41 = v38;
              result = v63;
              v44 = v70;
              v43 = v54;
              v40 = v49;
              v42 = v50;
              v6 = 0;
              if (v47 <= v62)
              {
                goto LABEL_59;
              }
            }

            v69 = 0;
            if (v43 < v63 || v54 >= v63)
            {
              v58 = v70;
              swift_arrayInitWithTakeFrontToBack();
              v43 = v54;
              v13 = v55;
              result = v58;
              a1 = v61;
            }

            else
            {
              v56 = v43 == v63;
              v13 = v55;
              result = v70;
              v43 = v54;
              a1 = v61;
              if (!v56)
              {
                v57 = v70;
                swift_arrayInitWithTakeBackToFront();
                result = v57;
              }
            }

            v41 = v66;
            v38 = v60;
            v39 = v64;
            v40 = v49;
            v42 = v50;
            v6 = v69;
          }

          while (v66 > v62);
        }

LABEL_59:
        v69 = v6;
        v73 = result;
        v71 = v38;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = a2;
    goto LABEL_41;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_2274421E4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t sub_2274423E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_227664440();
    sub_226EAC0B4(&qword_27D7BB388, MEMORY[0x277D508E8]);
    v2 = sub_22766BF40();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = sub_22766BF40();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2274424B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanGenerationScaffold();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227442514(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanGenerationScaffold();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227442570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanGenerationScaffold();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2274425D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = *(a1 + 16);
  swift_beginAccess();
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = 0;
  v13 = a1 + 32;
  result = MEMORY[0x277D84F90];
  while (2)
  {
    v29 = result;
    v15 = v12;
LABEL_6:
    if (v15 >= v11)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_27;
    }

    v16 = *(v13 + 8 * v15);
    if (*(a2 + 16) && (v17 = sub_226F491D8(a3, a4, a5 & 1), (v18 & 1) != 0))
    {
      v19 = *(*(a2 + 56) + 8 * v17);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v21 = *(v20 + 16);
    v22 = 32;
    do
    {
      if (!v21)
      {

LABEL_5:
        v15 = v12;
        if (v12 != v11)
        {
          goto LABEL_6;
        }

        return v29;
      }

      v23 = *(v20 + v22);
      v22 += 8;
      --v21;
    }

    while (v23 != v16);

    result = sub_227669310();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (result >= *(*a6 + 16))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (*(*a6 + 8 * result + 32) < v16)
    {
      goto LABEL_5;
    }

    v24 = v29;
    v32 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_226F1F090(0, *(v29 + 16) + 1, 1);
      v24 = v29;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v28 = *(v24 + 16);
      v30 = v26 + 1;
      sub_226F1F090((v25 > 1), v26 + 1, 1);
      v26 = v28;
      v27 = v30;
      v24 = v32;
    }

    *(v24 + 16) = v27;
    *(v24 + 8 * v26 + 32) = v16;
    result = v24;
    if (v12 != v11)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_2274427C4(uint64_t *__dst, uint64_t *__src, unint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 40;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 40;
  v85 = a4;
  if (v8 >= v10)
  {
    v38 = 5 * v10;
    if (a4 != __src || &__src[v38] <= a4)
    {
      memmove(a4, __src, 40 * v10);
      a4 = v85;
    }

    v12 = &a4[v38];
    if (v9 < 40 || v5 <= v6)
    {
      goto LABEL_63;
    }

    v80 = v6;
LABEL_38:
    v68 = v5 - 40;
    v39 = v12;
    while (1)
    {
      v84 = v12;
      v76 = v4;
      v41 = *(v39 - 40);
      v40 = *(v39 - 32);
      v39 -= 40;
      v43 = *(v39 + 16);
      v42 = *(v39 + 24);
      v44 = *(v39 + 32);
      v45 = *(v5 - 4);
      v69 = *(v5 - 5);
      v70 = v41;
      v46 = *(v5 - 3);
      v47 = *(v5 - 2);
      v48 = *(v5 - 8);

      sub_226EB396C(v43, v42, v44);
      v49 = v47;
      v50 = v46;

      v82 = v48;
      sub_226EB396C(v46, v49, v48);
      v51 = sub_227667230();
      v77 = v43;
      v74 = v42;
      if (*(v51 + 16))
      {
        v52 = sub_226F491D8(v43, v42, v44);
        v53 = v44;
        if (v54)
        {
          v55 = *(*(v51 + 56) + 8 * v52);
        }

        else
        {
          v55 = -1;
        }

        v72 = v55;
        v56 = v76;
      }

      else
      {
        v72 = -1;
        v56 = v76;
        v53 = v44;
      }

      v57 = sub_227667230();
      if (*(v57 + 16) && (v58 = sub_226F491D8(v46, v49, v82), (v59 & 1) != 0))
      {
        v60 = *(*(v57 + 56) + 8 * v58);

        sub_226EB2DFC(v50, v49, v82);

        sub_226EB2DFC(v77, v74, v53);
        v61 = v72;
        if (v72 == v60)
        {
          goto LABEL_54;
        }
      }

      else
      {

        sub_226EB2DFC(v46, v49, v82);

        sub_226EB2DFC(v77, v74, v53);
        v61 = v72;
        if (v72 == -1)
        {
LABEL_54:
          v4 = (v56 - 40);
          a4 = v85;
          if (v70 < v69)
          {
LABEL_57:
            v12 = v84;
            if (v56 != v5)
            {
              v64 = *v68;
              v65 = *(v5 - 24);
              *(v4 + 32) = *(v5 - 1);
              *v4 = v64;
              *(v4 + 16) = v65;
            }

            if (v84 <= a4 || (v5 -= 40, v68 <= v80))
            {
              v5 = v68;
              goto LABEL_63;
            }

            goto LABEL_38;
          }

          goto LABEL_55;
        }

        v60 = -1;
      }

      v4 = (v56 - 40);
      a4 = v85;
      if (v61 < v60)
      {
        goto LABEL_57;
      }

LABEL_55:
      if (v84 != v56)
      {
        v62 = *v39;
        v63 = *(v39 + 16);
        *(v4 + 32) = *(v39 + 32);
        *v4 = v62;
        *(v4 + 16) = v63;
      }

      v12 = v39;
      if (v39 <= a4)
      {
        v12 = v39;
        goto LABEL_63;
      }
    }
  }

  v11 = 5 * v8;
  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, v11 * 8);
    a4 = v85;
  }

  v12 = &a4[v11];
  if (v7 >= 40 && v5 < v4)
  {
    v83 = &a4[v11];
    v71 = v4;
    do
    {
      v78 = v5;
      v79 = v6;
      v14 = *v5;
      v13 = *(v5 + 1);
      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      v17 = v5[32];
      v18 = a4[1];
      v73 = *a4;
      v75 = v14;
      v20 = a4[2];
      v19 = a4[3];
      v86 = a4;
      v21 = *(a4 + 32);

      sub_226EB396C(v16, v15, v17);

      sub_226EB396C(v20, v19, v21);
      v22 = sub_227667230();
      v81 = v17;
      if (*(v22 + 16))
      {
        v23 = v16;
        v24 = sub_226F491D8(v16, v15, v17);
        v25 = v15;
        if (v26)
        {
          v27 = *(*(v22 + 56) + 8 * v24);
        }

        else
        {
          v27 = -1;
        }

        v28 = v23;
      }

      else
      {
        v28 = v16;
        v25 = v15;
        v27 = -1;
      }

      v29 = sub_227667230();
      if (*(v29 + 16) && (v30 = sub_226F491D8(v20, v19, v21), (v31 & 1) != 0))
      {
        v32 = *(*(v29 + 56) + 8 * v30);

        sub_226EB2DFC(v20, v19, v21);

        sub_226EB2DFC(v28, v25, v81);
        v5 = v78;
        if (v27 != v32)
        {
          goto LABEL_20;
        }
      }

      else
      {

        sub_226EB2DFC(v20, v19, v21);

        sub_226EB2DFC(v28, v25, v81);
        v5 = v78;
        if (v27 != -1)
        {
          v32 = -1;
LABEL_20:
          v33 = v27 < v32;
          goto LABEL_22;
        }
      }

      v33 = v75 < v73;
LABEL_22:
      v12 = v83;
      a4 = v86;
      if (!v33)
      {
        v34 = v86;
        a4 = (v86 + 40);
        if (v79 == v86)
        {
          goto LABEL_29;
        }

LABEL_28:
        v36 = *v34;
        v37 = *(v34 + 1);
        *(v79 + 4) = *(v34 + 4);
        *v79 = v36;
        *(v79 + 1) = v37;
        goto LABEL_29;
      }

      v34 = v5;
      v35 = v79 == v5;
      v5 += 40;
      if (!v35)
      {
        goto LABEL_28;
      }

LABEL_29:
      v6 = v79 + 40;
    }

    while (a4 < v83 && v5 < v71);
  }

  v5 = v6;
LABEL_63:
  v66 = 5 * ((v12 - a4) / 40);
  if (v5 != a4 || v5 >= &a4[v66])
  {
    memmove(v5, a4, v66 * 8);
  }

  return 1;
}

uint64_t sub_227442DA8(char *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_2271171D0(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v5 = &v22[16 * v8];
      v11 = *v5;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      __dst = (v9 + 40 * *v5);
      v14 = (v9 + 40 * *v12);
      v15 = v9 + 40 * v13;

      sub_2274427C4(__dst, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v5 = v11;
      *(v5 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t sub_227442F54(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  v186 = MEMORY[0x277D84F90];
  if (v4 < 1)
  {
    swift_retain_n();
LABEL_122:
    v141 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    sub_227442DA8(&v186, v141, a3);
    if (!v162)
    {
    }

LABEL_124:

LABEL_125:
  }

  swift_retain_n();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    if (v5 + 1 >= v4)
    {
      v28 = v5 + 1;
      goto LABEL_38;
    }

    v160 = v4;
    v152 = v6;
    v8 = *a3;
    v9 = *a3 + 40 * (v5 + 1);
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    v13 = *(v9 + 32);
    v182[0] = *v9;
    v182[1] = v10;
    v183 = v12;
    v184 = v11;
    v185 = v13;
    v14 = v8 + 40 * v5;
    v15 = v5;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v178[0] = *v14;
    v178[1] = v16;
    v179 = v17;
    v180 = v18;
    v181 = v19;

    sub_226EB396C(v12, v11, v13);

    sub_226EB396C(v17, v18, v19);
    v166 = sub_227440D60(v182, v178);
    if (v162)
    {
      v143 = v179;
      v144 = v180;
      v145 = v181;

      sub_226EB2DFC(v143, v144, v145);
      v146 = v183;
      v147 = v184;
      v148 = v185;

      sub_226EB2DFC(v146, v147, v148);
      goto LABEL_125;
    }

    v20 = v179;
    v21 = v180;
    v22 = v181;

    sub_226EB2DFC(v20, v21, v22);
    v23 = v183;
    v24 = v184;
    v25 = v185;

    sub_226EB2DFC(v23, v24, v25);
    v26 = v15 + 2;
    v150 = v15;
    v164 = 40 * v15;
    v27 = (v8 + 40 * v15 + 112);
    v28 = v160;
    while (v28 != v26)
    {
      v31 = *(v27 - 3);
      v171 = *(v27 - 4);
      v172 = v26;
      v33 = *(v27 - 2);
      v32 = *(v27 - 1);
      v34 = *v27;
      v35 = *(v27 - 8);
      v169 = *(v27 - 9);
      v36 = *(v27 - 7);
      v37 = *(v27 - 6);
      v38 = *(v27 - 40);

      sub_226EB396C(v33, v32, v34);

      sub_226EB396C(v36, v37, v38);
      v39 = sub_227667230();
      v174 = v34;
      if (*(v39 + 16))
      {
        v40 = v33;
        v41 = sub_226F491D8(v33, v32, v34);
        if (v42)
        {
          v43 = *(*(v39 + 56) + 8 * v41);
        }

        else
        {
          v43 = -1;
        }

        v44 = v40;
      }

      else
      {
        v44 = v33;
        v43 = -1;
      }

      v45 = sub_227667230();
      if (*(v45 + 16) && (v46 = sub_226F491D8(v36, v37, v38), (v47 & 1) != 0))
      {
        v48 = *(*(v45 + 56) + 8 * v46);

        sub_226EB2DFC(v36, v37, v38);

        sub_226EB2DFC(v44, v32, v174);
        if (v43 != v48)
        {
          v29 = v43 < v48;
          goto LABEL_9;
        }
      }

      else
      {

        sub_226EB2DFC(v36, v37, v38);

        sub_226EB2DFC(v44, v32, v174);
        if (v43 != -1)
        {
          v29 = v43 < -1;
          goto LABEL_9;
        }
      }

      v29 = v171 < v169;
LABEL_9:
      v30 = v29;
      v28 = v160;
      v26 = v172 + 1;
      v27 += 40;
      if ((v166 ^ v30))
      {
        v28 = v172;
        break;
      }
    }

    v7 = v150;
    v6 = v152;
    if (!v166)
    {
      goto LABEL_38;
    }

    if (v28 < v150)
    {
      goto LABEL_148;
    }

    if (v150 < v28)
    {
      v49 = 40 * v28 - 8;
      v50 = v164 + 32;
      v51 = v28;
      v52 = v150;
      do
      {
        if (v52 != --v51)
        {
          v61 = *a3;
          if (!*a3)
          {
            goto LABEL_151;
          }

          v53 = (v61 + v50);
          v54 = (v61 + v49);
          v55 = *(v53 - 4);
          v56 = *(v53 - 3);
          v57 = *v53;
          v58 = *(v53 - 1);
          v59 = *v54;
          v60 = *(v54 - 1);
          *(v53 - 2) = *(v54 - 2);
          *(v53 - 1) = v60;
          *v53 = v59;
          *(v54 - 4) = v55;
          *(v54 - 3) = v56;
          *(v54 - 1) = v58;
          *v54 = v57;
        }

        ++v52;
        v49 -= 40;
        v50 += 40;
      }

      while (v52 < v51);
    }

LABEL_38:
    v62 = a3[1];
    if (v28 >= v62)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v28, v7))
    {
      goto LABEL_145;
    }

    if (v28 - v7 >= a4)
    {
LABEL_47:
      v5 = v28;
      if (v28 < v7)
      {
        goto LABEL_144;
      }

      goto LABEL_48;
    }

    if (__OFADD__(v7, a4))
    {
      goto LABEL_146;
    }

    v63 = v7 + a4 >= v62 ? a3[1] : v7 + a4;
    if (v63 < v7)
    {
      break;
    }

    if (v28 == v63)
    {
      goto LABEL_47;
    }

    v151 = v7;
    v153 = v6;
    v163 = *a3;
    v117 = *a3 + 40 * v28 - 40;
    v118 = v7 - v28;
    v156 = v63;
    while (2)
    {
      v161 = v28;
      v157 = v118;
      v158 = v117;
      v119 = v118;
      while (2)
      {
        v168 = v117 + 40;
        v170 = v119;
        v120 = *(v117 + 56);
        v121 = *(v117 + 64);
        v122 = *(v117 + 72);
        v123 = *(v117 + 8);
        v165 = *v117;
        v167 = *(v117 + 40);
        v125 = *(v117 + 16);
        v124 = *(v117 + 24);
        v126 = *(v117 + 32);
        v175 = *(v117 + 48);

        sub_226EB396C(v120, v121, v122);

        sub_226EB396C(v125, v124, v126);
        v127 = sub_227667230();
        v177 = v120;
        if (*(v127 + 16))
        {
          v128 = sub_226F491D8(v120, v121, v122);
          if (v129)
          {
            v130 = *(*(v127 + 56) + 8 * v128);
          }

          else
          {
            v130 = -1;
          }

          v173 = v130;
        }

        else
        {
          v173 = -1;
        }

        v131 = sub_227667230();
        if (*(v131 + 16) && (v132 = sub_226F491D8(v125, v124, v126), (v133 & 1) != 0))
        {
          v134 = *(*(v131 + 56) + 8 * v132);

          sub_226EB2DFC(v125, v124, v126);

          sub_226EB2DFC(v177, v121, v122);
          if (v173 != v134)
          {
            if (v173 >= v134)
            {
              break;
            }

            goto LABEL_115;
          }

LABEL_114:
          if (v167 >= v165)
          {
            break;
          }
        }

        else
        {

          sub_226EB2DFC(v125, v124, v126);

          sub_226EB2DFC(v120, v121, v122);
          if (v173 == -1)
          {
            goto LABEL_114;
          }

          if (v173 >= -1)
          {
            break;
          }
        }

LABEL_115:
        if (!v163)
        {
          goto LABEL_149;
        }

        v136 = *(v117 + 40);
        v135 = *(v117 + 48);
        v137 = *(v117 + 72);
        v138 = *(v117 + 56);
        v139 = *(v117 + 16);
        v140 = *(v117 + 32);
        *v168 = *v117;
        *(v117 + 56) = v139;
        *v117 = v136;
        *(v117 + 8) = v135;
        *(v117 + 16) = v138;
        *(v117 + 32) = v137;
        v117 -= 40;
        *(v168 + 32) = v140;
        v119 = v170 + 1;
        if (v170 != -1)
        {
          continue;
        }

        break;
      }

      ++v28;
      v117 = v158 + 40;
      v118 = v157 - 1;
      v5 = v156;
      if (v161 + 1 != v156)
      {
        continue;
      }

      break;
    }

    v7 = v151;
    v6 = v153;
    if (v156 < v151)
    {
      goto LABEL_144;
    }

LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2273A4F9C(0, *(v6 + 2) + 1, 1, v6);
    }

    v65 = *(v6 + 2);
    v64 = *(v6 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v6 = sub_2273A4F9C((v64 > 1), v65 + 1, 1, v6);
    }

    *(v6 + 2) = v66;
    v67 = v6 + 32;
    v68 = &v6[16 * v65 + 32];
    *v68 = v7;
    *(v68 + 1) = v5;
    v186 = v6;
    v176 = *a1;
    if (!*a1)
    {
      goto LABEL_152;
    }

    if (v65)
    {
      v155 = v5;
      while (1)
      {
        v69 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v6 + 4);
          v71 = *(v6 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_68:
          if (v73)
          {
            goto LABEL_135;
          }

          v86 = &v6[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_138;
          }

          v92 = &v67[16 * v69];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_142;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v66 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v96 = &v6[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_82:
        if (v91)
        {
          goto LABEL_137;
        }

        v99 = &v67[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_140;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_89:
        if (v69 - 1 >= v66)
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
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
          goto LABEL_147;
        }

        v107 = *a3;
        if (!*a3)
        {
          goto LABEL_150;
        }

        v108 = &v67[16 * v69 - 16];
        v109 = *v108;
        v110 = v69;
        v111 = &v67[16 * v69];
        v112 = *(v111 + 1);
        v113 = (v107 + 40 * *v108);
        v114 = (v107 + 40 * *v111);
        v115 = v107 + 40 * v112;

        sub_2274427C4(v113, v114, v115, v176);
        if (v162)
        {
          goto LABEL_124;
        }

        if (v112 < v109)
        {
          goto LABEL_130;
        }

        v116 = *(v6 + 2);
        if (v110 > v116)
        {
          goto LABEL_131;
        }

        *v108 = v109;
        *(v108 + 1) = v112;
        if (v110 >= v116)
        {
          goto LABEL_132;
        }

        v66 = v116 - 1;
        memmove(v111, v111 + 16, 16 * (v116 - 1 - v110));
        *(v6 + 2) = v116 - 1;
        v67 = v6 + 32;
        if (v116 <= 2)
        {
LABEL_3:
          v186 = v6;
          v5 = v155;
          goto LABEL_4;
        }
      }

      v74 = &v67[16 * v66];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_133;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_134;
      }

      v81 = &v6[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_136;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_139;
      }

      if (v85 >= v77)
      {
        v103 = &v67[16 * v69];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_143;
        }

        if (v72 < v106)
        {
          v69 = v66 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_4:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_122;
    }
  }

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
  return result;
}

uint64_t sub_227443A24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v33 = *a4;
    v4 = *a4 + 40 * a3 - 40;
    v5 = result - a3;
LABEL_5:
    v31 = v4;
    v32 = a3;
    v30 = v5;
    while (1)
    {
      v40 = v5;
      v35 = *(v4 + 40);
      v36 = v4 + 40;
      v6 = *(v4 + 56);
      v7 = *(v4 + 64);
      v8 = *(v4 + 72);
      v9 = *(v4 + 8);
      v34 = *v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      v12 = *(v4 + 32);
      v39 = *(v4 + 48);

      sub_226EB396C(v6, v7, v8);

      v38 = v12;
      sub_226EB396C(v11, v10, v12);
      v13 = sub_227667230();
      if (*(v13 + 16))
      {
        v14 = sub_226F491D8(v6, v7, v8);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 8 * v14);
        }

        else
        {
          v16 = -1;
        }

        v37 = v16;
      }

      else
      {
        v37 = -1;
      }

      v17 = sub_227667230();
      if (*(v17 + 16) && (v18 = sub_226F491D8(v11, v10, v38), (v19 & 1) != 0))
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        sub_226EB2DFC(v11, v10, v38);

        result = sub_226EB2DFC(v6, v7, v8);
        v21 = v37;
        if (v37 != v20)
        {
          goto LABEL_18;
        }
      }

      else
      {

        sub_226EB2DFC(v11, v10, v38);

        result = sub_226EB2DFC(v6, v7, v8);
        v21 = v37;
        if (v37 != -1)
        {
          v20 = -1;
LABEL_18:
          v22 = v21 < v20;
          goto LABEL_20;
        }
      }

      v22 = v35 < v34;
LABEL_20:
      if (!v22)
      {
        goto LABEL_4;
      }

      if (!v33)
      {
        __break(1u);
        return result;
      }

      v24 = *(v4 + 40);
      v23 = *(v4 + 48);
      v25 = *(v4 + 72);
      v26 = *(v4 + 56);
      v27 = *(v4 + 16);
      v28 = *(v4 + 32);
      *v36 = *v4;
      *(v4 + 56) = v27;
      *v4 = v24;
      *(v4 + 8) = v23;
      *(v4 + 16) = v26;
      *(v4 + 32) = v25;
      v4 -= 40;
      *(v36 + 32) = v28;
      v5 = v40 + 1;
      if (v40 == -1)
      {
LABEL_4:
        a3 = v32 + 1;
        v4 = v31 + 40;
        v5 = v30 - 1;
        if (v32 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_227443CBC(uint64_t *a1)
{
  v2 = a1[1];
  swift_retain_n();
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;

      sub_227442F54(v7, v8, a1, v4);

      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {

    sub_227443A24(0, v2, 1, a1);
  }
}

uint64_t sub_227443E04(char **a1)
{
  v2 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2271177C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;

  sub_227443CBC(v5);

  *a1 = v2;
}

uint64_t sub_227443EC8(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  v6 = v5;
  v144 = a1;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  v157 = *(v151 - 8);
  v10 = *(v157 + 64);
  v11 = MEMORY[0x28223BE20](v151);
  v146 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v149 = &v135 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v135 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v135 - v22;
  MEMORY[0x28223BE20](v21);
  v28 = &v135 - v27;
  v158 = a3;
  v159 = a5;
  if (a3[1] < 1)
  {
    swift_bridgeObjectRetain_n();
    v31 = MEMORY[0x277D84F90];
LABEL_99:
    v156 = *v144;
    if (v156)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_101;
    }

    goto LABEL_143;
  }

  v29 = a3[1];
  v153 = v20;
  v154 = v26;
  v147 = v25;
  v148 = v24;
  swift_bridgeObjectRetain_n();
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v32 = &qword_27D7BAE90;
  v143 = a4;
  v140 = v28;
  v141 = v23;
  v33 = v29;
  while (1)
  {
    v34 = v30;
    v35 = v30 + 1;
    v156 = v33;
    v145 = v34;
    if (v35 >= v33)
    {
      v42 = v35;
    }

    else
    {
      v150 = v6;
      v36 = *v158;
      v37 = *(v157 + 72);
      v38 = *v158 + v37 * v35;
      sub_226E93170(v38, v28, v32, &unk_22767DF70);
      sub_226E93170(v36 + v37 * v34, v23, v32, &unk_22767DF70);
      v39 = v150;
      LODWORD(v155) = sub_227437AE0(v28, v23, v159);
      v150 = v39;
      if (v39)
      {
        sub_226E97D1C(v23, &qword_27D7BAE90, &unk_22767DF70);
        sub_226E97D1C(v28, &qword_27D7BAE90, &unk_22767DF70);
        swift_bridgeObjectRelease_n();
      }

      v142 = v31;
      sub_226E97D1C(v23, v32, &unk_22767DF70);
      sub_226E97D1C(v28, v32, &unk_22767DF70);
      v40 = v34 + 2;
      v152 = v37;
      v41 = v36 + v37 * v40;
      v6 = v150;
      while (1)
      {
        v42 = v156;
        if (v156 == v40)
        {
          break;
        }

        v43 = v153;
        sub_226E93170(v41, v153, v32, &unk_22767DF70);
        v44 = v32;
        v45 = v154;
        sub_226E93170(v38, v154, v44, &unk_22767DF70);
        v46 = sub_227437AE0(v43, v45, v159);
        if (v6)
        {
          sub_226E97D1C(v45, &qword_27D7BAE90, &unk_22767DF70);
          v134 = v43;
          goto LABEL_113;
        }

        v47 = v46;
        sub_226E97D1C(v45, v44, &unk_22767DF70);
        sub_226E97D1C(v43, v44, &unk_22767DF70);
        ++v40;
        v41 += v152;
        v38 += v152;
        v32 = v44;
        if ((v155 ^ v47))
        {
          v42 = v40 - 1;
          break;
        }
      }

      v31 = v142;
      if ((v155 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v42 < v145)
      {
        goto LABEL_137;
      }

      if (v145 < v42)
      {
        v48 = v152;
        v49 = v152 * (v42 - 1);
        v50 = v42;
        v51 = v42 * v152;
        v156 = v42;
        v52 = v145;
        v53 = v145 * v152;
        do
        {
          if (v52 != --v50)
          {
            v150 = v6;
            v54 = *v158;
            if (!*v158)
            {
              goto LABEL_141;
            }

            sub_226E95D18(v54 + v53, v146, &qword_27D7BAE90, &unk_22767DF70);
            if (v53 < v49 || v54 + v53 >= (v54 + v51))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_226E95D18(v146, v54 + v49, &qword_27D7BAE90, &unk_22767DF70);
            v6 = v150;
          }

          ++v52;
          v49 -= v48;
          v51 -= v48;
          v53 += v48;
        }

        while (v52 < v50);
        a4 = v143;
        v32 = &qword_27D7BAE90;
        v42 = v156;
      }

      else
      {
LABEL_25:
        a4 = v143;
      }
    }

    v55 = v158[1];
    if (v42 >= v55)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v42, v145))
    {
      goto LABEL_133;
    }

    if (v42 - v145 >= a4)
    {
LABEL_37:
      v57 = v42;
LABEL_38:
      v56 = v145;
      if (v57 < v145)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v56 = v145;
      if (__OFADD__(v145, a4))
      {
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_139:
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_140;
      }

      if (v145 + a4 < v55)
      {
        v55 = v145 + a4;
      }

      if (v55 < v145)
      {
        goto LABEL_136;
      }

      if (v42 != v55)
      {
        v150 = v55;
        v142 = v31;
        v112 = *v158;
        v113 = *(v157 + 72);
        v114 = *v158 + v113 * (v42 - 1);
        v152 = -v113;
        v115 = v145 - v42;
        v155 = v112;
        v136 = v113;
        v116 = v112 + v42 * v113;
        while (1)
        {
          v156 = v42;
          v137 = v116;
          v138 = v115;
          v139 = v114;
          do
          {
            v117 = v147;
            sub_226E93170(v116, v147, v32, &unk_22767DF70);
            v118 = v148;
            sub_226E93170(v114, v148, v32, &unk_22767DF70);
            v119 = sub_227437AE0(v117, v118, v159);
            if (v6)
            {
              sub_226E97D1C(v118, &qword_27D7BAE90, &unk_22767DF70);
              v134 = v117;
LABEL_113:
              sub_226E97D1C(v134, &qword_27D7BAE90, &unk_22767DF70);
              swift_bridgeObjectRelease_n();
            }

            v120 = v119;
            sub_226E97D1C(v118, v32, &unk_22767DF70);
            sub_226E97D1C(v117, v32, &unk_22767DF70);
            if (!v120)
            {
              break;
            }

            if (!v155)
            {
              goto LABEL_139;
            }

            v121 = v149;
            sub_226E95D18(v116, v149, v32, &unk_22767DF70);
            swift_arrayInitWithTakeFrontToBack();
            sub_226E95D18(v121, v114, v32, &unk_22767DF70);
            v114 += v152;
            v116 += v152;
          }

          while (!__CFADD__(v115++, 1));
          v42 = v156 + 1;
          v114 = v139 + v136;
          v115 = v138 - 1;
          v116 = v137 + v136;
          if (v156 + 1 == v150)
          {
            v31 = v142;
            v57 = v150;
            goto LABEL_38;
          }
        }
      }

      v57 = v42;
      if (v42 < v145)
      {
        goto LABEL_132;
      }
    }

    v150 = v57;
    v58 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_2273A4F9C(0, *(v31 + 2) + 1, 1, v31);
    }

    v6 = *(v31 + 2);
    v59 = *(v31 + 3);
    v60 = v6 + 1;
    if (v6 >= v59 >> 1)
    {
      v31 = sub_2273A4F9C((v59 > 1), v6 + 1, 1, v31);
    }

    *(v31 + 2) = v60;
    v61 = &v31[16 * v6];
    v62 = v150;
    *(v61 + 4) = v56;
    *(v61 + 5) = v62;
    v156 = *v144;
    if (!v156)
    {
      goto LABEL_142;
    }

    if (v6)
    {
      break;
    }

LABEL_3:
    v33 = v158[1];
    v30 = v150;
    v6 = v58;
    a4 = v143;
    v28 = v140;
    v23 = v141;
    if (v150 >= v33)
    {
      goto LABEL_99;
    }
  }

  while (1)
  {
    v63 = v60 - 1;
    if (v60 >= 4)
    {
      v68 = &v31[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_119;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_120;
      }

      v75 = &v31[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_122;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_125;
      }

      if (v79 >= v71)
      {
        v98 = &v31[16 * v63 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v74 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v74)
        {
          goto LABEL_131;
        }

        v80 = v58;
        if (v66 < v101)
        {
          v63 = v60 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

    if (v60 == 3)
    {
      v64 = *(v31 + 4);
      v65 = *(v31 + 5);
      v74 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      v67 = v74;
LABEL_58:
      v80 = v58;
      if (v67)
      {
        goto LABEL_121;
      }

      v81 = &v31[16 * v60];
      v83 = *v81;
      v82 = *(v81 + 1);
      v84 = __OFSUB__(v82, v83);
      v85 = v82 - v83;
      v86 = v84;
      if (v84)
      {
        goto LABEL_124;
      }

      v87 = &v31[16 * v63 + 32];
      v89 = *v87;
      v88 = *(v87 + 1);
      v74 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v74)
      {
        goto LABEL_127;
      }

      if (__OFADD__(v85, v90))
      {
        goto LABEL_128;
      }

      if (v85 + v90 >= v66)
      {
        if (v66 < v90)
        {
          v63 = v60 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v91 = &v31[16 * v60];
    v93 = *v91;
    v92 = *(v91 + 1);
    v74 = __OFSUB__(v92, v93);
    v85 = v92 - v93;
    v86 = v74;
    v80 = v58;
LABEL_73:
    if (v86)
    {
      goto LABEL_123;
    }

    v94 = &v31[16 * v63];
    v96 = *(v94 + 4);
    v95 = *(v94 + 5);
    v74 = __OFSUB__(v95, v96);
    v97 = v95 - v96;
    if (v74)
    {
      goto LABEL_126;
    }

    if (v97 < v85)
    {
      goto LABEL_3;
    }

LABEL_80:
    v102 = v63 - 1;
    if (v63 - 1 >= v60)
    {
      break;
    }

    v103 = *v158;
    if (!*v158)
    {
      goto LABEL_138;
    }

    v104 = *&v31[16 * v102 + 32];
    v105 = *&v31[16 * v63 + 40];
    v106 = *(v157 + 72);
    v107 = v103 + v106 * v104;
    v108 = v103 + v106 * *&v31[16 * v63 + 32];
    v109 = v103 + v106 * v105;
    v110 = v159;

    sub_227441B20(v107, v108, v109, v156, v110);
    v6 = v80;
    if (v80)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v105 < v104)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_2271171D0(v31);
    }

    if (v102 >= *(v31 + 2))
    {
      goto LABEL_118;
    }

    v58 = 0;
    v111 = &v31[16 * v102];
    *(v111 + 4) = v104;
    *(v111 + 5) = v105;
    v160 = v31;
    sub_227117144(v63);
    v31 = v160;
    v60 = *(v160 + 2);
    v32 = &qword_27D7BAE90;
    if (v60 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  v31 = sub_2271171D0(v31);
LABEL_101:
  v160 = v31;
  v123 = *(v31 + 2);
  if (v123 < 2)
  {
LABEL_109:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v124 = *v158;
      if (!*v158)
      {
        break;
      }

      v125 = *&v31[16 * v123];
      v126 = *&v31[16 * v123 + 24];
      v127 = *(v157 + 72);
      v128 = v124 + v127 * v125;
      v129 = v124 + v127 * *&v31[16 * v123 + 16];
      v130 = v124 + v127 * v126;
      v131 = v159;

      sub_227441B20(v128, v129, v130, v156, v131);
      if (v6)
      {
        goto LABEL_109;
      }

      if (v126 < v125)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2271171D0(v31);
      }

      if (v123 - 2 >= *(v31 + 2))
      {
        goto LABEL_130;
      }

      v132 = &v31[16 * v123];
      *v132 = v125;
      *(v132 + 1) = v126;
      v160 = v31;
      sub_227117144(v123 - 1);
      v31 = v160;
      v123 = *(v160 + 2);
      if (v123 <= 1)
      {
        goto LABEL_109;
      }
    }

LABEL_140:

    __break(1u);
LABEL_141:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_142:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_143:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}