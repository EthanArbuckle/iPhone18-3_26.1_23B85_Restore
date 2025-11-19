uint64_t sub_266423240(void (*a1)(void), uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v9 = sub_26632958C(1012);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "ForegroundAppSignal#signal", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for ForegroundAppSignal.KnowledgeProvider();
  inited = swift_initStackObject();

  sub_2664218C4(inited, v9, a1, a2);
}

uint64_t sub_266423480(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073758, &qword_2664EC618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073760, &unk_2664EC620);
  v10 = sub_2664E0318();
  v21 = v11;
  v22 = v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "appSelectionSignalsSignal";
  *(v15 + 24) = 25;
  *(v15 + 32) = 2;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v16 = (v15 + v14);
  *v16 = v23;
  v16[1] = a2;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2664E36F0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_2662C4094();
  v18 = v21;
  *(v17 + 32) = v22;
  *(v17 + 40) = v18;
  sub_2664DFDC8();

  v19 = swift_allocObject();
  *(v19 + 16) = sub_266352A18;
  *(v19 + 24) = v15;

  sub_266423240(sub_266352AC0, v19);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2664237A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F40, &qword_2664E9070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266423818(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v52 = a2;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = *(a1 + 72);
  v53 = v15;
  v54 = v11;
  if (v14 >> 62)
  {
    goto LABEL_32;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v57 = v13;
  v58 = v8;
  v55 = a4;
  v56 = a3;
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = 0;
    v59 = v14 & 0xC000000000000001;
    v13 = (v14 & 0xFFFFFFFFFFFFFF8);
    v8 = v14;
    do
    {
      if (v59)
      {
        v19 = MEMORY[0x266783B70](v18, v14);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *(v13 + 2))
        {
          goto LABEL_31;
        }

        v19 = *(v14 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v49 = v14;
          v50 = sub_2664E0A68();
          v14 = v49;
          v16 = v50;
          goto LABEL_3;
        }
      }

      a3 = *(v19 + 56);
      a4 = *(v19 + 64);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2663846F4(0, *(v17 + 2) + 1, 1, v17);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      if (v22 >= v21 >> 1)
      {
        v17 = sub_2663846F4((v21 > 1), v22 + 1, 1, v17);
      }

      *(v17 + 2) = v22 + 1;
      v23 = &v17[16 * v22];
      *(v23 + 4) = a3;
      *(v23 + 5) = a4;
      ++v18;
      v14 = v8;
    }

    while (v20 != v16);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = v54;
  v25 = __swift_project_value_buffer(v54, qword_280F914F0);
  swift_beginAccess();
  v26 = v57;
  v27 = v58;
  v28 = *(v58 + 16);
  v28(v57, v25, v24);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v59 = v25;
    v32 = v31;
    v33 = swift_slowAlloc();
    v60 = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x2667834D0](v17, MEMORY[0x277D837D0]);
    v36 = v28;
    v37 = sub_2662A320C(v34, v35, &v60);

    *(v32 + 4) = v37;
    v28 = v36;
    _os_log_impl(&dword_26629C000, v29, v30, "SpotlightHandler: Resolving items for identifiers: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    v38 = v32;
    v25 = v59;
    MEMORY[0x266784AD0](v38, -1, -1);

    v39 = *(v58 + 8);
    v39(v57, v24);
  }

  else
  {

    v39 = *(v27 + 8);
    v39(v26, v24);
  }

  v40 = sub_2664B07A8(v17, v52);

  v41 = v53;
  v28(v53, v25, v24);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06C8();
  v44 = v40 >> 62;
  if (os_log_type_enabled(v42, v43))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    v46 = MEMORY[0x277D84F90];
    if (v44)
    {
      v47 = sub_2664E0A68();
    }

    else
    {
      v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v45 + 4) = v47;

    _os_log_impl(&dword_26629C000, v42, v43, "SpotlightHandler: Found: %ld items", v45, 0xCu);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v39(v41, v24);
  if (v44)
  {
    sub_266424688();

    v51 = sub_2664E0C58();
    swift_bridgeObjectRelease_n();
    v40 = v51;
  }

  else
  {

    sub_2664E0D98();
    sub_266424688();
  }

  v60 = v46;
  v61 = xmmword_2664EC660;
  v62 = xmmword_2664EB350;
  v63 = v40;
  v64 = 0;
  v56(&v60);
}

uint64_t sub_266423D8C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a2[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_266424018(*v13, v19, a3, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_266424018(uint64_t a1, _OWORD *a2, uint64_t *a3, _OWORD *a4, uint64_t a5)
{
  v68 = a3;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v94[3] = v10;
  v94[4] = &off_2877F3740;
  v94[0] = a1;
  v93[3] = &type metadata for PlaybackStarter;
  v93[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v93[0] = v11;
  v12 = a2[3];
  v11[3] = a2[2];
  v11[4] = v12;
  v11[5] = a2[4];
  v13 = a2[1];
  v11[1] = *a2;
  v11[2] = v13;
  v92[3] = &type metadata for PlaybackQueueLocationProvider;
  v92[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v92[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v94, v90);
  sub_2662A5550(v93, v88);
  sub_2662A5550(a3, v87);
  sub_2662A5550(v92, v85);
  v17 = v91;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v89;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v86;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v84[3] = v10;
  v84[4] = &off_2877F3740;
  v84[0] = v35;
  v82 = &type metadata for PlaybackStarter;
  v83 = &off_2877EE098;
  v36 = swift_allocObject();
  v81[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v79 = &type metadata for PlaybackQueueLocationProvider;
  v80 = &off_2877E8100;
  v39 = swift_allocObject();
  v78[0] = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v84, v10);
  v43 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = v82;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v49 = *(v47[-1].Description + 8);
  MEMORY[0x28223BE20](v48);
  v51 = (&v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = v79;
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  v55 = *(v53[-1].Description + 8);
  MEMORY[0x28223BE20](v54);
  v57 = (&v67 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = *v45;
  v76 = v10;
  v77 = &off_2877F3740;
  v74 = &off_2877EE098;
  *&v75 = v59;
  v73 = &type metadata for PlaybackStarter;
  v60 = swift_allocObject();
  *&v72 = v60;
  v61 = v51[3];
  v60[3] = v51[2];
  v60[4] = v61;
  v60[5] = v51[4];
  v62 = v51[1];
  v60[1] = *v51;
  v60[2] = v62;
  v70 = &type metadata for PlaybackQueueLocationProvider;
  v71 = &off_2877E8100;
  v63 = swift_allocObject();
  *&v69 = v63;
  v64 = v57[3];
  v63[3] = v57[2];
  v63[4] = v64;
  v63[5] = v57[4];
  v65 = v57[1];
  v63[1] = *v57;
  v63[2] = v65;
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  sub_2662A8618(&v75, a5 + 16);
  sub_2662A8618(&v72, a5 + 56);
  sub_2662A8618(v87, a5 + 96);
  sub_2662A8618(&v69, a5 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  return a5;
}

unint64_t sub_266424688()
{
  result = qword_280073790;
  if (!qword_280073790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073790);
  }

  return result;
}

BOOL sub_2664246D4()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  if (SelfSamplingCalculator.isPermitted()())
  {
    if (AFIsInternalInstall())
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.2;
    }

    v9 = vcvtd_n_f64_u64(sub_26642517C(0x20000000000001uLL), 0x35uLL);
    v10 = v9 <= v8;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v7, v11, v0);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06C8();
    if (!os_log_type_enabled(v12, v13))
    {
      v5 = v7;
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 134218496;
    *(v14 + 4) = v9 + 0.0;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v8;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v9 <= v8;
    _os_log_impl(&dword_26629C000, v12, v13, "SelfSamplingCalculator#shouldEmitTrainingRecord: diceRoll is %f, compared to samplingRate of %f - returning %{BOOL}d", v14, 0x1Cu);
    v5 = v7;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v5, v15, v0);
    v12 = sub_2664DFE18();
    v16 = sub_2664E06E8();
    if (!os_log_type_enabled(v12, v16))
    {
      v10 = 0;
      goto LABEL_16;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v16, "SelfSamplingCalculator#shouldEmitTrainingRecord: permitted() is false", v14, 2u);
    v10 = 0;
  }

  MEMORY[0x266784AD0](v14, -1, -1);
LABEL_16:

  (*(v1 + 8))(v5, v0);
  return v10;
}

uint64_t SelfSamplingCalculator.init()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2664E02A8();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_2664E02A8();
    [v2 doubleForKey_];
  }

  return sub_2664DE3D8();
}

Swift::Bool __swiftcall SelfSamplingCalculator.isPermitted()()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = [objc_opt_self() sharedConnection];
  if (!v8)
  {
    __break(1u);
    return v8;
  }

  v9 = v8;
  v10 = [v8 isDiagnosticSubmissionAllowed];

  if (!v10)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v5, v11, v0);
    v12 = sub_2664DFE18();
    v13 = sub_2664E06E8();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "SelfSamplingCalculator#permitted: false due to D&U exclusion", v14, 2u);
    goto LABEL_13;
  }

  if (!sub_266424E00())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v7, v15, v0);
    v12 = sub_2664DFE18();
    v16 = sub_2664E06E8();
    if (!os_log_type_enabled(v12, v16))
    {
      v5 = v7;
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v16, "SelfSamplingCalculator#permitted: false due recent record saved", v14, 2u);
    v5 = v7;
LABEL_13:
    MEMORY[0x266784AD0](v14, -1, -1);
LABEL_15:

    (*(v1 + 8))(v5, v0);
    LOBYTE(v8) = 0;
    return v8;
  }

  LOBYTE(v8) = 1;
  return v8;
}

BOOL sub_266424E00()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664DE438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE428();
  sub_2664DE388();
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  if (v11 < 21600.0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v12, v0);
    v13 = sub_2664DFE18();
    v14 = sub_2664E06E8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = 0x40D5180000000000;
      _os_log_impl(&dword_26629C000, v13, v14, "SelfSamplingCalculator#hasEnoughTimeElapsed: it has been less than %f seconds since the last record was emitted, so skipping", v15, 0xCu);
      MEMORY[0x266784AD0](v15, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v11 >= 21600.0;
}

uint64_t type metadata accessor for SelfSamplingCalculator()
{
  result = qword_280073798;
  if (!qword_280073798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266425110()
{
  result = sub_2664DE438();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26642517C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x266784AF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x266784AF0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DarwinNotification.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DarwinNotification.init(name:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_266425254(uint64_t a1)
{
  v56 = a1;
  v2 = sub_2664DFE38();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  isEscapingClosureAtFileLocation = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v50 - v7;
  v51 = sub_2664E0018();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_2664E00E8();
  v12 = *(v50 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v50);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v19)
  {
    v20 = v19;
    v21 = dispatch_semaphore_create(0);
    v22 = *(v1 + 16);
    v23 = *(v1 + 24);
    v53 = v1;
    v24 = v20;
    v25 = sub_2664E02A8();
    CFNotificationCenterAddObserver(v24, v21, sub_266425920, v25, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    sub_2664E00C8();
    *v11 = v56;
    v26 = v51;
    (*(v8 + 104))(v11, *MEMORY[0x277D85178], v51);
    MEMORY[0x266783140](v16, v11);
    v27 = v11;
    v28 = v21;
    (*(v8 + 8))(v27, v26);
    v29 = *(v12 + 8);
    v30 = v50;
    v29(v16, v50);
    sub_2664E0868();
    v29(v18, v30);
    v31 = sub_2664E0028();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = v55;
    v33 = __swift_project_value_buffer(v55, qword_280F914F0);
    swift_beginAccess();
    v34 = v54;
    v35 = v52;
    (*(v54 + 16))(v52, v33, v32);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v31 & 1;
      _os_log_impl(&dword_26629C000, v36, v37, "DarwinNotification#waitWithTimeout Was notification received? %{BOOL}d", v38, 8u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v34 + 8))(v35, v32);
    sub_2664259E0();
    v39 = sub_2664E07C8();
    v40 = swift_allocObject();
    v40[2] = v24;
    v40[3] = v28;
    v40[4] = v53;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_266425A2C;
    *(v41 + 24) = v40;
    aBlock[4] = sub_2662AA56C;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662ABACC;
    aBlock[3] = &block_descriptor_39;
    v42 = _Block_copy(aBlock);
    v43 = v24;

    dispatch_sync(v39, v42);

    _Block_release(v42);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v31 & 1;
    }

    __break(1u);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v45 = v55;
  v46 = __swift_project_value_buffer(v55, qword_280F914F0);
  swift_beginAccess();
  (*(v54 + 16))(isEscapingClosureAtFileLocation, v46, v45);
  v47 = sub_2664DFE18();
  v48 = sub_2664E06D8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_26629C000, v47, v48, "DarwinNotification#waitWithTimeout darwinCenter not available", v49, 2u);
    MEMORY[0x266784AD0](v49, -1, -1);
  }

  (*(v54 + 8))(isEscapingClosureAtFileLocation, v55);
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

void sub_266425928(__CFNotificationCenter *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = sub_2664E02A8();
  CFNotificationCenterRemoveObserver(a1, a2, v7, 0);
}

uint64_t DarwinNotification.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DarwinNotification.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_2664259E0()
{
  result = qword_280F8F5C0;
  if (!qword_280F8F5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F5C0);
  }

  return result;
}

void sub_266425AAC(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v7, v10, v2);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26629C000, v11, v12, "DarwinNotification#waitWithTimeout#callback darwin notification received", v13, 2u);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v14 = a1;
    sub_2664E0888();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v9, v15, v2);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26629C000, v16, v17, "DarwinNotification#callback Observer for darwin callback handler not found", v18, 2u);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_266425D8C()
{
  type metadata accessor for MediaRemoteAPIProvider();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_2800737C0 = result;
  return result;
}

uint64_t static MediaRemoteAPIProvider.shared.getter()
{
  if (qword_280071C38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266425E20()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000039, 0x80000002664F8CE0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_2800737C8 = v10;
  return result;
}

id static MediaRemoteAPIProvider.queue.getter()
{
  if (qword_280071C40 != -1)
  {
    swift_once();
  }

  v1 = qword_2800737C8;

  return v1;
}

uint64_t sub_266426018(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v16, v8);
    v17 = a2;
    v18 = sub_2664DFE18();
    v19 = sub_2664E06D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v41 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v40 = a3;
      v23 = v22;
      v43 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v42[0] = sub_2664E0DE8();
      v42[1] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v25 = sub_2664E0318();
      v27 = sub_2662A320C(v25, v26, &v43);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_26629C000, v18, v19, "MediaRemoteAPIProvider#getStateInfo Unexpected error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v28 = v23;
      a3 = v40;
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    a1 = 0;
  }

  else
  {
    v41 = a4;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v15, v29, v8);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = a3;
      v34 = v33;
      v42[0] = v33;
      *v32 = 136315138;
      LODWORD(v43) = a1;
      v35 = sub_2664E0D48();
      v37 = sub_2662A320C(v35, v36, v42);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_26629C000, v30, v31, "MediaRemoteAPIProvider#getStateInfo Now Playing state: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v38 = v34;
      a3 = v40;
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
  }

  return a3(a1);
}

