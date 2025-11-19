unint64_t sub_2280B718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v31 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v31 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v31 - v22;
  result = sub_228096454(v16, v12, a1);
  if (!v3)
  {
    v26 = result;
    v27 = v25;
    sub_2280B76DC(v16, v23);
    sub_2280B76DC(v12, v20);
    v28 = type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult(0);
    v29 = v28[5];
    sub_2280B7EF0(a2, a3 + v29, type metadata accessor for GMSModelInfo);
    v30 = type metadata accessor for GMSModelInfo(0);
    (*(*(v30 - 8) + 56))(a3 + v29, 0, 1, v30);
    sub_2280B76DC(v23, a3 + v28[6]);
    result = sub_2280B76DC(v20, a3 + v28[7]);
    *a3 = v26;
    a3[1] = v27;
  }

  return result;
}

uint64_t sub_2280B7360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a4)
  {

    MEMORY[0x22AAB1970](a3, a4);
    MEMORY[0x22AAB1970](30240, 0xE200000000000000);

    return a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_2280B7418()
{
  sub_2280B760C(v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration, type metadata accessor for SummarizationSession.Configuration);
  sub_2280B760C(v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier, type metadata accessor for ModelBundleIdentifier);
  sub_228084D78(v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory);
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sessionInfo));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2280B751C()
{
  result = type metadata accessor for SummarizationSession.Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ModelBundleIdentifier();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2280B760C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2280B768C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280B76DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for SummarizationParameters() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 16));
  v5 = *(v0 + v3 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v3 + 40));
  v6 = v1[11];
  v7 = sub_228137A9C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2280B7844(void (**a1)(char *, uint64_t), uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v68 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10, v12);
  v67 = &v62 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v66 = &v62 - v16;
  v17 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2281386FC();
  v65 = *(v22 - 8);
  v23 = *(v65 + 48);
  if (v23(a1, 1, v22) == 1 && v23(a2, 1, v22) == 1)
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v24 = sub_22813882C();
    __swift_project_value_buffer(v24, qword_2813C8A20);
    v25 = sub_22813880C();
    v26 = sub_2281396CC();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_13;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Input deny list and sanitizer passed; continuing summarization.";
LABEL_12:
    _os_log_impl(&dword_227FC3000, v25, v26, v28, v27, 2u);
    MEMORY[0x22AAB28A0](v27, -1, -1);
LABEL_13:

    return;
  }

  v63 = a1;
  v69 = v3;
  v29 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
  v31 = a3[3];
  v30 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v31);
  v32 = (*(*(v30 + 8) + 16))(v31);
  v34 = v33;
  v35 = a2;
  v37 = a3[3];
  v36 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v37);
  v38 = (*(*(v36 + 8) + 8))(v37);
  v62 = v29;
  v64 = v35;
  LOBYTE(v36) = sub_228021CA0(v32, v34, v38, v39);

  if (v36)
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v40 = sub_22813882C();
    __swift_project_value_buffer(v40, qword_2813C8A20);
    v25 = sub_22813880C();
    v26 = sub_2281396BC();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_13;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Input failed deny list or safety check, but use case is configured to always run summarization.";
    goto LABEL_12;
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v41 = sub_22813882C();
  __swift_project_value_buffer(v41, qword_2813C8A20);
  v42 = sub_22813880C();
  v43 = sub_2281396BC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_227FC3000, v42, v43, "Input failed deny list or safety check; skipping summarization.", v44, 2u);
    MEMORY[0x22AAB28A0](v44, -1, -1);
  }

  v46 = a3[3];
  v45 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v46);
  v47 = (*(*(v45 + 8) + 16))(v46);
  v49 = v48;
  v51 = a3[3];
  v50 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v51);
  v52 = (*(*(v50 + 8) + 8))(v51);
  v53 = *(v70 + v62);
  v54 = v69;
  sub_22805DD40(v47, v49, v52, v55, v21);

  if (v54)
  {

    v56 = 1;
  }

  else
  {
    v56 = sub_2280244DC(v21);
    sub_2280B760C(v21, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
  }

  v57 = v64;
  v58 = *(v65 + 56);
  v59 = v66;
  v58(v66, 1, 1, v22);
  sub_228099260(v57, v59, v56 & 1, a3);
  sub_227FCB7B8(v59, &qword_27D81E598, &qword_22813B300);
  v60 = v67;
  v58(v67, 1, 1, v22);
  v61 = v68;
  v58(v68, 1, 1, v22);
  sub_228099F40(0, v63, v57, v60, v61, a3);
  sub_227FCB7B8(v61, &qword_27D81E598, &qword_22813B300);
  sub_227FCB7B8(v60, &qword_27D81E598, &qword_22813B300);
}

uint64_t sub_2280B7E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280B7EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280B7F58(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SummarizationParameters() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v7 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v1 + v9);
  v12 = *(v1 + ((v10 + v8) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2280B8094;

  return sub_2280B03CC(a1, v1 + 16, v1 + v7, v11, v1 + v10, v12);
}

uint64_t sub_2280B8094()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2280B8188(uint64_t a1)
{
  v4 = *(type metadata accessor for SummarizationParameters() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + v7 + 40) & ~v5;
  v9 = *(v1 + 16);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2280B8658;

  return sub_2280B1A68(a1, v9, v1 + v6, v1 + v7, v1 + v8);
}

uint64_t sub_2280B82B4()
{
  v1 = *(type metadata accessor for SummarizationParameters() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_2280AFC1C((v0 + 16), v2);
}

uint64_t sub_2280B8344()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280B83BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E0, &unk_22813C4F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280B842C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280B8494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2280B8520()
{
  sub_2280B85EC(319, qword_2813C7DF0, type metadata accessor for GMSModelInfo);
  if (v0 <= 0x3F)
  {
    sub_2280B85EC(319, &qword_2813C4810, MEMORY[0x277D0DBB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280B85EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22813977C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2280B866C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t SKMailMessageThread.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[26] = a1;
  v3 = sub_22813716C();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = sub_228138E6C();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v10 = sub_22813899C();
  v2[37] = v10;
  v11 = *(v10 - 8);
  v2[38] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *v1;
  v2[39] = v13;
  v2[40] = v14;

  return MEMORY[0x2822009F8](sub_2280B88F8, 0, 0);
}

uint64_t sub_2280B88F8()
{
  v206 = v1;
  v174 = *(v1 + 320);
  v169 = *(v174 + 16);
  if (!v169)
  {
    v120 = swift_allocObject();
    *(v120 + 16) = 10;
    *(v120 + 24) = 0;
    *(v120 + 32) = 0;
    v121 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 16, sub_2280BB254);
    sub_227FDB3CC();
    swift_allocError();
    *v122 = 10;
    *(v122 + 8) = v121;
    swift_willThrow();
    goto LABEL_141;
  }

  v184 = 0;
  v2 = 0;
  v182 = 0;
  v183 = 0;
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v202 = (*(v1 + 264) + 8);
  v6 = MEMORY[0x277D4B3A8];
  v7 = MEMORY[0x277D4B3A0];
  v8 = MEMORY[0x277D4B3B0];
  v176 = *(v1 + 264);
  v168 = (*(v1 + 224) + 8);
  v200 = *(v1 + 240);
  v172 = *(v1 + 304);
  v170 = (v172 + 8);
  v171 = *(v1 + 208);
  *(v1 + 176) = MEMORY[0x277D84F90];
  v201 = *v6;
  v193 = *v7;
  v175 = *v8;
  v192 = v5;
  while (2)
  {
    if (v2 < *(v174 + 16))
    {
      v9 = *(v1 + 288);
      v10 = *(v1 + 256);
      (*(v172 + 16))(*(v1 + 312), *(v1 + 320) + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v2, *(v1 + 296));
      sub_22813894C();
      v190 = sub_228045C20(v9);
      v12 = v11;
      v13 = *v202;
      (*v202)(v9, v10);
      v14 = *(v1 + 312);
      v191 = v12;
      if (v12)
      {
        v180 = v3;
        v181 = v4;
        v15 = sub_2281388AC();
        v16 = *(v15 + 16);
        v198 = v2;
        if (v16)
        {
          v17 = v15 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
          v18 = *(v176 + 72);
          v19 = *(v176 + 16);
          v20 = MEMORY[0x277D84F90];
          v19(*(v1 + 280), v17, *(v1 + 256));
          while (1)
          {
            v21 = sub_228138E5C();
            if (v22)
            {
              v23 = v21;
              v24 = v22;
              v25 = HIBYTE(v22) & 0xF;
              if ((v22 & 0x2000000000000000) == 0)
              {
                v25 = v21 & 0xFFFFFFFFFFFFLL;
              }

              if (v25)
              {
                v13(*(v1 + 280), *(v1 + 256));
                goto LABEL_25;
              }
            }

            v26 = v20;
            v27 = *(v1 + 280);
            v28 = *(v1 + 248);
            sub_228138E2C();
            v29 = sub_228138E3C();
            v30 = *(v29 - 8);
            if ((*(v30 + 48))(v28, 1, v29) == 1)
            {
              goto LABEL_17;
            }

            v31 = *(v1 + 240);
            sub_228045760(*(v1 + 248), v31);
            v32 = (*(v30 + 88))(v31, v29);
            if (v32 != v201 && v32 != v193 && v32 != v175)
            {
              break;
            }

            v33 = *(v1 + 240);
            v13(*(v1 + 280), *(v1 + 256));
            (*(v30 + 96))(v33, v29);
            v23 = *v33;
            v24 = *(v200 + 8);
LABEL_22:
            sub_2280BB0A0(*(v1 + 248));
            v34 = HIBYTE(v24) & 0xF;
            if ((v24 & 0x2000000000000000) == 0)
            {
              v34 = v23 & 0xFFFFFFFFFFFFLL;
            }

            v20 = v26;
            if (!v34)
            {

              goto LABEL_8;
            }

LABEL_25:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_2281338C0(0, *(v20 + 2) + 1, 1, v20);
            }

            v36 = *(v20 + 2);
            v35 = *(v20 + 3);
            v37 = v20;
            if (v36 >= v35 >> 1)
            {
              v37 = sub_2281338C0((v35 > 1), v36 + 1, 1, v20);
            }

            *(v37 + 2) = v36 + 1;
            v20 = v37;
            v38 = &v37[16 * v36];
            *(v38 + 4) = v23;
            *(v38 + 5) = v24;
LABEL_8:
            v17 += v18;
            if (!--v16)
            {

              goto LABEL_33;
            }

            v19(*(v1 + 280), v17, *(v1 + 256));
          }

          (*(v30 + 8))(*(v1 + 240), v29);
LABEL_17:
          v13(*(v1 + 280), *(v1 + 256));
          v23 = 0;
          v24 = 0xE000000000000000;
          goto LABEL_22;
        }

        v20 = MEMORY[0x277D84F90];
LABEL_33:
        v39 = *(v1 + 312);
        v40 = *(v1 + 272);
        v41 = *(v20 + 2);
        if (v41 >= 5)
        {
          v41 = 5;
        }

        *(v1 + 144) = v20;
        *(v1 + 152) = v20 + 32;
        *(v1 + 160) = 0;
        *(v1 + 168) = (2 * v41) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB00, &qword_22813F970);
        sub_2280BB108(&qword_2813C45D0, &qword_27D81EB00, &qword_22813F970);
        v189 = sub_22813925C();
        v43 = v42;
        v44 = sub_2281388AC();
        sub_22813894C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_228133B70(0, v44[2] + 1, 1, v44);
        }

        v46 = v44[2];
        v45 = v44[3];
        if (v46 >= v45 >> 1)
        {
          v44 = sub_228133B70(v45 > 1, v46 + 1, 1, v44);
        }

        v47 = *(v1 + 312);
        v48 = *(v1 + 272);
        v49 = *(v1 + 256);
        v44[2] = v46 + 1;
        (*(v176 + 32))(v44 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v46, v48, v49);

        v50 = sub_22813895C();
        v14 = *(v1 + 312);
        if (v51)
        {
          v187 = v50;
          v188 = v51;
          v52 = sub_22813893C();
          if (v53)
          {
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0xE000000000000000;
          }

          v196 = sub_2280A7954(v52, v54, v171 + 160, *(v171 + 208));
          v197 = v55;
          v56 = *(v1 + 312);
          v57 = *(v1 + 208);

          v58 = sub_2281388BC();

          v194 = sub_22804275C(v58, v190, v191);
          v195 = v59;

          v186 = v43;
          if (sub_2280454D4(v57))
          {
            v60 = objc_opt_self();

            if (qword_2813C4620 != -1)
            {
              swift_once();
            }

            if (byte_2813C4629 == 1)
            {
              v61 = &off_27D81EDB0;
              if (qword_27D81E2A0 != -1)
              {
                swift_once();
                v61 = &off_27D81EDB0;
              }
            }

            else
            {
              v61 = &qword_2813C76F8;
              if (qword_2813C76F0 != -1)
              {
                swift_once();
                v61 = &qword_2813C76F8;
              }
            }

            v66 = *(*v61 + 432);
            v67 = *(*v61 + 440);
            v69 = *(*v61 + 448);
            v68 = *(*v61 + 456);
            v70 = *(*v61 + 2208);

            if (qword_2813C4630 != -1)
            {
              swift_once();
            }

            if (byte_2813C4638 == 1)
            {
              v69(v204, v70);

              v67 = LOBYTE(v204[0]);
            }

            else
            {
            }

            v43 = v186;
            v185 = 2;
            if (v67)
            {
              v65 = 4;
            }

            else
            {
              v65 = 2;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22813B030;
            *(inited + 32) = v196;
            *(inited + 40) = v197;
            *(inited + 48) = v194;
            *(inited + 56) = v195;

            sub_227FED308(inited);
          }

          else
          {
            v62 = *(v1 + 312);
            if (sub_22813896C())
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
              v63 = swift_initStackObject();
              *(v63 + 16) = xmmword_22813B030;
              *(v63 + 32) = v196;
              *(v63 + 40) = v197;
              *(v63 + 48) = v194;
              *(v63 + 56) = v195;

              sub_227FED308(v63);
            }

            v64 = *(v1 + 312);
            v185 = sub_22813896C() & 1;
            v65 = 1;
          }

          v72 = HIBYTE(v191) & 0xF;
          if ((v191 & 0x2000000000000000) == 0)
          {
            v72 = v190 & 0xFFFFFFFFFFFFLL;
          }

          if (v72)
          {
            strcpy(v204, "Sender: ");
            BYTE1(v204[1]) = 0;
            WORD1(v204[1]) = 0;
            HIDWORD(v204[1]) = -402653184;
            MEMORY[0x22AAB1970](v190, v191);
            v73 = v204[1];
            v177 = v204[0];
          }

          else
          {
            v177 = 0;
            v73 = 0xE000000000000000;
          }

          v74 = HIBYTE(v43) & 0xF;
          if ((v43 & 0x2000000000000000) == 0)
          {
            v74 = v189 & 0xFFFFFFFFFFFFLL;
          }

          if (v74)
          {
            strcpy(v204, "Recipients: ");
            BYTE5(v204[1]) = 0;
            HIWORD(v204[1]) = -5120;
            MEMORY[0x22AAB1970]();
            v75 = v204[1];
            v173 = v204[0];
          }

          else
          {
            v173 = 0;
            v75 = 0xE000000000000000;
          }

          v76 = HIBYTE(v188) & 0xF;
          if ((v188 & 0x2000000000000000) == 0)
          {
            v76 = v187 & 0xFFFFFFFFFFFFLL;
          }

          if (v76)
          {
            strcpy(v204, "Subject: ");
            WORD1(v204[1]) = 0;
            HIDWORD(v204[1]) = -385875968;
            MEMORY[0x22AAB1970]();
            v3 = v204[0];
            v77 = v204[1];
          }

          else
          {
            v3 = 0;
            v77 = 0xE000000000000000;
          }

          v204[0] = 0x203A79646F42;
          v204[1] = 0xE600000000000000;
          MEMORY[0x22AAB1970](v196, v197);
          v79 = v204[0];
          v78 = v204[1];
          if (v65 > 2)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_22813A4B0;
            *(v81 + 32) = v196;
            *(v81 + 40) = v197;
          }

          else
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
            v80 = swift_allocObject();
            v81 = v80;
            *(v80 + 16) = xmmword_22813B480;
            *(v80 + 32) = v177;
            *(v80 + 40) = v73;
            if (v65 == 1)
            {
              *(v80 + 48) = v173;
              *(v80 + 56) = v75;
            }

            else
            {
              *(v80 + 48) = v3;
              *(v80 + 56) = v77;
            }

            *(v80 + 64) = v79;
            *(v80 + 72) = v78;
          }

          if (v185 != 2)
          {
            v82 = objc_opt_self();

            if (qword_2813C4620 != -1)
            {
              swift_once();
            }

            if (byte_2813C4629 == 1)
            {
              v83 = &off_27D81EDB0;
              if (qword_27D81E2A0 != -1)
              {
                swift_once();
                v83 = &off_27D81EDB0;
              }
            }

            else
            {
              v83 = &qword_2813C76F8;
              if (qword_2813C76F0 != -1)
              {
                swift_once();
                v83 = &qword_2813C76F8;
              }
            }

            v84 = *(*v83 + 632);
            v85 = *(*v83 + 640);
            v178 = *(*v83 + 648);
            v86 = *(*v83 + 656);
            v3 = *(*v83 + 2208);

            if (qword_2813C4630 != -1)
            {
              swift_once();
            }

            if (byte_2813C4638 == 1)
            {
              v178(v204, v3);

              v85 = v204[0];
              if (!v204[0])
              {
                goto LABEL_109;
              }
            }

            else
            {

              if (!v85)
              {
                goto LABEL_109;
              }
            }

            if (qword_2813C8758 != -1)
            {
              swift_once();
            }

            v87 = *(v1 + 232);
            v88 = *(v1 + 216);
            sub_228139B6C();
            v89 = swift_task_alloc();
            *(v89 + 16) = v87;
            v90 = sub_2280B866C(sub_2280BB150, v89, v85);

            (*v168)(v87, v88);
            if (v90)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
              v91 = swift_allocObject();
              *(v91 + 16) = xmmword_22813A4B0;
              strcpy(v204, "IsUnread: ");
              BYTE3(v204[1]) = 0;
              HIDWORD(v204[1]) = -369098752;
              if (v185)
              {
                v92 = 1702195828;
              }

              else
              {
                v92 = 0x65736C6166;
              }

              if (v185)
              {
                v93 = 0xE400000000000000;
              }

              else
              {
                v93 = 0xE500000000000000;
              }

              MEMORY[0x22AAB1970](v92, v93);

              v94 = v204[1];
              *(v91 + 32) = v204[0];
              *(v91 + 40) = v94;
              v204[0] = v91;
              sub_227FED308(v81);
              v81 = v204[0];
            }
          }

LABEL_109:
          v95 = HIBYTE(v195) & 0xF;
          if ((v195 & 0x2000000000000000) == 0)
          {
            v95 = v194 & 0xFFFFFFFFFFFFLL;
          }

          if (v95)
          {
            v204[0] = 10;
            v204[1] = 0xE100000000000000;
            MEMORY[0x22AAB1970]();
            v96 = v204[0];
            v4 = v204[1];
          }

          else
          {
            v96 = 0;
            v4 = 0xE000000000000000;
          }

          v97 = 0;
          v199 = v198 + 1;
          v98 = *(v81 + 16);
          v99 = v81 + 40;
          v100 = MEMORY[0x277D84F90];
LABEL_115:
          v101 = (v99 + 16 * v97);
          while (v98 != v97)
          {
            if (v97 >= *(v81 + 16))
            {
              __break(1u);
LABEL_145:
              v141 = *(v99 + 208);
              if (v141)
              {
                KeyPath = swift_getKeyPath();
                os_unfair_lock_lock((v141 + 16));
                v143 = MEMORY[0x277D84A28];
                v205 = MEMORY[0x277D84A28];
                v204[0] = v184;

                sub_2280449E4(v204, KeyPath, (v141 + 24));
                os_unfair_lock_unlock((v141 + 16));

                v144 = swift_getKeyPath();
                os_unfair_lock_lock((v141 + 16));
                v205 = v143;
                v204[0] = v183;

                sub_2280449E4(v204, v144, (v141 + 24));
                os_unfair_lock_unlock((v141 + 16));

                v145 = swift_getKeyPath();
                os_unfair_lock_lock((v141 + 16));
                v205 = v143;
                v204[0] = v182;

                sub_2280449E4(v204, v145, (v141 + 24));
                os_unfair_lock_unlock((v141 + 16));

                v146 = swift_getKeyPath();
                os_unfair_lock_lock((v141 + 16));
                v205 = v143;
                v204[0] = v3;

                sub_2280449E4(v204, v146, (v141 + 24));
                os_unfair_lock_unlock((v141 + 16));

                v147 = swift_getKeyPath();
                os_unfair_lock_lock((v141 + 16));
                v205 = v143;
                v204[0] = v4;

                sub_2280449E4(v204, v147, (v141 + 24));
                os_unfair_lock_unlock((v141 + 16));
              }

              if ((sub_2280454D4(*(v1 + 208)) & 1) == 0)
              {

                goto LABEL_154;
              }

              v0 = objc_opt_self();

              if (qword_2813C4620 != -1)
              {
                goto LABEL_175;
              }

              goto LABEL_149;
            }

            v102 = *(v101 - 1);
            v3 = *v101;
            v101 += 2;
            ++v97;
            v103 = HIBYTE(v3) & 0xF;
            if ((v3 & 0x2000000000000000) == 0)
            {
              v103 = v102 & 0xFFFFFFFFFFFFLL;
            }

            if (v103)
            {
              v179 = v4;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v204[0] = v100;
              v105 = v96;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_228043AD4(0, *(v100 + 16) + 1, 1);
                v100 = v204[0];
              }

              v107 = *(v100 + 16);
              v106 = *(v100 + 24);
              v108 = v107 + 1;
              if (v107 >= v106 >> 1)
              {
                sub_228043AD4((v106 > 1), v107 + 1, 1);
                v108 = v107 + 1;
                v100 = v204[0];
              }

              *(v100 + 16) = v108;
              v109 = v100 + 16 * v107;
              *(v109 + 32) = v102;
              *(v109 + 40) = v3;
              v96 = v105;
              v4 = v179;
              goto LABEL_115;
            }
          }

          *(v1 + 184) = v100;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
          sub_2280BB108(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
          v110 = sub_22813925C();
          v112 = v111;

          v204[0] = v110;
          v204[1] = v112;

          MEMORY[0x22AAB1970](v96, v4);

          v113 = v204[0];
          v114 = v204[1];
          v0 = sub_22813936C();

          if (__OFADD__(v184, v0))
          {
            goto LABEL_170;
          }

          v184 += v0;
          v0 = sub_22813936C();

          if (__OFADD__(v183, v0))
          {
            goto LABEL_171;
          }

          v183 += v0;
          v0 = sub_22813936C();

          if (__OFADD__(v182, v0))
          {
            goto LABEL_172;
          }

          v182 += v0;
          v0 = sub_22813936C();

          v3 = v180 + v0;
          if (!__OFADD__(v180, v0))
          {
            v0 = sub_22813936C();

            v4 = v181 + v0;
            if (__OFADD__(v181, v0))
            {
              goto LABEL_174;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v192 = sub_2281338C0(0, *(v192 + 2) + 1, 1, v192);
            }

            v116 = *(v192 + 2);
            v115 = *(v192 + 3);
            v0 = v116 + 1;
            if (v116 >= v115 >> 1)
            {
              v192 = sub_2281338C0((v115 > 1), v116 + 1, 1, v192);
            }

            *(v1 + 328) = v192;
            v117 = *(v1 + 312);
            v118 = *(v1 + 296);

            (*v170)(v117, v118);
            *(v192 + 2) = v0;
            v119 = &v192[16 * v116];
            *(v119 + 4) = v113;
            *(v119 + 5) = v114;
            v2 = v199;
            if (v199 != v169)
            {
              continue;
            }

            v99 = v171;
            sub_2280A8554(*(v1 + 176), (v171 + 160));
            goto LABEL_145;
          }

          goto LABEL_173;
        }

        v123 = *(v1 + 296);

        v128 = *(v1 + 176);

        v129 = swift_allocObject();
        *(v129 + 16) = 13;
        *(v129 + 24) = 0;
        *(v129 + 32) = 0;
        v130 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 46, sub_2280BB250);
        sub_227FDB3CC();
        swift_allocError();
        *v131 = 13;
        *(v131 + 8) = v130;
        swift_willThrow();
      }

      else
      {
        v123 = *(v1 + 296);

        v124 = *(v1 + 176);

        v125 = swift_allocObject();
        *(v125 + 16) = 12;
        *(v125 + 24) = 0;
        *(v125 + 32) = 0;
        v126 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 32, sub_2280BAB0C);
        sub_227FDB3CC();
        swift_allocError();
        *v127 = 12;
        *(v127 + 8) = v126;
        swift_willThrow();
      }

      (*v170)(v14, v123);
