uint64_t sub_1D9BA3478(uint64_t a1)
{
  v68 = a1;
  v1 = sub_1D9C7D8DC();
  v69 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v71 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v65 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65 - v21;
  Context = type metadata accessor for VisualQueryContext();
  v24 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(v68, v22, &unk_1ECB51B10);
  if ((*(v24 + 48))(v22, 1, Context) == 1)
  {
    sub_1D99A6AE0(v22, &unk_1ECB51B10);
    static Logger.argos.getter(v10);
    sub_1D9A3E0E0(v7);
    v27 = v69;
    v28 = *(v69 + 8);
    v28(v10, v1);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();
    v31 = v1;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = 2;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "search mapToVLUUseCase set to default .VLUCameraFrame: nil queryContext", v33, 2u);
      MEMORY[0x1DA7405F0](v33, -1, -1);

      v28(v7, v31);
    }

    else
    {

      v28(v7, v1);
      v32 = 2;
    }

    goto LABEL_24;
  }

  v34 = v69;
  v31 = v1;
  sub_1D9BA45A0(v22, v26, type metadata accessor for VisualQueryContext);
  v35 = *(v26 + 7);
  if (v35 == 5)
  {
    v42 = v26[*(Context + 84)];
    if (v42 > 1)
    {
      v27 = v34;
      if (v42 != 2)
      {
        v45 = v65;
        static Logger.argos.getter(v65);
        v46 = v66;
        sub_1D9A3E0E0(v66);
        v47 = *(v34 + 8);
        v47(v45, v1);
        v48 = sub_1D9C7D8BC();
        v49 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1D9962000, v48, v49, "search mapToVLUUseCase set to .VLUScreenshotEager: nil cameraSearchMode", v50, 2u);
          MEMORY[0x1DA7405F0](v50, -1, -1);
        }

        v47(v46, v31);
        goto LABEL_23;
      }
    }

    else
    {
      v27 = v34;
      if (!v26[*(Context + 84)])
      {
        goto LABEL_19;
      }
    }

    v43 = sub_1D9C7E7DC();

    if (v43)
    {
LABEL_23:
      sub_1D9BA4608(v26, type metadata accessor for VisualQueryContext);
      v32 = 3;
      goto LABEL_24;
    }

    if (v42 == 2)
    {
      v44 = sub_1D9C7E7DC();

      if ((v44 & 1) == 0)
      {

        sub_1D9BA4608(v26, type metadata accessor for VisualQueryContext);
        v32 = 4;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_19:

    goto LABEL_23;
  }

  if (v35 != 3)
  {
    static Logger.argos.getter(v15);
    v36 = v67;
    sub_1D9A3E0E0(v67);
    v37 = *(v34 + 8);
    v37(v15, v31);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v35;
      _os_log_impl(&dword_1D9962000, v38, v39, "search mapToVLUUseCase set to default .VLUCameraFrame: Unexpected imageType %ld", v40, 0xCu);
      v41 = v40;
      v36 = v67;
      MEMORY[0x1DA7405F0](v41, -1, -1);
    }

    v37(v36, v31);
  }

  sub_1D9BA4608(v26, type metadata accessor for VisualQueryContext);
  v32 = 2;
  v27 = v34;
LABEL_24:
  v52 = v70;
  v51 = v71;
  static Logger.argos.getter(v70);
  sub_1D9A3E0E0(v51);
  v53 = *(v27 + 8);
  v53(v52, v31);
  v54 = sub_1D9C7D8BC();
  v55 = sub_1D9C7E08C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v72 = v57;
    *v56 = 136315138;
    v58 = 0xD000000000000012;
    v59 = 0x80000001D9CA4B30;
    if (v32 != 3)
    {
      v58 = 0xD000000000000015;
      v59 = 0x80000001D9CA4B10;
    }

    if (v32 == 2)
    {
      v60 = 0x72656D6143554C56;
    }

    else
    {
      v60 = v58;
    }

    if (v32 == 2)
    {
      v61 = 0xEE00656D61724661;
    }

    else
    {
      v61 = v59;
    }

    v62 = sub_1D9A0E224(v60, v61, &v72);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_1D9962000, v54, v55, "search VLUUseCase by queryContext: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x1DA7405F0](v57, -1, -1);
    MEMORY[0x1DA7405F0](v56, -1, -1);

    v63 = v71;
  }

  else
  {

    v63 = v51;
  }

  v53(v63, v31);
  return v32;
}

uint64_t objectdestroy_18Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D9BA3D04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D9ADD09C;

  return sub_1D9B9ACC8(a1, v4, v5, v6, v7, v8, v9);
}

void sub_1D9BA3E1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }
}

void sub_1D9BA3E60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {

    v4 = a4;
  }
}

uint64_t sub_1D9BA3EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v6 = *(v5 - 1);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v28 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v6 + 80);
  v8 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  v9 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext();
  if (!(*(*(Context - 1) + 48))(v9, 1, Context))
  {
    v27 = v2;

    v11 = Context[10];
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    swift_unknownObjectRelease();
    v15 = Context[14];
    if (!v14(v9 + v15, 1, v12))
    {
      (*(v13 + 8))(v9 + v15, v12);
    }

    v2 = v27;
    v8 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v8 + 23;
  v17 = v0 + v7;

  v18 = v5[7];
  v19 = sub_1D9C7D3CC();
  v20 = *(*(v19 - 8) + 8);
  v20(v17 + v18, v19);
  v21 = v17 + v5[8];
  v22 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v20(v21 + *(v22 + 28), v19);
  }

  v23 = v16 & 0xFFFFFFFFFFFFFFF8;
  v24 = v17 + v5[9];
  v25 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v20(v24 + *(v25 + 20), v19);
  }

  if (*(v0 + v23 + 8) != 1)
  {
  }

  if (*(v0 + v23 + 152))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v23 + 184, v2 | v29 | 7);
}

uint64_t sub_1D9BA43C4(uint64_t a1, void (*a2)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B97BB4(a1, *(v2 + 16), v2 + 24, v2 + v6, v2 + v9, *(v2 + v10), *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), a2);
}

uint64_t sub_1D9BA4538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BA45A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BA4608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext();
  if (!(*(*(Context - 1) + 48))(v0 + v3, 1, Context))
  {
    v13 = v4;

    v7 = Context[10];
    v8 = sub_1D9C7B80C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    swift_unknownObjectRelease();
    v11 = Context[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }

    v4 = v13;
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D9BA48CC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D9B9CB2C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *v5, *(v5 + 8));
}

