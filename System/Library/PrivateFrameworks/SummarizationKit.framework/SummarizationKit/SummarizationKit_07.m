uint64_t sub_22806D8EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = sub_22813795C();
  v48 = *(v50 - 8);
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v50, v9);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22813794C();
  v47 = *(v49 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v49, v12);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PartialSummariesOperation(0);
  v14 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22808764C(a2, v17);
  v51 = v17;
  *(v17 + 5) = a3;
  v18 = *(a1 + 16);
  if (v18)
  {
    v42 = a4;
    v43 = a2;
    v56[0] = MEMORY[0x277D84F90];
    v41 = a3;

    result = sub_228043C1C(0, v18, 0);
    v20 = 0;
    v21 = *(a1 + 16);
    v22 = (a1 + 40);
    v52 = v21 - 1;
    v53 = v21;
    v23 = v56[0];
    v54 = v18;
    v55 = a1;
    while (v21 != v20)
    {
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_21;
      }

      v24 = *(v22 - 1);
      v25 = *v22;
      v26 = v21 < 2 || v52 == v20;
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = 2570;
      }

      if (v26)
      {
        v28 = 0xE000000000000000;
      }

      else
      {
        v28 = 0xE200000000000000;
      }

      v56[0] = v23;
      v29 = *(v23 + 16);
      v30 = *(v23 + 24);

      if (v29 >= v30 >> 1)
      {
        result = sub_228043C1C((v30 > 1), v29 + 1, 1);
        v23 = v56[0];
      }

      *(v23 + 16) = v29 + 1;
      v31 = (v23 + 40 * v29);
      v31[4] = v20;
      v31[5] = v24;
      v31[6] = v25;
      v31[7] = v27;
      v31[8] = v28;
      v22 += 2;
      ++v20;
      a1 = v55;
      v21 = v53;
      if (v54 == v20)
      {

        a4 = v42;
        a2 = v43;
        a3 = v41;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
LABEL_19:
    v32 = v51;
    *(v51 + 6) = v23;
    v34 = a2[3];
    v33 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v34);
    v35 = *(v33 + 8);
    v36 = *(v35 + 8);

    v36(v34, v35);
    (*(v48 + 104))(v46, *MEMORY[0x277D0E2D8], v50);
    v37 = v45;
    sub_22813792C();
    v38 = v32 + *(v44 + 28);
    sub_22813796C();
    (*(v47 + 8))(v37, v49);
    v39 = *(v23 + 16);

    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((a3 + 16));
    v56[3] = MEMORY[0x277D84A28];
    v56[0] = v39;

    sub_2280449E4(v56, KeyPath, (a3 + 24));
    os_unfair_lock_unlock((a3 + 16));

    sub_2280876B0(v32, a4, type metadata accessor for PartialSummariesOperation);
    return __swift_destroy_boxed_opaque_existential_1Tm_7(a2);
  }

  return result;
}

uint64_t sub_22806DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_22806DD3C, 0, 0);
}

uint64_t sub_22806DD3C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *(v5 + 16) = v1;
  type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v4;
  v6[5] = sub_228085B4C;
  v6[6] = v5;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_22806DE78;

  return MEMORY[0x282200740]();
}

uint64_t sub_22806DE78()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22806DFF8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22806DF94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22806DF94()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22806DFF8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_22806E064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED00, &qword_22813E410);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v15 - v12;
  (*(v3 + 16))(v7, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  sub_22813962C();
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_22806E1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECC0, &qword_22813E190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42 - v11;
  v13 = sub_22813882C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281395AC();
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v13, qword_2813C8A20);
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v13, qword_2813C4990);
  }

  (*(v14 + 16))(v18, v19, v13);
  sub_22808764C(a3, v49);
  v20 = *(v5 + 16);
  v21 = v12;
  v20(v12, v47, v4);
  v22 = v18;
  v23 = sub_22813880C();
  v24 = sub_2281396CC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v21;
    v26 = v25;
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 136446466;
    v47 = v13;
    v48 = v27;
    v45 = v14;
    v28 = v50;
    v29 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v30 = *(v29 + 16);
    v44 = v22;
    v31 = v30(v28, v29);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm_7(v49);
    v34 = sub_227FCC340(v31, v33, &v48);

    *(v26 + 4) = v34;
    *(v26 + 12) = 2082;
    v35 = v42;
    v20(v46, v42, v4);
    v36 = sub_2281392EC();
    v38 = v37;
    (*(v5 + 8))(v35, v4);
    v39 = sub_227FCC340(v36, v38, &v48);

    *(v26 + 14) = v39;
    _os_log_impl(&dword_227FC3000, v23, v24, "partialSummaries continuation for  [requestIdentifier: %{public}s] terminated with reason: %{public}s", v26, 0x16u);
    v40 = v43;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v40, -1, -1);
    MEMORY[0x22AAB28A0](v26, -1, -1);

    return (*(v45 + 8))(v44, v47);
  }

  else
  {

    (*(v5 + 8))(v21, v4);
    (*(v14 + 8))(v22, v13);
    return __swift_destroy_boxed_opaque_existential_1Tm_7(v49);
  }
}

uint64_t sub_22806E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  *(v9 + 584) = v8;
  *(v9 + 576) = v28;
  *(v9 + 568) = v27;
  *(v9 + 114) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a3;
  *(v9 + 528) = a2;
  *(v9 + 520) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  *(v9 + 592) = swift_task_alloc();
  v11 = *(*(sub_228136DEC() - 8) + 64) + 15;
  *(v9 + 600) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298) - 8) + 64) + 15;
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0) - 8) + 64) + 15;
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  v14 = type metadata accessor for ModelBundleIdentifier();
  *(v9 + 656) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v9 + 664) = swift_task_alloc();
  v16 = sub_228138F9C();
  *(v9 + 672) = v16;
  v17 = *(v16 - 8);
  *(v9 + 680) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 688) = swift_task_alloc();
  v19 = sub_22813882C();
  *(v9 + 696) = v19;
  v20 = *(v19 - 8);
  *(v9 + 704) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  v22 = sub_228138E0C();
  *(v9 + 728) = v22;
  v23 = *(v22 - 8);
  *(v9 + 736) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22806E988, 0, 0);
}

uint64_t sub_22806E988()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  *(v0 + 48) = type metadata accessor for TokenCounter();
  *(v0 + 56) = &off_283B5BC30;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 24));
  sub_228084B4C(v1 + v5, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(v3, v0 + 64);
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 16) = v4;

  v7 = swift_task_alloc();
  *(v0 + 760) = v7;
  *v7 = v0;
  v7[1] = sub_22806EAB0;
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);

  return sub_2280C1424(v9, v8);
}

uint64_t sub_22806EAB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 760);
  v7 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = v1;

  if (v1)
  {
    v5 = sub_2280714A8;
  }

  else
  {
    v5 = sub_22806EBC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22806EBC8()
{
  v116 = v0;
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 752);
  v5 = *(v0 + 576);
  v6 = MEMORY[0x277D84F90];
  *(v0 + 464) = MEMORY[0x277D84F90];
  sub_228138DEC();
  KeyPath = swift_getKeyPath();
  v8 = *(v3 + 16) - 1;
  os_unfair_lock_lock((v5 + 16));
  sub_228084228((v5 + 24), KeyPath, v8);
  v9 = (v5 + 16);
  if (v2)
  {

    os_unfair_lock_unlock(v9);
    return;
  }

  os_unfair_lock_unlock(v9);

  v10 = *(v3 + 16);
  *(v0 + 784) = v10;
  *(v0 + 792) = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
  if (v10)
  {
    v11 = *(v0 + 768);
    *(v0 + 816) = 0;
    *(v0 + 808) = v6;
    *(v0 + 800) = v6;
    if (v11[2])
    {
      v1 = v11[4];
      v3 = v11[5];
      v12 = qword_2813C49E0;

      if (v12 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_8:
    v13 = __swift_project_value_buffer(*(v0 + 696), qword_2813C8A20);
    *(v0 + 824) = v13;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v14 = byte_2813C49C1;
    *(v0 + 113) = byte_2813C49C1;
    v15 = v13;
    if ((v14 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(*(v0 + 696), qword_2813C4990);
    }

    v16 = *(v0 + 768);
    v17 = *(v0 + 720);
    v18 = *(v0 + 696);
    v19 = *(v0 + 560);
    v20 = *(*(v0 + 704) + 16);
    *(v0 + 832) = v20;
    v20(v17, v15, v18);
    sub_22808764C(v19, v0 + 168);

    v21 = sub_22813880C();
    v22 = sub_2281396CC();
    if (os_log_type_enabled(v21, v22))
    {
      v109 = v1;
      v112 = v3;
      v23 = *(v0 + 544);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *(v0 + 504) = v25;
      *v24 = 134349826;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        __break(1u);
LABEL_39:
        swift_once();
LABEL_33:
        v84 = *(v0 + 584);
        v85 = *(v0 + 568);
        v86 = *(v0 + 114);
        v87 = *(v0 + 560);
        v88 = (v86 >> 8) & 1;
        v89 = v86 & 1;
        *(v0 + 488) = v3;
        v90 = swift_task_alloc();
        *(v0 + 864) = v90;
        *(v90 + 16) = v84;
        *(v90 + 24) = v112;
        *(v90 + 32) = &unk_283B5B3D0;
        *(v90 + 40) = v87;
        *(v90 + 48) = v89;
        *(v90 + 49) = v88;
        *(v90 + 56) = v85;
        *(v90 + 64) = v22;
        v91 = *(MEMORY[0x277D85A70] + 4);
        v92 = swift_task_alloc();
        *(v0 + 872) = v92;
        *v92 = v0;
        v92[1] = sub_22806FB64;
        v93 = *(v0 + 688);
        v94 = *(v0 + 672);
        v118 = 834;
        v119 = v94;

        MEMORY[0x282200908](v93, v0 + 488, &unk_22813E2C8, v90, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
        return;
      }

      v26 = v25;
      v27 = *(v0 + 768);
      v28 = *(v0 + 704);
      v105 = *(v0 + 696);
      v107 = *(v0 + 720);
      *(v24 + 4) = v23 + 1;
      *(v24 + 12) = 2050;
      *(v24 + 14) = 1;
      *(v24 + 22) = 2050;
      *(v24 + 24) = *(v27 + 16);

      *(v24 + 32) = 2082;
      v29 = *(v0 + 192);
      v30 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 168), v29);
      v31 = (*(v30 + 16))(v29, v30);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
      v34 = sub_227FCC340(v31, v33, (v0 + 504));

      *(v24 + 34) = v34;
      _os_log_impl(&dword_227FC3000, v21, v22, "Started summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v24, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
      MEMORY[0x22AAB28A0](v26, -1, -1);
      MEMORY[0x22AAB28A0](v24, -1, -1);

      v35 = *(v28 + 8);
      v35(v107, v105);
      v1 = v109;
      v3 = v112;
    }

    else
    {
      v45 = *(v0 + 768);
      v46 = *(v0 + 720);
      v47 = *(v0 + 704);
      v48 = *(v0 + 696);

      v35 = *(v47 + 8);
      v35(v46, v48);
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
    }

    *(v0 + 840) = v35;
    sub_2281395DC();
    v49 = v0 + 248;
    v50 = *(v0 + 584);
    v51 = *(v0 + 560);
    type metadata accessor for TelemetrySignalCollector();
    swift_allocObject();
    v22 = sub_2280D5C74();
    *(v0 + 848) = v22;
    *(v0 + 272) = &type metadata for SKTextChunk;
    *(v0 + 280) = &off_283B5E458;
    *(v0 + 248) = v1;
    *(v0 + 256) = v3;
    *(v0 + 264) = 1;

    sub_22808764C(v51, v0 + 288);
    sub_22808764C(v0 + 248, v0 + 328);

    v52 = sub_22813880C();
    v53 = sub_2281396BC();

    if (os_log_type_enabled(v52, v53))
    {
      v111 = *(v0 + 584);
      v114 = *(v0 + 792);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v115[0] = v55;
      *v54 = 136315906;
      v56 = *(v0 + 312);
      v57 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 288), v56);
      v58 = (*(v57 + 16))(v56, v57);
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
      v61 = sub_227FCC340(v58, v60, v115);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
      swift_getDynamicType();
      v62 = sub_228139B8C();
      v64 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
      v65 = sub_227FCC340(v62, v64, v115);

      *(v54 + 14) = v65;
      *(v54 + 22) = 2080;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
      v67 = MEMORY[0x22AAB1AD0](&unk_283B5B3F8, v66);
      v69 = sub_227FCC340(v67, v68, v115);

      *(v54 + 24) = v69;
      *(v54 + 32) = 2080;
      v70 = ModelBundleIdentifier.loggingDescription.getter();
      v72 = sub_227FCC340(v70, v71, v115);

      *(v54 + 34) = v72;
      v49 = v0 + 248;
      _os_log_impl(&dword_227FC3000, v52, v53, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v54, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v55, -1, -1);
      MEMORY[0x22AAB28A0](v54, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
    }

    v73 = *(v0 + 656);
    sub_228084B4C(*(v0 + 584) + *(v0 + 792), *(v0 + 664), type metadata accessor for ModelBundleIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v75 = 3;
        goto LABEL_28;
      }

      v75 = 2;
    }

    else
    {
      v75 = 1;
    }

    sub_228084CF0(*(v0 + 664), type metadata accessor for ModelBundleIdentifier);
LABEL_28:
    v76 = swift_getKeyPath();
    os_unfair_lock_lock((v22 + 16));
    *(v0 + 432) = MEMORY[0x277D84A28];
    *(v0 + 408) = v75;

    sub_2280449E4(v0 + 408, v76, (v22 + 24));
    os_unfair_lock_unlock((v22 + 16));

    type metadata accessor for SharedData();
    v3 = swift_allocObject();
    *(v0 + 856) = v3;
    type metadata accessor for SKAssetManager();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    swift_initStackObject();
    v77 = SKAssetManager.init()();
    v78 = type metadata accessor for FilterRules();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    v81 = FilterRules.init(assetManager:)(v77);
    v112 = v49;
    v82 = *(v3 + 16);
    *(v3 + 16) = v81;

    v83 = *(v3 + 24);
    *(v3 + 24) = v22;

    if (qword_2813C8178 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  v36 = *(v0 + 768);
  v98 = *(v0 + 752);
  v101 = *(v0 + 744);
  v37 = *(v0 + 736);
  v113 = *(v0 + 728);
  v102 = *(v0 + 720);
  v103 = *(v0 + 712);
  v104 = *(v0 + 688);
  v106 = *(v0 + 664);
  v108 = *(v0 + 648);
  v38 = *(v0 + 632);
  v97 = *(v0 + 640);
  v39 = *(v0 + 624);
  v95 = *(v0 + 616);
  v96 = *(v0 + 608);
  v110 = *(v0 + 600);
  v40 = *(v0 + 576);
  v99 = *(v0 + 592);
  v100 = *(v0 + 520);

  sub_228086458(v40, v6);

  v41 = sub_228136DBC();
  v42 = *(*(v41 - 8) + 56);
  v42(v38, 1, 1, v41);
  v42(v39, 1, 1, v41);
  *(v0 + 512) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_228087D9C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
  sub_22813925C();

  sub_228136DDC();
  sub_228136DCC();
  v42(v95, 0, 1, v41);
  v42(v96, 1, 1, v41);
  (*(v37 + 16))(v97, v98, v113);
  (*(v37 + 56))(v97, 0, 1, v113);
  v43 = sub_228138DDC();
  (*(*(v43 - 8) + 56))(v99, 1, 1, v43);
  sub_228138F4C();
  (*(v37 + 8))(v98, v113);
  sub_228085A2C(v0 + 16);

  v44 = *(v0 + 8);

  v44();
}

uint64_t sub_22806FB64()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v7 = *v1;
  *(*v1 + 880) = v0;

  v4 = *(v2 + 864);

  if (v0)
  {
    v5 = sub_228071124;
  }

  else
  {
    v5 = sub_22806FC88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22806FC88()
{
  v224 = v0;
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  v5 = *(v0 + 688);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 248));
  LOBYTE(v223[0]) = 2;
  v6 = Summary.stringValue(for:)(v223);
  if (!v6.value._object)
  {
    v18 = *(v0 + 848);
    v19 = *(v0 + 808);
    v20 = *(v0 + 800);
    v21 = *(v0 + 688);
    v22 = *(v0 + 680);
    v23 = *(v0 + 672);

    v24 = swift_allocObject();
    *(v24 + 16) = 27;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    v25 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 566, sub_2280889A4);
    sub_227FDB3CC();
    v2 = swift_allocError();
    *v26 = 27;
    *(v26 + 8) = v25;
    swift_willThrow();

    (*(v22 + 8))(v21, v23);
    goto LABEL_48;
  }

  v7 = *(v0 + 808);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1 = *(v0 + 808);
  v216 = v0 + 248;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v1 = sub_2281338C0(0, *(v1 + 2) + 1, 1, v1);
  }

  v10 = *(v1 + 2);
  v9 = *(v1 + 3);
  if (v10 >= v9 >> 1)
  {
    v1 = sub_2281338C0((v9 > 1), v10 + 1, 1, v1);
  }

  v11 = *(v0 + 848);
  *(v1 + 2) = v10 + 1;
  *&v1[16 * v10 + 32] = v6;

  MEMORY[0x22AAB1AA0](v12);
  if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v189 = *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22813953C();
  }

  v13 = *(v0 + 848);
  v14 = *(v0 + 736);
  v15 = *(v0 + 728);
  v16 = *(v0 + 688);
  v17 = *(v0 + 648);
  sub_22813955C();
  v222 = *(v0 + 464);
  sub_228138EEC();
  if ((*(v14 + 48))(v17, 1, v15) == 1)
  {
    sub_2280883AC(*(v0 + 648), &qword_27D81EC98, &qword_22813E0D0);
  }

  else
  {
    v27 = *(v0 + 752);
    v28 = *(v0 + 736);
    v29 = *(v0 + 728);
    (*(v28 + 32))(*(v0 + 744), *(v0 + 648), v29);
    v30 = sub_228138DFC();
    v31 = *(v28 + 8);
    v31(v27, v29);
    if (v30)
    {
      v32 = *(v0 + 744);
      sub_228138DFC();
    }

    v33 = *(v0 + 752);
    v34 = *(v0 + 744);
    v35 = *(v0 + 728);
    sub_228138DEC();
    v31(v34, v35);
  }

  if (*(v0 + 113) != 1)
  {
    if (qword_2813C4988 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_17;
  }

  for (i = *(v0 + 824); ; i = __swift_project_value_buffer(*(v0 + 696), qword_2813C4990))
  {
    v37 = *(v0 + 768);
    v38 = *(v0 + 560);
    v39 = *(v0 + 704) + 16;
    (*(v0 + 832))(*(v0 + 712), i, *(v0 + 696));
    sub_22808764C(v38, v0 + 368);

    v40 = sub_22813880C();
    v41 = sub_2281396CC();
    v219 = v1;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 544);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *(v0 + 496) = v44;
      *v43 = 134349826;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      v45 = v44;
      v213 = *(v0 + 840);
      v46 = *(v0 + 768);
      v199 = *(v0 + 712);
      v202 = *(v0 + 848);
      v197 = *(v0 + 696);
      v208 = *(v0 + 688);
      v47 = *(v0 + 680);
      v205 = *(v0 + 672);
      v48 = *(v0 + 816) + 1;
      v49 = *(v0 + 704) + 8;
      *(v43 + 4) = v42 + 1;
      *(v43 + 12) = 2050;
      *(v43 + 14) = v48;
      *(v43 + 22) = 2050;
      *(v43 + 24) = *(v46 + 16);

      *(v43 + 32) = 2082;
      v50 = *(v0 + 392);
      v51 = *(v0 + 400);
      __swift_project_boxed_opaque_existential_1((v0 + 368), v50);
      v52 = (*(v51 + 16))(v50, v51);
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 368));
      v55 = sub_227FCC340(v52, v54, (v0 + 496));

      *(v43 + 34) = v55;
      _os_log_impl(&dword_227FC3000, v40, v41, "Finished summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v43, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v45);
      MEMORY[0x22AAB28A0](v45, -1, -1);
      MEMORY[0x22AAB28A0](v43, -1, -1);

      v213(v199, v197);
      v56 = *(v47 + 8);
      v2 = (v47 + 8);
      v56(v208, v205);
    }

    else
    {
      v57 = *(v0 + 848);
      v58 = *(v0 + 840);
      v59 = *(v0 + 768);
      v60 = *(v0 + 712);
      v2 = *(v0 + 704);
      v41 = *(v0 + 696);
      v61 = *(v0 + 688);
      v62 = v40;
      v63 = *(v0 + 680);
      v64 = *(v0 + 672);

      v58(v60, v41);
      (*(v63 + 8))(v61, v64);
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 368));
    }

    v40 = *(v0 + 816);
    v65 = &v40->isa + 1;
    if ((&v40->isa + 1) == *(v0 + 784))
    {
      v66 = *(v0 + 768);
      v67 = *(v0 + 736);
      v193 = *(v0 + 728);
      v194 = *(v0 + 752);
      v198 = *(v0 + 744);
      v200 = *(v0 + 720);
      v203 = *(v0 + 712);
      v206 = *(v0 + 688);
      v209 = *(v0 + 664);
      v214 = *(v0 + 648);
      v68 = *(v0 + 632);
      v192 = *(v0 + 640);
      v69 = *(v0 + 624);
      v190 = *(v0 + 616);
      v191 = *(v0 + 608);
      v217 = *(v0 + 600);
      v70 = *(v0 + 576);
      v195 = *(v0 + 592);
      v196 = *(v0 + 520);

      sub_228086458(v70, v222);

      v71 = sub_228136DBC();
      v72 = *(*(v71 - 8) + 56);
      v72(v68, 1, 1, v71);
      v72(v69, 1, 1, v71);
      *(v0 + 512) = v219;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_228087D9C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
      sub_22813925C();

      sub_228136DDC();
      sub_228136DCC();
      v72(v190, 0, 1, v71);
      v72(v191, 1, 1, v71);
      (*(v67 + 16))(v192, v194, v193);
      (*(v67 + 56))(v192, 0, 1, v193);
      v73 = sub_228138DDC();
      (*(*(v73 - 8) + 56))(v195, 1, 1, v73);
      sub_228138F4C();
      (*(v67 + 8))(v194, v193);
      sub_228085A2C(v0 + 16);

      v74 = *(v0 + 8);
      goto LABEL_53;
    }

    v212 = *(v0 + 880);
    *(v0 + 816) = v65;
    v1 = v219;
    *(v0 + 808) = v219;
    *(v0 + 800) = v222;
    v75 = *(v0 + 768);
    if (v65 < *(v75 + 16))
    {
      v76 = v75 + 16 * v65;
      v2 = *(v76 + 32);
      v41 = *(v76 + 40);
      v77 = qword_2813C49E0;

      if (v77 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
LABEL_26:
    v78 = __swift_project_value_buffer(*(v0 + 696), qword_2813C8A20);
    *(v0 + 824) = v78;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v79 = byte_2813C49C1;
    *(v0 + 113) = byte_2813C49C1;
    v80 = v78;
    if ((v79 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v80 = __swift_project_value_buffer(*(v0 + 696), qword_2813C4990);
    }

    v81 = *(v0 + 768);
    v82 = *(v0 + 720);
    v83 = *(v0 + 696);
    v84 = *(v0 + 560);
    v85 = *(*(v0 + 704) + 16);
    *(v0 + 832) = v85;
    v85(v82, v80, v83);
    sub_22808764C(v84, v0 + 168);

    v86 = sub_22813880C();
    v87 = sub_2281396CC();
    v207 = v2;
    v210 = v41;
    if (os_log_type_enabled(v86, v87))
    {
      v88 = *(v0 + 544);
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *(v0 + 504) = v90;
      *v89 = 134349826;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
        goto LABEL_66;
      }

      v91 = v90;
      v92 = *(v0 + 768);
      v93 = *(v0 + 704);
      v201 = *(v0 + 696);
      v204 = *(v0 + 720);
      *(v89 + 4) = v88 + 1;
      *(v89 + 12) = 2050;
      *(v89 + 14) = &v40->isa + 2;
      *(v89 + 22) = 2050;
      *(v89 + 24) = *(v92 + 16);

      *(v89 + 32) = 2082;
      v94 = *(v0 + 192);
      v95 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 168), v94);
      v96 = (*(v95 + 16))(v94, v95);
      v98 = v97;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
      v99 = sub_227FCC340(v96, v98, (v0 + 504));

      *(v89 + 34) = v99;
      _os_log_impl(&dword_227FC3000, v86, v87, "Started summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v89, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v91);
      MEMORY[0x22AAB28A0](v91, -1, -1);
      MEMORY[0x22AAB28A0](v89, -1, -1);

      v100 = *(v93 + 8);
      v100(v204, v201);
      v1 = v219;
    }

    else
    {
      v101 = *(v0 + 768);
      v102 = *(v0 + 720);
      v103 = *(v0 + 704);
      v104 = *(v0 + 696);

      v100 = *(v103 + 8);
      v100(v102, v104);
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
    }

    *(v0 + 840) = v100;
    sub_2281395DC();
    if (!v212)
    {
      break;
    }

    v2 = v212;

LABEL_48:
    v138 = *(v0 + 824);
    v139 = *(v0 + 768);
    sub_22808764C(*(v0 + 560), v0 + 208);

    v140 = v2;
    v141 = sub_22813880C();
    v142 = sub_2281396DC();

    if (!os_log_type_enabled(v141, v142))
    {
      v161 = *(v0 + 768);
      swift_bridgeObjectRelease_n();

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 208));
LABEL_52:
      v162 = *(v0 + 752);
      v163 = *(v0 + 736);
      v164 = *(v0 + 728);
      swift_willThrow();
      (*(v163 + 8))(v162, v164);
      sub_228085A2C(v0 + 16);
      v165 = *(v0 + 752);
      v166 = *(v0 + 744);
      v167 = *(v0 + 720);
      v168 = *(v0 + 712);
      v169 = *(v0 + 688);
      v170 = *(v0 + 664);
      v171 = *(v0 + 648);
      v172 = *(v0 + 640);
      v173 = *(v0 + 632);
      v174 = *(v0 + 624);
      v211 = *(v0 + 616);
      v215 = *(v0 + 608);
      v218 = *(v0 + 600);
      v221 = *(v0 + 592);

      v74 = *(v0 + 8);
LABEL_53:

      return v74();
    }

    v143 = *(v0 + 544);
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v223[0] = v145;
    *v144 = 134350082;
    v146 = v143 + 1;
    if (!__OFADD__(v143, 1))
    {
      v147 = v145;
      v148 = *(v0 + 768);
      v149 = *(v0 + 816) + 1;
      *(v144 + 4) = v146;
      *(v144 + 12) = 2050;
      *(v144 + 14) = v149;
      *(v144 + 22) = 2050;
      v150 = *(v148 + 16);

      *(v144 + 24) = v150;

      *(v144 + 32) = 2082;
      v151 = *(v0 + 232);
      v152 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 208), v151);
      v153 = (*(v152 + 16))(v151, v152);
      v155 = v154;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 208));
      v156 = sub_227FCC340(v153, v155, v223);

      *(v144 + 34) = v156;
      *(v144 + 42) = 2082;
      swift_getErrorValue();
      v157 = *(v0 + 440);
      v158 = Error.loggingDescription.getter(*(v0 + 448), *(v0 + 456));
      v160 = sub_227FCC340(v158, v159, v223);

      *(v144 + 44) = v160;
      _os_log_impl(&dword_227FC3000, v141, v142, "Finished summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v144, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v147, -1, -1);
      MEMORY[0x22AAB28A0](v144, -1, -1);

      goto LABEL_52;
    }

    __break(1u);
LABEL_61:
    swift_once();