LABEL_141:
      v132 = *(v1 + 312);
      v133 = *(v1 + 280);
      v134 = *(v1 + 288);
      v135 = *(v1 + 272);
      v137 = *(v1 + 240);
      v136 = *(v1 + 248);
      v138 = *(v1 + 232);

      v139 = *(v1 + 8);

      return v139();
    }

    break;
  }

  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  swift_once();
LABEL_149:
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v148 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v148 = &qword_2813C76F8;
  }

  v159 = *(*v148 + 432);
  v160 = *(*v148 + 440);
  v162 = *(*v148 + 448);
  v161 = *(*v148 + 456);
  v163 = *(*v148 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v162(v204, v163);

    if (v204[0])
    {
      goto LABEL_166;
    }
  }

  else
  {

    if (v160)
    {
LABEL_166:
      *(v1 + 392) = 1;
      v164 = *(v1 + 208);
      v165 = swift_task_alloc();
      *(v1 + 368) = v165;
      *v165 = v1;
      v165[1] = sub_2280BA694;
      v166 = *(v1 + 328);
      v167 = *(v1 + 208);

      return sub_2280D8D74(v166, v164 + 160, 0);
    }
  }

LABEL_154:
  v149 = *(v1 + 208);
  strcpy(v204, "Email #");
  v204[1] = 0xE700000000000000;
  *(v1 + 192) = *(v192 + 2) + 1;
  v150 = sub_22813998C();
  MEMORY[0x22AAB1970](v150);

  MEMORY[0x22AAB1970](2618, 0xE200000000000000);
  v151 = v204[0];
  v152 = v204[1];
  *(v1 + 336) = v204[1];
  v153 = v149[3];
  v154 = v149[4];
  __swift_project_boxed_opaque_existential_1(v149, v153);
  v155 = *(v154 + 8);
  v156 = *(v155 + 16);
  v203 = (v156 + *v156);
  v157 = v156[1];
  v158 = swift_task_alloc();
  *(v1 + 344) = v158;
  *v158 = v1;
  v158[1] = sub_2280BA3C8;

  return v203(v151, v152, v153, v155);
}

