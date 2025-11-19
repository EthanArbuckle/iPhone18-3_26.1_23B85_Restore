uint64_t sub_22FC02784()
{

  return MEMORY[0x2822009F8](sub_22FC0289C, 0, 0);
}

uint64_t sub_22FC028B8()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0FA88(v4, v2, v3);
}

uint64_t sub_22FC02960()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FC02A10, v1, 0);
}

uint64_t sub_22FC02A10()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AFA38, &unk_22FCDC830);
    v30 = sub_22FC0266C;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0FA88(v6, v4, v5);
}

uint64_t sub_22FC02EB4(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC03070, v1, 0);
}

uint64_t sub_22FC03070()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FC03868;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF970, &unk_22FCDC7E0);
    v28 = sub_22FC04964;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC0FEF0(v33, v31, v32);
}

uint64_t sub_22FC03868()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FC038E4, v1, 0);
}

uint64_t sub_22FC038E4()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_244_0;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FC04244;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FC04C58;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF970, &unk_22FCDC7E0);
      v29 = sub_22FC04964;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC0FEF0(v46, v44, v45);
  }
}

uint64_t sub_22FC04244(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FC0435C, v4, 0);
}

uint64_t sub_22FC0435C()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AF970, &unk_22FCDC7E0);
    v49 = sub_22FC04964;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC0FEF0(v26, v24, v25);
}

uint64_t sub_22FC04964()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FC04A7C;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FC04BB0, v6, 0);
  }
}

uint64_t sub_22FC04A7C()
{

  return MEMORY[0x2822009F8](sub_22FC04B94, 0, 0);
}

uint64_t sub_22FC04BB0()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC0FEF0(v4, v2, v3);
}

uint64_t sub_22FC04C58()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FC04D08, v1, 0);
}

uint64_t sub_22FC04D08()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF970, &unk_22FCDC7E0);
    v30 = sub_22FC04964;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC0FEF0(v6, v4, v5);
}

uint64_t sub_22FC051AC(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC05368, v1, 0);
}

uint64_t sub_22FC05368()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FC05B60;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA3065C, *(v0 + 392), &unk_2844AF7E0, &unk_22FCDC740);
    v28 = sub_22FC06EFC;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FC06C5C;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC10358(v33, v31, v32);
}

uint64_t sub_22FC05B60()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FC05BDC, v1, 0);
}

uint64_t sub_22FC05BDC()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA3065C;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_186;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FC0653C;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FC071F0;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA3065C, *(v0 + 392), &unk_2844AF7E0, &unk_22FCDC740);
      v29 = sub_22FC06EFC;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FC06C5C;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC10358(v46, v44, v45);
  }
}

uint64_t sub_22FC0653C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FC06654, v4, 0);
}

uint64_t sub_22FC06654()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA3065C, *(v0 + 49), &unk_2844AF7E0, &unk_22FCDC740);
    v49 = sub_22FC06EFC;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FC06C5C;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC10358(v26, v24, v25);
}

uint64_t sub_22FC06C5C()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 304);
  v4 = *(*v0 + 264);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_22FC06DD8, v4, 0);
}

uint64_t sub_22FC06DD8()
{
  v1 = v0[62];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[42];

  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  __swift_destroy_boxed_opaque_existential_0((v0 + 8));

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FC06EFC()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FC07014;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FC07148, v6, 0);
  }
}

uint64_t sub_22FC07014()
{

  return MEMORY[0x2822009F8](sub_22FC0712C, 0, 0);
}

uint64_t sub_22FC07148()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FC06C5C;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC10358(v4, v2, v3);
}

uint64_t sub_22FC071F0()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FC072A0, v1, 0);
}

uint64_t sub_22FC072A0()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA3065C, *(v0 + 392), &unk_2844AF7E0, &unk_22FCDC740);
    v30 = sub_22FC06EFC;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FC06C5C;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC10358(v6, v4, v5);
}

uint64_t sub_22FC07744(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v3 = sub_22FCC6794();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC07900, v1, 0);
}

uint64_t sub_22FC07900()
{
  v72 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 312);
  v66 = *(v0 + 304);
  v64 = *(v0 + 328);
  v65 = *(v0 + 296);
  v6 = *(v0 + 256);
  v8 = v6[5];
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v8);
  (*(v7 + 32))(v8, v7);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  swift_getDynamicType();
  (*(*(v0 + 96) + 24))();
  v9 = *(v3 + 16);
  v9(v1, v2, v4);
  type metadata accessor for TaskProgressChecker();
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_wasStopped) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_lastProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = 0;
  *(v0 + 368) = v10;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = 0;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_numberOfCallsToProgressSinceLastRecordedCall) = 0;
  v9(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger, v1, v4);
  Current = CFAbsoluteTimeGetCurrent();
  v12 = *(v3 + 8);
  *(v0 + 376) = v12;
  *(v0 + 384) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v4);
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastCallToProgress) = Current;
  *(v10 + OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_timestampOfLastRecordedCallToProgress) = Current;
  sub_22FA2D328((v6 + 2), v0 + 104);
  v13 = swift_allocObject();
  *(v0 + 392) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  sub_22FA2CF78((v0 + 104), v13 + 32);

  sub_22FCC6784();
  v14 = v5[2];
  *(v0 + 400) = v14;
  *(v0 + 408) = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v65, v64, v66);
  v15 = v5[7];
  *(v0 + 416) = v15;
  *(v0 + 424) = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v15(v65, 0, 1, v66);
  v16 = *(*v6 + 168);
  swift_beginAccess();
  sub_22FA2F4C8(v65, v6 + v16);
  swift_endAccess();
  sub_22FCC66A4();
  v18 = v17;
  v19 = v5[1];
  *(v0 + 432) = v19;
  *(v0 + 440) = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v64, v66);
  *(v6 + *(*v6 + 192)) = v18;
  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v20);
  v22 = (*(v21 + 56))(v20, v21);
  *(v0 + 448) = v22;
  sub_22FA2D328((v6 + 2), v0 + 144);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v24);
  if (sub_22FA2F538(v24, v23))
  {
    v67 = *(v0 + 168);
    v25 = *(v0 + 168);
    v26 = __swift_project_boxed_opaque_existential_1((v0 + 144), v25);
    *(v0 + 208) = v67;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 184));
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    v28 = sub_22FC080F8;
    v29 = v22;
    goto LABEL_15;
  }

  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v35);
    v37 = (*(v36 + 64))(v35, v36);
    if (v37)
    {
      v38 = *(v37 + 112);

      v39 = *(v38 + 112);

      *(v0 + 248) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v40 = sub_22FCC91D4();
      v42 = v41;
    }

    else
    {
      v39 = 0;
      v42 = 0xE400000000000000;
      v40 = 1701736270;
    }

    *(v0 + 520) = v39;

    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (os_log_type_enabled(v43, v44))
    {
      v68 = v40;
      v45 = *(v0 + 256);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136446978;
      v48 = v45[5];
      v49 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v48);
      v70 = (*(v49 + 40))(v48, v49);
      v71 = v50;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v51 = v45[5];
      v52 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v51);
      v53 = (*(v52 + 48))(v51, v52);
      MEMORY[0x231907FA0](v53);

      v54 = sub_22FA2F600(v70, v71, &v69);

      *(v46 + 4) = v54;
      *(v46 + 12) = 2082;
      v55 = qos_class_self();
      v56 = PHADescriptionForQoS(v55);

      if (!v56)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v28, v29, v57);
      }

      v58 = sub_22FCC8A84();
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, &v69);

      *(v46 + 14) = v61;
      *(v46 + 22) = 2082;
      v62 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v69);

      *(v46 + 24) = v62;
      *(v46 + 32) = 2080;
      v63 = sub_22FA2F600(v68, v42, &v69);

      *(v46 + 34) = v63;
      _os_log_impl(&dword_22FA28000, v43, v44, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v47, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF8A8, &unk_22FCDC790);
    v28 = sub_22FC091F4;
    v29 = 0;
LABEL_15:
    v57 = 0;

    return MEMORY[0x2822009F8](v28, v29, v57);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_22FBF3028;
  v31 = *(v0 + 328);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);

  return sub_22FC108E0(v33, v31, v32);
}

uint64_t sub_22FC080F8()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FC08174, v1, 0);
}

uint64_t sub_22FC08174()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_215;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FC08AD4;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FC094E8;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF8A8, &unk_22FCDC790);
      v29 = sub_22FC091F4;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC108E0(v46, v44, v45);
  }
}

uint64_t sub_22FC08AD4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FC08BEC, v4, 0);
}

uint64_t sub_22FC08BEC()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AF8A8, &unk_22FCDC790);
    v49 = sub_22FC091F4;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC108E0(v26, v24, v25);
}

uint64_t sub_22FC091F4()
{
  v1 = *(v0[32] + qword_281488010);
  v0[66] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_22FC0930C;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 70, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[33];

    return MEMORY[0x2822009F8](sub_22FC09440, v6, 0);
  }
}

uint64_t sub_22FC0930C()
{

  return MEMORY[0x2822009F8](sub_22FC09424, 0, 0);
}

uint64_t sub_22FC09440()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC108E0(v4, v2, v3);
}

uint64_t sub_22FC094E8()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FC09598, v1, 0);
}

uint64_t sub_22FC09598()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF8A8, &unk_22FCDC790);
    v30 = sub_22FC091F4;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC108E0(v6, v4, v5);
}

uint64_t sub_22FC09A3C()
{
  v1 = v0[33];
  sub_22FC3549C(v0 + 23, v0[35]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 23));

  return MEMORY[0x2822009F8](sub_22FC09AB8, v1, 0);
}

uint64_t sub_22FC09AB8()
{
  v80 = v0;
  v1 = *(v0 + 272);
  sub_22FA4FAA4(*(v0 + 280), v1, &qword_27DAD84B8);
  v2 = type metadata accessor for TaskRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 416);
  if (v3 == 1)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_22FA2B420(*(v0 + 272), &qword_27DAD84B8);
    v4(v7, 1, 1, v6);
    sub_22FCC66C4();
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      sub_22FA2B420(*(v0 + 288), &qword_27DAD8730);
    }
  }

  else
  {
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 272);
    (*(v0 + 400))(v11, v12 + *(v2 + 20), v10);
    sub_22FB11094(v12);
    v4(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
  }

  v13 = *(v0 + 432);
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  sub_22FCC6784();
  sub_22FCC66D4();
  v17 = v16;
  *(v0 + 456) = v16;
  v13(v14, v15);
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v18);
  v20 = (*(v19 + 176))(v18, v19);
  if (qword_281481CC0 != -1)
  {
    swift_once();
  }

  v21 = qword_281488098;
  if (qword_281481CB8 != -1)
  {
    swift_once();
  }

  if (qword_281488090 > 0 || v21 > 0 || v20 == 0.0 || v17 <= v20)
  {
    v31 = *(v0 + 392);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_22FA30680;
    *(v32 + 24) = v31;
    *(v0 + 48) = sub_22FC127A4;
    *(v0 + 56) = v32;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22FA51A14;
    *(v0 + 40) = &block_descriptor_155_0;
    v33 = _Block_copy((v0 + 16));
    v34 = objc_opt_self();

    v35 = [v34 progressReporterWithProgressBlock_];
    *(v0 + 464) = v35;
    _Block_release(v33);

    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    v38 = __swift_project_boxed_opaque_existential_1((v0 + 144), v36);
    v39 = swift_task_alloc();
    *(v0 + 472) = v39;
    *v39 = v0;
    v39[1] = sub_22FC0A418;
    v40 = *(v0 + 264);

    return sub_22FB2F1EC(v38, v0 + 64, v35, v40, v36, v37);
  }

  else
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = v17;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v20;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping fetch of incremental change: timeIntervalSinceNonIncrementalRun %f > durationOfTaskIncrementalWindow %f", v24, 0x16u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 64))(v25, v26);
    if (v27)
    {
      v28 = *(v27 + 112);
      *(v0 + 544) = v28;

      v29 = sub_22FC0AD14;
      v30 = v28;
      goto LABEL_32;
    }

    v42 = *(v0 + 280);
    (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
    sub_22FA2B420(v42, &qword_27DAD84B8);
    *(*(v0 + 256) + qword_281488028) = 0;

    *(v0 + 496) = 0;
    *(v0 + 504) = 0;
    if ((sub_22FCC8D94() & 1) == 0)
    {
      v47 = *(v0 + 88);
      v48 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v47);
      v49 = (*(v48 + 64))(v47, v48);
      if (v49)
      {
        v50 = *(v49 + 112);

        v51 = *(v50 + 112);

        *(v0 + 248) = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
        v52 = sub_22FCC91D4();
        v54 = v53;
      }

      else
      {
        v51 = 0;
        v54 = 0xE400000000000000;
        v52 = 1701736270;
      }

      *(v0 + 520) = v51;

      v55 = sub_22FCC8664();
      v56 = sub_22FCC8F34();

      if (os_log_type_enabled(v55, v56))
      {
        v76 = v52;
        v57 = *(v0 + 256);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v77 = v59;
        *v58 = 136446978;
        v60 = v57[5];
        v61 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v60);
        v78 = (*(v61 + 40))(v60, v61);
        v79 = v62;
        MEMORY[0x231907FA0](46, 0xE100000000000000);
        v63 = v57[5];
        v64 = v57[6];
        __swift_project_boxed_opaque_existential_1(v57 + 2, v63);
        v65 = (*(v64 + 48))(v63, v64);
        MEMORY[0x231907FA0](v65);

        v66 = sub_22FA2F600(v78, v79, &v77);

        *(v58 + 4) = v66;
        *(v58 + 12) = 2082;
        v67 = qos_class_self();
        v68 = PHADescriptionForQoS(v67);

        if (!v68)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v29, v30, v69);
        }

        v70 = sub_22FCC8A84();
        v72 = v71;

        v73 = sub_22FA2F600(v70, v72, &v77);

        *(v58 + 14) = v73;
        *(v58 + 22) = 2082;
        v74 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v77);

        *(v58 + 24) = v74;
        *(v58 + 32) = 2080;
        v75 = sub_22FA2F600(v76, v54, &v77);

        *(v58 + 34) = v75;
        _os_log_impl(&dword_22FA28000, v55, v56, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v58, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v59, -1, -1);
        MEMORY[0x23190A000](v58, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF718, &unk_22FCDC6F0);
      v29 = sub_22FA2FD78;
      v30 = 0;
LABEL_32:
      v69 = 0;

      return MEMORY[0x2822009F8](v29, v30, v69);
    }

    sub_22FBE3254();
    sub_22FCC6784();
    v43 = swift_task_alloc();
    *(v0 + 512) = v43;
    *v43 = v0;
    v43[1] = sub_22FBF3028;
    v44 = *(v0 + 328);
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);

    return sub_22FC10D48(v46, v44, v45);
  }
}

uint64_t sub_22FC0A418(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;

  return MEMORY[0x2822009F8](sub_22FC0A530, v4, 0);
}