LABEL_17:
    ;
  }

  v105 = *(v0 + 584);
  v106 = *(v0 + 560);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v89 = sub_2280D5C74();
  *(v0 + 848) = v89;
  *(v0 + 272) = &type metadata for SKTextChunk;
  *(v0 + 280) = &off_283B5E458;
  *(v0 + 248) = v207;
  *(v0 + 256) = v210;
  *(v0 + 264) = 1;

  sub_22808764C(v106, v0 + 288);
  sub_22808764C(v216, v0 + 328);

  v107 = sub_22813880C();
  v108 = sub_2281396BC();

  if (os_log_type_enabled(v107, v108))
  {
    v220 = *(v0 + 792);
    v109 = *(v0 + 584);
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v223[0] = v111;
    *v110 = 136315906;
    v112 = *(v0 + 312);
    v113 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 288), v112);
    v114 = (*(v113 + 16))(v112, v113);
    v116 = v115;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
    v117 = sub_227FCC340(v114, v116, v223);

    *(v110 + 4) = v117;
    *(v110 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
    swift_getDynamicType();
    v118 = sub_228139B8C();
    v120 = v119;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
    v121 = sub_227FCC340(v118, v120, v223);

    *(v110 + 14) = v121;
    *(v110 + 22) = 2080;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v123 = MEMORY[0x22AAB1AD0](&unk_283B5B3F8, v122);
    v125 = sub_227FCC340(v123, v124, v223);

    *(v110 + 24) = v125;
    *(v110 + 32) = 2080;
    v126 = ModelBundleIdentifier.loggingDescription.getter();
    v128 = sub_227FCC340(v126, v127, v223);

    *(v110 + 34) = v128;
    _os_log_impl(&dword_227FC3000, v107, v108, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v110, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v111, -1, -1);
    MEMORY[0x22AAB28A0](v110, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
  }

  v129 = *(v0 + 656);
  sub_228084B4C(*(v0 + 584) + *(v0 + 792), *(v0 + 664), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v131 = 2;
      goto LABEL_45;
    }

    v131 = 3;
  }

  else
  {
    v131 = 1;
LABEL_45:
    sub_228084CF0(*(v0 + 664), type metadata accessor for ModelBundleIdentifier);
  }

  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v89 + 16));
  *(v0 + 432) = MEMORY[0x277D84A28];
  *(v0 + 408) = v131;

  sub_2280449E4(v0 + 408, KeyPath, (v89 + 24));
  os_unfair_lock_unlock((v89 + 16));

  type metadata accessor for SharedData();
  v86 = swift_allocObject();
  *(v0 + 856) = v86;
  type metadata accessor for SKAssetManager();
  v86[2].isa = 0;
  v86[3].isa = 0;
  swift_initStackObject();
  v133 = SKAssetManager.init()();
  v134 = type metadata accessor for FilterRules();
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  swift_allocObject();
  v137 = FilterRules.init(assetManager:)(v133);
  isa = v86[2].isa;
  v86[2].isa = v137;

  v177 = v86[3].isa;
  v86[3].isa = v89;

  if (qword_2813C8178 != -1)
  {
LABEL_66:
    swift_once();
  }

  v178 = *(v0 + 584);
  v179 = *(v0 + 568);
  v180 = *(v0 + 114);
  v181 = *(v0 + 560);
  v182 = (v180 >> 8) & 1;
  v183 = v180 & 1;
  *(v0 + 488) = v86;
  v184 = swift_task_alloc();
  *(v0 + 864) = v184;
  *(v184 + 16) = v178;
  *(v184 + 24) = v216;
  *(v184 + 32) = &unk_283B5B3D0;
  *(v184 + 40) = v181;
  *(v184 + 48) = v183;
  *(v184 + 49) = v182;
  *(v184 + 56) = v179;
  *(v184 + 64) = v89;
  v185 = *(MEMORY[0x277D85A70] + 4);
  v186 = swift_task_alloc();
  *(v0 + 872) = v186;
  *v186 = v0;
  v186[1] = sub_22806FB64;
  v187 = *(v0 + 688);
  v188 = *(v0 + 672);
  v226 = 834;
  v227 = v188;

  return MEMORY[0x282200908](v187, v0 + 488, &unk_22813E2C8, v184, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228071124()
{
  v50 = v0;
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[100];

  v4 = v0[110];
  v5 = v0[106];
  v6 = v0[101];

  __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 31);
  v7 = v0[103];
  v8 = v0[96];
  sub_22808764C(v0[70], (v0 + 26));

  v9 = v4;
  v10 = sub_22813880C();
  v11 = sub_2281396DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[68];
    v13 = swift_slowAlloc();
    result = swift_slowAlloc();
    v49[0] = result;
    *v13 = 134350082;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = v0[96];
    v18 = v0[102] + 1;
    *(v13 + 4) = v15;
    *(v13 + 12) = 2050;
    *(v13 + 14) = v18;
    *(v13 + 22) = 2050;
    v19 = *(v17 + 16);

    *(v13 + 24) = v19;

    *(v13 + 32) = 2082;
    v20 = v0[29];
    v21 = v0[30];
    __swift_project_boxed_opaque_existential_1(v0 + 26, v20);
    v22 = (*(v21 + 16))(v20, v21);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 26);
    v25 = sub_227FCC340(v22, v24, v49);

    *(v13 + 34) = v25;
    *(v13 + 42) = 2082;
    swift_getErrorValue();
    v26 = v0[55];
    v27 = Error.loggingDescription.getter(v0[56], v0[57]);
    v29 = sub_227FCC340(v27, v28, v49);

    *(v13 + 44) = v29;
    _os_log_impl(&dword_227FC3000, v10, v11, "Finished summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v16, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {
    v30 = v0[96];
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 26);
  }

  v31 = v0[94];
  v32 = v0[92];
  v33 = v0[91];
  swift_willThrow();
  (*(v32 + 8))(v31, v33);
  sub_228085A2C((v0 + 2));
  v34 = v0[94];
  v35 = v0[93];
  v36 = v0[90];
  v37 = v0[89];
  v38 = v0[86];
  v39 = v0[83];
  v40 = v0[81];
  v41 = v0[80];
  v42 = v0[79];
  v43 = v0[78];
  v45 = v0[77];
  v46 = v0[76];
  v47 = v0[75];
  v48 = v0[74];

  v44 = v0[1];

  return v44();
}

uint64_t sub_2280714A8()
{
  sub_228085A2C((v0 + 2));
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[86];
  v6 = v0[83];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[78];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[97];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2280715E0(void *a1, uint64_t a2)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0xD000000000000014, 0x8000000228146570);
  v9 = *(a2 + 16);
  v7 = sub_22813998C();
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return 0;
}

uint64_t sub_228071738()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(*(v3 + 8) + 8))(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t SummarizationSession.makeSharedSessionData(contentType:styles:requestInfo:maxTokenLength:signalCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  v23 = type metadata accessor for TokenCounter();
  v24 = &off_283B5BC48;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0(v22);
  sub_228084B4C(v7 + v15, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(a4, (a7 + 14));
  sub_22808764C(v22, a7);
  a7[5] = a1;
  a7[6] = a2;
  a7[7] = a3;
  a7[8] = a5;
  v17 = v23;
  v18 = v24;
  v19 = __swift_project_boxed_opaque_existential_1(v22, v23);
  a7[12] = v17;
  a7[13] = v18[1];
  v20 = __swift_allocate_boxed_opaque_existential_0Tm_0(a7 + 9);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  a7[19] = a6;

  __swift_destroy_boxed_opaque_existential_1Tm_7(v22);
  sub_22808764C(a4, (a7 + 20));
  a7[25] = a3;
  a7[26] = a6;
}

uint64_t sub_228071928(void *a1, uint64_t a2)
{
  *&v22[8] = 0;
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = (*(*(v7 + 8) + 8))(v8);
  MEMORY[0x22AAB1970](v9);

  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = (*(*(v10 + 8) + 16))(v11);
  MEMORY[0x22AAB1970](v12);

  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *v22 = (*(*(v13 + 8) + 24))(v14);
  v15 = sub_22813998C();
  MEMORY[0x22AAB1970](v15);

  MEMORY[0x22AAB1970](0x3A726F727265202CLL, 0xE900000000000020);
  if (a2)
  {
    swift_getErrorValue();
    v16 = Error.loggingDescription.getter(v20, v21);
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x22AAB1970](v16, v18);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return *&v22[4];
}

uint64_t sub_228071BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_228071CA4;

  return sub_228071D98(a1, a3, a4, a5, a6 & 0x101, a7, a8);
}

uint64_t sub_228071CA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_228071D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 744) = v7;
  *(v8 + 736) = a7;
  *(v8 + 728) = a6;
  *(v8 + 1492) = a5;
  *(v8 + 720) = a4;
  *(v8 + 712) = a3;
  *(v8 + 704) = a2;
  *(v8 + 696) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  *(v8 + 752) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0) - 8) + 64) + 15;
  *(v8 + 760) = swift_task_alloc();
  v11 = *(*(sub_228136DEC() - 8) + 64) + 15;
  *(v8 + 768) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E950, &qword_22813C670) - 8) + 64) + 15;
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  v13 = *(*(sub_228137AEC() - 8) + 64) + 15;
  *(v8 + 792) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420) - 8) + 64) + 15;
  *(v8 + 800) = swift_task_alloc();
  v15 = sub_228137A3C();
  *(v8 + 808) = v15;
  v16 = *(v15 - 8);
  *(v8 + 816) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 824) = swift_task_alloc();
  v18 = sub_228137A9C();
  *(v8 + 832) = v18;
  v19 = *(v18 - 8);
  *(v8 + 840) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 848) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0) - 8) + 64) + 15;
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  v22 = type metadata accessor for SummarizationParameters();
  *(v8 + 872) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  v24 = type metadata accessor for SummarizationResult();
  *(v8 + 896) = v24;
  v25 = *(v24 - 8);
  *(v8 + 904) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  *(v8 + 944) = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298) - 8) + 64) + 15;
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  v31 = sub_228138F9C();
  *(v8 + 1000) = v31;
  v32 = *(v31 - 8);
  *(v8 + 1008) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 1016) = swift_task_alloc();
  v34 = sub_228136F8C();
  *(v8 + 1024) = v34;
  v35 = *(v34 - 8);
  *(v8 + 1032) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  v37 = sub_22813882C();
  *(v8 + 1056) = v37;
  v38 = *(v37 - 8);
  *(v8 + 1064) = v38;
  v39 = *(v38 + 64) + 15;
  *(v8 + 1072) = swift_task_alloc();
  v40 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  *(v8 + 1080) = swift_task_alloc();
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  v41 = sub_22813716C();
  *(v8 + 1104) = v41;
  v42 = *(v41 - 8);
  *(v8 + 1112) = v42;
  v43 = *(v42 + 64) + 15;
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280723C8, 0, 0);
}

uint64_t sub_2280723C8()
{
  v93 = v0;
  if ((*(v0 + 1492) & 0x100) != 0)
  {
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 1144);
    sub_228139B6C();
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1144);
    v5 = *(v0 + 1136);
    v6 = *(v0 + 1112);
    v7 = *(v0 + 1104);
    __swift_project_value_buffer(*(v0 + 1056), qword_2813C8A20);
    (*(v6 + 16))(v5, v4, v7);
    v8 = sub_22813880C();
    v9 = sub_2281396BC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 1136);
    v12 = *(v0 + 1112);
    v13 = *(v0 + 1104);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v92[0] = v15;
      *v14 = 136446210;
      v88 = sub_228136FEC();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_227FCC340(v88, v17, v92);

      *(v14 + 4) = v19;
      v20 = "Passing locale from partial summary request through: %{public}s";
LABEL_35:
      _os_log_impl(&dword_227FC3000, v8, v9, v20, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v15);
      MEMORY[0x22AAB28A0](v15, -1, -1);
      MEMORY[0x22AAB28A0](v14, -1, -1);

LABEL_37:
      *(v0 + 1192) = v18;
      v42 = *(v0 + 736);
      v90 = v0 + 16;
      if (v42)
      {
        v43 = *(v0 + 728);
        KeyPath = swift_getKeyPath();
        os_unfair_lock_lock((v42 + 16));
        v92[3] = MEMORY[0x277D84A28];
        v92[0] = v43;

        sub_2280449E4(v92, KeyPath, (v42 + 24));
        os_unfair_lock_unlock((v42 + 16));

        v45 = *(v0 + 736);
      }

      else
      {
        v45 = 0;
      }

      v87 = *(v0 + 1048);
      v46 = *(v0 + 744);
      v47 = *(v0 + 728);
      v48 = *(v0 + 720);
      v49 = *(v0 + 712);
      v50 = *(v0 + 704);
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);
      DynamicType = swift_getDynamicType();
      v52 = v50[4];
      v53 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
      *(v0 + 256) = type metadata accessor for TokenCounter();
      *(v0 + 264) = &off_283B5BC48;
      boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 232));
      sub_228084B4C(v46 + v53, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
      sub_22808764C(v48, v0 + 128);
      sub_22808764C(v0 + 232, v90);
      *(v0 + 56) = DynamicType;
      *(v0 + 64) = v52;
      *(v0 + 72) = v49;
      *(v0 + 80) = v47;
      v56 = *(v0 + 256);
      v55 = *(v0 + 264);
      v57 = __swift_project_boxed_opaque_existential_1((v0 + 232), v56);
      *(v0 + 112) = v56;
      *(v0 + 120) = *(v55 + 8);
      v58 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 88));
      (*(*(v56 - 8) + 16))(v58, v57, v56);
      *(v0 + 168) = v45;

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 232));
      sub_22808764C(v48, v0 + 176);
      *(v0 + 216) = v49;
      *(v0 + 224) = v45;

      sub_228136F7C();
      if (qword_2813C4970 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 1144);
      v60 = *(v0 + 720);
      v61 = *(v0 + 712);
      v62 = *(v0 + 704);
      v63 = type metadata accessor for Signpost(0);
      *(v0 + 1200) = v63;
      v64 = __swift_project_value_buffer(v63, qword_2813C89A8);
      sub_22808764C(v60, v0 + 272);
      sub_22808764C(v62, v0 + 312);
      v65 = swift_allocObject();
      *(v0 + 1208) = v65;
      sub_227FD0F5C((v0 + 272), v65 + 16);
      sub_227FD0F5C((v0 + 312), v65 + 56);
      *(v65 + 96) = v61;
      v66 = swift_task_alloc();
      *(v0 + 1216) = v66;
      v66[2] = v59;
      v66[3] = v62;
      v66[4] = v90;

      v67 = swift_task_alloc();
      *(v0 + 1224) = v67;
      *v67 = v0;
      v67[1] = sub_22807392C;

      return sub_22810AB9C(v64, sub_2280889F8, v65, &unk_22813E438, v66);
    }

LABEL_36:

    v18 = *(v12 + 8);
    v18(v11, v13);
    goto LABEL_37;
  }

  v1 = objc_opt_self();

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

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v21 = *(*v2 + 232);
  v22 = *(*v2 + 240);
  v24 = *(*v2 + 248);
  v23 = *(*v2 + 256);
  v25 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v24(v92, v25);

    if ((v92[0] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!v22)
    {
LABEL_21:
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(*(v0 + 1056), qword_2813C89F0);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(*(v0 + 1056), qword_2813C4990);
      }

      (*(*(v0 + 1064) + 16))(*(v0 + 1072), v26, *(v0 + 1056));
      v27 = sub_22813880C();
      v28 = sub_2281396BC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_227FC3000, v27, v28, "checkSupportedLanguage skipped; internal supportedLanguageCheckEnabled setting is false", v29, 2u);
        MEMORY[0x22AAB28A0](v29, -1, -1);
      }

      v30 = *(v0 + 1144);
      v31 = *(v0 + 1072);
      v32 = *(v0 + 1064);
      v33 = *(v0 + 1056);

      (*(v32 + 8))(v31, v33);
      sub_2281370CC();
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 1144);
      v35 = *(v0 + 1120);
      v36 = *(v0 + 1112);
      v37 = *(v0 + 1104);
      __swift_project_value_buffer(*(v0 + 1056), qword_2813C8A20);
      (*(v36 + 16))(v35, v34, v37);
      v8 = sub_22813880C();
      v9 = sub_2281396BC();
      v38 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 1120);
      v12 = *(v0 + 1112);
      v13 = *(v0 + 1104);
      if (v38)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v92[0] = v15;
        *v14 = 136446210;
        v89 = sub_228136FEC();
        v40 = v39;
        v18 = *(v12 + 8);
        v18(v11, v13);
        v41 = sub_227FCC340(v89, v40, v92);

        *(v14 + 4) = v41;
        v20 = "Locale used for inference: %{public}s";
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  if (qword_2813C4950 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 1096);
  v70 = *(v0 + 744);
  v71 = *(v0 + 720);
  v72 = *(v0 + 712);
  v73 = *(v0 + 704);
  v74 = type metadata accessor for Signpost(0);
  v75 = __swift_project_value_buffer(v74, qword_2813C8948);
  *(v0 + 1152) = v75;
  sub_22808764C(v71, v0 + 472);
  sub_22808764C(v73, v0 + 512);
  v76 = swift_allocObject();
  *(v0 + 1160) = v76;
  sub_227FD0F5C((v0 + 472), v76 + 16);
  sub_227FD0F5C((v0 + 512), v76 + 56);
  *(v76 + 96) = v72;
  v77 = swift_allocObject();
  *(v0 + 1168) = v77;
  *(v77 + 16) = sub_2280880A4;
  *(v77 + 24) = v76;

  sub_2281324C4(v75, v77);
  v78 = v73[3];
  v79 = v73[4];
  __swift_project_boxed_opaque_existential_1(v73, v78);
  v80 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
  v81 = *(v79 + 32);
  v91 = (v81 + *v81);
  v82 = v81[1];
  v83 = swift_task_alloc();
  *(v0 + 1176) = v83;
  *v83 = v0;
  v83[1] = sub_228072F94;
  v84 = *(v0 + 1128);
  v85 = *(v0 + 720);
  v86 = *(v0 + 712);

  return v91(v84, v70 + v80, v85, v86, v78, v79);
}

uint64_t sub_228072F94()
{
  v2 = *(*v1 + 1176);
  v5 = *v1;
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v3 = sub_22807361C;
  }

  else
  {
    v3 = sub_2280730A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280730A8()
{
  v54 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1096);
  sub_2281324D4(v6, *(v0 + 1152), *(v0 + 1168));
  sub_228084CF0(v6, type metadata accessor for SignpostToken);

  (*(v4 + 32))(v2, v3, v5);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1144);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 1104);
  __swift_project_value_buffer(*(v0 + 1056), qword_2813C8A20);
  (*(v9 + 16))(v8, v7, v10);
  v11 = sub_22813880C();
  v12 = sub_2281396BC();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1120);
  v15 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v52 = v0 + 16;
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53[0] = v18;
    *v17 = 136446210;
    v50 = sub_228136FEC();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = sub_227FCC340(v50, v20, v53);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_227FC3000, v11, v12, "Locale used for inference: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v18);
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v17, -1, -1);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
  }

  *(v0 + 1192) = v21;
  v23 = *(v0 + 736);
  if (v23)
  {
    v24 = *(v0 + 728);
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v23 + 16));
    v53[3] = MEMORY[0x277D84A28];
    v53[0] = v24;

    sub_2280449E4(v53, KeyPath, (v23 + 24));
    os_unfair_lock_unlock((v23 + 16));

    v26 = *(v0 + 736);
  }

  else
  {
    v26 = 0;
  }

  v51 = *(v0 + 1048);
  v27 = *(v0 + 744);
  v28 = *(v0 + 728);
  v29 = *(v0 + 720);
  v30 = *(v0 + 712);
  v31 = *(v0 + 704);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  DynamicType = swift_getDynamicType();
  v33 = v31[4];
  v34 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  *(v0 + 256) = type metadata accessor for TokenCounter();
  *(v0 + 264) = &off_283B5BC48;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 232));
  sub_228084B4C(v27 + v34, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(v29, v0 + 128);
  sub_22808764C(v0 + 232, v52);
  *(v0 + 56) = DynamicType;
  *(v0 + 64) = v33;
  *(v0 + 72) = v30;
  *(v0 + 80) = v28;
  v37 = *(v0 + 256);
  v36 = *(v0 + 264);
  v38 = __swift_project_boxed_opaque_existential_1((v0 + 232), v37);
  *(v0 + 112) = v37;
  *(v0 + 120) = *(v36 + 8);
  v39 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 88));
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  *(v0 + 168) = v26;

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 232));
  sub_22808764C(v29, v0 + 176);
  *(v0 + 216) = v30;
  *(v0 + 224) = v26;

  sub_228136F7C();
  if (qword_2813C4970 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 1144);
  v41 = *(v0 + 720);
  v42 = *(v0 + 712);
  v43 = *(v0 + 704);
  v44 = type metadata accessor for Signpost(0);
  *(v0 + 1200) = v44;
  v45 = __swift_project_value_buffer(v44, qword_2813C89A8);
  sub_22808764C(v41, v0 + 272);
  sub_22808764C(v43, v0 + 312);
  v46 = swift_allocObject();
  *(v0 + 1208) = v46;
  sub_227FD0F5C((v0 + 272), v46 + 16);
  sub_227FD0F5C((v0 + 312), v46 + 56);
  *(v46 + 96) = v42;
  v47 = swift_task_alloc();
  *(v0 + 1216) = v47;
  v47[2] = v40;
  v47[3] = v43;
  v47[4] = v52;

  v48 = swift_task_alloc();
  *(v0 + 1224) = v48;
  *v48 = v0;
  v48[1] = sub_22807392C;

  return sub_22810AB9C(v45, sub_2280889F8, v46, &unk_22813E438, v47);
}

uint64_t sub_22807361C()
{
  v1 = v0[148];
  v2 = v0[146];
  v3 = v0[145];
  v4 = v0[144];
  v5 = v0[137];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = sub_2280880A4;
  v6[4] = v3;
  swift_beginAccess();
  v7 = *(v2 + 24);
  *(v2 + 16) = sub_228088A00;
  *(v2 + 24) = v6;

  v8 = v1;

  swift_willThrow();
  sub_2281324D4(v5, v4, v2);
  sub_228084CF0(v5, type metadata accessor for SignpostToken);

  v45 = v0[148];
  v9 = v0[143];
  v10 = v0[142];
  v11 = v0[141];
  v12 = v0[140];
  v13 = v0[137];
  v14 = v0[136];
  v15 = v0[135];
  v16 = v0[134];
  v17 = v0[131];
  v18 = v0[130];
  v21 = v0[127];
  v22 = v0[124];
  v23 = v0[123];
  v24 = v0[122];
  v25 = v0[121];
  v26 = v0[120];
  v27 = v0[119];
  v28 = v0[117];
  v29 = v0[116];
  v30 = v0[115];
  v31 = v0[114];
  v32 = v0[111];
  v33 = v0[110];
  v34 = v0[108];
  v35 = v0[107];
  v36 = v0[106];
  v37 = v0[103];
  v38 = v0[100];
  v39 = v0[99];
  v40 = v0[98];
  v41 = v0[97];
  v42 = v0[96];
  v43 = v0[95];
  v44 = v0[94];

  v19 = v0[1];

  return v19();
}

uint64_t sub_22807392C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1224);
  v10 = *v3;
  v4[154] = a1;
  v4[155] = a2;
  v4[156] = v2;

  if (v2)
  {
    v6 = sub_2280772D4;
  }

  else
  {
    v7 = v4[152];
    v8 = v4[151];

    v6 = sub_228073A5C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228073A5C()
{
  v19 = v0;
  v1 = v0[92];
  if (v1)
  {
    v2 = v0[131];
    sub_228136F4C();
    v4 = v3 * -1000.0;
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v1 + 16));
    v18[3] = MEMORY[0x277D839F8];
    *v18 = v4;

    sub_228044BA4(v18, KeyPath, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));
  }

  v6 = v0[93];
  v7 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v0[157] = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v8 = *(v6 + v7 + 24);
  v9 = *(v6 + v7 + 32);
  __swift_project_boxed_opaque_existential_1((v6 + v7), v8);
  v10 = *(v9 + 8);
  v11 = *(v10 + 24);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[158] = v13;
  *v13 = v0;
  v13[1] = sub_228073C18;
  v14 = v0[155];
  v15 = v0[154];

  return v17(v15, v14, v8, v10);
}

uint64_t sub_228073C18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1264);
  v7 = *v2;
  *(v3 + 1272) = a1;
  *(v3 + 1280) = v1;

  if (v1)
  {
    v5 = sub_228077584;
  }

  else
  {
    v5 = sub_228073D30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228073D30()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 936);
  v169 = *(v0 + 1016);
  v174 = *(v0 + 712);
  v7 = sub_228136DBC();
  *(v0 + 1288) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  *(v0 + 1296) = v9;
  *(v0 + 1304) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v7);
  v9(v2, 1, 1, v7);
  v9(v3, 1, 1, v7);
  v9(v4, 1, 1, v7);
  v10 = sub_228138E0C();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_228138DDC();
  *(v0 + 1312) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  *(v0 + 1320) = v13;
  *(v0 + 1328) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v6, 1, 1, v11);
  v14 = MEMORY[0x277D84F90];
  sub_228138F4C();
  *(v0 + 672) = sub_227FE5558(v14);
  v15 = *(v174 + 16);
  *(v0 + 1336) = v15;
  if (!v15)
  {
    v39 = *(v0 + 1240);
    v40 = *(v0 + 904);
    v41 = *(v0 + 896);
    v42 = *(v0 + 776);

    v43 = *(v0 + 672);

    sub_228060DC0(v44, v42);

    if ((*(v40 + 48))(v42, 1, v41) == 1)
    {
      v45 = *(v0 + 776);
      v46 = &qword_27D81E950;
      v47 = &qword_22813C670;
    }

    else
    {
      v70 = *(v0 + 776);
      v71 = *(v0 + 760);
      sub_228088344(v70 + *(*(v0 + 896) + 20), v71, &qword_27D81E8C0, &unk_22813C3A0);
      sub_228084CF0(v70, type metadata accessor for SummarizationResult);
      v72 = type metadata accessor for GMSModelInfo(0);
      if ((*(*(v72 - 8) + 48))(v71, 1, v72) != 1)
      {
        v82 = *(v0 + 1272);
        v83 = *(v0 + 1144);
        v84 = *(v0 + 928);
        v85 = *(v0 + 760);
        v86 = *(v0 + 752);
        v87 = *(v0 + 1336) == 0;
        sub_22813715C();
        v88 = sub_22813713C();
        (*(*(v88 - 8) + 56))(v86, 0, 1, v88);
        v89 = swift_task_alloc();
        *(v89 + 16) = v85;
        *(v89 + 24) = v86;
        *(v89 + 32) = v82;
        *(v89 + 40) = 0;
        *(v89 + 48) = 0;
        *(v89 + 56) = v87;
        sub_228138DCC();

        sub_2280883AC(v86, &qword_27D81E778, &qword_22813BC80);
        sub_228084CF0(v85, type metadata accessor for GMSModelInfo);
        v73 = 0;
        goto LABEL_16;
      }

      v45 = *(v0 + 760);
      v46 = &qword_27D81E8C0;
      v47 = &unk_22813C3A0;
    }

    sub_2280883AC(v45, v46, v47);
    v73 = 1;
LABEL_16:
    v90 = *(v0 + 1328);
    v91 = *(v0 + 1144);
    v112 = *(v0 + 1192);
    v113 = *(v0 + 1136);
    v114 = *(v0 + 1128);
    v115 = *(v0 + 1120);
    v110 = *(v0 + 1112);
    v111 = *(v0 + 1104);
    v116 = *(v0 + 1096);
    v117 = *(v0 + 1088);
    v119 = *(v0 + 1080);
    v121 = *(v0 + 1072);
    v123 = *(v0 + 1040);
    v92 = *(v0 + 1032);
    v108 = *(v0 + 1024);
    v109 = *(v0 + 1048);
    v93 = *(v0 + 1016);
    v94 = *(v0 + 1008);
    v107 = *(v0 + 1000);
    v125 = *(v0 + 992);
    v127 = *(v0 + 984);
    v129 = *(v0 + 976);
    v131 = *(v0 + 968);
    v133 = *(v0 + 960);
    v135 = *(v0 + 952);
    v95 = *(v0 + 936);
    v96 = *(v0 + 928);
    v137 = *(v0 + 920);
    v139 = *(v0 + 912);
    v141 = *(v0 + 888);
    v143 = *(v0 + 880);
    v145 = *(v0 + 864);
    v147 = *(v0 + 856);
    v149 = *(v0 + 848);
    v151 = *(v0 + 824);
    v153 = *(v0 + 800);
    v155 = *(v0 + 792);
    v158 = *(v0 + 784);
    v161 = *(v0 + 776);
    v164 = *(v0 + 768);
    v168 = *(v0 + 760);
    v173 = *(v0 + 752);
    v97 = *(v0 + 696);
    (*(v0 + 1320))(v96, v73, 1, *(v0 + 1312));
    sub_228088344(v96, v95, &qword_27D81ECF0, &qword_22813E230);
    sub_228138F1C();
    sub_2280883AC(v96, &qword_27D81ECF0, &qword_22813E230);
    (*(v94 + 32))(v97, v93, v107);

    (*(v92 + 8))(v109, v108);
    sub_228045B70(v0 + 16);
    v112(v91, v111);

    v38 = *(v0 + 8);
    goto LABEL_17;
  }

  v16 = *(v0 + 712);
  *(v0 + 1488) = *MEMORY[0x277D0E578];
  v17 = *(v0 + 1280);
  *(v0 + 1494) = 1;
  *(v0 + 1344) = 0u;
  v18 = *(v16 + 32);
  *(v0 + 1495) = v18;
  sub_2281395DC();
  v19 = *(v0 + 1240);
  if (v17)
  {
    v20 = *(v0 + 1192);
    v21 = *(v0 + 1144);
    v22 = *(v0 + 1112);
    v23 = *(v0 + 1104);
    v24 = *(v0 + 1048);
    v25 = *(v0 + 1032);
    v26 = *(v0 + 1024);
    (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));

    v27 = *(v0 + 672);

    (*(v25 + 8))(v24, v26);
    sub_228045B70(v0 + 16);
    v20(v21, v23);
    v28 = *(v0 + 1144);
    v29 = *(v0 + 1136);
    v30 = *(v0 + 1128);
    v31 = *(v0 + 1120);
    v32 = *(v0 + 1096);
    v33 = *(v0 + 1088);
    v34 = *(v0 + 1080);
    v35 = *(v0 + 1072);
    v36 = *(v0 + 1048);
    v37 = *(v0 + 1040);
    v118 = *(v0 + 1016);
    v120 = *(v0 + 992);
    v122 = *(v0 + 984);
    v124 = *(v0 + 976);
    v126 = *(v0 + 968);
    v128 = *(v0 + 960);
    v130 = *(v0 + 952);
    v132 = *(v0 + 936);
    v134 = *(v0 + 928);
    v136 = *(v0 + 920);
    v138 = *(v0 + 912);
    v140 = *(v0 + 888);
    v142 = *(v0 + 880);
    v144 = *(v0 + 864);
    v146 = *(v0 + 856);
    v148 = *(v0 + 848);
    v150 = *(v0 + 824);
    v152 = *(v0 + 800);
    v154 = *(v0 + 792);
    v156 = *(v0 + 784);
    v159 = *(v0 + 776);
    v162 = *(v0 + 768);
    v165 = *(v0 + 760);
    v170 = *(v0 + 752);

    v38 = *(v0 + 8);