uint64_t sub_2280BA3C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = sub_2280BA5C8;
  }

  else
  {
    *(v4 + 360) = a1;
    v7 = sub_2280BA4F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280BA4F0()
{
  v1 = *(v0 + 336);

  v3 = *(v0 + 360);
  *(v0 + 392) = 0;
  v4 = *(*(v0 + 328) + 16);
  v5 = v3 * v4;
  if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
  {
    v6 = *(v0 + 208);
    v7 = swift_task_alloc();
    *(v0 + 368) = v7;
    *v7 = v0;
    v7[1] = sub_2280BA694;
    v8 = *(v0 + 328);
    v9 = *(v0 + 208);

    return sub_2280D8D74(v8, v6 + 160, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2280BA5C8()
{
  v2 = v0[41];
  v1 = v0[42];

  v3 = v0[44];
  v4 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2280BA694(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v5 = sub_2280BAA48;
  }

  else
  {
    v6 = v3[41];

    v5 = sub_2280BA7B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280BA7B0()
{
  result = *(v0 + 376);
  v25 = *(result + 16);
  if (v25)
  {
    v2 = 0;
    v3 = (result + 40);
    while (v2 < *(result + 16))
    {
      v8 = result;
      v10 = *(v3 - 1);
      v9 = *v3;
      v11 = v2 + 1;
      v12 = *(v0 + 320);
      if (*(v0 + 392) == 1)
      {
        v13 = *(v12 + 16) - 1;
        if (v2 >= v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = 10;
        }

        if (v2 >= v13)
        {
          v15 = 0xE000000000000000;
        }

        else
        {
          v15 = 0xE100000000000000;
        }

        v26 = *(v3 - 1);
        v27 = *v3;
        swift_bridgeObjectRetain_n();
        MEMORY[0x22AAB1970](v14, v15);
      }

      else
      {
        v26 = 0x23206C69616D45;
        v27 = 0xE700000000000000;
        *(v0 + 200) = v11;

        v4 = sub_22813998C();
        MEMORY[0x22AAB1970](v4);

        MEMORY[0x22AAB1970](2618, 0xE200000000000000);

        MEMORY[0x22AAB1970](v10, v9);

        v5 = *(v12 + 16) - 1;
        if (v2 >= v5)
        {
          v6 = 0;
        }

        else
        {
          v6 = 10;
        }

        if (v2 >= v5)
        {
          v7 = 0xE000000000000000;
        }

        else
        {
          v7 = 0xE100000000000000;
        }

        MEMORY[0x22AAB1970](v6, v7);
      }

      MEMORY[0x22AAB1970](v26, v27);

      v3 += 2;
      v2 = v11;
      result = v8;
      if (v25 == v11)
      {
        v16 = *(v0 + 376);
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v17 = *(v0 + 312);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 272);
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 232);

    v24 = *(v0 + 8);

    return v24(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_2280BAA48()
{
  v1 = v0[41];

  v2 = v0[48];
  v3 = v0[39];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[29];

  v10 = v0[1];

  return v10();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SKMailMessageThread.preprocessForLanguageCheck()()
{
  v2 = sub_22813899C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - v10;
  v12 = *v0;
  v13 = *(*v0 + 16);
  if (v13)
  {
    v45 = v1;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v49 = v15;
    v15(&v41 - v10, v16, v2);
    v44 = v11;
    v17 = sub_22813895C();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v42 = v18;
    v43 = v19;
    v48 = *(v14 + 56);
    v50 = (v14 - 8);
    v20 = MEMORY[0x277D84F90];
    v46 = v14;
    v47 = v2;
    do
    {
      v49(v8, v16, v2);
      v22 = sub_22813893C();
      v24 = v23;
      v25 = *v50;
      (*v50)(v8, v2);
      if (v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2281338C0(0, *(v20 + 2) + 1, 1, v20);
        }

        v27 = *(v20 + 2);
        v26 = *(v20 + 3);
        if (v27 >= v26 >> 1)
        {
          v20 = sub_2281338C0((v26 > 1), v27 + 1, 1, v20);
        }

        *(v20 + 2) = v27 + 1;
        v21 = &v20[16 * v27];
        *(v21 + 4) = v22;
        *(v21 + 5) = v24;
        v2 = v47;
      }

      v16 += v48;
      --v13;
    }

    while (v13);
    if (v42)
    {
      v28 = v42;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v51 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_2280BB108(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
    v29 = sub_22813925C();
    v31 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22813B030;
    *(inited + 32) = v43;
    *(inited + 40) = v28;
    *(inited + 48) = v29;
    *(inited + 56) = v31;
    v33 = sub_228045C28();
    v8 = v34;
    swift_setDeallocating();
    swift_arrayDestroy();
    v25(v44, v2);
  }

  else
  {
    v35 = swift_allocObject();
    v33 = 10;
    *(v35 + 16) = 10;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0;
    v36 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 145, sub_2280BB258);
    sub_227FDB3CC();
    swift_allocError();
    *v37 = 10;
    *(v37 + 8) = v36;
    swift_willThrow();
  }

  v38 = v33;
  v39 = v8;
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t sub_2280BAEE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280BAF78;

  return SKMailMessageThread.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280BAF78(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280BB0A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2280BB108(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280BB1BC(uint64_t *a1, int a2)
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

uint64_t sub_2280BB204(uint64_t result, int a2, int a3)
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

uint64_t sub_2280BB274(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813910C();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = MEMORY[0x277D42EC0];
  v17[0] = a1;
  v17[1] = a2;

  v11 = MEMORY[0x277D42E18];
  sub_2281390FC();
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF40, &unk_22813FAE0);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22813A4B0;
  (*(v6 + 16))(v14 + v13, v10, v4);
  MEMORY[0x22AAB1690](v14, v4, v11);

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_2280BB42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22813905C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  v4[8] = v8;
  v4[9] = v9;

  return MEMORY[0x2822009F8](sub_2280BB4F4, 0, 0);
}

uint64_t sub_2280BB4F4()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_22813906C();

  v0[2] = v2;
  v6 = *(MEMORY[0x277D0D920] + 4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_2280BBB6C(&qword_2813C8710);
  *v7 = v0;
  v7[1] = sub_2280BB614;
  v9 = v0[8];
  v10 = v0[5];

  return MEMORY[0x282165AB8](v0 + 2, v10, v8);
}

uint64_t sub_2280BB614(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_2280BBBC8;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_2280BBBCC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280BB73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22813905C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  v4[8] = v8;
  v4[9] = v9;

  return MEMORY[0x2822009F8](sub_2280BB804, 0, 0);
}

uint64_t sub_2280BB804()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_22813906C();

  v0[2] = v2;
  v6 = *(MEMORY[0x277D0D928] + 4);
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_2280BBB6C(&qword_2813C8718);
  *v7 = v0;
  v7[1] = sub_2280BB924;
  v9 = v0[8];
  v10 = v0[5];

  return MEMORY[0x282165AC0](v0 + 2, v10, v8);
}

uint64_t sub_2280BB924(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_2280BBAD0;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_2280BBA4C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280BBA4C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_2280BBAD0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_2280BBB6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22813755C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2280BBBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280BBC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SKTextMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_228138AAC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SKTextMessage.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_22813716C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v6 = sub_228136CDC();
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v8 = *(v7 + 64) + 15;
  v2[27] = swift_task_alloc();
  v9 = sub_228138E6C();
  v2[28] = v9;
  v10 = *(v9 - 8);
  v2[29] = v10;
  v11 = *(v10 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280BBE8C, 0, 0);
}

uint64_t sub_2280BBE8C()
{
  v189 = v0;
  v1 = v0;
  v2 = v0[31];
  v3 = v1[28];
  v4 = v1[29];
  v5 = v1[21];
  sub_228138A7C();
  v6 = sub_228041784(v2);
  v8 = v7;
  (*(v4 + 8))(v2, v3);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2280A88EC(v9);
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  v177 = v10;
  v178 = v12;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v183 = v1;
  if (!v13)
  {
    v48 = objc_opt_self();
    v49 = off_2785F1000;

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
LABEL_142:
        swift_once();
      }

      v50 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v50 = &qword_2813C76F8;
    }

    v70 = *(*v50 + 1640);
    v71 = *(*v50 + 1648);
    v72 = *(*v50 + 1656);
    v73 = *(*v50 + 1664);
    v74 = *(*v50 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v72(v187, v74);

      v1 = v183;
      if (v187[0])
      {
        goto LABEL_7;
      }
    }

    else
    {

      v1 = v183;
      if (v71)
      {
        goto LABEL_7;
      }
    }

    v75 = swift_allocObject();
    v67 = 12;
    *(v75 + 16) = 12;
    *(v75 + 24) = 0;
    *(v75 + 32) = 0;
    v68 = sub_2280C0DA4;
    v69 = 25;
    goto LABEL_73;
  }

LABEL_7:
  v14 = v1[21];
  v15 = *(sub_2281389EC() + 16);

  if (v15)
  {
    goto LABEL_8;
  }

  v51 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v52 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v52 = &qword_2813C76F8;
  }

  v76 = *(*v52 + 1640);
  v77 = *(*v52 + 1648);
  v78 = *(*v52 + 1656);
  v79 = *(*v52 + 1664);
  v80 = *(*v52 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v78(v187, v80);

    v1 = v183;
    if ((v187[0] & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {

    v1 = v183;
    if (!v77)
    {
LABEL_72:

      v81 = swift_allocObject();
      v67 = 11;
      *(v81 + 16) = 11;
      *(v81 + 24) = 0;
      *(v81 + 32) = 0;
      v68 = sub_2280C0DA0;
      v69 = 30;
      goto LABEL_73;
    }
  }

LABEL_8:
  v16 = v1[21];
  v17 = sub_2281389EC();
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  v19 = sub_2280403DC(sub_2280C0A3C, v18, v17);

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v1[26];
    v186 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v20, 0);
    v22 = 0;
    v23 = v186;
    v176 = v19;
    v180 = v20;
    v181 = v19 + 32;
    v179 = (v21 + 8);
    while (1)
    {
      v24 = (v181 + 16 * v22);
      v26 = *v24;
      v25 = v24[1];

      v27 = sub_22813936C();
      if (v27)
      {
        v28 = v27;
        v187[0] = MEMORY[0x277D84F90];
        sub_228043D00(0, v27 & ~(v27 >> 63), 0);
        if (v28 < 0)
        {
          __break(1u);
LABEL_94:
          v48 = v175;
          goto LABEL_96;
        }

        v29 = v187[0];
        do
        {
          v30 = sub_22813945C();
          v32 = v31;
          if (sub_2281036C8(v30, v31))
          {

            v32 = 0xE100000000000000;
            v30 = 32;
          }

          v187[0] = v29;
          v34 = *(v29 + 16);
          v33 = *(v29 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_228043D00((v33 > 1), v34 + 1, 1);
            v29 = v187[0];
          }

          *(v29 + 16) = v34 + 1;
          v35 = v29 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          sub_22813937C();
          --v28;
        }

        while (v28);
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
      }

      v36 = v183[27];
      v37 = v183[25];
      v183[18] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF18, &qword_228141340);
      sub_2280C0BC8(&qword_2813C4688, &qword_27D81EF18, &qword_228141340);
      v183[16] = sub_22813946C();
      v183[17] = v38;
      sub_228136C8C();
      sub_227FDB420();
      v39 = sub_2281397AC();
      v41 = v40;
      (*v179)(v36, v37);

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        v43 = v39;
      }

      else
      {
        v43 = v26;
      }

      if (v42)
      {
        v44 = v41;
      }

      else
      {
        v44 = v25;
      }

      v46 = *(v186 + 16);
      v45 = *(v186 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_228043AD4((v45 > 1), v46 + 1, 1);
      }

      ++v22;
      *(v186 + 16) = v46 + 1;
      v47 = v186 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      if (v22 == v180)
      {

        v1 = v183;
        goto LABEL_44;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_44:
  v53 = v1[30];
  v54 = v1[21];
  v55 = sub_2281389EC();
  sub_228138A7C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v55 = sub_228133B70(0, v55[2] + 1, 1, v55);
  }

  v57 = v55[2];
  v56 = v55[3];
  if (v57 >= v56 >> 1)
  {
    v55 = sub_228133B70(v56 > 1, v57 + 1, 1, v55);
  }

  v59 = v1[29];
  v58 = v1[30];
  v60 = v1[28];
  v61 = v1[21];
  v55[2] = v57 + 1;
  (*(v59 + 32))(v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57, v58, v60);
  v62 = sub_228138A6C();
  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0xE000000000000000;
  }

  v65 = sub_2280A8A4C(v62, v64);

  if (v65)
  {

    v66 = swift_allocObject();
    v67 = 6;
    *(v66 + 16) = 6;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0;
    v68 = sub_2280C0C30;
    v69 = 41;
LABEL_73:
    v82 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228147DC0, v69, v68);
    sub_227FDB3CC();
    swift_allocError();
    *v83 = v67;
    *(v83 + 8) = v82;
    swift_willThrow();
    v85 = v1[30];
    v84 = v1[31];
    v86 = v1[27];
    v87 = v1[24];

    v88 = v1[1];

    return v88();
  }

  v91 = v1[20];
  v90 = v1[21];
  v92 = sub_228138A6C();
  if (v93)
  {
    v94 = v93;
  }

  else
  {
    v92 = 0;
    v94 = 0xE000000000000000;
  }

  v95 = *(v91 + 208);
  v96 = sub_2280A7954(v92, v94, v91 + 160, v95);
  v98 = v97;
  v99 = v96;

  v100 = sub_2280A8BD4(v99, v98);
  v176 = v95;
  v101 = v1[21];
  v182 = v100;
  v103 = v102;

  v104 = sub_2281389FC();
  v180 = v91;
  v105 = sub_228041BA8(v104, v177, v178);
  v107 = v106;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v182;
  *(inited + 40) = v103;
  *(inited + 48) = v105;
  *(inited + 56) = v107;

  sub_2280A8554(inited, (v180 + 160));
  swift_setDeallocating();
  swift_arrayDestroy();
  v109 = v178;
  v110 = sub_2280C0A78(v177, v178, v182, v103, v105, v107);
  v173 = v111;
  v174 = v110;
  v1[32] = v111;
  v112 = swift_initStackObject();
  *(v112 + 16) = xmmword_22813A4B0;
  *(v112 + 32) = v177;
  *(v112 + 40) = v178;
  v187[0] = v112;

  sub_227FED308(v23);
  v113 = *(v187[0] + 16);
  if (v113)
  {
    v114 = 0;
    v115 = v187[0] + 40;
    v48 = MEMORY[0x277D84F90];
    v172 = v187[0] + 40;
    v184 = *(v187[0] + 16);
    do
    {
      v175 = v48;
      v116 = (v115 + 16 * v114);
      while (1)
      {
        if (v114 >= v113)
        {
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v117 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_144;
        }

        v118 = *(v116 - 1);
        v119 = *v116;
        v109 = sub_2281392FC();
        v23 = v120;

        v48 = sub_2280BD990(v187, v109, v23);

        if (v48)
        {
          break;
        }

        ++v114;
        v116 += 2;
        v113 = v184;
        if (v117 == v184)
        {
          goto LABEL_94;
        }
      }

      v48 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_228043AD4(0, *(v175 + 16) + 1, 1);
        v48 = v175;
      }

      ++v114;
      v122 = *(v48 + 16);
      v121 = *(v48 + 24);
      v109 = (v122 + 1);
      if (v122 >= v121 >> 1)
      {
        sub_228043AD4((v121 > 1), v122 + 1, 1);
        v48 = v175;
      }

      *(v48 + 16) = v109;
      v123 = v48 + 16 * v122;
      *(v123 + 32) = v118;
      *(v123 + 40) = v119;
      v113 = v184;
      v115 = v172;
    }

    while (v117 != v184);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

LABEL_96:

  v124 = 0;
  v125 = *(v48 + 16);
  v49 = (v48 + 40);
  v126 = MEMORY[0x277D84F90];
LABEL_97:
  v127 = &v49[2 * v124];
  while (v125 != v124)
  {
    if (v124 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_142;
    }

    v129 = *(v127 - 1);
    v128 = *v127;
    v127 += 2;
    ++v124;
    v130 = (v128 >> 56) & 0xF;
    if ((v128 & 0x2000000000000000) == 0)
    {
      v130 = v129 & 0xFFFFFFFFFFFFLL;
    }

    if (v130)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v187[0] = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_228043AD4(0, *(v126 + 16) + 1, 1);
        v126 = v187[0];
      }

      v133 = *(v126 + 16);
      v132 = *(v126 + 24);
      if (v133 >= v132 >> 1)
      {
        sub_228043AD4((v132 > 1), v133 + 1, 1);
        v126 = v187[0];
      }

      *(v126 + 16) = v133 + 1;
      v134 = v126 + 16 * v133;
      *(v134 + 32) = v129;
      *(v134 + 40) = v128;
      goto LABEL_97;
    }
  }

  v23 = v176;
  if (*(v126 + 16) >= 6uLL)
  {
    sub_2280C0964(v126, v126 + 32, 0, 0xBuLL);
    v136 = v135;

    v126 = v136;
  }

  v183[19] = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_2280C0BC8(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
  v137 = sub_22813925C();
  v139 = v138;

  v140 = HIBYTE(v139) & 0xF;
  if ((v139 & 0x2000000000000000) == 0)
  {
    v140 = v137 & 0xFFFFFFFFFFFFLL;
  }

  if (v140)
  {
    v187[0] = 0;
    v187[1] = 0xE000000000000000;
    sub_22813988C();

    strcpy(v187, "Participants: ");
    HIBYTE(v187[1]) = -18;
    MEMORY[0x22AAB1970](v137, v139);

    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    v113 = v187[0];
    v55 = v187[1];
  }

  else
  {

    v113 = 0;
    v55 = 0xE000000000000000;
  }

  v48 = objc_opt_self();
  v109 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
LABEL_145:
    swift_once();
  }

  v185 = v113;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v141 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v141 = &qword_2813C76F8;
  }

  v142 = *(*v141 + 672);
  v143 = *(*v141 + 680);
  v144 = *(*v141 + 688);
  v145 = *(*v141 + 696);
  v146 = *(*v141 + 2208);

  v147 = v109[422];

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v144(v187, v146);

    v143 = v187[0];
  }

  else
  {
  }

  v148 = v183;
  if (!v143)
  {
    v154 = v185;
    goto LABEL_134;
  }

  if (qword_2813C8758 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v150 = v148[23];
    v149 = v148[24];
    v151 = v148[22];
    sub_228139B6C();
    v152 = swift_task_alloc();
    *(v152 + 16) = v149;
    v153 = sub_2280B866C(sub_2280C0C10, v152, v143);

    (*(v150 + 8))(v149, v151);
    if (v153)
    {

      v154 = 0;
      v55 = 0xE000000000000000;
      v148 = v183;
    }

    else
    {
      v148 = v183;
      v154 = v185;
    }

LABEL_134:
    v148[33] = v154;
    v148[34] = v55;
    if (v23)
    {
      v155 = v148[21];
      v156 = *(sub_228138A8C() + 16);

      v157 = v156 != 0;
      KeyPath = swift_getKeyPath();
      os_unfair_lock_lock((v23 + 16));
      v188 = MEMORY[0x277D839B0];
      LOBYTE(v187[0]) = v157;

      sub_2280449FC(v187, KeyPath, (v23 + 24));
      os_unfair_lock_unlock((v23 + 16));

      v159 = sub_22813936C();

      v160 = swift_getKeyPath();
      os_unfair_lock_lock((v23 + 16));
      v161 = v154;
      v162 = MEMORY[0x277D84A28];
      v188 = MEMORY[0x277D84A28];
      v187[0] = v159;

      sub_2280449E4(v187, v160, (v23 + 24));
      os_unfair_lock_unlock((v23 + 16));

      v163 = sub_22813936C();

      v164 = swift_getKeyPath();
      os_unfair_lock_lock((v23 + 16));
      v188 = v162;
      v187[0] = v163;

      sub_2280449E4(v187, v164, (v23 + 24));
      os_unfair_lock_unlock((v23 + 16));

      v165 = sub_22813936C();

      v166 = swift_getKeyPath();
      os_unfair_lock_lock((v23 + 16));
      v188 = v162;
      v187[0] = v165;

      sub_2280449E4(v187, v166, (v23 + 24));
      os_unfair_lock_unlock((v23 + 16));

      v167 = sub_22813936C();
      v168 = swift_getKeyPath();
      os_unfair_lock_lock((v23 + 16));
      v188 = v162;
      v154 = v161;
      v187[0] = v167;

      sub_2280449E4(v187, v168, (v23 + 24));
      os_unfair_lock_unlock((v23 + 16));
    }

    else
    {
    }

    v169 = sub_2280AA14C(0, 0, 0x7FFFFFFFFFFFFFFFLL, v154, v55);
    v143 = 3 * v169;
    if ((v169 * 3) >> 64 == (3 * v169) >> 63)
    {
      break;
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  v170 = swift_task_alloc();
  v148[35] = v170;
  *v170 = v148;
  v170[1] = sub_2280BD3B0;
  v171 = v148[20];

  return sub_2280D89D0(v174, v173, v180 + 160, v143);
}

uint64_t sub_2280BD3B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 280);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[34];
    v10 = v6[32];

    v12 = v6[30];
    v11 = v6[31];
    v13 = v6[27];
    v14 = v6[24];

    v15 = *(v8 + 8);

    return v15();
  }

  else
  {
    v17 = v6[32];

    v6[36] = a2;
    v6[37] = a1;

    return MEMORY[0x2822009F8](sub_2280BD53C, 0, 0);
  }
}

uint64_t sub_2280BD53C()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[27];
  v6 = v0[24];
  v9 = v0[33];
  v10 = v0[34];

  MEMORY[0x22AAB1970](v1, v2);

  v7 = v0[1];

  return v7(v9, v10);
}

Swift::String __swiftcall SKTextMessage.preprocessForLanguageCheck()()
{
  v0 = sub_228138A6C();
  if (!v1)
  {
    v0 = 0;
    v1 = 0xE000000000000000;
  }

  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_2280BD64C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280BD6E0;

  return SKTextMessage.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280BD6E0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2280BD7F0()
{
  result = sub_228138A6C();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2280BD828@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2E20((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280BD8C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_2280BD990(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_228139AAC();
  sub_22813923C();
  v9 = sub_228139AEC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2280BEDDC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2280BDAE0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22813701C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_2280C0D5C(&qword_2813C8768);
  v37 = a2;
  v14 = sub_2281391DC();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_2280C0D5C(&qword_2813C8760);
      v24 = sub_22813926C();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_2280BEF5C(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_2280BDD98(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_228139A9C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2280BF1D8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2280BDE78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = a3 & 1;
  sub_228139AAC();
  sub_227FED188();
  sub_2281391EC();
  v10 = sub_228139AEC();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_14:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2280BF2F8(a2, v9, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
    v15 = a2;
    goto LABEL_15;
  }

  v13 = ~v11;
  v14 = *(v7 + 48);
  while (1)
  {
    v15 = *(v14 + 16 * v12);
    if ((v4 & 1) == 0)
    {
      if (v15 == a2)
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }

    if (a2)
    {
      break;
    }

    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_4:
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (a2 == 1)
  {
    if (v15 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (v15 != 2)
  {
    goto LABEL_4;
  }

LABEL_13:
  result = 0;
  v4 = *(v14 + 16 * v12 + 8);
LABEL_15:
  *a1 = v15;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2280BDFE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_228139AAC();
  sub_22813923C();
  v9 = sub_228139AEC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2280BF4AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2280BE134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2280BE394(uint64_t a1)
{
  v2 = v1;
  v42 = sub_22813701C();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF48, &unk_22813FC40);
  result = sub_22813983C();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_2280C0D5C(&qword_2813C8768);
      result = sub_2281391DC();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_2280BE6DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF58, &qword_22813FC58);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_228139A9C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2280BE900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF50, &qword_22813FC50);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 16 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v6 + 40);
      sub_228139AAC();
      sub_227FED188();
      sub_2281391EC();
      result = sub_228139AEC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 16 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2280BEB7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF60, &unk_22813FC60);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2280BEDDC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2280BE134(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2280BF62C();
      goto LABEL_16;
    }

    sub_2280BFDB0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_228139AAC();
  sub_22813923C();
  result = sub_228139AEC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2281399BC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2281399DC();
  __break(1u);
  return result;
}

uint64_t sub_2280BEF5C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22813701C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2280BE394(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2280BF788();
      goto LABEL_12;
    }

    sub_2280BFFE8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_2280C0D5C(&qword_2813C8768);
  v16 = sub_2281391DC();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_2280C0D5C(&qword_2813C8760);
      v24 = sub_22813926C();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2281399DC();
  __break(1u);
  return result;
}

uint64_t sub_2280BF1D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2280BE6DC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2280BF9C0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2280C02F0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_228139A9C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2281399DC();
  __break(1u);
  return result;
}

uint64_t sub_2280BF2F8(uint64_t result, char a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a4)
  {
    sub_2280BE900(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_2280BFB00();
      a3 = v9;
      goto LABEL_21;
    }

    sub_2280C04E0(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_228139AAC();
  sub_227FED188();
  sub_2281391EC();
  result = sub_228139AEC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v10 + 48) + 16 * a3);
      if (a2)
      {
        if (v6)
        {
          if (v6 == 1)
          {
            if (v14 == 1)
            {
              goto LABEL_20;
            }
          }

          else if (v14 == 2)
          {
LABEL_20:
            result = sub_2281399DC();
            __break(1u);
            break;
          }
        }

        else if (!v14)
        {
          goto LABEL_20;
        }
      }

      else if (v14 == v6)
      {
        goto LABEL_20;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_21:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = v6;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }

  return result;
}

uint64_t sub_2280BF4AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2280BEB7C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2280BFC54();
      goto LABEL_16;
    }

    sub_2280C072C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_228139AAC();
  sub_22813923C();
  result = sub_228139AEC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2281399BC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2281399DC();
  __break(1u);
  return result;
}

void *sub_2280BF62C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_2280BF788()
{
  v1 = v0;
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF48, &unk_22813FC40);
  v8 = *v0;
  v9 = sub_22813982C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_2280BF9C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF58, &qword_22813FC58);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2280BFB00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF50, &qword_22813FC50);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2280BFC54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF60, &unk_22813FC60);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2280BFDB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_228139AAC();

      sub_22813923C();
      result = sub_228139AEC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2280BFFE8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22813701C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF48, &unk_22813FC40);
  v11 = sub_22813983C();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_2280C0D5C(&qword_2813C8768);
      result = sub_2281391DC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_2280C02F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF58, &qword_22813FC58);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_228139A9C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2280C04E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF50, &qword_22813FC50);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      sub_228139AAC();
      sub_227FED188();
      sub_2281391EC();
      result = sub_228139AEC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2280C072C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF60, &unk_22813FC60);
  result = sub_22813983C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_2280C0964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_3(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2280C0A3C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_228041784();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2280C0A78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    v11 = 0x203A7265646E6553;
  }

  else
  {
    v11 = 0;
  }

  v12 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v12 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x22AAB1970](a5, a6);
    v14 = 32;
    v13 = 0xE100000000000000;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x22AAB1970](a3, a4);
  MEMORY[0x22AAB1970](v14, v13);

  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return v11;
}