void sub_26642643C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_2664264B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_266429784(a2, a3);
  v9 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v12[4] = sub_266429F74;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26633283C;
  v12[3] = &block_descriptor_40;
  v11 = _Block_copy(v12);

  [v9 requestClientPropertiesOnQueue:a1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2664265DC(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v64[-v14];
  if (a2 || !a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v21, v8);
    v22 = a2;
    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();

    if (os_log_type_enabled(v23, v24))
    {
      v75 = a4;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v79 = v26;
      *v25 = 136315138;
      v74 = v8;
      if (a2)
      {
        swift_getErrorValue();
        v27 = sub_2664E0DE8();
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v77 = v27;
      v78 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v61 = sub_2664E0318();
      v63 = sub_2662A320C(v61, v62, &v79);

      *(v25 + 4) = v63;
      _os_log_impl(&dword_26629C000, v23, v24, "MediaRemoteAPIProvider#getAppInfo Unexpected nil client properties or error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);

      (*(v9 + 8))(v13, v74);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    return (a3)(0, 0, 0, 0, 0, 0, a2);
  }

  else
  {
    v16 = a1;
    v17 = [v16 displayName];
    if (v17)
    {
      v18 = v17;
      v73 = sub_2664E02C8();
      v20 = v19;
    }

    else
    {
      v73 = 0;
      v20 = 0;
    }

    v29 = [v16 bundleIdentifier];
    if (v29)
    {
      v30 = v29;
      v72 = sub_2664E02C8();
      v32 = v31;
    }

    else
    {
      v72 = 0;
      v32 = 0;
    }

    v76 = a3;
    v33 = [v16 representedBundleID];
    if (v33)
    {
      v34 = v33;
      v35 = sub_2664E02C8();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v71 = v35;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v15, v38, v8);

    v70 = v15;
    v39 = sub_2664DFE18();
    v40 = sub_2664E06C8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v74 = v8;
      v42 = v41;
      v68 = swift_slowAlloc();
      v78 = v32;
      v79 = v68;
      *v42 = 136315650;
      v43 = v72;
      v77 = v72;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v69 = v16;
      v44 = sub_2664E0318();
      v65 = v40;
      v45 = v32;
      v66 = v39;
      v47 = sub_2662A320C(v44, v46, &v79);
      v67 = v9;
      v75 = a4;
      v48 = v47;

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = v71;
      v77 = v71;
      v78 = v37;

      v50 = sub_2664E0318();
      v52 = sub_2662A320C(v50, v51, &v79);

      *(v42 + 14) = v52;
      *(v42 + 22) = 2080;
      v53 = v73;
      v77 = v73;
      v78 = v20;

      v54 = sub_2664E0318();
      v56 = sub_2662A320C(v54, v55, &v79);
      v57 = v43;

      *(v42 + 24) = v56;
      v16 = v69;
      v58 = v66;
      _os_log_impl(&dword_26629C000, v66, v65, "MediaRemoteAPIProvider#getAppInfo Now Playing bundleId:%s, representedBundleId:%s and displayName:%s", v42, 0x20u);
      v59 = v68;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);

      (*(v67 + 8))(v70, v74);
    }

    else
    {

      (*(v9 + 8))(v70, v8);
      v57 = v72;
      v53 = v73;
      v45 = v32;
      v49 = v71;
    }

    v76(v53, v20, v57, v45, v49, v37, 0);
  }
}

void sub_266426C88(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a4;
  v13 = sub_266429A04();
  v14 = sub_266429784(a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = v12;
  *(v15 + 40) = v7;
  v17[4] = sub_266429F7C;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_26633283C;
  v17[3] = &block_descriptor_6_1;
  v16 = _Block_copy(v17);

  [v13 performRequestForDestination:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_266426DBC(uint64_t *a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v88 = a5;
  v89 = a1;
  v91 = a4;
  v92 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v83 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v83 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  v17 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v19 = &v83 - v18;
  v20 = type metadata accessor for NowPlayingInfo();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2664DFE38();
  v24 = *(v93 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v93);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v29);
  v32 = &v83 - v31;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v93;
    v34 = __swift_project_value_buffer(v93, qword_280F914F0);
    swift_beginAccess();
    (*(v24 + 16))(v28, v34, v33);
    v35 = a2;
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v95 = v39;
      *v38 = 136315138;
      swift_getErrorValue();
      v94[0] = sub_2664E0DE8();
      v94[1] = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v41 = sub_2664E0318();
      v43 = sub_2662A320C(v41, v42, &v95);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_26629C000, v36, v37, "MediaRemoteAPIProvider#getItemInfo Unexpected error: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v24 + 8))(v28, v33);
    *v19 = 1;
LABEL_7:
    swift_storeEnumTagMultiPayload();
    v92(v19);
    return sub_2662A9238(v19, qword_280073800, &unk_2664ED310);
  }

  v84 = v20;
  v85 = v12;
  v45 = v88;
  v86 = v23;
  v87 = v10;
  if (!v89)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v59 = v93;
    v60 = __swift_project_value_buffer(v93, qword_280F914F0);
    swift_beginAccess();
    (*(v24 + 16))(v32, v60, v59);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06D8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "MediaRemoteAPIProvider#getItemInfo Nil playbackQueue means nothing is playing", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    (*(v24 + 8))(v32, v93);
    v64 = sub_2664DE438();
    v65 = *(*(v64 - 8) + 56);
    v65(v16, 1, 1, v64);
    v66 = sub_2664DE268();
    v67 = *(*(v66 - 8) + 56);
    v93 = v16;
    v68 = v85;
    v67(v85, 1, 1, v66);
    v67(v87, 1, 1, v66);
    v69 = v84;
    v83 = *(v84 + 96);
    v65(&v19[v83], 1, 1, v64);
    v70 = &v19[v69[25]];
    v71 = &v19[v69[26]];
    v89 = v69[27];
    v67(&v19[v89], 1, 1, v66);
    v88 = v69[28];
    v67(&v19[v88], 1, 1, v66);
    v72 = &v19[v69[29]];
    v73 = &v19[v69[30]];
    v74 = v69[32];
    v86 = v69[31];
    v75 = &v19[v74];
    v76 = v69[33];
    v84 = v69[34];
    v77 = &v19[v76];
    *v19 = 0u;
    *(v19 + 1) = 0u;
    *(v19 + 2) = 0u;
    *(v19 + 3) = 0u;
    *(v19 + 8) = 0;
    v19[72] = 1;
    *(v19 + 10) = 0;
    v19[88] = 1;
    *(v19 + 12) = 0;
    v19[104] = 1;
    *(v19 + 14) = 0;
    *(v19 + 15) = 0;
    *(v19 + 16) = 0;
    v19[136] = 1;
    *(v19 + 137) = 514;
    v19[139] = 2;
    *(v19 + 35) = 0;
    v19[144] = 1;
    *(v19 + 19) = 0;
    v19[160] = 1;
    *(v19 + 21) = 0;
    v19[176] = 1;
    *(v19 + 23) = 0;
    v19[192] = 1;
    *(v19 + 25) = 0;
    v19[208] = 1;
    *(v19 + 27) = 0;
    v19[224] = 1;
    *(v19 + 29) = 0;
    v19[240] = 1;
    *(v19 + 31) = 0;
    v19[256] = 1;
    sub_26642A7B0(v93, &v19[v83], &qword_2800737D0, qword_2664E4FD0);
    *v70 = 0;
    *(v70 + 1) = 0;
    *v71 = 0;
    *(v71 + 1) = 0;
    sub_26642A7B0(v68, &v19[v89], &qword_280072BC0, &qword_2664E6030);
    sub_26642A7B0(v87, &v19[v88], &qword_280072BC0, &qword_2664E6030);
    *v72 = 0;
    *(v72 + 1) = 0;
    *v73 = 0;
    v73[8] = 1;
    v19[v86] = 2;
    *v75 = 0;
    *(v75 + 1) = 0;
    *v77 = 0;
    *(v77 + 1) = 0;
    v19[v84] = 2;
    goto LABEL_7;
  }

  v46 = v30;
  v47 = qword_280F914E8;
  v48 = v89;
  if (v47 != -1)
  {
    swift_once();
  }

  v49 = v93;
  v50 = __swift_project_value_buffer(v93, qword_280F914F0);
  swift_beginAccess();
  (*(v24 + 16))(v46, v50, v49);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06C8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v94[0] = v89;
    *v53 = 136315138;
    LOBYTE(v95) = v45;
    v54 = sub_2664E0318();
    v56 = v48;
    v57 = sub_2662A320C(v54, v55, v94);

    *(v53 + 4) = v57;
    v48 = v56;
    _os_log_impl(&dword_26629C000, v51, v52, "MediaRemoteAPIProvider#getItemInfo Queue Position:%s", v53, 0xCu);
    v58 = v89;
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);

    (*(v24 + 8))(v46, v93);
  }

  else
  {

    (*(v24 + 8))(v46, v49);
  }

  v78 = [v48 contentItemWithOffset_];
  v79 = v78;
  v80 = v86;
  if (v78 && (v81 = v78, v82 = [v81 metadata], v81, v82))
  {
    sub_266427CD8(v82, v80);
    sub_26642A818(v80, v19);
    swift_storeEnumTagMultiPayload();
    v92(v19);
  }

  else
  {
    sub_266427808(v80);
    sub_26642A818(v80, v19);
    swift_storeEnumTagMultiPayload();
    v92(v19);
  }

  sub_2662A9238(v19, qword_280073800, &unk_2664ED310);
  return sub_26642A87C(v80);
}

uint64_t sub_266427808@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v36 - v10;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "MediaRemoteAPIProvider#getNowPlayingInfoWithNoAppProvidedData", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v20 = sub_2664DE438();
  v21 = *(*(v20 - 8) + 56);
  v21(v41, 1, 1, v20);
  v22 = sub_2664DE268();
  v23 = *(*(v22 - 8) + 56);
  v23(v42, 1, 1, v22);
  v23(v6, 1, 1, v22);
  v24 = type metadata accessor for NowPlayingInfo();
  v40 = v6;
  v25 = v24[24];
  v21(a1 + v25, 1, 1, v20);
  v26 = (a1 + v24[25]);
  v27 = (a1 + v24[26]);
  v39 = v24[27];
  v23(a1 + v39, 1, 1, v22);
  v38 = v24[28];
  v23(a1 + v38, 1, 1, v22);
  v28 = (a1 + v24[29]);
  v29 = a1 + v24[30];
  v30 = v24[32];
  v37 = v24[31];
  v31 = (a1 + v30);
  v32 = v24[33];
  v36 = v24[34];
  v33 = (a1 + v32);
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 1;
  *(a1 + 137) = 514;
  *(a1 + 139) = 2;
  *(a1 + 140) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *(a1 + 232) = 0;
  *(a1 + 240) = 1;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  sub_26642A7B0(v41, a1 + v25, &qword_2800737D0, qword_2664E4FD0);
  *v26 = 0;
  v26[1] = 0;
  *v27 = 0;
  v27[1] = 0;
  sub_26642A7B0(v42, a1 + v39, &qword_280072BC0, &qword_2664E6030);
  result = sub_26642A7B0(v40, a1 + v38, &qword_280072BC0, &qword_2664E6030);
  *v28 = 0;
  v28[1] = 0;
  *v29 = 0;
  *(v29 + 8) = 1;
  v35 = v36;
  *(a1 + v37) = 2;
  *v31 = 0;
  v31[1] = 0;
  *v33 = 0;
  v33[1] = 0;
  *(a1 + v35) = 1;
  return result;
}

uint64_t sub_266427CD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v174 = type metadata accessor for NowPlayingInfo();
  v4 = *(*(v174 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v174);
  v131 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v170 = &v130 - v7;
  v8 = sub_2664DFE38();
  v172 = *(v8 - 8);
  v9 = *(v172 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v177 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v176 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v130 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v180 = &v130 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v130 - v24;
  MEMORY[0x28223BE20](v23);
  v179 = &v130 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v175 = &v130 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v130 - v32;
  MEMORY[0x28223BE20](v31);
  v178 = &v130 - v34;
  v35 = [a1 title];
  if (v35)
  {
    v36 = v35;
    v169 = sub_2664E02C8();
    v168 = v37;
  }

  else
  {
    v169 = 0;
    v168 = 0;
  }

  v38 = [a1 trackArtistName];
  if (v38)
  {
    v39 = v38;
    v167 = sub_2664E02C8();
    v166 = v40;
  }

  else
  {
    v167 = 0;
    v166 = 0;
  }

  v41 = [a1 albumName];
  if (v41)
  {
    v42 = v41;
    v165 = sub_2664E02C8();
    v164 = v43;
  }

  else
  {
    v165 = 0;
    v164 = 0;
  }

  LODWORD(v149) = [a1 hasITunesStoreIdentifier];
  if (v149)
  {
    v163 = [a1 iTunesStoreIdentifier];
  }

  else
  {
    v163 = 0;
  }

  LODWORD(v148) = [a1 hasITunesStoreAlbumIdentifier];
  if (v148)
  {
    v162 = [a1 iTunesStoreAlbumIdentifier];
  }

  else
  {
    v162 = 0;
  }

  v142 = [a1 hasITunesStoreArtistIdentifier];
  if (v142)
  {
    v161 = [a1 iTunesStoreArtistIdentifier];
  }

  else
  {
    v161 = 0;
  }

  v44 = [a1 contentIdentifier];
  v173 = v8;
  if (v44)
  {
    v45 = v44;
    v160 = sub_2664E02C8();
    v159 = v46;
  }

  else
  {
    v160 = 0;
    v159 = 0;
  }

  v47 = [a1 hasLegacyUniqueIdentifier];
  if (v47)
  {
    v158 = [a1 legacyUniqueIdentifier];
  }

  else
  {
    v158 = 0;
  }

  v157 = [a1 isExplicitItem];
  v156 = [a1 isLiked];
  v155 = [a1 lyricsAvailable];
  [a1 playbackProgress];
  v49 = v48;
  v154 = [a1 playCount];
  v153 = [a1 totalTrackCount];
  [a1 duration];
  v51 = v50;
  v152 = [a1 seasonNumber];
  v151 = [a1 episodeNumber];
  v150 = [a1 trackNumber];
  v52 = [a1 releaseDate];
  if (v52)
  {
    v53 = v52;
    sub_2664DE3F8();

    v54 = sub_2664DE438();
    (*(*(v54 - 8) + 56))(v33, 0, 1, v54);
  }

  else
  {
    v55 = sub_2664DE438();
    (*(*(v55 - 8) + 56))(v33, 1, 1, v55);
  }

  sub_266319B8C(v33, v178, &qword_2800737D0, qword_2664E4FD0);
  v56 = [a1 composer];
  if (v56)
  {
    v57 = v56;
    v147 = sub_2664E02C8();
    v146 = v58;
  }

  else
  {
    v147 = 0;
    v146 = 0;
  }

  v59 = [a1 genre];
  if (v59)
  {
    v60 = v59;
    v145 = sub_2664E02C8();
    v144 = v61;
  }

  else
  {
    v145 = 0;
    v144 = 0;
  }

  v171 = v11;
  v62 = [a1 lyricsURL];
  if (v62)
  {
    v63 = v62;
    sub_2664DE218();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = sub_2664DE268();
  v66 = 1;
  v67 = v64;
  v68 = *(*(v65 - 8) + 56);
  v68(v25, v67, 1, v65);
  sub_266319B8C(v25, v179, &qword_280072BC0, &qword_2664E6030);
  v69 = [a1 artworkURL];
  if (v69)
  {
    v70 = v69;
    sub_2664DE218();

    v66 = 0;
  }

  v68(v20, v66, 1, v65);
  sub_266319B8C(v20, v180, &qword_280072BC0, &qword_2664E6030);
  v71 = [a1 albumYear];
  if (v71)
  {
    v72 = v71;
    v143 = sub_2664E02C8();
    v141 = v73;
  }

  else
  {
    v143 = 0;
    v141 = 0;
  }

  v140 = [a1 mediaType];
  v139 = [a1 isLoading];
  v74 = [a1 collectionInfo];
  if (!v74)
  {
    goto LABEL_54;
  }

  v75 = v74;
  v76 = sub_2664E01C8();

  v181 = 0xD000000000000037;
  v182 = 0x80000002664F8BA0;
  sub_2664E0AB8();
  if (!*(v76 + 16) || (v77 = sub_26634D9F8(v183), (v78 & 1) == 0))
  {

    sub_266350284(v183);
LABEL_54:
    v85 = 0;
    v83 = 0;
    v86 = 0xE000000000000000;
LABEL_55:
    v84 = 0xE000000000000000;
    goto LABEL_56;
  }

  sub_2662A01E8(*(v76 + 56) + 32 * v77, &v184);
  sub_266350284(v183);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_54;
  }

  v80 = v181;
  v79 = v182;
  if ((v181 != 0xD00000000000003CLL || 0x80000002664F8BE0 != v182) && (sub_2664E0D88() & 1) == 0)
  {
    if (v80 == 0xD000000000000039 && 0x80000002664F8C20 == v79)
    {
    }

    else
    {
      v127 = sub_2664E0D88();

      if ((v127 & 1) == 0)
      {

        v85 = 0;
        v83 = 0;
        v86 = 0xE000000000000000;
        v84 = 0xE000000000000000;
        goto LABEL_56;
      }
    }

    v184 = 0xD00000000000002ELL;
    v185 = 0x80000002664F8C60;
    sub_2664E0AB8();
    if (*(v76 + 16) && (v128 = sub_26634D9F8(v183), (v129 & 1) != 0))
    {
      sub_2662A01E8(*(v76 + 56) + 32 * v128, &v184);
      sub_266350284(v183);

      if (swift_dynamicCast())
      {
        v85 = v181;
        v86 = v182;
LABEL_84:
        v83 = 0;
        goto LABEL_55;
      }
    }

    else
    {

      sub_266350284(v183);
    }

    v85 = 0;
    v86 = 0xE000000000000000;
    goto LABEL_84;
  }

  v184 = 0xD00000000000002ELL;
  v185 = 0x80000002664F8C60;
  sub_2664E0AB8();
  if (*(v76 + 16) && (v81 = sub_26634D9F8(v183), (v82 & 1) != 0))
  {
    sub_2662A01E8(*(v76 + 56) + 32 * v81, &v184);
    sub_266350284(v183);

    if (swift_dynamicCast())
    {
      v83 = v181;
      v84 = v182;
    }

    else
    {
      v83 = 0;
      v84 = 0xE000000000000000;
    }
  }

  else
  {

    sub_266350284(v183);
    v83 = 0;
    v84 = 0xE000000000000000;
  }

  v85 = 0;
  v86 = 0xE000000000000000;
LABEL_56:
  v136 = v149 ^ 1;
  v137 = v148 ^ 1;
  v138 = v142 ^ 1;
  v142 = v47 ^ 1;
  sub_2662A7224(v178, v175, &qword_2800737D0, qword_2664E4FD0);
  sub_2662A7224(v179, v176, &qword_280072BC0, &qword_2664E6030);
  sub_2662A7224(v180, v177, &qword_280072BC0, &qword_2664E6030);
  if (!v83 && v84 == 0xE000000000000000 || (sub_2664E0D88() & 1) != 0)
  {

    v83 = 0;
    v84 = 0;
  }

  v149 = v83;
  v148 = v84;
  if (!v85 && v86 == 0xE000000000000000 || (sub_2664E0D88() & 1) != 0)
  {

    v135 = 0;
    v134 = 0;
  }

  else
  {
    v135 = v85;
    v134 = v86;
  }

  v87 = v174;
  v88 = *(v174 + 96);
  v89 = sub_2664DE438();
  (*(*(v89 - 8) + 56))(a2 + v88, 1, 1, v89);
  v90 = (a2 + v87[25]);
  v91 = (a2 + v87[26]);
  v92 = v87[27];
  v68((a2 + v92), 1, 1, v65);
  v93 = v65;
  v94 = v87[28];
  v68((a2 + v94), 1, 1, v93);
  v95 = v87[29];
  v96 = v87[30];
  v133 = v87[31];
  v97 = v87[32];
  v98 = v87[33];
  v132 = v87[34];
  v99 = v168;
  *a2 = v169;
  *(a2 + 8) = v99;
  v100 = v166;
  *(a2 + 16) = v167;
  *(a2 + 24) = v100;
  v101 = v164;
  *(a2 + 48) = v165;
  *(a2 + 56) = v101;
  *(a2 + 64) = v163;
  *(a2 + 72) = v136;
  *(a2 + 80) = v162;
  *(a2 + 88) = v137;
  *(a2 + 96) = v161;
  *(a2 + 104) = v138;
  v102 = v159;
  *(a2 + 112) = v160;
  *(a2 + 120) = v102;
  *(a2 + 128) = v158;
  *(a2 + 136) = v142;
  *(a2 + 137) = v157;
  *(a2 + 138) = v156;
  *(a2 + 139) = v155;
  *(a2 + 160) = 1;
  *(a2 + 168) = v154;
  *(a2 + 184) = v153;
  *(a2 + 216) = v152;
  *(a2 + 232) = v151;
  *(a2 + 248) = v150;
  v103 = (a2 + v95);
  v104 = a2 + v96;
  v105 = (a2 + v97);
  v106 = (a2 + v98);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 140) = v49;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 176) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = v51;
  *(a2 + 208) = 0;
  *(a2 + 224) = 0;
  *(a2 + 240) = 0;
  *(a2 + 256) = 0;
  sub_26642A7B0(v175, a2 + v88, &qword_2800737D0, qword_2664E4FD0);
  v107 = v146;
  *v90 = v147;
  v90[1] = v107;
  v108 = v144;
  *v91 = v145;
  v91[1] = v108;
  sub_26642A7B0(v176, a2 + v92, &qword_280072BC0, &qword_2664E6030);
  sub_26642A7B0(v177, a2 + v94, &qword_280072BC0, &qword_2664E6030);
  v109 = v141;
  *v103 = v143;
  v103[1] = v109;
  *v104 = v140;
  *(v104 + 8) = 0;
  *(a2 + v133) = v139;
  v110 = v148;
  *v105 = v149;
  v105[1] = v110;
  v111 = v134;
  *v106 = v135;
  v106[1] = v111;
  *(a2 + v132) = 0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v112 = v173;
  v113 = __swift_project_value_buffer(v173, qword_280F914F0);
  swift_beginAccess();
  v114 = v172;
  v115 = v171;
  (*(v172 + 16))(v171, v113, v112);
  v116 = a2;
  v117 = v170;
  sub_26642A818(v116, v170);
  v118 = sub_2664DFE18();
  v119 = sub_2664E06C8();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v184 = v121;
    *v120 = 136315138;
    sub_26642A818(v117, v131);
    v122 = sub_2664E0318();
    v124 = v123;
    sub_26642A87C(v117);
    v125 = sub_2662A320C(v122, v124, &v184);

    *(v120 + 4) = v125;
    _os_log_impl(&dword_26629C000, v118, v119, "MediaRemoteAPIProvider#getNowPlayingInfoWithItemMetadataPopulated %s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    MEMORY[0x266784AD0](v121, -1, -1);
    MEMORY[0x266784AD0](v120, -1, -1);
  }

  else
  {

    sub_26642A87C(v117);
  }

  (*(v114 + 8))(v115, v112);
  sub_2662A9238(v180, &qword_280072BC0, &qword_2664E6030);
  sub_2662A9238(v179, &qword_280072BC0, &qword_2664E6030);
  return sub_2662A9238(v178, &qword_2800737D0, qword_2664E4FD0);
}