LABEL_17:

    return v38();
  }

  v48 = *(v0 + 1048);
  v49 = *(v0 + 1040);
  v50 = *(v0 + 1032);
  v51 = *(v0 + 1024);
  v52 = *(v0 + 880);
  v175 = *(v0 + 856);
  v53 = *(v0 + 840);
  v163 = *(v0 + 832);
  v166 = *(v0 + 1232);
  v157 = *(v0 + 720);
  v160 = *(v0 + 864);
  v171 = *(v0 + 1492) & 1;
  v54 = *(v0 + 704);
  sub_228136F7C();
  v55 = *(v50 + 40);
  *(v0 + 1360) = v55;
  *(v0 + 1368) = (v50 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v55(v48, v49, v51);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  DynamicType = swift_getDynamicType();
  v57 = v54[4];
  sub_22808764C(v157, v0 + 352);
  (*(v53 + 56))(v160, 1, 1, v163);
  *(v0 + 624) = v166;
  *(v0 + 632) = v19;
  *(v0 + 640) = 10;
  *(v0 + 648) = 0xE100000000000000;
  *(v0 + 656) = 4091452;
  *(v0 + 664) = 0xE300000000000000;
  sub_227FDB420();
  *v52 = sub_2281397BC();
  *(v52 + 8) = v58;
  *(v52 + 16) = DynamicType;
  *(v52 + 24) = v57;
  *(v52 + 32) = v18;
  *(v52 + 33) = v171;
  sub_22808764C(v0 + 352, v52 + 40);
  sub_228088344(v160, v175, &qword_27D81ED08, &qword_228140BA0);
  v59 = *(v53 + 48);
  v60 = v59(v175, 1, v163);
  v61 = *(v0 + 832);
  if (v60 == 1)
  {
    v62 = *(v0 + 1488);
    v172 = *(v0 + 864);
    v176 = *(v0 + 856);
    v167 = *(v0 + 848);
    v63 = *(v0 + 824);
    v64 = *(v0 + 816);
    v65 = *(v0 + 808);
    v66 = *(v0 + 800);
    v67 = *(v0 + 792);
    v68 = sub_228137A7C();
    (*(*(v68 - 8) + 56))(v63, 1, 1, v68);
    (*(v64 + 104))(v63, v62, v65);
    sub_228137AAC();
    sub_228137A0C();
    v69 = sub_228137A1C();
    (*(*(v69 - 8) + 56))(v66, 0, 1, v69);
    sub_228137A8C();
    sub_2280883AC(v172, &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    if (v59(v176, 1, v61) != 1)
    {
      sub_2280883AC(*(v0 + 856), &qword_27D81ED08, &qword_228140BA0);
    }
  }

  else
  {
    v74 = *(v0 + 856);
    v75 = *(v0 + 848);
    v76 = *(v0 + 840);
    sub_2280883AC(*(v0 + 864), &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    (*(v76 + 32))(v75, v74, v61);
  }

  v77 = *(v0 + 888);
  v78 = *(v0 + 880);
  v79 = *(v0 + 736);
  (*(*(v0 + 840) + 32))(v78 + *(*(v0 + 872) + 36), *(v0 + 848), *(v0 + 832));
  sub_2280876B0(v78, v77, type metadata accessor for SummarizationParameters);
  if (v79)
  {
    v80 = *(v0 + 736);
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v80 + 16));
    sub_228084228((v80 + 24), KeyPath, 1);
    os_unfair_lock_unlock((*(v0 + 736) + 16));
  }

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v99 = *(v0 + 888);
  v100 = *(v0 + 744);
  v101 = *(v0 + 736);
  *(v0 + 1376) = qword_2813C8B90;
  v102 = swift_task_alloc();
  *(v0 + 1384) = v102;
  v102[2] = v100;
  v102[3] = v99;
  v102[4] = v101;
  v103 = *(MEMORY[0x277D85A70] + 4);
  v104 = swift_task_alloc();
  *(v0 + 1392) = v104;
  *v104 = v0;
  v104[1] = sub_228074BE0;
  v105 = *(v0 + 1144);
  v106 = *(v0 + 912);
  v178 = *(v0 + 896);

  return MEMORY[0x282200908](v106, v105, &unk_22813E448, v102, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228074BE0()
{
  v2 = *v1;
  v3 = *(*v1 + 1392);
  v4 = *v1;
  v2[175] = v0;

  v5 = v2[173];
  if (v0)
  {
    v6 = v2[155];

    v7 = sub_228077828;
  }

  else
  {

    v7 = sub_228074D28;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_228074D28()
{
  v149 = v0;
  v1 = *(v0 + 736);
  sub_2280876B0(*(v0 + 912), *(v0 + 920), type metadata accessor for SummarizationResult);
  if (v1)
  {
    v2 = *(v0 + 1048);
    v3 = *(v0 + 736);

    sub_228078930(v4, v2);
  }

  v5 = *(v0 + 1368);
  v6 = *(v0 + 1360);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1040);
  v9 = *(v0 + 1024);
  sub_228136F7C();
  v6(v7, v8, v9);
  if (qword_2813C4960 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 1400);
  v11 = *(v0 + 1495);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 920);
  v14 = *(v0 + 720);
  v15 = *(v0 + 704);
  v16 = __swift_project_value_buffer(*(v0 + 1200), qword_2813C8978);
  sub_22808764C(v14, v0 + 392);
  sub_22808764C(v15, v0 + 432);
  v17 = swift_allocObject();
  sub_227FD0F5C((v0 + 392), v17 + 16);
  sub_227FD0F5C((v0 + 432), v17 + 56);
  *(v17 + 96) = v11;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_228087F4C;
  *(v18 + 24) = v17;

  v140 = v17;

  v143 = v16;
  sub_2281324C8(v16, v18);
  v19 = v15[3];
  v20 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v19);
  v22 = *v13;
  v21 = v13[1];
  v23 = *(v20 + 16);

  v24 = v23(v22, v21, v0 + 16, v19, v20);
  *(v0 + 1408) = v25;
  if (v10)
  {
    v26 = v10;
    v119 = *(v0 + 1240);
    v132 = *(v0 + 1144);
    v135 = *(v0 + 1192);
    v127 = *(v0 + 1112);
    v129 = *(v0 + 1104);
    v27 = *(v0 + 1088);
    v28 = *(v0 + 1032);
    v123 = *(v0 + 1024);
    v125 = *(v0 + 1048);
    v29 = *(v0 + 1008);
    v30 = *(v0 + 1000);
    v121 = *(v0 + 920);
    v115 = *(v0 + 1016);
    v117 = *(v0 + 888);

    v31 = swift_allocObject();
    v31[2] = v26;
    v31[3] = sub_228087F4C;
    v31[4] = v140;
    swift_beginAccess();
    v32 = *(v18 + 24);
    *(v18 + 16) = sub_228087F5C;
    *(v18 + 24) = v31;

    v33 = v26;

    swift_willThrow();
    sub_2281324D8(v27, v143, v18);
    sub_228084CF0(v27, type metadata accessor for SignpostToken);

    (*(v29 + 8))(v115, v30);

    sub_228084CF0(v117, type metadata accessor for SummarizationParameters);
    sub_228084CF0(v121, type metadata accessor for SummarizationResult);
    v34 = *(v0 + 672);

    (*(v28 + 8))(v125, v123);
    sub_228045B70(v0 + 16);
    v135(v132, v129);
LABEL_24:
    v76 = *(v0 + 1144);
    v77 = *(v0 + 1136);
    v78 = *(v0 + 1128);
    v79 = *(v0 + 1120);
    v80 = *(v0 + 1096);
    v81 = *(v0 + 1088);
    v82 = *(v0 + 1080);
    v83 = *(v0 + 1072);
    v84 = *(v0 + 1048);
    v85 = *(v0 + 1040);
    v103 = *(v0 + 1016);
    v104 = *(v0 + 992);
    v105 = *(v0 + 984);
    v106 = *(v0 + 976);
    v107 = *(v0 + 968);
    v108 = *(v0 + 960);
    v109 = *(v0 + 952);
    v110 = *(v0 + 936);
    v111 = *(v0 + 928);
    v112 = *(v0 + 920);
    v113 = *(v0 + 912);
    v114 = *(v0 + 888);
    v116 = *(v0 + 880);
    v118 = *(v0 + 864);
    v120 = *(v0 + 856);
    v122 = *(v0 + 848);
    v124 = *(v0 + 824);
    v126 = *(v0 + 800);
    v128 = *(v0 + 792);
    v131 = *(v0 + 784);
    v134 = *(v0 + 776);
    v137 = *(v0 + 768);
    v139 = *(v0 + 760);
    v142 = *(v0 + 752);

    v86 = *(v0 + 8);

    return v86();
  }

  v35 = v24;
  v36 = v25;
  v37 = *(v0 + 1088);

  sub_2281324D8(v37, v143, v18);
  sub_228084CF0(v37, type metadata accessor for SignpostToken);

  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    v50 = *(v0 + 1240);
    v138 = *(v0 + 1144);
    v141 = *(v0 + 1192);
    v133 = *(v0 + 1112);
    v136 = *(v0 + 1104);
    v130 = *(v0 + 1048);
    v51 = *(v0 + 1032);
    v52 = *(v0 + 1024);
    v53 = *(v0 + 1016);
    v54 = *(v0 + 1008);
    v55 = *(v0 + 1000);
    v56 = *(v0 + 920);
    v57 = *(v0 + 888);

    v58 = swift_allocObject();
    *(v58 + 16) = 27;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0;
    v59 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 974, sub_2280889A8);
    sub_227FDB3CC();
    swift_allocError();
    *v60 = 27;
    *(v60 + 8) = v59;
    swift_willThrow();
    (*(v54 + 8))(v53, v55);
    sub_228084CF0(v57, type metadata accessor for SummarizationParameters);
    sub_228084CF0(v56, type metadata accessor for SummarizationResult);
    v61 = *(v0 + 672);

    (*(v51 + 8))(v130, v52);
    sub_228045B70(v0 + 16);
    v141(v138, v136);
    goto LABEL_24;
  }

  v39 = v0 + 672;
  if (*(v0 + 736))
  {
    v40 = *(v0 + 1048);
    v41 = *(v0 + 736);

    sub_228078AE8(v42, v40);
  }

  v43 = *(v0 + 920);
  v44 = *(v0 + 904);
  v45 = *(v0 + 896);
  v46 = *(v0 + 784);
  v47 = *(v0 + 1495);

  *v43 = v35;
  v43[1] = v36;
  sub_228084B4C(v43, v46, type metadata accessor for SummarizationResult);
  (*(v44 + 56))(v46, 0, 1, v45);
  sub_228025270(v46, v47);
  if (v47 == 3)
  {
    v48 = *(v0 + 1016);
    v148[0] = 3;

    if (!sub_22809D2D0(v148))
    {
      goto LABEL_19;
    }

    v49 = *(v0 + 1016);
    *(v0 + 680) = sub_22809D4A4(v35, v36);
    swift_setAtWritableKeyPath();
  }

  else
  {
    v62 = *(v0 + 1016);
    v147 = *(v0 + 1495);

    if (!sub_22809CD84(&v147))
    {
      goto LABEL_19;
    }

    v144 = *(v0 + 1304);
    v63 = *(v0 + 1296);
    v64 = *(v0 + 1288);
    v65 = *(v0 + 1016);
    v66 = *(v0 + 992);
    v67 = *(v0 + 768);

    sub_228136DDC();
    sub_228136DCC();
    v63(v66, 0, 1, v64);
    v39 = v0 + 672;
    swift_setAtWritableKeyPath();
  }

LABEL_19:

  if (*(v0 + 1494))
  {
    v68 = (*(v0 + 744) + *(v0 + 1256));
    v69 = v68[3];
    v70 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v71 = *(v70 + 8);
    v72 = *(v71 + 24);
    v145 = (v72 + *v72);
    v73 = v72[1];
    v74 = swift_task_alloc();
    *(v0 + 1416) = v74;
    *v74 = v0;
    v74[1] = sub_228075A10;

    return v145(v35, v36, v69, v71);
  }

  else
  {

    *(v0 + 1440) = *(v0 + 1352);
    sub_2281395DC();
    v146 = v39;
    if (qword_2813C4958 != -1)
    {
      swift_once();
    }

    v87 = *(v0 + 1495);
    v88 = *(v0 + 1240);
    v89 = *(v0 + 1232);
    v90 = *(v0 + 1080);
    v91 = *(v0 + 744);
    v92 = *(v0 + 720);
    v93 = *(v0 + 704);
    v94 = __swift_project_value_buffer(*(v0 + 1200), qword_2813C8960);
    *(v0 + 1448) = v94;
    v95 = swift_allocObject();
    *(v0 + 1456) = v95;
    *(v95 + 16) = sub_228131B40;
    *(v95 + 24) = 0;

    sub_2281324C4(v94, v95);
    v96 = swift_task_alloc();
    *(v0 + 1464) = v96;
    *(v96 + 16) = v91;
    *(v96 + 24) = v89;
    *(v96 + 32) = v88;
    *(v96 + 40) = v146;
    *(v96 + 48) = v92;
    *(v96 + 56) = v93;
    *(v96 + 64) = v87;
    v97 = *(MEMORY[0x277D85A70] + 4);
    v98 = swift_task_alloc();
    *(v0 + 1472) = v98;
    *v98 = v0;
    v98[1] = sub_228076030;
    v99 = *(v0 + 1376);
    v100 = *(v0 + 1144);
    v101 = *(v0 + 952);
    v102 = *(v0 + 944);
    v151 = 999;
    v152 = v102;

    return MEMORY[0x282200908](v101, v100, &unk_22813E458, v96, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_228075A10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1416);
  v6 = *v2;
  v4[178] = v1;

  v7 = v4[176];
  if (v1)
  {
    v8 = v4[155];

    v9 = sub_228077B08;
  }

  else
  {

    v4[179] = a1;
    v9 = sub_228075B64;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_228075B64()
{
  v1 = *(v0 + 1424);
  *(v0 + 1440) = *(v0 + 1432);
  sub_2281395DC();
  if (v1)
  {
    v2 = *(v0 + 1240);
    v62 = *(v0 + 1192);
    v3 = *(v0 + 1144);
    v4 = *(v0 + 1112);
    v5 = *(v0 + 1104);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 1032);
    v8 = *(v0 + 1024);
    v9 = *(v0 + 920);
    v10 = *(v0 + 888);
    (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));

    sub_228084CF0(v10, type metadata accessor for SummarizationParameters);
    sub_228084CF0(v9, type metadata accessor for SummarizationResult);
    v11 = *(v0 + 672);

    (*(v7 + 8))(v6, v8);
    sub_228045B70(v0 + 16);
    v62(v3, v5);
    v12 = *(v0 + 1144);
    v13 = *(v0 + 1136);
    v14 = *(v0 + 1128);
    v15 = *(v0 + 1120);
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1048);
    v21 = *(v0 + 1040);
    v39 = *(v0 + 1016);
    v40 = *(v0 + 992);
    v41 = *(v0 + 984);
    v42 = *(v0 + 976);
    v43 = *(v0 + 968);
    v44 = *(v0 + 960);
    v45 = *(v0 + 952);
    v46 = *(v0 + 936);
    v47 = *(v0 + 928);
    v48 = *(v0 + 920);
    v49 = *(v0 + 912);
    v50 = *(v0 + 888);
    v51 = *(v0 + 880);
    v52 = *(v0 + 864);
    v53 = *(v0 + 856);
    v54 = *(v0 + 848);
    v55 = *(v0 + 824);
    v56 = *(v0 + 800);
    v57 = *(v0 + 792);
    v58 = *(v0 + 784);
    v59 = *(v0 + 776);
    v60 = *(v0 + 768);
    v61 = *(v0 + 760);
    v63 = *(v0 + 752);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    if (qword_2813C4958 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 1495);
    v25 = *(v0 + 1240);
    v26 = *(v0 + 1232);
    v27 = *(v0 + 1080);
    v28 = *(v0 + 744);
    v29 = *(v0 + 720);
    v30 = *(v0 + 704);
    v31 = __swift_project_value_buffer(*(v0 + 1200), qword_2813C8960);
    *(v0 + 1448) = v31;
    v32 = swift_allocObject();
    *(v0 + 1456) = v32;
    *(v32 + 16) = sub_228131B40;
    *(v32 + 24) = 0;

    sub_2281324C4(v31, v32);
    v33 = swift_task_alloc();
    *(v0 + 1464) = v33;
    *(v33 + 16) = v28;
    *(v33 + 24) = v26;
    *(v33 + 32) = v25;
    *(v33 + 40) = v0 + 672;
    *(v33 + 48) = v29;
    *(v33 + 56) = v30;
    *(v33 + 64) = v24;
    v34 = *(MEMORY[0x277D85A70] + 4);
    v35 = swift_task_alloc();
    *(v0 + 1472) = v35;
    *v35 = v0;
    v35[1] = sub_228076030;
    v36 = *(v0 + 1376);
    v37 = *(v0 + 1144);
    v38 = *(v0 + 952);
    v65 = *(v0 + 944);

    return MEMORY[0x282200908](v38, v37, &unk_22813E458, v33, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_228076030()
{
  v2 = *v1;
  v3 = *(*v1 + 1472);
  v7 = *v1;
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v4 = sub_228076EEC;
  }

  else
  {
    v5 = *(v2 + 1464);

    v4 = sub_22807614C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22807614C()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 952);
  v5 = *(v0 + 920);
  v6 = *(v0 + 888);
  v7 = *(v0 + 1344) + 1;
  sub_2281324D4(v2, *(v0 + 1448), *(v0 + 1456));
  sub_228084CF0(v2, type metadata accessor for SignpostToken);

  sub_228138EFC();
  sub_228084CF0(v6, type metadata accessor for SummarizationParameters);
  sub_228084CF0(v5, type metadata accessor for SummarizationResult);
  if (v7 == v1)
  {
    v8 = *(v0 + 1440);
    v9 = *(v0 + 1240);
    v10 = *(v0 + 904);
    v11 = *(v0 + 896);
    v12 = *(v0 + 776);

    v13 = *(v0 + 672);

    sub_228060DC0(v14, v12);

    if ((*(v10 + 48))(v12, 1, v11) == 1)
    {
      v15 = *(v0 + 776);
      v16 = &qword_27D81E950;
      v17 = &qword_22813C670;
    }

    else
    {
      v41 = *(v0 + 776);
      v42 = *(v0 + 760);
      sub_228088344(v41 + *(*(v0 + 896) + 20), v42, &qword_27D81E8C0, &unk_22813C3A0);
      sub_228084CF0(v41, type metadata accessor for SummarizationResult);
      v43 = type metadata accessor for GMSModelInfo(0);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) != 1)
      {
        v66 = *(v0 + 1272);
        v67 = *(v0 + 1144);
        v68 = *(v0 + 928);
        v69 = *(v0 + 760);
        v70 = *(v0 + 752);
        v71 = *(v0 + 1336) == 0;
        sub_22813715C();
        v72 = sub_22813713C();
        (*(*(v72 - 8) + 56))(v70, 0, 1, v72);
        v73 = swift_task_alloc();
        *(v73 + 16) = v69;
        *(v73 + 24) = v70;
        *(v73 + 32) = v66;
        *(v73 + 40) = 0;
        *(v73 + 48) = v8;
        *(v73 + 56) = v71;
        sub_228138DCC();

        sub_2280883AC(v70, &qword_27D81E778, &qword_22813BC80);
        sub_228084CF0(v69, type metadata accessor for GMSModelInfo);
        v44 = 0;
        goto LABEL_13;
      }

      v15 = *(v0 + 760);
      v16 = &qword_27D81E8C0;
      v17 = &unk_22813C3A0;
    }

    sub_2280883AC(v15, v16, v17);
    v44 = 1;
LABEL_13:
    v74 = *(v0 + 1328);
    v75 = *(v0 + 1144);
    v105 = *(v0 + 1192);
    v106 = *(v0 + 1136);
    v107 = *(v0 + 1128);
    v108 = *(v0 + 1120);
    v103 = *(v0 + 1112);
    v104 = *(v0 + 1104);
    v109 = *(v0 + 1096);
    v110 = *(v0 + 1088);
    v112 = *(v0 + 1080);
    v114 = *(v0 + 1072);
    v116 = *(v0 + 1040);
    v76 = *(v0 + 1032);
    v101 = *(v0 + 1024);
    v102 = *(v0 + 1048);
    v77 = *(v0 + 1016);
    v78 = *(v0 + 1008);
    v100 = *(v0 + 1000);
    v118 = *(v0 + 992);
    v120 = *(v0 + 984);
    v122 = *(v0 + 976);
    v124 = *(v0 + 968);
    v126 = *(v0 + 960);
    v128 = *(v0 + 952);
    v79 = *(v0 + 936);
    v80 = *(v0 + 928);
    v130 = *(v0 + 920);
    v132 = *(v0 + 912);
    v134 = *(v0 + 888);
    v136 = *(v0 + 880);
    v138 = *(v0 + 864);
    v140 = *(v0 + 856);
    v142 = *(v0 + 848);
    v144 = *(v0 + 824);
    v146 = *(v0 + 800);
    v148 = *(v0 + 792);
    v151 = *(v0 + 784);
    v154 = *(v0 + 776);
    v157 = *(v0 + 768);
    v161 = *(v0 + 760);
    v165 = *(v0 + 752);
    v81 = *(v0 + 696);
    (*(v0 + 1320))(v80, v44, 1, *(v0 + 1312));
    sub_228088344(v80, v79, &qword_27D81ECF0, &qword_22813E230);
    sub_228138F1C();
    sub_2280883AC(v80, &qword_27D81ECF0, &qword_22813E230);
    (*(v78 + 32))(v81, v77, v100);

    (*(v76 + 8))(v102, v101);
    sub_228045B70(v0 + 16);
    v105(v75, v104);

    v40 = *(v0 + 8);
    goto LABEL_14;
  }

  v18 = *(v0 + 1480);
  v19 = *(v0 + 1344) + 1;
  *(v0 + 1352) = *(v0 + 1440);
  *(v0 + 1494) = 0;
  *(v0 + 1344) = v19;
  v20 = *(*(v0 + 712) + v19 + 32);
  *(v0 + 1495) = v20;
  sub_2281395DC();
  v21 = *(v0 + 1240);
  if (v18)
  {
    v22 = *(v0 + 1192);
    v23 = *(v0 + 1144);
    v24 = *(v0 + 1112);
    v25 = *(v0 + 1104);
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1032);
    v28 = *(v0 + 1024);
    (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));

    v29 = *(v0 + 672);

    (*(v27 + 8))(v26, v28);
    sub_228045B70(v0 + 16);
    v22(v23, v25);
    v30 = *(v0 + 1144);
    v31 = *(v0 + 1136);
    v32 = *(v0 + 1128);
    v33 = *(v0 + 1120);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1048);
    v39 = *(v0 + 1040);
    v111 = *(v0 + 1016);
    v113 = *(v0 + 992);
    v115 = *(v0 + 984);
    v117 = *(v0 + 976);
    v119 = *(v0 + 968);
    v121 = *(v0 + 960);
    v123 = *(v0 + 952);
    v125 = *(v0 + 936);
    v127 = *(v0 + 928);
    v129 = *(v0 + 920);
    v131 = *(v0 + 912);
    v133 = *(v0 + 888);
    v135 = *(v0 + 880);
    v137 = *(v0 + 864);
    v139 = *(v0 + 856);
    v141 = *(v0 + 848);
    v143 = *(v0 + 824);
    v145 = *(v0 + 800);
    v147 = *(v0 + 792);
    v149 = *(v0 + 784);
    v152 = *(v0 + 776);
    v155 = *(v0 + 768);
    v158 = *(v0 + 760);
    v162 = *(v0 + 752);

    v40 = *(v0 + 8);