uint64_t sub_22FC0A530()
{
  v68 = v0;
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  if (v1)
  {

    v3 = v1;
    v4 = [v3 hasIncrementalChanges];
    v5 = *(v0 + 58);
    if (v4)
    {
      v6 = v0[57];
      v7 = *(v0 + 54);
      v8 = *(v0 + 40);
      v9 = *(v0 + 38);
      v61 = *(v0 + 35);
      v63 = *(v0 + 32);
      v10 = *(v0 + 21);
      v11 = *(v0 + 22);
      __swift_project_boxed_opaque_existential_1(v0 + 18, v10);
      v12 = (*(v11 + 192))(v3, v10, v11, v6);

      v7(v8, v9);
      sub_22FA2B420(v61, &qword_27DAD84B8);
      *(v63 + qword_281488020) = v12 & 1;
    }

    else
    {
      v19 = *(v0 + 54);
      v20 = *(v0 + 40);
      v21 = *(v0 + 38);
      v22 = *(v0 + 35);

      v19(v20, v21);
      sub_22FA2B420(v22, &qword_27DAD84B8);
      v12 = 0;
    }

    v18 = *(v0 + 61);
  }

  else
  {
    v13 = *(v0 + 58);
    v14 = *(v0 + 54);
    v15 = *(v0 + 40);
    v16 = *(v0 + 38);
    v17 = *(v0 + 35);

    v14(v15, v16);
    sub_22FA2B420(v17, &qword_27DAD84B8);
    v12 = 0;
    v18 = 0;
  }

  *(*(v0 + 32) + qword_281488028) = v0[60];

  *(v0 + 62) = v18;
  *(v0 + 63) = v2;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v28 = *(v0 + 11);
    v29 = *(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 8, v28);
    v30 = (*(v29 + 64))(v28, v29);
    if (v30)
    {
      v31 = *(v30 + 112);

      v32 = *(v31 + 112);

      *(v0 + 31) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v33 = sub_22FCC91D4();
      v35 = v34;
    }

    else
    {
      v32 = 0;
      v35 = 0xE400000000000000;
      v33 = 1701736270;
    }

    *(v0 + 65) = v32;

    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F34();

    if (os_log_type_enabled(v36, v37))
    {
      v62 = v33;
      v64 = v12;
      v38 = *(v0 + 32);
      v39 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v39 = 136446978;
      v40 = v38[5];
      v41 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
      v66 = (*(v41 + 40))(v40, v41);
      v67 = v42;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v43 = v38[5];
      v44 = v38[6];
      __swift_project_boxed_opaque_existential_1(v38 + 2, v43);
      v45 = (*(v44 + 48))(v43, v44);
      MEMORY[0x231907FA0](v45);

      v46 = sub_22FA2F600(v66, v67, &v65);

      *(v39 + 4) = v46;
      *(v39 + 12) = 2082;
      v47 = qos_class_self();
      v48 = PHADescriptionForQoS(v47);

      if (!v48)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v49, v50, v51);
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, &v65);

      *(v39 + 14) = v55;
      *(v39 + 22) = 2082;
      v12 = v64;
      if (v64)
      {
        v56 = 1752459639;
      }

      else
      {
        v56 = 0x74756F68746977;
      }

      if (v64)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = sub_22FA2F600(v56, v57, &v65);

      *(v39 + 24) = v58;
      *(v39 + 32) = 2080;
      v59 = sub_22FA2F600(v62, v35, &v65);

      *(v39 + 34) = v59;
      _os_log_impl(&dword_22FA28000, v36, v37, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v60, -1, -1);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(v18, v12 & 1, sub_22FA30680, *(v0 + 49), &unk_2844AF718, &unk_22FCDC6F0);
    v49 = sub_22FA2FD78;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822009F8](v49, v50, v51);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v23 = swift_task_alloc();
  *(v0 + 64) = v23;
  *v23 = v0;
  v23[1] = sub_22FBF3028;
  v24 = *(v0 + 41);
  v26 = *(v0 + 32);
  v25 = *(v0 + 33);

  return sub_22FC10D48(v26, v24, v25);
}

uint64_t sub_22FC0AB38()
{

  return MEMORY[0x2822009F8](sub_22FC0AC50, 0, 0);
}

uint64_t sub_22FC0AC6C()
{
  sub_22FCC6784();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22FBF3028;
  v2 = *(v0 + 328);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  return sub_22FC10D48(v4, v2, v3);
}

uint64_t sub_22FC0AD14()
{
  v1 = v0[33];
  v2 = [*(v0[68] + 112) currentChangeToken];

  type metadata accessor for PhotoKitChangeToken();
  v3 = swift_allocObject();
  v0[69] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_22FC0ADC4, v1, 0);
}

uint64_t sub_22FC0ADC4()
{
  v43 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 280);
  (*(v0 + 432))(*(v0 + 320), *(v0 + 304));
  sub_22FA2B420(v2, &qword_27DAD84B8);
  *(*(v0 + 256) + qword_281488028) = v1;

  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  if ((sub_22FCC8D94() & 1) == 0)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    v10 = (*(v9 + 64))(v8, v9);
    if (v10)
    {
      v11 = *(v10 + 112);

      v12 = *(v11 + 112);

      *(v0 + 248) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E80);
      v13 = sub_22FCC91D4();
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE400000000000000;
      v13 = 1701736270;
    }

    *(v0 + 520) = v12;

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();

    if (os_log_type_enabled(v16, v17))
    {
      v39 = v13;
      v18 = *(v0 + 256);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136446978;
      v21 = v18[5];
      v22 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v21);
      v41 = (*(v22 + 40))(v21, v22);
      v42 = v23;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v24 = v18[5];
      v25 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v24);
      v26 = (*(v25 + 48))(v24, v25);
      MEMORY[0x231907FA0](v26);

      v27 = sub_22FA2F600(v41, v42, &v40);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2082;
      v28 = qos_class_self();
      v29 = PHADescriptionForQoS(v28);

      if (!v29)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v30, v31, v32);
      }

      v33 = sub_22FCC8A84();
      v35 = v34;

      v36 = sub_22FA2F600(v33, v35, &v40);

      *(v19 + 14) = v36;
      *(v19 + 22) = 2082;
      v37 = sub_22FA2F600(0x74756F68746977, 0xE700000000000000, &v40);

      *(v19 + 24) = v37;
      *(v19 + 32) = 2080;
      v38 = sub_22FA2F600(v39, v15, &v40);

      *(v19 + 34) = v38;
      _os_log_impl(&dword_22FA28000, v16, v17, "Executing task %{public}s at QoS: %{public}s %{public}s incremental on library: %s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22FA2FBE8(0, 0, sub_22FA30680, *(v0 + 392), &unk_2844AF718, &unk_22FCDC6F0);
    v30 = sub_22FA2FD78;
    v31 = 0;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  sub_22FBE3254();
  sub_22FCC6784();
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_22FBF3028;
  v4 = *(v0 + 328);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  return sub_22FC10D48(v6, v4, v5);
}

void *sub_22FC0B268()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000019;
  result[3] = 0x800000022FCDC480;
  result[4] = 0;
  qword_281487DD0 = result;
  return result;
}

uint64_t sub_22FC0B2B8()
{
  if (qword_28147E848 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22FC0B350()
{
  sub_22FC0B2B8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FC0B3C0()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v1 + 160);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;

  v10 = 0;
  if (v5)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v7 = [*(*(v2 + 56) + ((v11 << 9) | (8 * v12))) cancel];
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v7, v8, v9);
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 64);

  v8 = *(v13 + 152);
  *(v0 + 72) = v8;
  v7 = sub_22FC0B500;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22FC0B500()
{
  v11 = v0;
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_22FA86D94(*(v2 + 16), 0);
    v5 = sub_22FA88AB8(&v10, (v4 + 4), v3, v2);

    sub_22FA37D64();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[10] = v4;
  v6 = *(v0[9] + 128);
  sub_22FC11568(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_22FC0B6D4;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FC0B6D4()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22FA82CBC, v1, 0);
}

uint64_t sub_22FC0B860()
{
  v1 = *(*(v0 + 16) + 144);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_22FB3CD0C;
  v3 = *(v0 + 16);

  return sub_22FAE4C38(v1, v3);
}

id sub_22FC0B940(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);
  v6 = (v5 + 152);
  if ([*(v5 + 152) respondsToSelector_])
  {
    if (([*v6 validateSelector:a1 forConnection:a2] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v5 + 160);
    v7 = (v5 + 160);
    if (![v8 respondsToSelector_])
    {
      return 0;
    }

    v6 = v7;
  }

  v9 = *v6;
  v10 = *v6;
  return v9;
}

uint64_t sub_22FC0BA04(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  sub_22FA2F7D8(a2, v14);
  sub_22FA3A77C(0, &qword_28147AE10);
  if (swift_dynamicCast())
  {
    v8 = v13[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22FCC8D14();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = v8;

  v11 = a1;
  sub_22FB22A48(0, 0, v7, &unk_22FCDC580, v10);
}

uint64_t sub_22FC0BBCC(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v3[28] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC0BC94, v2, 0);
}

uint64_t sub_22FC0BC94(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 216);
  v5 = v4[21];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v3 + 224);
    v9 = *(v3 + 200);
    v32 = *(v3 + 208);
    v4[21] = v7;
    *(v3 + 184) = v7;
    v10 = sub_22FCC96C4();
    v12 = v11;
    v13 = v4[14];
    *(v3 + 240) = v13;
    v33 = v4[15];
    v34 = v13;
    *(v3 + 248) = v33;
    v35 = v13;

    MEMORY[0x231907FA0](58, 0xE100000000000000);
    MEMORY[0x231907FA0](v10, v12);

    v14 = v9;
    v31 = v9;
    v15 = [v9 invocation];
    [v15 selector];

    v16 = sub_22FCC6924();
    v18 = v17;
    *(v3 + 256) = v16;
    *(v3 + 264) = v17;
    v19 = v4[16];
    *(v3 + 40) = type metadata accessor for LegacyStorytellingWorker();
    *(v3 + 48) = sub_22FC11568(&qword_28147EB60, 255, type metadata accessor for LegacyStorytellingWorker);
    *(v3 + 16) = v19;
    v20 = swift_allocObject();
    v20[2] = v16;
    v20[3] = v18;
    v20[4] = v8;
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    *(v21 + 24) = v14;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0);
    v23 = swift_allocObject();
    *(v3 + 272) = v23;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 16) = v16;
    *(v23 + 24) = v18;
    *(v23 + 32) = v35;
    *(v23 + 40) = v33;
    *(v23 + 64) = 0;
    *(v23 + 72) = 0;
    *(v23 + 80) = 0;
    *(v23 + 88) = 0u;
    *(v23 + 104) = 0u;
    *(v23 + 120) = 0;
    sub_22FA2CF78((v3 + 16), v23 + 144);
    *(v23 + 128) = &unk_22FCDC598;
    *(v23 + 136) = v21;
    *(v23 + 184) = sub_22FC11278;
    *(v23 + 192) = v20;
    swift_beginAccess();
    v24 = v32;
    swift_bridgeObjectRetain_n();
    v25 = v31;

    v26 = v25;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v4[20];
    v4[20] = 0x8000000000000000;
    sub_22FB26A98(v26, v34, v33, isUniquelyReferenced_nonNull_native);

    v4[20] = v36;
    swift_endAccess();
    v28 = v4[19];
    *(v3 + 280) = v28;
    *(v3 + 80) = v22;
    *(v3 + 88) = sub_22FA2CF90(&qword_281481680, &qword_27DAD76C0);
    *(v3 + 56) = v23;

    *(v3 + 192) = [v26 operationId];
    *(v3 + 288) = sub_22FCC96C4();
    *(v3 + 296) = v29;
    a1 = sub_22FC0C028;
    a2 = v28;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22FC0C028()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FC11568(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCD2BF0, v6);
  *(v0 + 304) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v8 = swift_allocObject();
  *(v0 + 312) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 320) = v10;
  *v10 = v0;
  v10[1] = sub_22FC0C220;
  v11 = *(v0 + 288);
  v12 = *(v0 + 296);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);

  return sub_22FBE5228(v10, v13, v14, v7, v8, v11, v12);
}

uint64_t sub_22FC0C220()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_22FC0C4AC;
  }

  else
  {
    v4 = sub_22FC0C34C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC0C34C()
{
  v1 = *(v0 + 216);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  return MEMORY[0x2822009F8](sub_22FC0C3EC, v1, 0);
}

uint64_t sub_22FC0C3EC()
{
  v2 = v0[30];
  v1 = v0[31];
  swift_beginAccess();
  v3 = sub_22FB04324(v2, v1);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FC0C4AC()
{
  v1 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_22FC0C544, v1, 0);
}

uint64_t sub_22FC0C544()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC0C5BC(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22FCC8684();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19[0] = a2;
    v19[1] = a3;

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v13 = sub_22FC11568(&qword_28147E830, v10, type metadata accessor for LegacyStorytellingService);
    sub_22FA2CEC4(a4, v13);

    v14 = sub_22FCC8664();
    v15 = sub_22FCC8F24();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_22FA2F600(a2, a3, v19);
      _os_log_impl(&dword_22FA28000, v14, v15, "%s is stuck", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23190A000](v17, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_22FC0C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  return MEMORY[0x2822009F8](sub_22FC0C840, 0, 0);
}

uint64_t sub_22FC0C840()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[17];
    v4 = v0[14];
    v3 = v0[15];
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v0[6] = sub_22FA4ED4C;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22FA51A14;
    v0[5] = &block_descriptor_66;
    v6 = _Block_copy(v0 + 2);
    v7 = v1;

    [v2 setProgressBlock_];
    _Block_release(v6);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *(v8 + 16) = v2;
    *(v8 + 24) = v7;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_22FC0CA50;
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v9, 0, 0, 0x286D726F66726570, 0xEE00293A6E6F3A5FLL, sub_22FC114F4, v8, v10);
  }

  else
  {
    [v0[17] runOperation];
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22FC0CA50()
{

  return MEMORY[0x2822009F8](sub_22FC0CB68, 0, 0);
}

uint64_t sub_22FC0CB68()
{
  v2 = v0[16];
  v1 = v0[17];
  v0[12] = nullsub_1;
  v0[13] = 0;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_22FA51A14;
  v0[11] = &block_descriptor_70;
  v3 = _Block_copy(v0 + 8);
  [v1 setProgressBlock_];
  _Block_release(v3);

  v4 = v0[1];

  return v4();
}

id sub_22FC0CC50(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_22FC114FC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA2B268;
  aBlock[3] = &block_descriptor_76;
  v12 = _Block_copy(aBlock);

  [a2 addCompletionBlock_];
  _Block_release(v12);
  return [a3 handleOperation_];
}

uint64_t sub_22FC0CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22FA2C030;

  return sub_22FC0BBCC(a5, a6);
}

uint64_t sub_22FC0D1DC(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 56) = a3;
  *(v4 + 88) = *v3;
  return MEMORY[0x2822009F8](sub_22FC0D22C, 0, 0);
}