uint64_t sub_266428F14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_266428F68()
{
  v1 = v0;
  v2 = [objc_opt_self() quickControlsControllerWithDelegate_];
  v3 = [v2 acquireQuickControlsAssertion];
  v4 = sub_2664E02C8();
  v6 = v5;

  swift_beginAccess();

  swift_unknownObjectRetain();
  v7 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_26634FAB8(v2, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v10;
  swift_endAccess();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26642906C(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16))
  {

    v7 = sub_2662A3E98(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_unknownObjectRetain();

      [v9 releaseQuickControlsAssertion];
      swift_beginAccess();

      sub_266449158(0, a1, a2);
      swift_endAccess();
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_26642918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26642924C;
  v4[3] = &block_descriptor_9_2;
  v3 = _Block_copy(v4);

  MRAVReconnaissanceSessionBeginSearch();
  _Block_release(v3);
}

void sub_26642924C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t MediaRemoteAPIProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MediaRemoteAPIProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_266429340(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_266429784(a2, a3);
  v9 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];

  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v12[4] = sub_26642AA14;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26633283C;
  v12[3] = &block_descriptor_34_1;
  v11 = _Block_copy(v12);

  [v9 requestClientPropertiesOnQueue:a1 completion:v11];
  _Block_release(v11);
}

void sub_266429468(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = *a4;
  v13 = sub_266429A04();
  v14 = sub_266429784(a2, a3);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = v12;
  *(v15 + 40) = v11;
  v17[4] = sub_26642AA10;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_26633283C;
  v17[3] = &block_descriptor_27;
  v16 = _Block_copy(v17);

  [v13 performRequestForDestination:v14 completion:v16];
  _Block_release(v16);
}

uint64_t sub_26642959C()
{
  v1 = *v0;
  v2 = [objc_opt_self() quickControlsControllerWithDelegate_];
  v3 = [v2 acquireQuickControlsAssertion];
  v4 = sub_2664E02C8();
  v6 = v5;

  swift_beginAccess();

  swift_unknownObjectRetain();
  v7 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_26634FAB8(v2, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v10;
  swift_endAccess();
  swift_unknownObjectRelease();
  return v4;
}

void sub_2664296C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26642924C;
  v4[3] = &block_descriptor_20;
  v3 = _Block_copy(v4);

  MRAVReconnaissanceSessionBeginSearch();
  _Block_release(v3);
}

id sub_266429784(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() localDestination];
  if (a2)
  {
    v19 = result;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v10, v4);

    v11 = sub_2664DFE18();
    v12 = sub_2664E06C8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2662A320C(a1, a2, &v20);
      _os_log_impl(&dword_26629C000, v11, v12, "MediaRemoteAPIProvider#getMRDestination outputDeviceUID:%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266784AD0](v14, -1, -1);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v15 = objc_allocWithZone(MEMORY[0x277D27988]);
    v16 = sub_2664E02A8();
    v17 = [v15 initWithOutputDeviceUID_];

    return v17;
  }

  return result;
}

id sub_266429A04()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "MediaRemoteAPIProvider#getMRPlaybackQueueRequest Initializing MRPlaybackQueueRequest", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v9 = [objc_allocWithZone(MEMORY[0x277D279D8]) initWithRange_];
  [v9 setIncludeMetadata_];
  return v9;
}

void sub_266429BE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v33 = v14;
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v11;
    v19 = v18;
    v31 = swift_slowAlloc();
    v34 = v31;
    aBlock = a2;
    *v19 = 136315138;
    v36 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v20 = sub_2664E0318();
    v30 = v10;
    v22 = a3;
    v23 = a4;
    v24 = sub_2662A320C(v20, v21, &v34);

    *(v19 + 4) = v24;
    a4 = v23;
    a3 = v22;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaRemoteAPIProvider#getStateInfo outputDeviceUID: %s...", v19, 0xCu);
    v25 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v11 + 8))(v33, v10);
  }

  v26 = sub_266429784(a2, a3);
  v27 = [objc_allocWithZone(MEMORY[0x277D279C8]) initWithDestination_];

  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v39 = sub_26642A9E4;
  v40 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26642643C;
  v38 = &block_descriptor_52_0;
  v29 = _Block_copy(&aBlock);

  [v27 requestPlaybackStateOnQueue:a1 completion:v29];
  _Block_release(v29);
}

void sub_266429F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737E0, &qword_2664EC7D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  *(inited + 32) = sub_2664E02A8();
  v7 = *MEMORY[0x277D27DC0];
  *(inited + 40) = *MEMORY[0x277D27DC0];
  v8 = v7;
  sub_266386598(inited);
  swift_setDeallocating();
  sub_2662A9238(inited + 32, &qword_2800737E8, qword_2664EC7D8);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
  sub_26642A98C();
  v9 = sub_2664E01A8();

  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2664B740C;
  v11[3] = &block_descriptor_46_0;
  v10 = _Block_copy(v11);

  MRMediaRemoteSendCommandWithReply();
  _Block_release(v10);
}

void sub_26642A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = *MEMORY[0x277D27928];
    sub_2664E02C8();
  }

  v7 = objc_opt_self();

  v8 = sub_2664E02A8();

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_26642A964;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_266428F14;
  v11[3] = &block_descriptor_43;
  v10 = _Block_copy(v11);

  [v7 shouldUseQuickControlsToDisplayPlatterForRouteIdentifier:v8 completion:v10];
  _Block_release(v10);
}

id sub_26642A28C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() auxiliarySession];
  v1 = *MEMORY[0x277CB8030];
  v6[0] = 0;
  if ([v0 setCategory:v1 error:v6])
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_2664DE1A8();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_26642A368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D279F8]) init];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v12[0] = 0;
    sub_26642A918();
    sub_2664E0498();
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D279A8]) initWithRequestDetails:v7 type:3 outputDevices:v8];

  [v9 setSuppressErrorDialog_];
  v10 = [objc_opt_self() sharedLocalEndpoint];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2663CE9D8;
  v12[3] = &block_descriptor_37;
  v11 = _Block_copy(v12);

  [v10 modifyTopologyWithRequest:v9 withReplyQueue:a2 completion:v11];
  _Block_release(v11);
}

uint64_t sub_26642A7B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26642A818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26642A87C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26642A918()
{
  result = qword_2800737D8;
  if (!qword_2800737D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800737D8);
  }

  return result;
}

uint64_t sub_26642A964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_26642A98C()
{
  result = qword_280071F78;
  if (!qword_280071F78)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280071F78);
  }

  return result;
}

unint64_t ResolutionResultType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x6E49746F4E707041;
    if (v1 == 10)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0xD000000000000019;
    if (v1 != 7)
    {
      v9 = 0x656C655372657355;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x746C7561666544;
    v3 = 0xD000000000000014;
    if (v1 != 4)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000017;
    }

    v4 = 0xD000000000000012;
    if (v1 == 1)
    {
      v4 = 0x6465727265666E49;
    }

    if (*v0)
    {
      v2 = v4;
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
}

SiriAudioSupport::ResolutionResultType_optional __swiftcall ResolutionResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ResolutionResultType.explicitlySelectedByUser.getter()
{
  v1 = *v0;
  if (ResolutionResultType.rawValue.getter() != 0xD000000000000012 || 0x80000002664F3120 != v2)
  {
    v4 = sub_2664E0D88();

    if (v4)
    {
      v3 = 1;
      return v3 & 1;
    }

    if (ResolutionResultType.rawValue.getter() != 0x656C655372657355 || v5 != 0xEC00000064657463)
    {
      v3 = sub_2664E0D88();

      return v3 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_26642AD94(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ResolutionResultType.rawValue.getter();
  v4 = v3;
  if (v2 == ResolutionResultType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2664E0D88();
  }

  return v7 & 1;
}

uint64_t sub_26642AE30()
{
  v1 = *v0;
  sub_2664E0E68();
  ResolutionResultType.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26642AE98()
{
  v2 = *v0;
  ResolutionResultType.rawValue.getter();
  sub_2664E0368();
}

uint64_t sub_26642AEFC()
{
  v1 = *v0;
  sub_2664E0E68();
  ResolutionResultType.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_26642AF6C@<X0>(unint64_t *a1@<X8>)
{
  result = ResolutionResultType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26642AF98()
{
  result = qword_280073818;
  if (!qword_280073818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073818);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResolutionResultType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolutionResultType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Bool __swiftcall INPlayMediaIntent.getAppInferred()()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 appInferred];

    if (v3)
    {
      v4 = [v3 BOOLValue];

      LOBYTE(v1) = v4;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

uint64_t INPlayMediaIntent.firstMediaItemType()()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2663D9B50();
  v3 = sub_2664E04A8();

  if (v3 >> 62)
  {
    result = sub_2664E0A68();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266783B70](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_7:
    v6 = v5;

    v7 = [v6 type];

    return v7;
  }

  __break(1u);
  return result;
}

id sub_26642B2B8()
{
  result = [*v0 privatePlayMediaIntentData];
  if (result)
  {
    v2 = result;
    v3 = [result appInferred];

    if (v3)
    {
      v4 = [v3 BOOLValue];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26642B35C()
{
  v23 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v0 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v1 = qword_280F8F808;
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v39 = v2;
  v40 = &protocol witness table for MultiUserConnectionProvider;
  *&v38 = v1;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();
  swift_retain_n();
  v22 = sub_266360778(v0, &v38, v4);

  v5 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v38);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v35 = qword_280F905C8;
  *(&v35 + 5) = *(&qword_280F905C8 + 5);
  v36 = &type metadata for FeatureFlagProvider;
  v37 = &protocol witness table for FeatureFlagProvider;
  v34 = &protocol witness table for SharedContextProvider;
  v33 = type metadata accessor for SharedContextProvider();
  v31 = &protocol witness table for SubscriptionProvider;
  *&v32 = swift_initStaticObject();
  v30 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v27 = type metadata accessor for SiriKitTaskLoggingProvider();
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = v7;
  v25[3] = &type metadata for WatchOSSupportProvider;
  v25[4] = &off_2877EC0A0;
  v8 = type metadata accessor for MediaPlaybackProvider();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for WatchOSSupportProvider);
  v9[28] = &type metadata for WatchOSSupportProvider;
  v9[29] = &off_2877EC0A0;
  v9[5] = v3;
  v9[6] = &protocol witness table for AccountProvider;
  v9[2] = v22;
  v9[17] = v23;
  v9[18] = v5;
  v9[19] = v6;
  sub_2662A8618(&v38, (v9 + 20));
  sub_2662A8618(&v35, (v9 + 30));
  sub_2662A8618(&v32, (v9 + 35));
  sub_2662A8618(&v29, (v9 + 7));
  sub_2662A8618(&v26, (v9 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v39 = v8;
  v40 = &off_2877F3740;
  *&v38 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v36 = v2;
  v37 = &protocol witness table for MultiUserConnectionProvider;
  *&v35 = v1;
  v11 = swift_allocObject();

  v12 = sub_266360778(v10, &v35, v11);

  v36 = v3;
  v37 = &protocol witness table for AccountProvider;
  *&v35 = v12;
  v33 = &type metadata for PlaybackStarter;
  v34 = &off_2877EE098;
  v13 = swift_allocObject();
  *&v32 = v13;
  sub_2663FB4EC();
  v14 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v15 = swift_allocObject();
  v16 = sub_266360778(v14, &v29, v15);

  v13[10] = v3;
  v13[11] = &protocol witness table for AccountProvider;
  v13[7] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v18 = swift_allocObject();
  v19 = sub_266360778(v17, &v29, v18);

  v30 = &type metadata for PlaybackQueueLocationProvider;
  v31 = &off_2877E8100;
  v20 = swift_allocObject();
  *&v29 = v20;
  v20[5] = v3;
  v20[6] = &protocol witness table for AccountProvider;
  v20[2] = v19;
  sub_266401880();
  return (*(v24 + 128))(&v38, &v35, &v32, &v29);
}

uint64_t sub_26642B830(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a5;
  v38 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v43 = *a2;
  v44 = v15;
  *v45 = *(a2 + 32);
  *&v45[15] = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v16, v10);
  sub_2662D2A64(&v43, v41);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  sub_2662D2B88(&v43);
  if (os_log_type_enabled(v17, v18))
  {
    v35 = a3;
    v36 = a1;
    v37 = v6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v41[0] = v20;
    *v19 = 136315138;
    v21 = 0xE300000000000000;
    v22 = 7827310;
    v23 = 0xE500000000000000;
    v24 = 0x726574616CLL;
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    if (v45[16] != 3)
    {
      v26 = 0x726F707075736E75;
      v25 = 0xEB00000000646574;
    }

    if (v45[16] != 2)
    {
      v24 = v26;
      v23 = v25;
    }

    if (v45[16])
    {
      v22 = 1954047342;
      v21 = 0xE400000000000000;
    }

    if (v45[16] <= 1u)
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    if (v45[16] <= 1u)
    {
      v28 = v21;
    }

    else
    {
      v28 = v23;
    }

    v29 = sub_2662A320C(v27, v28, v41);

    *(v19 + 4) = v29;
    _os_log_impl(&dword_26629C000, v17, v18, "LocalPlaybackHandler#handlePlaybackQueueLocation attempting to set queue location for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    (*(v11 + 8))(v14, v10);
    v6 = v37;
    a1 = v36;
    a3 = v35;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v41[0] = v43;
  v41[1] = v44;
  *v42 = *v45;
  *&v42[15] = *&v45[15];
  v30 = swift_allocObject();
  v31 = v39;
  *(v30 + 16) = v38;
  *(v30 + 24) = v31;
  v32 = v44;
  *(v30 + 32) = v43;
  *(v30 + 48) = v32;
  *(v30 + 64) = *v45;
  *(v30 + 79) = *&v45[15];
  *(v30 + 88) = v6;
  *(v30 + 96) = a1;
  *(v30 + 104) = a3;
  sub_2662D2A64(&v43, v40);

  v33 = a3;
  sub_2664C604C((v6 + 56), a1, v41, 2, sub_2664306B4, v30);
}

uint64_t sub_26642BC20(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a5;
  v38 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v43 = *a2;
  v44 = v15;
  v45[0] = *(a2 + 32);
  *(v45 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v16, v10);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "LocalPlaybackHandler#preLoadQueue Local playback", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (sub_2664C8564(a1))
  {
    v41[0] = v43;
    v41[1] = v44;
    *v42 = v45[0];
    *&v42[15] = *(v45 + 15);
    v20 = swift_allocObject();
    *(v20 + 16) = v6;
    v21 = v44;
    *(v20 + 24) = v43;
    *(v20 + 40) = v21;
    *(v20 + 56) = v45[0];
    *(v20 + 71) = *(v45 + 15);
    *(v20 + 80) = a3;
    *(v20 + 88) = a1;
    v22 = v39;
    *(v20 + 96) = v38;
    *(v20 + 104) = v22;
    sub_2662D2A64(&v43, v40);

    v23 = a3;
    sub_2664C604C(v6 + 7, a1, v41, 2, sub_26643068C, v20);
  }

  else
  {
    v24 = v6[10];
    v25 = v6[11];
    v37 = __swift_project_boxed_opaque_existential_1(v6 + 7, v24);
    v36 = *(&v43 + 1);
    v35 = v44;
    v26 = a1[12];
    v34 = a1[13];
    v27 = swift_allocObject();
    v28 = v44;
    *(v27 + 16) = v43;
    *(v27 + 32) = v28;
    *(v27 + 48) = v45[0];
    *(v27 + 63) = *(v45 + 15);
    *(v27 + 72) = v6;
    *(v27 + 80) = a1;
    v29 = v39;
    *(v27 + 88) = v38;
    *(v27 + 96) = v29;
    *(v27 + 104) = a3;
    v30 = *(v25 + 8);
    sub_2662D2A64(&v43, v41);

    v31 = a3;
    v30(v36, v35, v26, v34, sub_266430678, v27, v24, v25);
  }
}

id sub_26642BFEC(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v80 = &v73 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v81 = &v73 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v73 - v12;
  v14 = sub_26637C354(a1);
  if (v15)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v7, v16, v2);
    v17 = sub_2664DFE18();
    v18 = sub_2664E06D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26629C000, v17, v18, "LocalPlaybackHandler#albumQuery Failed to get grouping for scheme", v19, 2u);
      MEMORY[0x266784AD0](v19, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v20 = v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v22 = *(v3 + 16);
  v78 = v3 + 16;
  v79 = v21;
  v77 = v22;
  v22(v13, v21, v2);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  v25 = os_log_type_enabled(v23, v24);
  v76 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v75 = v3;
    v83[0] = v74;
    *v26 = 136315394;
    v82 = v20;
    v27 = sub_2664E0D48();
    v29 = sub_2662A320C(v27, v28, v83);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    LOBYTE(v82) = *(a1 + 48);
    v30 = PlaybackItem.Scheme.rawValue.getter();
    v32 = sub_2662A320C(v30, v31, v83);

    *(v26 + 14) = v32;
    _os_log_impl(&dword_26629C000, v23, v24, "LocalPlaybackHandler#albumQuery Got grouping: %s for scheme: %s", v26, 0x16u);
    v33 = v74;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);

    v34 = v75;
  }

  else
  {

    v34 = v3;
  }

  v35 = *(v34 + 8);
  v35(v13, v2);
  v36 = [objc_opt_self() persistentIDPropertyForGroupingType_];
  if (!v36)
  {
    sub_2664E02C8();
    v36 = sub_2664E02A8();
  }

  v37 = sub_2664E02C8();
  v39 = v38;
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
    goto LABEL_21;
  }

  v41 = v37;
  v42 = *MEMORY[0x277CD57D8];
  if (v41 == sub_2664E02C8() && v39 == v43)
  {

LABEL_22:
    v77(v81, v79, v2);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26629C000, v45, v46, "LocalPlaybackHandler#albumQuery Either we have an unknown collection type, or each collection is a single track. Returning nil", v47, 2u);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v35(v81, v2);
    return 0;
  }

  v44 = sub_2664E0D88();

  if (v44)
  {
LABEL_21:

    goto LABEL_22;
  }

  v77(v80, v79, v2);
  v49 = v76;

  v50 = sub_2664DFE18();
  v51 = sub_2664E06E8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v83[0] = v81;
    *v52 = 136315394;
    *(v52 + 4) = sub_2662A320C(*(v49 + 56), *(v49 + 64), v83);
    *(v52 + 12) = 2080;
    v53 = sub_2662A320C(v41, v39, v83);
    v54 = v49;
    v55 = v53;

    *(v52 + 14) = v55;
    v49 = v54;
    _os_log_impl(&dword_26629C000, v50, v51, "LocalPlaybackHandler#albumQuery building MPMediaQuery for %s with property: %s", v52, 0x16u);
    v56 = v81;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v56, -1, -1);
    MEMORY[0x266784AD0](v52, -1, -1);
  }

  else
  {
  }

  v35(v80, v2);
  v57 = *(v49 + 64);
  v83[0] = *(v49 + 56);
  v83[1] = v57;

  v58 = sub_2664E0DB8();
  v59 = objc_opt_self();
  v60 = [v59 predicateWithValue:v58 forProperty:v36];
  swift_unknownObjectRelease();

  v61 = *MEMORY[0x277CD57A0];
  LOBYTE(v83[0]) = 1;
  v62 = v61;
  v63 = [v59 predicateWithValue:sub_2664E0DB8() forProperty:v62];
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EB980;
  *(inited + 32) = v60;
  *(inited + 40) = v63;
  v65 = v60;
  v66 = v63;
  sub_2662C40E8(inited);
  v68 = v67;
  swift_setDeallocating();
  v69 = *(inited + 16);
  swift_arrayDestroy();
  sub_26645FE84(v68);

  v70 = objc_allocWithZone(MEMORY[0x277CD5E38]);
  sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
  sub_26637F50C();
  v71 = sub_2664E05F8();

  v72 = [v70 initWithFilterPredicates_];

  [v72 setGroupingType_];
  return v72;
}

uint64_t sub_26642CA64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *v11;
  v17 = *(a2 + 48);
  v18 = *(a2 + 49);
  if (*(a2 + 48))
  {
    v19 = v17 == 3;
  }

  else
  {
    v19 = 1;
  }

  v21 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v21;
  v24[2] = *(a2 + 32);
  v25 = v17;
  v26 = v18;
  if (v19)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    sub_26642BC20(a1, v24, a3, a11, v20);
  }

  else
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;

    sub_26642B830(a1, v24, a3, a9, v22);
  }
}