LABEL_14:

    return v40();
  }

  v45 = *(v0 + 1048);
  v46 = *(v0 + 1040);
  v47 = *(v0 + 1032);
  v48 = *(v0 + 1024);
  v49 = *(v0 + 880);
  v166 = *(v0 + 856);
  v50 = *(v0 + 840);
  v156 = *(v0 + 832);
  v159 = *(v0 + 1232);
  v150 = *(v0 + 720);
  v153 = *(v0 + 864);
  v163 = *(v0 + 1492) & 1;
  v51 = *(v0 + 704);
  sub_228136F7C();
  v52 = *(v47 + 40);
  *(v0 + 1360) = v52;
  *(v0 + 1368) = (v47 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v52(v45, v46, v48);
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  DynamicType = swift_getDynamicType();
  v54 = v51[4];
  sub_22808764C(v150, v0 + 352);
  (*(v50 + 56))(v153, 1, 1, v156);
  *(v0 + 624) = v159;
  *(v0 + 632) = v21;
  *(v0 + 640) = 10;
  *(v0 + 648) = 0xE100000000000000;
  *(v0 + 656) = 4091452;
  *(v0 + 664) = 0xE300000000000000;
  sub_227FDB420();
  *v49 = sub_2281397BC();
  *(v49 + 8) = v55;
  *(v49 + 16) = DynamicType;
  *(v49 + 24) = v54;
  *(v49 + 32) = v20;
  *(v49 + 33) = v163;
  sub_22808764C(v0 + 352, v49 + 40);
  sub_228088344(v153, v166, &qword_27D81ED08, &qword_228140BA0);
  v56 = *(v50 + 48);
  if (v56(v166, 1, v156) == 1)
  {
    v57 = *(v0 + 1488);
    v167 = *(v0 + 856);
    v58 = *(v0 + 848);
    v160 = *(v0 + 864);
    v164 = *(v0 + 832);
    v59 = *(v0 + 824);
    v60 = *(v0 + 816);
    v61 = *(v0 + 808);
    v62 = *(v0 + 800);
    v63 = *(v0 + 792);
    v64 = sub_228137A7C();
    (*(*(v64 - 8) + 56))(v59, 1, 1, v64);
    (*(v60 + 104))(v59, v57, v61);
    sub_228137AAC();
    sub_228137A0C();
    v65 = sub_228137A1C();
    (*(*(v65 - 8) + 56))(v62, 0, 1, v65);
    sub_228137A8C();
    sub_2280883AC(v160, &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    if (v56(v167, 1, v164) != 1)
    {
      sub_2280883AC(*(v0 + 856), &qword_27D81ED08, &qword_228140BA0);
    }
  }

  else
  {
    v83 = *(v0 + 856);
    v84 = *(v0 + 848);
    v85 = *(v0 + 840);
    v86 = *(v0 + 832);
    sub_2280883AC(*(v0 + 864), &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    (*(v85 + 32))(v84, v83, v86);
  }

  v87 = *(v0 + 888);
  v88 = *(v0 + 880);
  v89 = *(v0 + 736);
  (*(*(v0 + 840) + 32))(v88 + *(*(v0 + 872) + 36), *(v0 + 848), *(v0 + 832));
  sub_2280876B0(v88, v87, type metadata accessor for SummarizationParameters);
  if (v89)
  {
    v90 = *(v0 + 736);
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v90 + 16));
    sub_228084228((v90 + 24), KeyPath, 1);
    os_unfair_lock_unlock((*(v0 + 736) + 16));
  }

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v92 = *(v0 + 888);
  v93 = *(v0 + 744);
  v94 = *(v0 + 736);
  *(v0 + 1376) = qword_2813C8B90;
  v95 = swift_task_alloc();
  *(v0 + 1384) = v95;
  v95[2] = v93;
  v95[3] = v92;
  v95[4] = v94;
  v96 = *(MEMORY[0x277D85A70] + 4);
  v97 = swift_task_alloc();
  *(v0 + 1392) = v97;
  *v97 = v0;
  v97[1] = sub_228074BE0;
  v98 = *(v0 + 1144);
  v99 = *(v0 + 912);
  v169 = *(v0 + 896);

  return MEMORY[0x282200908](v99, v98, &unk_22813E448, v95, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228076EEC()
{
  v1 = v0[185];
  v2 = v0[183];
  v3 = v0[182];
  v4 = v0[181];
  v42 = v0[155];
  v56 = v0[143];
  v58 = v0[149];
  v52 = v0[139];
  v54 = v0[138];
  v5 = v0[135];
  v6 = v0[129];
  v48 = v0[128];
  v50 = v0[131];
  v40 = v0[127];
  v7 = v0[126];
  v8 = v0[125];
  v46 = v0[115];
  v44 = v0[111];

  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = sub_228131B40;
  v9[4] = 0;
  swift_beginAccess();
  v10 = *(v3 + 24);
  *(v3 + 16) = sub_2280889FC;
  *(v3 + 24) = v9;
  v11 = v1;

  swift_willThrow();
  sub_2281324D4(v5, v4, v3);
  sub_228084CF0(v5, type metadata accessor for SignpostToken);

  (*(v7 + 8))(v40, v8);
  sub_228084CF0(v44, type metadata accessor for SummarizationParameters);
  sub_228084CF0(v46, type metadata accessor for SummarizationResult);
  v12 = v0[84];

  (*(v6 + 8))(v50, v48);
  sub_228045B70((v0 + 2));
  v58(v56, v54);
  v59 = v0[185];
  v13 = v0[143];
  v14 = v0[142];
  v15 = v0[141];
  v16 = v0[140];
  v17 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[131];
  v22 = v0[130];
  v25 = v0[127];
  v26 = v0[124];
  v27 = v0[123];
  v28 = v0[122];
  v29 = v0[121];
  v30 = v0[120];
  v31 = v0[119];
  v32 = v0[117];
  v33 = v0[116];
  v34 = v0[115];
  v35 = v0[114];
  v36 = v0[111];
  v37 = v0[110];
  v38 = v0[108];
  v39 = v0[107];
  v41 = v0[106];
  v43 = v0[103];
  v45 = v0[100];
  v47 = v0[99];
  v49 = v0[98];
  v51 = v0[97];
  v53 = v0[96];
  v55 = v0[95];
  v57 = v0[94];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2280772D4()
{
  v1 = v0[152];
  v2 = v0[151];
  v3 = v0[149];
  v4 = v0[143];
  v5 = v0[139];
  v6 = v0[138];
  v7 = v0[131];
  v8 = v0[129];
  v9 = v0[128];

  (*(v8 + 8))(v7, v9);
  sub_228045B70((v0 + 2));
  v3(v4, v6);
  v46 = v0[156];
  v10 = v0[143];
  v11 = v0[142];
  v12 = v0[141];
  v13 = v0[140];
  v14 = v0[137];
  v15 = v0[136];
  v16 = v0[135];
  v17 = v0[134];
  v18 = v0[131];
  v19 = v0[130];
  v22 = v0[127];
  v23 = v0[124];
  v24 = v0[123];
  v25 = v0[122];
  v26 = v0[121];
  v27 = v0[120];
  v28 = v0[119];
  v29 = v0[117];
  v30 = v0[116];
  v31 = v0[115];
  v32 = v0[114];
  v33 = v0[111];
  v34 = v0[110];
  v35 = v0[108];
  v36 = v0[107];
  v37 = v0[106];
  v38 = v0[103];
  v39 = v0[100];
  v40 = v0[99];
  v41 = v0[98];
  v42 = v0[97];
  v43 = v0[96];
  v44 = v0[95];
  v45 = v0[94];

  v20 = v0[1];

  return v20();
}

uint64_t sub_228077584()
{
  v1 = v0[155];
  v2 = v0[149];
  v3 = v0[143];
  v4 = v0[139];
  v5 = v0[138];
  v6 = v0[131];
  v7 = v0[129];
  v8 = v0[128];

  (*(v7 + 8))(v6, v8);
  sub_228045B70((v0 + 2));
  v2(v3, v5);
  v45 = v0[160];
  v9 = v0[143];
  v10 = v0[142];
  v11 = v0[141];
  v12 = v0[140];
  v13 = v0[137];
  v14 = v0[136];
  v15 = v0[135];
  v16 = v0[134];
  v17 = v0[131];
  v18 = v0[130];
  v21 = v0[127];
  v22 = v0[124];
  v23 = v0[123];
  v24 = v0[122];
  v25 = v0[121];
  v26 = v0[120];
  v27 = v0[119];
  v28 = v0[117];
  v29 = v0[116];
  v30 = v0[115];
  v31 = v0[114];
  v32 = v0[111];
  v33 = v0[110];
  v34 = v0[108];
  v35 = v0[107];
  v36 = v0[106];
  v37 = v0[103];
  v38 = v0[100];
  v39 = v0[99];
  v40 = v0[98];
  v41 = v0[97];
  v42 = v0[96];
  v43 = v0[95];
  v44 = v0[94];

  v19 = v0[1];

  return v19();
}

uint64_t sub_228077828()
{
  v1 = v0[149];
  v2 = v0[143];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[131];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[111];
  (*(v0[126] + 8))(v0[127], v0[125]);
  sub_228084CF0(v8, type metadata accessor for SummarizationParameters);
  v9 = v0[84];

  (*(v6 + 8))(v5, v7);
  sub_228045B70((v0 + 2));
  v1(v2, v4);
  v46 = v0[175];
  v10 = v0[143];
  v11 = v0[142];
  v12 = v0[141];
  v13 = v0[140];
  v14 = v0[137];
  v15 = v0[136];
  v16 = v0[135];
  v17 = v0[134];
  v18 = v0[131];
  v19 = v0[130];
  v22 = v0[127];
  v23 = v0[124];
  v24 = v0[123];
  v25 = v0[122];
  v26 = v0[121];
  v27 = v0[120];
  v28 = v0[119];
  v29 = v0[117];
  v30 = v0[116];
  v31 = v0[115];
  v32 = v0[114];
  v33 = v0[111];
  v34 = v0[110];
  v35 = v0[108];
  v36 = v0[107];
  v37 = v0[106];
  v38 = v0[103];
  v39 = v0[100];
  v40 = v0[99];
  v41 = v0[98];
  v42 = v0[97];
  v43 = v0[96];
  v44 = v0[95];
  v45 = v0[94];

  v20 = v0[1];

  return v20();
}

uint64_t sub_228077B08()
{
  v1 = v0[149];
  v2 = v0[143];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[131];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[115];
  v9 = v0[111];
  (*(v0[126] + 8))(v0[127], v0[125]);
  sub_228084CF0(v9, type metadata accessor for SummarizationParameters);
  sub_228084CF0(v8, type metadata accessor for SummarizationResult);
  v10 = v0[84];

  (*(v6 + 8))(v5, v7);
  sub_228045B70((v0 + 2));
  v1(v2, v4);
  v47 = v0[178];
  v11 = v0[143];
  v12 = v0[142];
  v13 = v0[141];
  v14 = v0[140];
  v15 = v0[137];
  v16 = v0[136];
  v17 = v0[135];
  v18 = v0[134];
  v19 = v0[131];
  v20 = v0[130];
  v23 = v0[127];
  v24 = v0[124];
  v25 = v0[123];
  v26 = v0[122];
  v27 = v0[121];
  v28 = v0[120];
  v29 = v0[119];
  v30 = v0[117];
  v31 = v0[116];
  v32 = v0[115];
  v33 = v0[114];
  v34 = v0[111];
  v35 = v0[110];
  v36 = v0[108];
  v37 = v0[107];
  v38 = v0[106];
  v39 = v0[103];
  v40 = v0[100];
  v41 = v0[99];
  v42 = v0[98];
  v43 = v0[97];
  v44 = v0[96];
  v45 = v0[95];
  v46 = v0[94];

  v21 = v0[1];

  return v21();
}

uint64_t sub_228077E08(void *a1, void *a2, uint64_t a3)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  MEMORY[0x22AAB1970](v8);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v9 = sub_228139B8C();
  MEMORY[0x22AAB1970](v9);

  MEMORY[0x22AAB1970](0x73656C797473202CLL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC68, &qword_22813DF38);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22813A4B0;
  *(v10 + 32) = a3;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
  v12 = MEMORY[0x22AAB1AD0](v10, v11);
  v14 = v13;

  MEMORY[0x22AAB1970](v12, v14);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return 0;
}

uint64_t sub_228077FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_228078020, 0, 0);
}

uint64_t sub_228078020()
{
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = *(MEMORY[0x277D85A70] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_22807815C;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x282200908](v4, v5, &unk_22813E468, v1, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_22807815C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228078298, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_228078298()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2280782FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_228078320, 0, 0);
}

uint64_t sub_228078320()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_22807844C;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_22807844C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2280785A8, 0, 0);
  }
}

uint64_t sub_2280785A8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 56);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2280785CC(void *a1, void *a2)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v7 = sub_228139B8C();
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0x3A656C797473202CLL, 0xE900000000000020);
  sub_2281398EC();
  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return 0;
}

uint64_t sub_228078764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_228078788, 0, 0);
}

uint64_t sub_228078788()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), *(v0[3] + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22807883C;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];

  return sub_2280AC738(v5, v3, v4);
}

uint64_t sub_22807883C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_228078930(uint64_t a1, uint64_t a2)
{
  v4 = sub_228136F8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  sub_2280D2D28((a1 + 24), KeyPath);
  v12 = v11;
  os_unfair_lock_unlock((a1 + 16));

  if (v12)
  {
    (*(v5 + 16))(v9, a2, v4);
    sub_228136F4C();
    v15 = v14;
    (*(v5 + 8))(v9, v4);
    v16 = swift_getKeyPath();
    os_unfair_lock_lock((a1 + 16));
    *&v18[3] = MEMORY[0x277D839F8];
    v18[0] = v15 * -1000.0;

    sub_228044BA4(v18, v16, (a1 + 24));
    os_unfair_lock_unlock((a1 + 16));
  }

  return result;
}

uint64_t sub_228078AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_228136F8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  sub_2280D2D28((a1 + 24), KeyPath);
  v12 = v11;
  os_unfair_lock_unlock((a1 + 16));

  if (v12)
  {
    (*(v5 + 16))(v9, a2, v4);
    sub_228136F4C();
    v14 = v13;
    (*(v5 + 8))(v9, v4);
    v15 = swift_getKeyPath();
    os_unfair_lock_lock((a1 + 16));
    v24 = MEMORY[0x277D839F8];
    v23[0] = v14 * -1000.0;

    sub_228044BA4(v23, v15, (a1 + 24));
    os_unfair_lock_unlock((a1 + 16));
  }

  v16 = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  sub_2280D2D08((a1 + 24), v16);
  v18 = v17;
  os_unfair_lock_unlock((a1 + 16));

  if (v18)
  {
    v20 = sub_22813936C();
    v21 = swift_getKeyPath();
    os_unfair_lock_lock((a1 + 16));
    v24 = MEMORY[0x277D84A28];
    *&v23[0] = v20;

    sub_2280449E4(v23, v21, (a1 + 24));
    os_unfair_lock_unlock((a1 + 16));
  }

  return result;
}

uint64_t sub_228078D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 97) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_228078D80, 0, 0);
}

uint64_t sub_228078D80()
{
  if (*(*(v0 + 24) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext))
  {
    v1 = *(v0 + 97);
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    v4 = *v3;
    *(v0 + 72) = *v3;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    DynamicType = swift_getDynamicType();
    v6 = v2[4];
    *(v0 + 96) = v1;

    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_228078F24;
    v8 = *(v0 + 56);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 16);

    return sub_228059EDC(v11, v9, v10, v4, v8, DynamicType, v6, (v0 + 96));
  }

  else
  {
    v13 = *(v0 + 16);
    v14 = sub_228138E0C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_228078F24()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228079074, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_22807908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[62] = a6;
  v7[63] = a7;
  v7[60] = a4;
  v7[61] = a5;
  v7[58] = a2;
  v7[59] = a3;
  v8 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v7[64] = v8;
  v9 = *(v8 - 8);
  v7[65] = v9;
  v10 = *(v9 + 64) + 15;
  v7[66] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E948, &qword_22813E1F0) - 8) + 64) + 15;
  v7[67] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD8, &qword_22813E1F8);
  v7[68] = v12;
  v13 = *(v12 - 8);
  v7[69] = v13;
  v14 = *(v13 + 64) + 15;
  v7[70] = swift_task_alloc();
  v15 = *(type metadata accessor for PartialSummariesOperation(0) - 8);
  v7[71] = v15;
  v7[72] = *(v15 + 64);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90) - 8) + 64) + 15;
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0) - 8) + 64) + 15;
  v7[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280792F4, 0, 0);
}

uint64_t sub_2280792F4()
{
  v83 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 472);
  v3 = type metadata accessor for PartialSummariesOperation.AccumulatedSafetyClassification(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v0 + 640) = v6;
  v75 = v6;
  v7 = (v6 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification);
  v8 = sub_228138E0C();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  *v7 = 0;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8) + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECE0, &qword_22813E200);
  bzero(v7 + v9, *(*(v10 - 8) + 64));
  sub_228085C84(v1, v7 + v9, &qword_27D81EC98, &qword_22813E0D0);
  v11 = *(v2 + 48);
  v12 = *(v11 + 16);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECE8, &qword_22813E220);
    v13 = swift_allocObject();
    v13[2] = (_swift_stdlib_malloc_size_2(v13) - 40) / 40;
    v13[3] = 0;
    v13[4] = 0;
    sub_22808495C((v13 + 2), (v13 + 5), v12, v11);
  }

  else
  {

    v13 = *sub_228137CBC();
  }

  *(v0 + 416) = v13;
  *(v0 + 424) = sub_227FE573C(MEMORY[0x277D84F90]);
  *(v0 + 432) = 0;
  v14 = objc_opt_self();
  *(v0 + 648) = v14;
  ObjectType = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v16 = byte_2813C4629;
    *(v0 + 720) = byte_2813C4629;
    v80 = v13;
    if (v16 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v17 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v17 = &qword_2813C76F8;
    }

    v18 = *(*v17 + 1800);
    v19 = *(*v17 + 1808);
    v20 = *(*v17 + 1816);
    v21 = *(*v17 + 1824);
    v22 = *(*v17 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    ObjectType = byte_2813C4638;
    *(v0 + 721) = byte_2813C4638;
    if (ObjectType == 1)
    {
      v20(v82, v22);

      if (v82[0])
      {
        goto LABEL_16;
      }
    }

    else
    {

      if (v19)
      {
LABEL_16:
        v23 = 1;
        goto LABEL_28;
      }
    }

    if (v16)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v24 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v24 = &qword_2813C76F8;
    }

    v25 = *(*v24 + 1760);
    v23 = *(*v24 + 1768);
    v26 = *(*v24 + 1776);
    v27 = *(*v24 + 1784);
    v28 = *(*v24 + 2208);

    if (ObjectType)
    {
      v26(v82, v28);

      v23 = v82[0];
    }

    else
    {
    }

LABEL_28:
    v13 = v80;
    v29 = *__swift_project_boxed_opaque_existential_1(*(v0 + 488), *(*(v0 + 488) + 24));
    v30 = type metadata accessor for GMSSummarizationModelEngine(0);
    *(v0 + 656) = v30;
    *(v0 + 120) = v30;
    *(v0 + 128) = &off_283B5E840;
    *(v0 + 96) = v29;

    v31 = *(v0 + 576);
    if (v23 <= 0)
    {
      break;
    }

    v32 = v31 + 7;
    v72 = (v0 + 288);
    v73 = *(v0 + 568);
    v74 = v31 + 7;
    while (1)
    {
      swift_beginAccess();
      if (v13[3] < 1)
      {
        swift_endAccess();
        goto LABEL_50;
      }

      v36 = *(v0 + 416);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2280849CC();
      }

      v37 = *(v0 + 416);
      v38 = v37[4];
      v39 = &v37[5 * v38];
      v40 = v39[9];
      v41 = *(v39 + 7);
      *(v0 + 56) = *(v39 + 5);
      *(v0 + 72) = v41;
      *(v0 + 88) = v40;
      v42 = __OFADD__(v38, 1);
      v43 = v38 + 1;
      if (v42)
      {
        break;
      }

      v44 = v37[3];
      if (v43 >= v37[2])
      {
        v43 = 0;
      }

      v37[4] = v43;
      if (__OFSUB__(v44, 1))
      {
        goto LABEL_54;
      }

      v45 = *(v0 + 624);
      v78 = *(v0 + 616);
      v79 = v23;
      v46 = *(v0 + 592);
      v47 = *(v0 + 472);
      v76 = v45;
      v77 = *(v0 + 480);
      v81 = v37;
      v37[3] = v44 - 1;
      swift_endAccess();
      ObjectType = sub_22813959C();
      v48 = *(ObjectType - 8);
      (*(v48 + 56))(v45, 1, 1, ObjectType);
      sub_228084B4C(v47, v46, type metadata accessor for PartialSummariesOperation);
      sub_22808764C(v0 + 96, v0 + 216);
      v49 = (*(v73 + 80) + 72) & ~*(v73 + 80);
      v50 = (v49 + v32) & 0xFFFFFFFFFFFFFFF8;
      v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      v53 = (v52 + 16);
      *(v52 + 24) = 0;
      v54 = *(v0 + 72);
      *(v52 + 32) = *(v0 + 56);
      *(v52 + 48) = v54;
      *(v52 + 64) = *(v0 + 88);
      sub_2280876B0(v46, v52 + v49, type metadata accessor for PartialSummariesOperation);
      *(v52 + v50) = v75;
      *(v52 + v51) = v77;
      sub_227FD0F5C((v0 + 216), v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_228088344(v76, v78, &qword_27D81E788, &unk_22813BC90);
      LODWORD(v46) = (*(v48 + 48))(v78, 1, ObjectType);

      v55 = *(v0 + 616);
      if (v46 == 1)
      {
        sub_2280883AC(*(v0 + 616), &qword_27D81E788, &unk_22813BC90);
      }

      else
      {
        sub_22813958C();
        (*(v48 + 8))(v55, ObjectType);
      }

      if (*v53)
      {
        v56 = *(v52 + 24);
        v57 = *v53;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v58 = sub_22813957C();
        v60 = v59;
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v61 = **(v0 + 464);
      v14 = (v60 | v58);

      if (v60 | v58)
      {
        v33 = v0 + 288;
        *v72 = 0;
        *(v0 + 296) = 0;
        *(v0 + 304) = v58;
        *(v0 + 312) = v60;
      }

      else
      {
        v33 = 0;
      }

      v23 = v79 - 1;
      v34 = *(v0 + 624);
      v35 = *(v0 + 512);
      *(v0 + 392) = 1;
      *(v0 + 400) = v33;
      *(v0 + 408) = v61;
      swift_task_create();

      sub_2280883AC(v34, &qword_27D81E788, &unk_22813BC90);
      v13 = v81;
      v32 = v74;
      if (v79 <= 1)
      {
        v23 = 0;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v32 = v31 + 7;
LABEL_50:
  *(v0 + 664) = v32;
  v62 = *(v0 + 560);
  v63 = *(v0 + 512);
  v64 = *(v0 + 464);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 96));
  v65 = MEMORY[0x277D84F90];
  *(v0 + 440) = MEMORY[0x277D84F90];
  *(v0 + 672) = *v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  sub_2281395EC();
  *(v0 + 704) = v13;
  *(v0 + 696) = v13;
  *(v0 + 688) = v65;
  *(v0 + 680) = v23;
  v66 = *(MEMORY[0x277D85828] + 4);
  v67 = swift_task_alloc();
  *(v0 + 712) = v67;
  *v67 = v0;
  v67[1] = sub_228079CA4;
  v68 = *(v0 + 560);
  v69 = *(v0 + 544);
  v70 = *(v0 + 536);

  return MEMORY[0x2822004E8](v70, 0, 0, v69, v0 + 448);
}

uint64_t sub_228079CA4()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 688);
    v5 = *(v2 + 424);

    v6 = sub_22807A7D8;
  }

  else
  {
    v6 = sub_228079DC8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_228079DC8()
{
  v101 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 512);
  if ((*(*(v0 + 520) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 696);
    (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
    v4 = *(v0 + 424);

    if (*(v3 + 24))
    {
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 584);
      v6 = *(v0 + 472);
      v7 = sub_22813882C();
      __swift_project_value_buffer(v7, qword_2813C8A20);
      sub_228084B4C(v6, v5, type metadata accessor for PartialSummariesOperation);
      v8 = sub_22813880C();
      v9 = sub_2281396EC();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 584);
      if (v10)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v100 = v13;
        *v12 = 136446466;
        v14 = v11[3];
        v15 = v11[4];
        __swift_project_boxed_opaque_existential_1(v11, v14);
        v16 = (*(v15 + 16))(v14, v15);
        v18 = v17;
        sub_228084CF0(v11, type metadata accessor for PartialSummariesOperation);
        v19 = sub_227FCC340(v16, v18, &v100);

        *(v12 + 4) = v19;
        *(v12 + 12) = 2050;
        *(v12 + 14) = *(v3 + 24);
        _os_log_impl(&dword_227FC3000, v8, v9, "Exited task group for [requestIdentifier: %{public}s] without processing all input; %{public}ld chunks remaining.", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v13);
        MEMORY[0x22AAB28A0](v13, -1, -1);
        MEMORY[0x22AAB28A0](v12, -1, -1);
      }

      else
      {

        sub_228084CF0(v11, type metadata accessor for PartialSummariesOperation);
      }
    }

    v33 = *(v0 + 696);
    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);
    v37 = *(v0 + 616);
    v38 = *(v0 + 608);
    v39 = *(v0 + 600);
    v40 = *(v0 + 592);
    v92 = *(v0 + 584);
    v94 = *(v0 + 560);
    v96 = *(v0 + 536);
    v98 = *(v0 + 528);
    sub_228086458(*(*(v0 + 472) + 40), *(v0 + 688));

    v41 = *(v0 + 8);

    return v41();
  }

  v20 = *(v0 + 640);
  v21 = *(v0 + 528);
  v23 = *(v0 + 496);
  v22 = *(v0 + 504);
  v24 = *(v0 + 472);
  sub_2280876B0(v1, v21, type metadata accessor for PartialSummariesOperation.TaskResult);
  sub_228082E64(v21, v20, (v0 + 424), v24, (v0 + 432), v23, v22);
  v25 = *(v21 + *(v2 + 24));

  MEMORY[0x22AAB1AA0](v26);
  if (*((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 440) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_53;
  }

LABEL_8:
  v27 = *(v0 + 680);
  v28 = *(v0 + 528);
  sub_22813955C();
  v89 = *(v0 + 440);
  if (*v28 | v27)
  {
    v29 = *(v0 + 680);
    v30 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v31 = *(v0 + 720);

  if (v31 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v32 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v32 = &qword_2813C76F8;
  }

  v43 = *(v0 + 721);
  v44 = *(v0 + 648);
  v45 = *(*v32 + 1760);
  v30 = *(*v32 + 1768);
  v46 = *(*v32 + 1776);
  v47 = *(*v32 + 1784);
  v48 = *(*v32 + 2208);

  if (v43 == 1)
  {
    v46(v48);

    v30 = *(v0 + 456);
  }

  else
  {
  }

LABEL_26:
  v49 = *(v0 + 656);
  v50 = *__swift_project_boxed_opaque_existential_1(*(v0 + 488), *(*(v0 + 488) + 24));
  *(v0 + 160) = v49;
  *(v0 + 168) = &off_283B5E840;
  *(v0 + 136) = v50;

  v51 = *(v0 + 704);
  if (v30 > 0)
  {
    while (1)
    {
      swift_beginAccess();
      if (v51[3] < 1)
      {
        swift_endAccess();
LABEL_47:
        v83 = v51;
        goto LABEL_48;
      }

      v56 = *(v0 + 416);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2280849CC();
      }

      v57 = *(v0 + 416);
      v58 = v57[4];
      v59 = &v57[5 * v58];
      v60 = v59[9];
      v61 = *(v59 + 7);
      *(v0 + 16) = *(v59 + 5);
      *(v0 + 32) = v61;
      *(v0 + 48) = v60;
      v62 = __OFADD__(v58, 1);
      v63 = v58 + 1;
      if (v62)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_22813953C();
        goto LABEL_8;
      }

      v64 = v57[3];
      if (v63 >= v57[2])
      {
        v63 = 0;
      }

      v57[4] = v63;
      if (__OFSUB__(v64, 1))
      {
        goto LABEL_52;
      }

      v97 = v57;
      v99 = v30;
      v65 = *(v0 + 664);
      v66 = *(v0 + 608);
      v93 = *(v0 + 640);
      v95 = *(v0 + 600);
      v67 = *(v0 + 592);
      v68 = *(v0 + 568);
      v69 = *(v0 + 472);
      v91 = *(v0 + 480);
      v57[3] = v64 - 1;
      swift_endAccess();
      v70 = sub_22813959C();
      v90 = *(v70 - 8);
      (*(v90 + 56))(v66, 1, 1, v70);
      sub_228084B4C(v69, v67, type metadata accessor for PartialSummariesOperation);
      sub_22808764C(v0 + 136, v0 + 176);
      v71 = (*(v68 + 80) + 72) & ~*(v68 + 80);
      v72 = (v71 + v65) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      *(v74 + 16) = 0;
      v75 = (v74 + 16);
      *(v74 + 24) = 0;
      v76 = *(v0 + 32);
      *(v74 + 32) = *(v0 + 16);
      *(v74 + 48) = v76;
      *(v74 + 64) = *(v0 + 48);
      sub_2280876B0(v67, v74 + v71, type metadata accessor for PartialSummariesOperation);
      *(v74 + v72) = v93;
      *(v74 + v73) = v91;
      sub_227FD0F5C((v0 + 176), v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_228088344(v66, v95, &qword_27D81E788, &unk_22813BC90);
      LODWORD(v67) = (*(v90 + 48))(v95, 1, v70);

      v77 = *(v0 + 600);
      if (v67 == 1)
      {
        sub_2280883AC(*(v0 + 600), &qword_27D81E788, &unk_22813BC90);
        v78 = v99;
        if (!*v75)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_22813958C();
        (*(v90 + 8))(v77, v70);
        v78 = v99;
        if (!*v75)
        {
LABEL_41:
          v80 = 0;
          v82 = 0;
          goto LABEL_42;
        }
      }

      v79 = *(v74 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v80 = sub_22813957C();
      v82 = v81;
      swift_unknownObjectRelease();
LABEL_42:
      v51 = v97;

      if (v82 | v80)
      {
        v52 = v0 + 256;
        *(v0 + 256) = 0;
        *(v0 + 264) = 0;
        *(v0 + 272) = v80;
        *(v0 + 280) = v82;
      }

      else
      {
        v52 = 0;
      }

      v30 = v78 - 1;
      v53 = *(v0 + 672);
      v54 = *(v0 + 608);
      v55 = *(v0 + 512);
      *(v0 + 344) = 1;
      *(v0 + 352) = v52;
      *(v0 + 360) = v53;
      swift_task_create();

      sub_2280883AC(v54, &qword_27D81E788, &unk_22813BC90);
      if ((v30 + 1) <= 1)
      {
        v30 = 0;
        goto LABEL_47;
      }
    }
  }

  v83 = *(v0 + 696);
LABEL_48:
  sub_228084CF0(*(v0 + 528), type metadata accessor for PartialSummariesOperation.TaskResult);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 136));
  *(v0 + 704) = v51;
  *(v0 + 696) = v83;
  *(v0 + 688) = v89;
  *(v0 + 680) = v30;
  v84 = *(MEMORY[0x277D85828] + 4);
  v85 = swift_task_alloc();
  *(v0 + 712) = v85;
  *v85 = v0;
  v85[1] = sub_228079CA4;
  v86 = *(v0 + 560);
  v87 = *(v0 + 544);
  v88 = *(v0 + 536);

  return MEMORY[0x2822004E8](v88, 0, 0, v87, v0 + 448);
}