uint64_t sub_22FC0D22C()
{
  v1 = v0[11];
  v2 = *(v0[10] + 128);
  v3 = *(*(v2 + 112) + 112);
  v0[12] = v3;
  v0[5] = type metadata accessor for LegacyStorytellingWorker();
  v0[6] = sub_22FC11568(&qword_28147EB60, 255, type metadata accessor for LegacyStorytellingWorker);
  v0[2] = v2;
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_22FA732CC;
  v7 = v0[9];
  v8 = v0[8];
  v9.n128_u64[0] = v0[7];

  return (sub_22FBDC2EC)(v0 + 2, v8, v7, sub_22FC11674, v4, v9);
}

uint64_t sub_22FC0D3A0(void *a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FC11568(&qword_28147E830, v8, type metadata accessor for LegacyStorytellingService);
  sub_22FA2CEC4(a2, v9);
  v10 = a1;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = [v10 isReady];

    _os_log_impl(&dword_22FA28000, v11, v12, "Running with graph ready: %{BOOL}d", v13, 8u);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_22FC0D6F4(uint64_t a1, uint64_t a2)
{
  result = sub_22FC11568(&qword_28147E838, a2, type metadata accessor for LegacyStorytellingService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FC0D74C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FC11568(&qword_28147E828, a2, type metadata accessor for LegacyStorytellingService);
  result = sub_22FC11568(&qword_28147E840, v3, type metadata accessor for LegacyStorytellingService);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FC0D7D0(int a1, void *aBlock, double a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22FA73900;

  return sub_22FC0D1DC(v6, v8, a3);
}

uint64_t sub_22FC0D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_22FA4FAA4(a3, v22 - v9, &unk_27DAD8710);
  v11 = sub_22FCC8D14();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22FA2B420(v10, &unk_27DAD8710);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22FCC8D04();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_22FCC8CC4();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_22FCC8B04() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_22FA2B420(a3, &unk_27DAD8710);

    return v20;
  }

LABEL_8:
  sub_22FA2B420(a3, &unk_27DAD8710);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_22FC0DBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E78);
  v3[6] = sub_22FA2CF90(&qword_2814813E8, &qword_27DAD8E78);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0DCBC, a3, 0);
}

uint64_t sub_22FC0DCBC()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F58);
  v3[6] = sub_22FA2CF90(&qword_27DAD8F60, &qword_27DAD8F58);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0E124, a3, 0);
}

uint64_t sub_22FC0E124()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0E480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F70);
  v3[6] = sub_22FA2CF90(&qword_2814813F0, &qword_27DAD8F70);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0E58C, a3, 0);
}

uint64_t sub_22FC0E58C()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F40);
  v3[6] = sub_22FA2CF90(&qword_27DAD8F48, &qword_27DAD8F40);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0E9F4, a3, 0);
}

uint64_t sub_22FC0E9F4()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F28);
  v3[6] = sub_22FA2CF90(&qword_27DAD8F30, &qword_27DAD8F28);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0EE5C, a3, 0);
}

uint64_t sub_22FC0EE5C()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0F1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F10);
  v3[6] = sub_22FA2CF90(&qword_27DAD8F18, &qword_27DAD8F10);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0F2C4, a3, 0);
}

uint64_t sub_22FC0F2C4()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0F620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EF8);
  v3[6] = sub_22FA2CF90(&qword_27DAD8F00, &qword_27DAD8EF8);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0F72C, a3, 0);
}

uint64_t sub_22FC0F72C()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0FA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EE0);
  v3[6] = sub_22FA2CF90(&qword_27DAD8EE8, &qword_27DAD8EE0);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0FB94, a3, 0);
}

uint64_t sub_22FC0FB94()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC0FEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8ED0);
  v3[6] = sub_22FA2CF90(&qword_281481400, &qword_27DAD8ED0);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC0FFFC, a3, 0);
}

uint64_t sub_22FC0FFFC()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC10358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EA8);
  v3[6] = sub_22FA2CF90(qword_281481408, &qword_27DAD8EA8);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC10464, a3, 0);
}

uint64_t sub_22FC10464()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC107C0;
    v6 = v0[16];

    return sub_22FBDDCE4(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC107C0()
{
  v1 = *v0;
  v2 = *v0;

  __swift_destroy_boxed_opaque_existential_0(v1 + 16);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_22FC108E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8EB8);
  v3[6] = sub_22FA2CF90(&qword_27DAD8EC0, &qword_27DAD8EB8);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC109EC, a3, 0);
}

uint64_t sub_22FC109EC()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC10D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3[18] = swift_task_alloc();
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E98);
  v3[6] = sub_22FA2CF90(&qword_2814813F8, &qword_27DAD8E98);
  v3[2] = a1;

  return MEMORY[0x2822009F8](sub_22FC10E54, a3, 0);
}

uint64_t sub_22FC10E54()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = *(*v2 + 176);
  swift_beginAccess();
  sub_22FA4FAA4(v2 + v3, v1, &qword_27DAD8730);
  v4 = sub_22FCC6794();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_22FA2B420(v1, &qword_27DAD8730);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_22FC127BC;
    v6 = v0[16];

    return sub_22FBDD29C(v6);
  }

  else
  {
    sub_22FA2D328((v0 + 2), (v0 + 7));
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F34();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v13 = *v12;
      v14 = *(*v12 + 40);
      v15 = *(*v12 + 48);
      __swift_project_boxed_opaque_existential_1((*v12 + 16), v14);
      v23 = (*(v15 + 40))(v14, v15);
      v24 = v16;
      MEMORY[0x231907FA0](46, 0xE100000000000000);
      v17 = v13[5];
      v18 = v13[6];
      __swift_project_boxed_opaque_existential_1(v13 + 2, v17);
      v19 = (*(v18 + 48))(v17, v18);
      MEMORY[0x231907FA0](v19);

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
      v20 = sub_22FA2F600(v23, v24, &v22);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_22FA28000, v8, v9, "Task %s already completed, bailing", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190A000](v11, -1, -1);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 7));
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_22FC111B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C21C;

  return sub_22FC0CE18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FC11284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_22FA2C21C;

  return sub_22FC0C81C(a1, a2, a3, a4, a5, v13, v12);
}

unint64_t sub_22FC11360()
{
  result = qword_28147EFC0[0];
  if (!qword_28147EFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28147EFC0);
  }

  return result;
}

uint64_t sub_22FC113C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FBDE8A4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC11568(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FC115B0()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C21C;

  return sub_22FC0D7D0(v3, v4, v2, v5);
}

uint64_t sub_22FC11684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 2);
  v13 = *(v5 + 3);
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_22FA2C21C;

  return sub_22FAD6F54(v14, a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_22FC11770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C030;

  return sub_22FBE5060(a1, v4, v5, v6, (v1 + 5));
}

uint64_t *sub_22FC11830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a1;
  v29 = a4;
  v10 = *v6;
  v11 = sub_22FCC8684();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  swift_defaultActor_initialize();
  v6[20] = MEMORY[0x277D84F98];
  v6[21] = 0;
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7680);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FCD1800;
  *(v18 + 56) = type metadata accessor for LegacyStorytellingWorker();
  *(v18 + 64) = sub_22FC11568(&qword_28147EB60, 255, type metadata accessor for LegacyStorytellingWorker);
  *(v18 + 32) = a3;
  v6[17] = v18;
  v20 = sub_22FC11568(&qword_28147E830, v19, type metadata accessor for LegacyStorytellingService);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_22FA2CEC4(v10, v20);
  type metadata accessor for StateHolder();
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v21[2] = 0xD000000000000019;
  v21[3] = 0x800000022FCDC480;
  v22 = v28;
  v21[4] = v28;
  v21[5] = a2;
  v23 = *(v12 + 16);
  v23(v21 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v17, v11);
  v23(v15, v17, v11);
  sub_22FCC85E4();
  (*(v12 + 8))(v17, v11);
  v6[18] = v21;
  type metadata accessor for ServiceOperationManager();
  v24 = swift_allocObject();
  v25 = v29;

  swift_defaultActor_initialize();
  *(v24 + 144) = MEMORY[0x277D84F98];
  *(v24 + 152) = 0;
  *(v24 + 112) = v22;
  *(v24 + 120) = a2;
  *(v24 + 128) = v25;
  *(v24 + 136) = v30;
  v6[19] = v24;
  if (qword_28147E848 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v6;
}

void sub_22FC11B9C(uint64_t a1, unint64_t a2)
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  oslog = sub_22FCC91C4();
  v4 = sub_22FCC8F34();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22FA2F600(a1, a2, &v8);
    _os_log_impl(&dword_22FA28000, oslog, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }
}