void *sub_26642CB78(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v69 = a1;
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v13;
  v28 = type metadata accessor for MediaPlaybackProvider();
  v80[3] = v28;
  v80[4] = &off_2877F3740;
  v80[0] = v27;
  v79[3] = &type metadata for PlaybackStarter;
  v79[4] = &off_2877EE098;
  v29 = swift_allocObject();
  v79[0] = v29;
  v30 = v19[3];
  v29[3] = v19[2];
  v29[4] = v30;
  v29[5] = v19[4];
  v31 = v19[1];
  v29[1] = *v19;
  v29[2] = v31;
  v8[21] = &type metadata for PlaybackQueueLocationProvider;
  v8[22] = &off_2877E8100;
  v32 = swift_allocObject();
  v8[18] = v32;
  v33 = v25[3];
  v32[3] = v25[2];
  v32[4] = v33;
  v32[5] = v25[4];
  v34 = v25[1];
  v32[1] = *v25;
  v32[2] = v34;
  sub_2662A5550(v80, (v8 + 2));
  sub_2662A5550(a2, (v8 + 7));
  sub_2662A5550(v79, (v8 + 13));
  sub_2662A5550(v80, v77);
  sub_2662A5550(a2, v76);
  sub_2662A5550(v79, v74);
  v35 = v78;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v68 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = v75;
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  v43 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v68 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v39;
  v73[3] = v28;
  v73[4] = &off_2877F3740;
  v73[0] = v47;
  v71 = &type metadata for PlaybackStarter;
  v72 = &off_2877EE098;
  v48 = swift_allocObject();
  v70[0] = v48;
  v49 = v45[3];
  v48[3] = v45[2];
  v48[4] = v49;
  v48[5] = v45[4];
  v50 = v45[1];
  v48[1] = *v45;
  v48[2] = v50;
  type metadata accessor for LocalPlaybackHelper();
  v51 = swift_allocObject();
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v73, v28);
  v53 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = (&v68 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = v71;
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v59 = *(v57[-1].Description + 8);
  MEMORY[0x28223BE20](v58);
  v61 = (&v68 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = *v55;
  v51[5] = v28;
  v51[6] = &off_2877F3740;
  v51[2] = v63;
  v51[15] = &type metadata for PlaybackStarter;
  v51[16] = &off_2877EE098;
  v64 = swift_allocObject();
  v51[12] = v64;
  v65 = v61[3];
  v64[3] = v61[2];
  v64[4] = v65;
  v64[5] = v61[4];
  v66 = v61[1];
  v64[1] = *v61;
  v64[2] = v66;
  sub_2662A8618(v76, (v51 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  v8[12] = v51;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  return v8;
}

uint64_t sub_26642D238(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, const char *a4)
{
  v27 = a4;
  v28 = a3;
  v30 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v14, v5);
  sub_2663CB97C(v11, v10, v12, v13);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  sub_2662D2F30(v11, v10, v12, v13);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v10;
    v29 = v12;
    v18 = v17;
    v25 = swift_slowAlloc();
    v32 = v25;
    v33 = v11;
    *v18 = 136315138;
    v34 = v31;
    v35 = v29;
    v36 = v13;
    sub_2663CB97C(v11, v31, v29, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073360, &qword_2664EA5F8);
    v19 = sub_2664E0318();
    v26 = v11;
    v21 = sub_2662A320C(v19, v20, &v32);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_26629C000, v15, v16, v27, v18, 0xCu);
    v22 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x266784AD0](v22, -1, -1);
    v12 = v29;
    v10 = v31;
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v6 + 8))(v9, v5);
    v11 = v26;
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v33 = v11;
  v34 = v10;
  v35 = v12;
  v36 = v13;
  return v30(&v33);
}

void sub_26642D51C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v55 = a7;
  v57 = a2;
  v58 = a3;
  v11 = sub_2664DFE38();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = *a1;
  v22 = *(a1 + 16);
  if (v22 && (*(a1 + 36) & 1) == 0 && (v23 = *(a1 + 24)) != 0)
  {
    v24 = *(a1 + 32);
    v25 = qword_280F914E8;
    v26 = v22;
    v27 = v23;
    if (v25 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v29 = v56;
    (*(v56 + 16))(v20, v28, v11);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "LocalPlaybackHandler#handlePlaybackQueueLocation setting queue location with x scheme", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v29 + 8))(v20, v11);
    v33 = objc_allocWithZone(MEMORY[0x277D27828]);
    v34 = [v33 init];
    sub_266386350(MEMORY[0x277D84F90]);
    v35 = sub_2664E01A8();

    v36 = swift_allocObject();
    v37 = v58;
    *(v36 + 16) = v57;
    *(v36 + 24) = v37;
    *v61 = sub_2664306C8;
    *&v61[8] = v36;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v60 = sub_2663A0C48;
    *(&v60 + 1) = &block_descriptor_41;
    v38 = _Block_copy(&aBlock);

    [v34 insertPlaybackQueueWithResult:v26 atPosition:v24 onDestination:v27 withOptions:v35 completion:v38];
    _Block_release(v38);
  }

  else if (v21 >= 2)
  {
    v50 = __swift_project_boxed_opaque_existential_1((a5 + 144), *(a5 + 168));
    v51 = *(a4 + 16);
    aBlock = *a4;
    v60 = v51;
    *v61 = *(a4 + 32);
    *&v61[15] = *(a4 + 47);
    v52 = v21;
    v53 = sub_26642E274(a4, a5, a6, v52);
    v54 = v58;

    sub_2662F0EBC(a6, &aBlock, v53, v55, v50, v57, v54);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v40 = v56;
    v41 = *(v56 + 16);
    v41(v18, v39, v11);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "UserIdentity nil for setQueueLocation", v44, 2u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v45 = *(v40 + 8);
    v45(v18, v11);
    v41(v15, v39, v11);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06B8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&aBlock = v49;
      *v48 = 134218498;
      *(v48 + 4) = 2;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 21;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F8D70, &aBlock);
      _os_log_impl(&dword_26629C000, v46, v47, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v48, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v45(v15, v11);
    aBlock = xmmword_2664EC9B0;
    *&v60 = 0x80000002664F8D70;
    BYTE8(v60) = 1;
    (v57)(&aBlock);
    sub_2662D2F30(aBlock, *(&aBlock + 1), v60, SBYTE8(v60));
  }
}

uint64_t sub_26642DB6C(id a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v71 = a3;
  v5 = sub_2664DFE38();
  v73 = *(v5 - 8);
  v6 = *(v73 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = sub_2664DFD68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  if (a1)
  {
    v22 = [a1 commandResult];
    a1 = [a1 error];
  }

  else
  {
    v22 = 0;
  }

  sub_2664DFD98();

  v23 = sub_2664DFD48();
  v25 = v24;

  v26 = v23 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v25) & 0xF;
  }

  if (v26)
  {
    v72 = v21;
    v69 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    v28 = v73;
    v64 = *(v73 + 16);
    v65 = v27;
    v64(v11, v27, v5);
    (*(v15 + 16))(v19, v72, v14);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    v31 = os_log_type_enabled(v29, v30);
    v67 = v15;
    v68 = v14;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v63 = v5;
      v33 = v32;
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 136315138;
      v35 = sub_2664DFD48();
      v62 = v11;
      v37 = v36;
      v66 = *(v15 + 8);
      v66(v19, v14);
      v38 = sub_2662A320C(v35, v37, &v74);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_26629C000, v29, v30, "LocalPlaybackHandler#handlePlaybackQueueLocation error onion: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v39 = v34;
      v40 = v73;
      MEMORY[0x266784AD0](v39, -1, -1);
      v41 = v33;
      v5 = v63;
      MEMORY[0x266784AD0](v41, -1, -1);

      v42 = *(v40 + 8);
      v42(v62, v5);
    }

    else
    {

      v66 = *(v15 + 8);
      v66(v19, v14);
      v42 = *(v28 + 8);
      v42(v11, v5);
    }

    v51 = sub_2664DFD48();
    v53 = v52;
    v54 = v70;
    v64(v70, v65, v5);

    v55 = sub_2664DFE18();
    v56 = v5;
    v57 = sub_2664E06B8();
    if (os_log_type_enabled(v55, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v59;
      *v58 = 134218498;
      *(v58 + 4) = 2;
      *(v58 + 12) = 2048;
      *(v58 + 14) = 7;
      *(v58 + 22) = 2080;
      v60 = sub_2662A320C(v51, v53, &v74);

      *(v58 + 24) = v60;
      _os_log_impl(&dword_26629C000, v55, v57, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v58, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      v61 = v70;
    }

    else
    {

      v61 = v54;
    }

    v42(v61, v56);
    v74 = 519;
    v75 = v51;
    v76 = v53;
    v77 = 1;
    v69(&v74);
    sub_2662D2F30(v74, v75, v76, v77);
    return (v66)(v72, v68);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v73 + 16))(v13, v43, v5);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v21;
      v47 = v5;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "LocalPlaybackHandler#handlePlaybackQueueLocation performed queue insertion using x scheme", v48, 2u);
      v49 = v48;
      v5 = v47;
      v21 = v46;
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    (*(v73 + 8))(v13, v5);
    v74 = 0;
    v75 = 0;
    v77 = 0;
    v76 = 0;
    a2(&v74);
    return (*(v15 + 8))(v21, v14);
  }
}

uint64_t sub_26642E274(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v62 = a2;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v60 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v63 = *(*(a1 + 24) + 16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v18 = v8;
  v61 = *(v8 + 16);
  (v61)(v16, v17, v7);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v59 = a4;
    v22 = a3;
    v23 = v17;
    v24 = v7;
    v25 = v12;
    v26 = v21;
    *v21 = 134217984;
    *(v21 + 4) = v63;
    _os_log_impl(&dword_26629C000, v19, v20, "LocalPlaybackHandler#handlePlaybackQueueLocation, routeCount: %ld", v21, 0xCu);
    v27 = v26;
    v12 = v25;
    v7 = v24;
    v17 = v23;
    a3 = v22;
    a4 = v59;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = *(v18 + 8);
  v28(v16, v7);
  v29 = *(v62 + 96);
  v30 = sub_266376F50(a3, a4, 1, 1, v63 != 0);
  if (!v30)
  {
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 collections];

  if (!v32)
  {
    goto LABEL_19;
  }

  sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
  v33 = sub_2664E04A8();

  if (!(v33 >> 62))
  {
    result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  result = sub_2664E0A68();
  if (!result)
  {
LABEL_18:

LABEL_19:
    (v61)(v12, v17, v7);

    v49 = v12;
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v64 = v53;
      *v52 = 136315138;

      v54 = sub_2664C8950();
      v63 = v28;
      v56 = v55;

      v57 = sub_2662A320C(v54, v56, &v64);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_26629C000, v50, v51, "[SetPlaybackQueueLocation] Collection %s does not exist", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266784AD0](v53, -1, -1);
      MEMORY[0x266784AD0](v52, -1, -1);

      v63(v49, v7);
    }

    else
    {

      v28(v49, v7);
    }

    return 0;
  }

LABEL_9:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = v28;
    v36 = MEMORY[0x266783B70](0, v33);
    goto LABEL_12;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = v28;
    v36 = *(v33 + 32);
LABEL_12:
    v37 = v36;

    v38 = [v37 items];
    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v39 = sub_2664E04A8();

    sub_26645FB50(v39);

    v40 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v41 = sub_2664E0488();

    v42 = [v40 initWithEntities:v41 entityType:0];

    if (v42)
    {
      v43 = [objc_allocWithZone(MEMORY[0x277D27868]) initWithContextID:0 query:v42];
      v44 = [v43 createRemotePlaybackQueue];

      return v44;
    }

    v45 = v60;
    v61();
    v46 = sub_2664DFE18();
    v47 = sub_2664E06D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "[SetPlaybackQueueLocation] Unable to build MPMediaQuery", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v35(v45, v7);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26642E8B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v107 = a6;
  v105 = a4;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v97 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v27 = &v92 - v26;
  v28 = *(a1 + 16);
  if (v28)
  {
    v94 = v25;
    v95 = v24;
    v93 = v23;
    v101 = a7;
    v100 = *(a1 + 24);
    v29 = qword_280F914E8;
    v30 = v28;
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v32 = v13[2];
    v104 = v31;
    v106 = v12;
    v103 = v13 + 2;
    v102 = v32;
    v32(v22, v31, v12);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "LocalPlaybackHandler#preLoadQueue with x scheme", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v36 = v13[1];
    v37 = v106;
    v96 = v13 + 1;
    v36(v22, v106);
    v38 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
    v39 = *(a3 + 50);
    *&v40 = *(a3 + 8);
    v99 = v40;
    v41 = *(a3 + 16);
    v42 = *(a5 + 104);
    *&v40 = *(a5 + 96);
    v98 = v40;
    v114[3] = &type metadata for PlaybackAttributes;
    v114[4] = &off_2877E7D78;
    v43 = swift_allocObject();
    v114[0] = v43;
    v44 = *(a3 + 16);
    *(v43 + 16) = *a3;
    *(v43 + 32) = v44;
    *(v43 + 48) = *(a3 + 32);
    *(v43 + 63) = *(a3 + 47);
    sub_26637C7BC(v38, &v109);
    sub_2662A5550(v114, v108);
    v45 = swift_allocObject();
    v46 = v112;
    *(v45 + 48) = v111;
    *(v45 + 64) = v46;
    v47 = v110;
    *(v45 + 16) = v109;
    *(v45 + 32) = v47;
    *&v46 = v99;
    *(&v46 + 1) = v41;
    *&v48 = v98;
    *(&v48 + 1) = v42;
    v49 = v113;
    *(v45 + 96) = v46;
    *(v45 + 112) = v48;
    *(v45 + 80) = v49;
    v50 = v101;
    *(v45 + 128) = v107;
    *(v45 + 136) = v50;
    sub_2662A8618(v108, v45 + 144);
    v51 = v105;
    *(v45 + 184) = v30;
    *(v45 + 192) = v51;
    *(v45 + 200) = 1;
    if (v100)
    {
      LODWORD(v99) = v39;
      v52 = v100;
      v53 = v30;
      sub_2662D2A64(a3, &v109);

      v54 = v51;
      v55 = v52;

      [v55 mutableCopy];
      sub_2664E09E8();
      swift_unknownObjectRelease();
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      if (swift_dynamicCast())
      {
        v56 = v108[0];
        [v108[0] setSingleGroup_];
        v57 = v53;
        v58 = v55;

        v59 = v56;
        sub_2664ADBE8(v58, v54, v58, v57, sub_26637F448, v45, v59, v99);

        return __swift_destroy_boxed_opaque_existential_1Tm(v114);
      }

      v105 = v53;
      v80 = v97;
      v102(v97, v104, v106);
      v81 = sub_2664DFE18();
      v82 = sub_2664E06D8();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_26629C000, v81, v82, "Guaranteed cast to mutable RemoteControlDestination failed", v83, 2u);
        MEMORY[0x266784AD0](v83, -1, -1);
      }

      v84 = v80;
      v85 = v106;
      v36(v84, v106);
      v86 = v93;
      v102(v93, v104, v85);
      v87 = sub_2664DFE18();
      v88 = sub_2664E06B8();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v104 = v36;
        v91 = v90;
        *&v109 = v90;
        *v89 = 134218498;
        *(v89 + 4) = 15;
        *(v89 + 12) = 2048;
        *(v89 + 14) = 22;
        *(v89 + 22) = 2080;
        *(v89 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v109);
        _os_log_impl(&dword_26629C000, v87, v88, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v89, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        MEMORY[0x266784AD0](v91, -1, -1);
        MEMORY[0x266784AD0](v89, -1, -1);

        v104(v86, v85);
      }

      else
      {

        v36(v86, v85);
      }

      v109 = xmmword_2664E8D90;
      *&v110 = 0x80000002664F5AE0;
      BYTE8(v110) = 1;
      v107(&v109);

      v79 = &v116;
    }

    else
    {
      v66 = v36;
      v67 = v94;
      v102(v94, v104, v37);
      v100 = v30;
      sub_2662D2A64(a3, &v109);

      v68 = v51;

      v69 = sub_2664DFE18();
      v70 = sub_2664E06D8();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_26629C000, v69, v70, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v71, 2u);
        MEMORY[0x266784AD0](v71, -1, -1);
      }

      v72 = v106;
      v73 = v66;
      v66(v67, v106);
      v74 = v95;
      v102(v95, v104, v72);
      v75 = sub_2664DFE18();
      v76 = sub_2664E06B8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v109 = v78;
        *v77 = 134218498;
        *(v77 + 4) = 15;
        *(v77 + 12) = 2048;
        *(v77 + 14) = 13;
        *(v77 + 22) = 2080;
        *(v77 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v109);
        _os_log_impl(&dword_26629C000, v75, v76, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v77, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x266784AD0](v78, -1, -1);
        MEMORY[0x266784AD0](v77, -1, -1);
      }

      v73(v74, v72);
      v109 = xmmword_2664E8DA0;
      *&v110 = 0xE900000000000074;
      BYTE8(v110) = 1;
      v107(&v109);

      v79 = &v115;
    }

    sub_2662D2F30(v109, *(&v109 + 1), v110, SBYTE8(v110));
    return __swift_destroy_boxed_opaque_existential_1Tm(v114);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v60 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (v13[2])(v27, v60, v12);
  v61 = sub_2664DFE18();
  v62 = sub_2664E06B8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v109 = v64;
    *v63 = 134218498;
    *(v63 + 4) = 2;
    *(v63 + 12) = 2048;
    *(v63 + 14) = 38;
    *(v63 + 22) = 2080;
    *(v63 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F73E0, &v109);
    _os_log_impl(&dword_26629C000, v61, v62, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v63, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x266784AD0](v64, -1, -1);
    MEMORY[0x266784AD0](v63, -1, -1);
  }

  (v13[1])(v27, v12);
  v109 = xmmword_2664EC9C0;
  *&v110 = 0x80000002664F73E0;
  BYTE8(v110) = 1;
  v107(&v109);
  return sub_2662D2F30(v109, *(&v109 + 1), v110, SBYTE8(v110));
}