uint64_t sub_22807A7D8()
{
  v1 = v0[87];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  v14 = v0[74];
  v15 = v0[73];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[68];
  v16 = v0[67];
  v17 = v0[66];

  (*(v9 + 8))(v8, v10);

  v11 = v0[56];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22807A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  v9 = *(*(type metadata accessor for PartialSummariesOperation(0) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v10 = sub_22813882C();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v12 = *(v11 + 64) + 15;
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22807A9FC, 0, 0);
}

uint64_t sub_22807A9FC()
{
  v33 = v0;
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v1 = __swift_project_value_buffer(*(v0 + 136), qword_2813C8A20);
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v1 = __swift_project_value_buffer(*(v0 + 136), qword_2813C4990);
  }

  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(*(v0 + 144) + 16))(*(v0 + 152), v1, *(v0 + 136));
  *(v0 + 16) = *(v4 + 8);
  *(v0 + 32) = *(v4 + 24);
  sub_228084B4C(v3, v2, type metadata accessor for PartialSummariesOperation);
  sub_228087AFC(v0 + 16, v0 + 48);
  sub_228087AFC(v0 + 32, v0 + 64);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    result = swift_slowAlloc();
    v32 = result;
    *v8 = 134349314;
    if (__OFADD__(*v7, 1))
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v30 = *(v0 + 136);
    v31 = *(v0 + 152);
    *(v8 + 4) = *v7 + 1;
    sub_227FE5D7C(v0 + 16);
    sub_227FE5D7C(v0 + 32);
    *(v8 + 12) = 2082;
    v14 = v12[3];
    v13 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v14);
    v15 = (*(v13 + 16))(v14, v13);
    v17 = v16;
    sub_228084CF0(v12, type metadata accessor for PartialSummariesOperation);
    v18 = sub_227FCC340(v15, v17, &v32);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_227FC3000, v5, v6, "Adding task for chunk %{public}ld for [requestIdentifier: %{public}s]", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v10);
    MEMORY[0x22AAB28A0](v10, -1, -1);
    MEMORY[0x22AAB28A0](v8, -1, -1);

    (*(v11 + 8))(v31, v30);
  }

  else
  {
    v20 = *(v0 + 144);
    v19 = *(v0 + 152);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    sub_227FE5D7C(v0 + 16);
    sub_227FE5D7C(v0 + 32);

    (*(v20 + 8))(v19, v21);
    sub_228084CF0(v22, type metadata accessor for PartialSummariesOperation);
  }

  v23 = swift_task_alloc();
  *(v0 + 160) = v23;
  *v23 = v0;
  v23[1] = sub_22807ADA4;
  v24 = *(v0 + 112);
  v25 = *(v0 + 120);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);

  return sub_22807AED8(v28, v29, v26, v24, v25);
}

uint64_t sub_22807ADA4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 128);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22807AED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[78] = v5;
  v6[77] = a5;
  v6[76] = a4;
  v6[75] = a3;
  v6[74] = a2;
  v6[73] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  v6[79] = swift_task_alloc();
  v8 = sub_2281386AC();
  v6[80] = v8;
  v9 = *(v8 - 8);
  v6[81] = v9;
  v10 = *(v9 + 64) + 15;
  v6[82] = swift_task_alloc();
  v11 = sub_2281385BC();
  v6[83] = v11;
  v12 = *(v11 - 8);
  v6[84] = v12;
  v13 = *(v12 + 64) + 15;
  v6[85] = swift_task_alloc();
  v14 = sub_2281386DC();
  v6[86] = v14;
  v15 = *(v14 - 8);
  v6[87] = v15;
  v16 = *(v15 + 64) + 15;
  v6[88] = swift_task_alloc();
  v17 = sub_2281386CC();
  v6[89] = v17;
  v18 = *(v17 - 8);
  v6[90] = v18;
  v19 = *(v18 + 64) + 15;
  v6[91] = swift_task_alloc();
  v20 = sub_2281386FC();
  v6[92] = v20;
  v21 = *(v20 - 8);
  v6[93] = v21;
  v22 = *(v21 + 64) + 15;
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v23 = sub_22813757C();
  v6[96] = v23;
  v24 = *(v23 - 8);
  v6[97] = v24;
  v25 = *(v24 + 64) + 15;
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v6[100] = swift_task_alloc();
  v26 = type metadata accessor for ModelBundleIdentifier();
  v6[101] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v6[102] = swift_task_alloc();
  v28 = sub_228138F9C();
  v6[103] = v28;
  v29 = *(v28 - 8);
  v6[104] = v29;
  v30 = *(v29 + 64) + 15;
  v6[105] = swift_task_alloc();
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0) - 8) + 64) + 15;
  v6[110] = swift_task_alloc();
  v6[111] = swift_task_alloc();
  v32 = sub_228138E0C();
  v6[112] = v32;
  v33 = *(v32 - 8);
  v6[113] = v33;
  v34 = *(v33 + 64) + 15;
  v6[114] = swift_task_alloc();
  v35 = *(*(type metadata accessor for PartialSummariesOperation(0) - 8) + 64) + 15;
  v6[115] = swift_task_alloc();
  v6[116] = swift_task_alloc();
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  v36 = sub_22813882C();
  v6[121] = v36;
  v37 = *(v36 - 8);
  v6[122] = v37;
  v38 = *(v37 + 64) + 15;
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0) - 8) + 64) + 15;
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22807B450, 0, 0);
}

uint64_t sub_22807B450()
{
  v62 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v57 = **(v0 + 592);
  v59 = *(v0 + 1000);
  *(v0 + 1024) = v57;
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v3 = sub_2280D5C74();
  *(v0 + 1032) = v3;
  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);

  *(v3 + 24) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock((v3 + 16));
  sub_228136F6C();
  v5 = sub_228136F8C();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v1, 0, 1, v5);
  KeyPath = swift_getKeyPath();
  sub_228088344(v1, v2, &qword_27D81EC50, &unk_228140BB0);
  os_unfair_lock_lock((v3 + 16));
  sub_228088344(v2, v59, &qword_27D81EC50, &unk_228140BB0);
  v8 = (*(v6 + 48))(v59, 1, v5);
  v9 = *(v0 + 1000);
  if (v8 == 1)
  {

    sub_2280883AC(v9, &qword_27D81EC50, &unk_228140BB0);
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
  }

  else
  {
    *(v0 + 488) = v5;
    boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 464));
    (*(v6 + 32))(boxed_opaque_existential_0Tm_0, v9, v5);
  }

  v11 = *(v0 + 1016);
  v12 = *(v0 + 1008);
  sub_228044D20(v0 + 464, KeyPath, (v3 + 24));
  os_unfair_lock_unlock((v3 + 16));

  sub_2280883AC(v11, &qword_27D81EC50, &unk_228140BB0);
  sub_2280883AC(v12, &qword_27D81EC50, &unk_228140BB0);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(*(v0 + 968), qword_2813C8A20);
  *(v0 + 1040) = v13;
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  v14 = byte_2813C49C1;
  *(v0 + 1300) = byte_2813C49C1;
  if ((v14 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
  }

  v15 = *(v0 + 992);
  v16 = *(v0 + 968);
  v17 = *(v0 + 960);
  v18 = *(v0 + 952);
  v19 = *(v0 + 624);
  v20 = *(*(v0 + 976) + 16);
  *(v0 + 1048) = v20;
  v20(v15, v13, v16);
  sub_228084B4C(v19, v17, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v19, v18, type metadata accessor for PartialSummariesOperation);
  v21 = sub_22813880C();
  v22 = sub_2281396CC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    result = swift_slowAlloc();
    v61 = result;
    *v23 = 134349570;
    v25 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      return result;
    }

    v26 = result;
    v56 = *(v0 + 976);
    v58 = *(v0 + 968);
    v60 = *(v0 + 992);
    v27 = *(v0 + 960);
    v28 = *(v0 + 952);
    *(v23 + 4) = v25;
    *(v23 + 12) = 2050;
    v29 = *(*(v27 + 48) + 16);
    sub_228084CF0(v27, type metadata accessor for PartialSummariesOperation);
    *(v23 + 14) = v29;
    *(v23 + 22) = 2082;
    v30 = v28[3];
    v31 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v30);
    v32 = (*(v31 + 16))(v30, v31);
    v34 = v33;
    sub_228084CF0(v28, type metadata accessor for PartialSummariesOperation);
    v35 = sub_227FCC340(v32, v34, &v61);

    *(v23 + 24) = v35;
    _os_log_impl(&dword_227FC3000, v21, v22, "Started summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v23, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
    MEMORY[0x22AAB28A0](v26, -1, -1);
    MEMORY[0x22AAB28A0](v23, -1, -1);

    v36 = *(v56 + 8);
    v36(v60, v58);
  }

  else
  {
    v37 = *(v0 + 992);
    v38 = *(v0 + 976);
    v39 = *(v0 + 968);
    v40 = *(v0 + 952);
    sub_228084CF0(*(v0 + 960), type metadata accessor for PartialSummariesOperation);

    v36 = *(v38 + 8);
    v36(v37, v39);
    sub_228084CF0(v40, type metadata accessor for PartialSummariesOperation);
  }

  *(v0 + 1056) = v36;
  v41 = *(v0 + 904);
  v42 = *(v0 + 896);
  v43 = *(v0 + 888);
  v44 = (*(v0 + 600) + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification);
  os_unfair_lock_lock(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8);
  sub_228088344(v44 + *(v45 + 28), v43, &qword_27D81EC98, &qword_22813E0D0);
  if ((*(v41 + 48))(v43, 1, v42) == 1)
  {
    sub_2280883AC(*(v0 + 888), &qword_27D81EC98, &qword_22813E0D0);
    v46 = 0;
  }

  else
  {
    v47 = *(v0 + 912);
    v48 = *(v0 + 904);
    v49 = *(v0 + 896);
    (*(v48 + 32))(v47, *(v0 + 888), v49);
    v50 = sub_228138DFC();
    (*(v48 + 8))(v47, v49);
    v46 = v50 ^ 1;
  }

  *(v0 + 1301) = v46 & 1;
  v51 = *(v0 + 624);
  v52 = *(v0 + 616);
  v53 = *(v0 + 592);
  os_unfair_lock_unlock(v44);
  *(v0 + 1064) = *(v53 + 8);
  *(v0 + 1072) = *(v53 + 16);
  sub_22808764C(v51, v0 + 64);
  v54 = *__swift_project_boxed_opaque_existential_1(v52, v52[3]);
  v55 = swift_task_alloc();
  *(v0 + 1080) = v55;
  *v55 = v0;
  v55[1] = sub_22807BB44;

  return sub_2280AC248();
}

uint64_t sub_22807BB44(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[135];
  v7 = *v2;
  v3[136] = a1;
  v3[137] = v1;

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_7(v3 + 8);
    v5 = sub_22807BED8;
  }

  else
  {
    v5 = sub_22807BC64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22807BC64()
{
  v1 = v0[76];
  v2 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v0[138] = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v5 = *(v4 + 8);
  v6 = *(v5 + 24);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[139] = v8;
  *v8 = v0;
  v8[1] = sub_22807BDA8;
  v9 = v0[134];
  v10 = v0[133];

  return v12(v10, v9, v3, v5);
}

uint64_t sub_22807BDA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1112);
  v6 = *v2;
  *(*v2 + 1120) = v1;

  if (v1)
  {

    v7 = sub_22807D3D0;
  }

  else
  {
    *(v4 + 1128) = a1;
    v7 = sub_22807C340;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22807BED8()
{
  v59 = v0;
  v1 = v0[137];
  v2 = v0[130];
  v3 = v0[115];
  v4 = v0[78];
  sub_228084B4C(v4, v0[116], type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v4, v3, type metadata accessor for PartialSummariesOperation);
  v5 = v1;
  v6 = sub_22813880C();
  v7 = sub_2281396DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[128];
    v9 = swift_slowAlloc();
    result = swift_slowAlloc();
    v58[0] = result;
    *v9 = 134349826;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = v0[116];
    v13 = v0[115];
    *(v9 + 4) = v8 + 1;
    *(v9 + 12) = 2050;
    v14 = *(*(v12 + 48) + 16);
    sub_228084CF0(v12, type metadata accessor for PartialSummariesOperation);
    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    v15 = v13[3];
    v16 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v15);
    v17 = (*(v16 + 16))(v15, v16);
    v19 = v18;
    sub_228084CF0(v13, type metadata accessor for PartialSummariesOperation);
    v20 = sub_227FCC340(v17, v19, v58);

    *(v9 + 24) = v20;
    *(v9 + 32) = 2082;
    swift_getErrorValue();
    v21 = v0[62];
    v22 = Error.loggingDescription.getter(v0[63], v0[64]);
    v24 = sub_227FCC340(v22, v23, v58);

    *(v9 + 34) = v24;
    _os_log_impl(&dword_227FC3000, v6, v7, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v9, -1, -1);
  }

  else
  {
    v25 = v0[115];
    sub_228084CF0(v0[116], type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v25, type metadata accessor for PartialSummariesOperation);
  }

  v26 = v0[129];
  v27 = v0[127];
  v28 = v0[126];
  v29 = v0[125];
  v30 = v0[124];
  v31 = v0[123];
  v32 = v0[120];
  v33 = v0[119];
  v35 = v0[118];
  v36 = v0[117];
  v37 = v0[116];
  v38 = v0[115];
  v39 = v0[114];
  v40 = v0[111];
  v41 = v0[110];
  v42 = v0[109];
  v43 = v0[108];
  v44 = v0[107];
  v45 = v0[106];
  v46 = v0[105];
  v47 = v0[102];
  v48 = v0[100];
  v49 = v0[99];
  v50 = v0[98];
  v51 = v0[95];
  v52 = v0[94];
  v53 = v0[91];
  v54 = v0[88];
  v55 = v0[85];
  v56 = v0[82];
  v57 = v0[79];
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t sub_22807C340()
{
  v182 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1032);
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v2 + 16));
  v181 = MEMORY[0x277D84A28];
  v180[0] = v1;

  sub_2280449E4(v180, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

  *(v0 + 104) = *(v0 + 1064);
  v4 = (v0 + 64);
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1040);
  v173 = *(v0 + 1032);
  v176 = *(v0 + 1120);
  v7 = *(v0 + 608);
  *(v0 + 128) = &type metadata for SKTextChunk;
  *(v0 + 136) = &off_283B5E458;
  *(v0 + 112) = v5;
  *(v0 + 120) = 1;

  sub_22808764C(v0 + 64, v0 + 144);
  sub_22808764C(v0 + 104, v0 + 184);

  v8 = sub_22813880C();
  v9 = sub_2281396BC();

  v171 = (v0 + 64);
  if (os_log_type_enabled(v8, v9))
  {
    v169 = *(v0 + 608);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v180[0] = v11;
    *v10 = 136315906;
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v12);
    v14 = (*(v13 + 16))(v12, v13);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
    v17 = sub_227FCC340(v14, v16, v180);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
    swift_getDynamicType();
    v18 = sub_228139B8C();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    v21 = sub_227FCC340(v18, v20, v180);

    *(v10 + 14) = v21;
    *(v10 + 22) = 2080;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v23 = MEMORY[0x22AAB1AD0](&unk_283B5B448, v22);
    v25 = sub_227FCC340(v23, v24, v180);

    *(v10 + 24) = v25;
    *(v10 + 32) = 2080;
    v26 = ModelBundleIdentifier.loggingDescription.getter();
    v28 = sub_227FCC340(v26, v27, v180);

    *(v10 + 34) = v28;
    _os_log_impl(&dword_227FC3000, v8, v9, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v10, 0x2Au);
    swift_arrayDestroy();
    v29 = v11;
    v4 = (v0 + 64);
    MEMORY[0x22AAB28A0](v29, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
  }

  v30 = *(v0 + 808);
  sub_228084B4C(*(v0 + 608) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 816), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = 1;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = 2;
LABEL_8:
    sub_228084CF0(*(v0 + 816), type metadata accessor for ModelBundleIdentifier);
    goto LABEL_10;
  }

  v32 = 3;
LABEL_10:
  v33 = *(v0 + 1032);
  v34 = swift_getKeyPath();
  os_unfair_lock_lock((v33 + 16));
  v181 = MEMORY[0x277D84A28];
  v180[0] = v32;

  sub_2280449E4(v180, v34, (v33 + 24));
  os_unfair_lock_unlock((v33 + 16));

  type metadata accessor for SharedData();
  v35 = swift_allocObject();
  *(v0 + 1136) = v35;
  type metadata accessor for SKAssetManager();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  swift_initStackObject();
  v36 = SKAssetManager.init()();
  v37 = type metadata accessor for FilterRules();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = FilterRules.init(assetManager:)(v36);
  if (!v176)
  {
    v61 = *(v0 + 1032);
    v62 = *(v35 + 16);
    *(v35 + 16) = v40;

    v63 = *(v35 + 24);
    *(v35 + 24) = v173;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 1088);
    v65 = *(v0 + 1301);
    v66 = *(v0 + 608);
    *(v0 + 576) = v35;
    v67 = swift_task_alloc();
    *(v0 + 1144) = v67;
    *(v67 + 16) = v66;
    *(v67 + 24) = v0 + 104;
    *(v67 + 32) = &unk_283B5B420;
    *(v67 + 40) = v4;
    *(v67 + 48) = v65;
    *(v67 + 49) = 1;
    *(v67 + 56) = v64;
    *(v67 + 64) = v173;
    v68 = *(MEMORY[0x277D85A70] + 4);
    v69 = swift_task_alloc();
    *(v0 + 1152) = v69;
    *v69 = v0;
    v69[1] = sub_22807E400;
    v70 = *(v0 + 856);
    v71 = *(v0 + 824);
    v184 = 834;
    v185 = v71;
    v72 = &unk_22813E268;
    v73 = v0 + 576;
    v74 = 0x8000000228146330;
    v75 = v67;
    v76 = 0;
    v77 = 0;
    v78 = 0xD00000000000002BLL;

    return MEMORY[0x282200908](v70, v73, v72, v75, v76, v77, v78, v74);
  }

  v41 = v176;

  v42 = *(v0 + 800);
  v43 = *(v0 + 768);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  *(v0 + 544) = v176;
  v44 = v176;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v177 = (v0 + 544);
    v45 = *(v0 + 800);
    v46 = *(v0 + 792);
    v47 = *(v0 + 784);
    v48 = *(v0 + 776);
    v49 = *(v0 + 768);

    (*(v48 + 32))(v46, v45, v49);
    v50 = *(v48 + 16);
    v50(v47, v46, v49);
    if ((*(v48 + 88))(v47, v49) == *MEMORY[0x277D71AC8])
    {
      v51 = *(v0 + 792);
      v52 = *(v0 + 784);
      v53 = *(v0 + 768);
      v54 = (*(v0 + 608) + *(v0 + 1104));
      (*(*(v0 + 776) + 96))(v52, v53);
      *(v0 + 1168) = *v52;
      *(v0 + 1296) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
      *(v0 + 1176) = swift_allocError();
      v50(v55, v51, v53);
      v56 = *__swift_project_boxed_opaque_existential_1(v54, v54[3]);
      v57 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
      v58 = swift_task_alloc();
      *(v0 + 1184) = v58;
      *v58 = v0;
      v59 = sub_22807FB10;
LABEL_14:
      v58[1] = v59;

      return sub_2280FA5A0(v56 + v57);
    }

    v106 = *(v0 + 792);
    v107 = *(v0 + 784);
    v108 = *(v0 + 776);
    v109 = *(v0 + 768);
    sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
    v41 = swift_allocError();
    v50(v110, v106, v109);
    swift_willThrow();
    v111 = *(v108 + 8);
    v111(v106, v109);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v171);
    v111(v107, v109);
  }

  else
  {
    v79 = (v0 + 552);
    v80 = *(v0 + 760);
    v81 = *(v0 + 736);

    *(v0 + 552) = v176;
    v82 = v176;
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(v4);
      goto LABEL_32;
    }

    v177 = (v0 + 552);
    v83 = *(v0 + 760);
    v84 = *(v0 + 752);
    v85 = *(v0 + 744);
    v86 = *(v0 + 736);
    v87 = *(v0 + 704);
    v88 = *(v0 + 696);
    v89 = *(v0 + 688);

    (*(v85 + 32))(v84, v83, v86);
    sub_2281386EC();
    if ((*(v88 + 88))(v87, v89) == *MEMORY[0x277D0DB78])
    {
      v90 = *(v0 + 728);
      v91 = *(v0 + 720);
      v92 = *(v0 + 712);
      v93 = *(v0 + 704);
      v94 = *(v0 + 656);
      v95 = *(v0 + 648);
      v96 = *(v0 + 640);
      (*(*(v0 + 696) + 96))(v93, *(v0 + 688));
      (*(v91 + 32))(v90, v93, v92);
      sub_2281386BC();
      if ((*(v95 + 88))(v94, v96) == *MEMORY[0x277D0DA90])
      {
        v97 = *(v0 + 752);
        v98 = *(v0 + 744);
        v99 = *(v0 + 736);
        v100 = *(v0 + 680);
        v101 = *(v0 + 672);
        v102 = *(v0 + 664);
        v103 = *(v0 + 656);
        v104 = (*(v0 + 608) + *(v0 + 1104));
        (*(*(v0 + 648) + 96))(v103, *(v0 + 640));
        (*(v101 + 32))(v100, v103, v102);
        sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
        *(v0 + 1232) = swift_allocError();
        (*(v98 + 16))(v105, v97, v99);
        *(v0 + 1240) = sub_22813859C();
        sub_2281385AC();
        v56 = *__swift_project_boxed_opaque_existential_1(v104, v104[3]);
        v57 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
        v58 = swift_task_alloc();
        *(v0 + 1248) = v58;
        *v58 = v0;
        v59 = sub_2280814B0;
        goto LABEL_14;
      }

      v112 = *(v0 + 656);
      v113 = *(v0 + 648);
      v114 = *(v0 + 640);
      (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
      (*(v113 + 8))(v112, v114);
    }

    else
    {
      (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    }

    v115 = *(v0 + 752);
    v116 = *(v0 + 744);
    v117 = *(v0 + 736);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
    v41 = swift_allocError();
    (*(v116 + 16))(v118, v115, v117);
    swift_willThrow();
    (*(v116 + 8))(v115, v117);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v171);
  }

  v79 = v177;
LABEL_32:

  v119 = *(v0 + 1040);
  v120 = *(v0 + 920);
  v121 = *(v0 + 624);
  sub_228084B4C(v121, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v121, v120, type metadata accessor for PartialSummariesOperation);
  v122 = v41;
  v123 = sub_22813880C();
  v124 = sub_2281396DC();

  if (!os_log_type_enabled(v123, v124))
  {
    v140 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v140, type metadata accessor for PartialSummariesOperation);
    goto LABEL_36;
  }

  v178 = v124;
  v125 = *(v0 + 1024);
  v126 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v174 = v70;
  v180[0] = v70;
  *v126 = 134349826;
  if (__OFADD__(v125, 1))
  {
    __break(1u);
    return MEMORY[0x282200908](v70, v73, v72, v75, v76, v77, v78, v74);
  }

  v127 = *(v0 + 928);
  v128 = *(v0 + 920);
  *(v126 + 4) = v125 + 1;
  *(v126 + 12) = 2050;
  v129 = *(*(v127 + 48) + 16);
  sub_228084CF0(v127, type metadata accessor for PartialSummariesOperation);
  *(v126 + 14) = v129;
  *(v126 + 22) = 2082;
  v131 = v128[3];
  v130 = v128[4];
  __swift_project_boxed_opaque_existential_1(v128, v131);
  v132 = (*(v130 + 16))(v131, v130);
  v134 = v133;
  sub_228084CF0(v128, type metadata accessor for PartialSummariesOperation);
  v135 = sub_227FCC340(v132, v134, v180);

  *(v126 + 24) = v135;
  *(v126 + 32) = 2082;
  swift_getErrorValue();
  v136 = *(v0 + 496);
  v137 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
  v139 = sub_227FCC340(v137, v138, v180);

  *(v126 + 34) = v139;
  _os_log_impl(&dword_227FC3000, v123, v178, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v126, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x22AAB28A0](v174, -1, -1);
  MEMORY[0x22AAB28A0](v126, -1, -1);

LABEL_36:
  v141 = *(v0 + 1032);
  v142 = *(v0 + 1016);
  v143 = *(v0 + 1008);
  v144 = *(v0 + 1000);
  v145 = *(v0 + 992);
  v146 = *(v0 + 984);
  v147 = *(v0 + 960);
  v149 = *(v0 + 952);
  v150 = *(v0 + 944);
  v151 = *(v0 + 936);
  v152 = *(v0 + 928);
  v153 = *(v0 + 920);
  v154 = *(v0 + 912);
  v155 = *(v0 + 888);
  v156 = *(v0 + 880);
  v157 = *(v0 + 872);
  v158 = *(v0 + 864);
  v159 = *(v0 + 856);
  v160 = *(v0 + 848);
  v161 = *(v0 + 840);
  v162 = *(v0 + 816);
  v163 = *(v0 + 800);
  v164 = *(v0 + 792);
  v165 = *(v0 + 784);
  v166 = *(v0 + 760);
  v167 = *(v0 + 752);
  v168 = *(v0 + 728);
  v170 = *(v0 + 704);
  v172 = *(v0 + 680);
  v175 = *(v0 + 656);
  v179 = *(v0 + 632);
  swift_willThrow();

  v148 = *(v0 + 8);

  return v148();
}

uint64_t sub_22807D3D0()
{
  v54 = v0;
  *(v0 + 104) = *(v0 + 1064);
  v1 = v0 + 64;
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 608);
  *(v0 + 128) = &type metadata for SKTextChunk;
  *(v0 + 136) = &off_283B5E458;
  *(v0 + 112) = v2;
  *(v0 + 120) = 1;

  sub_22808764C(v0 + 64, v0 + 144);
  sub_22808764C(v0 + 104, v0 + 184);

  v6 = sub_22813880C();
  v7 = sub_2281396BC();

  if (os_log_type_enabled(v6, v7))
  {
    v52 = *(v0 + 608);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53[0] = v9;
    *v8 = 136315906;
    v10 = v4;
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v12);
    v13 = (*(v11 + 16))(v12, v11);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
    v16 = sub_227FCC340(v13, v15, v53);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
    swift_getDynamicType();
    v17 = sub_228139B8C();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    v20 = sub_227FCC340(v17, v19, v53);

    *(v8 + 14) = v20;
    *(v8 + 22) = 2080;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v22 = MEMORY[0x22AAB1AD0](&unk_283B5B448, v21);
    v24 = sub_227FCC340(v22, v23, v53);

    *(v8 + 24) = v24;
    *(v8 + 32) = 2080;
    v4 = v10;
    v25 = ModelBundleIdentifier.loggingDescription.getter();
    v27 = sub_227FCC340(v25, v26, v53);

    *(v8 + 34) = v27;
    _os_log_impl(&dword_227FC3000, v6, v7, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v8, 0x2Au);
    swift_arrayDestroy();
    v28 = v9;
    v1 = v0 + 64;
    MEMORY[0x22AAB28A0](v28, -1, -1);
    MEMORY[0x22AAB28A0](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 184));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
  }

  v29 = *(v0 + 808);
  sub_228084B4C(*(v0 + 608) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 816), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = 1;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v31 = 2;