uint64_t sub_2280C0BC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for SKTextMessage()
{
  result = qword_2813C7980;
  if (!qword_2813C7980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280C0CF0()
{
  result = sub_228138AAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2280C0D5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22813701C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2280C0DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  *(v7 + 208) = a7;
  *(v7 + 168) = a5;
  *(v7 + 176) = a6;
  *(v7 + 152) = a3;
  *(v7 + 160) = a4;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  *(v7 + 128) = a1;
  return MEMORY[0x2822009F8](sub_2280C0DD8, 0, 0);
}

uint64_t sub_2280C0DD8()
{
  sub_2280AA278(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 208) & 0x101, v0 + 16);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_2280C5414(0, 0, 0, 0, 0);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v8 = 256;
  if (!v5)
  {
    v8 = 0;
  }

  *(v0 + 80) = v3;
  *(v0 + 88) = v8 | v4;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  sub_2281395DC();
  if (*(v0 + 72))
  {
    v9 = sub_2280AA384();
    *(v0 + 184) = v10;
    if (v10)
    {
      v11 = *(v0 + 144);
      *(v0 + 112) = v9;
      *(v0 + 120) = v10;
      v20 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_2280C1088;
      v14 = *(v0 + 152);

      return v20(v0 + 128, v0 + 112);
    }

    v16 = *(v0 + 72);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v0 + 104);
  sub_2280C5414(*(v0 + 64), v16, *(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_2280C5414(0, 0, 0, 0, 0);
  v18 = *(v0 + 128);
  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_2280C1088()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  v4 = *(v2 + 184);

  if (v0)
  {
    v5 = *(v2 + 128);

    v6 = *(v2 + 104);
    sub_2280C5414(*(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
    v7 = sub_2280C140C;
  }

  else
  {
    v7 = sub_2280C11C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280C11C4()
{
  v1 = *(v0 + 200);
  sub_2281395DC();
  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);

    sub_2280C5414(v3, v4, v5, v6, v7);
    swift_willThrow();
    sub_2280C5414(0, 0, 0, 0, 0);
    v9 = *(v0 + 8);

    return v9();
  }

  if (*(v0 + 72))
  {
    v11 = sub_2280AA384();
    *(v0 + 184) = v12;
    if (v12)
    {
      v13 = *(v0 + 144);
      *(v0 + 112) = v11;
      *(v0 + 120) = v12;
      v21 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      *(v0 + 192) = v15;
      *v15 = v0;
      v15[1] = sub_2280C1088;
      v16 = *(v0 + 152);

      return v21(v0 + 128, v0 + 112);
    }

    v17 = *(v0 + 72);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v0 + 104);
  sub_2280C5414(*(v0 + 64), v17, *(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_2280C5414(0, 0, 0, 0, 0);
  v19 = *(v0 + 128);
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_2280C1424(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF68, &unk_22813FC78) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C14D0, 0, 0);
}

uint64_t sub_2280C14D0()
{
  v1 = *(v0 + 312);
  v2 = *v1;
  *(v0 + 336) = *v1;
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(v0 + 296);
    v3 = *(v0 + 304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22813A4B0;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);

    v8 = *(v0 + 8);

    return v8(v5);
  }

  else
  {
    sub_2280C22A8((v1 + 6), v0 + 120);
    if (*(v0 + 168))
    {
      if (*(v0 + 168) == 1)
      {
        v10 = *(v0 + 160);
        sub_227FFA05C((v0 + 120), v0 + 176);
      }

      else
      {
        v10 = 0;
        *(v0 + 208) = 0;
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
      }
    }

    else
    {
      sub_227FFA05C((v0 + 120), v0 + 176);
      v10 = 0;
    }

    *(v0 + 344) = v10;
    sub_2280C52C8(v0 + 176, v0 + 216, &qword_27D81EF70, &qword_22813FC88);
    v11 = *(v0 + 240);
    sub_2280C340C(v0 + 216, &qword_27D81EF70, &qword_22813FC88);
    if (v11)
    {
      if (qword_2813C48C8 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 312);
      v12 = *(v0 + 320);
      v14 = type metadata accessor for Signpost(0);
      __swift_project_value_buffer(v14, qword_2813C87B0);
      sub_2280C52C8(v0 + 176, v0 + 256, &qword_27D81EF70, &qword_22813FC88);
      sub_2280C5260(v13, v0 + 16);
      v15 = swift_allocObject();
      v16 = *(v0 + 272);
      *(v15 + 16) = *(v0 + 256);
      *(v15 + 32) = v16;
      v17 = *(v0 + 48);
      *(v15 + 104) = *(v0 + 64);
      v18 = *(v0 + 96);
      *(v15 + 120) = *(v0 + 80);
      *(v15 + 136) = v18;
      v19 = *(v0 + 32);
      *(v15 + 56) = *(v0 + 16);
      *(v15 + 72) = v19;
      *(v15 + 48) = *(v0 + 288);
      *(v15 + 152) = *(v0 + 112);
      *(v15 + 88) = v17;
      sub_22812F68C(sub_2280C597C, v12);

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v22 = *(v0 + 320);
    v21 = *(v0 + 328);
    v23 = *(v0 + 312);
    v24 = type metadata accessor for SignpostToken(0);
    (*(*(v24 - 8) + 56))(v22, v20, 1, v24);
    sub_2280C22E0(v22, v21);
    v25 = v23[4];
    v26 = v23[5];
    __swift_project_boxed_opaque_existential_1(v23 + 1, v25);
    if ((*(v26 + 8))(v25, v26))
    {
      v27 = v23[4];
      v28 = v23[5];
      __swift_project_boxed_opaque_existential_1(v23 + 1, v27);
      v29 = *(v28 + 16);
      v40 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 352) = v31;
      *v31 = v0;
      v31[1] = sub_2280C1990;
      v33 = *(v0 + 296);
      v32 = *(v0 + 304);

      return v40(v33, v32, v27, v28);
    }

    else
    {
      v34 = *(v0 + 312);
      v35 = swift_task_alloc();
      *(v0 + 376) = v35;
      *(v35 + 16) = v34;
      v36 = swift_task_alloc();
      *(v0 + 384) = v36;
      *v36 = v0;
      v36[1] = sub_2280C1CF0;
      v37 = *(v0 + 296);
      v38 = *(v0 + 304);
      v39 = MEMORY[0x277D84F90];

      return sub_2280C0DA8(v39, &unk_22813FC98, v35, v37, v38, 2, 1);
    }
  }
}

uint64_t sub_2280C1990(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v7 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v5 = sub_2280C21E4;
  }

  else
  {
    v5 = sub_2280C1AA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280C1AA4()
{
  v20 = v0;
  v1 = v0[45];
  if (v0[42] >= v1)
  {
    v9 = v0[43];
    if (v9)
    {
      KeyPath = swift_getKeyPath();
      os_unfair_lock_lock((v9 + 16));
      v19[3] = MEMORY[0x277D84A28];
      v19[0] = v1;

      sub_2280449E4(v19, KeyPath, (v9 + 24));
      os_unfair_lock_unlock((v9 + 16));
    }

    v11 = v0[41];
    v13 = v0[38];
    v12 = v0[39];
    v14 = v0[37];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22813A4B0;
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;

    sub_2280C25EC(v11, (v0 + 22), v12);

    sub_2280C340C(v11, &qword_27D81EF68, &unk_22813FC78);
    sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);
    v17 = v0[40];
    v16 = v0[41];

    v18 = v0[1];

    return v18(v15);
  }

  else
  {
    v2 = v0[39];
    v3 = swift_task_alloc();
    v0[47] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[48] = v4;
    *v4 = v0;
    v4[1] = sub_2280C1CF0;
    v5 = v0[37];
    v6 = v0[38];
    v7 = MEMORY[0x277D84F90];

    return sub_2280C0DA8(v7, &unk_22813FC98, v3, v5, v6, 2, 1);
  }
}

uint64_t sub_2280C1CF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  v7 = *(v3 + 376);

  if (v1)
  {
    v8 = sub_2280C2120;
  }

  else
  {
    v8 = sub_2280C1E2C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2280C1E2C()
{
  v31 = v0;
  v1 = v0[50];
  v2 = v0[39];
  v3 = sub_2280C2864(v0[49]);
  v4 = v0[49];
  if (v1)
  {

    v5 = v0[43];
    v6 = v0[41];
    sub_2280C25EC(v6, (v0 + 22), v0[39]);

    sub_2280C340C(v6, &qword_27D81EF68, &unk_22813FC78);
    sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = *(v4 + 16) + 1;
    v10 = 48;
    while (--v9)
    {
      v11 = *(v4 + v10);
      v10 += 32;
      v12 = __OFADD__(v1, v11);
      v1 += v11;
      if (v12)
      {
        __break(1u);
        break;
      }
    }

    v13 = v0[43];

    if (v13)
    {
      v14 = v0[43];
      KeyPath = swift_getKeyPath();
      os_unfair_lock_lock((v14 + 16));
      v30[3] = MEMORY[0x277D84A28];
      v30[0] = v1;

      sub_2280449E4(v30, KeyPath, (v14 + 24));
      os_unfair_lock_unlock((v14 + 16));
    }

    v16 = *(v3 + 16);
    if (v16)
    {
      v30[0] = MEMORY[0x277D84F90];
      sub_228043AD4(0, v16, 0);
      v17 = 0;
      v18 = v30[0];
      v19 = *(v30[0] + 16);
      v20 = 16 * v19;
      do
      {
        v22 = *(v3 + v17 + 32);
        v21 = *(v3 + v17 + 40);
        v30[0] = v18;
        v23 = *(v18 + 24);

        if (v19 >= v23 >> 1)
        {
          sub_228043AD4((v23 > 1), v19 + 1, 1);
          v18 = v30[0];
        }

        *(v18 + 16) = v19 + 1;
        v24 = v18 + v20;
        *(v24 + 32) = v22;
        *(v24 + 40) = v21;
        v20 += 16;
        v17 += 32;
        ++v19;
        --v16;
      }

      while (v16);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    v25 = v0[43];
    v26 = v0[41];
    sub_2280C25EC(v26, (v0 + 22), v0[39]);

    sub_2280C340C(v26, &qword_27D81EF68, &unk_22813FC78);
    sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);
    v28 = v0[40];
    v27 = v0[41];

    v29 = v0[1];

    return v29(v18);
  }
}

uint64_t sub_2280C2120()
{
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[41];
  sub_2280C25EC(v3, (v0 + 22), v0[39]);

  sub_2280C340C(v3, &qword_27D81EF68, &unk_22813FC78);
  sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2280C21E4()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[41];
  sub_2280C25EC(v3, (v0 + 22), v0[39]);

  sub_2280C340C(v3, &qword_27D81EF68, &unk_22813FC78);
  sub_2280C340C((v0 + 22), &qword_27D81EF70, &qword_22813FC88);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2280C22E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF68, &unk_22813FC78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280C2350()
{
  sub_2280C22A8(v0, v2);
  if (v3)
  {
    if (v3 == 1)
    {

      __swift_destroy_boxed_opaque_existential_1(v2);
      return 0x636E657265666E69;
    }

    else
    {
      return 0x6574616D6F747561;
    }
  }

  else
  {
    sub_2280C5298(v2);
    return 0xD000000000000012;
  }
}

unint64_t sub_2280C2404(uint64_t a1, uint64_t a2)
{
  sub_2280C52C8(a1, &v10, &qword_27D81EF70, &qword_22813FC88);
  if (v11)
  {
    v3 = 0xD000000000000012;
    sub_227FFA05C(&v10, v15);
    *&v10 = 0;
    *(&v10 + 1) = 0xE000000000000000;
    sub_22813988C();

    v13 = 0xD000000000000014;
    v14 = 0x80000002281441C0;
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = (*(v5 + 16))(v4, v5);
    MEMORY[0x22AAB1970](v6);

    MEMORY[0x22AAB1970](0x746E65746E69202CLL, 0xEA0000000000203ALL);
    sub_2280C22A8(a2 + 48, &v10);
    if (v12)
    {
      if (v12 == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(&v10);
        v7 = 0xE900000000000065;
        v3 = 0x636E657265666E69;
      }

      else
      {
        v7 = 0xEE00747365742064;
        v3 = 0x6574616D6F747561;
      }
    }

    else
    {
      v7 = 0x8000000228147E40;
      sub_2280C5298(&v10);
    }

    MEMORY[0x22AAB1970](v3, v7);

    MEMORY[0x22AAB1970](93, 0xE100000000000000);
    v8 = v13;
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_2280C340C(&v10, &qword_27D81EF70, &qword_22813FC88);
    return 0;
  }

  return v8;
}

uint64_t sub_2280C25EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF68, &unk_22813FC78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v24 - v9;
  v11 = type metadata accessor for SignpostToken(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2280C52C8(a1, v10, &qword_27D81EF68, &unk_22813FC78);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_2280C340C(v10, &qword_27D81EF68, &unk_22813FC78);
  }

  sub_2280C5330(v10, v16);
  if (qword_2813C48C8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v18, qword_2813C87B0);
  sub_2280C52C8(a2, v26, &qword_27D81EF70, &qword_22813FC88);
  sub_2280C5260(a3, v24);
  v19 = swift_allocObject();
  v20 = v26[1];
  *(v19 + 16) = v26[0];
  *(v19 + 32) = v20;
  v21 = v24[2];
  *(v19 + 104) = v24[3];
  v22 = v24[5];
  *(v19 + 120) = v24[4];
  *(v19 + 136) = v22;
  v23 = v24[1];
  *(v19 + 56) = v24[0];
  *(v19 + 72) = v23;
  *(v19 + 48) = v27;
  *(v19 + 152) = v25;
  *(v19 + 88) = v21;
  sub_2281317B8(v16, sub_2280C5408);

  return sub_227FEA5B8(v16);
}

uint64_t sub_2280C2864(uint64_t a1)
{
  v4 = v2;
  v5 = *(a1 + 16);
  if (!v5)
  {
  }

  v7 = sub_2280C4FD4(a1);
  v9 = 0;
  v10 = (a1 + 48);
  v11 = v5 + 1;
  while (--v11)
  {
    v12 = *v10;
    v10 += 4;
    v13 = __OFADD__(v9, v12);
    v9 += v12;
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v13 = __OFADD__(v9, v5 - 1);
  v14 = v9 + v5 - 1;
  if (v13)
  {
    goto LABEL_51;
  }

  v15 = ceil(v14 / *v1);
  if (v15 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = v14 / v15;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v14 / v15)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v17 = v16;
  v18 = v7 / 2 + v8 / 2;
  v40 = v16 - v18;
  if (__OFSUB__(v16, v18))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v39 = v17 + v18;
  if (!__OFADD__(v17, v18))
  {
    v3 = 0;
    v44 = v15;
    v42 = 0;
    v43 = 0xE000000000000000;
    v19 = (a1 + 48);
    v20 = v5 + 1;
    v41 = MEMORY[0x277D84F90];
    while (--v20)
    {
      v22 = *(v19 - 2);
      v21 = *(v19 - 1);
      v5 = *v19;

      v23 = v4;
      sub_2281395DC();
      if (v4)
      {

LABEL_43:
      }

      v24 = v42;
      v1 = v43;
      if (v44 >= 2)
      {
        v25 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v25 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          if (v40 < v5)
          {
            goto LABEL_27;
          }

          if (__OFADD__(v5, v3))
          {
            goto LABEL_50;
          }

          if (v39 < v5 + v3)
          {
LABEL_27:

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v26 = v41;
            }

            else
            {
              v26 = sub_228133CE0(0, *(v41 + 2) + 1, 1, v41);
            }

            v28 = *(v26 + 2);
            v27 = *(v26 + 3);
            v29 = v28 + 1;
            if (v28 >= v27 >> 1)
            {
              v32 = sub_228133CE0((v27 > 1), v28 + 1, 1, v26);
              v29 = v28 + 1;
              v26 = v32;
            }

            *(v26 + 2) = v29;
            v41 = v26;
            v30 = &v26[32 * v28];
            *(v30 + 4) = v24;
            *(v30 + 5) = v1;
            *(v30 + 6) = v3;
            v30[56] = 0;

            v24 = 0;
            v3 = 0;
            v1 = 0xE000000000000000;
            v42 = 0;
            v43 = 0xE000000000000000;
            v4 = v23;
          }
        }
      }

      v31 = HIBYTE(v1) & 0xF;
      if ((v1 & 0x2000000000000000) == 0)
      {
        v31 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v1 = &v42;
        MEMORY[0x22AAB1970](10, 0xE100000000000000);
        v13 = __OFADD__(v3++, 1);
        if (v13)
        {
          goto LABEL_49;
        }
      }

      v19 += 4;
      v1 = &v42;
      MEMORY[0x22AAB1970](v22, v21);

      v13 = __OFADD__(v3, v5);
      v3 += v5;
      if (v13)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    sub_2281395DC();
    if (v4)
    {
      goto LABEL_43;
    }

    v5 = v42;
    v1 = v43;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_45;
    }

    goto LABEL_59;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  v41 = sub_228133CE0(0, *(v41 + 2) + 1, 1, v41);
LABEL_45:
  v34 = v41;
  v36 = *(v41 + 2);
  v35 = *(v41 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_228133CE0((v35 > 1), v36 + 1, 1, v41);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[32 * v36];
  *(v37 + 4) = v5;
  *(v37 + 5) = v1;
  *(v37 + 6) = v3;
  v37[56] = 0;
  v38 = v34;

  return v38;
}

uint64_t sub_2280C2C3C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_2280C2C64, 0, 0);
}

uint64_t sub_2280C2C64()
{
  v1 = v0[3];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2280C2D94;
  v8 = v0[4];
  v7 = v0[5];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_2280C2D94(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280C2EC8, 0, 0);
  }
}

uint64_t sub_2280C2EC8()
{
  v1 = *(v0 + 24);
  if (*v1 >= *(v0 + 56))
  {
    v8 = *(v0 + 40);
    v9 = **(v0 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_228133CE0(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_228133CE0((v10 > 1), v11 + 1, 1, v9);
    }

    v12 = *(v0 + 56);
    v13 = *(v0 + 32);
    v14 = *(v0 + 16);
    *(v9 + 2) = v11 + 1;
    v15 = &v9[32 * v11];
    *(v15 + 2) = v13;
    *(v15 + 6) = v12;
    v15[56] = 1;
    *v14 = v9;
    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_2280C3094;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = MEMORY[0x277D84F90];

    return sub_2280C0DA8(v6, &unk_22813FCD8, v2, v4, v5, 1, 1);
  }
}

uint64_t sub_2280C3094(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 72);
  v7 = *v2;

  v8 = *(v4 + 64);
  if (v1)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 80) = a1;

    return MEMORY[0x2822009F8](sub_2280C3204, 0, 0);
  }
}

uint64_t sub_2280C3204()
{
  v1 = v0[2];
  sub_227FED7B0(v0[10]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2280C326C(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2280C3318;

  return sub_2280C2C3C(a1, a2, v6);
}

uint64_t sub_2280C3318()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2280C340C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280C346C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_2280C3494, 0, 0);
}

uint64_t sub_2280C3494()
{
  v1 = v0[3];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2280C35C4;
  v8 = v0[4];
  v7 = v0[5];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_2280C35C4(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v4 = *v2;
  *(v4 + 56) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280C36F8, 0, 0);
  }
}

uint64_t sub_2280C36F8()
{
  if (**(v0 + 24) >= *(v0 + 56))
  {
    v7 = *(v0 + 40);
    v8 = **(v0 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_228133CE0(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_228133CE0((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = *(v0 + 56);
    v12 = *(v0 + 32);
    v13 = *(v0 + 16);
    *(v8 + 2) = v10 + 1;
    v14 = &v8[32 * v10];
    *(v14 + 2) = v12;
    *(v14 + 6) = v11;
    v14[56] = 2;
    *v13 = v8;
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_2280C387C;
    v2 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);

    return sub_2280C3A30(v4, v3, v2);
  }
}

uint64_t sub_2280C387C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_2280C39C8, 0, 0);
  }
}

uint64_t sub_2280C39C8()
{
  v1 = v0[2];
  sub_227FED7B0(v0[9]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2280C3A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = sub_228136CDC();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C3AF4, 0, 0);
}

uint64_t sub_2280C3AF4()
{
  v1 = **(v0 + 248);
  if (v1 >= *(v0 + 240))
  {
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v6 = sub_22813882C();
    __swift_project_value_buffer(v6, qword_2813C8A20);
    v7 = sub_22813880C();
    v8 = sub_2281396EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_227FC3000, v7, v8, "splitSentence called with input tokens < maximumTokenCountPerChunk", v9, 2u);
      MEMORY[0x22AAB28A0](v9, -1, -1);
    }

    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    v12 = *(v0 + 224);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF78, &unk_22813FCE8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22813A4B0;
    *(v13 + 32) = v12;
    *(v13 + 40) = v10;
    *(v13 + 48) = v11;
    *(v13 + 56) = 2;

    goto LABEL_8;
  }

  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = sub_2280DB150();
  v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v17 = sub_2280E9BE4(0xD000000000000011, 0x8000000228144170, 0);
  v19 = *(v0 + 224);
  v18 = *(v0 + 232);
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = *(v0 + 224);
  }

  v21 = 7;
  if (((v18 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
  {
    v21 = 11;
  }

  *(v0 + 160) = 15;
  *(v0 + 168) = v21 | (v20 << 16);
  *(v0 + 176) = v19;
  *(v0 + 184) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
  sub_227FEB294();
  *(v0 + 280) = sub_227FDB420();
  v22 = sub_22813973C();
  v75 = v23;
  v76 = v22;
  *(v0 + 208) = MEMORY[0x277D84F90];
  v24 = sub_22813927C();
  v25 = swift_allocObject();
  v25[2] = v19;
  v25[3] = v18;
  v25[4] = v0 + 208;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2280C5504;
  *(v26 + 24) = v25;
  *(v0 + 48) = sub_2280C5510;
  *(v0 + 56) = v26;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_2280E6468;
  *(v0 + 40) = &block_descriptor_0;
  v27 = _Block_copy((v0 + 16));
  v28 = *(v0 + 56);

  [v17 enumerateMatchesInString:v24 options:0 range:v76 usingBlock:{v75, v27}];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_39;
  }

  v30 = *(v0 + 208);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E558, &qword_22813B0F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v4;
  *(inited + 40) = v30;
  v32 = sub_227FEA1DC(inited);
  *(v0 + 288) = v32;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E560, &qword_22813B100);
  result = swift_arrayDestroy();
  if (!v1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = *(v0 + 240) / v1;
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v36 = *(v32 + 16);
  *(v0 + 296) = v36;
  if (!v35)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v37 = v36 / v35;
  if (v37 <= 1)
  {
    v37 = 1;
  }

  *(v0 + 304) = v37;
  v38 = MEMORY[0x277D84F90];
  *(v0 + 216) = MEMORY[0x277D84F90];
  if (v37 < v36)
  {
    v39 = *(v0 + 264);
    v40 = *(v0 + 248);
    v41 = __OFADD__(v37, v37);
    *(v0 + 312) = v38;
    *(v0 + 320) = 2 * v37;
    *(v0 + 400) = v41;
    v42 = *(v0 + 288);
    if (v37 < *(v42 + 16))
    {
      *(v0 + 328) = *(v42 + 8 * v37 + 32);
      v43 = *(v0 + 272);
      v44 = *(v0 + 280);
      v45 = *(v0 + 256);
      v46 = *(v0 + 224);
      v47 = *(v0 + 232);
      v48 = sub_22813948C();
      v49 = MEMORY[0x22AAB18D0](v48);
      v51 = v50;

      *(v0 + 192) = v49;
      *(v0 + 200) = v51;
      sub_228136C5C();
      v52 = sub_2281397AC();
      v54 = v53;
      *(v0 + 336) = v52;
      *(v0 + 344) = v53;
      (*(v39 + 8))(v43, v45);

      v55 = v40[4];
      v56 = v40[5];
      __swift_project_boxed_opaque_existential_1(v40 + 1, v55);
      v57 = *(v56 + 16);
      v77 = (v57 + *v57);
      v58 = v57[1];
      v59 = swift_task_alloc();
      *(v0 + 352) = v59;
      *v59 = v0;
      v59[1] = sub_2280C42BC;

      return v77(v52, v54, v55, v56);
    }

LABEL_42:
    __break(1u);
    return result;
  }

  v60 = *(v0 + 288);
  v61 = *(v0 + 224);
  v62 = *(v0 + 232);

  v63 = v61 & 0xFFFFFFFFFFFFLL;
  if ((v62 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(v62) & 0xF;
  }

  if (v63)
  {
    v64 = *(v0 + 224);
    if ((*(v0 + 232) & 0x2000000000000000) == 0)
    {
      v65 = *(v0 + 224);
    }

    v66 = sub_22813948C();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    *(v0 + 376) = v71;
    v73 = swift_task_alloc();
    *(v0 + 384) = v73;
    *v73 = v0;
    v73[1] = sub_2280C4898;
    v74 = *(v0 + 248);

    return sub_2280C4AA8(v66, v68, v70, v72, v74, v0 + 216);
  }

  swift_beginAccess();
  v13 = *(v0 + 216);
LABEL_8:
  v14 = *(v0 + 272);

  v15 = *(v0 + 8);

  return v15(v13);
}

uint64_t sub_2280C42BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v7 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v5 = sub_2280C4814;
  }

  else
  {
    v5 = sub_2280C43D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280C43D0()
{
  v1 = *(v0 + 312);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 312);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_228133CE0(0, *(v3 + 2) + 1, 1, *(v0 + 312));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_228133CE0((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 360);
  v7 = *(v0 + 336);
  v8 = *(v0 + 400);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  *(v3 + 2) = v5 + 1;
  v11 = &v3[32 * v5];
  *(v11 + 2) = v7;
  *(v11 + 6) = v6;
  v11[56] = 3;
  *(v0 + 216) = v3;
  result = swift_endAccess();
  v13 = *(v0 + 328);
  if ((v8 & 1) == 0 && v9 < v10)
  {
    v14 = *(v0 + 320);
    v15 = *(v0 + 304);
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    v18 = v16;
    *(v0 + 312) = v3;
    *(v0 + 320) = v17;
    *(v0 + 400) = v18;
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = *(v0 + 288);
      if (v14 < *(v19 + 16))
      {
        v20 = *(v19 + 8 * v14 + 32);
        *(v0 + 328) = v20;
        if (v20 >> 14 >= v13 >> 14)
        {
          v22 = *(v0 + 272);
          v21 = *(v0 + 280);
          v23 = *(v0 + 256);
          v24 = *(v0 + 264);
          v25 = *(v0 + 248);
          v26 = *(v0 + 224);
          v27 = *(v0 + 232);
          v28 = sub_22813948C();
          v29 = MEMORY[0x22AAB18D0](v28);
          v31 = v30;

          *(v0 + 192) = v29;
          *(v0 + 200) = v31;
          sub_228136C5C();
          v32 = sub_2281397AC();
          v34 = v33;
          *(v0 + 336) = v32;
          *(v0 + 344) = v33;
          (*(v24 + 8))(v22, v23);

          v35 = v25[4];
          v36 = v25[5];
          __swift_project_boxed_opaque_existential_1(v25 + 1, v35);
          v37 = *(v36 + 16);
          v58 = (v37 + *v37);
          v38 = v37[1];
          v39 = swift_task_alloc();
          *(v0 + 352) = v39;
          *v39 = v0;
          v39[1] = sub_2280C42BC;

          return v58(v32, v34, v35, v36);
        }

LABEL_29:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v40 = *(v0 + 288);
  v42 = *(v0 + 224);
  v41 = *(v0 + 232);

  v43 = v42 & 0xFFFFFFFFFFFFLL;
  if ((v41 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v41) & 0xF;
  }

  if (v13 >> 14 >= 4 * v43)
  {
    swift_beginAccess();
    v55 = *(v0 + 216);
    v56 = *(v0 + 272);

    v57 = *(v0 + 8);

    return v57(v55);
  }

  else
  {
    v44 = *(v0 + 224);
    if ((*(v0 + 232) & 0x2000000000000000) == 0)
    {
      v45 = *(v0 + 224);
    }

    v46 = sub_22813948C();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    *(v0 + 376) = v51;
    v53 = swift_task_alloc();
    *(v0 + 384) = v53;
    *v53 = v0;
    v53[1] = sub_2280C4898;
    v54 = *(v0 + 248);

    return sub_2280C4AA8(v46, v48, v50, v52, v54, v0 + 216);
  }
}

uint64_t sub_2280C4814()
{
  v1 = v0[43];
  v2 = v0[39];
  v3 = v0[36];

  v4 = v0[46];
  v5 = v0[34];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2280C4898()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_2280C4A34;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_2280C49B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280C49B4()
{
  swift_beginAccess();
  v1 = v0[27];
  v2 = v0[34];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_2280C4A34()
{
  v1 = v0[47];

  v2 = v0[27];

  v3 = v0[49];
  v4 = v0[34];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2280C4AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = sub_228136CDC();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C4B70, 0, 0);
}

uint64_t sub_2280C4B70()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[14];
  v0[8] = MEMORY[0x22AAB18D0](v0[10], v0[11], v0[12], v0[13]);
  v0[9] = v5;
  sub_228136C5C();
  sub_227FDB420();
  v6 = sub_2281397AC();
  v8 = v7;
  v0[19] = v6;
  v0[20] = v7;
  (*(v2 + 8))(v1, v3);

  v9 = v4[4];
  v10 = v4[5];
  __swift_project_boxed_opaque_existential_1(v4 + 1, v9);
  v11 = *(v10 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_2280C4D24;

  return v15(v6, v8, v9, v10);
}

uint64_t sub_2280C4D24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[21];
  v8 = *v2;
  v4[22] = v1;

  if (v1)
  {
    v6 = sub_2280C4F64;
  }

  else
  {
    v6 = sub_2280C4E40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2280C4E40()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v0 + 120);
    v2 = sub_228133CE0(0, *(v2 + 2) + 1, 1, v2);
    *v12 = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v13 = *(v0 + 120);
    v2 = sub_228133CE0((v4 > 1), v5 + 1, 1, v2);
    *v13 = v2;
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 152);
  v8 = *(v0 + 144);
  *(v2 + 2) = v5 + 1;
  v9 = &v2[32 * v5];
  *(v9 + 2) = v7;
  *(v9 + 6) = v6;
  v9[56] = 3;
  swift_endAccess();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2280C4F64()
{
  v1 = v0[20];
  v2 = v0[18];

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_2280C4FD4(uint64_t a1)
{
  __Mean[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (!v1)
  {
    result = 0;
    goto LABEL_14;
  }

  *&__Mean[0] = MEMORY[0x277D84F90];
  sub_228043BFC(0, v1, 0);
  v3 = __Mean[0];
  v4 = (a1 + 48);
  v5 = *(*&__Mean[0] + 16);
  do
  {
    v7 = *v4;
    v4 += 4;
    v6 = v7;
    __Mean[0] = v3;
    v8 = *(*&v3 + 24);
    v9 = v5 + 1;
    if (v5 >= v8 >> 1)
    {
      sub_228043BFC((v8 > 1), v5 + 1, 1);
      v9 = v5 + 1;
      v3 = __Mean[0];
    }

    *(*&v3 + 16) = v9;
    *(*&v3 + 8 * v5 + 32) = v6;
    v5 = v9;
    --v1;
  }

  while (v1);
  __StandardDeviation = 0.0;
  __Mean[0] = 0.0;
  vDSP_normalizeD((*&v3 + 32), 1, 0, 1, __Mean, &__StandardDeviation, v9);

  if ((*&__Mean[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (__Mean[0] <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__Mean[0] >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((*&__StandardDeviation & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__StandardDeviation <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (__StandardDeviation >= 9.22337204e18)
  {
    goto LABEL_20;
  }

  result = __Mean[0];
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2280C51A8()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280C521C()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280C52C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280C5330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignpostToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_12()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  if (*(v0 + 152) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
    v1 = *(v0 + 144);
  }

  else if (!*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  return MEMORY[0x2821FE8E8](v0, 153, 7);
}

void sub_2280C5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_2280C5458(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2280C5980;

  return sub_2280C346C(a1, a2, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2280C5544(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280C558C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SummarizationKit11TextChunkerV6IntentO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2280C5618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2280C5654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2280C56A8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2280C570C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2280C5754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextChunker.Chunk.ChunkType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextChunker.Chunk.ChunkType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2280C5928()
{
  result = qword_27D81EF80;
  if (!qword_27D81EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF80);
  }

  return result;
}

uint64_t sub_2280C5984()
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_2280C5A9C()
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_2280C5BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a3;
  v7[20] = a4;
  v7[17] = a1;
  v7[18] = a2;
  v8 = sub_2281386AC();
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = sub_2281386DC();
  v7[26] = v11;
  v12 = *(v11 - 8);
  v7[27] = v12;
  v13 = *(v12 + 64) + 15;
  v7[28] = swift_task_alloc();
  v14 = sub_2281386CC();
  v7[29] = v14;
  v15 = *(v14 - 8);
  v7[30] = v15;
  v16 = *(v15 + 64) + 15;
  v7[31] = swift_task_alloc();
  v17 = sub_2281386FC();
  v7[32] = v17;
  v18 = *(v17 - 8);
  v7[33] = v18;
  v19 = *(v18 + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v20 = sub_22813713C();
  v7[38] = v20;
  v21 = *(v20 - 8);
  v7[39] = v21;
  v22 = *(v21 + 64) + 15;
  v7[40] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v24 = sub_2281379AC();
  v7[45] = v24;
  v25 = *(v24 - 8);
  v7[46] = v25;
  v26 = *(v25 + 64) + 15;
  v7[47] = swift_task_alloc();
  v27 = sub_22813797C();
  v7[48] = v27;
  v28 = *(v27 - 8);
  v7[49] = v28;
  v29 = *(v28 + 64) + 15;
  v7[50] = swift_task_alloc();
  v30 = sub_22813795C();
  v7[51] = v30;
  v31 = *(v30 - 8);
  v7[52] = v31;
  v32 = *(v31 + 64) + 15;
  v7[53] = swift_task_alloc();
  v33 = sub_22813794C();
  v7[54] = v33;
  v34 = *(v33 - 8);
  v7[55] = v34;
  v35 = *(v34 + 64) + 15;
  v7[56] = swift_task_alloc();
  v36 = sub_22813882C();
  v7[57] = v36;
  v37 = *(v36 - 8);
  v7[58] = v37;
  v38 = *(v37 + 64) + 15;
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v39 = sub_228136CDC();
  v7[61] = v39;
  v40 = *(v39 - 8);
  v7[62] = v40;
  v41 = *(v40 + 64) + 15;
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C60A8, 0, 0);
}

uint64_t sub_2280C60A8()
{
  v243 = v0;
  v1 = sub_2280A9734(0, *(v0 + 144), *(v0 + 152));
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v230 = v1;
  v235 = v0;
  v223 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFB0, &unk_2281402A0);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject() + v8;
  sub_228136C6C();
  sub_228136C7C();
  sub_228136C9C();
  sub_228136CCC();
  v10 = *(v4 + 16);
  v10(v3, v9, v5);
  sub_228136CBC();
  v11 = *(v4 + 8);
  v11(v3, v5);
  v10(v3, v9 + v7, v5);
  sub_228136CBC();
  v11(v3, v5);
  v10(v3, v9 + 2 * v7, v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_228136CBC();
  v11(v3, v5);
  v12 = swift_task_alloc();
  *(v12 + 16) = v2;
  v207 = sub_2280D34CC(sub_2280D43A4, v12, v230, v223);
  v239 = v13;

  v11(v2, v5);
  v14 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v15 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v15 = &qword_2813C76F8;
  }

  v16 = *v15;
  v17 = *(*v15 + 24);
  v18 = *(*v15 + 32);
  v20 = *(*v15 + 40);
  v19 = *(*v15 + 48);
  v21 = *(*v15 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v22 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v20(v242, v21);

    if ((v242[0] & 1) == 0)
    {
LABEL_14:

      v23 = v0;
      goto LABEL_37;
    }
  }

  else
  {

    if (!v18)
    {
      goto LABEL_14;
    }
  }

  v24 = *(v16 + 64);
  v25 = *(v16 + 72);
  v27 = *(v16 + 80);
  v26 = *(v16 + 88);
  v28 = *(v16 + 2208);

  if (v22)
  {
    v27(v242, v28);

    v23 = v0;
    if ((v242[0] & 1) == 0)
    {
LABEL_18:

      goto LABEL_37;
    }
  }

  else
  {

    v23 = v0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (byte_2813C49C1 == 1)
  {
    v29 = v23[22];
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v23[57], qword_2813C4990);
  }

  v30 = *(v23[58] + 16);
  v30(v23[60], v29, v23[57]);
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(v23[58] + 32))(v23[59], v23[60], v23[57]);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v32 = v23[59];
    v31 = v23[60];
    v34 = v23[57];
    v33 = v23[58];
    v35 = __swift_project_value_buffer(v34, qword_2813C4990);
    v30(v32, v35, v34);
    (*(v33 + 8))(v31, v34);
  }

  v36 = v23[59];
  v37 = v23[21];
  v38 = v23[19];
  sub_2280D399C(v37, (v23 + 2));
  sub_2280D399C(v37, (v23 + 7));

  v39 = sub_22813880C();
  v40 = sub_2281396CC();

  v41 = os_log_type_enabled(v39, v40);
  v43 = v23[58];
  v42 = v23[59];
  v44 = v23[57];
  if (v41)
  {
    v210 = v23[18];
    v214 = v23[19];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v242[0] = v46;
    *v45 = 136446979;
    v224 = v44;
    v47 = v23[5];
    v48 = v235[6];
    __swift_project_boxed_opaque_existential_1(v235 + 2, v47);
    v218 = v42;
    v49 = (*(v48 + 16))(v47, v48);
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v235 + 2);
    v52 = sub_227FCC340(v49, v51, v242);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2081;
    *(v45 + 14) = sub_227FCC340(v210, v214, v242);
    *(v45 + 22) = 2082;
    v53 = v235[10];
    v54 = v235[11];
    __swift_project_boxed_opaque_existential_1(v235 + 7, v53);
    v55 = *(v54 + 16);
    v56 = v54;
    v23 = v235;
    v57 = v55(v53, v56);
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v235 + 7);
    v60 = sub_227FCC340(v57, v59, v242);

    *(v45 + 24) = v60;
    *(v45 + 32) = 2081;
    *(v45 + 34) = sub_227FCC340(v207, v239, v242);
    _os_log_impl(&dword_227FC3000, v39, v40, "\n--------------------------------------------------------------------------------\n# Language Gating Raw Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Language Gating Processed Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v45, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v46, -1, -1);
    MEMORY[0x22AAB28A0](v45, -1, -1);

    (*(v43 + 8))(v218, v224);
  }

  else
  {

    (*(v43 + 8))(v42, v44);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v23 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v23 + 7);
  }

LABEL_37:
  v61 = v23[56];
  v62 = v23[52];
  v63 = v23[53];
  v65 = v23[50];
  v64 = v23[51];
  v66 = v23[43];
  v211 = v23[39];
  v215 = v23[47];
  v225 = v23[38];
  v67 = v23[21];
  v219 = v23[20];
  v69 = v67[3];
  v68 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v69);
  (*(*(v68 + 8) + 8))(v69);
  (*(v62 + 104))(v63, *MEMORY[0x277D0E2D8], v64);
  sub_22813792C();
  sub_22813796C();
  v70 = v67[3];
  v71 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v70);
  v72 = (*(*(v71 + 8) + 8))(v70);
  sub_227FEC314(v72, v73, v215);

  sub_2280D43C4(v219, v66, &qword_27D81E778, &qword_22813BC80);
  v74 = *(v211 + 48);
  if (v74(v66, 1, v225) == 1)
  {
    v75 = v23[47];
    v76 = v23[42];
    sub_2280D44A8(v23[43], &qword_27D81E778, &qword_22813BC80);
    sub_22813798C();
    v81 = v23[44];
    v82 = v23[42];

    sub_2280D4438(v82, v81);
  }

  else
  {
    v77 = v23[43];
    v78 = v23[44];
    v79 = v23[38];
    v80 = v23[39];

    (*(v80 + 32))(v78, v77, v79);
    (*(v80 + 56))(v78, 0, 1, v79);
  }

  v83 = v23[41];
  v84 = v23[38];
  sub_2280D43C4(v23[44], v83, &qword_27D81E778, &qword_22813BC80);
  if (v74(v83, 1, v84) != 1)
  {
    v89 = v23[50];
    v90 = v23[40];
    v92 = v23[21];
    v91 = v23[22];
    v93 = v23[17];
    (*(v23[39] + 32))(v90, v23[41], v23[38]);
    sub_2280C9240(v90, v89, v92, &unk_283B5F380, 17, sub_2280D4810, sub_227FF96D4, v93, sub_227FDB3CC, &type metadata for SummarizationError, sub_2280D4508);
    v197 = v23[64];
    v198 = v23[63];
    v199 = v23[60];
    v200 = v23[59];
    v130 = v23[55];
    v129 = v23[56];
    v131 = v23[53];
    v196 = v23[54];
    v133 = v23[49];
    v132 = v23[50];
    v135 = v23[47];
    v134 = v23[48];
    v136 = v23;
    v137 = v23[46];
    v139 = v136[44];
    v138 = v136[45];
    v203 = v136[43];
    v205 = v136[42];
    v201 = v136[40];
    v140 = v136[38];
    v208 = v136[41];
    v212 = v136[37];
    v216 = v136[36];
    v221 = v136[35];
    v228 = v136[34];
    v233 = v136[31];
    v236 = v136[28];
    v241 = v136[25];
    (*(v136[39] + 8))();
    sub_2280D44A8(v139, &qword_27D81E778, &qword_22813BC80);
    (*(v137 + 8))(v135, v138);
    (*(v133 + 8))(v132, v134);
    (*(v130 + 8))(v129, v196);

    v141 = v136[1];
    goto LABEL_62;
  }

  sub_2280D44A8(v23[41], &qword_27D81E778, &qword_22813BC80);
  v85 = swift_allocObject();
  *(v85 + 16) = 23;
  *(v85 + 24) = 0;
  *(v85 + 32) = 0;
  v86 = sub_227FF96D4(0, 0xD000000000000072, 0x8000000228147EF0, 54, sub_2280D480C);
  *(v23 + 112) = 23;
  v23[15] = v86;
  sub_227FDB3CC();
  v87 = sub_22813999C();
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    v88 = swift_allocError();
    *v94 = 23;
    *(v94 + 8) = v86;
  }

  v95 = v23[55];
  v240 = v23[56];
  v96 = v23[49];
  v226 = v23[50];
  v231 = v23[54];
  v98 = v23[47];
  v97 = v23[48];
  v100 = v23[45];
  v99 = v23[46];
  v101 = v23;
  v102 = v23[44];
  swift_willThrow();
  v103 = v88;
  sub_2280D44A8(v102, &qword_27D81E778, &qword_22813BC80);
  (*(v99 + 8))(v98, v100);
  (*(v96 + 8))(v226, v97);
  (*(v95 + 8))(v240, v231);
  v104 = v101[37];
  v105 = v101[32];
  v101[16] = v103;
  v106 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v107 = v101[36];
    v108 = v101[37];
    v109 = v101[35];
    v110 = v101[32];
    v111 = v101[33];
    v112 = v101[22];

    v113 = *(v111 + 32);
    v113(v107, v108, v110);
    v114 = *(v111 + 16);
    v114(v109, v107, v110);
    v115 = sub_22813880C();
    v116 = sub_2281396DC();
    v117 = os_log_type_enabled(v115, v116);
    v118 = v101[35];
    v232 = v114;
    if (v117)
    {
      v119 = v101[34];
      v120 = v114;
      v121 = v235[32];
      v122 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      v242[0] = v220;
      *v122 = 136446210;
      v120(v119, v118, v121);
      sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v123 = v235;
      v124 = sub_22813999C();
      v125 = v235[34];
      if (v124)
      {
        v126 = v124;
        (*(v235[33] + 8))(v235[34], v235[32]);
      }

      else
      {
        v142 = v235[32];
        v126 = swift_allocError();
        v123 = v235;
        v113(v143, v125, v142);
      }

      v144 = v123[35];
      v146 = v123[32];
      v145 = v123[33];
      v147 = sub_228136E1C();

      v148 = NSError.loggingDescription.getter();
      v150 = v149;

      v101 = v235;
      v227 = *(v145 + 8);
      v227(v144, v146);
      v151 = sub_227FCC340(v148, v150, v242);

      *(v122 + 4) = v151;
      _os_log_impl(&dword_227FC3000, v115, v116, "GMS language sanitizer rejected the input with error message: %{public}s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_11(v220);
      MEMORY[0x22AAB28A0](v220, -1, -1);
      MEMORY[0x22AAB28A0](v122, -1, -1);

      v114 = v232;
    }

    else
    {
      v127 = v101[32];
      v128 = v101[33];

      v227 = *(v128 + 8);
      v227(v118, v127);
    }

    v153 = v101 + 28;
    v152 = v101[28];
    v154 = v101[36];
    v156 = v101 + 27;
    v155 = v101[27];
    v158 = v101 + 26;
    v157 = v101[26];
    sub_2281386EC();
    if ((*(v155 + 88))(v152, v157) == *MEMORY[0x277D0DB78])
    {
      v153 = v101 + 25;
      v159 = v101[25];
      v161 = v101[30];
      v160 = v101[31];
      v163 = v101[28];
      v162 = v101[29];
      v156 = v101 + 24;
      v164 = v101[24];
      v158 = v101 + 23;
      v237 = v101[23];
      (*(v101[27] + 96))(v163, v101[26]);
      (*(v161 + 32))(v160, v163, v162);
      sub_2281386BC();
      if ((*(v164 + 88))(v159, v237) == *MEMORY[0x277D0DAB0])
      {
        v165 = v101[36];
        v166 = v101[32];
        (*(v101[24] + 8))(v101[25], v101[23]);
        sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
        v167 = swift_allocError();
        v232(v168, v165, v166);
        v169 = swift_allocObject();
        *(v169 + 16) = 17;
        *(v169 + 24) = 0;
        *(v169 + 32) = 0;
        v170 = sub_227FF96D4(v167, 0xD000000000000072, 0x8000000228147EF0, 73, sub_2280D442C);

        *(v101 + 96) = 17;
        v101[13] = v170;
        sub_227FDB3CC();
        if (sub_22813999C())
        {
        }

        else
        {
          swift_allocError();
          *v178 = 17;
          *(v178 + 8) = v170;
        }

        v179 = v101[36];
        v180 = v101[32];
        v181 = v101[33];
        v183 = v101[30];
        v182 = v101[31];
        v184 = v101[29];
        swift_willThrow();
        (*(v183 + 8))(v182, v184);
        v176 = v179;
        v177 = v180;
        goto LABEL_60;
      }

      (*(v101[30] + 8))(v101[31], v101[29]);
      v114 = v232;
    }

    v171 = *v156;
    v172 = v101[36];
    v174 = v101[32];
    v173 = v101[33];
    (*(v171 + 8))(*v153, *v158);
    sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    swift_allocError();
    v114(v175, v172, v174);
    swift_willThrow();
    v176 = v172;
    v177 = v174;
LABEL_60:
    v227(v176, v177);
  }

  v186 = v101[63];
  v185 = v101[64];
  v188 = v101[59];
  v187 = v101[60];
  v189 = v101[56];
  v190 = v101[53];
  v191 = v101[50];
  v192 = v101[47];
  v193 = v101[43];
  v194 = v101[44];
  v202 = v101[42];
  v204 = v101[41];
  v206 = v101[40];
  v209 = v101[37];
  v213 = v101[36];
  v217 = v101[35];
  v222 = v101[34];
  v229 = v101[31];
  v234 = v101[28];
  v238 = v101[25];

  v141 = v101[1];
LABEL_62:

  return v141();
}

uint64_t sub_2280C76F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a3;
  v7[20] = a4;
  v7[17] = a1;
  v7[18] = a2;
  v8 = sub_2281386AC();
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = sub_2281386DC();
  v7[26] = v11;
  v12 = *(v11 - 8);
  v7[27] = v12;
  v13 = *(v12 + 64) + 15;
  v7[28] = swift_task_alloc();
  v14 = sub_2281386CC();
  v7[29] = v14;
  v15 = *(v14 - 8);
  v7[30] = v15;
  v16 = *(v15 + 64) + 15;
  v7[31] = swift_task_alloc();
  v17 = sub_2281386FC();
  v7[32] = v17;
  v18 = *(v17 - 8);
  v7[33] = v18;
  v19 = *(v18 + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v20 = sub_22813713C();
  v7[38] = v20;
  v21 = *(v20 - 8);
  v7[39] = v21;
  v22 = *(v21 + 64) + 15;
  v7[40] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v24 = sub_2281379AC();
  v7[45] = v24;
  v25 = *(v24 - 8);
  v7[46] = v25;
  v26 = *(v25 + 64) + 15;
  v7[47] = swift_task_alloc();
  v27 = sub_22813797C();
  v7[48] = v27;
  v28 = *(v27 - 8);
  v7[49] = v28;
  v29 = *(v28 + 64) + 15;
  v7[50] = swift_task_alloc();
  v30 = sub_22813795C();
  v7[51] = v30;
  v31 = *(v30 - 8);
  v7[52] = v31;
  v32 = *(v31 + 64) + 15;
  v7[53] = swift_task_alloc();
  v33 = sub_22813794C();
  v7[54] = v33;
  v34 = *(v33 - 8);
  v7[55] = v34;
  v35 = *(v34 + 64) + 15;
  v7[56] = swift_task_alloc();
  v36 = sub_22813882C();
  v7[57] = v36;
  v37 = *(v36 - 8);
  v7[58] = v37;
  v38 = *(v37 + 64) + 15;
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v39 = sub_228136CDC();
  v7[61] = v39;
  v40 = *(v39 - 8);
  v7[62] = v40;
  v41 = *(v40 + 64) + 15;
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280C7BF0, 0, 0);
}

uint64_t sub_2280C7BF0()
{
  v243 = v0;
  v1 = sub_2280A9734(0, *(v0 + 144), *(v0 + 152));
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v230 = v1;
  v235 = v0;
  v223 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFB0, &unk_2281402A0);
  v7 = *(v4 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject() + v8;
  sub_228136C6C();
  sub_228136C7C();
  sub_228136C9C();
  sub_228136CCC();
  v10 = *(v4 + 16);
  v10(v3, v9, v5);
  sub_228136CBC();
  v11 = *(v4 + 8);
  v11(v3, v5);
  v10(v3, v9 + v7, v5);
  sub_228136CBC();
  v11(v3, v5);
  v10(v3, v9 + 2 * v7, v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_228136CBC();
  v11(v3, v5);
  v12 = swift_task_alloc();
  *(v12 + 16) = v2;
  v207 = sub_2280D34CC(sub_2280D47EC, v12, v230, v223);
  v239 = v13;

  v11(v2, v5);
  v14 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v15 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v15 = &qword_2813C76F8;
  }

  v16 = *v15;
  v17 = *(*v15 + 24);
  v18 = *(*v15 + 32);
  v20 = *(*v15 + 40);
  v19 = *(*v15 + 48);
  v21 = *(*v15 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v22 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v20(v242, v21);

    if ((v242[0] & 1) == 0)
    {
LABEL_14:

      v23 = v0;
      goto LABEL_37;
    }
  }

  else
  {

    if (!v18)
    {
      goto LABEL_14;
    }
  }

  v24 = *(v16 + 64);
  v25 = *(v16 + 72);
  v27 = *(v16 + 80);
  v26 = *(v16 + 88);
  v28 = *(v16 + 2208);

  if (v22)
  {
    v27(v242, v28);

    v23 = v0;
    if ((v242[0] & 1) == 0)
    {
LABEL_18:

      goto LABEL_37;
    }
  }

  else
  {

    v23 = v0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (byte_2813C49C1 == 1)
  {
    v29 = v23[22];
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v23[57], qword_2813C4990);
  }

  v30 = *(v23[58] + 16);
  v30(v23[60], v29, v23[57]);
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(v23[58] + 32))(v23[59], v23[60], v23[57]);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v32 = v23[59];
    v31 = v23[60];
    v34 = v23[57];
    v33 = v23[58];
    v35 = __swift_project_value_buffer(v34, qword_2813C4990);
    v30(v32, v35, v34);
    (*(v33 + 8))(v31, v34);
  }

  v36 = v23[59];
  v37 = v23[21];
  v38 = v23[19];
  sub_2280D399C(v37, (v23 + 2));
  sub_2280D399C(v37, (v23 + 7));

  v39 = sub_22813880C();
  v40 = sub_2281396CC();

  v41 = os_log_type_enabled(v39, v40);
  v43 = v23[58];
  v42 = v23[59];
  v44 = v23[57];
  if (v41)
  {
    v210 = v23[18];
    v214 = v23[19];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v242[0] = v46;
    *v45 = 136446979;
    v224 = v44;
    v47 = v23[5];
    v48 = v235[6];
    __swift_project_boxed_opaque_existential_1(v235 + 2, v47);
    v218 = v42;
    v49 = (*(v48 + 16))(v47, v48);
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v235 + 2);
    v52 = sub_227FCC340(v49, v51, v242);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2081;
    *(v45 + 14) = sub_227FCC340(v210, v214, v242);
    *(v45 + 22) = 2082;
    v53 = v235[10];
    v54 = v235[11];
    __swift_project_boxed_opaque_existential_1(v235 + 7, v53);
    v55 = *(v54 + 16);
    v56 = v54;
    v23 = v235;
    v57 = v55(v53, v56);
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v235 + 7);
    v60 = sub_227FCC340(v57, v59, v242);

    *(v45 + 24) = v60;
    *(v45 + 32) = 2081;
    *(v45 + 34) = sub_227FCC340(v207, v239, v242);
    _os_log_impl(&dword_227FC3000, v39, v40, "\n--------------------------------------------------------------------------------\n# Language Gating Raw Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Language Gating Processed Input for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v45, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v46, -1, -1);
    MEMORY[0x22AAB28A0](v45, -1, -1);

    (*(v43 + 8))(v218, v224);
  }

  else
  {

    (*(v43 + 8))(v42, v44);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v23 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v23 + 7);
  }

LABEL_37:
  v61 = v23[56];
  v62 = v23[52];
  v63 = v23[53];
  v65 = v23[50];
  v64 = v23[51];
  v66 = v23[43];
  v211 = v23[39];
  v215 = v23[47];
  v225 = v23[38];
  v67 = v23[21];
  v219 = v23[20];
  v69 = v67[3];
  v68 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v69);
  (*(*(v68 + 8) + 8))(v69);
  (*(v62 + 104))(v63, *MEMORY[0x277D0E2D8], v64);
  sub_22813792C();
  sub_22813796C();
  v70 = v67[3];
  v71 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v70);
  v72 = (*(*(v71 + 8) + 8))(v70);
  sub_227FEC314(v72, v73, v215);

  sub_2280D43C4(v219, v66, &qword_27D81E778, &qword_22813BC80);
  v74 = *(v211 + 48);
  if (v74(v66, 1, v225) == 1)
  {
    v75 = v23[47];
    v76 = v23[42];
    sub_2280D44A8(v23[43], &qword_27D81E778, &qword_22813BC80);
    sub_22813798C();
    v81 = v23[44];
    v82 = v23[42];

    sub_2280D4438(v82, v81);
  }

  else
  {
    v77 = v23[43];
    v78 = v23[44];
    v79 = v23[38];
    v80 = v23[39];

    (*(v80 + 32))(v78, v77, v79);
    (*(v80 + 56))(v78, 0, 1, v79);
  }

  v83 = v23[41];
  v84 = v23[38];
  sub_2280D43C4(v23[44], v83, &qword_27D81E778, &qword_22813BC80);
  if (v74(v83, 1, v84) != 1)
  {
    v89 = v23[50];
    v90 = v23[40];
    v92 = v23[21];
    v91 = v23[22];
    v93 = v23[17];
    (*(v23[39] + 32))(v90, v23[41], v23[38]);
    sub_2280C9240(v90, v89, v92, &unk_283B5F3F8, 6, sub_2280D481C, sub_227FF9AA4, v93, sub_227FE7384, &type metadata for ClassificationError, sub_2280D47CC);
    v197 = v23[64];
    v198 = v23[63];
    v199 = v23[60];
    v200 = v23[59];
    v130 = v23[55];
    v129 = v23[56];
    v131 = v23[53];
    v196 = v23[54];
    v133 = v23[49];
    v132 = v23[50];
    v135 = v23[47];
    v134 = v23[48];
    v136 = v23;
    v137 = v23[46];
    v139 = v136[44];
    v138 = v136[45];
    v203 = v136[43];
    v205 = v136[42];
    v201 = v136[40];
    v140 = v136[38];
    v208 = v136[41];
    v212 = v136[37];
    v216 = v136[36];
    v221 = v136[35];
    v228 = v136[34];
    v233 = v136[31];
    v236 = v136[28];
    v241 = v136[25];
    (*(v136[39] + 8))();
    sub_2280D44A8(v139, &qword_27D81E778, &qword_22813BC80);
    (*(v137 + 8))(v135, v138);
    (*(v133 + 8))(v132, v134);
    (*(v130 + 8))(v129, v196);

    v141 = v136[1];
    goto LABEL_62;
  }

  sub_2280D44A8(v23[41], &qword_27D81E778, &qword_22813BC80);
  v85 = swift_allocObject();
  *(v85 + 16) = 7;
  *(v85 + 24) = 0;
  *(v85 + 32) = 0;
  v86 = sub_227FF9AA4(0, 0xD000000000000072, 0x8000000228147EF0, 54, sub_2280D4818);
  *(v23 + 112) = 7;
  v23[15] = v86;
  sub_227FE7384();
  v87 = sub_22813999C();
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    v88 = swift_allocError();
    *v94 = 7;
    *(v94 + 8) = v86;
  }

  v95 = v23[55];
  v240 = v23[56];
  v96 = v23[49];
  v226 = v23[50];
  v231 = v23[54];
  v98 = v23[47];
  v97 = v23[48];
  v100 = v23[45];
  v99 = v23[46];
  v101 = v23;
  v102 = v23[44];
  swift_willThrow();
  v103 = v88;
  sub_2280D44A8(v102, &qword_27D81E778, &qword_22813BC80);
  (*(v99 + 8))(v98, v100);
  (*(v96 + 8))(v226, v97);
  (*(v95 + 8))(v240, v231);
  v104 = v101[37];
  v105 = v101[32];
  v101[16] = v103;
  v106 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v107 = v101[36];
    v108 = v101[37];
    v109 = v101[35];
    v110 = v101[32];
    v111 = v101[33];
    v112 = v101[22];

    v113 = *(v111 + 32);
    v113(v107, v108, v110);
    v114 = *(v111 + 16);
    v114(v109, v107, v110);
    v115 = sub_22813880C();
    v116 = sub_2281396DC();
    v117 = os_log_type_enabled(v115, v116);
    v118 = v101[35];
    v232 = v114;
    if (v117)
    {
      v119 = v101[34];
      v120 = v114;
      v121 = v235[32];
      v122 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      v242[0] = v220;
      *v122 = 136446210;
      v120(v119, v118, v121);
      sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v123 = v235;
      v124 = sub_22813999C();
      v125 = v235[34];
      if (v124)
      {
        v126 = v124;
        (*(v235[33] + 8))(v235[34], v235[32]);
      }

      else
      {
        v142 = v235[32];
        v126 = swift_allocError();
        v123 = v235;
        v113(v143, v125, v142);
      }

      v144 = v123[35];
      v146 = v123[32];
      v145 = v123[33];
      v147 = sub_228136E1C();

      v148 = NSError.loggingDescription.getter();
      v150 = v149;

      v101 = v235;
      v227 = *(v145 + 8);
      v227(v144, v146);
      v151 = sub_227FCC340(v148, v150, v242);

      *(v122 + 4) = v151;
      _os_log_impl(&dword_227FC3000, v115, v116, "GMS language sanitizer rejected the input with error message: %{public}s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_11(v220);
      MEMORY[0x22AAB28A0](v220, -1, -1);
      MEMORY[0x22AAB28A0](v122, -1, -1);

      v114 = v232;
    }

    else
    {
      v127 = v101[32];
      v128 = v101[33];

      v227 = *(v128 + 8);
      v227(v118, v127);
    }

    v153 = v101 + 28;
    v152 = v101[28];
    v154 = v101[36];
    v156 = v101 + 27;
    v155 = v101[27];
    v158 = v101 + 26;
    v157 = v101[26];
    sub_2281386EC();
    if ((*(v155 + 88))(v152, v157) == *MEMORY[0x277D0DB78])
    {
      v153 = v101 + 25;
      v159 = v101[25];
      v161 = v101[30];
      v160 = v101[31];
      v163 = v101[28];
      v162 = v101[29];
      v156 = v101 + 24;
      v164 = v101[24];
      v158 = v101 + 23;
      v237 = v101[23];
      (*(v101[27] + 96))(v163, v101[26]);
      (*(v161 + 32))(v160, v163, v162);
      sub_2281386BC();
      if ((*(v164 + 88))(v159, v237) == *MEMORY[0x277D0DAB0])
      {
        v165 = v101[36];
        v166 = v101[32];
        (*(v101[24] + 8))(v101[25], v101[23]);
        sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
        v167 = swift_allocError();
        v232(v168, v165, v166);
        v169 = swift_allocObject();
        *(v169 + 16) = 6;
        *(v169 + 24) = 0;
        *(v169 + 32) = 0;
        v170 = sub_227FF9AA4(v167, 0xD000000000000072, 0x8000000228147EF0, 73, sub_2280D4814);

        *(v101 + 96) = 6;
        v101[13] = v170;
        sub_227FE7384();
        if (sub_22813999C())
        {
        }

        else
        {
          swift_allocError();
          *v178 = 6;
          *(v178 + 8) = v170;
        }

        v179 = v101[36];
        v180 = v101[32];
        v181 = v101[33];
        v183 = v101[30];
        v182 = v101[31];
        v184 = v101[29];
        swift_willThrow();
        (*(v183 + 8))(v182, v184);
        v176 = v179;
        v177 = v180;
        goto LABEL_60;
      }

      (*(v101[30] + 8))(v101[31], v101[29]);
      v114 = v232;
    }

    v171 = *v156;
    v172 = v101[36];
    v174 = v101[32];
    v173 = v101[33];
    (*(v171 + 8))(*v153, *v158);
    sub_2280D4590(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    swift_allocError();
    v114(v175, v172, v174);
    swift_willThrow();
    v176 = v172;
    v177 = v174;
LABEL_60:
    v227(v176, v177);
  }

  v186 = v101[63];
  v185 = v101[64];
  v188 = v101[59];
  v187 = v101[60];
  v189 = v101[56];
  v190 = v101[53];
  v191 = v101[50];
  v192 = v101[47];
  v193 = v101[43];
  v194 = v101[44];
  v202 = v101[42];
  v204 = v101[41];
  v206 = v101[40];
  v209 = v101[37];
  v213 = v101[36];
  v217 = v101[35];
  v222 = v101[34];
  v229 = v101[31];
  v234 = v101[28];
  v238 = v101[25];

  v141 = v101[1];
LABEL_62:

  return v141();
}