uint64_t sub_22FC11D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE45CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_45Tm()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FC11E20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C030;

  return sub_22FBE2200(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC11EFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FA2FF6C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC11FD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FA2FF6C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC120B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FA2FF6C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC12190(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FBE1330(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC1226C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FA2FF6C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC12348(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FA2FF6C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC12424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FA2FF6C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_22FC12508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FBDF8D8(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_56Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FC1267C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C21C;

  return sub_22FBE04F4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t PromptSuggestionQUProvider.__allocating_init(localeIdentifier:localizedStringProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_22FC1402C(a1, a2, v11, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

uint64_t sub_22FC12960()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147DF58);
  __swift_project_value_buffer(v0, qword_28147DF58);
  return sub_22FCC8674();
}

uint64_t PromptSuggestionQUProvider.init(localeIdentifier:localizedStringProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_22FC1402C(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PromptSuggestionQUProvider.quParse(hash:)(Swift::String hash)
{
  object = hash._object;
  countAndFlagsBits = hash._countAndFlagsBits;
  v3 = sub_22FCC7704();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = PromptSuggestionQUProvider.promptSuggestionLLMQUParse.getter();
  if (*(v10 + 16) && (v11 = sub_22FA2DB54(countAndFlagsBits, object), (v12 & 1) != 0))
  {
    (*(v4 + 16))(v7, *(v10 + 56) + *(v4 + 72) * v11, v3);

    (*(v4 + 32))(v9, v7, v3);
    v10 = sub_22FCC76F4();
    object = v13;
    (*(v4 + 8))(v9, v3);
  }

  else
  {

    sub_22FC14168();
    swift_allocError();
    *v14 = countAndFlagsBits;
    *(v14 + 8) = object;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  v15 = v10;
  v16 = object;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t PromptSuggestionQUProvider.promptSuggestionLLMQUParse.getter()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider____lazy_storage___promptSuggestionLLMQUParse;
  if (*(v0 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider____lazy_storage___promptSuggestionLLMQUParse))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider____lazy_storage___promptSuggestionLLMQUParse);
  }

  else
  {
    v2 = sub_22FC12D54(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22FC12EA8(void *a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8F80);
  MEMORY[0x28223BE20](v6 - 8);
  v105 = &v84 - v7;
  v8 = sub_22FCC7704();
  v110 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v112 = &v84 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - v14;
  v91 = sub_22FCC65F4();
  v111 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28147DF50 != -1)
  {
    goto LABEL_46;
  }

LABEL_2:
  v18 = sub_22FCC8684();
  v19 = __swift_project_value_buffer(v18, qword_28147DF58);

  v102 = v19;
  v20 = sub_22FCC8664();
  v21 = sub_22FCC8F34();

  v22 = os_log_type_enabled(v20, v21);
  v99 = v11;
  v103 = v15;
  if (v22)
  {
    v11 = v3;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v114 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_22FA2F600(a1, isUniquelyReferenced_nonNull_native, &v114);
    _os_log_impl(&dword_22FA28000, v20, v21, "Loading LLMQU Prompts for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v25 = v24;
    v15 = v103;
    MEMORY[0x23190A000](v25, -1, -1);
    v26 = v23;
    v3 = v11;
    MEMORY[0x23190A000](v26, -1, -1);
  }

  v27 = static PromptSuggestionQUProvider.findLLMQUFilePaths(localeIdentifier:)(a1, isUniquelyReferenced_nonNull_native);
  if (v3)
  {
    return a1;
  }

  v96 = 0;
  v87 = *(v27 + 16);
  if (!v87)
  {
    a1 = MEMORY[0x277D84F98];
LABEL_37:
    v78 = v27;

    v79 = sub_22FCC8664();
    v80 = sub_22FCC8F34();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 134218240;
      *(v81 + 4) = a1[2];
      *(v81 + 12) = 2048;
      v82 = *(v78 + 16);

      *(v81 + 14) = v82;

      _os_log_impl(&dword_22FA28000, v79, v80, "Loaded a total of %ld LLMQU Prompts across %ld files.", v81, 0x16u);
      MEMORY[0x23190A000](v81, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return a1;
  }

  v29 = 0;
  v88 = v27 + 32;
  v89 = (v111 + 1);
  v113 = v110 + 16;
  v104 = (v110 + 56);
  v111 = (v110 + 8);
  v100 = (v110 + 40);
  v101 = (v110 + 32);
  a1 = MEMORY[0x277D84F98];
  *&v28 = 134218242;
  v84 = v28;
  *&v28 = 136315138;
  v97 = v28;
  v106 = v8;
  v85 = v17;
  v86 = v27;
  while (1)
  {
    if (v29 >= *(v27 + 16))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
      goto LABEL_2;
    }

    v94 = v29;
    v30 = (v88 + 16 * v29);
    v31 = *v30;
    v32 = v30[1];

    v95 = v32;
    sub_22FCC6554();
    v33 = v96;
    v34 = sub_22FCC6614();
    if (v33)
    {
      (*v89)(v17, v91);

      return a1;
    }

    v90 = v31;
    v11 = v34;
    v36 = v35;
    (*v89)(v17, v91);
    v92 = v11;
    v93 = v36;
    v37 = sub_22FCC7754();
    isUniquelyReferenced_nonNull_native = v37;
    v96 = 0;
    v109 = *(v37 + 16);
    if (v109)
    {
      break;
    }

LABEL_34:
    v72 = v95;

    v73 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    if (os_log_type_enabled(v73, v3))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v114 = v75;
      *v74 = v84;
      v11 = *(isUniquelyReferenced_nonNull_native + 16);

      *(v74 + 4) = v11;

      *(v74 + 12) = 2080;
      v76 = sub_22FA2F600(v90, v72, &v114);

      *(v74 + 14) = v76;
      v8 = v106;
      _os_log_impl(&dword_22FA28000, v73, v3, "Loaded %ld LLMQU Prompts from shard %s.", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      v77 = v75;
      v15 = v103;
      MEMORY[0x23190A000](v77, -1, -1);
      MEMORY[0x23190A000](v74, -1, -1);
      sub_22FA7E6C4(v92, v93);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      sub_22FA7E6C4(v92, v93);
    }

    v17 = v85;
    v29 = v94 + 1;
    v27 = v86;
    if (v94 + 1 == v87)
    {
      goto LABEL_37;
    }
  }

  v17 = 0;
  v38 = *(v110 + 80);
  v107 = v37;
  v108 = v37 + ((v38 + 32) & ~v38);
  while (1)
  {
    if (v17 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v11 = *(v110 + 72);
    v39 = *(v110 + 16);
    v39(v15, v108 + v11 * v17, v8);
    v40 = sub_22FCC76E4();
    if (a1[2])
    {
      v42 = sub_22FA2DB54(v40, v41);
      v44 = v43;

      if (v44)
      {
        v45 = a1[7] + v42 * v11;
        v46 = v105;
        v39(v105, v45, v8);
        (*v104)(v46, 0, 1, v8);
        sub_22FA2B420(v46, &qword_27DAD8F80);
        v11 = v99;
        v39(v99, v15, v8);
        v3 = v15;
        v47 = sub_22FCC8664();
        v48 = sub_22FCC8F34();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = v11;
          v3 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v114 = v50;
          *v3 = v97;
          v98 = sub_22FCC76E4();
          v52 = v51;
          v11 = *v111;
          (*v111)(v49, v106);
          v53 = sub_22FA2F600(v98, v52, &v114);

          *(v3 + 4) = v53;
          _os_log_impl(&dword_22FA28000, v47, v48, "Found duplicate prompt hash: %s", v3, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v50);
          v54 = v50;
          v8 = v106;
          MEMORY[0x23190A000](v54, -1, -1);
          MEMORY[0x23190A000](v3, -1, -1);

          v15 = v103;
          (v11)(v103, v8);
        }

        else
        {

          v71 = *v111;
          (*v111)(v11, v8);
          v71(v3, v8);
          v15 = v3;
        }

        isUniquelyReferenced_nonNull_native = v107;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v55 = v105;
    (*v104)(v105, 1, 1, v8);
    sub_22FA2B420(v55, &qword_27DAD8F80);
    v56 = sub_22FCC76E4();
    v57 = v8;
    v8 = v56;
    v58 = v15;
    v15 = v59;
    v39(v112, v58, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = a1;
    v3 = sub_22FA2DB54(v8, v15);
    v61 = a1[2];
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_43;
    }

    v64 = v60;
    if (a1[3] < v63)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v107;
      if (v60)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_22FA71860();
      isUniquelyReferenced_nonNull_native = v107;
      if (v64)
      {
LABEL_13:

        a1 = v114;
        v8 = v106;
        (*v100)(v114[7] + v3 * v11, v112, v106);
        v15 = v103;
        (*v111)(v103, v8);
        goto LABEL_14;
      }
    }

LABEL_28:
    a1 = v114;
    v114[(v3 >> 6) + 8] |= 1 << v3;
    v67 = (a1[6] + 16 * v3);
    *v67 = v8;
    v67[1] = v15;
    v8 = v106;
    (*v101)(a1[7] + v3 * v11, v112, v106);
    v15 = v103;
    (*v111)(v103, v8);
    v68 = a1[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_44;
    }

    a1[2] = v70;
LABEL_14:
    if (v109 == ++v17)
    {
      goto LABEL_34;
    }
  }

  sub_22FA6E38C(v63, isUniquelyReferenced_nonNull_native);
  v65 = sub_22FA2DB54(v8, v15);
  if ((v64 & 1) == (v66 & 1))
  {
    v3 = v65;
    isUniquelyReferenced_nonNull_native = v107;
    if (v64)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  result = sub_22FCC9774();
  __break(1u);
  return result;
}

uint64_t (*PromptSuggestionQUProvider.promptSuggestionLLMQUParse.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = PromptSuggestionQUProvider.promptSuggestionLLMQUParse.getter();
  return sub_22FC13A98;
}

uint64_t static PromptSuggestionQUProvider.findLLMQUFilePaths(localeIdentifier:)(uint64_t a1, unint64_t a2)
{
  if (qword_28147DF50 != -1)
  {
    swift_once();
  }

  v5 = sub_22FCC8684();
  __swift_project_value_buffer(v5, qword_28147DF58);

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_22FA2F600(a1, a2, &v28);
    _os_log_impl(&dword_22FA28000, v6, v7, "Seeking LLMQU files for locale %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = sub_22FC1479C(a1, a2, v12);
  if (v2)
  {

    v14 = sub_22FCC8664();
    v15 = sub_22FCC8F34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = ObjCClassFromMetadata;
      v18 = a1;
      v19 = swift_slowAlloc();
      v28 = v19;
      *v16 = 136315138;
      *(v16 + 4) = sub_22FA2F600(v18, a2, &v28);
      _os_log_impl(&dword_22FA28000, v14, v15, "LLMQU not found for original locale %s, checking fallback locale", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v20 = v19;
      a1 = v18;
      ObjCClassFromMetadata = v17;
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    v21 = sub_22FACB92C(a1, a2);
    v23 = v22;
    v24 = v21;
    v25 = [v11 bundleForClass_];
    v27 = sub_22FC1479C(v24, v23, v25);
  }

  else
  {
    v27 = v13;
  }

  return v27;
}

uint64_t PromptSuggestionQUProvider.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localizedStringProvider);

  return v0;
}

uint64_t PromptSuggestionQUProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localizedStringProvider);

  return swift_deallocClassInstance();
}

uint64_t sub_22FC1402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_logger;
  if (qword_28147DF50 != -1)
  {
    swift_once();
  }

  v13 = sub_22FCC8684();
  v14 = __swift_project_value_buffer(v13, qword_28147DF58);
  (*(*(v13 - 8) + 16))(a4 + v12, v14, v13);
  *(a4 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider____lazy_storage___promptSuggestionLLMQUParse) = 0;
  v15 = (a4 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localeIdentifier);
  *v15 = a1;
  v15[1] = a2;
  sub_22FA2D89C(&v17, a4 + OBJC_IVAR____TtC13PhotoAnalysis26PromptSuggestionQUProvider_localizedStringProvider);
  return a4;
}

unint64_t sub_22FC14168()
{
  result = qword_27DAD8F78;
  if (!qword_27DAD8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8F78);
  }

  return result;
}

unint64_t sub_22FC141BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x231907FA0]();
  result = 0xD000000000000011;
  if ((a4 & 1) == 0)
  {
    MEMORY[0x231907FA0](0x5F64726168735FLL, 0xE700000000000000);
    v6 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v6);

    return 0xD000000000000011;
  }

  return result;
}

uint64_t sub_22FC14270(uint64_t a1, unint64_t a2, uint64_t a3, char a4, void *a5)
{
  if (qword_28147DF50 != -1)
  {
    swift_once();
  }

  v9 = sub_22FCC8684();
  __swift_project_value_buffer(v9, qword_28147DF58);

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();

  v38 = a3;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_22FA2F600(a1, a2, &v41);
    *(v12 + 12) = 2080;
    if (a4)
    {
      v14 = 0x64726168736E7520;
      v15 = 0xEA00000000006465;
    }

    else
    {
      sub_22FCC9384();

      strcpy(v40, "  shard index ");
      HIBYTE(v40[1]) = -18;
      v16 = sub_22FCC96C4();
      MEMORY[0x231907FA0](v16);

      v14 = v40[0];
      v15 = v40[1];
    }

    v17 = sub_22FA2F600(v14, v15, &v41);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_22FA28000, v10, v11, "Looking for LLMQU file for locale %s %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);

    a3 = v38;
  }

  else
  {
  }

  v18 = sub_22FC141BC(a1, a2, a3, a4 & 1);
  v20 = v19;
  v21 = sub_22FCC8664();
  v22 = sub_22FCC8F34();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_22FA2F600(v18, v20, v40);
    _os_log_impl(&dword_22FA28000, v21, v22, "Seeking LLMQU shard file %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23190A000](v24, -1, -1);
    MEMORY[0x23190A000](v23, -1, -1);
  }

  v25 = sub_22FCC8A54();

  v26 = sub_22FCC8A54();
  v27 = [a5 pathForResource:v25 ofType:v26];

  if (v27)
  {
    v28 = sub_22FCC8A84();
  }

  else
  {

    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F34();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_22FA2F600(a1, a2, &v41);
      *(v31 + 12) = 2080;
      if (a4)
      {
        v33 = 0x64726168736E7520;
        v34 = 0xEA00000000006465;
      }

      else
      {
        v40[0] = 0;
        v40[1] = 0xE000000000000000;
        sub_22FCC9384();

        strcpy(v40, "  shard index ");
        HIBYTE(v40[1]) = -18;
        v35 = sub_22FCC96C4();
        MEMORY[0x231907FA0](v35);

        v33 = v40[0];
        v34 = v40[1];
      }

      v36 = sub_22FA2F600(v33, v34, &v41);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_22FA28000, v29, v30, "No LLMQU file for locale %s %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v32, -1, -1);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    return 0;
  }

  return v28;
}

uint64_t sub_22FC1479C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_22FC14270(a1, a2, 0, 1, a3);
  v8 = v7;
  if (!v7)
  {
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = sub_22FC14270(a1, a2, v8, 0, a3);
      if (!v17)
      {
        break;
      }

      v9 = v16;
      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22FAC1D0C(0, *(v15 + 16) + 1, 1, v15);
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        v15 = sub_22FAC1D0C((v19 > 1), v20 + 1, 1, v15);
      }

      *(v15 + 16) = v20 + 1;
      v21 = v15 + 16 * v20;
      *(v21 + 32) = v9;
      *(v21 + 40) = v18;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    if (qword_28147DF50 != -1)
    {
      swift_once();
    }

    v23 = sub_22FCC8684();
    __swift_project_value_buffer(v23, qword_28147DF58);

    v24 = sub_22FCC8664();
    v25 = sub_22FCC8F34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = *(v15 + 16);

      _os_log_impl(&dword_22FA28000, v24, v25, "Found %ld LLMQU shard files", v26, 0xCu);
      MEMORY[0x23190A000](v26, -1, -1);

      if (*(v15 + 16))
      {
        return v15;
      }
    }

    else
    {

      if (*(v15 + 16))
      {
        return v15;
      }
    }

    sub_22FC14168();
    swift_allocError();
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = 1;
    swift_willThrow();

    return v15;
  }

  v9 = v6;
  if (qword_28147DF50 != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = sub_22FCC8684();
  __swift_project_value_buffer(v10, qword_28147DF58);

  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22FA2F600(v9, v8, &v29);
    _os_log_impl(&dword_22FA28000, v11, v12, "Found non-sharded LLMQU file %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23190A000](v14, -1, -1);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22FCD1800;
  *(v15 + 32) = v9;
  *(v15 + 40) = v8;
  return v15;
}

uint64_t type metadata accessor for PromptSuggestionQUProvider()
{
  result = qword_28147DF40;
  if (!qword_28147DF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC14BBC()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis26PromptSuggestionQUProviderC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22FC14CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FC14CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FC14D3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22FC14D8C()
{
  result = qword_28147EB60;
  if (!qword_28147EB60)
  {
    type metadata accessor for LegacyStorytellingWorker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147EB60);
  }

  return result;
}

uint64_t sub_22FC14DE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosSuggestionsFastPassActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

unint64_t sub_22FC14E20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9030);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_22FA2F7D8(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_22FA32554(v22, v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_22FA2DB54(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_22FC15084(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9040);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      sub_22FA728C0(*(a1 + 48) + 40 * v10, v16);
      *(&v17 + 1) = *(*(a1 + 56) + 8 * v10);
      v14[0] = v16[0];
      v14[1] = v16[1];
      v15 = v17;
      sub_22FA728C0(v14, v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
      if (!swift_dynamicCast())
      {
        break;
      }

      v5 &= v5 - 1;
      v11 = *(&v15 + 1);

      sub_22FA2B420(v14, &qword_27DAD9050);
      result = sub_22FC1F0E0(v12, v11, v2);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    sub_22FA2B420(v14, &qword_27DAD9050);

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FC15288@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FB07348(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_22FA2CF78(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FC15324(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_22FB0FFCC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_22FC153B4()
{
  sub_22FCC94A4();
  MEMORY[0x231907FA0](64, 0xE100000000000000);
  type metadata accessor for PhotoLibraryResource(0);
  v0 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v0);

  result = sub_22FCC8BC4();
  if ((result & 1) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FC154F0()
{
  v3[8] = 0;
  *v3 = *(v0 + *(type metadata accessor for MomentGraphResource() + 20));
  sub_22FCC94A4();
  MEMORY[0x231907FA0](64, 0xE100000000000000);
  v1 = sub_22FCC65B4();
  MEMORY[0x231907FA0](v1);

  result = sub_22FCC8BC4();
  if ((result & 1) == 0)
  {
    return *&v3[1];
  }

  __break(1u);
  return result;
}

uint64_t sub_22FC15630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v4[3] = a3;
  v4[4] = v5;
  v4[2] = a2;
  swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8FF0);
  v4[5] = v7;
  v4[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[7] = v8;
  v9 = *(v7 + 48);
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_22FC1574C;

  return sub_22FC1D260(v8, v8 + v9, a1);
}

uint64_t sub_22FC1574C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);

    return MEMORY[0x2822009F8](sub_22FC15AE4, v3, 0);
  }

  else
  {
    v4 = *(v2 + 48);
    v5 = *(v2 + 40);
    sub_22FA4FAA4(*(v2 + 56), v4, &unk_27DAD8FF0);
    v6 = *(v5 + 48);
    *(v2 + 104) = v6;
    v7 = swift_task_alloc();
    *(v2 + 80) = v7;
    *v7 = v2;
    v7[1] = sub_22FC158FC;
    v8 = *(v2 + 24);
    v9 = *(v2 + 16);
    v10 = *(v2 + 48);

    return sub_22FC1DC6C(v10, v4 + v6, v9, v8);
  }
}

uint64_t sub_22FC158FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_22FC15B50;
  }

  else
  {
    v7 = *(v4 + 104);
    v8 = *(v4 + 48);
    v9 = *(v4 + 32);
    *(v4 + 96) = a1;
    sub_22FC1F6C4(v8 + v7, type metadata accessor for MomentGraphResource);
    __swift_destroy_boxed_opaque_existential_0(v8);
    v6 = sub_22FC15A58;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FC15A58()
{
  sub_22FA2B420(v0[7], &unk_27DAD8FF0);

  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_22FC15AE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC15B50()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  sub_22FA2B420(*(v0 + 56), &unk_27DAD8FF0);
  sub_22FC1F6C4(v2 + v1, type metadata accessor for MomentGraphResource);
  __swift_destroy_boxed_opaque_existential_0(v2);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_22FC15BFC()
{
  sub_22FC1F1DC(v0, v10);
  if (v12 > 1u)
  {
    if (v12 == 2)
    {
      sub_22FA2CF78(v10, &v8);
      v5 = 0;
      v6 = 0xE000000000000000;
      sub_22FCC9384();
      MEMORY[0x231907FA0](0xD000000000000016, 0x800000022FCE7E60);
      __swift_project_boxed_opaque_existential_1(&v8, v9);
      sub_22FCC96E4();
    }

    else
    {
      sub_22FA2CF78(v10, &v8);
      v5 = 0;
      v6 = 0xE000000000000000;
      sub_22FCC9384();
      MEMORY[0x231907FA0](0xD000000000000026, 0x800000022FCE7E30);
      __swift_project_boxed_opaque_existential_1(&v8, v9);
      sub_22FCC96E4();
      MEMORY[0x231907FA0](0x746365707865202CLL, 0xEB00000000206465);
      v3 = sub_22FCC9904();
      MEMORY[0x231907FA0](v3);
    }

    v1 = v5;
    goto LABEL_9;
  }

  if (!v12)
  {
    sub_22FA2CF78(v10, &v8);
    sub_22FA2CF78(&v11, &v5);
    sub_22FCC9384();
    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE7EA0);
    __swift_project_boxed_opaque_existential_1(&v8, v9);
    sub_22FCC96E4();
    MEMORY[0x231907FA0](544437792, 0xE400000000000000);
    __swift_project_boxed_opaque_existential_1(&v5, v7);
    sub_22FCC96E4();
    v1 = 0;
    __swift_destroy_boxed_opaque_existential_0(&v5);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(&v8);
    return v1;
  }

  sub_22FCC9384();

  v2 = sub_22FCC9904();
  MEMORY[0x231907FA0](v2);

  return 0xD00000000000001ALL;
}

uint64_t sub_22FC15F00()
{
  swift_getObjectType();

  return sub_22FCC9904();
}

id sub_22FC15F64()
{
  swift_getObjectType();
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F98];
  *(v0 + 14) = MEMORY[0x277D84F98];
  *(v0 + 15) = v7;
  type metadata accessor for KnownResources();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22FCC8674();
  *(v8 + OBJC_IVAR____TtC13PhotoAnalysis14KnownResources_knownResources) = MEMORY[0x277D84F90];
  *(v0 + 16) = v8;
  v9 = OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_logger;
  sub_22FCC8674();
  v10 = sub_22FCC9904();
  v12 = v11;
  v13 = *(v2 + 16);
  v13(v6, &v0[v9], v1);
  type metadata accessor for StateHolder();
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = 0;
  v14[5] = 0xE000000000000000;
  v13(v14 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v6, v1);
  v13(v18, v6, v1);
  sub_22FCC85E4();
  (*(v2 + 8))(v6, v1);
  *&v0[OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder] = v14;
  [objc_opt_self() enableMultiLibraryMode];
  v15 = type metadata accessor for ResourcesDirector();
  v19.receiver = v0;
  v19.super_class = v15;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_22FC1627C()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FC162A0, v1, 0);
}

uint64_t sub_22FC162A0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_22FCC8A54();
  v3 = [v1 dictionaryForKey_];

  if (v3 && (v4 = sub_22FCC89D4(), v3, v5 = sub_22FC14E20(v4), , v5))
  {
    sub_22FA628FC(v5);
  }

  else
  {
    sub_22FA62250();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_22FC163DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;

  v8 = sub_22FCC8664();
  v9 = sub_22FCC8F34();

  v54 = a2;
  v55 = a3;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59[0] = v11;
    *v10 = 136315394;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
    v13 = MEMORY[0x2319080B0](a1, v12);
    v15 = sub_22FA2F600(v13, v14, v59);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_22FA2F600(a2, a3, v59);
    _os_log_impl(&dword_22FA28000, v8, v9, "Attempting to unload resources %s from requester '%s'", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (a1 + 32);
    swift_beginAccess();
    swift_beginAccess();
    v53 = v4;
    do
    {
      v18 = v17[3];
      v19 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      if (*(*(v4 + 120) + 16) && (, sub_22FA2DB54(v20, v22), v24 = v23, , (v24 & 1) != 0))
      {
        v25 = *(v4 + 112);
        if (*(v25 + 16))
        {

          v26 = sub_22FA2DB54(v20, v22);
          if (v27)
          {
            v28 = *(*(v25 + 56) + 8 * v26);

            v58 = v28;
            sub_22FB2ACF8(v54, v55);
            v30 = v29;
            if (v29)
            {
            }

            v31 = v58;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = *(v4 + 112);
            *(v4 + 112) = 0x8000000000000000;
            sub_22FB25758(v31, v20, v22, isUniquelyReferenced_nonNull_native);

            *(v4 + 112) = v56;
            swift_endAccess();
            if (v30)
            {
              if (!*(v31 + 16))
              {

                v49 = sub_22FCC8664();
                v50 = sub_22FCC8F34();

                if (os_log_type_enabled(v49, v50))
                {
                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  v57[0] = v52;
                  *v51 = 136446210;
                  *(v51 + 4) = sub_22FA2F600(v20, v22, v57);
                  _os_log_impl(&dword_22FA28000, v49, v50, "Unloading manager for '%{public}s'", v51, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v52);
                  MEMORY[0x23190A000](v52, -1, -1);
                  MEMORY[0x23190A000](v51, -1, -1);
                }

                swift_beginAccess();
                sub_22FB040F4(v20, v22);
                swift_endAccess();

                goto LABEL_24;
              }

              v33 = sub_22FCC8664();
              v34 = sub_22FCC8F34();

              if (!os_log_type_enabled(v33, v34))
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_24;
              }

              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v57[0] = v36;
              *v35 = 136315650;
              v37 = sub_22FA2F600(v20, v22, v57);

              *(v35 + 4) = v37;
              *(v35 + 12) = 2048;
              *(v35 + 14) = *(v31 + 16);

              *(v35 + 22) = 2080;
              v38 = sub_22FCC8E94();
              v40 = v39;

              v41 = sub_22FA2F600(v38, v40, v57);

              *(v35 + 24) = v41;
              _os_log_impl(&dword_22FA28000, v33, v34, "Cannot unload manager for '%s': %ld requesters still using: %s", v35, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23190A000](v36, -1, -1);
              v42 = v35;
              goto LABEL_21;
            }
          }
        }

        v33 = sub_22FCC8664();
        v47 = sub_22FCC8F34();

        if (!os_log_type_enabled(v33, v47))
        {
LABEL_22:

          goto LABEL_23;
        }

        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v57[0] = v45;
        *v44 = 136315394;
        v48 = sub_22FA2F600(v20, v22, v57);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        v4 = v53;
        *(v44 + 14) = sub_22FA2F600(v54, v55, v57);
        _os_log_impl(&dword_22FA28000, v33, v47, "Failed to unload resource: trying to release resource '%s' from requester '%s' who had not requested it first.", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v33 = sub_22FCC8664();
        v43 = sub_22FCC8F34();

        if (!os_log_type_enabled(v33, v43))
        {
          goto LABEL_22;
        }

        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v57[0] = v45;
        *v44 = 136446210;
        v46 = sub_22FA2F600(v20, v22, v57);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_22FA28000, v33, v43, "No cached resources for '%{public}s'", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
      }

      MEMORY[0x23190A000](v45, -1, -1);
      v42 = v44;
LABEL_21:
      MEMORY[0x23190A000](v42, -1, -1);
LABEL_23:

LABEL_24:
      v17 += 5;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_22FC16B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[72] = v6;
  v7[71] = a6;
  v7[70] = a5;
  v7[69] = a4;
  v7[68] = a3;
  v7[67] = a2;
  v7[66] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v7[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC16C2C, v6, 0);
}

uint64_t sub_22FC16C2C()
{
  v44 = v0;
  v1 = *(v0[72] + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);
  v0[74] = v1;
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  v0[75] = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) == 2)
  {
    v0[76] = OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_logger;

    v3 = sub_22FCC8664();
    v4 = sub_22FCC8F34();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[69];
      v6 = v0[68];
      v7 = v0[67];
      v8 = v0[66];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_22FA2F600(v8, v7, v43);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_22FA2F600(v6, v5, v43);
      _os_log_impl(&dword_22FA28000, v3, v4, "Providing resource '%s' to requester '%s'", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v11 = v0[72];
    swift_beginAccess();
    v12 = *(v11 + 120);
    if (*(v12 + 16))
    {
      v13 = v0[67];
      v14 = v0[66];

      v15 = sub_22FA2DB54(v14, v13);
      if (v16)
      {
        v17 = *(*(v12 + 56) + 8 * v15);
        v0[77] = v17;

        v18 = swift_task_alloc();
        v0[78] = v18;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
        v0[79] = v19;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
        *v18 = v0;
        v18[1] = sub_22FC17170;
        v21 = MEMORY[0x277D84950];
        v22 = v0 + 34;
        v23 = v17;
        v24 = v19;
LABEL_12:

        return MEMORY[0x282200430](v22, v23, v24, v20, v21);
      }
    }

    v30 = v0[73];
    v31 = v0[72];
    v32 = v0[71];
    v33 = v0[70];
    v34 = v0[67];
    v35 = v0[66];
    v36 = sub_22FCC8D14();
    (*(*(v36 - 8) + 56))(v30, 1, 1, v36);
    v37 = sub_22FC1F724(qword_281480148, type metadata accessor for ResourcesDirector);
    v38 = swift_allocObject();
    v38[2] = v31;
    v38[3] = v37;
    v38[4] = v33;
    v38[5] = v32;
    v38[6] = v31;
    swift_retain_n();

    v39 = sub_22FB23274(0, 0, v30, &unk_22FCDCD98, v38);
    v0[81] = v39;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = *(v31 + 120);
    *(v31 + 120) = 0x8000000000000000;
    sub_22FB259C0(v39, v35, v34, isUniquelyReferenced_nonNull_native);

    *(v31 + 120) = v43[0];
    swift_endAccess();
    v41 = swift_task_alloc();
    v0[82] = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
    v0[83] = v42;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
    *v41 = v0;
    v41[1] = sub_22FC17F08;
    v21 = MEMORY[0x277D84950];
    v22 = v0 + 24;
    v23 = v39;
    v24 = v42;
    goto LABEL_12;
  }

  v26 = *(v1 + 16);
  v25 = *(v1 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v27 = v26;
  *(v27 + 8) = v25;
  *(v27 + 16) = 0;
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_22FC17170()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_22FC17E9C;
  }

  else
  {
    v4 = sub_22FC1729C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC1729C()
{
  v90 = v0;
  v1 = *(v0 + 592);
  if (*(v1 + *(v0 + 600)) == 2)
  {
    sub_22FA2D328(v0 + 272, v0 + 312);
    v2 = type metadata accessor for PhotoLibraryManager();
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 520);
      if (v3)
      {
        v4 = [*(v3 + 112) unavailabilityReason];
        if (v4)
        {

          v5 = sub_22FCC8664();
          v6 = sub_22FCC8F34();

          if (os_log_type_enabled(v5, v6))
          {
            v85 = *(v0 + 528);
            v86 = *(v0 + 536);
            v7 = swift_slowAlloc();
            v8 = swift_slowAlloc();
            v89 = v8;
            *v7 = 136446466;
            v9 = [*(v3 + 112) description];
            v10 = sub_22FCC8A84();
            v12 = v11;

            v13 = sub_22FA2F600(v10, v12, &v89);

            *(v7 + 4) = v13;
            *(v7 + 12) = 2082;
            *(v7 + 14) = sub_22FA2F600(v85, v86, &v89);
            _os_log_impl(&dword_22FA28000, v5, v6, "Unable to reuse resource manager %{public}s for %{public}s", v7, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x23190A000](v8, -1, -1);
            MEMORY[0x23190A000](v7, -1, -1);
          }

          else
          {
          }

          __swift_destroy_boxed_opaque_existential_0(v0 + 272);
          v44 = *(v0 + 584);
          v45 = *(v0 + 576);
          v46 = *(v0 + 568);
          v47 = *(v0 + 560);
          v48 = *(v0 + 536);
          v49 = *(v0 + 528);
          v50 = sub_22FCC8D14();
          (*(*(v50 - 8) + 56))(v44, 1, 1, v50);
          v51 = sub_22FC1F724(qword_281480148, type metadata accessor for ResourcesDirector);
          v52 = swift_allocObject();
          v52[2] = v45;
          v52[3] = v51;
          v52[4] = v47;
          v52[5] = v46;
          v52[6] = v45;
          swift_retain_n();

          v53 = sub_22FB23274(0, 0, v44, &unk_22FCDCD98, v52);
          *(v0 + 648) = v53;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = *(v45 + 120);
          *(v45 + 120) = 0x8000000000000000;
          sub_22FB259C0(v53, v49, v48, isUniquelyReferenced_nonNull_native);

          *(v45 + 120) = v89;
          swift_endAccess();
          v55 = swift_task_alloc();
          *(v0 + 656) = v55;
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
          *(v0 + 664) = v56;
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
          *v55 = v0;
          v55[1] = sub_22FC17F08;
          v58 = MEMORY[0x277D84950];

          return MEMORY[0x282200430](v0 + 192, v53, v56, v57, v58);
        }

        v34 = sub_22FCC8664();
        v35 = sub_22FCC8F34();

        if (os_log_type_enabled(v34, v35))
        {
          v87 = *(v0 + 536);
          v36 = *(v0 + 528);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v89 = v38;
          *v37 = 136446466;
          v39 = [*(v3 + 112) description];
          v40 = sub_22FCC8A84();
          v42 = v41;

          v43 = sub_22FA2F600(v40, v42, &v89);

          *(v37 + 4) = v43;
          *(v37 + 12) = 2082;
          *(v37 + 14) = sub_22FA2F600(v36, v87, &v89);
          _os_log_impl(&dword_22FA28000, v34, v35, "Successfully reusing resource manager %{public}s for %{public}s", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v38, -1, -1);
          MEMORY[0x23190A000](v37, -1, -1);
        }

        else
        {
        }

        v59 = *(v0 + 576);
        v60 = *(v0 + 536);
        v61 = *(v0 + 528);
        swift_beginAccess();
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v89 = *(v59 + 112);
        v63 = v89;
        *(v59 + 112) = 0x8000000000000000;
        v64 = sub_22FA2DB54(v61, v60);
        v66 = *(v63 + 16);
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v60) = v65;
          if (*(v63 + 24) < v69)
          {
            v70 = *(v0 + 536);
            v71 = *(v0 + 528);
            sub_22FA6B58C(v69, v62);
            v63 = v89;
            v64 = sub_22FA2DB54(v71, v70);
            if ((v60 & 1) != (v72 & 1))
            {

              return sub_22FCC9774();
            }

LABEL_29:
            *(v59 + 112) = v63;
            if (v60)
            {
LABEL_31:
              v73 = *(v0 + 552);
              v74 = *(v0 + 544);

              v75 = sub_22FB04E04(&v89, v74, v73);
              swift_endAccess();

              if (v75)
              {
                __swift_destroy_boxed_opaque_existential_0(v0 + 272);
              }

              else
              {

                v76 = sub_22FCC8664();
                v77 = sub_22FCC8F14();

                if (os_log_type_enabled(v76, v77))
                {
                  v78 = *(v0 + 552);
                  v79 = *(v0 + 544);
                  v88 = *(v0 + 536);
                  v80 = *(v0 + 528);
                  v81 = swift_slowAlloc();
                  v82 = swift_slowAlloc();
                  v89 = v82;
                  *v81 = 136315394;
                  *(v81 + 4) = sub_22FA2F600(v79, v78, &v89);
                  *(v81 + 12) = 2080;
                  *(v81 + 14) = sub_22FA2F600(v80, v88, &v89);
                  _os_log_impl(&dword_22FA28000, v76, v77, "Requester '%s' already has resource '%s' but is asking for it again", v81, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x23190A000](v82, -1, -1);
                  MEMORY[0x23190A000](v81, -1, -1);
                }

                __swift_destroy_boxed_opaque_existential_0(v0 + 272);
              }

              v83 = *(v0 + 8);

              return v83(v3);
            }

LABEL_30:
            sub_22FC4C51C(v64, *(v0 + 528), *(v0 + 536), MEMORY[0x277D84FA0], v63);

            goto LABEL_31;
          }

          if (v62)
          {
            goto LABEL_29;
          }
        }

        v84 = v64;
        sub_22FA6FD98();
        v64 = v84;
        v63 = v89;
        *(v59 + 112) = v89;
        if (v60)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    sub_22FA2D328(v0 + 272, v0 + 16);
    v17 = sub_22FC1F724(&qword_281482088, type metadata accessor for PhotoLibraryManager);
    *(v0 + 56) = v2;
    *(v0 + 64) = v17;
    *(v0 + 96) = 3;
    sub_22FA2D328(v0 + 272, v0 + 352);
    sub_22FC1F1DC(v0 + 16, v0 + 104);

    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 536);
      v21 = *(v0 + 528);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89 = v24;
      *v22 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 352), *(v0 + 376));
      v25 = sub_22FCC96C4();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0(v0 + 352);
      v28 = sub_22FA2F600(v25, v27, &v89);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_22FA2F600(v21, v20, &v89);
      *(v22 + 22) = 2114;
      sub_22FC1F08C();
      swift_allocError();
      sub_22FC1F1DC(v0 + 104, v29);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FC1F214(v0 + 104);
      *(v22 + 24) = v30;
      *v23 = v30;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to reuse resource manager %{public}s for %{public}s: %{public}@", v22, 0x20u);
      sub_22FA2B420(v23, &unk_27DAD7B10);
      MEMORY[0x23190A000](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v24, -1, -1);
      MEMORY[0x23190A000](v22, -1, -1);
    }

    else
    {

      sub_22FC1F214(v0 + 104);
      __swift_destroy_boxed_opaque_existential_0(v0 + 352);
    }

    sub_22FC1F08C();
    swift_allocError();
    sub_22FC1F1DC(v0 + 16, v31);
    swift_willThrow();

    sub_22FC1F214(v0 + 16);
  }

  else
  {
    v14 = *(v1 + 16);
    v15 = *(v1 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 272);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22FC17E9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC17F08()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_22FC187F4;
  }

  else
  {
    v4 = sub_22FC18034;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC18034()
{
  v64 = v0;
  v1 = v0[74];
  if (*(v1 + v0[75]) == 2)
  {
    sub_22FA2D328((v0 + 24), (v0 + 29));
    v2 = type metadata accessor for PhotoLibraryManager();
    if (swift_dynamicCast())
    {
      v3 = v0[64];
      if (v3)
      {

        v4 = sub_22FCC8664();
        v5 = sub_22FCC8F34();

        if (os_log_type_enabled(v4, v5))
        {
          v61 = v0[67];
          v6 = v0[66];
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v63 = v8;
          *v7 = 136446466;
          v9 = [*(v3 + 112) description];
          v10 = sub_22FCC8A84();
          v12 = v11;

          v13 = sub_22FA2F600(v10, v12, &v63);

          *(v7 + 4) = v13;
          *(v7 + 12) = 2082;
          *(v7 + 14) = sub_22FA2F600(v6, v61, &v63);
          _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated %{public}s for %{public}s", v7, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v8, -1, -1);
          MEMORY[0x23190A000](v7, -1, -1);
        }

        else
        {
        }

        v35 = v0[72];
        v36 = v0[67];
        v37 = v0[66];
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v35 + 112);
        v39 = v63;
        *(v35 + 112) = 0x8000000000000000;
        v40 = sub_22FA2DB54(v37, v36);
        v42 = *(v39 + 16);
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          __break(1u);
        }

        else
        {
          LOBYTE(v36) = v41;
          if (*(v39 + 24) < v45)
          {
            v46 = v0[67];
            v47 = v0[66];
            sub_22FA6B58C(v45, isUniquelyReferenced_nonNull_native);
            v39 = v63;
            v40 = sub_22FA2DB54(v47, v46);
            if ((v36 & 1) != (v48 & 1))
            {

              return sub_22FCC9774();
            }

LABEL_21:
            *(v35 + 112) = v39;
            if (v36)
            {
LABEL_23:
              v49 = v0[69];
              v50 = v0[68];

              v51 = sub_22FB04E04(&v63, v50, v49);
              swift_endAccess();

              if (v51)
              {
                __swift_destroy_boxed_opaque_existential_0((v0 + 24));
              }

              else
              {

                v52 = sub_22FCC8664();
                v53 = sub_22FCC8F14();

                if (os_log_type_enabled(v52, v53))
                {
                  v54 = v0[69];
                  v55 = v0[68];
                  v62 = v0[67];
                  v56 = v0[66];
                  v57 = swift_slowAlloc();
                  v58 = swift_slowAlloc();
                  v63 = v58;
                  *v57 = 136315394;
                  *(v57 + 4) = sub_22FA2F600(v55, v54, &v63);
                  *(v57 + 12) = 2080;
                  *(v57 + 14) = sub_22FA2F600(v56, v62, &v63);
                  _os_log_impl(&dword_22FA28000, v52, v53, "Requester '%s' already has resource '%s' but is asking for it again", v57, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x23190A000](v58, -1, -1);
                  MEMORY[0x23190A000](v57, -1, -1);
                }

                else
                {
                }

                __swift_destroy_boxed_opaque_existential_0((v0 + 24));
              }

              v59 = v0[1];

              return v59(v3);
            }

LABEL_22:
            sub_22FC4C51C(v40, v0[66], v0[67], MEMORY[0x277D84FA0], v39);

            goto LABEL_23;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_21;
          }
        }

        v60 = v40;
        sub_22FA6FD98();
        v40 = v60;
        v39 = v63;
        *(v35 + 112) = v63;
        if (v36)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    sub_22FC1F08C();
    v16 = swift_allocError();
    v19 = v18;
    sub_22FA2D328((v0 + 24), v18);
    v20 = sub_22FC1F724(&qword_281482088, type metadata accessor for PhotoLibraryManager);
    *(v19 + 40) = v2;
    *(v19 + 48) = v20;
    *(v19 + 80) = 3;
    swift_willThrow();
  }

  else
  {
    v15 = *(v1 + 16);
    v14 = *(v1 + 24);
    sub_22FAA1C84();
    v16 = swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v14;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v21 = v0[67];
  v22 = v0[66];
  swift_beginAccess();
  sub_22FB040F4(v22, v21);
  swift_endAccess();

  v23 = v16;
  v24 = sub_22FCC8664();
  v25 = sub_22FCC8F14();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v0[67];
    v27 = v0[66];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v63 = v30;
    *v28 = 136446466;
    *(v28 + 4) = sub_22FA2F600(v27, v26, &v63);
    *(v28 + 12) = 2114;
    v31 = v16;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v32;
    *v29 = v32;
    _os_log_impl(&dword_22FA28000, v24, v25, "Failed to instantiate resource manager for %{public}s: %{public}@", v28, 0x16u);
    sub_22FA2B420(v29, &unk_27DAD7B10);
    MEMORY[0x23190A000](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23190A000](v30, -1, -1);
    MEMORY[0x23190A000](v28, -1, -1);
  }

  swift_willThrow();

  v33 = v0[1];

  return v33();
}

uint64_t sub_22FC187F4()
{
  v17 = v0;
  v1 = v0[84];
  v2 = v0[67];
  v3 = v0[66];
  swift_beginAccess();
  sub_22FB040F4(v3, v2);
  swift_endAccess();

  v4 = v1;
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[67];
    v8 = v0[66];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(v8, v7, &v16);
    *(v9 + 12) = 2114;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_22FA28000, v5, v6, "Failed to instantiate resource manager for %{public}s: %{public}@", v9, 0x16u);
    sub_22FA2B420(v10, &unk_27DAD7B10);
    MEMORY[0x23190A000](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FC18A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[72] = v6;
  v7[71] = a6;
  v7[70] = a5;
  v7[69] = a4;
  v7[68] = a3;
  v7[67] = a2;
  v7[66] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  v7[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC18AC4, v6, 0);
}

uint64_t sub_22FC18AC4()
{
  v44 = v0;
  v1 = *(v0[72] + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);
  v0[74] = v1;
  v2 = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  v0[75] = OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state;
  if (*(v1 + v2) == 2)
  {
    v0[76] = OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_logger;

    v3 = sub_22FCC8664();
    v4 = sub_22FCC8F34();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[69];
      v6 = v0[68];
      v7 = v0[67];
      v8 = v0[66];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v43[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_22FA2F600(v8, v7, v43);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_22FA2F600(v6, v5, v43);
      _os_log_impl(&dword_22FA28000, v3, v4, "Providing resource '%s' to requester '%s'", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v11 = v0[72];
    swift_beginAccess();
    v12 = *(v11 + 120);
    if (*(v12 + 16))
    {
      v13 = v0[67];
      v14 = v0[66];

      v15 = sub_22FA2DB54(v14, v13);
      if (v16)
      {
        v17 = *(*(v12 + 56) + 8 * v15);
        v0[81] = v17;

        v18 = swift_task_alloc();
        v0[82] = v18;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
        v0[83] = v19;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
        *v18 = v0;
        v18[1] = sub_22FC19B20;
        v21 = MEMORY[0x277D84950];
        v22 = v0 + 34;
        v23 = v17;
        v24 = v19;
LABEL_12:

        return MEMORY[0x282200430](v22, v23, v24, v20, v21);
      }
    }

    v30 = v0[73];
    v31 = v0[72];
    v32 = v0[71];
    v33 = v0[70];
    v34 = v0[67];
    v35 = v0[66];
    v36 = sub_22FCC8D14();
    (*(*(v36 - 8) + 56))(v30, 1, 1, v36);
    v37 = sub_22FC1F724(qword_281480148, type metadata accessor for ResourcesDirector);
    v38 = swift_allocObject();
    v38[2] = v31;
    v38[3] = v37;
    v38[4] = v33;
    v38[5] = v32;
    v38[6] = v31;
    swift_retain_n();

    v39 = sub_22FB23274(0, 0, v30, &unk_22FCDCD60, v38);
    v0[77] = v39;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = *(v31 + 120);
    *(v31 + 120) = 0x8000000000000000;
    sub_22FB259C0(v39, v35, v34, isUniquelyReferenced_nonNull_native);

    *(v31 + 120) = v43[0];
    swift_endAccess();
    v41 = swift_task_alloc();
    v0[78] = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
    v0[79] = v42;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
    *v41 = v0;
    v41[1] = sub_22FC19008;
    v21 = MEMORY[0x277D84950];
    v22 = v0 + 24;
    v23 = v39;
    v24 = v42;
    goto LABEL_12;
  }

  v26 = *(v1 + 16);
  v25 = *(v1 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v27 = v26;
  *(v27 + 8) = v25;
  *(v27 + 16) = 0;
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_22FC19008()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_22FC19904;
  }

  else
  {
    v4 = sub_22FC19134;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC19134()
{
  v67 = v0;
  v1 = v0[74];
  if (*(v1 + v0[75]) == 2)
  {
    sub_22FA2D328((v0 + 24), (v0 + 29));
    v2 = type metadata accessor for MomentGraphManager();
    if (swift_dynamicCast())
    {
      v3 = v0[64];
      swift_retain_n();

      v4 = sub_22FCC8664();
      v5 = sub_22FCC8F34();

      if (os_log_type_enabled(v4, v5))
      {
        v64 = v0[67];
        v6 = v0[66];
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v66 = v8;
        *v7 = 136446466;
        v9 = v3;
        v10 = [*(v3 + 112) description];
        v11 = sub_22FCC8A84();
        v13 = v12;

        v14 = sub_22FA2F600(v11, v13, &v66);

        *(v7 + 4) = v14;
        v3 = v9;
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_22FA2F600(v6, v64, &v66);
        _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated %{public}s for %{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
      }

      else
      {
      }

      v36 = v0[72];
      v37 = v0[67];
      v38 = v0[66];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *(v36 + 112);
      v40 = v66;
      *(v36 + 112) = 0x8000000000000000;
      v41 = sub_22FA2DB54(v38, v37);
      v43 = *(v40 + 16);
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v38) = v42;
        if (*(v40 + 24) < v46)
        {
          v47 = v0[67];
          v48 = v0[66];
          sub_22FA6B58C(v46, isUniquelyReferenced_nonNull_native);
          v40 = v66;
          v41 = sub_22FA2DB54(v48, v47);
          if ((v38 & 1) != (v49 & 1))
          {

            return sub_22FCC9774();
          }

LABEL_20:
          *(v36 + 112) = v40;
          if (v38)
          {
LABEL_22:
            v50 = v0[69];
            v51 = v0[68];

            v52 = sub_22FB04E04(&v66, v51, v50);
            swift_endAccess();

            if (v52)
            {
              __swift_destroy_boxed_opaque_existential_0((v0 + 24));
            }

            else
            {

              v53 = sub_22FCC8664();
              v54 = sub_22FCC8F14();

              if (os_log_type_enabled(v53, v54))
              {
                v55 = v0[69];
                v56 = v0[68];
                v65 = v0[67];
                v57 = v3;
                v58 = v0[66];
                v59 = swift_slowAlloc();
                v60 = swift_slowAlloc();
                v66 = v60;
                *v59 = 136315394;
                *(v59 + 4) = sub_22FA2F600(v56, v55, &v66);
                *(v59 + 12) = 2080;
                v61 = v58;
                v3 = v57;
                *(v59 + 14) = sub_22FA2F600(v61, v65, &v66);
                _os_log_impl(&dword_22FA28000, v53, v54, "Requester '%s' already has resource '%s' but is asking for it again", v59, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23190A000](v60, -1, -1);
                MEMORY[0x23190A000](v59, -1, -1);
              }

              else
              {
              }

              __swift_destroy_boxed_opaque_existential_0((v0 + 24));
            }

            v62 = v0[1];

            return v62(v3);
          }

LABEL_21:
          sub_22FC4C51C(v41, v0[66], v0[67], MEMORY[0x277D84FA0], v40);

          goto LABEL_22;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }
      }

      v63 = v41;
      sub_22FA6FD98();
      v41 = v63;
      v40 = v66;
      *(v36 + 112) = v66;
      if (v38)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    sub_22FC1F08C();
    v17 = swift_allocError();
    v20 = v19;
    sub_22FA2D328((v0 + 24), v19);
    v21 = sub_22FC1F724(&qword_281480060, type metadata accessor for MomentGraphManager);
    *(v20 + 40) = v2;
    *(v20 + 48) = v21;
    *(v20 + 80) = 3;
    swift_willThrow();
  }

  else
  {
    v16 = *(v1 + 16);
    v15 = *(v1 + 24);
    sub_22FAA1C84();
    v17 = swift_allocError();
    *v18 = v16;
    *(v18 + 8) = v15;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v22 = v0[67];
  v23 = v0[66];
  swift_beginAccess();
  sub_22FB040F4(v23, v22);
  swift_endAccess();

  v24 = v17;
  v25 = sub_22FCC8664();
  v26 = sub_22FCC8F14();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v0[67];
    v28 = v0[66];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v66 = v31;
    *v29 = 136446466;
    *(v29 + 4) = sub_22FA2F600(v28, v27, &v66);
    *(v29 + 12) = 2114;
    v32 = v17;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 14) = v33;
    *v30 = v33;
    _os_log_impl(&dword_22FA28000, v25, v26, "Failed to instantiate resource manager for %{public}s: %{public}@", v29, 0x16u);
    sub_22FA2B420(v30, &unk_27DAD7B10);
    MEMORY[0x23190A000](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x23190A000](v31, -1, -1);
    MEMORY[0x23190A000](v29, -1, -1);
  }

  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t sub_22FC19904()
{
  v17 = v0;
  v1 = v0[80];
  v2 = v0[67];
  v3 = v0[66];
  swift_beginAccess();
  sub_22FB040F4(v3, v2);
  swift_endAccess();

  v4 = v1;
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[67];
    v8 = v0[66];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(v8, v7, &v16);
    *(v9 + 12) = 2114;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_22FA28000, v5, v6, "Failed to instantiate resource manager for %{public}s: %{public}@", v9, 0x16u);
    sub_22FA2B420(v10, &unk_27DAD7B10);
    MEMORY[0x23190A000](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FC19B20()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 576);
  if (v0)
  {
    v4 = sub_22FC1A858;
  }

  else
  {
    v4 = sub_22FC19C4C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC19C4C()
{
  v90 = v0;
  v1 = *(v0 + 592);
  if (*(v1 + *(v0 + 600)) == 2)
  {
    sub_22FA2D328(v0 + 272, v0 + 312);
    v2 = type metadata accessor for MomentGraphManager();
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 520);
      v4 = [*(*(v3 + 120) + 112) unavailabilityReason];
      if (v4)
      {

        swift_retain_n();

        v5 = sub_22FCC8664();
        v6 = sub_22FCC8F34();

        if (os_log_type_enabled(v5, v6))
        {
          v85 = *(v0 + 528);
          v86 = *(v0 + 536);
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v89 = v8;
          *v7 = 136446466;
          v9 = [*(v3 + 112) description];
          v10 = sub_22FCC8A84();
          v12 = v11;

          v13 = sub_22FA2F600(v10, v12, &v89);

          *(v7 + 4) = v13;
          *(v7 + 12) = 2082;
          *(v7 + 14) = sub_22FA2F600(v85, v86, &v89);
          _os_log_impl(&dword_22FA28000, v5, v6, "Unable to reuse resource manager %{public}s for %{public}s", v7, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v8, -1, -1);
          MEMORY[0x23190A000](v7, -1, -1);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_0(v0 + 272);
        v44 = *(v0 + 584);
        v45 = *(v0 + 576);
        v46 = *(v0 + 568);
        v47 = *(v0 + 560);
        v48 = *(v0 + 536);
        v49 = *(v0 + 528);
        v50 = sub_22FCC8D14();
        (*(*(v50 - 8) + 56))(v44, 1, 1, v50);
        v51 = sub_22FC1F724(qword_281480148, type metadata accessor for ResourcesDirector);
        v52 = swift_allocObject();
        v52[2] = v45;
        v52[3] = v51;
        v52[4] = v47;
        v52[5] = v46;
        v52[6] = v45;
        swift_retain_n();

        v53 = sub_22FB23274(0, 0, v44, &unk_22FCDCD60, v52);
        *(v0 + 616) = v53;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = *(v45 + 120);
        *(v45 + 120) = 0x8000000000000000;
        sub_22FB259C0(v53, v49, v48, isUniquelyReferenced_nonNull_native);

        *(v45 + 120) = v89;
        swift_endAccess();
        v55 = swift_task_alloc();
        *(v0 + 624) = v55;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
        *(v0 + 632) = v56;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
        *v55 = v0;
        v55[1] = sub_22FC19008;
        v58 = MEMORY[0x277D84950];

        return MEMORY[0x282200430](v0 + 192, v53, v56, v57, v58);
      }

      swift_retain_n();

      v34 = sub_22FCC8664();
      v35 = sub_22FCC8F34();

      if (os_log_type_enabled(v34, v35))
      {
        v87 = *(v0 + 536);
        v36 = *(v0 + 528);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v89 = v38;
        *v37 = 136446466;
        v39 = [*(v3 + 112) description];
        v40 = sub_22FCC8A84();
        v42 = v41;

        v43 = sub_22FA2F600(v40, v42, &v89);

        *(v37 + 4) = v43;
        *(v37 + 12) = 2082;
        *(v37 + 14) = sub_22FA2F600(v36, v87, &v89);
        _os_log_impl(&dword_22FA28000, v34, v35, "Successfully reusing resource manager %{public}s for %{public}s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v38, -1, -1);
        MEMORY[0x23190A000](v37, -1, -1);
      }

      else
      {
      }

      v59 = *(v0 + 576);
      v60 = *(v0 + 536);
      v61 = *(v0 + 528);
      swift_beginAccess();
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v89 = *(v59 + 112);
      v63 = v89;
      *(v59 + 112) = 0x8000000000000000;
      v64 = sub_22FA2DB54(v61, v60);
      v66 = *(v63 + 16);
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v60) = v65;
        if (*(v63 + 24) < v69)
        {
          v70 = *(v0 + 536);
          v71 = *(v0 + 528);
          sub_22FA6B58C(v69, v62);
          v63 = v89;
          v64 = sub_22FA2DB54(v71, v70);
          if ((v60 & 1) != (v72 & 1))
          {

            return sub_22FCC9774();
          }

LABEL_28:
          *(v59 + 112) = v63;
          if (v60)
          {
LABEL_30:
            v73 = *(v0 + 552);
            v74 = *(v0 + 544);

            v75 = sub_22FB04E04(&v89, v74, v73);
            swift_endAccess();

            if (v75)
            {
              __swift_destroy_boxed_opaque_existential_0(v0 + 272);
            }

            else
            {

              v76 = sub_22FCC8664();
              v77 = sub_22FCC8F14();

              if (os_log_type_enabled(v76, v77))
              {
                v78 = *(v0 + 552);
                v79 = *(v0 + 544);
                v88 = *(v0 + 536);
                v80 = *(v0 + 528);
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                v89 = v82;
                *v81 = 136315394;
                *(v81 + 4) = sub_22FA2F600(v79, v78, &v89);
                *(v81 + 12) = 2080;
                *(v81 + 14) = sub_22FA2F600(v80, v88, &v89);
                _os_log_impl(&dword_22FA28000, v76, v77, "Requester '%s' already has resource '%s' but is asking for it again", v81, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23190A000](v82, -1, -1);
                MEMORY[0x23190A000](v81, -1, -1);
              }

              __swift_destroy_boxed_opaque_existential_0(v0 + 272);
            }

            v83 = *(v0 + 8);

            return v83(v3);
          }

LABEL_29:
          sub_22FC4C51C(v64, *(v0 + 528), *(v0 + 536), MEMORY[0x277D84FA0], v63);

          goto LABEL_30;
        }

        if (v62)
        {
          goto LABEL_28;
        }
      }

      v84 = v64;
      sub_22FA6FD98();
      v64 = v84;
      v63 = v89;
      *(v59 + 112) = v89;
      if (v60)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    sub_22FA2D328(v0 + 272, v0 + 16);
    v17 = sub_22FC1F724(&qword_281480060, type metadata accessor for MomentGraphManager);
    *(v0 + 56) = v2;
    *(v0 + 64) = v17;
    *(v0 + 96) = 3;
    sub_22FA2D328(v0 + 272, v0 + 352);
    sub_22FC1F1DC(v0 + 16, v0 + 104);

    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 536);
      v21 = *(v0 + 528);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v89 = v24;
      *v22 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 352), *(v0 + 376));
      v25 = sub_22FCC96C4();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0(v0 + 352);
      v28 = sub_22FA2F600(v25, v27, &v89);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_22FA2F600(v21, v20, &v89);
      *(v22 + 22) = 2114;
      sub_22FC1F08C();
      swift_allocError();
      sub_22FC1F1DC(v0 + 104, v29);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FC1F214(v0 + 104);
      *(v22 + 24) = v30;
      *v23 = v30;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to reuse resource manager %{public}s for %{public}s: %{public}@", v22, 0x20u);
      sub_22FA2B420(v23, &unk_27DAD7B10);
      MEMORY[0x23190A000](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v24, -1, -1);
      MEMORY[0x23190A000](v22, -1, -1);
    }

    else
    {

      sub_22FC1F214(v0 + 104);
      __swift_destroy_boxed_opaque_existential_0(v0 + 352);
    }

    sub_22FC1F08C();
    swift_allocError();
    sub_22FC1F1DC(v0 + 16, v31);
    swift_willThrow();

    sub_22FC1F214(v0 + 16);
  }

  else
  {
    v14 = *(v1 + 16);
    v15 = *(v1 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 272);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22FC1A858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC1A8C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a1;
  v6[4] = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_22FC1A9B8;

  return v9(v6 + 2);
}

uint64_t sub_22FC1A9B8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_22FC1F868;
  }

  else
  {
    v4 = sub_22FC1AAE4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC1AAE4()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);
  if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v2 = v0[3];
    v2[3] = type metadata accessor for PhotoLibraryManager();
    v2[4] = sub_22FC1F724(&qword_281482088, type metadata accessor for PhotoLibraryManager);
    *v2 = v0[2];
  }

  else
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v4;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FC1AC18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a1;
  v6[4] = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_22FC1AD0C;

  return v9(v6 + 2);
}