LABEL_8:
    sub_228084CF0(*(v0 + 816), type metadata accessor for ModelBundleIdentifier);
    goto LABEL_10;
  }

  v31 = 3;
LABEL_10:
  v32 = *(v0 + 1032);
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v32 + 16));
  v53[3] = MEMORY[0x277D84A28];
  v53[0] = v31;

  sub_2280449E4(v53, KeyPath, (v32 + 24));
  os_unfair_lock_unlock((v32 + 16));

  type metadata accessor for SharedData();
  v34 = swift_allocObject();
  *(v0 + 1136) = v34;
  type metadata accessor for SKAssetManager();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  swift_initStackObject();
  v35 = SKAssetManager.init()();
  v36 = type metadata accessor for FilterRules();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = FilterRules.init(assetManager:)(v35);
  v40 = *(v0 + 1032);
  v41 = *(v34 + 16);
  *(v34 + 16) = v39;

  v42 = *(v34 + 24);
  *(v34 + 24) = v4;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v43 = *(v0 + 1088);
  v44 = *(v0 + 1301);
  v45 = *(v0 + 608);
  *(v0 + 576) = v34;
  v46 = swift_task_alloc();
  *(v0 + 1144) = v46;
  *(v46 + 16) = v45;
  *(v46 + 24) = v0 + 104;
  *(v46 + 32) = &unk_283B5B420;
  *(v46 + 40) = v1;
  *(v46 + 48) = v44;
  *(v46 + 49) = 1;
  *(v46 + 56) = v43;
  *(v46 + 64) = v4;
  v47 = *(MEMORY[0x277D85A70] + 4);
  v48 = swift_task_alloc();
  *(v0 + 1152) = v48;
  *v48 = v0;
  v48[1] = sub_22807E400;
  v49 = *(v0 + 856);
  v50 = *(v0 + 824);
  v56 = 834;
  v57 = v50;

  return MEMORY[0x282200908](v49, v0 + 576, &unk_22813E268, v46, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_22807E400()
{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v7 = *v1;
  *(*v1 + 1160) = v0;

  v4 = *(v2 + 1144);

  if (v0)
  {
    v5 = sub_22807F020;
  }

  else
  {
    v5 = sub_22807E524;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22807E524()
{
  v145 = v0;
  v1 = *(v0 + 1136);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  v6 = *(v4 + 32);
  v6(v2, v3, v5);
  v7 = *(v0 + 1160);
  v6(*(v0 + 872), *(v0 + 864), *(v0 + 824));
  LOBYTE(v143) = 2;
  v8 = Summary.stringValue(for:)(&v143);
  if (!v8.value._object)
  {
    v11 = *(v0 + 872);
    v12 = *(v0 + 832);
    v13 = *(v0 + 824);
    v14 = swift_allocObject();
    *(v14 + 16) = 27;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v15 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 1286, sub_2280889A0);
    sub_227FDB3CC();
    v10 = swift_allocError();
    *v16 = 27;
    *(v16 + 8) = v15;
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    goto LABEL_5;
  }

  object = v8.value._object;
  sub_2281395DC();
  if (v7)
  {
    v10 = v7;
    (*(*(v0 + 832) + 8))(*(v0 + 872), *(v0 + 824));

LABEL_5:
    v17 = *(v0 + 1040);
    v18 = *(v0 + 920);
    v19 = *(v0 + 624);
    sub_228084B4C(v19, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
    sub_228084B4C(v19, v18, type metadata accessor for PartialSummariesOperation);
    v20 = v10;
    v21 = sub_22813880C();
    v22 = sub_2281396DC();

    countAndFlagsBits = v10;
    if (!os_log_type_enabled(v21, v22))
    {
      v39 = *(v0 + 920);
      sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

      sub_228084CF0(v39, type metadata accessor for PartialSummariesOperation);
      goto LABEL_9;
    }

    v23 = *(v0 + 1024);
    object = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v143 = v24;
    *object = 134349826;
    if (!__OFADD__(v23, 1))
    {
      v25 = v24;
      v26 = *(v0 + 928);
      v27 = *(v0 + 920);
      *(object + 4) = v23 + 1;
      *(object + 12) = 2050;
      v28 = *(*(v26 + 48) + 16);
      sub_228084CF0(v26, type metadata accessor for PartialSummariesOperation);
      *(object + 14) = v28;
      *(object + 22) = 2082;
      v29 = v27[3];
      v30 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v29);
      v31 = (*(v30 + 16))(v29, v30);
      v33 = v32;
      sub_228084CF0(v27, type metadata accessor for PartialSummariesOperation);
      v34 = sub_227FCC340(v31, v33, &v143);

      *(object + 24) = v34;
      *(object + 32) = 2082;
      swift_getErrorValue();
      v35 = *(v0 + 496);
      v36 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
      v38 = sub_227FCC340(v36, v37, &v143);

      *(object + 34) = v38;
      _os_log_impl(&dword_227FC3000, v21, v22, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", object, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v25, -1, -1);
      MEMORY[0x22AAB28A0](object, -1, -1);

LABEL_9:
      v40 = *(v0 + 1032);
      v41 = *(v0 + 1016);
      v42 = *(v0 + 1008);
      v43 = *(v0 + 1000);
      v44 = *(v0 + 992);
      v45 = *(v0 + 984);
      v46 = *(v0 + 960);
      v47 = *(v0 + 952);
      v92 = *(v0 + 944);
      v94 = *(v0 + 936);
      v96 = *(v0 + 928);
      v98 = *(v0 + 920);
      v100 = *(v0 + 912);
      v102 = *(v0 + 888);
      v104 = *(v0 + 880);
      v106 = *(v0 + 872);
      v108 = *(v0 + 864);
      v110 = *(v0 + 856);
      v112 = *(v0 + 848);
      v114 = *(v0 + 840);
      v116 = *(v0 + 816);
      v118 = *(v0 + 800);
      v120 = *(v0 + 792);
      v122 = *(v0 + 784);
      v124 = *(v0 + 760);
      v126 = *(v0 + 752);
      v127 = *(v0 + 728);
      v130 = *(v0 + 704);
      v132 = *(v0 + 680);
      v135 = *(v0 + 656);
      v138 = *(v0 + 632);
      swift_willThrow();

      v48 = *(v0 + 8);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  countAndFlagsBits = v8.value._countAndFlagsBits;
  if (*(v0 + 1300) != 1)
  {
    if (qword_2813C4988 == -1)
    {
LABEL_13:
      v49 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  v49 = *(v0 + 1040);
LABEL_14:
  v50 = *(v0 + 944);
  v51 = *(v0 + 936);
  v52 = *(v0 + 624);
  v53 = *(v0 + 976) + 16;
  (*(v0 + 1048))(*(v0 + 984), v49, *(v0 + 968));
  sub_228084B4C(v52, v50, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v52, v51, type metadata accessor for PartialSummariesOperation);
  v54 = sub_22813880C();
  v55 = sub_2281396CC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 1024);
    v57 = swift_slowAlloc();
    result = swift_slowAlloc();
    v139 = result;
    v143 = result;
    *v57 = 134349570;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
      return result;
    }

    v133 = *(v0 + 984);
    v136 = *(v0 + 1056);
    v128 = *(v0 + 976);
    v131 = *(v0 + 968);
    v59 = *(v0 + 944);
    v60 = *(v0 + 936);
    *(v57 + 4) = v56 + 1;
    *(v57 + 12) = 2050;
    v61 = *(*(v59 + 48) + 16);
    sub_228084CF0(v59, type metadata accessor for PartialSummariesOperation);
    *(v57 + 14) = v61;
    *(v57 + 22) = 2082;
    v62 = v60[3];
    v63 = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v62);
    v64 = (*(v63 + 16))(v62, v63);
    v66 = v65;
    sub_228084CF0(v60, type metadata accessor for PartialSummariesOperation);
    v67 = sub_227FCC340(v64, v66, &v143);

    *(v57 + 24) = v67;
    _os_log_impl(&dword_227FC3000, v54, v55, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v57, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v139);
    MEMORY[0x22AAB28A0](v139, -1, -1);
    MEMORY[0x22AAB28A0](v57, -1, -1);

    v136(v133, v131);
  }

  else
  {
    v68 = *(v0 + 1056);
    v69 = *(v0 + 984);
    v70 = *(v0 + 976);
    v71 = *(v0 + 968);
    v72 = *(v0 + 936);
    sub_228084CF0(*(v0 + 944), type metadata accessor for PartialSummariesOperation);

    v68(v69, v71);
    sub_228084CF0(v72, type metadata accessor for PartialSummariesOperation);
  }

  v87 = *(v0 + 1024);
  v88 = *(v0 + 1016);
  v89 = *(v0 + 1032);
  v90 = *(v0 + 1008);
  v91 = *(v0 + 1000);
  v93 = *(v0 + 992);
  v95 = *(v0 + 984);
  v97 = *(v0 + 960);
  v99 = *(v0 + 952);
  v101 = *(v0 + 944);
  v103 = *(v0 + 936);
  v105 = *(v0 + 928);
  v107 = *(v0 + 920);
  v109 = *(v0 + 912);
  v111 = *(v0 + 888);
  v73 = *(v0 + 880);
  v74 = *(v0 + 872);
  v113 = *(v0 + 864);
  v115 = *(v0 + 856);
  v117 = *(v0 + 848);
  v119 = *(v0 + 840);
  v75 = *(v0 + 832);
  v86 = *(v0 + 824);
  v121 = *(v0 + 816);
  v123 = *(v0 + 800);
  v76 = *(v0 + 792);
  v77 = *(v0 + 784);
  v137 = *(v0 + 760);
  v140 = *(v0 + 752);
  v78 = *(v0 + 592);
  v143 = countAndFlagsBits;
  v144 = object;
  v79 = *(v78 + 24);
  v80 = *(v78 + 32);
  v125 = *(v0 + 728);
  v129 = *(v0 + 704);
  v134 = *(v0 + 680);
  v142 = *(v0 + 656);
  v81 = *(v0 + 632);
  v82 = *(v0 + 584);

  MEMORY[0x22AAB1970](v79, v80);

  v83 = v144;
  *(v0 + 520) = v143;
  *(v0 + 528) = v83;
  sub_228138EEC();
  sub_228138F0C();
  v84 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v85 = v82 + *(v84 + 20);
  sub_228138C7C();
  (*(v75 + 8))(v74, v86);
  *v82 = v87;
  *(v82 + *(v84 + 24)) = v89;

  v48 = *(v0 + 8);
LABEL_19:

  return v48();
}

uint64_t sub_22807F020()
{
  v118 = v0;
  v1 = (v0 + 544);
  v2 = *(v0 + 1136);

  v3 = *(v0 + 1160);
  v4 = *(v0 + 800);
  v5 = *(v0 + 768);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  *(v0 + 544) = v3;
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 800);
    v8 = *(v0 + 792);
    v9 = *(v0 + 784);
    v10 = *(v0 + 776);
    v11 = *(v0 + 768);

    (*(v10 + 32))(v8, v7, v11);
    v12 = *(v10 + 16);
    v12(v9, v8, v11);
    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D71AC8])
    {
      v13 = *(v0 + 792);
      v14 = *(v0 + 784);
      v15 = *(v0 + 768);
      v16 = (*(v0 + 608) + *(v0 + 1104));
      (*(*(v0 + 776) + 96))(v14, v15);
      *(v0 + 1168) = *v14;
      *(v0 + 1296) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
      *(v0 + 1176) = swift_allocError();
      v12(v17, v13, v15);
      v18 = *__swift_project_boxed_opaque_existential_1(v16, v16[3]);
      v19 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
      v20 = swift_task_alloc();
      *(v0 + 1184) = v20;
      *v20 = v0;
      v21 = sub_22807FB10;
LABEL_4:
      v20[1] = v21;

      return sub_2280FA5A0(v18 + v19);
    }

    v49 = *(v0 + 792);
    v50 = *(v0 + 784);
    v51 = *(v0 + 776);
    v52 = *(v0 + 768);
    sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08]);
    v3 = swift_allocError();
    v12(v53, v49, v52);
    swift_willThrow();
    v54 = *(v51 + 8);
    v54(v49, v52);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
    v54(v50, v52);
  }

  else
  {
    v1 = (v0 + 552);
    v23 = *(v0 + 760);
    v24 = *(v0 + 736);

    *(v0 + 552) = v3;
    v25 = v3;
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 760);
      v27 = *(v0 + 752);
      v28 = *(v0 + 744);
      v29 = *(v0 + 736);
      v30 = *(v0 + 704);
      v31 = *(v0 + 696);
      v32 = *(v0 + 688);

      (*(v28 + 32))(v27, v26, v29);
      sub_2281386EC();
      if ((*(v31 + 88))(v30, v32) == *MEMORY[0x277D0DB78])
      {
        v33 = *(v0 + 728);
        v34 = *(v0 + 720);
        v35 = *(v0 + 712);
        v36 = *(v0 + 704);
        v37 = *(v0 + 656);
        v38 = *(v0 + 648);
        v39 = *(v0 + 640);
        (*(*(v0 + 696) + 96))(v36, *(v0 + 688));
        (*(v34 + 32))(v33, v36, v35);
        sub_2281386BC();
        if ((*(v38 + 88))(v37, v39) == *MEMORY[0x277D0DA90])
        {
          v40 = *(v0 + 752);
          v41 = *(v0 + 744);
          v42 = *(v0 + 736);
          v43 = *(v0 + 680);
          v44 = *(v0 + 672);
          v45 = *(v0 + 664);
          v46 = *(v0 + 656);
          v47 = (*(v0 + 608) + *(v0 + 1104));
          (*(*(v0 + 648) + 96))(v46, *(v0 + 640));
          (*(v44 + 32))(v43, v46, v45);
          sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
          *(v0 + 1232) = swift_allocError();
          (*(v41 + 16))(v48, v40, v42);
          *(v0 + 1240) = sub_22813859C();
          sub_2281385AC();
          v18 = *__swift_project_boxed_opaque_existential_1(v47, v47[3]);
          v19 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
          v20 = swift_task_alloc();
          *(v0 + 1248) = v20;
          *v20 = v0;
          v21 = sub_2280814B0;
          goto LABEL_4;
        }

        v55 = *(v0 + 656);
        v56 = *(v0 + 648);
        v57 = *(v0 + 640);
        (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
        (*(v56 + 8))(v55, v57);
      }

      else
      {
        (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
      }

      v58 = *(v0 + 752);
      v59 = *(v0 + 744);
      v60 = *(v0 + 736);
      sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0]);
      v3 = swift_allocError();
      (*(v59 + 16))(v61, v58, v60);
      swift_willThrow();
      (*(v59 + 8))(v58, v60);
    }

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  }

  v62 = *(v0 + 1040);
  v63 = *(v0 + 920);
  v64 = *(v0 + 624);
  sub_228084B4C(v64, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v64, v63, type metadata accessor for PartialSummariesOperation);
  v65 = v3;
  v66 = sub_22813880C();
  v67 = sub_2281396DC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = *(v0 + 1024);
    v69 = swift_slowAlloc();
    result = swift_slowAlloc();
    v117[0] = result;
    *v69 = 134349826;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
      return result;
    }

    v115 = result;
    v70 = *(v0 + 928);
    v71 = *(v0 + 920);
    *(v69 + 4) = v68 + 1;
    *(v69 + 12) = 2050;
    v72 = *(*(v70 + 48) + 16);
    sub_228084CF0(v70, type metadata accessor for PartialSummariesOperation);
    *(v69 + 14) = v72;
    *(v69 + 22) = 2082;
    v74 = v71[3];
    v73 = v71[4];
    __swift_project_boxed_opaque_existential_1(v71, v74);
    v75 = (*(v73 + 16))(v74, v73);
    v77 = v76;
    sub_228084CF0(v71, type metadata accessor for PartialSummariesOperation);
    v78 = sub_227FCC340(v75, v77, v117);

    *(v69 + 24) = v78;
    *(v69 + 32) = 2082;
    swift_getErrorValue();
    v79 = *(v0 + 496);
    v80 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
    v82 = sub_227FCC340(v80, v81, v117);

    *(v69 + 34) = v82;
    _os_log_impl(&dword_227FC3000, v66, v67, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v69, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v115, -1, -1);
    MEMORY[0x22AAB28A0](v69, -1, -1);
  }

  else
  {
    v83 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v83, type metadata accessor for PartialSummariesOperation);
  }

  v84 = *(v0 + 1032);
  v85 = *(v0 + 1016);
  v86 = *(v0 + 1008);
  v87 = *(v0 + 1000);
  v88 = *(v0 + 992);
  v89 = *(v0 + 984);
  v90 = *(v0 + 960);
  v91 = *(v0 + 952);
  v93 = *(v0 + 944);
  v94 = *(v0 + 936);
  v95 = *(v0 + 928);
  v96 = *(v0 + 920);
  v97 = *(v0 + 912);
  v98 = *(v0 + 888);
  v99 = *(v0 + 880);
  v100 = *(v0 + 872);
  v101 = *(v0 + 864);
  v102 = *(v0 + 856);
  v103 = *(v0 + 848);
  v104 = *(v0 + 840);
  v105 = *(v0 + 816);
  v106 = *(v0 + 800);
  v107 = *(v0 + 792);
  v108 = *(v0 + 784);
  v109 = *(v0 + 760);
  v110 = *(v0 + 752);
  v111 = *(v0 + 728);
  v112 = *(v0 + 704);
  v113 = *(v0 + 680);
  v114 = *(v0 + 656);
  v116 = *(v0 + 632);
  swift_willThrow();

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_22807FB10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1184);
  v5 = *v2;
  v3[149] = a1;
  v3[150] = v1;

  if (v1)
  {
    v3[153] = v1;
    v6 = sub_228080FD0;
  }

  else
  {
    v6 = sub_22807FC38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_22807FC38()
{
  v59 = v0;
  v1 = *(v0 + 1040);
  v2 = sub_228085CEC(*(v0 + 1032), *(v0 + 1168), *(v0 + 1192));
  sub_22808764C(v0 + 64, v0 + 344);
  v3 = sub_22813880C();
  v4 = sub_2281396BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v58[0] = v7;
    *v6 = 136446722;
    v8 = *(v0 + 368);
    v9 = *(v0 + 376);
    __swift_project_boxed_opaque_existential_1((v0 + 344), v8);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 344));
    v13 = sub_227FCC340(v10, v12, v58);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2050;
    *(v6 + 14) = v5;
    *(v6 + 22) = 2050;
    *(v6 + 24) = v2;
    _os_log_impl(&dword_227FC3000, v3, v4, "Handling .tooManyTokensError for [requestIdentifier: %{public}s]: reducing target maximum tokens per chunk from %{public}ld to %{public}ld", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v7);
    MEMORY[0x22AAB28A0](v7, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 344));
  }

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

  v16 = *(*v15 + 552);
  v17 = *(*v15 + 560);
  v18 = *(*v15 + 568);
  v19 = *(*v15 + 576);
  v20 = *(*v15 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v18(v58, v20);

    if ((v58[0] & 1) == 0)
    {
LABEL_17:
      v21 = *(v0 + 1176);
      swift_willThrow();
      v22 = v21;
      *(v0 + 1224) = *(v0 + 1176);

      MEMORY[0x2822009F8](sub_228080FD0, 0, 0);
      return;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  v23 = *(v0 + 1176);
  v24 = *(v0 + 1040);
  sub_22808764C(v0 + 64, v0 + 384);
  v25 = v23;
  v26 = sub_22813880C();
  v27 = sub_2281396BC();

  if (os_log_type_enabled(v26, v27))
  {
    v56 = *(v0 + 1024);
    v57 = *(v0 + 1176);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v58[0] = v30;
    *v28 = 136446978;
    v31 = v2;
    v33 = *(v0 + 408);
    v32 = *(v0 + 416);
    __swift_project_boxed_opaque_existential_1((v0 + 384), v33);
    v34 = v33;
    v2 = v31;
    v35 = (*(v32 + 16))(v34, v32);
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 384));
    v38 = sub_227FCC340(v35, v37, v58);

    *(v28 + 4) = v38;
    *(v28 + 12) = 2050;
    *(v28 + 14) = v56;
    *(v28 + 22) = 2050;
    *(v28 + 24) = v31;
    *(v28 + 32) = 2114;
    v39 = v57;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 34) = v40;
    *v29 = v40;
    _os_log_impl(&dword_227FC3000, v26, v27, "Retrying chunk summarization for [requestIdentifier: %{public}s, chunkIndex: %{public}ld] with [maximumTokensPerChunk: %{public}ld] after failure: %{public}@", v28, 0x2Au);
    sub_2280883AC(v29, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v30);
    MEMORY[0x22AAB28A0](v30, -1, -1);
    MEMORY[0x22AAB28A0](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 384));
  }

  if (qword_27D81E2C8 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 1200);
  v42 = *(v0 + 1176);
  v43 = *(v0 + 1032);
  v44 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v44, qword_27D823288);
  sub_22808764C(v0 + 64, v0 + 424);
  v45 = swift_allocObject();
  sub_227FD0F5C((v0 + 424), v45 + 16);
  *(v45 + 56) = v42;
  v46 = v42;
  sub_22812F9A4(sub_2280889F0);

  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v43 + 16));
  sub_228084228((v43 + 24), KeyPath, 1);
  os_unfair_lock_unlock((v43 + 16));
  if (!v41)
  {
    v48 = *(v0 + 1301);

    v49 = swift_task_alloc();
    *(v0 + 1208) = v49;
    *v49 = v0;
    v49[1] = sub_228080354;
    v50 = *(v0 + 1072);
    v51 = *(v0 + 1064);
    v52 = *(v0 + 1032);
    v53 = *(v0 + 1024);
    v54 = *(v0 + 848);
    v55 = *(v0 + 608);
    v61 = *(v0 + 1088);
    v62 = v52;

    sub_22806E698(v54, v51, v50, 1, v53, v2, v0 + 64, v48 | 0x100);
  }
}