void sub_26642F4F0(void **a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6, void *a7)
{
  v102 = a7;
  v105 = a6;
  v104 = a5;
  v110 = a4;
  v107 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v103 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = v97 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v101 = v97 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v100 = v97 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v99 = v97 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v97 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v97 - v25;
  v27 = 0;
  v28 = *a1;
  if (v28 != 1)
  {
    v29 = v28;
    v27 = v28;
  }

  v109 = v27;
  v30 = *(*(a2 + 24) + 16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v32 = v10[2];
  v106 = v31;
  v108 = v32;
  v32(v26, v31, v9);
  sub_2662D2A64(a2, v112);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v10;
    v36 = swift_slowAlloc();
    *v36 = 134218240;
    *(v36 + 4) = v30;
    *(v36 + 12) = 1024;
    *(v36 + 14) = *(a2 + 2) & 1;
    sub_2662D2B88(a2);
    _os_log_impl(&dword_26629C000, v33, v34, "LocalPlaybackHandler#preLoadQueue, routeCount: %ld, targetsLocalDevice: %{BOOL}d", v36, 0x12u);
    v37 = v36;
    v10 = v35;
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  else
  {
    sub_2662D2B88(a2);
  }

  v40 = v10[1];
  v38 = v10 + 1;
  v39 = v40;
  (v40)(v26, v9);
  v41 = v107[12];
  v42 = *(a2 + 2);
  v43 = v30 != 0;
  v44 = v109;
  v45 = sub_266376F50(v110, v109, 1, *(a2 + 2), v43);
  if (!v45)
  {
    v52 = v106;
    v108(v24, v106, v9);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "LocalPlaybackHandler#preLoadQueue Query returned from queryOnlyPlayableItems is nil", v55, 2u);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    (v39)(v24, v9);
    v56 = v103;
    v108(v103, v52, v9);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06B8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v56;
      v61 = swift_slowAlloc();
      *v112 = v61;
      *v59 = 134218498;
      *(v59 + 4) = 2;
      *(v59 + 12) = 2048;
      *(v59 + 14) = 32;
      *(v59 + 22) = 2080;
      *(v59 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F8D50, v112);
      _os_log_impl(&dword_26629C000, v57, v58, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v59, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v59, -1, -1);

      (v39)(v60, v9);
    }

    else
    {

      (v39)(v56, v9);
    }

    *v112 = xmmword_2664EC9E0;
    *&v112[16] = 0x80000002664F8D50;
    v112[24] = 1;
    v104(v112);

    goto LABEL_40;
  }

  v103 = v45;
  v46 = [v45 items];
  if (v46)
  {
    v47 = v46;
    v48 = v38;
    sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
    v49 = sub_2664E04A8();

    v50 = v49 >> 62 ? sub_2664E0A68() : *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v38 = v48;
    if (!v50)
    {
      v85 = v99;
      v86 = v106;
      v108(v99, v106, v9);
      v87 = sub_2664DFE18();
      v88 = sub_2664E06D8();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_26629C000, v87, v88, "LocalPlaybackHandler#preLoadQueue MPMediaQuery contains 0 items", v89, 2u);
        MEMORY[0x266784AD0](v89, -1, -1);
      }

      (v39)(v85, v9);
      v90 = v100;
      v108(v100, v86, v9);
      v91 = sub_2664DFE18();
      v92 = sub_2664E06B8();
      v93 = os_log_type_enabled(v91, v92);
      v94 = v109;
      if (v93)
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v112 = v96;
        *v95 = 134218498;
        *(v95 + 4) = 2;
        *(v95 + 12) = 2048;
        *(v95 + 14) = 15;
        *(v95 + 22) = 2080;
        *(v95 + 24) = sub_2662A320C(0x736D6574496F4ELL, 0xE700000000000000, v112);
        _os_log_impl(&dword_26629C000, v91, v92, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v95, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x266784AD0](v96, -1, -1);
        MEMORY[0x266784AD0](v95, -1, -1);
      }

      (v39)(v90, v9);
      *v112 = xmmword_2664EC9D0;
      *&v112[16] = 0xE700000000000000;
      v112[24] = 1;
      v104(v112);

LABEL_40:
      sub_2662D2F30(*v112, *&v112[8], *&v112[16], v112[24]);
      return;
    }
  }

  v100 = v39;
  v97[1] = v38;
  v112[0] = *(v110 + 48);
  if (PlaybackItem.Scheme.rawValue.getter() == 0x6C70706D61732D78 && v51 == 0xEE007473696C7961)
  {
  }

  else
  {
    v62 = sub_2664E0D88();

    if ((v62 & 1) == 0)
    {
      v63 = (*(*v107 + 168))(v110, v109, v42);
      if (v63)
      {
        v64 = v63;
        v65 = [v63 items];
        v66 = v109;
        v67 = v101;
        if (v65 && ((v68 = v65, sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0), v69 = sub_2664E04A8(), v68, v69 >> 62) ? (v70 = sub_2664E0A68()) : (v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v70 == 1))
        {
          v108(v98, v106, v9);
          v71 = sub_2664DFE18();
          v72 = sub_2664E06E8();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_26629C000, v71, v72, "LocalPlaybackHandler#preLoadQueue Only 1 album for query, playing that and not shuffled", v73, 2u);
            MEMORY[0x266784AD0](v73, -1, -1);
          }

          (v100)(v98, v9);
          v112[0] = 0;
          *&v112[1] = *(a2 + 1);
          *&v112[17] = *(a2 + 17);
          *&v112[33] = *(a2 + 33);
          *&v112[49] = *(a2 + 49);
          sub_2662D2A64(a2, v111);
          sub_2662D2B88(v112);
        }

        else
        {

          v64 = v103;
        }

        goto LABEL_30;
      }
    }
  }

  v64 = v103;
  v66 = v109;
  v67 = v101;
LABEL_30:
  v108(v67, v106, v9);
  v74 = sub_2664DFE18();
  v75 = sub_2664E06E8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_26629C000, v74, v75, "LocalPlaybackHandler#preLoadQueue playing local mediaItems", v76, 2u);
    MEMORY[0x266784AD0](v76, -1, -1);
  }

  (v100)(v67, v9);
  v77 = *(a2 + 16);
  *v112 = *a2;
  *&v112[16] = v77;
  *&v112[32] = *(a2 + 32);
  *&v112[47] = *(a2 + 47);
  v78 = swift_allocObject();
  *(v78 + 16) = v41;
  *(v78 + 24) = v64;
  v79 = *(a2 + 16);
  *(v78 + 32) = *a2;
  *(v78 + 48) = v79;
  *(v78 + 64) = *(a2 + 32);
  *(v78 + 79) = *(a2 + 47);
  v80 = v110;
  v81 = v102;
  *(v78 + 88) = v110;
  *(v78 + 96) = v81;
  v82 = v105;
  *(v78 + 104) = v104;
  *(v78 + 112) = v82;
  sub_2662D2A64(a2, v111);

  v83 = v64;

  v84 = v81;

  sub_2664C604C((v41 + 56), v80, v112, 2, sub_2664306A0, v78);
}

uint64_t sub_2664301A0(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v51 = a2;
  v52 = a5;
  v49 = a3;
  v50 = a4;
  v48 = sub_2664DFE08();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  v46 = a1[3];
  v44 = v17;
  v45 = a1[5];
  v18 = __swift_project_boxed_opaque_existential_1((v5 + 104), *(v5 + 128));
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v19, v12);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v18;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "PlaybackStarter#play Sending early completion to mark start playback request", v23, 2u);
    v24 = v23;
    v18 = v22;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v25 = qword_280F91D48;
  v26 = v11;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  v43 = "playbackQueueLocation";
  v27 = v47;
  v28 = v11;
  v29 = v48;
  (*(v7 + 16))(v47, v28, v48);
  sub_26637C7BC(v18, v53);
  v30 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 87) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v30, v27, v29);
  v35 = (v34 + v31);
  v36 = v53[3];
  v35[2] = v53[2];
  v35[3] = v36;
  v35[4] = v53[4];
  v37 = v53[1];
  *v35 = v53[0];
  v35[1] = v37;
  v38 = v45;
  *(v34 + v32) = v46;
  v39 = (v34 + v33);
  *v39 = v44;
  v39[1] = v38;
  v40 = v49;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;

  v41 = v40;

  sub_2663F4978(0xD00000000000001FLL, v43 | 0x8000000000000000, v41, v50, v52, v51, sub_2663CB454, v34);

  return (*(v7 + 8))(v26, v29);
}

uint64_t sub_2664306F0(uint64_t a1, double *a2, void *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;
  v70 = a1 + 64;

  while (v9)
  {
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *a2;
    if (*a2 == 0.0)
    {
      v20 = *(a4 + 16);

      v21 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v4;
      v73 = *v4;
      *v4 = 0x8000000000000000;
      v24 = v17;
      v25 = v18;
      v26 = v18;
      v27 = v24;
      v28 = sub_2662A3E98(v26, v24);
      v30 = v23[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_36;
      }

      v34 = v29;
      if (v23[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = v28;
          sub_266453E30();
          v28 = v65;
        }

        v35 = v25;
        v37 = v27;
      }

      else
      {
        sub_2664508BC(v33, isUniquelyReferenced_nonNull_native);
        v35 = v25;
        v36 = v25;
        v37 = v27;
        v28 = sub_2662A3E98(v36, v27);
        if ((v34 & 1) != (v38 & 1))
        {
          goto LABEL_40;
        }
      }

      v57 = 1.0 / v20;
      v58 = v73;
      if (v34)
      {
        *(v73[7] + 8 * v28) = v57;
        v5 = v68;
        goto LABEL_5;
      }

      v73[(v28 >> 6) + 8] |= 1 << v28;
      v59 = (v73[6] + 16 * v28);
      *v59 = v35;
      v59[1] = v37;
      *(v73[7] + 8 * v28) = v57;
      v60 = v73[2];
      v32 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      v5 = v68;
      if (v32)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = *(*(v5 + 56) + 8 * v15);

      v40 = *v4;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *v4;
      v74 = *v4;
      *v4 = 0x8000000000000000;
      v43 = v17;
      v44 = v18;
      v45 = v18;
      v46 = v43;
      v47 = sub_2662A3E98(v45, v43);
      v49 = v42[2];
      v50 = (v48 & 1) == 0;
      v32 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v32)
      {
        goto LABEL_37;
      }

      v52 = v48;
      if (v42[3] >= v51)
      {
        if ((v41 & 1) == 0)
        {
          v66 = v47;
          sub_266453E30();
          v47 = v66;
        }

        v53 = v44;
        v55 = v46;
      }

      else
      {
        sub_2664508BC(v51, v41);
        v53 = v44;
        v54 = v44;
        v55 = v46;
        v47 = sub_2662A3E98(v54, v46);
        if ((v52 & 1) != (v56 & 1))
        {
          goto LABEL_40;
        }
      }

      v58 = v74;
      v62 = v39 / v19;
      if (v52)
      {
        *(v74[7] + 8 * v47) = v62;
        goto LABEL_5;
      }

      v74[(v47 >> 6) + 8] |= 1 << v47;
      v63 = (v74[6] + 16 * v47);
      *v63 = v53;
      v63[1] = v55;
      *(v74[7] + 8 * v47) = v62;
      v64 = v74[2];
      v32 = __OFADD__(v64, 1);
      v61 = v64 + 1;
      if (v32)
      {
        goto LABEL_39;
      }
    }

    v58[2] = v61;

LABEL_5:
    v4 = a3;
    v12 = *a3;
    *a3 = v58;

    v6 = v70;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_266430A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v5 = a1;
  v38 = MEMORY[0x277D84F90];
  sub_2662FCFB4(0, v2, 0);
  v3 = v38;
  v6 = -1 << *(v5 + 32);
  v37 = v5 + 56;
  result = sub_2664E0A18();
  v8 = result;
  v9 = 0;
  v32 = v5 + 64;
  v33 = v2;
  v34 = a2;
  v35 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v37 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_27;
    }

    v36 = *(v5 + 36);
    v13 = (*(v5 + 48) + 16 * v8);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(a2 + 16);

    if (v16)
    {

      v17 = sub_2662A3E98(v14, v15);
      v18 = 0;
      if (v19)
      {
        v18 = *(*(a2 + 56) + 8 * v17);
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = *(v3 + 16);
    v20 = *(v3 + 24);
    v22 = v36;
    if (v21 >= v20 >> 1)
    {
      result = sub_2662FCFB4((v20 > 1), v21 + 1, 1);
      v22 = v36;
    }

    *(v3 + 16) = v21 + 1;
    v23 = (v3 + 24 * v21);
    v23[4] = v14;
    v23[5] = v15;
    v23[6] = v18;
    v5 = v35;
    v10 = 1 << *(v35 + 32);
    if (v8 >= v10)
    {
      goto LABEL_28;
    }

    v24 = *(v37 + 8 * v12);
    if ((v24 & (1 << v8)) == 0)
    {
      goto LABEL_29;
    }

    if (v22 != *(v35 + 36))
    {
      goto LABEL_30;
    }

    v25 = v24 & (-2 << (v8 & 0x3F));
    if (v25)
    {
      v10 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v11 = v33;
    }

    else
    {
      v26 = v3;
      v27 = v12 << 6;
      v28 = v12 + 1;
      v11 = v33;
      v29 = (v32 + 8 * v12);
      while (v28 < (v10 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_26634AE1C(v8, v22, 0);
          v10 = __clz(__rbit64(v30)) + v27;
          goto LABEL_24;
        }
      }

      result = sub_26634AE1C(v8, v22, 0);
LABEL_24:
      v3 = v26;
    }

    ++v9;
    v8 = v10;
    a2 = v34;
    if (v9 == v11)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_266430D18(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v59 = a3;
  if (a2)
  {
    v15 = &v55 - v13;

    v16 = sub_266430A88(a2, a1);

    if (*(v16 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
      v17 = sub_2664E0C98();
    }

    else
    {
      v17 = MEMORY[0x277D84F98];
    }

    v64[0] = v17;

    sub_2663D7CF0(v19, 1, v64);

    v18 = v64[0];
    v14 = v15;
  }

  else
  {

    v18 = a1;
  }

  if (qword_280F914E8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v57 = v8[2];
  v58 = v8 + 2;
  v57(v14, v20, v7);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();

  v23 = os_log_type_enabled(v21, v22);
  v60 = v14;
  if (v23)
  {
    v14 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v8;
    v61[0] = v55;
    *v14 = 136315138;
    v24 = sub_2664E01D8();
    v26 = v20;
    v27 = v6;
    v28 = v12;
    v29 = v7;
    v30 = sub_2662A320C(v24, v25, v61);

    *(v14 + 4) = v30;
    v7 = v29;
    v12 = v28;
    v6 = v27;
    v20 = v26;
    _os_log_impl(&dword_26629C000, v21, v22, "Normalize#values %s...", v14, 0xCu);
    v31 = v55;
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v32 = v31;
    v8 = v56;
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  v33 = v8[1];
  v33(v60, v7);
  v34 = 0;
  v35 = 1 << *(v18 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v18 + 64);
  v38 = (v35 + 63) >> 6;
  v39 = 0.0;
  if (v37)
  {
    while (1)
    {
      v40 = v34;
LABEL_19:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v39 = v39 + *(*(v18 + 56) + ((v40 << 9) | (8 * v41)));
      if (!v37)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v40 >= v38)
    {
      break;
    }

    v37 = *(v18 + 64 + 8 * v40);
    ++v34;
    if (v37)
    {
      v34 = v40;
      goto LABEL_19;
    }
  }

  v42 = fabs(v39);
  if (v59)
  {
    v39 = v42;
  }

  v63 = v39;
  v62 = MEMORY[0x277D84F98];

  sub_2664306F0(v43, &v63, &v62, v18);
  swift_bridgeObjectRelease_n();
  v57(v12, v20, v7);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06C8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61[0] = v47;
    *v46 = 136315138;
    swift_beginAccess();
    v60 = v7;

    v48 = sub_2664E01D8();
    v50 = v49;

    v51 = sub_2662A320C(v48, v50, v61);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_26629C000, v44, v45, "Normalize#values result: %s...", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x266784AD0](v47, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);

    v52 = v12;
    v53 = v60;
  }

  else
  {

    v52 = v12;
    v53 = v7;
  }

  v33(v52, v53);
  swift_beginAccess();
  return v62;
}

SiriAudioSupport::SearchResultScopeEntity_optional __swiftcall SearchResultScopeEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchResultScopeEntity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C75736552706F74;
  v3 = 0x736E6F6974617473;
  if (v1 != 6)
  {
    v3 = 0x6169726F74696465;
  }

  v4 = 0x6970456F69646172;
  if (v1 != 4)
  {
    v4 = 0x73676E6F73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x73747369747261;
  if (v1 != 2)
  {
    v5 = 0x7473696C79616C70;
  }

  if (*v0)
  {
    v2 = 0x736D75626C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26643146C()
{
  result = qword_280073820;
  if (!qword_280073820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073820);
  }

  return result;
}

void sub_2664314E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007374;
  v4 = 0x6C75736552706F74;
  v5 = 0xE800000000000000;
  v6 = 0x736E6F6974617473;
  if (v2 != 6)
  {
    v6 = 0x6169726F74696465;
    v5 = 0xEE00736D6574496CLL;
  }

  v7 = 0xED00007365646F73;
  v8 = 0x6970456F69646172;
  if (v2 != 4)
  {
    v8 = 0x73676E6F73;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (v2 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = 0x736D75626C61;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_266431604()
{
  result = qword_280073828;
  if (!qword_280073828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073828);
  }

  return result;
}

unint64_t sub_26643165C()
{
  result = qword_280073830;
  if (!qword_280073830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073830);
  }

  return result;
}

unint64_t sub_2664316B4()
{
  result = qword_280073838;
  if (!qword_280073838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073838);
  }

  return result;
}

unint64_t sub_26643170C()
{
  result = qword_280073840;
  if (!qword_280073840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073840);
  }

  return result;
}

unint64_t sub_266431780()
{
  result = qword_280073848;
  if (!qword_280073848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280073850, &qword_2664ECB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073848);
  }

  return result;
}

unint64_t sub_2664317F4()
{
  result = qword_280073858;
  if (!qword_280073858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073858);
  }

  return result;
}

unint64_t sub_26643184C()
{
  result = qword_280073860;
  if (!qword_280073860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073860);
  }

  return result;
}

uint64_t sub_2664318A0(uint64_t a1)
{
  v2 = sub_266431A7C();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2664318E0()
{
  result = qword_280073868;
  if (!qword_280073868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073868);
  }

  return result;
}