uint64_t sub_1D9BA4978(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B9B280(a1, *(v1 + 16), (v1 + 24), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v11), *(v1 + v12), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1D9BA4AEC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void *a7, uint64_t (*a8)(char *), uint64_t a9, uint64_t a10)
{
  v240 = a8;
  v189 = a7;
  v182 = a6;
  v186 = a4;
  v187 = a5;
  v167 = a3;
  v179 = a2;
  v157 = type metadata accessor for ServerSearchResult();
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v175);
  v160 = (&v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v174 = (&v154 - v14);
  v15 = sub_1D9C7DA2C();
  v172 = *(v15 - 8);
  v173 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v170 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1D9C7DA4C();
  v169 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v168 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v164 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v165 = v19;
  v166 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v162 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v177 = v21;
  v178 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v154 - v23;
  v24 = sub_1D9C7D8DC();
  v180 = *(v24 - 8);
  v181 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v161 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v176 = &v154 - v27;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v183);
  v159 = (&v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v154 - v30;
  v32 = sub_1D9C7DA7C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = swift_allocObject();
  *(v36 + 16) = v240;
  *(v36 + 24) = a9;
  v37 = *(a10 + 144);
  *(v36 + 160) = *(a10 + 128);
  *(v36 + 176) = v37;
  *(v36 + 192) = *(a10 + 160);
  *(v36 + 208) = *(a10 + 176);
  v38 = *(a10 + 80);
  *(v36 + 96) = *(a10 + 64);
  *(v36 + 112) = v38;
  v39 = *(a10 + 112);
  *(v36 + 128) = *(a10 + 96);
  *(v36 + 144) = v39;
  v40 = *(a10 + 16);
  *(v36 + 32) = *a10;
  *(v36 + 48) = v40;
  v41 = *(a10 + 48);
  *(v36 + 64) = *(a10 + 32);
  *(v36 + 80) = v41;
  v188 = v36;
  v42 = a1[9];
  v236 = a1[8];
  v237 = v42;
  v238 = a1[10];
  v239 = *(a1 + 22);
  v43 = a1[5];
  v232 = a1[4];
  v233 = v43;
  v44 = a1[7];
  v234 = a1[6];
  v235 = v44;
  v45 = a1[1];
  v228 = *a1;
  v229 = v45;
  v46 = a1[3];
  v230 = a1[2];
  v231 = v46;
  v47 = v189[7];
  *v35 = v47;
  (*(v33 + 104))(v35, *MEMORY[0x1E69E8020], v32);
  v185 = a9;

  v184 = a10;
  sub_1D99BB40C(a10, &v216);
  v48 = v47;
  LOBYTE(v47) = sub_1D9C7DA9C();
  v50 = *(v33 + 8);
  v49 = v33 + 8;
  v50(v35, v32);
  if ((v47 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v224 = v236;
  v225 = v237;
  v226 = v238;
  v227 = v239;
  v220 = v232;
  v221 = v233;
  v222 = v234;
  v223 = v235;
  v216 = v228;
  v217 = v229;
  v218 = v230;
  v219 = v231;
  v51 = *(sub_1D9B67A68() + 16);

  if (!v51)
  {
    sub_1D9AFCCA4();
    v68 = type metadata accessor for VisualSearchResultInternal(0);
    v69 = *(v68 + 24);
    v70 = sub_1D9C7CBEC();
    (*(*(v70 - 8) + 56))(&v31[v69], 1, 1, v70);
    v71 = *(v68 + 28);
    v72 = sub_1D9C7CF3C();
    (*(*(v72 - 8) + 56))(&v31[v71], 1, 1, v72);
    v73 = v237;
    *(v31 + 8) = v236;
    *(v31 + 9) = v73;
    *(v31 + 10) = v238;
    v74 = v239;
    v75 = v233;
    *(v31 + 4) = v232;
    *(v31 + 5) = v75;
    v76 = v235;
    *(v31 + 6) = v234;
    *(v31 + 7) = v76;
    v77 = v229;
    *v31 = v228;
    *(v31 + 1) = v77;
    v78 = v231;
    *(v31 + 2) = v230;
    *(v31 + 3) = v78;
    v79 = MEMORY[0x1E69E7CC0];
    *(v31 + 22) = v74;
    *(v31 + 23) = v79;
    swift_storeEnumTagMultiPayload();
    sub_1D99BB40C(&v228, &v216);
    sub_1D9B99130(v31, v240, v185, v184);
    sub_1D99A6AE0(v31, &unk_1ECB53570);
  }

  v52 = v189[3];

  sub_1D9C7D0BC();

  v53 = swift_allocObject();
  v54 = v237;
  *(v53 + 144) = v236;
  *(v53 + 160) = v54;
  *(v53 + 176) = v238;
  *(v53 + 192) = v239;
  v55 = v233;
  *(v53 + 80) = v232;
  *(v53 + 96) = v55;
  v56 = v235;
  *(v53 + 112) = v234;
  *(v53 + 128) = v56;
  v57 = v229;
  *(v53 + 16) = v228;
  *(v53 + 32) = v57;
  v58 = v231;
  *(v53 + 48) = v230;
  *(v53 + 64) = v58;
  v59 = v187;
  v60 = *&v187[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  sub_1D99BB40C(&v228, &v216);
  os_unfair_lock_lock(v60 + 4);
  v156 = OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled;
  v61 = v59[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v60 + 4);
  if (v61)
  {
    v49 = v176;
    static Logger.argos.getter(v176);
    if (qword_1EDD2C988 == -1)
    {
LABEL_5:
      v62 = v181;
      __swift_project_value_buffer(v181, qword_1EDD2C990);
      (*(v180 + 8))(v49, v62);
      v63 = sub_1D9C7D8BC();
      v64 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1D9962000, v63, v64, "performSearchForCamera(): canceled", v65, 2u);
        MEMORY[0x1DA7405F0](v65, -1, -1);
      }

      sub_1D9A0EEC0();
      v66 = swift_allocError();
      *v67 = 0;
      *v31 = v66;
      swift_storeEnumTagMultiPayload();
      sub_1D9B99130(v31, v240, v185, v184);
      sub_1D99A6AE0(v31, &unk_1ECB53570);
    }

LABEL_25:
    swift_once();
    goto LABEL_5;
  }

  v155 = v52;
  v80 = *(v53 + 160);
  v224 = *(v53 + 144);
  v225 = v80;
  v226 = *(v53 + 176);
  v227 = *(v53 + 192);
  v81 = *(v53 + 96);
  v220 = *(v53 + 80);
  v221 = v81;
  v82 = *(v53 + 128);
  v222 = *(v53 + 112);
  v223 = v82;
  v83 = *(v53 + 32);
  v216 = *(v53 + 16);
  v217 = v83;
  v84 = *(v53 + 64);
  v218 = *(v53 + 48);
  v219 = v84;
  v85 = swift_allocObject();
  swift_weakInit();
  v86 = swift_allocObject();
  v86[2] = v186;
  v86[3] = v85;
  v87 = v182;
  v86[4] = v53;
  v86[5] = v87;
  v88 = v188;
  v189 = v86;
  v86[6] = sub_1D9BA87A4;
  v86[7] = v88;
  swift_retain_n();
  sub_1D99BB40C(&v216, v214);

  v176 = v85;

  os_unfair_lock_lock(v60 + 4);
  v89 = v59[v156];
  os_unfair_lock_unlock(v60 + 4);
  if ((v89 & 1) == 0)
  {

    v100 = swift_allocObject();
    v240 = v100;
    v101 = v189;
    *(v100 + 16) = sub_1D9BA87C4;
    *(v100 + 24) = v101;
    v183 = *(v155 + 16);
    v102 = v163;
    sub_1D99AB100(v179, v163, &unk_1ECB51B10);
    v103 = *(v162 + 80);
    v104 = (v103 + 16) & ~v103;
    v105 = (v177 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = swift_allocObject();
    v107 = v106 + v104;
    v108 = v106;
    sub_1D9A0E758(v102, v107);
    v109 = v108 + v105;
    v185 = v108;
    v110 = v225;
    *(v109 + 128) = v224;
    *(v109 + 144) = v110;
    *(v109 + 160) = v226;
    *(v109 + 176) = v227;
    v111 = v221;
    *(v109 + 64) = v220;
    *(v109 + 80) = v111;
    v112 = v223;
    *(v109 + 96) = v222;
    *(v109 + 112) = v112;
    v113 = v217;
    *v109 = v216;
    *(v109 + 16) = v113;
    v114 = v219;
    *(v109 + 32) = v218;
    *(v109 + 48) = v114;
    v115 = (v108 + ((v105 + 191) & 0xFFFFFFFFFFFFFFF8));
    v116 = v240;
    *v115 = sub_1D9BA81C8;
    v115[1] = v116;
    v184 = *(v183 + 16);
    v117 = swift_allocObject();
    v186 = v117;
    swift_weakInit();
    v118 = v166;
    sub_1D9BA4538(v167, v166, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D99AB100(v179, v178, &unk_1ECB51B10);
    v119 = (*(v164 + 80) + 240) & ~*(v164 + 80);
    v120 = (v165 + v103 + v119) & ~v103;
    v121 = swift_allocObject();
    *(v121 + 16) = v117;
    v122 = v187;
    *(v121 + 24) = v182;
    *(v121 + 32) = v122;
    v123 = v225;
    *(v121 + 184) = v224;
    *(v121 + 200) = v123;
    *(v121 + 216) = v226;
    v124 = v221;
    *(v121 + 120) = v220;
    *(v121 + 136) = v124;
    v125 = v223;
    *(v121 + 152) = v222;
    *(v121 + 168) = v125;
    v126 = v217;
    *(v121 + 56) = v216;
    *(v121 + 72) = v126;
    v127 = v219;
    *(v121 + 88) = v218;
    v128 = v185;
    *(v121 + 40) = sub_1D9BA858C;
    *(v121 + 48) = v128;
    *(v121 + 232) = v227;
    *(v121 + 104) = v127;
    sub_1D9BA45A0(v118, v121 + v119, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A0E758(v178, v121 + v120);
    *&v204 = sub_1D9BA8FA4;
    *(&v204 + 1) = v121;
    *&v202 = MEMORY[0x1E69E9820];
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_1D9A0A1E0;
    *(&v203 + 1) = &block_descriptor_156;
    v129 = _Block_copy(&v202);
    sub_1D99BB40C(&v216, v214);
    sub_1D99BB40C(&v216, v214);

    v130 = v187;

    v131 = v168;
    sub_1D9C7DA3C();
    *&v214[0] = MEMORY[0x1E69E7CC0];
    sub_1D9BA8340(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
    sub_1D9A0E83C();
    v132 = v170;
    v133 = v173;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v131, v132, v129);
    _Block_release(v129);

    sub_1D9A0009C(&v216);
    (*(v172 + 8))(v132, v133);
    (*(v169 + 8))(v131, v171);
  }

  v90 = v161;
  static Logger.argos.getter(v161);
  v91 = sub_1D9C7D8BC();
  v92 = sub_1D9C7E09C();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_1D9962000, v91, v92, "searchCamera(): canceled", v93, 2u);
    v87 = v182;
    MEMORY[0x1DA7405F0](v93, -1, -1);
  }

  (*(v180 + 8))(v90, v181);
  sub_1D9A0EEC0();
  v94 = swift_allocError();
  *v95 = 0;
  v96 = v174;
  *v174 = v94;
  swift_storeEnumTagMultiPayload();
  sub_1D9AFCCA4();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v98 = Strong;
    if (v87)
    {
      swift_beginAccess();
      v99 = *(v87 + 16);
    }

    else
    {
      v99 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D9A19294(v99);
    swift_endAccess();
    v135 = v160;
    sub_1D99AB100(v96, v160, &qword_1ECB53DC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v136 = v159;
      *v159 = *v135;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v137 = v158;
      sub_1D9BA45A0(v135, v158, type metadata accessor for ServerSearchResult);
      v138 = (v137 + *(v157 + 24));
      v139 = v138[1];
      *(v53 + 144) = *v138;
      *(v53 + 152) = v139;

      v140 = *(v53 + 160);
      v141 = *(v53 + 128);
      v210 = *(v53 + 144);
      v211 = v140;
      v142 = *(v53 + 160);
      v212 = *(v53 + 176);
      v143 = *(v53 + 96);
      v144 = *(v53 + 64);
      v206 = *(v53 + 80);
      v207 = v143;
      v145 = *(v53 + 96);
      v146 = *(v53 + 128);
      v208 = *(v53 + 112);
      v209 = v146;
      v147 = *(v53 + 32);
      v202 = *(v53 + 16);
      v203 = v147;
      v148 = *(v53 + 64);
      v150 = *(v53 + 16);
      v149 = *(v53 + 32);
      v204 = *(v53 + 48);
      v205 = v148;
      v151 = *(v53 + 176);
      v199 = v142;
      v200 = v151;
      v194 = v206;
      v195 = v145;
      v196 = v208;
      v197 = v141;
      v198 = v210;
      v190 = v150;
      v191 = v149;
      v213 = *(v53 + 192);
      v201 = *(v53 + 192);
      v192 = v204;
      v193 = v144;
      v152 = *(v98 + 64);
      sub_1D99BB40C(&v202, v214);
      v153 = v152;
      v136 = v159;
      sub_1D9B3BD0C(v137, &v190, v153, v159);
      v214[8] = v198;
      v214[9] = v199;
      v214[10] = v200;
      v215 = v201;
      v214[4] = v194;
      v214[5] = v195;
      v214[6] = v196;
      v214[7] = v197;
      v214[0] = v190;
      v214[1] = v191;
      v214[2] = v192;
      v214[3] = v193;
      sub_1D9A0009C(v214);
      sub_1D9BA4608(v137, type metadata accessor for ServerSearchResult);
    }

    sub_1D9B99130(v136, v240, v185, v184);

    sub_1D9A0009C(&v216);
    sub_1D99A6AE0(v136, &unk_1ECB53570);
  }

  else
  {
    sub_1D9A0009C(&v216);
  }

  sub_1D99A6AE0(v96, &qword_1ECB53DC0);
}

uint64_t sub_1D9BA5D18(uint64_t a1, double a2)
{
  v4 = sub_1D9C7D87C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  v9 = [v8 imageByApplyingCGOrientation_];

  v10 = [objc_allocWithZone(MEMORY[0x1E695F620]) initWithOptions_];
  [v9 extent];
  v11 = [v10 createCGImage:v9 fromRect:?];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
    sub_1D9C7D86C();
    sub_1D9C7D85C();
    (*(v5 + 8))(v7, v4);
    v14 = sub_1D9C7DC4C();

    v15 = CGImageDestinationCreateWithData(v13, v14, 1uLL, 0);

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC8);
      inited = swift_initStackObject();
      v17 = MEMORY[0x1E696D338];
      *(inited + 16) = xmmword_1D9C85660;
      v18 = *v17;
      *(inited + 32) = v18;
      *(inited + 40) = a2;
      v19 = v18;
      sub_1D9A47654(inited);
      swift_setDeallocating();
      sub_1D99A6AE0(inited + 32, &qword_1ECB53DD0);
      type metadata accessor for CFString(0);
      sub_1D9BA8340(&qword_1ECB50F70, type metadata accessor for CFString);
      v20 = sub_1D9C7DB3C();

      CGImageDestinationAddImage(v15, v12, v20);
      if (CGImageDestinationFinalize(v15))
      {
        v21 = v13;
        v22 = sub_1D9C7B87C();

        return v22;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

void sub_1D9BA6070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char *a11, unint64_t a12, uint64_t (*a13)(uint64_t), uint64_t a14, uint64_t a15)
{
  v279 = a6;
  v280 = a8;
  v273 = a5;
  v274 = a7;
  v306 = a4;
  v311 = a3;
  v389 = a1;
  v310 = a14;
  v312 = a12;
  v266 = type metadata accessor for ServerSearchResult();
  MEMORY[0x1EEE9AC00](v266);
  v267 = &v260 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v272);
  v268 = (&v260 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v283 = (&v260 - v19);
  v20 = sub_1D9C7DA2C();
  v281 = *(v20 - 8);
  v282 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v277 = &v260 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_1D9C7DA4C();
  v276 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v275 = &v260 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v270 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v271 = v24;
  v287 = &v260 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570);
  MEMORY[0x1EEE9AC00](v293);
  v284 = (&v260 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v294 = (&v260 - v27);
  v28 = sub_1D9C7D8DC();
  v291 = *(v28 - 8);
  v292 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v269 = &v260 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v290 = &v260 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v286 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v305 = &v260 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v289 = &v260 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v285 = &v260 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v300 = &v260 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v299 = &v260 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v297 = &v260 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v307 = &v260 - v45;
  v288 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v304 = &v260 - v48;
  v49 = sub_1D9C7DA7C();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = (&v260 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = swift_allocObject();
  v295 = a13;
  *(v53 + 16) = a13;
  *(v53 + 24) = v310;
  v54 = *(a15 + 144);
  *(v53 + 160) = *(a15 + 128);
  *(v53 + 176) = v54;
  *(v53 + 192) = *(a15 + 160);
  *(v53 + 208) = *(a15 + 176);
  v55 = *(a15 + 80);
  *(v53 + 96) = *(a15 + 64);
  *(v53 + 112) = v55;
  v56 = *(a15 + 112);
  *(v53 + 128) = *(a15 + 96);
  *(v53 + 144) = v56;
  v57 = *(a15 + 16);
  *(v53 + 32) = *a15;
  *(v53 + 48) = v57;
  v58 = *(a15 + 48);
  *(v53 + 64) = *(a15 + 32);
  *(v53 + 80) = v58;
  v59 = *(a2 + 144);
  v385 = *(a2 + 128);
  v386 = v59;
  v387 = *(a2 + 160);
  v388 = *(a2 + 176);
  v60 = *(a2 + 80);
  v381 = *(a2 + 64);
  v382 = v60;
  v61 = *(a2 + 112);
  v383 = *(a2 + 96);
  v384 = v61;
  v62 = *(a2 + 16);
  v377 = *a2;
  v378 = v62;
  v63 = *(a2 + 48);
  v379 = *(a2 + 32);
  v380 = v63;
  v64 = v312;
  v65 = *(v312 + 56);
  *v52 = v65;
  v66 = *(v50 + 104);
  LODWORD(v302) = *MEMORY[0x1E69E8020];
  v303 = v50 + 104;
  v301 = v66;
  v66(v52);
  v67 = v49;

  v296 = a15;
  sub_1D99BB40C(a15, &v340);
  v68 = v65;
  LOBYTE(v65) = sub_1D9C7DA9C();
  v69 = *(v50 + 8);
  v69(v52, v67);
  if ((v65 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v298 = v68;
  v70 = v309;
  sub_1D9A723CC(v389);
  if (v70)
  {
LABEL_22:

    return;
  }

  v264 = 0;
  v265 = v53;
  v263 = *(v64 + 24);

  sub_1D9C7D0BC();

  v71 = v304;
  sub_1D99AB100(v311, v304, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v73 = *(Context - 8);
  v74 = *(v73 + 48);
  v308 = v73 + 48;
  v309 = v74;
  if ((v74)(v71, 1, Context) == 1)
  {
    sub_1D99A6AE0(v71, &unk_1ECB51B10);
    v75 = v305;
  }

  else
  {
    v76 = *(v71 + 56);
    sub_1D9BA4608(v71, type metadata accessor for VisualQueryContext);
    v75 = v305;
    if (v76 == 3)
    {
      v77 = 0;
      goto LABEL_10;
    }
  }

  sub_1D99AB100(v311, v75, &unk_1ECB51B10);
  if ((v309)(v75, 1, Context) == 1)
  {
    sub_1D99A6AE0(v75, &unk_1ECB51B10);
    v77 = 1;
  }

  else
  {
    v78 = v75[7];
    sub_1D9BA4608(v75, type metadata accessor for VisualQueryContext);
    v77 = v78 != 5;
  }

LABEL_10:
  v79 = v298;
  *v52 = v298;
  v301(v52, v302, v67);
  v80 = v79;
  LOBYTE(v79) = sub_1D9C7DA9C();
  v69(v52, v67);
  if ((v79 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  LOBYTE(v316) = 0;
  memset(v315, 0, sizeof(v315));
  LODWORD(v304) = v77;
  if (v77)
  {
    v81 = v307;
    sub_1D99AB100(v311, v307, &unk_1ECB51B10);
    v348 = v385;
    v349 = v386;
    v350 = v387;
    v351 = v388;
    v344 = v381;
    v345 = v382;
    v346 = v383;
    v347 = v384;
    v340 = v377;
    v341 = v378;
    v342 = v379;
    v343 = v380;
    sub_1D99BB40C(&v377, &v326);
    sub_1D9BDB0A4(v81, &v340, v352);
    v364 = *(v352 + 8);
    v363 = *(&v352[1] + 1);
    v362 = *&v352[2];
    v305 = objc_opt_self();
    *(&v341 + 1) = &type metadata for EngagedRegionOfInterestEvent;
    *&v342 = &off_1F5535308;
    v82 = swift_allocObject();
    *&v340 = v82;
    v83 = v352[1];
    v82[1] = v352[0];
    v82[2] = v83;
    *(v82 + 41) = *(&v352[1] + 9);
    v84 = type metadata accessor for AnyVIAEvent();
    v261 = v84;
    v85 = objc_allocWithZone(v84);
    sub_1D99A17C8(&v340, v85 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v364, &v326);
    sub_1D99AB100(&v363, &v326, &qword_1ECB53DB8);
    sub_1D99AB100(&v362, &v326, &qword_1ECB53400);
    sub_1D9B1734C(&v364, &v326);
    sub_1D99AB100(&v363, &v326, &qword_1ECB53DB8);
    sub_1D99AB100(&v362, &v326, &qword_1ECB53400);
    v314.receiver = v85;
    v314.super_class = v84;
    v86 = objc_msgSendSuper2(&v314, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(&v340);
    [v305 logEvent_];

    sub_1D9B172F8(&v364);
    sub_1D99A6AE0(&v363, &qword_1ECB53DB8);
    sub_1D99A6AE0(&v362, &qword_1ECB53400);
    v87 = v311;
    v88 = v307;
    sub_1D99AB100(v311, v307, &unk_1ECB51B10);
    v89 = v297;
    sub_1D99AB100(v88, v297, &unk_1ECB51B10);
    sub_1D9A9499C(v89, 0, &v353);
    v90 = v353;
    v92 = *(&v354 + 1);
    v91 = v354;
    v93 = v355;
    v262 = Context;
    v94 = v356;
    sub_1D99A6AE0(v88, &unk_1ECB51B10);
    v361 = v354;
    *&v315[0] = v90;
    *(v315 + 8) = __PAIR128__(v92, v91);
    *(&v315[1] + 1) = v93;
    LOBYTE(v316) = v94;
    *(&v341 + 1) = &type metadata for LocalSearchStartEvent;
    *&v342 = &off_1F55352D8;
    v95 = swift_allocObject();
    *&v340 = v95;
    v302 = v91;
    v303 = v90;
    *(v95 + 16) = v90;
    *(v95 + 24) = v91;
    v301 = v92;
    *(v95 + 32) = v92;
    *(v95 + 40) = v93;
    v96 = v93;
    LODWORD(v298) = v94;
    *(v95 + 48) = v94;
    v97 = v261;
    Context = v262;
    v98 = objc_allocWithZone(v261);
    sub_1D99A17C8(&v340, v98 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v361, &v326);
    v99 = v93;
    sub_1D9B1734C(&v361, &v326);
    v313.receiver = v98;
    v313.super_class = v97;
    v100 = v99;
    v101 = objc_msgSendSuper2(&v313, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(&v340);
    [v305 logEvent_];

    sub_1D9B172F8(&v364);
    sub_1D99A6AE0(&v363, &qword_1ECB53DB8);
    sub_1D99A6AE0(&v362, &qword_1ECB53400);
    sub_1D9B172F8(&v361);
  }

  else
  {
    v302 = 0;
    v303 = 0;
    v301 = 0;
    v96 = 0;
    LODWORD(v298) = 0;
    v87 = v311;
  }

  v102 = v389;
  v103 = *(v312 + 16);
  v104 = v299;
  sub_1D99AB100(v87, v299, &unk_1ECB51B10);
  if ((v309)(v104, 1, Context) == 1)
  {
    sub_1D99A6AE0(v104, &unk_1ECB51B10);
    v105 = 0;
  }

  else
  {
    v106 = v104;
    v105 = *(v104 + *(Context + 48));
    swift_unknownObjectRetain();
    sub_1D9BA4608(v106, type metadata accessor for VisualQueryContext);
  }

  v107 = v87;
  v108 = v300;
  sub_1D99AB100(v107, v300, &unk_1ECB51B10);
  v109 = (v309)(v108, 1, Context);
  v305 = a11;
  if (v109 == 1)
  {
    sub_1D99A6AE0(v108, &unk_1ECB51B10);
    v110 = 0;
  }

  else
  {
    v110 = v108[7];
    sub_1D9BA4608(v108, type metadata accessor for VisualQueryContext);
  }

  v111 = swift_allocObject();
  v112 = *(v103 + 16);
  sub_1D99A17C8(v102, &v340);
  v113 = *(v103 + 24);
  type metadata accessor for SignalsExtractionProcessor();
  v114 = swift_allocObject();

  *(v114 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
  *(v114 + 112) = 0u;
  *(v114 + 128) = 0u;
  *(v114 + 144) = 0u;
  *(v114 + 40) = v112;
  sub_1D9979B9C(&v340, v114 + 48);
  type metadata accessor for TextDetectionRequestFactory();
  *(v114 + 16) = swift_allocObject();
  type metadata accessor for BarcodeDetectionRequestFactory();
  *(v114 + 24) = swift_allocObject();
  *(v114 + 88) = v113;
  type metadata accessor for ImageFingerprintRequestFactory();
  v115 = swift_allocObject();
  *(v115 + 16) = v112;
  *(v114 + 32) = v115;
  *(v114 + 96) = v105;
  v348 = v385;
  v349 = v386;
  v350 = v387;
  v351 = v388;
  v344 = v381;
  v345 = v382;
  v346 = v383;
  v347 = v384;
  v340 = v377;
  v341 = v378;
  v342 = v379;
  v343 = v380;
  swift_unknownObjectRetain();

  v116 = v264;
  sub_1D99B54E0(&v340, v306, 1, 1, 0, v110, v305, v111 + 16);
  if (v116)
  {

    swift_unknownObjectRelease();
    sub_1D9B9E760(v304, v315);
    sub_1D9BA3E1C(v303, v302, v301, v96);
    swift_deallocUninitializedObject();
    goto LABEL_22;
  }

  v309 = v111;

  swift_unknownObjectRelease();
  sub_1D9B9E760(v304, v315);
  sub_1D9BA3E1C(v303, v302, v301, v96);
  v117 = *&a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v117 + 4);
  v118 = OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled;
  v119 = a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v117 + 4);
  if (v119)
  {
    v120 = v290;
    static Logger.argos.getter(v290);
    v121 = sub_1D9C7D8BC();
    v122 = sub_1D9C7E09C();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_1D9962000, v121, v122, "performSearch(): canceled", v123, 2u);
      MEMORY[0x1DA7405F0](v123, -1, -1);
    }

    (*(v291 + 8))(v120, v292);
    sub_1D9A0EEC0();
    v124 = swift_allocError();
    *v125 = 0;
    v126 = v294;
    *v294 = v124;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v126, v295, v310, v296, "search(): result.userFeedbackIntermediateResults = %s");
    sub_1D99A6AE0(v126, &unk_1ECB53570);

    goto LABEL_22;
  }

  v127 = v389[3];
  v128 = v389[4];
  __swift_project_boxed_opaque_existential_1(v389, v127);
  v129 = (*(v128 + 24))(v127, v128);
  v264 = 0;
  v130 = v129;
  v131 = sub_1D9BA5D18(v129, 0.6);
  v133 = v132;

  if (v133 >> 60 == 15)
  {
    sub_1D9AFCCA4();
    sub_1D9A0EEC0();
    v134 = swift_allocError();
    *v135 = 4;
    v136 = v294;
    *v294 = v134;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v136, v295, v310, v296, "search(): result.userFeedbackIntermediateResults = %s");
    sub_1D99B3C44(v131, v133);
    sub_1D99A6AE0(v136, &unk_1ECB53570);

    goto LABEL_22;
  }

  v137 = v133 >> 62;
  v301 = v133;
  v302 = v131;
  v300 = a10;
  v303 = a9;
  if ((v133 >> 62) > 1)
  {
    if (v137 != 2)
    {
      v138 = 0;
      goto LABEL_39;
    }

    v140 = *(v131 + 16);
    v139 = *(v131 + 24);
    v141 = __OFSUB__(v139, v140);
    v138 = v139 - v140;
    if (!v141)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  else if (!v137)
  {
    v138 = BYTE6(v133);
LABEL_39:
    *&v340 = v138;
    v142 = sub_1D9C7E7AC();
    v144 = v143;
    *&v340 = 0;
    *(&v340 + 1) = 0xE000000000000000;
    sub_1D9C7E40C();

    *&v340 = 0xD000000000000021;
    *(&v340 + 1) = 0x80000001D9CABA30;
    MEMORY[0x1DA73DF90](v142, v144);

    sub_1D9C7B94C();

    v145 = v309;
    v146 = v309[10];
    v373 = v309[9];
    v374 = v146;
    v375 = v309[11];
    v376 = *(v309 + 24);
    v147 = v309[6];
    v369 = v309[5];
    v370 = v147;
    v148 = v309[8];
    v371 = v309[7];
    v372 = v148;
    v149 = v309[2];
    v365 = v309[1];
    v366 = v149;
    v150 = v309[4];
    v367 = v309[3];
    v368 = v150;
    v151 = swift_allocObject();
    v308 = v151;
    swift_weakInit();
    v152 = v285;
    sub_1D99AB100(v311, v285, &unk_1ECB51B10);
    sub_1D99AB100(v152, v289, &unk_1ECB51B10);
    v153 = (*(v286 + 80) + 48) & ~*(v286 + 80);
    v154 = v153 + v288;
    v155 = (v153 + v288) & 0xFFFFFFFFFFFFFFF8;
    v312 = *(v286 + 80);
    v156 = swift_allocObject();
    v156[2] = v303;
    v156[3] = v151;
    v157 = v305;
    v156[4] = v145;
    v156[5] = v157;
    v158 = v152;
    v159 = v156;
    sub_1D9A0E758(v158, v156 + v153);
    *(v159 + v154) = v304;
    v160 = v159 + v155;
    v161 = v265;
    *(v160 + 8) = sub_1D9BA90C0;
    *(v160 + 16) = v161;
    swift_retain_n();
    sub_1D99BB40C(&v365, &v340);

    os_unfair_lock_lock(v117 + 4);
    LODWORD(v161) = v300[v118];
    os_unfair_lock_unlock(v117 + 4);
    if (v161 == 1)
    {
      v162 = v269;
      static Logger.argos.getter(v269);
      v163 = sub_1D9C7D8BC();
      v164 = sub_1D9C7E09C();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&dword_1D9962000, v163, v164, "search(): canceled", v165, 2u);
        MEMORY[0x1DA7405F0](v165, -1, -1);
      }

      (*(v291 + 8))(v162, v292);
      sub_1D9A0EEC0();
      v166 = swift_allocError();
      *v167 = 0;
      v168 = v283;
      *v283 = v166;
      swift_storeEnumTagMultiPayload();
      sub_1D9AFCCA4();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v170 = v309;
      if (Strong)
      {
        v311 = Strong;
        v171 = v305;
        if (v305)
        {
          swift_beginAccess();
          v172 = *(v171 + 2);
        }

        else
        {
          v172 = MEMORY[0x1E69E7CC0];
        }

        swift_beginAccess();
        sub_1D9A19294(v172);
        swift_endAccess();
        v216 = v268;
        sub_1D99AB100(v168, v268, &qword_1ECB53DC0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v299 = v159;
        if (EnumCaseMultiPayload == 1)
        {
          *v284 = *v216;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v218 = v267;
          sub_1D9BA45A0(v216, v267, type metadata accessor for ServerSearchResult);
          v219 = (v218 + *(v266 + 24));
          v220 = v219[1];
          *(v170 + 18) = *v219;
          *(v170 + 19) = v220;

          v221 = v170[10];
          v222 = v170[8];
          v334 = v170[9];
          v335 = v221;
          v223 = v170[10];
          v336 = v170[11];
          v224 = v170[6];
          v225 = v170[4];
          v330 = v170[5];
          v331 = v224;
          v226 = v170[6];
          v227 = v170[8];
          v332 = v170[7];
          v333 = v227;
          v228 = v170[2];
          v326 = v170[1];
          v327 = v228;
          v229 = v170[4];
          v231 = v170[1];
          v230 = v170[2];
          v328 = v170[3];
          v329 = v229;
          v232 = v170[11];
          v323 = v223;
          v324 = v232;
          v317 = v225;
          v318 = v330;
          v319 = v226;
          v320 = v332;
          v321 = v222;
          v322 = v334;
          v315[0] = v231;
          v315[1] = v230;
          v337 = *(v170 + 24);
          v325 = *(v170 + 24);
          v316 = v328;
          v233 = *(v311 + 64);
          sub_1D99BB40C(&v326, &v340);
          sub_1D9B3CCF0(v218, v315, v233, v284);
          v348 = v322;
          v349 = v323;
          v350 = v324;
          v344 = v318;
          v345 = v319;
          v351 = v325;
          v346 = v320;
          v347 = v321;
          v340 = v315[0];
          v341 = v315[1];
          v342 = v316;
          v343 = v317;
          sub_1D9A0009C(&v340);
          sub_1D9BA4608(v218, type metadata accessor for ServerSearchResult);
        }

        if (v304)
        {
          v234 = v294;
          sub_1D99AB100(v284, v294, &unk_1ECB53570);
          v235 = v289;
          v236 = v307;
          sub_1D99AB100(v289, v307, &unk_1ECB51B10);
          sub_1D9BDB568(v234, v236, v357);
          v360 = *(v357 + 8);
          v359 = *(&v357[1] + 1);
          v237 = objc_opt_self();
          *(&v341 + 1) = &type metadata for ResultEvent;
          *&v342 = &off_1F55352A8;
          v238 = swift_allocObject();
          *&v340 = v238;
          v239 = v357[1];
          *(v238 + 16) = v357[0];
          *(v238 + 32) = v239;
          *(v238 + 48) = v358;
          v240 = type metadata accessor for AnyVIAEvent();
          v241 = objc_allocWithZone(v240);
          sub_1D99A17C8(&v340, v241 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
          sub_1D9B1734C(&v360, &v326);
          sub_1D99AB100(&v359, &v326, &qword_1ECB53400);
          sub_1D9B1734C(&v360, &v326);
          sub_1D99AB100(&v359, &v326, &qword_1ECB53400);
          v339.receiver = v241;
          v339.super_class = v240;
          v242 = objc_msgSendSuper2(&v339, sel_init);
          __swift_destroy_boxed_opaque_existential_0Tm(&v340);
          [v237 logEvent_];

          sub_1D9B172F8(&v360);
          sub_1D99A6AE0(&v359, &qword_1ECB53400);
          v243 = v305;
          if (v305)
          {
            swift_beginAccess();
            v244 = *(v243 + 2);

            v245 = sub_1D99A7220(v235, 1, v244);
          }

          else
          {
            v245 = MEMORY[0x1E69E7CC0];
          }

          v307 = v245;
          v246 = *(v245 + 16);
          if (v246)
          {
            v247 = (v307 + 64);
            v312 = v237;
            do
            {
              v389 = v246;
              v248 = *(v247 - 4);
              v249 = *(v247 - 3);
              v251 = *(v247 - 2);
              v250 = *(v247 - 1);
              v252 = *v247;
              v247 += 40;
              *(&v341 + 1) = &type metadata for DurationEvent;
              *&v342 = &off_1F552D1E8;
              v253 = swift_allocObject();
              *&v340 = v253;
              *(v253 + 16) = v248;
              *(v253 + 24) = v249;
              *(v253 + 32) = v251;
              *(v253 + 40) = v250;
              *(v253 + 48) = v252;
              v254 = objc_allocWithZone(v240);
              sub_1D99A17C8(&v340, v254 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
              v338.receiver = v254;
              v338.super_class = v240;
              swift_bridgeObjectRetain_n();
              v255 = v250;
              v256 = v312;
              v257 = v255;
              v258 = objc_msgSendSuper2(&v338, &selRef_setFont_size_stop_reporting_threshold_);
              __swift_destroy_boxed_opaque_existential_0Tm(&v340);
              [v256 logEvent_];

              v246 = (v389 - 1);
            }

            while (v389 != 1);
          }

          sub_1D9B172F8(&v360);
          sub_1D99A6AE0(&v359, &qword_1ECB53400);
          v168 = v283;
        }

        v259 = v284;
        sub_1D9B97D94(v284, v295, v310, v296, "search(): result.userFeedbackIntermediateResults = %s");

        sub_1D99B3C44(v302, v301);
        sub_1D9A0009C(&v365);
        sub_1D99A6AE0(v259, &unk_1ECB53570);
        sub_1D99A6AE0(v168, &qword_1ECB53DC0);
      }

      else
      {
        sub_1D9A0009C(&v365);
        sub_1D99B3C44(v302, v301);

        sub_1D99A6AE0(v168, &qword_1ECB53DC0);
      }

      v215 = v289;
    }

    else
    {
      v173 = v312;
      v303 = ~v312;

      v174 = swift_allocObject();
      *(v174 + 16) = sub_1D9BA8114;
      *(v174 + 24) = v159;
      v175 = v174;
      v304 = v174;
      v298 = *(v263 + 16);
      v176 = v307;
      sub_1D99AB100(v311, v307, &unk_1ECB51B10);
      v177 = (v173 + 16) & ~v173;
      v178 = v288 + 7;
      v299 = v159;
      v179 = (v288 + 7 + v177) & 0xFFFFFFFFFFFFFFF8;
      v180 = swift_allocObject();
      sub_1D9A0E758(v176, v180 + v177);
      v181 = v180 + v179;
      v310 = v180;
      v182 = v374;
      *(v181 + 128) = v373;
      *(v181 + 144) = v182;
      *(v181 + 160) = v375;
      *(v181 + 176) = v376;
      v183 = v370;
      *(v181 + 64) = v369;
      *(v181 + 80) = v183;
      v184 = v372;
      *(v181 + 96) = v371;
      *(v181 + 112) = v184;
      v185 = v366;
      *v181 = v365;
      *(v181 + 16) = v185;
      v186 = v368;
      *(v181 + 32) = v367;
      *(v181 + 48) = v186;
      v187 = (v180 + ((v179 + 191) & 0xFFFFFFFFFFFFFFF8));
      *v187 = sub_1D9BA81C8;
      v187[1] = v175;
      v307 = v298[2];
      v188 = swift_allocObject();
      v389 = v188;
      swift_weakInit();
      sub_1D9BA4538(v306, v287, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D99AB100(v311, v297, &unk_1ECB51B10);
      v189 = (*(v270 + 80) + 240) & ~*(v270 + 80);
      v190 = (v271 + v173 + v189) & v303;
      v191 = (v178 + v190) & 0xFFFFFFFFFFFFFFF8;
      v192 = (v191 + 23) & 0xFFFFFFFFFFFFFFF8;
      v193 = (v192 + 23) & 0xFFFFFFFFFFFFFFF8;
      v194 = swift_allocObject();
      v195 = v305;
      *(v194 + 16) = v188;
      *(v194 + 24) = v195;
      *(v194 + 32) = v300;
      v196 = v374;
      *(v194 + 184) = v373;
      *(v194 + 200) = v196;
      *(v194 + 216) = v375;
      v197 = v370;
      *(v194 + 120) = v369;
      *(v194 + 136) = v197;
      v198 = v372;
      *(v194 + 152) = v371;
      *(v194 + 168) = v198;
      v199 = v366;
      *(v194 + 56) = v365;
      *(v194 + 72) = v199;
      v200 = v368;
      *(v194 + 88) = v367;
      v201 = v310;
      *(v194 + 40) = sub_1D9BA81D0;
      *(v194 + 48) = v201;
      *(v194 + 232) = v376;
      *(v194 + 104) = v200;
      sub_1D9BA45A0(v287, v194 + v189, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D9A0E758(v297, v194 + v190);
      v202 = (v194 + v191);
      v203 = v301;
      v204 = v302;
      *v202 = v302;
      v202[1] = v203;
      v205 = (v194 + v192);
      v206 = v274;
      v208 = v279;
      v207 = v280;
      *v205 = v273;
      v205[1] = v208;
      v209 = (v194 + v193);
      *v209 = v206;
      v209[1] = v207;
      *&v328 = sub_1D9BA81E8;
      *(&v328 + 1) = v194;
      *&v326 = MEMORY[0x1E69E9820];
      *(&v326 + 1) = 1107296256;
      *&v327 = sub_1D9A0A1E0;
      *(&v327 + 1) = &block_descriptor_18;
      v312 = _Block_copy(&v326);
      sub_1D99BB40C(&v365, &v340);
      sub_1D99BB40C(&v365, &v340);

      v210 = v300;

      sub_1D99DF410(v204, v203);

      v211 = v275;
      sub_1D9C7DA3C();
      *&v340 = MEMORY[0x1E69E7CC0];
      sub_1D9BA8340(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
      sub_1D9A0E83C();
      v212 = v277;
      v213 = v282;
      sub_1D9C7E34C();
      v214 = v312;
      MEMORY[0x1DA73E300](0, v211, v212, v312);
      _Block_release(v214);

      v215 = v289;

      sub_1D99B3C44(v302, v203);
      sub_1D9A0009C(&v365);
      (*(v281 + 8))(v212, v213);
      (*(v276 + 8))(v211, v278);
    }

    sub_1D99A6AE0(v215, &unk_1ECB51B10);

    goto LABEL_22;
  }

  LODWORD(v138) = HIDWORD(v131) - v131;
  if (!__OFSUB__(HIDWORD(v131), v131))
  {
    v138 = v138;
    goto LABEL_39;
  }

LABEL_64:
  __break(1u);
}

uint64_t sub_1D9BA8114(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  return sub_1D9B9C3AC(a1, v1[2], v1[3], v1[4], v1[5], v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_1D9BA81E8()
{
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v2 = (*(v1 + 80) + 240) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9AC9904(v0[2], v0[3], v0[4], v0[5], v0[6], (v0 + 7), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9BA8340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9BA8388(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B98660(a1, *(v1 + 16), v1 + 24, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1D9BA84D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D9B9BC3C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *v5, *(v5 + 8));
}

uint64_t sub_1D9BA85BC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B98D84(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_33Tm_0()
{

  if (*(v0 + 40) != 1)
  {
  }

  if (*(v0 + 184))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t objectdestroy_87Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext();
  if (!(*(*(Context - 1) + 48))(v5, 1, Context))
  {

    v7 = Context[10];
    v8 = sub_1D9C7B80C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    swift_unknownObjectRelease();
    v11 = Context[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }
  }

  if (*(v0 + v4 + 8) != 1)
  {
  }

  if (*(v0 + v4 + 152))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 191) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D9BA8A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v3 + ((v8 + 191) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, a2, v3 + v7, v3 + v8, v10, v11);
}

uint64_t objectdestroy_122Tm()
{
  v1 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v26 = *(*(v1 - 1) + 80);
  v2 = (v26 + 240) & ~v26;
  v3 = *(*(v1 - 1) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);

  if (*(v0 + 64) != 1)
  {
  }

  v6 = v2 + v3;

  if (*(v0 + 208))
  {
  }

  v7 = v6 + v5;

  v8 = v0 + v2;

  v9 = v1[7];
  v10 = sub_1D9C7D3CC();
  v11 = *(*(v10 - 8) + 8);
  v11(v8 + v9, v10);
  v12 = v8 + v1[8];
  v13 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    v11(v12 + *(v13 + 28), v10);
  }

  v14 = v7 & ~v5;
  v15 = v8 + v1[9];
  v16 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v11(v15 + *(v16 + 20), v10);
  }

  v17 = v0 + v14;
  Context = type metadata accessor for VisualQueryContext();
  if (!(*(*(Context - 1) + 48))(v0 + v14, 1, Context))
  {

    v19 = Context[10];
    v20 = sub_1D9C7B80C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (!v22(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }

    swift_unknownObjectRelease();
    v23 = Context[14];
    if (!v22(v17 + v23, 1, v20))
    {
      (*(v21 + 8))(v17 + v23, v20);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v14 + v25, v26 | v5 | 7);
}

uint64_t sub_1D9BA8FBC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, char *, char *))
{
  v2 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v3 = (*(v2 + 80) + 240) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = &v1[(v4 + *(v5 + 80)) & ~*(v5 + 80)];

  return a1(v6, v7, v8, v9, v10, v1 + 7, &v1[v3], v11);
}

uint64_t sub_1D9BA918C()
{
  result = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          return 0;
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

  return result;
}

void sub_1D9BA94CC()
{
  sub_1D9BA9610(319, &qword_1EDD2C528, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9BA9610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D9BA96FC()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9BA9830()
{
  sub_1D99EDA70(319, &unk_1EDD2C488);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2DB60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D9BA9610(319, qword_1EDD2DAC8, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9BA99CC()
{
  sub_1D9BA9610(319, &qword_1EDD2C5A0, type metadata accessor for Argos_Protos_Queryflow_Polygon, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9BA9AC8()
{
  sub_1D99EDA70(319, &qword_1EDD2C4A0);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9BA9B9C()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9BA9C3C()
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2CFA8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BA9D78()
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2CFA8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BA9EA4()
{
  sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9BAA024()
{
  result = sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9BAA0C8()
{
  sub_1D99EDA70(319, &qword_1EDD2C4C0);
  if (v0 <= 0x3F)
  {
    sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_118Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_119Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1D9BAA484()
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2CFA8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BAA5B0()
{
  sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_127Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_128Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9C7D3CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D9BAA7EC()
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D9C7D3CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BAA900(uint64_t a1@<X8>)
{
  sub_1D9BBEFCC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1D9BAA944(uint64_t a1@<X8>)
{
  sub_1D9BBEFCC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

uint64_t sub_1D9BAA97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A92004();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1D9BAA9CC()
{
  result = qword_1EDD2ED80;
  if (!qword_1EDD2ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED80);
  }

  return result;
}

unint64_t sub_1D9BAAA24()
{
  result = qword_1ECB53DE8;
  if (!qword_1ECB53DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB53DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53DE8);
  }

  return result;
}

unint64_t sub_1D9BAAA8C()
{
  result = qword_1EDD2ED88;
  if (!qword_1EDD2ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED88);
  }

  return result;
}

unint64_t sub_1D9BAAAE4()
{
  result = qword_1EDD2ED78;
  if (!qword_1EDD2ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED78);
  }

  return result;
}

uint64_t sub_1D9BAAB38()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AF0);
  __swift_project_value_buffer(v0, qword_1EDD41AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D9C99CB0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "coarse_classification_domain_assignment_rule";
  *(v5 + 8) = 44;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "object_detection_domain_assignment_rule";
  *(v9 + 8) = 39;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "fusion_domain_assignment_rule";
  *(v11 + 1) = 29;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "url_match_domain_assignment_rule";
  *(v13 + 1) = 32;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "box_score_domain_assignment_rule";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "overlap_region_domain_assignment_rule";
  *(v17 + 1) = 37;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "pets_head_torso_domain_assignment_rule";
  *(v19 + 1) = 38;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "nested_nature_region_domain_assignment_rule";
  *(v21 + 1) = 43;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "geofence_domain_assignment_rule";
  *(v22 + 8) = 31;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "domain_prediction_domain_assignment_rule";
  *(v24 + 1) = 40;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "storefront_domain_assignment_rule";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "custom_detection_domain_assignment_rule";
  *(v28 + 1) = 39;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 100;
  *v30 = "image_source_type";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BAAFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1D9BAB198(v5, a1, a2, a3);
        break;
      case 2:
        sub_1D9BAB748(v5, a1, a2, a3);
        break;
      case 3:
        sub_1D9BABD04(v5, a1, a2, a3);
        break;
      case 5:
        sub_1D9BAC2C0(v5, a1, a2, a3);
        break;
      case 6:
        sub_1D9BAC87C(v5, a1, a2, a3);
        break;
      case 8:
        sub_1D9BACE38(v5, a1, a2, a3);
        break;
      case 9:
        sub_1D9BAD3F4(v5, a1, a2, a3);
        break;
      case 10:
        sub_1D9BAD9B0(v5, a1, a2, a3);
        break;
      case 11:
        sub_1D9BADF6C(v5, a1, a2, a3);
        break;
      case 12:
        sub_1D9BAE528(v5, a1, a2, a3);
        break;
      case 13:
        sub_1D9BAEAE4(v5, a1, a2, a3);
        break;
      case 14:
        sub_1D9BAF0A0(v5, a1, a2, a3);
        break;
      case 100:
        sub_1D9BAF65C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1D9BAB198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FA8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FA8);
      v32 = v40;
      sub_1D9BBEE98(v16, v40, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FA8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FA8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FA8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FA8);
  }

  else
  {
    v36 = v41;
    sub_1D9BBEE98(v33, v41, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FA8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FB0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FB0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FB0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FB0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FB0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FB0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FB0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BABD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FB8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FB8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FB8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FB8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FB8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FB8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FB8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAC2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  matched = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  v6 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FC0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = matched;
  v27 = matched;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FC0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FC0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FC0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FC0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FC0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FC0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FC8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FC8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FC8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FC8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FC8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FC8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FC8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BACE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FD0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FD0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FD0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FD0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FD0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FD0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FD0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FD8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FD8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FD8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FD8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FD8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FD8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FD8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAD9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FE0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FE0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FE0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FE0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FE0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FE0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FE0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BADF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FE8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FE8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FE8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FE8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FE8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FE8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FE8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAE528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FF0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FF0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FF0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FF0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FF0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FF0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FF0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAEAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FF8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FF8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FF8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FF8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FF8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FF8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FF8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAF0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54000);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1D99A6AE0(v25, &qword_1ECB54000);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB54000);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB54000);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB54000);
    return sub_1D99A6AE0(v33, &qword_1ECB54000);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB54000);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAF65C()
{
  type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0);
  sub_1D9A92004();
  return sub_1D9C7D4FC();
}

uint64_t sub_1D9BAF6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1D99AB100(v6, &v19 - v11, &qword_1ECB51100);
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D9BB0124(v6, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1D9BB035C(v6, a1, a2, a3);
      }

      else
      {
        sub_1D9BB0594(v6, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D9BAFCB4(v6, a1, a2, a3);
      }

      else
      {
        sub_1D9BAFEEC(v6, a1, a2, a3);
      }
    }

    else
    {
      sub_1D9BAFA80(v6, a1, a2, a3);
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_1D9BB0E74(v6, a1, a2, a3);
      if (v4)
      {
        return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 10)
      {
        sub_1D9BB10AC(v6, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      }

      sub_1D9BB12E4(v6, a1, a2, a3);
      if (v4)
      {
        return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      }
    }

LABEL_36:
    v5 = v4;
    sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      sub_1D9BB0A04(v6, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_1D9BB0C3C(v6, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_36;
      }
    }

    return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  }

  sub_1D9BB07CC(v6, a1, a2, a3);
LABEL_32:
  result = sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  if (v4)
  {
    return result;
  }

  v5 = 0;
LABEL_2:
  v14 = v6 + *(type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0) + 20);
  v15 = *v14;
  if (!*v14)
  {
    return sub_1D9C7D3AC();
  }

  v16 = *(v14 + 8);
  v19 = v15;
  v20 = v16;
  sub_1D9A92004();
  result = sub_1D9C7D75C();
  if (!v5)
  {
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BAFA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BAFCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BAFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  matched = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](matched);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
    sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB07CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB12E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB151C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB15F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB53FA0, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB1690(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2ED68, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB16FC()
{
  sub_1D9BBA588(&qword_1EDD2ED68, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB177C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41B08);
  __swift_project_value_buffer(v0, qword_1EDD41B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STATIC_IMAGE";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PAUSED_VIDEO_FRAME";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CAMERA_FRAME";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CAMERA_SCREENSHOT";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CAMERA_STILL";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB1A68()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41850);
  __swift_project_value_buffer(v0, qword_1EDD41850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_less_than";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB1C84()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1D9C7D4EC();
        break;
      case 2:
        sub_1D9C7D54C();
        break;
      case 1:
        sub_1D9C7D5CC();
        break;
    }
  }

  return result;
}

uint64_t sub_1D9BB1D30()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(v0 + 16) || (result = sub_1D9C7D77C(), !v1))
    {
      if (*(v0 + 20) != 1 || (result = sub_1D9C7D74C(), !v1))
      {
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB1E10@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB1E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54008, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB1F2C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB1F98()
{
  sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB2018()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD418B0);
  __swift_project_value_buffer(v0, qword_1EDD418B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ontology_kg_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "exclude_descendants";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_less_than";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB2268()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        sub_1D9C7D4EC();
      }
    }

    else if (result == 1)
    {
      sub_1D9C7D5CC();
    }

    else if (result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9BB232C()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(v0 + 16) || (result = sub_1D9C7D77C(), !v1))
    {
      if (*(v0 + 20) != 1 || (result = sub_1D9C7D74C(), !v1))
      {
        if (*(v0 + 21) != 1 || (result = sub_1D9C7D74C(), !v1))
        {
          type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB2438@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB24B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54010, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB2554(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB25C0()
{
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB2640()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD417F0);
  __swift_project_value_buffer(v0, qword_1EDD417F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "thresholds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "allowlist_detector_thresholds";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "denylist_detector_thresholds";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "reject_domain";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB2894()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          v3 = v0;
          type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_5:
          v0 = v3;
          sub_1D9C7D5FC();
        }
      }

      else
      {
        if (result == 2)
        {
          v3 = v0;
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
          goto LABEL_5;
        }

        if (result == 3)
        {
          sub_1D9C7D4EC();
        }
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB2A48()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold), result = sub_1D9C7D7FC(), !v1))
  {
    if (*(v0 + 24) != 1 || (result = sub_1D9C7D74C(), !v1))
    {
      if (!*(*(v0 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold), result = sub_1D9C7D7FC(), !v1))
      {
        if (!*(*(v0 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold), result = sub_1D9C7D7FC(), !v1))
        {
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB2C50@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB2CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54018, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB2D70(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB2DDC()
{
  sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB2E5C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41820);
  __swift_project_value_buffer(v0, qword_1EDD41820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "thresholds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "reject_domain";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "check_all_regions";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB3078()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 4 || result == 3)
      {
        sub_1D9C7D4EC();
      }

      else if (result == 2)
      {
        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB3184()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold), result = sub_1D9C7D7FC(), !v1))
  {
    if (v0[8] != 1 || (result = sub_1D9C7D74C(), !v1))
    {
      if (v0[9] != 1 || (result = sub_1D9C7D74C(), !v1))
      {
        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB32B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB3334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54020, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB33D4(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB3440()
{
  sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB34C0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71510);
  __swift_project_value_buffer(v0, qword_1ECB71510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "thresholds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enable_location_check";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB3690()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold), result = sub_1D9C7D7FC(), !v1))
  {
    if (v0[8] != 1 || (result = sub_1D9C7D74C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54028, type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB38CC(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53F20, type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB3938()
{
  sub_1D9BBA588(&qword_1ECB53F20, type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB39CC()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41988);
  __swift_project_value_buffer(v0, qword_1EDD41988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_threshold";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "reject_domain";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB3BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 4:
          sub_1D9C7D4EC();
          break;
        case 3:
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
          sub_1D9C7D5FC();
          break;
        case 2:
          sub_1D9BB5EE4(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
          break;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB3D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9BB6100(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
      sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
      sub_1D9C7D7FC();
    }

    if (v3[8] == 1)
    {
      sub_1D9C7D74C();
    }

    type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB3E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1D9BB3F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54030, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB3FC8(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB4034()
{
  sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB40B4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71528);
  __swift_project_value_buffer(v0, qword_1ECB71528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_url_regexps";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "referral_url_regexps";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coarse_thresholds";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "detector_thresholds";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "only_for_whole_image";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "reject_domain";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB4380()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v3 = v0;
          type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_18:
          v0 = v3;
          sub_1D9C7D5FC();
          goto LABEL_5;
        }

        if (result == 5 || result == 6)
        {
          sub_1D9C7D4EC();
        }
      }

      else
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
          goto LABEL_18;
        }

        sub_1D9C7D57C();
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB4520()
{
  if (!*(*v0 + 16) || (result = sub_1D9C7D7AC(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (result = sub_1D9C7D7AC(), !v1))
    {
      v3 = v1;
      if (*(*(v0 + 16) + 16))
      {
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
        result = sub_1D9C7D7FC();
        if (v1)
        {
          return result;
        }

        v3 = 0;
      }

      if (*(*(v0 + 24) + 16))
      {
        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
        v4 = v3;
        result = sub_1D9C7D7FC();
        if (v3)
        {
          return result;
        }
      }

      else
      {
        v4 = v3;
      }

      if (*(v0 + 32) != 1 || (result = sub_1D9C7D74C(), !v4))
      {
        if (*(v0 + 33) != 1 || (result = sub_1D9C7D74C(), !v4))
        {
          type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB471C@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB479C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54038, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB483C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB48A8()
{
  sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB4948(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1D9BBA588(a5, a6);
      sub_1D9C7D5FC();
    }

    else if (result == 2)
    {
      sub_1D9C7D4EC();
    }
  }

  return result;
}

uint64_t sub_1D9BB4A40()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(0), sub_1D9BBA588(&qword_1EDD2DE80, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange), result = sub_1D9C7D7FC(), !v1))
  {
    if (v0[8] != 1 || (result = sub_1D9C7D74C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB4BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54040, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB4C7C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB4CE8()
{
  sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB4D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB4E38()
{
  result = MEMORY[0x1DA73DF90](0x726F6353786F422ELL, 0xEE0065676E615265);
  qword_1ECB71540 = 0xD000000000000033;
  *algn_1ECB71548 = 0x80000001D9CAC020;
  return result;
}

uint64_t sub_1D9BB4ED0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85EA0;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v16 = sub_1D9C7D81C();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 13;
  v18[16] = 2;
  v17();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB5090()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9BB5110()
{
  if (!*v0 || (result = sub_1D9C7D77C(), !v1))
  {
    if (!v0[1] || (result = sub_1D9C7D77C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB5214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54048, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB52B4(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2DE80, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB5320()
{
  sub_1D9BBA588(&qword_1EDD2DE80, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB539C(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB5450()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41880);
  __swift_project_value_buffer(v0, qword_1EDD41880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "detector_thresholds";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iou_threshold";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ioa_threshold";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "reject_domain";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB5698()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_1D9C7D4EC();
          goto LABEL_5;
        }

        if (result == 4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_13:
          sub_1D9C7D54C();
          goto LABEL_5;
        }

        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
        sub_1D9C7D5FC();
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB57CC()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold), result = sub_1D9C7D7FC(), !v1))
  {
    if (!*(v0 + 8) || (result = sub_1D9C7D77C(), !v1))
    {
      if (*(v0 + 16) != 1 || (result = sub_1D9C7D74C(), !v1))
      {
        if (!*(v0 + 12) || (result = sub_1D9C7D77C(), !v1))
        {
          type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB5920@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB599C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54050, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB5A3C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB5AA8()
{
  sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB5B28()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41868);
  __swift_project_value_buffer(v0, qword_1EDD41868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "torso_threshold";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "head_threshold";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ioa_threshold";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB5D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1D9BB69DC(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
        }

        else if (result == 4)
        {
          sub_1D9C7D54C();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
        sub_1D9C7D5FC();
      }

      else if (result == 2)
      {
        sub_1D9BB5EE4(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB5EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB5F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold), result = sub_1D9C7D7FC(), !v4))
  {
    result = sub_1D9BB6100(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    if (!v4)
    {
      sub_1D9BB6CB8(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule, 3);
      if (v3[2])
      {
        sub_1D9C7D77C();
      }

      type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB6100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  sub_1D99AB100(a1 + *(v15 + 28), v9, &qword_1ECB510C8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D99A6AE0(v9, &qword_1ECB510C8);
  }

  sub_1D9BBEE98(v9, v14, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v14, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
}

uint64_t sub_1D9BB6320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 32);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1D9BB643C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54058, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB64DC(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB6548()
{
  sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB65C8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41808);
  __swift_project_value_buffer(v0, qword_1EDD41808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_threshold";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "inner_detector_threshold";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ioa_threshold";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "min_num_inner_objects";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB685C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
          sub_1D9C7D5FC();
        }

        else if (result == 2)
        {
          sub_1D9BB69DC(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1D9BB6A94();
            break;
          case 4:
            sub_1D9C7D54C();
            break;
          case 5:
            sub_1D9C7D55C();
            break;
        }
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB69DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB6A94()
{
  type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB6B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold), result = sub_1D9C7D7FC(), !v4))
  {
    result = sub_1D9BB6CB8(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule, 2);
    if (!v4)
    {
      sub_1D9BB6EDC(v3, a1, a2, a3);
      if (v3[2])
      {
        sub_1D9C7D77C();
      }

      if (v3[3])
      {
        sub_1D9C7D78C();
      }

      type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB6CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_1D99AB100(a1 + *(v16 + 32), v10, &qword_1ECB510C8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1D99A6AE0(v10, &qword_1ECB510C8);
  }

  sub_1D9BBEE98(v10, v15, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v15, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
}

uint64_t sub_1D9BB6EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  sub_1D99AB100(a1 + *(v12 + 36), v7, &qword_1ECB510C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB510C8);
  }

  sub_1D9BBEE98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v11, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
}

uint64_t sub_1D9BB70F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 36)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1D9BB7210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54060, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB72B0(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB731C()
{
  sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB73BC()
{
  if (!*v0 || (result = sub_1D9C7D77C(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB7484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54068, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB7524(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB7590()
{
  sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB760C(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB76D0()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D50C();
    }
  }

  return result;
}

uint64_t sub_1D9BB7740()
{
  if (!*(*v0 + 16) || (result = sub_1D9C7D6FC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_Polygon(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB7814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54070, type metadata accessor for Argos_Protos_Queryflow_Polygon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB78B4(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB7920()
{
  sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB79B4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD418C8);
  __swift_project_value_buffer(v0, qword_1EDD418C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "reject_domain_if_missing_location";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cell_config";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cell_level";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cell_levels";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "prerequisite_domain";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "country_config";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB7C80()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
LABEL_14:
          sub_1D9C7D4EC();
          break;
        case 5:
          sub_1D9C7D51C();
          break;
        case 6:
          sub_1D9BB7E40();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_14;
        case 2:
          sub_1D9BB7D8C();
          break;
        case 3:
          sub_1D9C7D55C();
          break;
      }
    }
  }
}

uint64_t sub_1D9BB7D8C()
{
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB7E40()
{
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB7EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    result = sub_1D9BB8020(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 4))
      {
        sub_1D9C7D78C();
      }

      if (*(v3 + 16) == 1)
      {
        sub_1D9C7D74C();
      }

      if (*(*(v3 + 8) + 16))
      {
        sub_1D9C7D70C();
      }

      sub_1D9BB823C(v3, a1, a2, a3);
      type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB8020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  sub_1D99AB100(a1 + *(v12 + 36), v7, &qword_1ECB53DD8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB53DD8);
  }

  sub_1D9BBEE98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
}

uint64_t sub_1D9BB823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  sub_1D99AB100(a1 + *(v12 + 40), v7, &qword_1ECB53DE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB53DE0);
  }

  sub_1D9BBEE98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
}

uint64_t sub_1D9BB8458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1D9BB8588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54078, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB8628(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB8694()
{
  sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB8714()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000013, 0x80000001D9CAC320);
  qword_1ECB71568 = 0xD000000000000033;
  unk_1ECB71570 = 0x80000001D9CAC260;
  return result;
}

uint64_t sub_1D9BB8788()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71578);
  __swift_project_value_buffer(v0, qword_1ECB71578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bloom_filter_data";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_of_hashes";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hash_seed";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "num_of_bits";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB89D0()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_1D9C7D5DC();
      }
    }

    else if (result == 1)
    {
      sub_1D9C7D53C();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1D9BB8A84()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1D9C7D76C();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0 + 16) || (result = sub_1D9C7D7DC(), !v1))
  {
    if (!*(v0 + 20) || (result = sub_1D9C7D7DC(), !v1))
    {
      if (!*(v0 + 24) || (result = sub_1D9C7D7DC(), !v1))
      {
        type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB8BA0@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1D9C87D50;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB8C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54080, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB8CCC(uint64_t a1)
{
  v2 = sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB8D38()
{
  sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB8DB8()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000016, 0x80000001D9CAC380);
  qword_1ECB71590 = 0xD000000000000033;
  *algn_1ECB71598 = 0x80000001D9CAC260;
  return result;
}

uint64_t sub_1D9BB8E4C()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Argos_Protos_Queryflow_Polygon(0);
        sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB8F2C()
{
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Queryflow_Polygon(0), sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon), result = sub_1D9C7D7FC(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB9068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54088, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB9108(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB9174()
{
  sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB9208(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB92B4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD418E0);
  __swift_project_value_buffer(v0, qword_1EDD418E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB947C()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D5CC();
    }

    else if (result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9BB9508()
{
  v2 = *(v0 + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (result = sub_1D9C7D7CC(), !v1))
  {
    if (!*(v0 + 16) || (result = sub_1D9C7D77C(), !v1))
    {
      type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB960C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54090, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB96AC(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB9718()
{
  sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB9794(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB9860()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41F88);
  __swift_project_value_buffer(v0, qword_1EDD41F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_thresholds";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "coarse_thresholds";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB9A74()
{
  result = sub_1D9C7D4CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        v3 = v0;
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v3 = v0;
        type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
        sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1D9C7D4CC();
    }

    v3 = v0;
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_5:
    v0 = v3;
    sub_1D9C7D5FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D9BB9C10()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
    sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
    result = sub_1D9C7D7FC();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    v4 = v2;
    result = sub_1D9C7D7FC();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[2] + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB9E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54098, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB9ED8(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB9F44()
{
  sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB9FE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85660;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1D9C7D81C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BBA154()
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D4EC();
    }
  }

  return result;
}

uint64_t sub_1D9BBA1C4()
{
  if (*v0 != 1 || (result = sub_1D9C7D74C(), !v1))
  {
    type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BBA2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB540A0, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BBA36C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BBA3D8()
{
  sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BBA454(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBA588(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9BBBD00(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = v10;
  v39 = v7;
  v20 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  v42 = a2;
  v21 = *(v20 + 32);
  v22 = a1;
  v23 = *(v14 + 48);
  v40 = v20;
  v41 = v22;
  sub_1D99AB100(v22 + v21, v19, &qword_1ECB510C8);
  sub_1D99AB100(v42 + v21, &v19[v23], &qword_1ECB510C8);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_1D99A6AE0(v19, &qword_1ECB510C8);
      goto LABEL_9;
    }

LABEL_7:
    v25 = v19;
LABEL_15:
    sub_1D99A6AE0(v25, &qword_1ECB51E30);
    goto LABEL_16;
  }

  sub_1D99AB100(v19, v13, &qword_1ECB510C8);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_7;
  }

  v26 = v39;
  sub_1D9BBEE98(&v19[v23], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  v27 = sub_1D9BBD6FC(v13, v26);
  sub_1D9BBEE38(v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D99A6AE0(v19, &qword_1ECB510C8);
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v28 = *(v40 + 36);
  v29 = *(v14 + 48);
  sub_1D99AB100(v41 + v28, v16, &qword_1ECB510C8);
  v30 = v42 + v28;
  v31 = v42;
  sub_1D99AB100(v30, &v16[v29], &qword_1ECB510C8);
  if (v24(v16, 1, v4) != 1)
  {
    v32 = v38;
    sub_1D99AB100(v16, v38, &qword_1ECB510C8);
    if (v24(&v16[v29], 1, v4) != 1)
    {
      v35 = v39;
      sub_1D9BBEE98(&v16[v29], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v36 = sub_1D9BBD6FC(v32, v35);
      sub_1D9BBEE38(v35, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D99A6AE0(v16, &qword_1ECB510C8);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_14;
  }

  if (v24(&v16[v29], 1, v4) != 1)
  {
LABEL_14:
    v25 = v16;
    goto LABEL_15;
  }

  sub_1D99A6AE0(v16, &qword_1ECB510C8);
LABEL_19:
  if (*(v41 + 2) == *(v31 + 2) && *(v41 + 3) == *(v31 + 3))
  {
    sub_1D9C7D3CC();
    sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
    v33 = sub_1D9C7DC2C();
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1D9BBC288(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1ECA4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBC354(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBC434(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = v10;
  v39 = v7;
  v20 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  v42 = a2;
  v21 = *(v20 + 28);
  v22 = a1;
  v23 = *(v14 + 48);
  v40 = v20;
  v41 = v22;
  sub_1D99AB100(v22 + v21, v19, &qword_1ECB510C8);
  sub_1D99AB100(v42 + v21, &v19[v23], &qword_1ECB510C8);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_1D99A6AE0(v19, &qword_1ECB510C8);
      goto LABEL_9;
    }

LABEL_7:
    v25 = v19;
LABEL_15:
    sub_1D99A6AE0(v25, &qword_1ECB51E30);
    goto LABEL_16;
  }

  sub_1D99AB100(v19, v13, &qword_1ECB510C8);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_7;
  }

  v26 = v39;
  sub_1D9BBEE98(&v19[v23], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  v27 = sub_1D9BBD6FC(v13, v26);
  sub_1D9BBEE38(v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D99A6AE0(v19, &qword_1ECB510C8);
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v28 = *(v40 + 32);
  v29 = *(v14 + 48);
  sub_1D99AB100(v41 + v28, v16, &qword_1ECB510C8);
  v30 = v42 + v28;
  v31 = v42;
  sub_1D99AB100(v30, &v16[v29], &qword_1ECB510C8);
  if (v24(v16, 1, v4) != 1)
  {
    v32 = v38;
    sub_1D99AB100(v16, v38, &qword_1ECB510C8);
    if (v24(&v16[v29], 1, v4) != 1)
    {
      v35 = v39;
      sub_1D9BBEE98(&v16[v29], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v36 = sub_1D9BBD6FC(v32, v35);
      sub_1D9BBEE38(v35, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D99A6AE0(v16, &qword_1ECB510C8);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_14;
  }

  if (v24(&v16[v29], 1, v4) != 1)
  {
LABEL_14:
    v25 = v16;
    goto LABEL_15;
  }

  sub_1D99A6AE0(v16, &qword_1ECB510C8);
LABEL_19:
  if (*(v41 + 2) == *(v31 + 2))
  {
    sub_1D9C7D3CC();
    sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
    v33 = sub_1D9C7DC2C();
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1D9BBC9AC(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1ECA4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBCA88(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0 || (sub_1D9A1EF04(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_1D9A1EA54(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1D9A1ECA4(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBCB84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = (&v40 - v8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53F90);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v40 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53F98);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v40 = v6;
  v42 = v10;
  v41 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  v21 = *(v41 + 36);
  v22 = *(v18 + 48);
  v43 = a1;
  sub_1D99AB100(&a1[v21], v20, &qword_1ECB53DD8);
  v23 = &a2[v21];
  v24 = a2;
  sub_1D99AB100(v23, &v20[v22], &qword_1ECB53DD8);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) == 1)
  {
    if (v25(&v20[v22], 1, v11) == 1)
    {
      sub_1D99A6AE0(v20, &qword_1ECB53DD8);
      goto LABEL_10;
    }

LABEL_7:
    v26 = &qword_1ECB53F98;
    v27 = v20;
LABEL_8:
    sub_1D99A6AE0(v27, v26);
    goto LABEL_13;
  }

  sub_1D99AB100(v20, v17, &qword_1ECB53DD8);
  if (v25(&v20[v22], 1, v11) == 1)
  {
    sub_1D9BBEE38(v17, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
    goto LABEL_7;
  }

  sub_1D9BBEE98(&v20[v22], v14, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  v28 = sub_1D9BBD28C(v17, v14);
  sub_1D9BBEE38(v14, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  sub_1D9BBEE38(v17, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  sub_1D99A6AE0(v20, &qword_1ECB53DD8);
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v29 = v43;
  if (*(v43 + 1) != *(a2 + 1) || (sub_1D9A31C70(*(v43 + 1), *(a2 + 1)) & 1) == 0 || v29[16] != a2[16])
  {
    goto LABEL_13;
  }

  v32 = v42;
  v33 = *(v41 + 40);
  v34 = *(v45 + 48);
  sub_1D99AB100(&v29[v33], v42, &qword_1ECB53DE0);
  sub_1D99AB100(&v24[v33], v32 + v34, &qword_1ECB53DE0);
  v35 = v47;
  v36 = *(v46 + 48);
  if (v36(v32, 1, v47) == 1)
  {
    if (v36(v32 + v34, 1, v35) == 1)
    {
      sub_1D99A6AE0(v32, &qword_1ECB53DE0);
LABEL_18:
      sub_1D9C7D3CC();
      sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v30 = sub_1D9C7DC2C();
      return v30 & 1;
    }

    goto LABEL_21;
  }

  v37 = v44;
  sub_1D99AB100(v32, v44, &qword_1ECB53DE0);
  if (v36(v32 + v34, 1, v35) == 1)
  {
    sub_1D9BBEE38(v37, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
LABEL_21:
    v26 = &qword_1ECB53F90;
LABEL_22:
    v27 = v32;
    goto LABEL_8;
  }

  v38 = v40;
  sub_1D9BBEE98(v32 + v34, v40, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  if ((sub_1D9A22554(*v37, *v38) & 1) == 0)
  {
    sub_1D9BBEE38(v38, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
    sub_1D9BBEE38(v37, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
    v26 = &qword_1ECB53DE0;
    goto LABEL_22;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  v39 = sub_1D9C7DC2C();
  sub_1D9BBEE38(v38, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  sub_1D9BBEE38(v37, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  sub_1D99A6AE0(v32, &qword_1ECB53DE0);
  if (v39)
  {
    goto LABEL_18;
  }

LABEL_13:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1D9BBD28C(uint64_t a1, uint64_t a2)
{
  if ((sub_1D99FBD74(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBD36C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v22 = v14;
  v23 = v16;
  sub_1D99AB100(v16 + v15, v13, &qword_1ECB510C8);
  sub_1D99AB100(a2 + v15, &v13[v17], &qword_1ECB510C8);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB510C8);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      sub_1D9BBEE98(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v19 = sub_1D9BBD6FC(v10, v7);
      sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D99A6AE0(v13, &qword_1ECB510C8);
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_7:
    sub_1D99A6AE0(v13, &qword_1ECB51E30);
    goto LABEL_10;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1D99A6AE0(v13, &qword_1ECB510C8);
LABEL_9:
  if (*(v23 + 8) == *(a2 + 8))
  {
    sub_1D9C7D3CC();
    sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
    v20 = sub_1D9C7DC2C();
    return v20 & 1;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D9BBD6FC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 21) != *(a2 + 21))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBD7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v15 = *(v14 + 56);
  sub_1D99AB100(a1, &v24 - v12, &qword_1ECB51100);
  sub_1D99AB100(a2, &v13[v15], &qword_1ECB51100);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB51100);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D9BBEE98(&v13[v15], v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v19 = sub_1D9BBDC98(v10, v7);
      sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      sub_1D99A6AE0(v13, &qword_1ECB51100);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB51E40);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D99A6AE0(v13, &qword_1ECB51100);
LABEL_10:
  v20 = *(type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0) + 20);
  v21 = *(a1 + v20);
  v22 = a2 + v20;
  v23 = *(a2 + v20);
  if (*(v22 + 8) == 1)
  {
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        if (v21 != 3)
        {
          goto LABEL_7;
        }
      }

      else if (v23 == 4)
      {
        if (v21 != 4)
        {
          goto LABEL_7;
        }
      }

      else if (v21 != 5)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        if (v21 != 1)
        {
          goto LABEL_7;
        }
      }

      else if (v21 != 2)
      {
        goto LABEL_7;
      }

LABEL_17:
      sub_1D9C7D3CC();
      sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else if (v21 == v23)
  {
    goto LABEL_17;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9BBDBBC(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0 || (sub_1D9A1ECA4(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_1D9A1ECA4(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBDC98(uint64_t a1, uint64_t a2)
{
  v114 = a1;
  v93 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v93);
  v106 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v94);
  v104 = (&v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v91);
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = (&v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v92);
  v101 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](matched - 8);
  v97 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v90);
  v98 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  MEMORY[0x1EEE9AC00](v22);
  v112 = (&v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v111 = (&v90 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v113 = (&v90 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v108 = (&v90 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v107 = (&v90 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v90 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v110 = (&v90 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v90 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v90 - v44);
  MEMORY[0x1EEE9AC00](v46);
  v109 = (&v90 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v90 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53F88);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v90 - v52;
  v55 = *(v54 + 56);
  sub_1D9BBEDD4(v114, &v90 - v52);
  sub_1D9BBEDD4(a2, &v53[v55]);
  v56 = v53;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D9BBEDD4(v53, v34);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v60 = v100;
          sub_1D9BBEE98(&v53[v55], v100, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
          v61 = sub_1D9BBC434(v34, v60);
          v62 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule;
          goto LABEL_46;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule;
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v34 = v107;
        sub_1D9BBEDD4(v53, v107);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v60 = v102;
          sub_1D9BBEE98(&v53[v55], v102, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
          v61 = sub_1D9BBBD00(v34, v60);
          v62 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule;
LABEL_46:
          v73 = v62;
          sub_1D9BBEE38(v60, v62);
          v74 = v34;
          goto LABEL_49;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule;
      }

      else
      {
        v34 = v108;
        sub_1D9BBEDD4(v53, v108);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v60 = v103;
          sub_1D9BBEE98(&v53[v55], v103, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
          v61 = sub_1D9BBCB84(v34, v60);
          v62 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule;
          goto LABEL_46;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule;
      }

LABEL_65:
      v70 = v81;
      v71 = v34;
      goto LABEL_66;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v34 = v113;
      sub_1D9BBEDD4(v53, v113);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v58 = v105;
        sub_1D9BBEE98(&v53[v55], v105, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
        if (sub_1D9A255BC(*v34, *v58) & 1) != 0 && (sub_1D9A1ECA4(v34[1], *(v58 + 8)) & 1) != 0 && (sub_1D9A1EA54(v34[2], *(v58 + 16)))
        {
          sub_1D9C7D3CC();
          sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
          if (sub_1D9C7DC2C())
          {
            v59 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule;
            goto LABEL_41;
          }
        }

        v82 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule;
        goto LABEL_70;
      }

      v81 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule;
      goto LABEL_65;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v34 = v111;
      sub_1D9BBEDD4(v53, v111);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v81 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule;
        goto LABEL_65;
      }

      v67 = v104;
      sub_1D9BBEE98(&v53[v55], v104, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      if (*v34 == *v67)
      {
        sub_1D9C7D3CC();
        sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        v68 = sub_1D9C7DC2C();
        sub_1D9BBEE38(v67, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
        if (v68)
        {
          v69 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule;
LABEL_75:
          v66 = v69;
          v65 = v34;
          goto LABEL_76;
        }
      }

      else
      {
        sub_1D9BBEE38(v67, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      }

      v88 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule;
    }

    else
    {
      v34 = v112;
      sub_1D9BBEDD4(v53, v112);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v81 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule;
        goto LABEL_65;
      }

      v80 = v106;
      sub_1D9BBEE98(&v53[v55], v106, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      if (*v34 == *v80)
      {
        sub_1D9C7D3CC();
        sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        v87 = sub_1D9C7DC2C();
        sub_1D9BBEE38(v80, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
        if (v87)
        {
          v69 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule;
          goto LABEL_75;
        }
      }

      else
      {
        sub_1D9BBEE38(v80, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      }

      v88 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule;
    }

    v85 = v88;
    v84 = v34;
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D9BBEDD4(v53, v42);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v70 = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule;
        v71 = v42;
        goto LABEL_66;
      }

      v72 = v97;
      sub_1D9BBEE98(&v53[v55], v97, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      v61 = sub_1D9BBCA88(v42, v72);
      v73 = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule;
      sub_1D9BBEE38(v72, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      v74 = v42;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v34 = v110;
        sub_1D9BBEDD4(v53, v110);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v63 = &v53[v55];
          v64 = v101;
          sub_1D9BBEE98(v63, v101, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
          if ((sub_1D9A22814(*v34, *v64) & 1) != 0 && *(v34 + 8) == *(v64 + 8))
          {
            sub_1D9C7D3CC();
            sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
            if (sub_1D9C7DC2C())
            {
              sub_1D9BBEE38(v64, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
              v65 = v34;
              v66 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule;
LABEL_76:
              sub_1D9BBEE38(v65, v66);
              sub_1D9BBEE38(v56, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
              v61 = 1;
              return v61 & 1;
            }
          }

          sub_1D9BBEE38(v64, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
          v84 = v34;
          v85 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule;
          goto LABEL_81;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule;
        goto LABEL_65;
      }

      sub_1D9BBEDD4(v53, v37);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v70 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule;
        v71 = v37;
        goto LABEL_66;
      }

      v78 = v99;
      sub_1D9BBEE98(&v53[v55], v99, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      v61 = sub_1D9BBC9AC(v37, v78);
      v73 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule;
      sub_1D9BBEE38(v78, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      v74 = v37;
    }

LABEL_49:
    v79 = v73;
    goto LABEL_50;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D9BBEDD4(v53, v50);
    if (swift_getEnumCaseMultiPayload())
    {
      v70 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule;
      v71 = v50;
LABEL_66:
      sub_1D9BBEE38(v71, v70);
      goto LABEL_67;
    }

    v86 = v95;
    sub_1D9BBEE98(&v53[v55], v95, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    v61 = sub_1D9BBDBBC(v50, v86);
    sub_1D9BBEE38(v86, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    v74 = v50;
    v79 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule;
LABEL_50:
    sub_1D9BBEE38(v74, v79);
    sub_1D9BBEE38(v56, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    return v61 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = v109;
    sub_1D9BBEDD4(v53, v109);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = v98;
      sub_1D9BBEE98(&v53[v55], v98, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
      if ((sub_1D9A1ECA4(*v34, *v58) & 1) != 0 && *(v34 + 8) == *(v58 + 8) && *(v34 + 9) == *(v58 + 9))
      {
        sub_1D9C7D3CC();
        sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
        if (sub_1D9C7DC2C())
        {
          v59 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule;
LABEL_41:
          v75 = v59;
          sub_1D9BBEE38(v58, v59);
          v65 = v34;
          v66 = v75;
          goto LABEL_76;
        }
      }

      v82 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule;
LABEL_70:
      v83 = v82;
      sub_1D9BBEE38(v58, v82);
      v84 = v34;
      v85 = v83;
LABEL_81:
      sub_1D9BBEE38(v84, v85);
      sub_1D9BBEE38(v56, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      goto LABEL_82;
    }

    v81 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule;
    goto LABEL_65;
  }

  v76 = v53;
  sub_1D9BBEDD4(v53, v45);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D9BBEE38(v45, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
LABEL_67:
    sub_1D99A6AE0(v53, &qword_1ECB53F88);
LABEL_82:
    v61 = 0;
    return v61 & 1;
  }

  v77 = v96;
  sub_1D9BBEE98(&v53[v55], v96, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  v61 = sub_1D9BBD36C(v45, v77);
  sub_1D9BBEE38(v77, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  sub_1D9BBEE38(v45, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  sub_1D9BBEE38(v76, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  return v61 & 1;
}

uint64_t sub_1D9BBEDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9BBEE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9BBEE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BBEF00(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D9A255BC(*a1, *a2) & 1) == 0 || (sub_1D9A1ECA4(a1[1], a2[1]) & 1) == 0 || (sub_1D9A1EA54(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t __swift_get_extra_inhabitant_index_136Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_137Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9C7D3CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D9BBF194(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1D9BA9610(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9BBF22C()
{
  qword_1ECB715B8 = MEMORY[0x1E69E7CC0];
  unk_1ECB715C0 = MEMORY[0x1E69E7CC0];
  qword_1ECB715C8 = MEMORY[0x1E69E7CC0];
  unk_1ECB715D0 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9BBF248@<X0>(uint64_t *a1@<X8>)
{
  v3 = ~sub_1D9A75D94();
  type metadata accessor for CipherMLSimilarityClient();
  swift_allocObject();

  result = sub_1D9BCCF5C(v4, v3 & 1);
  if (!v1)
  {
    *a1 = result;
    a1[1] = &off_1F5534D40;
  }

  return result;
}

uint64_t sub_1D9BBF2C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9ADD448();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1D9BBF2EC(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - v7);
  if (a2)
  {
    *v8 = a2;
    swift_storeEnumTagMultiPayload();
    v9 = a2;
  }

  else
  {
    sub_1D9BC0FC4(a1, &v11 - v7, type metadata accessor for ServerSearchResult);
    swift_storeEnumTagMultiPayload();
  }

  a3(v8);
  return sub_1D99A6AE0(v8, &qword_1ECB53DC0);
}

uint64_t sub_1D9BBF3F8(__int128 *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v87 = a5;
  v88 = a6;
  v76 = a3;
  v73 = a2;
  v8 = sub_1D9C7DA2C();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1D9C7DA4C();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v71 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v86);
  v18 = (&v71 - v17);
  v85 = sub_1D9C7D8DC();
  v19 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = a1[9];
  v99 = a1[8];
  v100 = v23;
  v101 = a1[10];
  v102 = *(a1 + 22);
  v24 = a1[5];
  v95 = a1[4];
  v96 = v24;
  v25 = a1[7];
  v97 = a1[6];
  v98 = v25;
  v26 = a1[1];
  v91 = *a1;
  v92 = v26;
  v27 = a1[3];
  v93 = a1[2];
  v94 = v27;
  v28 = *&a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v28 + 4);
  v77 = a4;
  LODWORD(a4) = a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v28 + 4);
  if (a4 == 1)
  {
    static Logger.argos.getter(v22);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "encryptedSearchPEC(): canceled", v31, 2u);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    (*(v19 + 8))(v22, v85);
    sub_1D9A0EEC0();
    v32 = swift_allocError();
    *v33 = 0;
    *v18 = v32;
    swift_storeEnumTagMultiPayload();
    v87(v18);
    return sub_1D99A6AE0(v18, &qword_1ECB53DC0);
  }

  else
  {
    v34 = v84;
    v71 = sub_1D9C1A6B0();
    v85 = v36;
    v37 = swift_allocObject();
    v38 = v88;
    *(v37 + 16) = v87;
    *(v37 + 24) = v38;
    v86 = v37;
    v39 = *(v34 + 16);
    sub_1D99AB100(v73, v16, &unk_1ECB51B10);
    v40 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v41 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 191) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1D9A0E758(v16, v43 + v40);
    v44 = v43 + v41;
    v45 = v100;
    *(v44 + 128) = v99;
    *(v44 + 144) = v45;
    *(v44 + 160) = v101;
    *(v44 + 176) = v102;
    v46 = v96;
    *(v44 + 64) = v95;
    *(v44 + 80) = v46;
    v47 = v98;
    *(v44 + 96) = v97;
    *(v44 + 112) = v47;
    v48 = v92;
    *v44 = v91;
    *(v44 + 16) = v48;
    v49 = v94;
    *(v44 + 32) = v93;
    *(v44 + 48) = v49;
    v50 = (v43 + v42);
    v51 = v71;
    v52 = v85;
    *v50 = v71;
    v50[1] = v52;
    v53 = (v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v53 = sub_1D9BC102C;
    v53[1] = v37;
    v87 = *(v39 + 16);
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = v75;
    sub_1D9BC0FC4(v76, v75, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v56 = (*(v74 + 80) + 232) & ~*(v74 + 80);
    v57 = (v12 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v77;
    *(v58 + 16) = v54;
    *(v58 + 24) = v59;
    *(v58 + 32) = sub_1D9BC1308;
    *(v58 + 40) = v43;
    v60 = v100;
    *(v58 + 176) = v99;
    *(v58 + 192) = v60;
    *(v58 + 208) = v101;
    *(v58 + 224) = v102;
    v61 = v96;
    *(v58 + 112) = v95;
    *(v58 + 128) = v61;
    v62 = v98;
    *(v58 + 144) = v97;
    *(v58 + 160) = v62;
    v63 = v92;
    *(v58 + 48) = v91;
    *(v58 + 64) = v63;
    v64 = v94;
    *(v58 + 80) = v93;
    *(v58 + 96) = v64;
    sub_1D9BC0D8C(v55, v58 + v56);
    v65 = (v58 + v57);
    *v65 = v51;
    v65[1] = v52;
    v90[4] = sub_1D9BC1404;
    v90[5] = v58;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 1107296256;
    v90[2] = sub_1D9A0A1E0;
    v90[3] = &block_descriptor_31;
    v66 = _Block_copy(v90);
    swift_unknownObjectRetain_n();
    sub_1D99BB40C(&v91, v89);
    swift_unknownObjectRetain();
    sub_1D99BB40C(&v91, v89);

    v67 = v59;

    v68 = v78;
    sub_1D9C7DA3C();
    v89[0] = MEMORY[0x1E69E7CC0];
    sub_1D9A0E7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
    sub_1D9A0E83C();
    v69 = v80;
    v70 = v83;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v68, v69, v66);
    _Block_release(v66);

    swift_unknownObjectRelease_n();
    (*(v82 + 8))(v69, v70);
    (*(v79 + 8))(v68, v81);
  }
}

uint64_t sub_1D9BBFD5C(__int128 *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v97 = a5;
  v98 = a6;
  v85 = a3;
  v92 = a2;
  v8 = sub_1D9C7DA2C();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1D9C7DA4C();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0);
  MEMORY[0x1EEE9AC00](v96);
  v19 = (&v77 - v18);
  v95 = sub_1D9C7D8DC();
  v20 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  v24 = a1[9];
  v109 = a1[8];
  v110 = v24;
  v111 = a1[10];
  v112 = *(a1 + 22);
  v25 = a1[5];
  v105 = a1[4];
  v106 = v25;
  v26 = a1[7];
  v107 = a1[6];
  v108 = v26;
  v27 = a1[1];
  v101 = *a1;
  v102 = v27;
  v28 = a1[3];
  v103 = a1[2];
  v104 = v28;
  v29 = *&a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v29 + 4);
  v93 = a4;
  LODWORD(a4) = a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v29 + 4);
  if (a4 == 1)
  {
    static Logger.argos.getter(v23);
    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E09C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D9962000, v30, v31, "encryptedSearchPIR(): canceled", v32, 2u);
      MEMORY[0x1DA7405F0](v32, -1, -1);
    }

    (*(v20 + 8))(v23, v95);
    sub_1D9A0EEC0();
    v33 = swift_allocError();
    *v34 = 0;
    *v19 = v33;
    swift_storeEnumTagMultiPayload();
    v97(v19);
    return sub_1D99A6AE0(v19, &qword_1ECB53DC0);
  }

  else
  {
    v35 = v94;
    v80 = sub_1D9C1A6B0();
    v96 = v37;
    v38 = swift_allocObject();
    v39 = v98;
    *(v38 + 16) = v97;
    *(v38 + 24) = v39;
    v95 = v38;
    v78 = *(v35 + 16);
    sub_1D99AB100(v92, v17, &unk_1ECB51B10);
    v40 = *(v81 + 80);
    v41 = (v40 + 16) & ~v40;
    v79 = v40 | 7;
    v81 = v14 + 7;
    v42 = (v14 + 7 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 191) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_1D9A0E758(v17, v45 + v41);
    v46 = v45 + v42;
    v47 = v110;
    *(v46 + 128) = v109;
    *(v46 + 144) = v47;
    *(v46 + 160) = v111;
    *(v46 + 176) = v112;
    v48 = v106;
    *(v46 + 64) = v105;
    *(v46 + 80) = v48;
    v49 = v108;
    *(v46 + 96) = v107;
    *(v46 + 112) = v49;
    v50 = v102;
    *v46 = v101;
    *(v46 + 16) = v50;
    v51 = v104;
    *(v46 + 32) = v103;
    *(v46 + 48) = v51;
    v52 = v45;
    v53 = (v45 + v43);
    v54 = v80;
    v55 = v96;
    *v53 = v80;
    v53[1] = v55;
    v56 = (v45 + v44);
    *v56 = sub_1D9BC1688;
    v56[1] = v38;
    v97 = *(v78 + 16);
    v57 = swift_allocObject();
    v94 = v57;
    swift_weakInit();
    v58 = v84;
    sub_1D9BC0FC4(v85, v84, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v59 = v83;
    sub_1D99AB100(v92, v83, &unk_1ECB51B10);
    v60 = (*(v82 + 80) + 232) & ~*(v82 + 80);
    v61 = (v12 + v40 + v60) & ~v40;
    v62 = (v81 + v61) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v93;
    *(v63 + 16) = v57;
    *(v63 + 24) = v64;
    *(v63 + 32) = sub_1D9BC0CB4;
    *(v63 + 40) = v52;
    v65 = v110;
    *(v63 + 176) = v109;
    *(v63 + 192) = v65;
    *(v63 + 208) = v111;
    *(v63 + 224) = v112;
    v66 = v106;
    *(v63 + 112) = v105;
    *(v63 + 128) = v66;
    v67 = v108;
    *(v63 + 144) = v107;
    *(v63 + 160) = v67;
    v68 = v102;
    *(v63 + 48) = v101;
    *(v63 + 64) = v68;
    v69 = v104;
    *(v63 + 80) = v103;
    *(v63 + 96) = v69;
    sub_1D9BC0D8C(v58, v63 + v60);
    sub_1D9A0E758(v59, v63 + v61);
    v70 = (v63 + v62);
    v71 = v96;
    *v70 = v54;
    v70[1] = v71;
    v100[4] = sub_1D9BC0DF0;
    v100[5] = v63;
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 1107296256;
    v100[2] = sub_1D9A0A1E0;
    v100[3] = &block_descriptor_19;
    v72 = _Block_copy(v100);
    swift_unknownObjectRetain_n();
    sub_1D99BB40C(&v101, v99);
    swift_unknownObjectRetain();
    sub_1D99BB40C(&v101, v99);

    v73 = v93;

    v74 = v86;
    sub_1D9C7DA3C();
    v99[0] = MEMORY[0x1E69E7CC0];
    sub_1D9A0E7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
    sub_1D9A0E83C();
    v75 = v88;
    v76 = v91;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v74, v75, v72);
    _Block_release(v72);

    swift_unknownObjectRelease_n();
    (*(v90 + 8))(v75, v76);
    (*(v87 + 8))(v74, v89);
  }
}

uint64_t sub_1D9BC0744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, void *), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, _OWORD *, uint64_t))
{
  v13 = type metadata accessor for ServerSearchResult();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 144);
  v33[8] = *(a4 + 128);
  v33[9] = v17;
  v33[10] = *(a4 + 160);
  v34 = *(a4 + 176);
  v18 = *(a4 + 80);
  v33[4] = *(a4 + 64);
  v33[5] = v18;
  v19 = *(a4 + 112);
  v33[6] = *(a4 + 96);
  v33[7] = v19;
  v20 = *(a4 + 16);
  v33[0] = *a4;
  v21 = *(a4 + 32);
  v22 = *(a4 + 48);
  v33[1] = v20;
  v33[2] = v21;
  v33[3] = v22;
  v23 = a7(a1, a3, v33, a2);
  v25 = v24;
  sub_1D99AB100(a1, v16, &qword_1ECB519C8);
  v26 = (a1 + *(type metadata accessor for NetworkService.NetworkSearchResponse(0) + 24));
  *&v16[*(v14 + 28)] = v23;
  v27 = *v26;
  v28 = v26[1];
  v29 = &v16[*(v14 + 32)];
  *v29 = v27;
  *(v29 + 1) = v28;
  if (*(v25 + 16))
  {
    v30 = *(v25 + 32);
    v31 = v30;
  }

  else
  {
    v30 = 0;
  }

  a5(v16, v30);

  return sub_1D9BC0F68(v16);
}

uint64_t sub_1D9BC08F4(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, void *))
{
  v15 = type metadata accessor for ServerSearchResult();
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a7 + 144);
  v33[8] = *(a7 + 128);
  v33[9] = v19;
  v33[10] = *(a7 + 160);
  v34 = *(a7 + 176);
  v20 = *(a7 + 80);
  v33[4] = *(a7 + 64);
  v33[5] = v20;
  v21 = *(a7 + 112);
  v33[6] = *(a7 + 96);
  v33[7] = v21;
  v22 = *(a7 + 16);
  v33[0] = *a7;
  v23 = *(a7 + 32);
  v24 = *(a7 + 48);
  v33[1] = v22;
  v33[2] = v23;
  v33[3] = v24;
  v25 = sub_1D99DC2C8(a2, a6, v33, a5, a8, a9);
  v27 = v26;
  v28 = sub_1D9C7CBEC();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  *&v18[*(v16 + 28)] = v25;
  v29 = &v18[*(v16 + 32)];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  if (*(v27 + 16))
  {
    v30 = *(v27 + 32);
    v31 = v30;
  }

  else
  {
    v30 = 0;
  }

  a10(v18, v30);

  return sub_1D9BC0F68(v18);
}

uint64_t sub_1D9BC0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(char *, void *))
{
  v14 = type metadata accessor for ServerSearchResult();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 + 144);
  v32[8] = *(a4 + 128);
  v32[9] = v18;
  v32[10] = *(a4 + 160);
  v33 = *(a4 + 176);
  v19 = *(a4 + 80);
  v32[4] = *(a4 + 64);
  v32[5] = v19;
  v20 = *(a4 + 112);
  v32[6] = *(a4 + 96);
  v32[7] = v20;
  v21 = *(a4 + 16);
  v32[0] = *a4;
  v22 = *(a4 + 32);
  v23 = *(a4 + 48);
  v32[1] = v21;
  v32[2] = v22;
  v32[3] = v23;
  v24 = sub_1D99DDAC4(a1, a3, v32, a2, a5, a6);
  v26 = v25;
  v27 = sub_1D9C7CBEC();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  *&v17[*(v15 + 28)] = v24;
  v28 = &v17[*(v15 + 32)];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  if (*(v26 + 16))
  {
    v29 = *(v26 + 32);
    v30 = v29;
  }

  else
  {
    v29 = 0;
  }

  a7(v17, v29);

  return sub_1D9BC0F68(v17);
}

uint64_t sub_1D9BC0C48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9BC0CB4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 191) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v2 + v8);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v9);

  return sub_1D9BC0A9C(a1, a2, v2 + v6, v2 + v7, v11, v12, v13);
}

uint64_t sub_1D9BC0D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9BC0DF0()
{
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v2 = (*(v1 + 80) + 232) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D9AC9F74(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + 48, v0 + v2, v0 + v5, *v6, *(v6 + 8));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ServerSearchResult()
{
  result = qword_1EDD2B688;
  if (!qword_1EDD2B688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9BC0F68(uint64_t a1)
{
  v2 = type metadata accessor for ServerSearchResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9BC0FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext();
  if (!(*(*(Context - 1) + 48))(v5, 1, Context))
  {

    v7 = Context[10];
    v8 = sub_1D9C7B80C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    swift_unknownObjectRelease();
    v11 = Context[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }
  }

  if (*(v0 + v4 + 8) != 1)
  {
  }

  if (*(v0 + v4 + 152))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + 191) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D9BC1308(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9BC08F4(a1, a2, a3, a4, a5, v5 + v12, v5 + v13, *(v5 + ((v13 + 191) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v13 + 191) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((((v13 + 191) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D9BC1404()
{
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v2 = (*(v1 + 80) + 232) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D9AC9C50(v3, v4, v5, v6, (v0 + 48), v0 + v2, v8, v9);
}

void sub_1D9BC14D8()
{
  sub_1D9BC1564();
  if (v0 <= 0x3F)
  {
    sub_1D9BC15BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9BC1564()
{
  if (!qword_1EDD2C2F0)
  {
    sub_1D9C7CBEC();
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C2F0);
    }
  }
}

void sub_1D9BC15BC()
{
  if (!qword_1EDD2A850)
  {
    sub_1D9BC1620();
    v0 = sub_1D9C7DBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2A850);
    }
  }
}

unint64_t sub_1D9BC1620()
{
  result = qword_1EDD2BE10;
  if (!qword_1EDD2BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BE10);
  }

  return result;
}

uint64_t sub_1D9BC1698(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1D9BC1744(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[7];
      v10 = v7[5];
      v43 = v7[6];
      v44 = v9;
      v11 = v7[7];
      v45[0] = v7[8];
      *(v45 + 13) = *(v7 + 141);
      v12 = v7[3];
      v13 = v7[1];
      v39 = v7[2];
      v40 = v12;
      v14 = v7[3];
      v15 = v7[5];
      v41 = v7[4];
      v42 = v15;
      v16 = v7[1];
      v38[0] = *v7;
      v38[1] = v16;
      v35 = v43;
      v36 = v11;
      v37[0] = v7[8];
      *(v37 + 13) = *(v7 + 141);
      v31 = v39;
      v32 = v14;
      v33 = v41;
      v34 = v10;
      v29 = v38[0];
      v30 = v13;
      sub_1D99AE054(v38, &v20);
      v17 = a1(&v29);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v35;
      v27 = v36;
      v28[0] = v37[0];
      *(v28 + 13) = *(v37 + 13);
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      v20 = v29;
      v21 = v30;
      sub_1D99AE0B0(&v20);
      v18 = v8-- == 0;
      v7 += 10;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v35;
    v27 = v36;
    v28[0] = v37[0];
    *(v28 + 13) = *(v37 + 13);
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v20 = v29;
    v21 = v30;
    sub_1D99AE0B0(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D9BC18D0(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v11[0] = *(v7 - 24);
      v9 = *v7;
      v12 = *(v7 - 1);
      v13 = v9;
      LOBYTE(v4) = (v3 != 0) | a1(v11);
      if (v4)
      {
        break;
      }

      v6 = v8 - 1;
      v7 = (v7 + 40);
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D9BC1958(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v14 = v8;

      v10 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 6;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D9BC1A0C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D9BC1ABC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9))));
      v15 = *(v14 + 4);
      v17[0] = *v14;
      v18 = v15;
      result = a1(v17);
      if (v3)
      {

        return v16 & 1;
      }

      if (result)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v16 = 1;
    return v16 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v16 = 0;
        return v16 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1D9BC1BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

unint64_t sub_1D9BC1C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    return v2 | ((v1 == 0) << 32);
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 9)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFF8 | 1;
      v5 = vdupq_n_s32(v2);
      v6 = (a1 + 52);
      v7 = v3 & 0xFFFFFFFFFFFFFFF8;
      v8 = v5;
      do
      {
        v5 = vmaxq_s32(v5, v6[-1]);
        v8 = vmaxq_s32(v8, *v6);
        v6 += 2;
        v7 -= 8;
      }

      while (v7);
      v2 = vmaxvq_s32(vmaxq_s32(v5, v8));
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        return v2 | ((v1 == 0) << 32);
      }
    }

    else
    {
      v4 = 1;
    }

    v9 = v1 - v4;
    v10 = (a1 + 4 * v4 + 32);
    do
    {
      v12 = *v10++;
      v11 = v12;
      if (v2 <= v12)
      {
        v2 = v11;
      }

      --v9;
    }

    while (v9);
  }

  return v2 | ((v1 == 0) << 32);
}

unint64_t sub_1D9BC1CFC(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

uint64_t sub_1D9BC1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D99AB100(a3, v25 - v10, &unk_1ECB540E0);
  v12 = sub_1D9C7DFBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D99A6AE0(v11, &unk_1ECB540E0);
  }

  else
  {
    sub_1D9C7DFAC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D9C7DF9C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D9C7DD2C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D99A6AE0(a3, &unk_1ECB540E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D99A6AE0(a3, &unk_1ECB540E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D9BC2120()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C902E0;
  *(v0 + 32) = sub_1D9C7DC7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D9C7DC7C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1D9C7DC7C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1D9C7DC7C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1D9C7DC7C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1D9C7DC7C();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1D9C7DC7C();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1D9C7DC7C();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_1D9C7DC7C();
  *(v0 + 168) = v9;
  result = sub_1D9C7DC7C();
  *(v0 + 176) = result;
  *(v0 + 184) = v11;
  qword_1EDD417B8 = v0;
  return result;
}

uint64_t sub_1D9BC2260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C8CDB0;
  *(v0 + 32) = sub_1D9C7DC7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D9C7DC7C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1D9C7DC7C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1D9C7DC7C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1D9C7DC7C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1D9C7DC7C();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1D9C7DC7C();
  *(v0 + 136) = v7;
  result = sub_1D9C7DC7C();
  *(v0 + 144) = result;
  *(v0 + 152) = v9;
  qword_1EDD417C0 = v0;
  return result;
}

id sub_1D9BC2378(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v3 = sub_1D9C7DF1C();

  return v3;
}

id VisualIntelligenceServiceCompatible.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualIntelligenceServiceCompatible.init()()
{
  v1 = sub_1D9C7D8DC();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for VisualIntelligenceService.Options(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v32 - v14;
  v36 = v0;
  *&v0[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_cancellables] = MEMORY[0x1E69E7CD0];
  v15 = sub_1D9C7B80C();
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 1, 1, v15);
  v17 = sub_1D9C7DA1C();
  v18 = *(*(v17 - 8) + 56);
  v18(v5, 1, 1, v17);
  v16(v12, 1, 1, v15);
  v19 = v10[7];
  v18(&v12[v19], 1, 1, v17);
  v20 = v32;
  v21 = &v12[v10[8]];
  sub_1D9B33644(v8, v12, &qword_1ECB51FD0);
  sub_1D9B33644(v5, &v12[v19], &unk_1ECB540C0);
  *v21 = 0;
  *(v21 + 1) = 0;
  v12[v10[9]] = 2;
  static Logger.argos.getter(v20);
  v22 = sub_1D9C7D8BC();
  v23 = sub_1D9C7E09C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1D9A0E224(7104878, 0xE300000000000000, &v37);
    *(v24 + 12) = 2080;
    v26 = sub_1D9A0E224(13669, 0xE200000000000000, &v37);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_1D9962000, v22, v23, "mlEngineType = %s -> %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v25, -1, -1);
    MEMORY[0x1DA7405F0](v24, -1, -1);
  }

  (*(v34 + 8))(v20, v35);
  sub_1D99A6AE0(v5, &unk_1ECB540C0);
  sub_1D99A6AE0(v8, &qword_1ECB51FD0);
  v27 = v33;
  sub_1D9BCCD70(v12, v33, type metadata accessor for VisualIntelligenceService.Options);
  v28 = _s12VisualLookUp0A19IntelligenceServiceC14serviceOptionsA2C0G0V_tcfC_0(v27);
  v29 = v36;
  *&v36[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service] = v28;
  v30 = type metadata accessor for VisualIntelligenceServiceCompatible();
  v38.receiver = v29;
  v38.super_class = v30;
  return objc_msgSendSuper2(&v38, sel_init);
}

id VisualIntelligenceServiceCompatible.init(timeoutInterval:)(uint64_t a1)
{
  v3 = sub_1D9C7D8DC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for VisualIntelligenceService.Options(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v41 - v18;
  v47 = v1;
  *&v1[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_cancellables] = MEMORY[0x1E69E7CD0];
  v19 = sub_1D9C7B80C();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  *v7 = a1;
  v21 = *MEMORY[0x1E69E7F48];
  v22 = sub_1D9C7DA1C();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  v24 = *(v23 + 56);
  v24(v7, 0, 1, v22);
  v20(v16, 1, 1, v19);
  v25 = v12[7];
  v24(&v16[v25], 1, 1, v22);
  v26 = &v16[v12[8]];
  sub_1D9B33644(v10, v16, &qword_1ECB51FD0);
  v27 = &v16[v25];
  v28 = v42;
  sub_1D9B33644(v7, v27, &unk_1ECB540C0);
  *v26 = 0;
  *(v26 + 1) = 0;
  v16[v12[9]] = 2;
  static Logger.argos.getter(v28);
  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_1D9A0E224(7104878, 0xE300000000000000, &v48);
    *(v31 + 12) = 2080;
    v33 = sub_1D9A0E224(13669, 0xE200000000000000, &v48);

    *(v31 + 14) = v33;
    _os_log_impl(&dword_1D9962000, v29, v30, "mlEngineType = %s -> %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v32, -1, -1);
    MEMORY[0x1DA7405F0](v31, -1, -1);
  }

  (*(v45 + 8))(v28, v46);
  sub_1D99A6AE0(v7, &unk_1ECB540C0);
  sub_1D99A6AE0(v10, &qword_1ECB51FD0);
  v34 = v44;
  sub_1D9BCCD70(v16, v44, type metadata accessor for VisualIntelligenceService.Options);
  v35 = v43;
  sub_1D9BCBDC4(v34, v43, type metadata accessor for VisualIntelligenceService.Options);
  v36 = _s12VisualLookUp0A19IntelligenceServiceC14serviceOptionsA2C0G0V_tcfC_0(v35);
  v37 = v47;
  *&v47[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service] = v36;
  v38 = type metadata accessor for VisualIntelligenceServiceCompatible();
  v49.receiver = v37;
  v49.super_class = v38;
  v39 = objc_msgSendSuper2(&v49, sel_init);
  sub_1D9BCCDD8(v34, type metadata accessor for VisualIntelligenceService.Options);
  return v39;
}