uint64_t sub_228080354()
{
  v2 = *v1;
  v3 = *(*v1 + 1208);
  v4 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {
    *(v2 + 1224) = v0;
    v5 = sub_228080FD0;
  }

  else
  {

    v5 = sub_228080480;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228080480()
{
  v147 = v0;
  v1 = *(v0 + 1296);
  v2 = *(v0 + 864);
  v3 = *(v0 + 848);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 784);
  (*(*(v0 + 776) + 8))(*(v0 + 792), *(v0 + 768));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  v7 = *(v4 + 32);
  v7(v2, v3, v5);
  v8 = sub_22813756C();
  (*(*(v8 - 8) + 8))(v6 + v1, v8);

  v9 = *(v0 + 1216);
  v7(*(v0 + 872), *(v0 + 864), *(v0 + 824));
  LOBYTE(v145) = 2;
  v10 = Summary.stringValue(for:)(&v145);
  if (!v10.value._object)
  {
    v13 = *(v0 + 872);
    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
    v16 = swift_allocObject();
    *(v16 + 16) = 27;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    v17 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 1286, sub_2280889A0);
    sub_227FDB3CC();
    v12 = swift_allocError();
    *v18 = 27;
    *(v18 + 8) = v17;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    goto LABEL_5;
  }

  object = v10.value._object;
  sub_2281395DC();
  if (v9)
  {
    v12 = v9;
    (*(*(v0 + 832) + 8))(*(v0 + 872), *(v0 + 824));

LABEL_5:
    v19 = *(v0 + 1040);
    v20 = *(v0 + 920);
    v21 = *(v0 + 624);
    sub_228084B4C(v21, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
    sub_228084B4C(v21, v20, type metadata accessor for PartialSummariesOperation);
    v22 = v12;
    v23 = sub_22813880C();
    v24 = sub_2281396DC();

    countAndFlagsBits = v12;
    if (!os_log_type_enabled(v23, v24))
    {
      v41 = *(v0 + 920);
      sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

      sub_228084CF0(v41, type metadata accessor for PartialSummariesOperation);
      goto LABEL_9;
    }

    v25 = *(v0 + 1024);
    object = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v145 = v26;
    *object = 134349826;
    if (!__OFADD__(v25, 1))
    {
      v27 = v26;
      v28 = *(v0 + 928);
      v29 = *(v0 + 920);
      *(object + 4) = v25 + 1;
      *(object + 12) = 2050;
      v30 = *(*(v28 + 48) + 16);
      sub_228084CF0(v28, type metadata accessor for PartialSummariesOperation);
      *(object + 14) = v30;
      *(object + 22) = 2082;
      v31 = v29[3];
      v32 = v29[4];
      __swift_project_boxed_opaque_existential_1(v29, v31);
      v33 = (*(v32 + 16))(v31, v32);
      v35 = v34;
      sub_228084CF0(v29, type metadata accessor for PartialSummariesOperation);
      v36 = sub_227FCC340(v33, v35, &v145);

      *(object + 24) = v36;
      *(object + 32) = 2082;
      swift_getErrorValue();
      v37 = *(v0 + 496);
      v38 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
      v40 = sub_227FCC340(v38, v39, &v145);

      *(object + 34) = v40;
      _os_log_impl(&dword_227FC3000, v23, v24, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", object, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v27, -1, -1);
      MEMORY[0x22AAB28A0](object, -1, -1);

LABEL_9:
      v42 = *(v0 + 1032);
      v43 = *(v0 + 1016);
      v44 = *(v0 + 1008);
      v45 = *(v0 + 1000);
      v46 = *(v0 + 992);
      v47 = *(v0 + 984);
      v48 = *(v0 + 960);
      v49 = *(v0 + 952);
      v94 = *(v0 + 944);
      v96 = *(v0 + 936);
      v98 = *(v0 + 928);
      v100 = *(v0 + 920);
      v102 = *(v0 + 912);
      v104 = *(v0 + 888);
      v106 = *(v0 + 880);
      v108 = *(v0 + 872);
      v110 = *(v0 + 864);
      v112 = *(v0 + 856);
      v114 = *(v0 + 848);
      v116 = *(v0 + 840);
      v118 = *(v0 + 816);
      v120 = *(v0 + 800);
      v122 = *(v0 + 792);
      v124 = *(v0 + 784);
      v126 = *(v0 + 760);
      v128 = *(v0 + 752);
      v129 = *(v0 + 728);
      v132 = *(v0 + 704);
      v134 = *(v0 + 680);
      v137 = *(v0 + 656);
      v140 = *(v0 + 632);
      swift_willThrow();

      v50 = *(v0 + 8);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  countAndFlagsBits = v10.value._countAndFlagsBits;
  if (*(v0 + 1300) != 1)
  {
    if (qword_2813C4988 == -1)
    {
LABEL_13:
      v51 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  v51 = *(v0 + 1040);
LABEL_14:
  v52 = *(v0 + 944);
  v53 = *(v0 + 936);
  v54 = *(v0 + 624);
  v55 = *(v0 + 976) + 16;
  (*(v0 + 1048))(*(v0 + 984), v51, *(v0 + 968));
  sub_228084B4C(v54, v52, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v54, v53, type metadata accessor for PartialSummariesOperation);
  v56 = sub_22813880C();
  v57 = sub_2281396CC();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 1024);
    v59 = swift_slowAlloc();
    result = swift_slowAlloc();
    v141 = result;
    v145 = result;
    *v59 = 134349570;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
      return result;
    }

    v135 = *(v0 + 984);
    v138 = *(v0 + 1056);
    v130 = *(v0 + 976);
    v133 = *(v0 + 968);
    v61 = *(v0 + 944);
    v62 = *(v0 + 936);
    *(v59 + 4) = v58 + 1;
    *(v59 + 12) = 2050;
    v63 = *(*(v61 + 48) + 16);
    sub_228084CF0(v61, type metadata accessor for PartialSummariesOperation);
    *(v59 + 14) = v63;
    *(v59 + 22) = 2082;
    v64 = v62[3];
    v65 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v64);
    v66 = (*(v65 + 16))(v64, v65);
    v68 = v67;
    sub_228084CF0(v62, type metadata accessor for PartialSummariesOperation);
    v69 = sub_227FCC340(v66, v68, &v145);

    *(v59 + 24) = v69;
    _os_log_impl(&dword_227FC3000, v56, v57, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v59, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v141);
    MEMORY[0x22AAB28A0](v141, -1, -1);
    MEMORY[0x22AAB28A0](v59, -1, -1);

    v138(v135, v133);
  }

  else
  {
    v70 = *(v0 + 1056);
    v71 = *(v0 + 984);
    v72 = *(v0 + 976);
    v73 = *(v0 + 968);
    v74 = *(v0 + 936);
    sub_228084CF0(*(v0 + 944), type metadata accessor for PartialSummariesOperation);

    v70(v71, v73);
    sub_228084CF0(v74, type metadata accessor for PartialSummariesOperation);
  }

  v89 = *(v0 + 1024);
  v90 = *(v0 + 1016);
  v91 = *(v0 + 1032);
  v92 = *(v0 + 1008);
  v93 = *(v0 + 1000);
  v95 = *(v0 + 992);
  v97 = *(v0 + 984);
  v99 = *(v0 + 960);
  v101 = *(v0 + 952);
  v103 = *(v0 + 944);
  v105 = *(v0 + 936);
  v107 = *(v0 + 928);
  v109 = *(v0 + 920);
  v111 = *(v0 + 912);
  v113 = *(v0 + 888);
  v75 = *(v0 + 880);
  v76 = *(v0 + 872);
  v115 = *(v0 + 864);
  v117 = *(v0 + 856);
  v119 = *(v0 + 848);
  v121 = *(v0 + 840);
  v77 = *(v0 + 832);
  v88 = *(v0 + 824);
  v123 = *(v0 + 816);
  v125 = *(v0 + 800);
  v78 = *(v0 + 792);
  v79 = *(v0 + 784);
  v139 = *(v0 + 760);
  v142 = *(v0 + 752);
  v80 = *(v0 + 592);
  v145 = countAndFlagsBits;
  v146 = object;
  v81 = *(v80 + 24);
  v82 = *(v80 + 32);
  v127 = *(v0 + 728);
  v131 = *(v0 + 704);
  v136 = *(v0 + 680);
  v144 = *(v0 + 656);
  v83 = *(v0 + 632);
  v84 = *(v0 + 584);

  MEMORY[0x22AAB1970](v81, v82);

  v85 = v146;
  *(v0 + 520) = v145;
  *(v0 + 528) = v85;
  sub_228138EEC();
  sub_228138F0C();
  v86 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v87 = v84 + *(v86 + 20);
  sub_228138C7C();
  (*(v77 + 8))(v76, v88);
  *v84 = v89;
  *(v84 + *(v86 + 24)) = v91;

  v50 = *(v0 + 8);
LABEL_19:

  return v50();
}

uint64_t sub_228080FD0()
{
  v63 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 784);
  (*(*(v0 + 776) + 8))(*(v0 + 792), *(v0 + 768));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));

  v4 = sub_22813756C();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  v5 = *(v0 + 1224);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 920);
  v8 = *(v0 + 624);
  sub_228084B4C(v8, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v8, v7, type metadata accessor for PartialSummariesOperation);
  v9 = v5;
  v10 = sub_22813880C();
  v11 = sub_2281396DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1024);
    v13 = swift_slowAlloc();
    result = swift_slowAlloc();
    v62[0] = result;
    *v13 = 134349826;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    v15 = result;
    v16 = *(v0 + 928);
    v17 = *(v0 + 920);
    *(v13 + 4) = v12 + 1;
    *(v13 + 12) = 2050;
    v18 = *(*(v16 + 48) + 16);
    sub_228084CF0(v16, type metadata accessor for PartialSummariesOperation);
    *(v13 + 14) = v18;
    *(v13 + 22) = 2082;
    v19 = v17[3];
    v20 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = v22;
    sub_228084CF0(v17, type metadata accessor for PartialSummariesOperation);
    v24 = sub_227FCC340(v21, v23, v62);

    *(v13 + 24) = v24;
    *(v13 + 32) = 2082;
    swift_getErrorValue();
    v25 = *(v0 + 496);
    v26 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
    v28 = sub_227FCC340(v26, v27, v62);

    *(v13 + 34) = v28;
    _os_log_impl(&dword_227FC3000, v10, v11, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v15, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {
    v29 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v29, type metadata accessor for PartialSummariesOperation);
  }

  v30 = *(v0 + 1032);
  v31 = *(v0 + 1016);
  v32 = *(v0 + 1008);
  v33 = *(v0 + 1000);
  v34 = *(v0 + 992);
  v35 = *(v0 + 984);
  v36 = *(v0 + 960);
  v37 = *(v0 + 952);
  v39 = *(v0 + 944);
  v40 = *(v0 + 936);
  v41 = *(v0 + 928);
  v42 = *(v0 + 920);
  v43 = *(v0 + 912);
  v44 = *(v0 + 888);
  v45 = *(v0 + 880);
  v46 = *(v0 + 872);
  v47 = *(v0 + 864);
  v48 = *(v0 + 856);
  v49 = *(v0 + 848);
  v50 = *(v0 + 840);
  v51 = *(v0 + 816);
  v52 = *(v0 + 800);
  v53 = *(v0 + 792);
  v54 = *(v0 + 784);
  v55 = *(v0 + 760);
  v56 = *(v0 + 752);
  v57 = *(v0 + 728);
  v58 = *(v0 + 704);
  v59 = *(v0 + 680);
  v60 = *(v0 + 656);
  v61 = *(v0 + 632);
  swift_willThrow();

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_2280814B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1248);
  v5 = *v2;
  v3[157] = a1;
  v3[158] = v1;

  if (v1)
  {
    v3[161] = v1;
    v6 = sub_22808297C;
  }

  else
  {
    v6 = sub_2280815D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2280815D8()
{
  v59 = v0;
  v1 = *(v0 + 1040);
  v2 = sub_228085CEC(*(v0 + 1032), *(v0 + 1240), *(v0 + 1256));
  sub_22808764C(v0 + 64, v0 + 224);
  v3 = sub_22813880C();
  v4 = sub_2281396BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1256);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v58[0] = v7;
    *v6 = 136446722;
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v8);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
    v13 = sub_227FCC340(v10, v12, v58);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2050;
    *(v6 + 14) = v5;
    *(v6 + 22) = 2050;
    *(v6 + 24) = v2;
    _os_log_impl(&dword_227FC3000, v3, v4, "Handling .tooManyTokensError for [requestIdentifier: %{public}s]: reducing target maximum tokens per chunk from %{public}ld to %{public}ld", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v7);
    MEMORY[0x22AAB28A0](v7, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
  }

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

  v16 = *(*v15 + 552);
  v17 = *(*v15 + 560);
  v18 = *(*v15 + 568);
  v19 = *(*v15 + 576);
  v20 = *(*v15 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v18(v58, v20);

    if ((v58[0] & 1) == 0)
    {
LABEL_17:
      v21 = *(v0 + 1232);
      swift_willThrow();
      v22 = v21;
      *(v0 + 1288) = *(v0 + 1232);

      MEMORY[0x2822009F8](sub_22808297C, 0, 0);
      return;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  v23 = *(v0 + 1232);
  v24 = *(v0 + 1040);
  sub_22808764C(v0 + 64, v0 + 264);
  v25 = v23;
  v26 = sub_22813880C();
  v27 = sub_2281396BC();

  if (os_log_type_enabled(v26, v27))
  {
    v56 = *(v0 + 1024);
    v57 = *(v0 + 1232);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v58[0] = v30;
    *v28 = 136446978;
    v31 = v2;
    v33 = *(v0 + 288);
    v32 = *(v0 + 296);
    __swift_project_boxed_opaque_existential_1((v0 + 264), v33);
    v34 = v33;
    v2 = v31;
    v35 = (*(v32 + 16))(v34, v32);
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
    v38 = sub_227FCC340(v35, v37, v58);

    *(v28 + 4) = v38;
    *(v28 + 12) = 2050;
    *(v28 + 14) = v56;
    *(v28 + 22) = 2050;
    *(v28 + 24) = v31;
    *(v28 + 32) = 2114;
    v39 = v57;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 34) = v40;
    *v29 = v40;
    _os_log_impl(&dword_227FC3000, v26, v27, "Retrying chunk summarization for [requestIdentifier: %{public}s, chunkIndex: %{public}ld] with [maximumTokensPerChunk: %{public}ld] after failure: %{public}@", v28, 0x2Au);
    sub_2280883AC(v29, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v30);
    MEMORY[0x22AAB28A0](v30, -1, -1);
    MEMORY[0x22AAB28A0](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
  }

  if (qword_27D81E2C8 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 1264);
  v42 = *(v0 + 1232);
  v43 = *(v0 + 1032);
  v44 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v44, qword_27D823288);
  sub_22808764C(v0 + 64, v0 + 304);
  v45 = swift_allocObject();
  sub_227FD0F5C((v0 + 304), v45 + 16);
  *(v45 + 56) = v42;
  v46 = v42;
  sub_22812F9A4(sub_228087BA8);

  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v43 + 16));
  sub_228084228((v43 + 24), KeyPath, 1);
  os_unfair_lock_unlock((v43 + 16));
  if (!v41)
  {
    v48 = *(v0 + 1301);

    v49 = swift_task_alloc();
    *(v0 + 1272) = v49;
    *v49 = v0;
    v49[1] = sub_228081CF4;
    v50 = *(v0 + 1072);
    v51 = *(v0 + 1064);
    v52 = *(v0 + 1032);
    v53 = *(v0 + 1024);
    v54 = *(v0 + 840);
    v55 = *(v0 + 608);
    v61 = *(v0 + 1088);
    v62 = v52;

    sub_22806E698(v54, v51, v50, 1, v53, v2, v0 + 64, v48 | 0x100);
  }
}

uint64_t sub_228081CF4()
{
  v2 = *v1;
  v3 = *(*v1 + 1272);
  v4 = *v1;
  *(*v1 + 1280) = v0;

  if (v0)
  {
    *(v2 + 1288) = v0;
    v5 = sub_22808297C;
  }

  else
  {

    v5 = sub_228081E20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228081E20()
{
  v150 = v0;
  v145 = *(v0 + 864);
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);
  (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  v10 = *(v2 + 32);
  v10(v145, v1, v3);

  v11 = *(v0 + 1280);
  v10(*(v0 + 872), *(v0 + 864), *(v0 + 824));
  LOBYTE(v148) = 2;
  v12 = Summary.stringValue(for:)(&v148);
  if (!v12.value._object)
  {
    v15 = *(v0 + 872);
    v16 = *(v0 + 832);
    v17 = *(v0 + 824);
    v18 = swift_allocObject();
    *(v18 + 16) = 27;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    v19 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 1286, sub_2280889A0);
    sub_227FDB3CC();
    v14 = swift_allocError();
    *v20 = 27;
    *(v20 + 8) = v19;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    goto LABEL_5;
  }

  object = v12.value._object;
  sub_2281395DC();
  if (v11)
  {
    v14 = v11;
    (*(*(v0 + 832) + 8))(*(v0 + 872), *(v0 + 824));

LABEL_5:
    v21 = *(v0 + 1040);
    v22 = *(v0 + 920);
    v23 = *(v0 + 624);
    sub_228084B4C(v23, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
    sub_228084B4C(v23, v22, type metadata accessor for PartialSummariesOperation);
    v24 = v14;
    v25 = sub_22813880C();
    v26 = sub_2281396DC();

    countAndFlagsBits = v14;
    if (!os_log_type_enabled(v25, v26))
    {
      v43 = *(v0 + 920);
      sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

      sub_228084CF0(v43, type metadata accessor for PartialSummariesOperation);
      goto LABEL_9;
    }

    v27 = *(v0 + 1024);
    object = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v148 = v28;
    *object = 134349826;
    if (!__OFADD__(v27, 1))
    {
      v29 = v28;
      v30 = *(v0 + 928);
      v31 = *(v0 + 920);
      *(object + 4) = v27 + 1;
      *(object + 12) = 2050;
      v32 = *(*(v30 + 48) + 16);
      sub_228084CF0(v30, type metadata accessor for PartialSummariesOperation);
      *(object + 14) = v32;
      *(object + 22) = 2082;
      v33 = v31[3];
      v34 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v33);
      v35 = (*(v34 + 16))(v33, v34);
      v37 = v36;
      sub_228084CF0(v31, type metadata accessor for PartialSummariesOperation);
      v38 = sub_227FCC340(v35, v37, &v148);

      *(object + 24) = v38;
      *(object + 32) = 2082;
      swift_getErrorValue();
      v39 = *(v0 + 496);
      v40 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
      v42 = sub_227FCC340(v40, v41, &v148);

      *(object + 34) = v42;
      _os_log_impl(&dword_227FC3000, v25, v26, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", object, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v29, -1, -1);
      MEMORY[0x22AAB28A0](object, -1, -1);

LABEL_9:
      v44 = *(v0 + 1032);
      v45 = *(v0 + 1016);
      v46 = *(v0 + 1008);
      v47 = *(v0 + 1000);
      v48 = *(v0 + 992);
      v49 = *(v0 + 984);
      v50 = *(v0 + 960);
      v51 = *(v0 + 952);
      v96 = *(v0 + 944);
      v98 = *(v0 + 936);
      v100 = *(v0 + 928);
      v102 = *(v0 + 920);
      v104 = *(v0 + 912);
      v106 = *(v0 + 888);
      v108 = *(v0 + 880);
      v110 = *(v0 + 872);
      v112 = *(v0 + 864);
      v114 = *(v0 + 856);
      v116 = *(v0 + 848);
      v118 = *(v0 + 840);
      v120 = *(v0 + 816);
      v122 = *(v0 + 800);
      v124 = *(v0 + 792);
      v126 = *(v0 + 784);
      v128 = *(v0 + 760);
      v130 = *(v0 + 752);
      v131 = *(v0 + 728);
      v134 = *(v0 + 704);
      v136 = *(v0 + 680);
      v139 = *(v0 + 656);
      v142 = *(v0 + 632);
      swift_willThrow();

      v52 = *(v0 + 8);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  countAndFlagsBits = v12.value._countAndFlagsBits;
  if (*(v0 + 1300) != 1)
  {
    if (qword_2813C4988 == -1)
    {
LABEL_13:
      v53 = __swift_project_value_buffer(*(v0 + 968), qword_2813C4990);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  v53 = *(v0 + 1040);
LABEL_14:
  v54 = *(v0 + 944);
  v55 = *(v0 + 936);
  v56 = *(v0 + 624);
  v57 = *(v0 + 976) + 16;
  (*(v0 + 1048))(*(v0 + 984), v53, *(v0 + 968));
  sub_228084B4C(v56, v54, type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v56, v55, type metadata accessor for PartialSummariesOperation);
  v58 = sub_22813880C();
  v59 = sub_2281396CC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v0 + 1024);
    v61 = swift_slowAlloc();
    result = swift_slowAlloc();
    v143 = result;
    v148 = result;
    *v61 = 134349570;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      return result;
    }

    v137 = *(v0 + 984);
    v140 = *(v0 + 1056);
    v132 = *(v0 + 976);
    v135 = *(v0 + 968);
    v63 = *(v0 + 944);
    v64 = *(v0 + 936);
    *(v61 + 4) = v60 + 1;
    *(v61 + 12) = 2050;
    v65 = *(*(v63 + 48) + 16);
    sub_228084CF0(v63, type metadata accessor for PartialSummariesOperation);
    *(v61 + 14) = v65;
    *(v61 + 22) = 2082;
    v66 = v64[3];
    v67 = v64[4];
    __swift_project_boxed_opaque_existential_1(v64, v66);
    v68 = (*(v67 + 16))(v66, v67);
    v70 = v69;
    sub_228084CF0(v64, type metadata accessor for PartialSummariesOperation);
    v71 = sub_227FCC340(v68, v70, &v148);

    *(v61 + 24) = v71;
    _os_log_impl(&dword_227FC3000, v58, v59, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v61, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v143);
    MEMORY[0x22AAB28A0](v143, -1, -1);
    MEMORY[0x22AAB28A0](v61, -1, -1);

    v140(v137, v135);
  }

  else
  {
    v72 = *(v0 + 1056);
    v73 = *(v0 + 984);
    v74 = *(v0 + 976);
    v75 = *(v0 + 968);
    v76 = *(v0 + 936);
    sub_228084CF0(*(v0 + 944), type metadata accessor for PartialSummariesOperation);

    v72(v73, v75);
    sub_228084CF0(v76, type metadata accessor for PartialSummariesOperation);
  }

  v91 = *(v0 + 1024);
  v92 = *(v0 + 1016);
  v93 = *(v0 + 1032);
  v94 = *(v0 + 1008);
  v95 = *(v0 + 1000);
  v97 = *(v0 + 992);
  v99 = *(v0 + 984);
  v101 = *(v0 + 960);
  v103 = *(v0 + 952);
  v105 = *(v0 + 944);
  v107 = *(v0 + 936);
  v109 = *(v0 + 928);
  v111 = *(v0 + 920);
  v113 = *(v0 + 912);
  v115 = *(v0 + 888);
  v77 = *(v0 + 880);
  v78 = *(v0 + 872);
  v117 = *(v0 + 864);
  v119 = *(v0 + 856);
  v121 = *(v0 + 848);
  v123 = *(v0 + 840);
  v79 = *(v0 + 832);
  v90 = *(v0 + 824);
  v125 = *(v0 + 816);
  v127 = *(v0 + 800);
  v80 = *(v0 + 792);
  v81 = *(v0 + 784);
  v141 = *(v0 + 760);
  v144 = *(v0 + 752);
  v82 = *(v0 + 592);
  v148 = countAndFlagsBits;
  v149 = object;
  v83 = *(v82 + 24);
  v84 = *(v82 + 32);
  v129 = *(v0 + 728);
  v133 = *(v0 + 704);
  v138 = *(v0 + 680);
  v147 = *(v0 + 656);
  v85 = *(v0 + 632);
  v86 = *(v0 + 584);

  MEMORY[0x22AAB1970](v83, v84);

  v87 = v149;
  *(v0 + 520) = v148;
  *(v0 + 528) = v87;
  sub_228138EEC();
  sub_228138F0C();
  v88 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v89 = v86 + *(v88 + 20);
  sub_228138C7C();
  (*(v79 + 8))(v78, v90);
  *v86 = v91;
  *(v86 + *(v88 + 24)) = v93;

  v52 = *(v0 + 8);
LABEL_19:

  return v52();
}

uint64_t sub_22808297C()
{
  v66 = v0;
  v1 = *(v0 + 1232);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));

  v8 = *(v0 + 1288);
  v9 = *(v0 + 1040);
  v10 = *(v0 + 920);
  v11 = *(v0 + 624);
  sub_228084B4C(v11, *(v0 + 928), type metadata accessor for PartialSummariesOperation);
  sub_228084B4C(v11, v10, type metadata accessor for PartialSummariesOperation);
  v12 = v8;
  v13 = sub_22813880C();
  v14 = sub_2281396DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 1024);
    v16 = swift_slowAlloc();
    result = swift_slowAlloc();
    v65[0] = result;
    *v16 = 134349826;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = *(v0 + 928);
    v20 = *(v0 + 920);
    *(v16 + 4) = v15 + 1;
    *(v16 + 12) = 2050;
    v21 = *(*(v19 + 48) + 16);
    sub_228084CF0(v19, type metadata accessor for PartialSummariesOperation);
    *(v16 + 14) = v21;
    *(v16 + 22) = 2082;
    v22 = v20[3];
    v23 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v22);
    v24 = (*(v23 + 16))(v22, v23);
    v26 = v25;
    sub_228084CF0(v20, type metadata accessor for PartialSummariesOperation);
    v27 = sub_227FCC340(v24, v26, v65);

    *(v16 + 24) = v27;
    *(v16 + 32) = 2082;
    swift_getErrorValue();
    v28 = *(v0 + 496);
    v29 = Error.loggingDescription.getter(*(v0 + 504), *(v0 + 512));
    v31 = sub_227FCC340(v29, v30, v65);

    *(v16 + 34) = v31;
    _os_log_impl(&dword_227FC3000, v13, v14, "Finished summarizing chunk %{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v18, -1, -1);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  else
  {
    v32 = *(v0 + 920);
    sub_228084CF0(*(v0 + 928), type metadata accessor for PartialSummariesOperation);

    sub_228084CF0(v32, type metadata accessor for PartialSummariesOperation);
  }

  v33 = *(v0 + 1032);
  v34 = *(v0 + 1016);
  v35 = *(v0 + 1008);
  v36 = *(v0 + 1000);
  v37 = *(v0 + 992);
  v38 = *(v0 + 984);
  v39 = *(v0 + 960);
  v40 = *(v0 + 952);
  v42 = *(v0 + 944);
  v43 = *(v0 + 936);
  v44 = *(v0 + 928);
  v45 = *(v0 + 920);
  v46 = *(v0 + 912);
  v47 = *(v0 + 888);
  v48 = *(v0 + 880);
  v49 = *(v0 + 872);
  v50 = *(v0 + 864);
  v51 = *(v0 + 856);
  v52 = *(v0 + 848);
  v53 = *(v0 + 840);
  v54 = *(v0 + 816);
  v55 = *(v0 + 800);
  v56 = *(v0 + 792);
  v57 = *(v0 + 784);
  v58 = *(v0 + 760);
  v59 = *(v0 + 752);
  v60 = *(v0 + 728);
  v61 = *(v0 + 704);
  v62 = *(v0 + 680);
  v63 = *(v0 + 656);
  v64 = *(v0 + 632);
  swift_willThrow();

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_228082E64(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void (*a6)(char *), uint64_t a7)
{
  v153 = a6;
  v154 = a7;
  v139 = a5;
  v155 = a4;
  v143 = a1;
  v9 = type metadata accessor for PartialSummariesOperation(0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v158 = (&v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v14);
  v137 = (&v134 - v15);
  v141 = sub_22813882C();
  v142 = *(v141 - 8);
  v16 = *(v142 + 64);
  v18 = MEMORY[0x28223BE20](v141, v17);
  v140 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  *&v138 = &v134 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E948, &qword_22813E1F0);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v152 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v147 = &v134 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v150 = &v134 - v32;
  v33 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v156 = *(v33 - 8);
  v157 = v33;
  v34 = v156[8];
  v36 = MEMORY[0x28223BE20](v33, v35);
  v148 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v151 = &v134 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = &v134 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v136 = (&v134 - v47);
  MEMORY[0x28223BE20](v46, v48);
  v50 = (&v134 - v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v52 = *(*(v51 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v51 - 8, v53);
  v149 = (&v134 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v54, v56);
  v58 = &v134 - v57;
  v59 = *(v33 + 20);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  sub_228138C5C();
  v61 = (a2 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification));
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8) + 28);
  sub_228083CA4(v61 + v62, v58);
  os_unfair_lock_unlock(v61);
  sub_2280883AC(v58, &qword_27D81EC98, &qword_22813E0D0);
  v63 = v143;
  MEMORY[0x22AAB1230](v161, v60);
  v160[3] = v161[0];
  v160[4] = v161[1];
  os_unfair_lock_lock(v61);
  sub_228088344(v61 + v62, v149, &qword_27D81EC98, &qword_22813E0D0);
  os_unfair_lock_unlock(v61);
  sub_228138C6C();
  v64 = v157;
  v65 = v50 + *(v157 + 20);
  sub_228138C7C();
  v66 = *v63;
  v67 = *(v64 + 24);
  v68 = *(v63 + v67);
  *v50 = v66;
  *(v50 + v67) = v68;
  v135 = v50;
  v69 = v50;
  v70 = v147;
  sub_228084B4C(v69, v147, type metadata accessor for PartialSummariesOperation.TaskResult);
  v149 = v156[7];
  v150 = (v156 + 7);
  (v149)(v70, 0, 1, v64);
  swift_beginAccess();

  sub_2280254C4(v70, v66);
  swift_endAccess();
  if (qword_2813C49E0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v71 = v141;
  v72 = __swift_project_value_buffer(v141, qword_2813C8A20);
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  v73 = v72;
  v74 = v139;
  v75 = v158;
  v76 = v140;
  v146 = byte_2813C49C1;
  v77 = v142;
  v78 = v138;
  v79 = v137;
  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v73 = __swift_project_value_buffer(v71, qword_2813C4990);
  }

  v147 = v72;
  v80 = *(v77 + 16);
  v145 = v77 + 16;
  v144 = v80;
  v80(v78, v73, v71);
  v81 = v136;
  sub_228084B4C(v143, v136, type metadata accessor for PartialSummariesOperation.TaskResult);
  sub_228084B4C(v155, v79, type metadata accessor for PartialSummariesOperation);
  v82 = v78;
  v83 = sub_22813880C();
  LODWORD(v143) = sub_2281396CC();
  if (os_log_type_enabled(v83, v143))
  {
    v84 = swift_slowAlloc();
    result = swift_slowAlloc();
    v161[0] = result;
    *v84 = 134349314;
    v86 = *v81 + 1;
    if (__OFADD__(*v81, 1))
    {
      __break(1u);
      return result;
    }

    v87 = result;
    v88 = v81;
    v89 = v87;
    sub_228084CF0(v88, type metadata accessor for PartialSummariesOperation.TaskResult);
    *(v84 + 4) = v86;
    *(v84 + 12) = 2082;
    v90 = v137;
    v91 = v137[3];
    v92 = v137[4];
    __swift_project_boxed_opaque_existential_1(v137, v91);
    v93 = *(v92 + 16);
    v94 = v92;
    v71 = v141;
    v95 = v93(v91, v94);
    v97 = v96;
    sub_228084CF0(v90, type metadata accessor for PartialSummariesOperation);
    v98 = sub_227FCC340(v95, v97, v161);
    v75 = v158;

    *(v84 + 14) = v98;
    _os_log_impl(&dword_227FC3000, v83, v143, "Received result for chunk %{public}ld for [requestIdentifier: %{public}s]", v84, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v89);
    MEMORY[0x22AAB28A0](v89, -1, -1);
    MEMORY[0x22AAB28A0](v84, -1, -1);

    v99 = v142;
    v143 = *(v142 + 8);
    (v143)(v138, v71);
    v76 = v140;
  }

  else
  {
    sub_228084CF0(v81, type metadata accessor for PartialSummariesOperation.TaskResult);

    v99 = v142;
    v143 = *(v142 + 8);
    (v143)(v82, v71);
    sub_228084CF0(v79, type metadata accessor for PartialSummariesOperation);
  }

  swift_beginAccess();
  swift_beginAccess();
  v100 = *v74;
  swift_beginAccess();
  v102 = *a3;
  if (*(*a3 + 16))
  {
    v142 = v99 + 8;
    *&v101 = 134349314;
    v138 = v101;
    do
    {
      v103 = sub_22808D0CC(v100);
      if ((v104 & 1) == 0)
      {
        break;
      }

      v105 = v156[9];
      v106 = v151;
      sub_228084B4C(*(v102 + 56) + v105 * v103, v151, type metadata accessor for PartialSummariesOperation.TaskResult);
      sub_2280876B0(v106, v44, type metadata accessor for PartialSummariesOperation.TaskResult);
      swift_endAccess();
      swift_beginAccess();
      v107 = sub_22808D0CC(v100);
      if (v108)
      {
        v109 = v107;
        v110 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *a3;
        v159 = *a3;
        *a3 = 0x8000000000000000;
        v113 = v152;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22801DC28();
          v112 = v159;
        }

        sub_2280876B0(*(v112 + 56) + v109 * v105, v113, type metadata accessor for PartialSummariesOperation.TaskResult);
        sub_228028368(v109, v112);
        v114 = *a3;
        *a3 = v112;

        v115 = 0;
      }

      else
      {
        v115 = 1;
        v113 = v152;
      }

      v116 = v157;
      (v149)(v113, v115, 1, v157);
      swift_endAccess();
      sub_2280883AC(v113, &qword_27D81E948, &qword_22813E1F0);
      v153(&v44[*(v116 + 20)]);
      if (__OFADD__(*v74, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      ++*v74;
      v117 = v147;
      v118 = v148;
      if ((v146 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v117 = __swift_project_value_buffer(v71, qword_2813C4990);
      }

      v144(v76, v117, v71);
      sub_228084B4C(v44, v118, type metadata accessor for PartialSummariesOperation.TaskResult);
      sub_228084B4C(v155, v75, type metadata accessor for PartialSummariesOperation);
      v119 = sub_22813880C();
      v120 = v76;
      v121 = sub_2281396CC();
      if (os_log_type_enabled(v119, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v160[0] = v123;
        *v122 = v138;
        v124 = *v118 + 1;
        if (__OFADD__(*v118, 1))
        {
          goto LABEL_32;
        }

        v125 = v123;
        sub_228084CF0(v118, type metadata accessor for PartialSummariesOperation.TaskResult);
        *(v122 + 4) = v124;
        *(v122 + 12) = 2082;
        v126 = v158[3];
        v127 = v158[4];
        __swift_project_boxed_opaque_existential_1(v158, v126);
        v128 = *(v127 + 16);
        v129 = v127;
        v74 = v139;
        v130 = v128(v126, v129);
        v132 = v131;
        sub_228084CF0(v158, type metadata accessor for PartialSummariesOperation);
        v133 = sub_227FCC340(v130, v132, v160);

        *(v122 + 14) = v133;
        _os_log_impl(&dword_227FC3000, v119, v121, "Yielded result for chunk %{public}ld for [requestIdentifier: %{public}s]", v122, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v125);
        MEMORY[0x22AAB28A0](v125, -1, -1);
        MEMORY[0x22AAB28A0](v122, -1, -1);

        v76 = v140;
        v71 = v141;
        (v143)(v140, v141);
        v75 = v158;
        sub_228084CF0(v44, type metadata accessor for PartialSummariesOperation.TaskResult);
      }

      else
      {
        sub_228084CF0(v118, type metadata accessor for PartialSummariesOperation.TaskResult);

        (v143)(v120, v71);
        sub_228084CF0(v44, type metadata accessor for PartialSummariesOperation.TaskResult);
        sub_228084CF0(v75, type metadata accessor for PartialSummariesOperation);
        v76 = v120;
      }

      v100 = *v74;
      swift_beginAccess();
      v102 = *a3;
    }

    while (*(*a3 + 16));
  }

  swift_endAccess();
  return sub_228084CF0(v135, type metadata accessor for PartialSummariesOperation.TaskResult);
}

uint64_t sub_228083CA4(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v29 - v11;
  v13 = sub_228138E0C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v20 = v19;
  sub_228088344(v18, v12, &qword_27D81EC98, &qword_22813E0D0);
  v21 = *(v20 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    return sub_2280883AC(v12, &qword_27D81EC98, &qword_22813E0D0);
  }

  v29[1] = v2;
  v29[0] = *(v20 + 32);
  (v29[0])(v17, v12, v13);
  sub_228088344(v30, v9, &qword_27D81EC98, &qword_22813E0D0);
  v23 = v21(v9, 1, v13);
  sub_2280883AC(v9, &qword_27D81EC98, &qword_22813E0D0);
  if (v23 == 1)
  {
    v24 = v30;
    sub_2280883AC(v30, &qword_27D81EC98, &qword_22813E0D0);
    (v29[0])(v24, v17, v13);
    return (*(v20 + 56))(v24, 0, 1, v13);
  }

  else
  {
    v25 = v30;
    if (v21(v30, 1, v13))
    {
      return (*(v20 + 8))(v17, v13);
    }

    else
    {
      v26 = v25;
      v27 = sub_228138DFC();
      v28 = *(v20 + 8);
      v28(v26, v13);
      if (v27)
      {
        sub_228138DFC();
      }

      sub_228138DEC();
      return (v28)(v17, v13);
    }
  }
}

uint64_t sub_228083FBC()
{
  v1 = v0 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8);
  sub_2280883AC(v1 + *(v2 + 28), &qword_27D81EC98, &qword_22813E0D0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_228084054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2FF8((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280840C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  sub_228088294(v2, v3, KeyPath);
}

uint64_t sub_22808415C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_228084228(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_227FEB404(a2, v6), (v8 & 1) != 0))
  {
    sub_227FEB0D4(*(v6 + 56) + 32 * v7, &v15);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v9 = MEMORY[0x277D84A28];
  result = swift_dynamicCast();
  v11 = v14;
  if (!result)
  {
    v11 = 0;
  }

  v12 = __OFADD__(v11, a3);
  v13 = v11 + a3;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(&v16 + 1) = v9;
    *&v15 = v13;

    return sub_2280449E4(&v15, a2, a1);
  }

  return result;
}

uint64_t sub_228084314(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v16 - v9;
  sub_228088344(a3, &v16 - v9, &qword_27D81EC50, &unk_228140BB0);
  v11 = sub_228136F8C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_2280883AC(v10, &qword_27D81EC50, &unk_228140BB0);
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = v11;
    boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0(&v16);
    (*(v12 + 32))(boxed_opaque_existential_0Tm_0, v10, v11);
  }

  v14 = *a2;
  return sub_228085558(&v16, a2, a1);
}

uint64_t sub_2280844B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  sub_2280D2EEC((v3 + 24), KeyPath, a2);
  os_unfair_lock_unlock((v3 + 16));
}

uint64_t sub_22808452C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16[-v11];
  sub_228088344(a1, &v16[-v11], &qword_27D81EC50, &unk_228140BB0);
  v13 = *a2;
  KeyPath = swift_getKeyPath();
  sub_228088344(v12, v9, &qword_27D81EC50, &unk_228140BB0);
  os_unfair_lock_lock((v13 + 16));
  sub_228084314((v13 + 24), KeyPath, v9);
  os_unfair_lock_unlock((v13 + 16));

  sub_2280883AC(v12, &qword_27D81EC50, &unk_228140BB0);
  return sub_2280883AC(v9, &qword_27D81EC50, &unk_228140BB0);
}