uint64_t sub_266431934(uint64_t a1)
{
  v2 = sub_266431A7C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_266431970(uint64_t a1, uint64_t a2)
{
  v4 = sub_26643165C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2664319BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266431A7C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_266431A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_26643165C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_266431A7C()
{
  result = qword_280073870;
  if (!qword_280073870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073870);
  }

  return result;
}

uint64_t sub_266431B04(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v22[3] = type metadata accessor for MediaPlaybackProvider();
  v22[4] = &off_2877F3740;
  v22[0] = v11;
  sub_2662A5550(v22, v20);
  v12 = v21;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2664DD13C(a1, *v16, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v18;
}

uint64_t sub_266431D04(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073878, qword_2664ECD40);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v40 - v8;
  v46 = sub_2664DF248();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v40 - v13;
  v14 = sub_2664DF198();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DF288();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2664DF278();
  v22 = [v1 title];
  if (v22)
  {
    v23 = v22;
    sub_2664E02C8();

    sub_2664DF268();
  }

  v24 = [v2 identifier];
  if (v24)
  {
    v25 = v24;
    sub_2664E02C8();
  }

  sub_2664DF168();

  sub_2664DF158();
  v26 = [v2 identifier];
  if (v26)
  {
    v27 = v26;
    v28 = sub_2664E02C8();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = v46;
  static PlaybackItem.Identifier.parse(uri:)(v28, v30, v47);

  if (v47[2])
  {
    v32 = v47[0];
    v33 = PlaybackItem.Identifier.isLibraryIdentifier()();

    if (v33)
    {
      LOBYTE(v47[0]) = v32;
      v34 = v41;
      sub_26645A66C(v41);
      if ((*(v9 + 48))(v34, 1, v31) != 1)
      {
        v35 = v40;
        (*(v9 + 32))(v40, v34, v31);
        goto LABEL_16;
      }

      sub_2662A9238(v34, &qword_280073878, qword_2664ECD40);
    }
  }

  sub_2663ECBF0([v2 type], v7);
  if ((*(v9 + 48))(v7, 1, v31) != 1)
  {
    v35 = v42;
    (*(v9 + 32))(v42, v7, v31);
LABEL_16:
    v36 = sub_2664DF2B8();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    sub_2664DF2A8();
    sub_2664DF298();

    sub_2664DF258();

    (*(v9 + 8))(v35, v31);
    (*(v44 + 8))(v17, v45);
    return v21;
  }

  (*(v44 + 8))(v17, v45);
  sub_2662A9238(v7, &qword_280073878, qword_2664ECD40);
  return v21;
}

uint64_t INMediaItem.toRREntity(groupIdentifier:targetApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v64 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C30, &qword_2664E62F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v52 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C38, qword_2664E62F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v52 - v21;
  if (a2 && (v23 = sub_2664DF7D8(), v24))
  {
    v25 = v24;
  }

  else
  {

    v25 = 0x80000002664F2F20;
    v23 = 0xD000000000000018;
  }

  v63 = v23;
  v26 = sub_266431D04(v23);
  v27 = MEMORY[0x266782230]();
  if (v27)
  {
    v57 = v27;
    v59 = v25;
    v60 = a1;
    v61 = v10;
    v62 = v4;
    v28 = sub_2664DF1C8();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    v58 = v26;
    v29 = MEMORY[0x2667821D0](v26, v22);
    sub_2662A9238(v22, &qword_280072C38, qword_2664E62F8);
    v53 = sub_2664DF1A8();
    v31 = v30;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v54 = *(v12 + 16);
    v55 = v32;
    v54(v18, v32, v11);

    v33 = sub_2664DFE18();
    v34 = v11;
    v35 = sub_2664E06C8();

    v36 = os_log_type_enabled(v33, v35);
    v56 = v12;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v52[0] = v29;
      v38 = v37;
      v39 = swift_slowAlloc();
      v52[1] = v16;
      v40 = v12;
      v41 = v39;
      v65 = v39;
      *v38 = 136315138;
      v42 = sub_2662A320C(v53, v31, &v65);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_26629C000, v33, v35, "INMediaItem#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);

      v43 = v40;
    }

    else
    {

      v43 = v12;
    }

    (*(v43 + 8))(v18, v34);
    v44 = v62;
    v45 = [v62 identifier];
    v46 = v60;
    if (v45)
    {
      v47 = v45;
      sub_2664E02C8();
    }

    sub_26633D720(v46, v61);
    sub_2663D9B50();
    v48 = v44;
    sub_2664DFED8();

    v49 = 0;
  }

  else
  {

    v49 = 1;
  }

  v50 = sub_2664DFF28();
  return (*(*(v50 - 8) + 56))(v64, v49, 1, v50);
}

uint64_t sub_2664328B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266432900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266432960(void (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DEC48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DF028();
  if (*(v16 + 16))
  {
    sub_2662A5550(v16 + 32, v31);

    sub_2662A8618(v31, v32);
    v17 = v32[4];
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_2664334FC(v3, v31);
    sub_2662A5550(v32, v30);
    v18 = swift_allocObject();
    v19 = v31[1];
    *(v18 + 16) = v31[0];
    *(v18 + 32) = v19;
    v20 = v31[3];
    *(v18 + 48) = v31[2];
    *(v18 + 64) = v20;
    sub_2662A8618(v30, v18 + 80);
    *(v18 + 120) = a1;
    *(v18 + 128) = a2;
    v21 = *(v17 + 8);

    sub_2664DF048();

    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v29 = a1;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v15, v23, v11);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v28[1] = a2;
      v27 = v26;
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "ForegroundAppRecencyIndependentSignal: Got error to read signal", v26, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    *v10 = *v3;
    (*(v7 + 104))(v10, *MEMORY[0x277D60170], v6);
    v29(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_266432CE0(uint64_t a1, uint64_t *a2, void *a3, void (*a4)(uint64_t *), void (*a5)(void, void))
{
  v64 = a4;
  v63 = sub_2664DFE38();
  v65 = *(v63 - 8);
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v63);
  v61 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v62 = &v54[-v11];
  v12 = sub_2664DEC48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v54[-v18];
  v20 = *a2;
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v22 = v12;
  sub_2664DECB8();
  if ((*(v13 + 88))(v19, v12) == *MEMORY[0x277D60188])
  {
    (*(v13 + 96))(v19, v12);
    v23 = *v19;
    if (qword_280F914E8 != -1)
    {
LABEL_23:
      swift_once();
    }

    v60 = a5;
    v24 = v63;
    v25 = __swift_project_value_buffer(v63, qword_280F914F0);
    swift_beginAccess();
    v26 = v65;
    v27 = *(v65 + 16);
    v28 = v62;
    v58 = v65 + 16;
    v59 = v25;
    v57 = v27;
    v27(v62, v25, v24);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v56 = v22;
      v32 = v31;
      v33 = swift_slowAlloc();
      v66 = v33;
      *v32 = 136315138;

      v34 = sub_2664E0208();
      v55 = v30;
      v36 = v35;

      v37 = sub_2662A320C(v34, v36, &v66);

      *(v32 + 4) = v37;
      v24 = v63;
      _os_log_impl(&dword_26629C000, v29, v55, "ForegroundAppRecencyIndependentSignal: got the values %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      v38 = v32;
      v22 = v56;
      MEMORY[0x266784AD0](v38, -1, -1);

      v39 = v65;
    }

    else
    {

      v39 = v26;
    }

    a5 = *(v39 + 8);
    a5(v28, v24);
    v42 = 0;
    v43 = 1 << *(v23 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v23 + 64);
    v46 = (v43 + 63) >> 6;
    if (v45)
    {
      while (1)
      {
        v47 = v42;
LABEL_15:
        v48 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v49 = *(*(v23 + 56) + ((v47 << 9) | (8 * v48)));
        if (v49 < v20)
        {
          v20 = v49;
        }

        if (!v45)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v47 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v47 >= v46)
      {
        break;
      }

      v45 = *(v23 + 64 + 8 * v47);
      ++v42;
      if (v45)
      {
        v42 = v47;
        goto LABEL_15;
      }
    }

    v50 = v61;
    v57(v61, v59, v24);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06C8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = v20;
      _os_log_impl(&dword_26629C000, v51, v52, "ForegroundAppRecencySignal: Minimum recency value %ld", v53, 0xCu);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    a5(v50, v24);
    *v17 = v20;
    (*(v13 + 104))(v17, *MEMORY[0x277D60170], v22);
    v64(v17);
    return (*(v13 + 8))(v17, v22);
  }

  else
  {
    *v17 = -1;
    (*(v13 + 104))(v17, *MEMORY[0x277D60170], v12);
    v64(v17);
    v40 = *(v13 + 8);
    v40(v17, v12);
    return v40(v19, v12);
  }
}

uint64_t sub_2664332E0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_266433310()
{
  v0 = qword_280073880;

  return v0;
}

void sub_266433348()
{
  sub_2664334A8();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_266433388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664334A8();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_2664333EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664334A8();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_266433454()
{
  result = qword_280F8F6D0;
  if (!qword_280F8F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6D0);
  }

  return result;
}

unint64_t sub_2664334A8()
{
  result = qword_280F8F6E0;
  if (!qword_280F8F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6E0);
  }

  return result;
}

Swift::Bool __swiftcall MediaIntentCommons.isGrounding()()
{
  v86 = v0;
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v81 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v87 = &v81 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v81 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v81 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v85 = &v81 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - v20;
  v22 = sub_2664DFAE8();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v81 - v30;
  v32 = static SiriEnvironmentWrapper.retrieve()();
  if (!v32)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v6, v41, v1);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "MediaIntentCommons#isGrounding is missing siriEnvironment", v44, 2u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  v83 = v14;
  v84 = v17;
  v90 = v32;
  sub_2664DF4D8();
  sub_2664DFAB8();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  v92 = *(v2 + 16);
  v93 = v33;
  v91 = v1;
  v92(v21, v33, v1);
  sub_266435F1C(v31, v29);
  sub_266435F1C(v31, v26);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v82 = v31;
    v37 = v36;
    *v36 = 67240448;
    v38 = sub_2664DFAD8() & 1;
    sub_26633AB20(v29);
    v37[1] = v38;
    *(v37 + 4) = 1026;
    v39 = sub_2664DFAC8() & 1;
    sub_26633AB20(v26);
    *(v37 + 10) = v39;
    _os_log_impl(&dword_26629C000, v34, v35, "MediaIntentCommons#isGrounding multiUserState.isEnabled:%{BOOL,public}d, requires grounding: %{BOOL,public}d", v37, 0xEu);
    v40 = v37;
    v31 = v82;
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  else
  {
    sub_26633AB20(v26);
    sub_26633AB20(v29);
  }

  v45 = *(v2 + 8);
  v46 = v91;
  v45(v21, v91);
  if ((sub_2664DFAD8() & 1) == 0 || (sub_2664DFAC8() & 1) == 0)
  {
    v92(v9, v93, v46);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06E8();
    if (!os_log_type_enabled(v66, v67))
    {

LABEL_26:

      v72 = v9;
LABEL_27:
      v45(v72, v46);
      v71 = v31;
      goto LABEL_28;
    }

    v68 = v31;
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_26629C000, v66, v67, "MediaIntentCommons#isGrounding not required as not enabled through multiUserState", v69, 2u);
    MEMORY[0x266784AD0](v69, -1, -1);

    v70 = v9;
LABEL_24:
    v45(v70, v46);
    v71 = v68;
LABEL_28:
    sub_26633AB20(v71);
    return 0;
  }

  v47 = v85;
  v92(v85, v93, v46);
  v48 = sub_2664DFE18();
  v49 = sub_2664E06E8();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v31;
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26629C000, v48, v49, "MediaIntentCommons#isGrounding supported through multiUserState", v51, 2u);
    v52 = v51;
    v31 = v50;
    MEMORY[0x266784AD0](v52, -1, -1);
  }

  v45(v47, v46);
  v53 = v86;
  v54 = (*(v86 + 32))(v88, v86);
  v55 = v87;
  if (!v54 || (v56 = v54, v57 = [v54 speakerIDInfo], v56, !v57))
  {
    v92(v55, v93, v46);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06D8();
    if (!os_log_type_enabled(v74, v75))
    {

      v72 = v55;
      goto LABEL_27;
    }

    v68 = v31;
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_26629C000, v74, v75, "MediaIntentCommons#isGrounding speakerIDInfo missing, grounding not required", v76, 2u);
    MEMORY[0x266784AD0](v76, -1, -1);

    v70 = v55;
    goto LABEL_24;
  }

  v58 = (*(v53 + 88))(v88, v53);
  if (qword_2877E53D8 == v58 || qword_2877E53E0 == v58)
  {
    v9 = v83;
    v92(v83, v93, v46);
    v77 = sub_2664DFE18();
    v78 = sub_2664E06E8();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v31;
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_26629C000, v77, v78, "MediaIntentCommons#isGrounding firstMediaItemType is song or album, grounding not required", v80, 2u);
      MEMORY[0x266784AD0](v80, -1, -1);

      v45(v9, v46);
      v71 = v79;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v89 = v2 + 8;
  v59 = [v57 speakerIDConfidence];
  v92(v84, v93, v46);
  v60 = v57;
  v61 = sub_2664DFE18();
  v62 = sub_2664E06E8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = v31;
    v64 = swift_slowAlloc();
    *v64 = 67240448;
    *(v64 + 4) = v59 == 3;
    *(v64 + 8) = 2050;
    *(v64 + 10) = [v60 speakerIDConfidence];

    _os_log_impl(&dword_26629C000, v61, v62, "MediaIntentCommons#isGrounding grounding: %{BOOL,public}d with confidence: %{public}ld", v64, 0x12u);
    v65 = v64;
    v31 = v63;
    MEMORY[0x266784AD0](v65, -1, -1);
  }

  else
  {
  }

  v45(v84, v46);
  sub_26633AB20(v31);
  return v59 == 3;
}

Swift::Bool __swiftcall MediaIntentCommons.isUserRecognized()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v86 = *(v2 - 8);
  v3 = *(v86 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v77 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v77 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v77 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v81 = &v77 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - v18;
  v20 = sub_2664DFAE8();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  v30 = static SiriEnvironmentWrapper.retrieve()();
  if (!v30)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = v2;
    v40 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v41 = v86;
    (*(v86 + 16))(v6, v40, v39);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "MediaIntentCommons#isUserRecognized is missing siriEnvironment", v44, 2u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v41 + 8))(v6, v39);
    goto LABEL_26;
  }

  v79 = v12;
  v80 = v1;
  v78 = v15;
  v84 = v30;
  sub_2664DF4D8();
  sub_2664DFAB8();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v83 = *(v86 + 16);
  v83(v19, v31, v2);
  sub_266435F1C(v29, v27);
  v85 = v29;
  sub_266435F1C(v29, v24);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06E8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v77 = v2;
    v35 = v34;
    *v34 = 67240448;
    v36 = sub_2664DFAD8() & 1;
    sub_26633AB20(v27);
    v35[1] = v36;
    *(v35 + 4) = 1026;
    v37 = sub_2664DFAC8() & 1;
    sub_26633AB20(v24);
    *(v35 + 10) = v37;
    _os_log_impl(&dword_26629C000, v32, v33, "MediaIntentCommons#isUserRecognized multiUserState.isEnabled:%{BOOL,public}d, requires grounding: %{BOOL,public}d", v35, 0xEu);
    v38 = v35;
    v2 = v77;
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  else
  {
    sub_26633AB20(v24);
    sub_26633AB20(v27);
  }

  v45 = v86 + 8;
  v46 = *(v86 + 8);
  v46(v19, v2);
  if ((sub_2664DFAD8() & 1) == 0 || (sub_2664DFAC8() & 1) == 0)
  {
    v83(v9, v31, v2);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06E8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v2;
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_26629C000, v66, v67, "MediaIntentCommons#isUserRecognized not required as not enabled through multiUserState", v69, 2u);
      MEMORY[0x266784AD0](v69, -1, -1);

      v70 = v9;
LABEL_22:
      v71 = v68;
LABEL_25:
      v46(v70, v71);
      sub_26633AB20(v85);
LABEL_26:
      v58 = 0;
      return v58 & 1;
    }

    v70 = v9;
LABEL_24:
    v71 = v2;
    goto LABEL_25;
  }

  v47 = v81;
  v48 = v83;
  v83(v81, v31, v2);
  v49 = sub_2664DFE18();
  v50 = sub_2664E06E8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = v2;
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_26629C000, v49, v50, "MediaIntentCommons#isUserRecognized supported through multiUserState", v52, 2u);
    v53 = v52;
    v2 = v51;
    MEMORY[0x266784AD0](v53, -1, -1);
  }

  v46(v47, v2);
  v54 = (*(v80 + 32))(v82);
  if (!v54 || (v55 = v2, v56 = v54, v57 = [v54 speakerIDInfo], v56, v2 = v55, !v57))
  {
    v73 = v79;
    v48(v79, v31, v2);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06D8();
    if (os_log_type_enabled(v74, v75))
    {
      v68 = v2;
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_26629C000, v74, v75, "MediaIntentCommons#isUserRecognized speakerIDInfo missing, grounding not required", v76, 2u);
      MEMORY[0x266784AD0](v76, -1, -1);

      v70 = v73;
      goto LABEL_22;
    }

    v70 = v73;
    goto LABEL_24;
  }

  v86 = v45;
  v58 = (*(v80 + 40))(v82);
  v59 = v78;
  v48(v78, v31, v55);
  v60 = v59;
  v61 = v57;
  v62 = sub_2664DFE18();
  v63 = sub_2664E06E8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 67240448;
    *(v64 + 4) = v58 & 1;
    *(v64 + 8) = 2050;
    *(v64 + 10) = [v61 speakerIDConfidence];

    _os_log_impl(&dword_26629C000, v62, v63, "MediaIntentCommons#isUserRecognized userRecognized: %{BOOL,public}d with confidence: %{public}ld", v64, 0x12u);
    v65 = v64;
    v2 = v55;
    MEMORY[0x266784AD0](v65, -1, -1);
  }

  else
  {
  }

  v46(v60, v2);
  sub_26633AB20(v85);
  return v58 & 1;
}

Swift::String_optional __swiftcall MediaIntentCommons.getFallbackUsername()()
{
  v61 = v1;
  v2 = v0;
  v56 = *(v0 - 8);
  v3 = *(v56 + 64);
  (MEMORY[0x28223BE20])();
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v54 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v58 = v6[2];
  v58(v14, v15, v5);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v57 = v12;
    v53 = v2;
    v60 = v6;
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      sub_2664DF4E8();
      v19 = sub_2664DF5B8();
    }

    else
    {
      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v19 = sub_2664DE998();
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
    }

    *(v18 + 4) = v19 & 1;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaIntentCommons#fallbackUsername homepod?: %{BOOL,public}d", v18, 8u);
    MEMORY[0x266784AD0](v18, -1, -1);
    v6 = v60;
    v2 = v53;
    v12 = v57;
  }

  v21 = v6[1];
  v20 = v6 + 1;
  v22 = v14;
  v23 = v21;
  (v21)(v22, v5);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v24 = sub_2664DF5B8();

    if (v24)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v47 = sub_2664DE998();
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    if (v47)
    {
LABEL_10:
      v60 = v20;
      v58(v12, v15, v5);
      v26 = v55;
      v25 = v56;
      (*(v56 + 16))(v55, v59, v2);
      v27 = sub_2664DFE18();
      v28 = sub_2664E06E8();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v61;
      v31 = (v61 + 24);
      if (v29)
      {
        v32 = swift_slowAlloc();
        v57 = v12;
        LODWORD(v53) = v28;
        v33 = v26;
        v34 = v32;
        v35 = swift_slowAlloc();
        v62 = v35;
        *v34 = 136315138;
        v54 = *(v61 + 24);
        v58 = v23;
        v36 = v2;
        v37 = v33;
        v63[0] = v54(v36, v61);
        v63[1] = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v39 = sub_2664E0318();
        v41 = v40;
        (*(v25 + 8))(v37, v36);
        v42 = sub_2662A320C(v39, v41, &v62);

        *(v34 + 4) = v42;
        _os_log_impl(&dword_26629C000, v27, v53, "MediaIntentCommons#fallbackUsername result: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        v43 = v35;
        v44 = v61;
        MEMORY[0x266784AD0](v43, -1, -1);
        MEMORY[0x266784AD0](v34, -1, -1);

        (v58)(v57, v5);
        v45 = v54(v36, v44);
      }

      else
      {

        (*(v25 + 8))(v26, v2);
        (v23)(v12, v5);
        v45 = (*v31)(v2, v30);
      }

      goto LABEL_17;
    }
  }

  v48 = v54;
  v58(v54, v15, v5);
  v49 = sub_2664DFE18();
  v50 = sub_2664E06E8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26629C000, v49, v50, "MediaIntentCommons#fallbackUsername not required on non-HomePod", v51, 2u);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  (v23)(v48, v5);
  v45 = 0;
  v46 = 0;