uint64_t sub_2280C9240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t (*a7)(void, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a8@<X8>, void (*a9)(void), unint64_t a10, uint64_t (*a11)(char *))
{
  v227 = a7;
  v226 = a6;
  v228 = a5;
  v225 = a4;
  v218 = a2;
  v236 = a1;
  v217 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v216 = v214 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v219 = v214 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v25 = v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v242 = v214 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v215 = v214 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v232 = v214 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v231 = v214 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8, v39);
  v244 = v214 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v249 = v214 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v214[1] = v214 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v220 = v214 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v235 = v214 - v53;
  MEMORY[0x28223BE20](v52, v54);
  v238 = v214 - v55;
  v56 = sub_22813713C();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  v60 = MEMORY[0x28223BE20](v56, v59);
  v230 = v214 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v214[0] = v214 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v224 = v214 - v67;
  v69 = MEMORY[0x28223BE20](v66, v68);
  v243 = v214 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v74 = v214 - v73;
  MEMORY[0x28223BE20](v72, v75);
  v248 = v214 - v76;
  v246 = sub_228102F0C();
  v77 = a3[3];
  v78 = a3[4];
  v223 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v77);
  v79 = sub_2280A0F6C(v77, v78);
  v245 = v56;
  v239 = v57;
  if ((v79 & 1) == 0)
  {
    if (qword_2813C86B0 != -1)
    {
      swift_once();
    }

    v80 = off_2813C86B8;
    v273[0] = v246;

    v121 = v80;
    goto LABEL_51;
  }

  v241 = v25;
  if (qword_2813C86B0 != -1)
  {
    swift_once();
  }

  v80 = off_2813C86B8;
  v81 = v246;
  v234 = *(off_2813C86B8 + 2);
  if (!v234)
  {
    v229 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v82 = 0;
  v253 = v57 + 16;
  v254 = (v57 + 8);
  v221 = (v57 + 32);
  v229 = MEMORY[0x277D84F90];
  v240 = off_2813C86B8;
  v247 = v74;
LABEL_6:
  if (v82 >= *(v80 + 2))
  {
    goto LABEL_100;
  }

  v83 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v84 = *(v57 + 72);
  v237 = v82;
  v252 = v84;
  v251 = *(v57 + 16);
  v251(v248, &v80[v83 + v84 * v82], v56);
  v250 = *(v81 + 16);
  if (!v250)
  {
    isa = v254->isa;
LABEL_37:
    (isa)(v248, v56);
    v80 = v240;
    v57 = v239;
    goto LABEL_38;
  }

  v85 = 0;
  v233 = v83;
  v86 = v81 + v83;
  while (v85 < *(v81 + 16))
  {
    v256 = v86;
    (v251)(v74);
    v89 = v249;
    sub_22813710C();
    v90 = sub_22813701C();
    v91 = *(v90 - 8);
    v92 = *(v91 + 48);
    if (v92(v89, 1, v90) == 1)
    {
      v87 = v89;
      isa = v254->isa;
      (v254->isa)(v74, v56);
      sub_2280D44A8(v87, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_10;
    }

    v93 = sub_228136FFC();
    v255 = v94;
    v95 = v89;
    v96 = *(v91 + 8);
    v96(v95, v90);
    v97 = v244;
    sub_22813710C();
    if (v92(v97, 1, v90) == 1)
    {
      isa = v254->isa;
      v74 = v247;
      v56 = v245;
      (v254->isa)(v247, v245);

      sub_2280D44A8(v97, &qword_27D81E328, &qword_2281402C0);
      goto LABEL_33;
    }

    v98 = sub_228136FFC();
    v100 = v99;
    v96(v97, v90);
    if (v93 == v98 && v255 == v100)
    {
    }

    else
    {
      v101 = sub_2281399BC();

      v74 = v247;
      if ((v101 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v102 = v242;
    sub_22813712C();
    v103 = sub_2281370BC();
    v104 = *(v103 - 8);
    v105 = *(v104 + 48);
    if (v105(v102, 1, v103) == 1)
    {
      sub_2280D44A8(v102, &qword_27D81E320, &unk_22813A7D0);
      v106 = 0;
      v107 = 0;
    }

    else
    {
      v106 = sub_228136FFC();
      v107 = v108;
      (*(v104 + 8))(v102, v103);
    }

    v109 = v241;
    sub_22813712C();
    if (v105(v109, 1, v103) == 1)
    {
      sub_2280D44A8(v109, &qword_27D81E320, &unk_22813A7D0);
      v74 = v247;
      if (v107)
      {
        goto LABEL_31;
      }

      v110 = 0;
      goto LABEL_34;
    }

    v111 = sub_228136FFC();
    v110 = v112;
    (*(v104 + 8))(v109, v103);
    v74 = v247;
    if (v107)
    {
      if (!v110)
      {
LABEL_31:

LABEL_32:
        isa = v254->isa;
        v56 = v245;
        (v254->isa)(v74, v245);
LABEL_33:
        v81 = v246;
        goto LABEL_10;
      }

      if (v106 != v111 || v107 != v110)
      {
        v113 = sub_2281399BC();

        isa = v254->isa;
        v56 = v245;
        (v254->isa)(v74, v245);
        v81 = v246;
        if (v113)
        {
          goto LABEL_41;
        }

        goto LABEL_10;
      }

      v56 = v245;
      (v254->isa)(v74, v245);
LABEL_41:
      v114 = *v221;
      (*v221)(v230, v248, v56);
      v115 = v229;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v115;
      v273[0] = v115;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_228043B14(0, *(v115 + 16) + 1, 1);
        v117 = v273[0];
      }

      v80 = v240;
      v57 = v239;
      v118 = v233;
      v120 = *(v117 + 16);
      v119 = *(v117 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_228043B14(v119 > 1, v120 + 1, 1);
        v117 = v273[0];
      }

      *(v117 + 16) = v120 + 1;
      v229 = v117;
      v114((v117 + v118 + v120 * v252), v230, v56);
      v81 = v246;
LABEL_38:
      v82 = v237 + 1;
      if (v237 + 1 == v234)
      {
LABEL_50:
        v273[0] = v81;

        v121 = v229;
LABEL_51:
        sub_227FED2DC(v121);
        v251 = v273[0];
        if (qword_2813C86B0 != -1)
        {
          goto LABEL_101;
        }

LABEL_52:
        v256 = *(v80 + 2);
        v240 = v80;
        if (!v256)
        {
LABEL_80:

          goto LABEL_81;
        }

        v122 = 0;
        v254 = (v57 + 16);
        v250 = a11;
        v255 = (v57 + 8);
        while (1)
        {
          if (v122 >= *(v80 + 2))
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            swift_once();
            goto LABEL_52;
          }

          (*(v57 + 16))(v243, &v80[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v122], v56);
          v123 = v238;
          sub_22813710C();
          v124 = sub_22813701C();
          v125 = *(v124 - 8);
          v126 = *(v125 + 48);
          if (v126(v123, 1, v124) == 1)
          {
            goto LABEL_58;
          }

          v127 = v238;
          v128 = sub_228136FFC();
          v253 = v129;
          v130 = *(v125 + 8);
          v130(v127, v124);
          v123 = v235;
          sub_22813710C();
          if (v126(v123, 1, v124) == 1)
          {
            break;
          }

          v131 = sub_228136FFC();
          v133 = v132;
          v130(v123, v124);
          if (v128 == v131 && v253 == v133)
          {

            v56 = v245;
            v80 = v240;
          }

          else
          {
            v134 = sub_2281399BC();

            v56 = v245;
            v80 = v240;
            if ((v134 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

          v135 = v231;
          sub_22813712C();
          v74 = sub_2281370BC();
          v136 = *(v74 - 1);
          v137 = *(v136 + 48);
          v138 = v137(v135, 1, v74);
          v253 = v136;
          if (v138 == 1)
          {
            sub_2280D44A8(v135, &qword_27D81E320, &unk_22813A7D0);
            v252 = 0;
            v139 = 0;
          }

          else
          {
            v252 = sub_228136FFC();
            v139 = v140;
            (*(v136 + 8))(v135, v74);
          }

          v141 = v232;
          sub_22813712C();
          if (v137(v141, 1, v74) == 1)
          {
            sub_2280D44A8(v141, &qword_27D81E320, &unk_22813A7D0);
            if (!v139)
            {
              goto LABEL_95;
            }

            goto LABEL_79;
          }

          v142 = sub_228136FFC();
          v144 = v143;
          (*(v253 + 8))(v141, v74);
          if (!v139)
          {
            if (!v144)
            {
              goto LABEL_95;
            }

LABEL_79:

LABEL_59:
            (*v255)(v243, v56);
            goto LABEL_60;
          }

          if (!v144)
          {
            goto LABEL_79;
          }

          if (v252 == v142 && v139 == v144)
          {
            goto LABEL_94;
          }

          v145 = sub_2281399BC();

          v146 = *v255;
          v147 = (*v255)(v243, v56);
          if (v145)
          {
            goto LABEL_96;
          }

LABEL_60:
          ++v122;
          v57 = v239;
          if (v256 == v122)
          {
            goto LABEL_80;
          }
        }

        v56 = v245;
LABEL_58:
        sub_2280D44A8(v123, &qword_27D81E328, &qword_2281402C0);
        v80 = v240;
        goto LABEL_59;
      }

      goto LABEL_6;
    }

LABEL_34:
    isa = v254->isa;
    v56 = v245;
    (v254->isa)(v74, v245);
    v81 = v246;
    if (!v110)
    {
      goto LABEL_41;
    }

LABEL_10:
    v85 = (v85 + 1);
    v86 = v256 + v252;
    if (v250 == v85)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_94:

LABEL_95:
  v146 = *v255;
  v147 = (*v255)(v243, v56);
LABEL_96:
  v57 = v239;
  MEMORY[0x28223BE20](v147, v148);
  v208 = v236;
  v214[-2] = v209;
  v214[-1] = v208;
  v210 = v219;
  v211 = v222;
  sub_2280CB000(v250, v251, v219);
  v222 = v211;

  v212 = v210;
  if ((*(v57 + 48))(v210, 1, v56) == 1)
  {
    sub_2280D44A8(v210, &qword_27D81E778, &qword_22813BC80);
LABEL_81:
    v149 = a9;
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v150 = sub_22813882C();
    __swift_project_value_buffer(v150, qword_2813C8A20);
    v151 = v223;
    sub_2280D399C(v223, v273);
    sub_2280D399C(v151, &v270);
    sub_2280D399C(v151, &v267);
    sub_2280D399C(v151, &v264);
    v152 = v224;
    (*(v57 + 16))(v224, v236, v56);
    sub_2280D399C(v151, &v261);

    v153 = sub_22813880C();
    v154 = sub_2281396DC();

    if (os_log_type_enabled(v153, v154))
    {
      LODWORD(v253) = v154;
      v254 = v153;
      v255 = a9;
      v256 = a10;
      v155 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v276 = v252;
      *v155 = 136316930;
      v156 = v274;
      v157 = v275;
      __swift_project_boxed_opaque_existential_1(v273, v274);
      v158 = (*(v157 + 16))(v156, v157);
      v160 = v159;
      __swift_destroy_boxed_opaque_existential_1Tm_11(v273);
      v161 = sub_227FCC340(v158, v160, &v276);

      *(v155 + 4) = v161;
      *(v155 + 12) = 2080;
      v163 = v271;
      v162 = v272;
      __swift_project_boxed_opaque_existential_1(&v270, v271);
      v164 = (*(*(v162 + 8) + 8))(v163);
      v166 = v165;
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v270);
      v167 = sub_227FCC340(v164, v166, &v276);

      *(v155 + 14) = v167;
      *(v155 + 22) = 2080;
      v169 = v268;
      v168 = v269;
      __swift_project_boxed_opaque_existential_1(&v267, v268);
      v170 = (*(*(v168 + 8) + 16))(v169);
      v172 = v171;
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v267);
      v173 = sub_227FCC340(v170, v172, &v276);

      *(v155 + 24) = v173;
      *(v155 + 32) = 1024;
      v175 = v265;
      v174 = v266;
      __swift_project_boxed_opaque_existential_1(&v264, v265);
      LODWORD(v173) = (*(*(v174 + 8) + 24))(v175);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v264);
      *(v155 + 34) = v173;
      *(v155 + 38) = 2082;
      v176 = v220;
      sub_22813710C();
      v177 = sub_22813701C();
      v178 = *(v177 - 8);
      if ((*(v178 + 48))(v176, 1, v177) == 1)
      {
        sub_2280D44A8(v176, &qword_27D81E328, &qword_2281402C0);
        v179 = 0xE300000000000000;
        v180 = 7104878;
      }

      else
      {
        v180 = sub_228136FFC();
        v179 = v181;
        (*(v178 + 8))(v176, v177);
      }

      (*(v57 + 8))(v152, v245);
      v182 = sub_227FCC340(v180, v179, &v276);

      *(v155 + 40) = v182;
      *(v155 + 48) = 1026;
      v183 = v262;
      v184 = v263;
      __swift_project_boxed_opaque_existential_1(&v261, v262);
      v185 = sub_2280A0F6C(v183, v184) & 1;
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v261);
      *(v155 + 50) = v185;
      *(v155 + 54) = 2082;
      v260 = MEMORY[0x277D84FA0];
      v186 = sub_228046378(v246, &v260);
      v258 = 91;
      v259 = 0xE100000000000000;
      v257 = v186;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_2280D3E0C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
      v187 = sub_22813925C();
      v189 = v188;

      MEMORY[0x22AAB1970](v187, v189);

      MEMORY[0x22AAB1970](93, 0xE100000000000000);
      v190 = v258;
      v191 = v259;

      v192 = sub_227FCC340(v190, v191, &v276);

      *(v155 + 56) = v192;
      *(v155 + 64) = 2082;
      v260 = MEMORY[0x277D84FA0];
      v193 = sub_228046378(v240, &v260);
      v258 = 91;
      v259 = 0xE100000000000000;
      v257 = v193;
      v194 = sub_22813925C();
      v196 = v195;

      MEMORY[0x22AAB1970](v194, v196);

      MEMORY[0x22AAB1970](93, 0xE100000000000000);
      v197 = v258;
      v198 = v259;

      v199 = sub_227FCC340(v197, v198, &v276);

      *(v155 + 66) = v199;
      v200 = v254;
      _os_log_impl(&dword_227FC3000, v254, v253, "The dominant language detected is not supported for request: [requestIdentifier: %s, useCaseIdentifier: %s, clientApplicationIdentifier: %s, clientProcessIdentifier: %d], detectedLanguage: %{public}s, requiresPreferredLanaguage: %{BOOL,public}d, preferredLanguages: %{public}s, availableLanguages: %{public}s", v155, 0x4Au);
      v201 = v252;
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v201, -1, -1);
      MEMORY[0x22AAB28A0](v155, -1, -1);

      v149 = v255;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v261);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v264);

      (*(v57 + 8))(v152, v56);
      __swift_destroy_boxed_opaque_existential_1Tm_11(v273);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v270);
      __swift_destroy_boxed_opaque_existential_1Tm_11(&v267);
    }

    v202 = swift_allocObject();
    v203 = v228;
    *(v202 + 16) = v228;
    *(v202 + 24) = 0;
    *(v202 + 32) = 0;
    v204 = v203;
    v205 = v227(0, 0xD000000000000072, 0x8000000228147EF0, 152, v226, v202);
    LOBYTE(v273[0]) = v204;
    v273[1] = v205;
    v149();
    if (sub_22813999C())
    {
    }

    else
    {
      swift_allocError();
      *v206 = v204;
      *(v206 + 8) = v205;
    }

    return swift_willThrow();
  }

  else
  {

    v213 = v214[0];
    (*(v57 + 32))(v214[0], v212, v56);
    sub_22813710C();
    (*(v253 + 56))(v215, 1, 1, v74);
    sub_22813711C();
    sub_22813702C();
    return v146(v213, v56);
  }
}