uint64_t sub_228084674(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22808476C;

  return v7(a1);
}

uint64_t sub_22808476C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_228084864(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22808898C;

  return v7(a1);
}

uint64_t sub_22808495C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2280849CC()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECE8, &qword_22813E220);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_228084A70(v4 + 16, v4 + 40, v2, v1 + 40);
  }

  *v0 = v4;
  return result;
}

uint64_t sub_228084A70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 >= v6)
  {
    v9 = 0;
    v7 = 0;
    v10 = a3[1];
    if (v6 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *a3 - v4;
  v9 = a4;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_228084B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228084BB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228084BFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2280889B0;

  return sub_228071BB8(a1, v4, v5, v6, v7, v9 | v8, v11, v10);
}

uint64_t sub_228084CF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228084DCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_228084E94;

  return sub_228065E18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_228084E94()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_228084FF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228085040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280850EC()
{
  result = type metadata accessor for SummarizationSession.Configuration();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for TokenCounter();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_22808521C()
{
  sub_2280852AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2280852AC()
{
  if (!qword_27D81EC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EC98, &qword_22813E0D0);
    v0 = sub_2281374DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D81EC90);
    }
  }
}

uint64_t sub_228085310(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1 + ((*(v4 + 80) + 104) & ~*(v4 + 80));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_228085440;

  return sub_228067034(a1, v5, v6, (v1 + 4), v7, v8, v9, v10);
}

uint64_t sub_228085440()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_228085558(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 24))
  {
    sub_227FE5EAC(a1, v9);
    v5 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *a3;

    sub_22808562C(v9, a2, isUniquelyReferenced_nonNull_native, &v8);

    *a3 = v8;
  }

  else
  {
    sub_2280883AC(a1, &qword_27D81E940, &qword_22813C658);
    sub_228027400(a2, v9);

    return sub_2280883AC(v9, &qword_27D81E940, &qword_22813C658);
  }

  return result;
}

_OWORD *sub_22808562C(_OWORD *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = sub_2280D3358(a2, *a4);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_22801D03C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2280196BC(v14, a3 & 1);
    v9 = sub_2280D3358(a2, *a4);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      result = sub_2281399EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *a4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v20);

    return sub_227FE5EAC(a1, v20);
  }

  else
  {
    sub_228085834(v9, a2, a1, v19);
  }
}

uint64_t sub_228085784@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 56);
    v7 = type metadata accessor for SummarizationResult();
    return sub_228084B4C(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for SummarizationResult);
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_228085834(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22808589C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2280889B4;

  return sub_228084864(a1, v5);
}

uint64_t sub_228085954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2280889B8;

  return sub_228084864(a1, v5);
}

uint64_t sub_228085A80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2280889BC;

  return sub_22806DD18(a1, v4, v5, v6);
}

uint64_t sub_228085B74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228085BAC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2280889C0;

  return sub_22807908C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_228085C84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_228085CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  v7 = sub_2280D2D08((a1 + 24), KeyPath);
  v9 = v8;
  os_unfair_lock_unlock((a1 + 16));

  if ((v9 & 1) == 0 || (v10 = swift_getKeyPath(), os_unfair_lock_lock((a1 + 16)), v7 = sub_2280D2D08((a1 + 24), v10), v12 = v11, os_unfair_lock_unlock((a1 + 16)), , (v12 & 1) == 0))
  {
    v18 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 != 1)
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v19 = &qword_2813C76F8;
      goto LABEL_16;
    }

    if (qword_27D81E2A0 != -1)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v19 = &off_27D81EDB0;
LABEL_16:
      v20 = *(*v19 + 592);
      v21 = *(*v19 + 600);
      v22 = *(*v19 + 608);
      v23 = *(*v19 + 616);
      v24 = *(*v19 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      if (byte_2813C4638 == 1)
      {
        v22(&v26, v24);

        v21 = v26;
      }

      else
      {
      }

      v25 = v7 / a2 * (a3 - v21);
      if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v25 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v25 < 9.22337204e18)
      {
        return v25;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v13 = sub_22813882C();
  __swift_project_value_buffer(v13, qword_2813C8A20);
  v14 = sub_22813880C();
  v15 = sub_2281396EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227FC3000, v14, v15, "Previous value for overestimatedInputTokenCount unavailable when handling computing maximumTokenCountFallbackValue; falling back to reducing target by a factor of 2.", v16, 2u);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  return a3 / 2;
}

uint64_t sub_2280860B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 != 2)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_228133FDC(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_228133FDC((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        v3[v7 + 32] = v4 & 1;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = *(v3 + 2);
  if (v8)
  {
    v9 = (v3 + 32);
    do
    {
      v10 = v8;
      if (v8-- == 0)
      {
        break;
      }

      v12 = *v9++;
    }

    while (v12 != 1);
    v13 = v10 != 0;
  }

  else
  {

    return 2;
  }

  return v13;
}

uint64_t sub_2280861C8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    v3 = MEMORY[0x277D84F90];
    do
    {
      if ((*v2 & 1) == 0)
      {
        v4 = *(v2 - 1);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2281341D4(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v6 = *(v3 + 16);
        v5 = *(v3 + 24);
        if (v6 >= v5 >> 1)
        {
          result = sub_2281341D4((v5 > 1), v6 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v6 + 1;
        *(v3 + 8 * v6 + 32) = v4;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 32);
    v9 = *(v3 + 16);
    while (1)
    {
      v10 = *v8++;
      v11 = __OFADD__(v7, v10);
      v7 += v10;
      if (v11)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_17:

    return v7;
  }

  return result;
}

uint64_t sub_2280862E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = MEMORY[0x277D84F90];
    do
    {
      if ((*v2 & 1) == 0)
      {
        v4 = *(v2 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2281340D0(0, *(v3 + 2) + 1, 1, v3);
        }

        v6 = *(v3 + 2);
        v5 = *(v3 + 3);
        if (v6 >= v5 >> 1)
        {
          v3 = sub_2281340D0((v5 > 1), v6 + 1, 1, v3);
        }

        *(v3 + 2) = v6 + 1;
        *&v3[8 * v6 + 32] = v4;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v7 = *(v3 + 2);
  if (!v7)
  {

    *&result = 0.0;
    return result;
  }

  if (v7 > 3)
  {
    v8 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    v11 = v3 + 48;
    v9 = 0.0;
    v12 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = *v11;
      v9 = v9 + *(v11 - 2) + *(v11 - 1) + *v11 + *(v11 + 1);
      v11 += 32;
      v12 -= 4;
    }

    while (v12);
    if (v7 == v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0.0;
  }

  v14 = v7 - v8;
  v15 = &v3[8 * v8 + 32];
  do
  {
    v16 = *v15++;
    v9 = v9 + v16;
    --v14;
  }

  while (v14);
LABEL_20:

  *&result = v9 / v7;
  return result;
}

char *sub_228086458(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_206;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  v149 = v3 & ~(v3 >> 63);
  if (v3)
  {
    v152 = MEMORY[0x277D84F90];
    result = sub_228043C9C(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v4 = v152;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAB1E40](v6, a2);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            v3 = sub_22813990C();
            goto LABEL_3;
          }

          if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_189;
          }

          v7 = *(a2 + 8 * v6 + 32);
        }

        KeyPath = swift_getKeyPath();
        os_unfair_lock_lock((v7 + 16));
        v9 = *(v7 + 24);
        if (*(v9 + 16) && (v10 = sub_227FEB408(KeyPath, *(v7 + 24)), (v11 & 1) != 0))
        {
          sub_227FEB0D4(*(v9 + 56) + 32 * v10, &v154);
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        if (swift_dynamicCast())
        {
          v12 = v153;
        }

        else
        {
          v12 = 2;
        }

        os_unfair_lock_unlock((v7 + 16));

        v152 = v4;
        v14 = *(v4 + 16);
        v13 = *(v4 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_228043C9C((v13 > 1), v14 + 1, 1);
        }

        ++v6;
        *(v4 + 16) = v14 + 1;
        *(v4 + v14 + 32) = v12;
        if (v3 == v6)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
    goto LABEL_208;
  }

LABEL_21:
  v15 = sub_2280860B4(v4);

  v16 = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  if (v15 == 2)
  {
    v17 = 0;
    v154 = 0uLL;
    *&v155 = 0;
  }

  else
  {
    LOBYTE(v154) = v15 & 1;
    v17 = MEMORY[0x277D839B0];
  }

  *(&v155 + 1) = v17;

  sub_2280449FC(&v154, v16, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  v18 = MEMORY[0x277D84F90];
  if (v3)
  {
    v152 = MEMORY[0x277D84F90];
    result = sub_228043C9C(0, v149, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v18 = v152;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x22AAB1E40](v19, a2);
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_190;
          }

          if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_191;
          }

          v20 = *(a2 + 8 * v19 + 32);
        }

        v21 = swift_getKeyPath();
        os_unfair_lock_lock((v20 + 16));
        v22 = *(v20 + 24);
        if (*(v22 + 16) && (v23 = sub_227FEB408(v21, *(v20 + 24)), (v24 & 1) != 0))
        {
          sub_227FEB0D4(*(v22 + 56) + 32 * v23, &v154);
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        if (swift_dynamicCast())
        {
          v25 = v153;
        }

        else
        {
          v25 = 2;
        }

        os_unfair_lock_unlock((v20 + 16));

        v152 = v18;
        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_228043C9C((v26 > 1), v27 + 1, 1);
        }

        ++v19;
        *(v18 + 16) = v27 + 1;
        *(v18 + v27 + 32) = v25;
        if (v3 == v19)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

LABEL_42:
  v28 = sub_2280860B4(v18);

  v29 = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  if (v28 == 2)
  {
    v30 = 0;
    v154 = 0uLL;
    *&v155 = 0;
  }

  else
  {
    LOBYTE(v154) = v28 & 1;
    v30 = MEMORY[0x277D839B0];
  }

  *(&v155 + 1) = v30;

  sub_2280449FC(&v154, v29, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  v31 = MEMORY[0x277D84F90];
  if (v3)
  {
    v153 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v149, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v32 = 0;
      v31 = v153;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x22AAB1E40](v32, a2);
        }

        else
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_192;
          }

          if (v32 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_193;
          }

          v33 = *(a2 + 8 * v32 + 32);
        }

        v34 = swift_getKeyPath();
        os_unfair_lock_lock((v33 + 16));
        v35 = *(v33 + 24);
        if (*(v35 + 16) && (v36 = sub_227FEB404(v34, *(v33 + 24)), (v37 & 1) != 0))
        {
          sub_227FEB0D4(*(v35 + 56) + 32 * v36, &v154);
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        v38 = swift_dynamicCast();
        if (v38)
        {
          v39 = v152;
        }

        else
        {
          v39 = 0;
        }

        os_unfair_lock_unlock((v33 + 16));

        LOBYTE(v153) = v31;
        v41 = *(v31 + 16);
        v40 = *(v31 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_228043C6C((v40 > 1), v41 + 1, 1);
        }

        ++v32;
        *(v31 + 16) = v41 + 1;
        v42 = v31 + 16 * v41;
        *(v42 + 32) = v39;
        *(v42 + 40) = v38 ^ 1;
        if (v3 == v32)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_209;
  }

LABEL_63:
  v43 = sub_2280861C8(v31);
  v45 = v44;

  v46 = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  if (v45)
  {
    v43 = 0;
    v47 = 0;
    *(&v154 + 1) = 0;
    *&v155 = 0;
  }

  else
  {
    v47 = MEMORY[0x277D84A28];
  }

  *&v154 = v43;
  *(&v155 + 1) = v47;

  sub_2280449E4(&v154, v46, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  v48 = MEMORY[0x277D84F90];
  if (v3)
  {
    v153 = MEMORY[0x277D84F90];
    result = sub_228043C3C(0, v149, 0);
    if (v3 < 0)
    {
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v49 = 0;
    v50 = v153;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x22AAB1E40](v49, a2);
      }

      else
      {
        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_194;
        }

        if (v49 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_195;
        }

        v51 = *(a2 + 8 * v49 + 32);
      }

      v52 = swift_getKeyPath();
      os_unfair_lock_lock((v51 + 16));
      v53 = *(v51 + 24);
      if (*(v53 + 16) && (v54 = sub_227FEB40C(v52, *(v51 + 24)), (v55 & 1) != 0))
      {
        sub_227FEB0D4(*(v53 + 56) + 32 * v54, &v154);
      }

      else
      {
        v154 = 0u;
        v155 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
      v56 = swift_dynamicCast();
      if (v56)
      {
        v57 = v152;
      }

      else
      {
        v57 = 0;
      }

      os_unfair_lock_unlock((v51 + 16));

      LOBYTE(v153) = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_228043C3C((v58 > 1), v59 + 1, 1);
      }

      ++v49;
      *(v50 + 16) = v59 + 1;
      v60 = v50 + 16 * v59;
      *(v60 + 32) = v57;
      *(v60 + 40) = v56 ^ 1;
    }

    while (v3 != v49);
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  v61 = sub_2280862E0(v50);
  v63 = v62;

  v64 = swift_getKeyPath();
  os_unfair_lock_lock((a1 + 16));
  if (v63)
  {
    v61 = 0;
    v65 = 0;
    *(&v154 + 1) = 0;
    *&v155 = 0;
  }

  else
  {
    v65 = MEMORY[0x277D839F8];
  }

  *&v154 = v61;
  *(&v155 + 1) = v65;

  sub_228044BA4(&v154, v64, (a1 + 24));
  os_unfair_lock_unlock((a1 + 16));

  if (v3)
  {
    LOBYTE(v153) = v48;
    result = sub_228043C3C(0, v149, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v66 = 0;
      v67 = v48;
      v68 = a2 & 0xC000000000000001;
      while (1)
      {
        if (v68)
        {
          v69 = MEMORY[0x22AAB1E40](v66, a2);
        }

        else
        {
          if ((v66 & 0x8000000000000000) != 0)
          {
            goto LABEL_196;
          }

          if (v66 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_197;
          }

          v69 = *(a2 + 8 * v66 + 32);
        }

        v70 = swift_getKeyPath();
        os_unfair_lock_lock((v69 + 16));
        v71 = *(v69 + 24);
        if (*(v71 + 16) && (v72 = sub_227FEB40C(v70, *(v69 + 24)), (v73 & 1) != 0))
        {
          sub_227FEB0D4(*(v71 + 56) + 32 * v72, &v154);
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        v74 = swift_dynamicCast();
        if (v74)
        {
          v75 = v152;
        }

        else
        {
          v75 = 0;
        }

        os_unfair_lock_unlock((v69 + 16));

        LOBYTE(v153) = v67;
        v77 = *(v67 + 16);
        v76 = *(v67 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_228043C3C((v76 > 1), v77 + 1, 1);
        }

        ++v66;
        *(v67 + 16) = v77 + 1;
        v78 = v67 + 16 * v77;
        *(v78 + 32) = v75;
        *(v78 + 40) = v74 ^ 1;
        if (v3 == v66)
        {
          v79 = sub_2280862E0(v67);
          v81 = v80;

          sub_2280D4D78(v79, v81 & 1);
          v153 = MEMORY[0x277D84F90];
          sub_228043C3C(0, v149, 0);
          v82 = 0;
          v83 = v153;
          while (1)
          {
            if (v68)
            {
              v84 = MEMORY[0x22AAB1E40](v82, a2);
            }

            else
            {
              if ((v82 & 0x8000000000000000) != 0)
              {
                goto LABEL_198;
              }

              if (v82 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_199;
              }

              v84 = *(a2 + 8 * v82 + 32);
            }

            v85 = swift_getKeyPath();
            os_unfair_lock_lock((v84 + 16));
            v86 = *(v84 + 24);
            if (*(v86 + 16) && (v87 = sub_227FEB40C(v85, *(v84 + 24)), (v88 & 1) != 0))
            {
              sub_227FEB0D4(*(v86 + 56) + 32 * v87, &v154);
            }

            else
            {
              v154 = 0u;
              v155 = 0u;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
            v89 = swift_dynamicCast();
            if (v89)
            {
              v90 = v152;
            }

            else
            {
              v90 = 0;
            }

            os_unfair_lock_unlock((v84 + 16));

            LOBYTE(v153) = v83;
            v92 = *(v83 + 16);
            v91 = *(v83 + 24);
            if (v92 >= v91 >> 1)
            {
              sub_228043C3C((v91 > 1), v92 + 1, 1);
            }

            ++v82;
            *(v83 + 16) = v92 + 1;
            v93 = v83 + 16 * v92;
            *(v93 + 32) = v90;
            *(v93 + 40) = v89 ^ 1;
            if (v3 == v82)
            {
              goto LABEL_125;
            }
          }
        }
      }
    }

    goto LABEL_211;
  }

  v83 = MEMORY[0x277D84F90];
  v94 = sub_2280862E0(MEMORY[0x277D84F90]);
  v96 = v95;

  sub_2280D4D78(v94, v96 & 1);
LABEL_125:
  v97 = sub_2280862E0(v83);
  v99 = v98;

  sub_2280D4DA4(v97, v99 & 1);
  v100 = swift_getKeyPath();
  v101 = MEMORY[0x277D84F90];
  if (v3)
  {
    v153 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v149, 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v102 = 0;
      v101 = v153;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v103 = MEMORY[0x22AAB1E40](v102, a2);
        }

        else
        {
          if ((v102 & 0x8000000000000000) != 0)
          {
            goto LABEL_200;
          }

          if (v102 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_201;
          }

          v103 = *(a2 + 8 * v102 + 32);
        }

        v104 = swift_getKeyPath();
        os_unfair_lock_lock((v103 + 16));
        v105 = *(v103 + 24);
        if (*(v105 + 16) && (v106 = sub_227FEB404(v104, *(v103 + 24)), (v107 & 1) != 0))
        {
          sub_227FEB0D4(*(v105 + 56) + 32 * v106, &v154);
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
        v108 = swift_dynamicCast();
        if (v108)
        {
          v109 = v152;
        }

        else
        {
          v109 = 0;
        }

        os_unfair_lock_unlock((v103 + 16));

        LOBYTE(v153) = v101;
        v111 = *(v101 + 16);
        v110 = *(v101 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_228043C6C((v110 > 1), v111 + 1, 1);
        }

        ++v102;
        *(v101 + 16) = v111 + 1;
        v112 = v101 + 16 * v111;
        *(v112 + 32) = v109;
        *(v112 + 40) = v108 ^ 1;
        if (v3 == v102)
        {
          goto LABEL_143;
        }
      }
    }

    goto LABEL_212;
  }

LABEL_143:
  v113 = sub_2280861C8(v101);
  v115 = v114;

  if ((v115 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 16));
    sub_228084228((a1 + 24), v100, v113);
    os_unfair_lock_unlock((a1 + 16));
  }

  v116 = swift_getKeyPath();
  v117 = MEMORY[0x277D84F90];
  if (v3)
  {
    v153 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v149, 0);
    if (v3 < 0)
    {
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    v148 = v116;
    v118 = 0;
    v117 = v153;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v119 = MEMORY[0x22AAB1E40](v118, a2);
      }

      else
      {
        if ((v118 & 0x8000000000000000) != 0)
        {
          goto LABEL_202;
        }

        if (v118 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_203;
        }

        v119 = *(a2 + 8 * v118 + 32);
      }

      v120 = swift_getKeyPath();
      os_unfair_lock_lock((v119 + 16));
      v121 = *(v119 + 24);
      if (*(v121 + 16) && (v122 = sub_227FEB404(v120, *(v119 + 24)), (v123 & 1) != 0))
      {
        sub_227FEB0D4(*(v121 + 56) + 32 * v122, &v154);
      }

      else
      {
        v154 = 0u;
        v155 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
      v124 = swift_dynamicCast();
      if (v124)
      {
        v125 = v152;
      }

      else
      {
        v125 = 0;
      }

      os_unfair_lock_unlock((v119 + 16));

      LOBYTE(v153) = v117;
      v127 = *(v117 + 16);
      v126 = *(v117 + 24);
      if (v127 >= v126 >> 1)
      {
        sub_228043C6C((v126 > 1), v127 + 1, 1);
      }

      ++v118;
      *(v117 + 16) = v127 + 1;
      v128 = v117 + 16 * v127;
      *(v128 + 32) = v125;
      *(v128 + 40) = v124 ^ 1;
    }

    while (v3 != v118);
    v116 = v148;
  }

  v129 = sub_2280861C8(v117);
  v131 = v130;

  if ((v131 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 16));
    sub_228084228((a1 + 24), v116, v129);
    os_unfair_lock_unlock((a1 + 16));
  }

  v132 = swift_getKeyPath();
  v133 = MEMORY[0x277D84F90];
  if (v3)
  {
    v153 = MEMORY[0x277D84F90];
    result = sub_228043C6C(0, v149, 0);
    if (v3 < 0)
    {
LABEL_214:
      __break(1u);
      return result;
    }

    v150 = v132;
    v134 = 0;
    v133 = v153;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v135 = MEMORY[0x22AAB1E40](v134, a2);
      }

      else
      {
        if ((v134 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        if (v134 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_205;
        }

        v135 = *(a2 + 8 * v134 + 32);
      }

      v136 = swift_getKeyPath();
      os_unfair_lock_lock((v135 + 16));
      v137 = *(v135 + 24);
      if (*(v137 + 16) && (v138 = sub_227FEB404(v136, *(v135 + 24)), (v139 & 1) != 0))
      {
        sub_227FEB0D4(*(v137 + 56) + 32 * v138, &v154);
      }

      else
      {
        v154 = 0u;
        v155 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
      v140 = swift_dynamicCast();
      if (v140)
      {
        v141 = v152;
      }

      else
      {
        v141 = 0;
      }

      os_unfair_lock_unlock((v135 + 16));

      LOBYTE(v153) = v133;
      v143 = *(v133 + 16);
      v142 = *(v133 + 24);
      if (v143 >= v142 >> 1)
      {
        sub_228043C6C((v142 > 1), v143 + 1, 1);
      }

      ++v134;
      *(v133 + 16) = v143 + 1;
      v144 = v133 + 16 * v143;
      *(v144 + 32) = v141;
      *(v144 + 40) = v140 ^ 1;
    }

    while (v3 != v134);
    v132 = v150;
  }

  v145 = sub_2280861C8(v133);
  v147 = v146;

  if ((v147 & 1) == 0)
  {
    os_unfair_lock_lock((a1 + 16));
    sub_228084228((a1 + 24), v132, v145);
    os_unfair_lock_unlock((a1 + 16));
  }
}