LABEL_17:
  result.value._object = v46;
  result.value._countAndFlagsBits = v45;
  return result;
}

Swift::Bool __swiftcall MediaIntentCommons.isAppAttributionRequired(bundleIdentifier:)(Swift::String_optional bundleIdentifier)
{
  v55 = v1;
  object = bundleIdentifier.value._object;
  countAndFlagsBits = bundleIdentifier.value._countAndFlagsBits;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v59 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v57 = v9;
  v14 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v15 = v2;
  v62 = v3[2];
  v62(v13, v14, v2);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v54 = v3;
    v18 = swift_slowAlloc();
    *v18 = 67240192;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      sub_2664DF4E8();
      v19 = sub_2664DF5B8();
    }

    else
    {
      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(&v64, v66);
      v19 = sub_2664DE998();
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
    }

    *(v18 + 4) = v19 & 1;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaIntentCommons#isAppAttributionRequired homepod?: %{BOOL,public}d", v18, 8u);
    MEMORY[0x266784AD0](v18, -1, -1);
    v3 = v54;
  }

  v20 = v3[1];
  v21 = v13;
  v22 = v2;
  v20(v21, v2);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v23 = sub_2664DF5B8();

    if (v23)
    {
      goto LABEL_10;
    }

LABEL_17:
    v38 = v58;
    v62(v58, v14, v15);
    v39 = v38;
    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "MediaIntentCommons#isAppAttributionRequired not homepod, app attribution not required", v42, 2u);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v43 = v39;
    goto LABEL_20;
  }

  sub_2664DEC08();
  __swift_project_boxed_opaque_existential_1(&v64, v66);
  v37 = sub_2664DE998();
  v24 = __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v26 = object;
  v25 = countAndFlagsBits;
  if (object)
  {
    v27 = object;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v64 = v25;
  v65 = v27;
  MEMORY[0x28223BE20](v24);
  *(&v53 - 2) = &v64;

  v28 = sub_2662AA720(sub_2662AA7CC, (&v53 - 4), &unk_2877E48F0);

  if (v28)
  {
    v29 = v57;
    v62(v57, v14, v22);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v63 = v33;
      *v32 = 136446210;
      v64 = countAndFlagsBits;
      v65 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v34 = sub_2664E0318();
      v36 = sub_2662A320C(v34, v35, &v63);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_26629C000, v30, v31, "MediaIntentCommons#isAppAttributionRequired internal bundle identifier: %{public}s, not required", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);

      v20(v29, v22);
LABEL_21:
      v44 = 0;
      return v44 & 1;
    }

    v43 = v29;
LABEL_20:
    v20(v43, v22);
    goto LABEL_21;
  }

  v45 = v56;
  v46 = v55;
  v47 = (*(v56 + 8))(v55, v56);
  v48 = (*(v45 + 152))(v46, v45);
  v44 = v47 | v48;
  v62(v59, v14, v22);
  v49 = sub_2664DFE18();
  v50 = sub_2664E06E8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67109632;
    *(v51 + 4) = v47 & 1;
    *(v51 + 8) = 1024;
    *(v51 + 10) = v48 & 1;
    *(v51 + 14) = 1024;
    *(v51 + 16) = v44 & 1;
    _os_log_impl(&dword_26629C000, v49, v50, "MediaIntentCommons#isAppAttributionRequired attribution required: previouslySetInFlow%{BOOL}d, appPredictionSFANoviceDialog: %{BOOL}d. Required: %{BOOL}d", v51, 0x14u);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  v20(v59, v22);
  return v44 & 1;
}

Swift::Bool __swiftcall MediaIntentCommons.useDialogMemoryForAppAttribution()()
{
  v3 = v2;
  v60 = v0;
  v55 = *(v0 - 8);
  v56 = v1;
  v4 = *(v55 + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v54 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v59 = v8[2];
  v59(v15, v16, v7);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v52 = v6;
    v53 = v2;
    v57 = v8;
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      sub_2664DF4E8();
      v20 = sub_2664DF5B8();
    }

    else
    {
      sub_2664DEC08();
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v20 = sub_2664DE998();
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
    }

    *(v19 + 4) = v20 & 1;
    _os_log_impl(&dword_26629C000, v17, v18, "MediaIntentCommons#useDialogMemoryForAppAttribution homepod?: %{BOOL,public}d", v19, 8u);
    MEMORY[0x266784AD0](v19, -1, -1);
    v8 = v57;
    v6 = v52;
    v3 = v53;
  }

  v22 = v8[1];
  v21 = v8 + 1;
  v23 = v15;
  v24 = v22;
  (v22)(v23, v7);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v25 = sub_2664DF5B8();

    if (v25)
    {
LABEL_10:
      v26 = v58;
      v59(v58, v16, v7);
      v27 = v55;
      v28 = v60;
      (*(v55 + 16))(v6, v3, v60);
      v29 = sub_2664DFE18();
      v30 = sub_2664E06E8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        LODWORD(v52) = v30;
        v32 = v6;
        v33 = v31;
        v53 = v31;
        v34 = swift_slowAlloc();
        v57 = v21;
        v54 = v34;
        v61[0] = v34;
        *v33 = 136446210;
        v35 = v56;
        v36 = *(v56 + 16);
        v59 = v24;
        v37 = v36(v28, v56);
        if (v37)
        {
          v38 = 1702195828;
        }

        else
        {
          v38 = 0x65736C6166;
        }

        if (v37)
        {
          v39 = 0xE400000000000000;
        }

        else
        {
          v39 = 0xE500000000000000;
        }

        (*(v27 + 8))(v32, v60);
        v40 = sub_2662A320C(v38, v39, v61);
        v28 = v60;

        v41 = v53;
        *(v53 + 4) = v40;
        v42 = v41;
        _os_log_impl(&dword_26629C000, v29, v52, "MediaIntentCommons#useDialogMemoryForAppAttribution result: %{public}s", v41, 0xCu);
        v43 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x266784AD0](v43, -1, -1);
        MEMORY[0x266784AD0](v42, -1, -1);

        (v59)(v58, v7);
      }

      else
      {

        (*(v27 + 8))(v6, v28);
        (v24)(v26, v7);
        v35 = v56;
        v36 = *(v56 + 16);
      }

      v49 = v36(v28, v35);
      return v49 & 1;
    }
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v44 = sub_2664DE998();
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    if (v44)
    {
      goto LABEL_10;
    }
  }

  v45 = v54;
  v59(v54, v16, v7);
  v46 = sub_2664DFE18();
  v47 = sub_2664E06E8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_26629C000, v46, v47, "MediaIntentCommons#useDialogMemoryForAppAttribution not required on non-HomePod", v48, 2u);
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  (v24)(v45, v7);
  v49 = 0;
  return v49 & 1;
}

id MediaIntentCommons.wholeHouseAudioMetadata()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  v3 = [v2 wholeHouseAudioMetadata];

  return v3;
}

Swift::String_optional __swiftcall MediaIntentCommons.proxiedAppName()()
{
  v1 = (*(v0 + 32))();
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v1 proxiedThirdPartyAppInfo];

  if (!v3 || (v4 = [v3 appName], v3, !v4))
  {
    v1 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v5 = sub_2664E02C8();
  v7 = v6;

  v8 = v7;
  v1 = v5;
LABEL_7:
  result.value._object = v8;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::Bool __swiftcall MediaIntentCommons.appPredictionSFANoviceDialog()()
{
  v2 = v1;
  v3 = v0;
  if ((*(v1 + 56))() & 1) != 0 && ((*(v2 + 144))(v3, v2))
  {
    v4 = (*(v2 + 136))(v3, v2) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id MediaIntentCommons.getMediaType()(uint64_t a1, uint64_t a2)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = *(a2 + 88);
  v37 = a1;
  v38 = v2;
  v14 = v13(a1, a2);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v36 = v6[2];
  v36(v12, v15, v5);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v5;
    v19 = a2;
    v20 = v6;
    v21 = v10;
    v22 = v18;
    *v18 = 134349056;
    *(v18 + 4) = v14;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaIntentCommons#getMediaType firstMediaItemType: %{public}ld", v18, 0xCu);
    v23 = v22;
    v10 = v21;
    v6 = v20;
    a2 = v19;
    v5 = v35;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v24 = v6[1];
  v24(v12, v5);
  if (!v14)
  {
    v25 = (*(a2 + 48))(v37, a2);
    if (v25)
    {
      v26 = v25;
      v14 = [v25 mediaType];
    }

    else
    {
      v14 = 0;
    }

    v36(v10, v15, v5);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v14;
      v30 = v10;
      v31 = swift_slowAlloc();
      *v31 = 134349056;
      *(v31 + 4) = v29;
      _os_log_impl(&dword_26629C000, v27, v28, "MediaIntentCommons#getMediaType firstMediaItemType is unknown, fall back to mediaType in intent: %{public}ld", v31, 0xCu);
      v32 = v31;
      v10 = v30;
      v14 = v29;
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v24(v10, v5);
  }

  return v14;
}

uint64_t sub_266435F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFAE8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlayMediaAppSelectionResult.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlayMediaAppSelectionRecordSignalsResult.rawSignals.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_266314294(v2);
}

uint64_t PlayMediaAppSelectionRecordSignalsResult.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2664E0B28();

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

  MEMORY[0x2667833B0](v3, v4);

  MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F8DD0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v5, v6);

  return 0x3F73736563637553;
}

uint64_t DisambiguationConfiguration.trialExperimentId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t DisambiguationConfiguration.trialRolloutId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DisambiguationConfiguration.trialTreatmentId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_266436384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2664363E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_266436444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2664364A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26643650C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_266436568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_2664365E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t NowPlayingInfo.init(title:trackArtist:albumArtist:album:songId:albumId:artistId:contentId:legacyUniqueIdentifier:isExplicitItem:isLiked:lyricsAvailable:playbackProgress:playbackRate:playCount:totalTrackCount:duration:seasonNumber:episodeNumber:trackNumber:releaseDate:composer:genre:lyricsURL:artworkURL:albumYear:mediaType:isLoading:playlistTitle:stationTitle:noAppProvidedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, __int128 a16, uint64_t a17, char a18, char a19, __int16 a20, int a21, int a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v55 = type metadata accessor for NowPlayingInfo();
  v56 = v55[24];
  v75 = v56;
  v57 = sub_2664DE438();
  (*(*(v57 - 8) + 56))(a9 + v56, 1, 1, v57);
  v58 = (a9 + v55[25]);
  v59 = (a9 + v55[26]);
  v60 = v55[27];
  v61 = sub_2664DE268();
  v62 = *(*(v61 - 8) + 56);
  v62(a9 + v60, 1, 1, v61);
  v63 = v55[28];
  v62(a9 + v63, 1, 1, v61);
  v64 = v55[29];
  v65 = v55[30];
  v66 = v55[32];
  v74 = v55[31];
  v67 = v55[33];
  v73 = v55[34];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  *(a9 + 128) = a17;
  *(a9 + 136) = a18 & 1;
  *(a9 + 137) = a19;
  *(a9 + 138) = a20;
  *(a9 + 140) = a22;
  *(a9 + 144) = a23 & 1;
  *(a9 + 152) = a24;
  *(a9 + 160) = a25 & 1;
  *(a9 + 168) = a26;
  *(a9 + 176) = a27 & 1;
  *(a9 + 184) = a28;
  *(a9 + 192) = a29 & 1;
  *(a9 + 200) = a30;
  *(a9 + 208) = a31 & 1;
  *(a9 + 216) = a32;
  *(a9 + 224) = a33 & 1;
  *(a9 + 232) = a34;
  *(a9 + 240) = a35 & 1;
  *(a9 + 248) = a36;
  *(a9 + 256) = a37 & 1;
  v68 = (a9 + v64);
  v69 = a9 + v65;
  v70 = (a9 + v66);
  v71 = (a9 + v67);
  *(a9 + 112) = a16;
  sub_26642A7B0(a38, a9 + v75, &qword_2800737D0, qword_2664E4FD0);
  *v58 = a39;
  v58[1] = a40;
  *v59 = a41;
  v59[1] = a42;
  sub_26642A7B0(a43, a9 + v60, &qword_280072BC0, &qword_2664E6030);
  result = sub_26642A7B0(a44, a9 + v63, &qword_280072BC0, &qword_2664E6030);
  *v68 = a45;
  v68[1] = a46;
  *v69 = a47;
  *(v69 + 8) = a48 & 1;
  *(a9 + v74) = a49;
  *v70 = a50;
  v70[1] = a51;
  *v71 = a52;
  v71[1] = a53;
  *(a9 + v73) = a54;
  return result;
}

uint64_t type metadata accessor for NowPlayingInfo()
{
  result = qword_2800738E8;
  if (!qword_2800738E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266436AD4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000012, 0x80000002664ED2B0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_28007CD00 = v10;
  return result;
}

uint64_t sub_266436C6C()
{
  if (qword_280071C38 != -1)
  {
    swift_once();
  }

  v0 = qword_2800737C0;
  v5 = type metadata accessor for MediaRemoteAPIProvider();
  v6 = &protocol witness table for MediaRemoteAPIProvider;
  *&v4 = v0;
  v1 = qword_280071AB0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_280072A78;
  qword_2800738D0 = type metadata accessor for SEDeviceProvider();
  unk_2800738D8 = &protocol witness table for SEDeviceProvider;
  qword_2800738B8 = v2;
  sub_2662A8618(&v4, &unk_280073890);
}

uint64_t NowPlayingProvider.init(mediaRemoteAPIProvider:seDeviceProvider:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2662A8618(a1, a3);

  return sub_2662A8618(a2, a3 + 40);
}

uint64_t static NowPlayingProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280071C50 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_266436E04(&unk_280073890, v2);
}

uint64_t NowPlayingProvider.state(outputDeviceUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a2;
    v19 = a1;
    v20 = a3;
    v21 = a4;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingProvider#state...", v18, 2u);
    v23 = v22;
    a4 = v21;
    a3 = v20;
    a1 = v19;
    a2 = v32;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v24 = a2;
  if (!a2)
  {
    v25 = v5[8];
    v26 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v25);
    a1 = (*(v26 + 24))(v25, v26);
    v24 = v27;
  }

  v28 = v5[3];
  v29 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v28);
  v30 = qword_280071C48;

  if (v30 != -1)
  {
    swift_once();
  }

  (*(v29 + 8))(qword_28007CD00, a1, v24, a3, a4, v28, v29);
}

uint64_t NowPlayingProvider.app(outputDeviceUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a2;
    v19 = a4;
    v20 = a1;
    v21 = a3;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingProvider#app...", v18, 2u);
    v23 = v22;
    a3 = v21;
    a1 = v20;
    a4 = v19;
    a2 = v35;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v24 = a2;
  if (!a2)
  {
    v25 = v5[8];
    v26 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v25);
    a1 = (*(v26 + 24))(v25, v26);
    v24 = v27;
  }

  v28 = v5[3];
  v29 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v28);
  v30 = qword_280071C48;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_28007CD00;
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  v33 = *(v29 + 16);

  v33(v31, a1, v24, sub_26643B990, v32, v28, v29);
}

uint64_t NowPlayingProvider.item(outputDeviceUID:queuePosition:completion:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a3;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = a2;
    v21 = a1;
    v22 = a4;
    v23 = a5;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingProvider#item...", v20, 2u);
    v25 = v24;
    a5 = v23;
    a4 = v22;
    a1 = v21;
    a2 = v35;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v26 = a2;
  if (!a2)
  {
    v27 = v6[8];
    v28 = v6[9];
    __swift_project_boxed_opaque_existential_1(v6 + 5, v27);
    a1 = (*(v28 + 24))(v27, v28);
    v26 = v29;
  }

  v30 = v6[3];
  v31 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v30);
  v32 = qword_280071C48;

  if (v32 != -1)
  {
    swift_once();
  }

  v37 = v36;
  (*(v31 + 24))(qword_28007CD00, a1, v26, &v37, a4, a5, v30, v31);
}