uint64_t sub_22FC1AD0C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_22FA55944;
  }

  else
  {
    v4 = sub_22FC1AE38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FC1AE38()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder);
  if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v2 = v0[3];
    v2[3] = type metadata accessor for MomentGraphManager();
    v2[4] = sub_22FC1F724(&qword_281480060, type metadata accessor for MomentGraphManager);
    *v2 = v0[2];
  }

  else
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    sub_22FAA1C84();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = v4;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FC1AF8C()
{
  v1 = *(v0 + 456);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v0 + 464) = v2;
  v3 = *(v2 + 32);
  *(v0 + 233) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 472) = MEMORY[0x277D84F90];

  if (!v6)
  {
    v10 = 0;
    while (((63 - v5) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v6 = *(v8 + 8 * v10++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v18 = *(v0 + 456);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v20 = *(*(v18 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v20 <= 1)
    {
      if (*(*(v18 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_20;
      }

      v21 = 0xEC000000676E697ALL;
      v23 = 0x696C616974696E49;
    }

    else if (v20 == 2)
    {
      v21 = 0xE700000000000000;
      v23 = 0x676E696E6E7552;
    }

    else
    {
      if (v20 == 3)
      {
        v21 = 0xED00006E776F4420;
        v22 = 1953851475;
LABEL_20:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_21;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_21:
    v24 = *(v0 + 456);
    MEMORY[0x231907FA0](v23, v21);

    v25 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v25;
    *(inited + 80) = 0xD000000000000018;
    *(inited + 88) = 0x800000022FCE7DF0;
    v26 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v24 + 120) + 16);
    *(inited + 120) = v26;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 136) = 0x800000022FCE7E10;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
    *(inited + 144) = v7;
    v27 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v28 = *(v0 + 8);

    return v28(v27);
  }

  v9 = 0;
LABEL_8:
  *(v0 + 480) = v6;
  *(v0 + 488) = v9;
  v11 = __clz(__rbit64(v6)) | (v9 << 6);
  v12 = (*(v8 + 48) + 16 * v11);
  *(v0 + 496) = *v12;
  *(v0 + 504) = v12[1];
  v13 = *(*(v8 + 56) + 8 * v11);
  *(v0 + 512) = v13;

  v14 = swift_task_alloc();
  *(v0 + 520) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  *(v0 + 528) = v16;
  *v14 = v0;
  v14[1] = sub_22FC1B384;
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 192, v13, v15, v16, v17);
}

uint64_t sub_22FC1B384()
{
  v1 = *(*v0 + 456);

  return MEMORY[0x2822009F8](sub_22FC1B494, v1, 0);
}

uint64_t sub_22FC1B494()
{
  sub_22FA4FAA4(v0 + 192, v0 + 240, &qword_27DAD9058);
  if ((*(v0 + 280) & 1) == 0)
  {

    sub_22FA2CF78((v0 + 240), v0 + 288);
    v16 = *(v0 + 312);
    v17 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 288), v16);
    v18 = *(v17 + 8);
    v39 = (*(v18 + 16) + **(v18 + 16));
    v19 = swift_task_alloc();
    *(v0 + 536) = v19;
    *v19 = v0;
    v19[1] = sub_22FC1BAD8;

    return v39(v16, v18);
  }

  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 240);
  *(v0 + 432) = 0;
  *(v0 + 440) = 0xE000000000000000;
  sub_22FCC9384();
  v4 = *(v0 + 440);
  *(v0 + 416) = *(v0 + 432);
  *(v0 + 424) = v4;
  MEMORY[0x231907FA0](0xD00000000000002ELL, 0x800000022FCE7DC0);
  MEMORY[0x231907FA0](v2, v1);

  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  *(v0 + 448) = v3;
  sub_22FCC94A4();
  v5 = *(v0 + 416);
  v6 = *(v0 + 424);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v8 = sub_22FAC2528(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_22FAC2528((v9 > 1), v10 + 1, 1, v8);
  }

  sub_22FA2B420(v0 + 192, &qword_27DAD9058);
  v11 = MEMORY[0x277D837D0];
  *(v0 + 352) = MEMORY[0x277D837D0];
  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  v8[2] = v10 + 1;
  sub_22FA32554((v0 + 328), &v8[4 * v10 + 4]);
  v13 = *(v0 + 480);
  v12 = *(v0 + 488);
  *(v0 + 472) = v8;
  v14 = (v13 - 1) & v13;
  if (!v14)
  {
    while (1)
    {
      v21 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v15 = *(v0 + 464);
      if (v21 >= (((1 << *(v0 + 233)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v15 + 8 * v21 + 64);
      ++v12;
      if (v14)
      {
        v12 = v21;
        goto LABEL_14;
      }
    }

    v29 = *(v0 + 456);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v31 = *(*(v29 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v31 <= 1)
    {
      if (*(*(v29 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v32 = 0xEB00000000705520;
        v33 = 1918989395;
        goto LABEL_26;
      }

      v32 = 0xEC000000676E697ALL;
      v34 = 0x696C616974696E49;
    }

    else if (v31 == 2)
    {
      v32 = 0xE700000000000000;
      v34 = 0x676E696E6E7552;
    }

    else
    {
      if (v31 == 3)
      {
        v32 = 0xED00006E776F4420;
        v33 = 1953851475;
LABEL_26:
        v34 = v33 | 0x676E697400000000;
        goto LABEL_27;
      }

      v32 = 0xE90000000000006ELL;
      v34 = 0x776F442074756853;
    }

LABEL_27:
    v35 = *(v0 + 456);
    MEMORY[0x231907FA0](v34, v32);

    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v11;
    *(inited + 80) = 0xD000000000000018;
    *(inited + 88) = 0x800000022FCE7DF0;
    v36 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v35 + 120) + 16);
    *(inited + 120) = v36;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 136) = 0x800000022FCE7E10;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
    *(inited + 144) = v8;
    v37 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v38 = *(v0 + 8);

    return v38(v37);
  }

  v15 = *(v0 + 464);
LABEL_14:
  *(v0 + 480) = v14;
  *(v0 + 488) = v12;
  v22 = __clz(__rbit64(v14)) | (v12 << 6);
  v23 = (*(v15 + 48) + 16 * v22);
  *(v0 + 496) = *v23;
  *(v0 + 504) = v23[1];
  v24 = *(*(v15 + 56) + 8 * v22);
  *(v0 + 512) = v24;

  v25 = swift_task_alloc();
  *(v0 + 520) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  *(v0 + 528) = v27;
  *v25 = v0;
  v25[1] = sub_22FC1B384;
  v28 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 192, v24, v26, v27, v28);
}

uint64_t sub_22FC1BAD8(uint64_t a1)
{
  v2 = *(*v1 + 456);
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](sub_22FC1BBF0, v2, 0);
}

uint64_t sub_22FC1BBF0()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v2 = sub_22FAC2528(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22FAC2528((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 544);

  sub_22FA2B420(v0 + 192, &qword_27DAD9058);
  *(v0 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
  *(v0 + 360) = v5;
  v2[2] = v4 + 1;
  sub_22FA32554((v0 + 360), &v2[4 * v4 + 4]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 288);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  *(v0 + 472) = v2;
  v8 = (v7 - 1) & v7;
  if (!v8)
  {
    while (1)
    {
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v9 = *(v0 + 464);
      if (v10 >= (((1 << *(v0 + 233)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v9 + 8 * v10 + 64);
      ++v6;
      if (v8)
      {
        v6 = v10;
        goto LABEL_10;
      }
    }

    v18 = *(v0 + 456);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v20 = *(*(v18 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v20 <= 1)
    {
      if (*(*(v18 + OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_22;
      }

      v21 = 0xEC000000676E697ALL;
      v23 = 0x696C616974696E49;
    }

    else if (v20 == 2)
    {
      v21 = 0xE700000000000000;
      v23 = 0x676E696E6E7552;
    }

    else
    {
      if (v20 == 3)
      {
        v21 = 0xED00006E776F4420;
        v22 = 1953851475;
LABEL_22:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_23;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_23:
    v24 = *(v0 + 456);
    MEMORY[0x231907FA0](v23, v21);

    v25 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v25;
    *(inited + 80) = 0xD000000000000018;
    *(inited + 88) = 0x800000022FCE7DF0;
    v26 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v24 + 120) + 16);
    *(inited + 120) = v26;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 136) = 0x800000022FCE7E10;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0);
    *(inited + 144) = v2;
    v27 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
    swift_arrayDestroy();
    v28 = *(v0 + 8);

    return v28(v27);
  }

  v9 = *(v0 + 464);
LABEL_10:
  *(v0 + 480) = v8;
  *(v0 + 488) = v6;
  v11 = __clz(__rbit64(v8)) | (v6 << 6);
  v12 = (*(v9 + 48) + 16 * v11);
  *(v0 + 496) = *v12;
  *(v0 + 504) = v12[1];
  v13 = *(*(v9 + 56) + 8 * v11);
  *(v0 + 512) = v13;

  v14 = swift_task_alloc();
  *(v0 + 520) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9000);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  *(v0 + 528) = v16;
  *v14 = v0;
  v14[1] = sub_22FC1B384;
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 192, v13, v15, v16, v17);
}

uint64_t sub_22FC1C068()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis17ResourcesDirector_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ResourcesDirector()
{
  result = qword_281480138;
  if (!qword_281480138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FC1C15C()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FC1C214()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FC1AF6C();
}

void sub_22FC1C2A4(void *a1)
{
  v2 = sub_22FCC65F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v16 = sub_22FCC8664();
  v7 = sub_22FCC8F34();

  if (os_log_type_enabled(v16, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v6 photoLibraryURL];
    sub_22FCC65A4();

    v11 = sub_22FCC65C4();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_22FA2F600(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_22FA28000, v16, v7, "Library became unavailable with path: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
    v15 = v16;
  }
}

uint64_t sub_22FC1C508(uint64_t a1)
{
  result = sub_22FC1F724(&qword_27DAD8FE8, type metadata accessor for ResourcesDirector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FC1C560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_22FA2D328(v3, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7450);
      if (swift_dynamicCast())
      {
        sub_22FA2CF78(&v20, &v26);
        sub_22FA4FAA4(v29, &v20, &unk_27DAD8390);
        if (*(&v21 + 1))
        {
          sub_22FA2CF78(&v20, v23);
          sub_22FC1F08C();
          swift_allocError();
          v10 = v9;
          v12 = v27;
          v11 = v28;
          v13 = __swift_project_boxed_opaque_existential_1(&v26, v27);
          *(v10 + 24) = v12;
          *(v10 + 32) = *(v11 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
          (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
          v16 = v24;
          v15 = v25;
          v17 = __swift_project_boxed_opaque_existential_1(v23, v24);
          *(v10 + 64) = v16;
          *(v10 + 72) = *(v15 + 8);
          v18 = __swift_allocate_boxed_opaque_existential_1((v10 + 40));
          (*(*(v16 - 8) + 16))(v18, v17, v16);
          *(v10 + 80) = 0;
          swift_willThrow();
          sub_22FA2B420(v29, &unk_27DAD8390);
          __swift_destroy_boxed_opaque_existential_0(v23);
          return __swift_destroy_boxed_opaque_existential_0(&v26);
        }

        sub_22FA2B420(v29, &unk_27DAD8390);
        sub_22FA2B420(&v20, &unk_27DAD8390);
        sub_22FA2D328(&v26, v29);
        __swift_destroy_boxed_opaque_existential_0(&v26);
      }

      else
      {
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        sub_22FA2B420(&v20, &unk_27DAD8390);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  sub_22FA4FAA4(v29, &v26, &unk_27DAD8390);
  if (v27)
  {
    sub_22FA2B420(v29, &unk_27DAD8390);
    return sub_22FA2CF78(&v26, a2);
  }

  else
  {
    sub_22FA2B420(&v26, &unk_27DAD8390);
    sub_22FC1F08C();
    swift_allocError();
    v6 = v5;
    v7 = type metadata accessor for PhotoLibraryResource(0);
    v8 = sub_22FC1F724(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 80) = 1;
    swift_willThrow();
    return sub_22FA2B420(v29, &unk_27DAD8390);
  }
}

uint64_t sub_22FC1C8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_22FC1C978;

  return sub_22FC1CAE8(a3);
}

uint64_t sub_22FC1C978(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FC1CAC4, 0, 0);
  }
}

uint64_t sub_22FC1CAE8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = swift_getObjectType();
  type metadata accessor for PhotoLibraryResource(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC1CB84, v1, 0);
}

uint64_t sub_22FC1CB84()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v1 = sub_22FB372DC();
  *(v0 + 88) = 0;
  v2 = v1;
  [v1 registerAvailabilityObserver_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = [objc_allocWithZone(MEMORY[0x277CF6EC0]) init];
  v6 = sub_22FCC8A54();
  [v5 setupWithConfigurationFilename:v6 inBundle:v4];

  [v5 setupSystemPropertyProvidersForLibrary_];
  [v5 activateEventQueue];
  type metadata accessor for PhotoLibraryManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = v2;
  *(v7 + 120) = v5;
  v8 = qword_281482098;
  v9 = v2;
  v10 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();

  v11 = *(v0 + 8);

  return v11(v7);
}

uint64_t sub_22FC1CF70()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_22FC1F420(v1, v0[12]);
  sub_22FC1F6C4(v1, type metadata accessor for PhotoLibraryResource);

  return MEMORY[0x2822009F8](sub_22FC1D000, v2, 0);
}

uint64_t sub_22FC1D000()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FC1D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_22FC1D114;

  return sub_22FC1CAE8(a3);
}

uint64_t sub_22FC1D114(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FC1F86C, 0, 0);
  }
}

uint64_t sub_22FC1D260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[53] = a2;
  v3[54] = a3;
  v3[52] = a1;
  v4 = type metadata accessor for MomentGraphResource();
  v3[55] = v4;
  v3[56] = *(v4 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD9018);
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FC1D38C, 0, 0);
}

uint64_t sub_22FC1D38C()
{
  *(v0 + 16) = 0u;
  v1 = v0 + 16;
  v2 = *(v0 + 496);
  v3 = *(v0 + 440);
  v4 = *(v0 + 432);
  v5 = *(*(v0 + 448) + 56);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v55 = v5;
  v5(v2, 1, 1, v3);
  v6 = *(v4 + 16);
  if (!v6)
  {
LABEL_11:
    sub_22FA4FAA4(v1, v1 + 240, &unk_27DAD8390);
    if (v56[35])
    {
      v18 = v56[62];
      v19 = v56[59];
      v20 = v56[55];
      v21 = v56[56];
      sub_22FA2CF78((v1 + 240), v56[52]);
      sub_22FA4FAA4(v18, v19, &qword_27DAD9018);
      if ((*(v21 + 48))(v19, 1, v20) != 1)
      {
        v27 = v56[59];
        v28 = v56[53];
        sub_22FA2B420(v56[62], &qword_27DAD9018);
        sub_22FA2B420(v1, &unk_27DAD8390);
        sub_22FC1F244(v27, v28);

        v29 = v56[1];
        goto LABEL_23;
      }

      v22 = v56[59];
      __swift_destroy_boxed_opaque_existential_0(v56[52]);
      v23 = &qword_27DAD9018;
      v24 = v22;
    }

    else
    {
      v23 = &unk_27DAD8390;
      v24 = v1 + 240;
    }

    sub_22FA2B420(v24, v23);
    sub_22FA4FAA4(v1, v1 + 280, &unk_27DAD8390);
    if (v56[40])
    {
      v25 = sub_22FC1F724(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
      v26 = v56[55];
    }

    else
    {
      v26 = type metadata accessor for PhotoLibraryResource(0);
      v25 = sub_22FC1F724(&qword_281481D60, type metadata accessor for PhotoLibraryResource);
    }

    v30 = v56[62];
    sub_22FA2B420(v1 + 280, &unk_27DAD8390);
    sub_22FC1F08C();
    swift_allocError();
    *v31 = v26;
    *(v31 + 8) = v25;
    *(v31 + 80) = 1;
    swift_willThrow();
    sub_22FA2B420(v30, &qword_27DAD9018);
    v32 = v1;
    goto LABEL_20;
  }

  v7 = v56[54] + 32;
  v52 = (v56[56] + 48);
  while (1)
  {
    sub_22FA2D328(v7, v1 + 40);
    sub_22FA2D328(v1 + 40, v1 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7450);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_22FA2CF78((v1 + 160), v1 + 80);
    sub_22FA4FAA4(v1, v1 + 360, &unk_27DAD8390);
    if (v56[50])
    {
      v33 = v56[62];
      sub_22FA2CF78((v1 + 360), v1 + 320);
      sub_22FC1F08C();
      swift_allocError();
      v35 = v34;
      v36 = v56[15];
      v37 = v56[16];
      v38 = __swift_project_boxed_opaque_existential_1((v1 + 80), v36);
      *(v35 + 24) = v36;
      *(v35 + 32) = *(v37 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
      (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);
      v40 = v56[45];
      v41 = v56[46];
      v42 = __swift_project_boxed_opaque_existential_1((v1 + 320), v40);
      *(v35 + 64) = v40;
      *(v35 + 72) = *(v41 + 8);
      v43 = __swift_allocate_boxed_opaque_existential_1((v35 + 40));
      (*(*(v40 - 8) + 16))(v43, v42, v40);
      *(v35 + 80) = 0;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v1 + 40);
      sub_22FA2B420(v33, &qword_27DAD9018);
      sub_22FA2B420(v1, &unk_27DAD8390);
      __swift_destroy_boxed_opaque_existential_0(v1 + 320);
      __swift_destroy_boxed_opaque_existential_0(v1 + 80);
      goto LABEL_22;
    }

    __swift_destroy_boxed_opaque_existential_0(v1 + 40);
    sub_22FA2B420(v1, &unk_27DAD8390);
    sub_22FA2B420(v1 + 360, &unk_27DAD8390);
    sub_22FA2D328(v1 + 80, v1);
    __swift_destroy_boxed_opaque_existential_0(v1 + 80);
LABEL_4:
    v7 += 40;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0;
  sub_22FA2B420(v1 + 160, &unk_27DAD8390);
  sub_22FA2D328(v1 + 40, v1 + 200);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = v56[61];
    v9 = v56[55];
    __swift_destroy_boxed_opaque_existential_0(v1 + 40);
    v55(v8, 1, 1, v9);
    sub_22FA2B420(v8, &qword_27DAD9018);
    goto LABEL_4;
  }

  v10 = v56[61];
  v53 = v56[62];
  v11 = v56[60];
  v12 = v56[58];
  v13 = v56[55];
  v55(v10, 0, 1, v13);
  sub_22FC1F244(v10, v12);
  sub_22FA4FAA4(v53, v11, &qword_27DAD9018);
  v14 = (*v52)(v11, 1, v13);
  v15 = v56[62];
  v16 = v56[60];
  v17 = v56[58];
  if (v14 == 1)
  {
    v54 = v56[55];
    __swift_destroy_boxed_opaque_existential_0(v1 + 40);
    sub_22FA2B420(v15, &qword_27DAD9018);
    sub_22FA2B420(v16, &qword_27DAD9018);
    sub_22FC1F244(v17, v15);
    v55(v15, 0, 1, v54);
    goto LABEL_4;
  }

  v45 = v56[57];
  v46 = v56[55];
  sub_22FC1F244(v16, v45);
  sub_22FC1F08C();
  swift_allocError();
  v48 = v47;
  *(v47 + 24) = v46;
  v49 = sub_22FC1F724(&qword_28147FCF0, type metadata accessor for MomentGraphResource);
  *(v48 + 32) = v49;
  v50 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_22FC1F3B8(v17, v50, type metadata accessor for MomentGraphResource);
  *(v48 + 64) = v46;
  *(v48 + 72) = v49;
  v51 = __swift_allocate_boxed_opaque_existential_1((v48 + 40));
  sub_22FC1F3B8(v45, v51, type metadata accessor for MomentGraphResource);
  *(v48 + 80) = 0;
  swift_willThrow();
  sub_22FC1F6C4(v45, type metadata accessor for MomentGraphResource);
  sub_22FC1F6C4(v17, type metadata accessor for MomentGraphResource);
  __swift_destroy_boxed_opaque_existential_0(v1 + 40);
  sub_22FA2B420(v15, &qword_27DAD9018);
  v32 = v1;
LABEL_20:
  sub_22FA2B420(v32, &unk_27DAD8390);
LABEL_22:

  v29 = v56[1];
LABEL_23:

  return v29();
}