uint64_t NowPlayingProvider.items(outputDeviceUIDs:queuePosition:completion:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v7 = sub_2664DFE08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - v11;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = a4;
    v21 = v9;
    v22 = v8;
    v23 = a3;
    v24 = v7;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingProvider#items...", v20, 2u);
    v26 = v25;
    v7 = v24;
    a3 = v23;
    v8 = v22;
    v9 = v21;
    a4 = v38;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v28 = qword_280F91508;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_280F91D48;
  v30 = v39;
  sub_2664DFDE8();
  v31 = v40;
  (*(v8 + 16))(v40, v30, v7);
  v32 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = "nowPlayingUsageProviderRemoteItems";
  *(v33 + 24) = 34;
  *(v33 + 32) = 2;
  (*(v8 + 32))(v33 + v32, v31, v7);
  v34 = (v33 + ((v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_2662C0D0C;
  v34[1] = v27;

  sub_2664E0848();
  sub_2664DFDD8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2662C0D38;
  *(v35 + 24) = v33;

  sub_266437B64(sub_2662C0DE0, v35, v42, v43, v41);

  return (*(v8 + 8))(v30, v7);
}

uint64_t sub_266437B64(uint64_t a1, uint64_t a2, uint64_t a3, id a4, int a5)
{
  LODWORD(v127) = a5;
  v126 = a4;
  v121 = a2;
  v120 = a1;
  v138 = sub_2664E0038();
  v122 = *(v138 - 8);
  v6 = *(v122 + 64);
  MEMORY[0x28223BE20](v138);
  v135 = v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2664DE438();
  v136 = *(v137 - 8);
  v8 = *(v136 + 64);
  v9 = MEMORY[0x28223BE20](v137);
  v130 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v10;
  MEMORY[0x28223BE20](v9);
  v141 = v106 - v11;
  v12 = sub_2664DFE38();
  v140 = *(v12 - 8);
  v13 = *(v140 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v118 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v139 = v106 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v106 - v18;
  v20 = sub_2664E0788();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2664E00B8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = swift_allocObject();
  *(v134 + 16) = MEMORY[0x277D84F90];
  v119 = dispatch_group_create();
  sub_2664E0078();
  sub_2664E0768();
  v115 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000028, 0x80000002664F8E20, v29, v24);
  (*(v21 + 8))(v24, v20);
  v30 = *(v26 + 8);
  v131 = v29;
  v133 = v25;
  v132 = v26 + 8;
  v129 = v30;
  v30(v29, v25);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v32 = v140;
  v33 = *(v140 + 16);
  v125 = v31;
  v124 = v140 + 16;
  v123 = v33;
  v33(v19, v31, v12);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06C8();

  v36 = v12;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&aBlock = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x2667834D0](a3, MEMORY[0x277D837D0]);
    v41 = sub_2662A320C(v39, v40, &aBlock);

    *(v37 + 4) = v41;
    v42 = v140;
    _os_log_impl(&dword_26629C000, v34, v35, "NowPlayingProvider#items outputDeviceUIDs: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  else
  {
    v42 = v32;
  }

  v43 = *(v42 + 8);
  v43(v19, v36);
  v44 = v134;
  v45 = *(v134 + 16);
  sub_266436E04(v126, &aBlock);
  v46 = swift_allocObject();
  v47 = aBlock;
  *(v46 + 56) = v144;
  v48 = v146;
  *(v46 + 72) = v145;
  *(v46 + 88) = v48;
  *(v46 + 104) = v147;
  v49 = v119;
  *(v46 + 16) = a3;
  *(v46 + 24) = v49;
  v50 = v115;
  *(v46 + 32) = v115;
  *(v46 + 40) = v47;
  *(v46 + 120) = v127;
  v127 = v46;
  *(v46 + 128) = v44;
  v51 = v139;
  v123(v139, v125, v36);

  v116 = v49;
  v126 = v50;

  v52 = sub_2664DFE18();
  v53 = sub_2664E06C8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&aBlock = v55;
    *v54 = 136446466;
    *(v54 + 4) = sub_2662A320C(0xD000000000000018, 0x80000002664F8E50, &aBlock);
    *(v54 + 12) = 2050;
    *(v54 + 14) = 1001;
    _os_log_impl(&dword_26629C000, v52, v53, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v54, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  v43(v51, v36);
  v119 = v36;
  v56 = v141;
  sub_2664DE428();
  v57 = dispatch_group_create();
  v115 = swift_allocObject();
  *(v115 + 16) = v45;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v128 = v45;

  sub_2664E0B28();

  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x80000002664F44D0;
  MEMORY[0x2667833B0](0xD000000000000018, 0x80000002664F8E50);
  v58 = aBlock;
  type metadata accessor for AtomicOnce();
  v59 = swift_allocObject();
  *(v59 + 24) = 0;
  *(v59 + 32) = v58;
  v60 = qword_280F91468;

  v139 = 0x80000002664F8E50;
  if (v60 != -1)
  {
    swift_once();
  }

  v61 = qword_280F91470;
  *(&v144 + 1) = type metadata accessor for SiriKitTaskLoggingProvider();
  *&v145 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&aBlock = v61;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v59 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v58, *(&v58 + 1), 1, &aBlock);
  dispatch_group_enter(v57);
  v62 = v136;
  v63 = *(v136 + 16);
  v64 = v57;
  v65 = v59;
  v66 = v130;
  v67 = v137;
  v112 = v136 + 16;
  v111 = v63;
  v63(v130, v56, v137);
  v68 = *(v62 + 80);
  v69 = (v68 + 56) & ~v68;
  v114 = v69 + v117;
  v70 = (v69 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = v68;
  v71 = swift_allocObject();
  v72 = v127;
  v71[2] = sub_26643BCF8;
  v71[3] = v72;
  v71[4] = v65;
  v71[5] = 0xD000000000000018;
  v71[6] = v139;
  v73 = *(v62 + 32);
  v113 = v69;
  v109 = v73;
  v106[3] = v62 + 32;
  v73(v71 + v69, v66, v67);
  v74 = v115;
  *(v71 + v70) = v115;
  v75 = v64;
  *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
  *&v145 = sub_26643BD10;
  *(&v145 + 1) = v71;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v144 = sub_2662A3F90;
  *(&v144 + 1) = &block_descriptor_65_2;
  v76 = _Block_copy(&aBlock);

  v117 = v65;

  v107 = v75;
  v77 = v131;
  sub_2664E0068();
  v142 = MEMORY[0x277D84F90];
  v78 = sub_26643BDB4(&qword_280F8F6A0, MEMORY[0x277D85198]);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v80 = sub_2662A5AC8();
  v81 = v135;
  v106[2] = v79;
  v106[1] = v80;
  v82 = v138;
  v108 = v78;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v77, v81, v76);
  _Block_release(v76);
  v122 = *(v122 + 8);
  (v122)(v81, v82);
  v129(v77, v133);

  v83 = v118;
  v84 = v119;
  v123(v118, v125, v119);
  v85 = sub_2664DFE18();
  v86 = sub_2664E06E8();
  v87 = v74;
  if (os_log_type_enabled(v85, v86))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&aBlock = v89;
    *v88 = 136446210;
    *(v88 + 4) = sub_2662A320C(0xD000000000000018, v139, &aBlock);
    _os_log_impl(&dword_26629C000, v85, v86, "Completions#timeout waiting for completion: %{public}s...", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    MEMORY[0x266784AD0](v89, -1, -1);
    MEMORY[0x266784AD0](v88, -1, -1);
  }

  (*(v140 + 8))(v83, v84);
  v90 = v130;
  v91 = v137;
  v111(v130, v141, v137);
  v92 = v114;
  v93 = ((v114 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v95 = v107;
  *(v94 + 16) = v107;
  *(v94 + 24) = xmmword_2664ED110;
  v96 = v128;
  *(v94 + 40) = v139;
  *(v94 + 48) = v96;
  v109(v94 + v113, v90, v91);
  *(v94 + v92) = 0;
  v97 = v94 + (v92 & 0xFFFFFFFFFFFFFFF8);
  v98 = v121;
  *(v97 + 8) = v120;
  *(v97 + 16) = v98;
  *(v94 + v93) = v87;
  *&v145 = sub_26643BDFC;
  *(&v145 + 1) = v94;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v144 = sub_2662A3F90;
  *(&v144 + 1) = &block_descriptor_71_1;
  v99 = _Block_copy(&aBlock);

  v100 = v95;

  v101 = v131;
  sub_2664E0068();
  v142 = MEMORY[0x277D84F90];
  v102 = v135;
  v103 = v138;
  sub_2664E0A08();
  v104 = v126;
  MEMORY[0x266783800](0, v101, v102, v99);
  _Block_release(v99);

  (v122)(v102, v103);
  v129(v101, v133);
  (*(v136 + 8))(v141, v91);
}

uint64_t sub_266438ACC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v62 = a7;
  v61 = a6;
  v60 = a5;
  v64 = sub_2664E0038();
  v13 = *(v64 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664E00B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2664DFE38();
  v56 = *(v54 - 8);
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v51 = v23;
  v24 = *(a3 + 16);
  v53 = v13;
  v52 = v17;
  if (v24)
  {
    v59 = v68;
    v58 = (v13 + 8);
    v57 = (v17 + 8);

    v25 = (a3 + 40);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;

      dispatch_group_enter(a4);
      sub_266436E04(v61, &v69);
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v26;
      v29 = v72;
      *(v28 + 64) = v71;
      *(v28 + 80) = v29;
      *(v28 + 96) = v73;
      v30 = v70;
      *(v28 + 32) = v69;
      *(v28 + 48) = v30;
      *(v28 + 112) = v62;
      *(v28 + 120) = a8;
      *(v28 + 128) = a4;
      v68[2] = sub_26643BEA4;
      v68[3] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v68[0] = sub_2662A3F90;
      v68[1] = &block_descriptor_80_0;
      v65 = _Block_copy(aBlock);

      v31 = a4;
      sub_2664E0068();
      v66 = MEMORY[0x277D84F90];
      sub_26643BDB4(&qword_280F8F6A0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v32 = v24;
      v33 = v63;
      v34 = v64;
      sub_2664E0A08();
      v35 = v65;
      MEMORY[0x266783800](a4, v20, v33, v65);
      _Block_release(v35);
      (*v58)(v33, v34);
      (*v57)(v20, v16);

      v25 += 2;
      v24 = v32 - 1;
    }

    while (v32 != 1);
  }

  else
  {
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = v54;
  v37 = __swift_project_value_buffer(v54, qword_280F914F0);
  swift_beginAccess();
  (*(v56 + 16))(v55, v37, v36);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06C8();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v64;
  v42 = v63;
  v43 = MEMORY[0x277D84F90];
  if (v40)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26629C000, v38, v39, "NowPlayingProvider#items finished for loop kicking off threads to retrieve each device's item info", v44, 2u);
    v45 = v44;
    v36 = v54;
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  (*(v56 + 8))(v55, v36);
  sub_2664259E0();
  v46 = sub_2664E07C8();
  v47 = swift_allocObject();
  v47[2] = a8;
  v47[3] = sub_2662C0CAC;
  v47[4] = v51;
  *&v71 = sub_26643BEB8;
  *(&v71 + 1) = v47;
  *&v69 = MEMORY[0x277D85DD0];
  *(&v69 + 1) = 1107296256;
  *&v70 = sub_2662A3F90;
  *(&v70 + 1) = &block_descriptor_86_0;
  v48 = _Block_copy(&v69);

  sub_2664E0068();
  v66 = v43;
  sub_26643BDB4(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  sub_2664E0758();
  _Block_release(v48);

  (*(v53 + 8))(v42, v41);
  (*(v52 + 8))(v20, v16);
}

uint64_t sub_26643922C(uint64_t a1, unint64_t a2, void *a3, char a4, uint64_t a5, void *a6)
{
  v33 = a6;
  v34 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = a5;
    v19 = a4;
    v20 = v18;
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_2662A320C(v34, a2, &v35);
    _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingProvider#items for outputDeviceUID: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x266784AD0](v21, -1, -1);
    v22 = v20;
    a4 = v19;
    a5 = v32;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v23 = a3[3];
  v24 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v23);
  if (qword_280071C48 != -1)
  {
    swift_once();
  }

  v25 = qword_28007CD00;
  LOBYTE(v35) = a4;
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = a5;
  *(v26 + 24) = v27;
  v28 = *(v24 + 24);

  v29 = v27;
  v28(v25, v34, a2, &v35, sub_26643BEC4, v26, v23, v24);
}

void sub_266439524(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v35 = a3;
  v34 = sub_2664DFE38();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v33);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_2662A7224(a1, &v32 - v16, qword_280073800, &unk_2664ED310);
  swift_beginAccess();
  v18 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266384FA0(0, v18[2] + 1, 1, v18);
    *(a2 + 16) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266384FA0(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  sub_26643BECC(v17, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21);
  *(a2 + 16) = v18;
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v23 = __swift_project_value_buffer(v34, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v23, v22);
  sub_2662A7224(a1, v15, qword_280073800, &unk_2664ED310);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    sub_2662A7224(v15, v32, qword_280073800, &unk_2664ED310);
    v28 = sub_2664E0318();
    v30 = v29;
    sub_26643BF3C(v15);
    v31 = sub_2662A320C(v28, v30, &v36);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_26629C000, v24, v25, "NowPlayingProvider#items for result: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  else
  {

    sub_26643BF3C(v15);
  }

  (*(v5 + 8))(v8, v22);
  dispatch_group_leave(v35);
}

uint64_t sub_26643993C(uint64_t a1, void (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v12 = 136315138;
    swift_beginAccess();
    v13 = *(a1 + 16);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
    v15 = MEMORY[0x2667834D0](v13, v14);
    v26 = v4;
    v16 = v15;
    HIDWORD(v25) = v11;
    v17 = a2;
    v19 = v18;

    v20 = sub_2662A320C(v16, v19, &v28);
    a2 = v17;

    *(v12 + 4) = v20;
    _os_log_impl(&dword_26629C000, v10, BYTE4(v25), "NowPlayingProvider#items done with results: %s", v12, 0xCu);
    v21 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);

    (*(v5 + 8))(v8, v26);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  swift_beginAccess();
  v22 = *(a1 + 16);

  a2(v23);
}

void sub_266439C48(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  if (!a1 || a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v20, v8);
    v21 = a2;
    v22 = sub_2664DFE18();
    v23 = sub_2664E06D8();

    if (os_log_type_enabled(v22, v23))
    {
      v36 = a4;
      v37 = a3;
      v24 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v24 = 136315138;
      if (a2)
      {
        v38 = v21;
        type metadata accessor for CFError(0);
        sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError);
        v25 = sub_2664E0DE8();
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      v38 = v25;
      v39 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v29 = sub_2664E0318();
      v31 = sub_2662A320C(v29, v30, &v40);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_26629C000, v22, v23, "NowPlayingProvider#queue Unexpected nil playbackQueue or error: %s", v24, 0xCu);
      v32 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v24, -1, -1);

      (*(v9 + 8))(v13, v8);
      a3 = v37;
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    else
    {

      (*(v9 + 8))(v13, v8);
      if (!a2)
      {
LABEL_17:
        v27 = 0;
        goto LABEL_18;
      }
    }

    type metadata accessor for CFError(0);
    sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError);
    v27 = swift_allocError();
    *v28 = v21;
LABEL_18:
    v33 = v21;
    a3(0, v27);

    return;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v15, v16, v8);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "NowPlayingProvider#queue complete with queue", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v9 + 8))(v15, v8);
  a3(a1, 0);
}

void sub_26643A108(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a2;
    v19 = a1;
    v20 = a5;
    v21 = a6;
    v22 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, v28, v18, 2u);
    v23 = v22;
    a6 = v21;
    a5 = v20;
    a1 = v19;
    a2 = v27;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_280071C48 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  aBlock[4] = a5;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2664365E0;
  aBlock[3] = a6;
  v25 = _Block_copy(aBlock);

  MRMediaRemoteRequestNowPlayingPlaybackQueueSync();
  _Block_release(v25);
}

void sub_26643A3BC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  if (!a1 || a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v21, v8);
    v22 = a2;
    v23 = v9;
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();

    if (os_log_type_enabled(v24, v25))
    {
      v48 = a3;
      v49 = v23;
      v47 = a4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      *v26 = 136315138;
      if (a2)
      {
        v50 = v22;
        type metadata accessor for CFError(0);
        sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError);
        v28 = sub_2664E0DE8();
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v50 = v28;
      v51 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v42 = sub_2664E0318();
      v44 = sub_2662A320C(v42, v43, &v52);

      *(v26 + 4) = v44;
      _os_log_impl(&dword_26629C000, v24, v25, "NowPlayingProvider#queueRefId Unexpected nil playbackQueue or error: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);

      (*(v49 + 8))(v13, v8);
      a3 = v48;
      if (!a2)
      {
        goto LABEL_21;
      }
    }

    else
    {

      (*(v23 + 8))(v13, v8);
      if (!a2)
      {
LABEL_21:
        v30 = 0;
        goto LABEL_22;
      }
    }

    type metadata accessor for CFError(0);
    sub_26643BDB4(&qword_2800726B0, type metadata accessor for CFError);
    v30 = swift_allocError();
    *v31 = v22;
LABEL_22:
    v45 = v22;
    (a3)(0, 0, v30);

    return;
  }

  QueueID = MRPlaybackQueueGetQueueID();
  if (QueueID)
  {
    v17 = QueueID;
    v18 = sub_2664E02C8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v15, v32, v8);

  v33 = sub_2664DFE18();
  v34 = sub_2664E06C8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v49 = v9;
    v36 = v35;
    v48 = swift_slowAlloc();
    v51 = v20;
    v52 = v48;
    *v36 = 136315138;
    v50 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v37 = sub_2664E0318();
    v47 = v8;
    v39 = a3;
    v40 = sub_2662A320C(v37, v38, &v52);

    *(v36 + 4) = v40;
    a3 = v39;
    _os_log_impl(&dword_26629C000, v33, v34, "NowPlayingProvider#queueRefId Playback queue identifier: %s", v36, 0xCu);
    v41 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);

    (*(v49 + 8))(v15, v47);
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  (a3)(v18, v20, 0);
}

SiriAudioSupport::QueuePosition_optional __swiftcall QueuePosition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26643AA14()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1 - 1);
  return sub_2664E0EB8();
}

uint64_t sub_26643AA8C()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1 - 1);
  return sub_2664E0EB8();
}

uint64_t NowPlayingInfo.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NowPlayingInfo.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.trackArtist.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NowPlayingInfo.trackArtist.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NowPlayingInfo.albumArtist.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NowPlayingInfo.albumArtist.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t NowPlayingInfo.album.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NowPlayingInfo.album.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NowPlayingInfo.songId.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t NowPlayingInfo.songId.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.albumId.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t NowPlayingInfo.albumId.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.artistId.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t NowPlayingInfo.artistId.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.contentId.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t NowPlayingInfo.contentId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t NowPlayingInfo.legacyUniqueIdentifier.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t NowPlayingInfo.legacyUniqueIdentifier.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.playbackProgress.setter(uint64_t result)
{
  *(v1 + 140) = result;
  *(v1 + 144) = BYTE4(result) & 1;
  return result;
}

uint64_t NowPlayingInfo.playbackRate.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t NowPlayingInfo.playbackRate.setter(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.playCount.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t NowPlayingInfo.playCount.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.totalTrackCount.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t NowPlayingInfo.totalTrackCount.setter(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.duration.getter()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t NowPlayingInfo.duration.setter(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.seasonNumber.getter()
{
  result = *(v0 + 216);
  v2 = *(v0 + 224);
  return result;
}

uint64_t NowPlayingInfo.seasonNumber.setter(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.episodeNumber.getter()
{
  result = *(v0 + 232);
  v2 = *(v0 + 240);
  return result;
}

uint64_t NowPlayingInfo.episodeNumber.setter(uint64_t result, char a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.trackNumber.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

uint64_t NowPlayingInfo.trackNumber.setter(uint64_t result, char a2)
{
  *(v2 + 248) = result;
  *(v2 + 256) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.composer.getter()
{
  v1 = (v0 + *(type metadata accessor for NowPlayingInfo() + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NowPlayingInfo.composer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo() + 100));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.genre.getter()
{
  v1 = (v0 + *(type metadata accessor for NowPlayingInfo() + 104));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NowPlayingInfo.genre.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo() + 104));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.albumYear.getter()
{
  v1 = (v0 + *(type metadata accessor for NowPlayingInfo() + 116));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NowPlayingInfo.albumYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo() + 116));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.mediaType.getter()
{
  v1 = (v0 + *(type metadata accessor for NowPlayingInfo() + 120));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t NowPlayingInfo.mediaType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for NowPlayingInfo();
  v6 = v2 + *(result + 120);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t NowPlayingInfo.isLoading.setter(char a1)
{
  result = type metadata accessor for NowPlayingInfo();
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t NowPlayingInfo.playlistTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for NowPlayingInfo() + 128));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NowPlayingInfo.playlistTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo() + 128));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.stationTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for NowPlayingInfo() + 132));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NowPlayingInfo.stationTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NowPlayingInfo() + 132));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NowPlayingInfo.noAppProvidedData.setter(char a1)
{
  result = type metadata accessor for NowPlayingInfo();
  *(v1 + *(result + 136)) = a1;
  return result;
}

uint64_t sub_26643B990()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_26643B9CC()
{
  result = qword_2800738E0;
  if (!qword_2800738E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800738E0);
  }

  return result;
}

void sub_26643BA68()
{
  sub_266417140(319, &qword_2800731D8);
  if (v0 <= 0x3F)
  {
    sub_266417140(319, &qword_2800738F8);
    if (v1 <= 0x3F)
    {
      sub_266417140(319, &qword_280073740);
      if (v2 <= 0x3F)
      {
        sub_266417140(319, &qword_280073900);
        if (v3 <= 0x3F)
        {
          sub_266417140(319, &qword_280073908);
          if (v4 <= 0x3F)
          {
            sub_266417140(319, &qword_280073738);
            if (v5 <= 0x3F)
            {
              sub_26643BCA4(319, &qword_280F914D0, MEMORY[0x277CC9578]);
              if (v6 <= 0x3F)
              {
                sub_26643BCA4(319, &qword_280073910, MEMORY[0x277CC9260]);
                if (v7 <= 0x3F)
                {
                  sub_26643BCA4(319, &qword_280073918, type metadata accessor for MRContentItemMediaType);
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
}

void sub_26643BCA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2664E0948();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26643BD10()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + v3);
  v10 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2663EFE44(v4, v5, v6, v7, v8, v0 + v2, v9, v10);
}

uint64_t sub_26643BDB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26643BDFC()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  return sub_2663F2518(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_26643BECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26643BF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280073800, &unk_2664ED310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26643BFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_2664DF998();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;
  v4[3] = a3;

  return MEMORY[0x2822009F8](sub_26643C0FC, 0, 0);
}