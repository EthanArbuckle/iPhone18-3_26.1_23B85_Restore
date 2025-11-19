uint64_t sub_1240()
{
  sub_7870(&qword_20A18, type metadata accessor for Dispatcher.PipelineNotFound);

  return sub_150C8();
}

uint64_t sub_12AC()
{
  sub_14FE8(54);
  v1._object = 0x80000000000163F0;
  v1._countAndFlagsBits = 0x1000000000000026;
  sub_14EA8(v1);
  sub_14C78();
  sub_7870(&qword_20A28, &type metadata accessor for UUID);
  v2._countAndFlagsBits = sub_15078();
  sub_14EA8(v2);

  v3._countAndFlagsBits = 0x20736177209D80E2;
  v3._object = 0xAE002E646E756F66;
  sub_14EA8(v3);
  return 0;
}

int *sub_13C4()
{
  result = sub_81EC(&_swiftEmptyArrayStorage);
  dword_20888 = 0;
  off_20890 = result;
  return result;
}

uint64_t sub_1428()
{
  v1 = v0;
  v2 = sub_14C78();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (__chkstk_darwin)();
  v32 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v29[-v7];
  if (qword_20880 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_20888);
  v9 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
  swift_beginAccess();
  v10 = v3[2];
  v10(v8, &v0[v9], v2);
  v11 = off_20890;
  if (*(&dword_10 + off_20890) && (v12 = sub_12260(v8), (v13 & 1) != 0))
  {
    v14 = v3[1];
    v15 = *(*&stru_20.segname[v11 + 16] + 8 * v12);
    v14(v8, v2);

    os_unfair_lock_unlock(&dword_20888);
  }

  else
  {
    v31 = v3[1];
    v31(v8, v2);
    os_unfair_lock_unlock(&dword_20888);
    if (qword_20898 != -1)
    {
      swift_once();
    }

    v16 = sub_14DE8();
    sub_77D4(v16, qword_208A0);
    v17 = sub_14F78();
    v18 = v1;
    v19 = sub_14DC8();

    v30 = v17;
    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v32;
      v23 = v21;
      v33 = v21;
      *v20 = 136446210;
      v10(v22, &v1[v9], v2);
      sub_7870(&qword_20A28, &type metadata accessor for UUID);
      v24 = sub_15078();
      v26 = v25;
      v31(v22, v2);
      v27 = sub_119EC(v24, v26, &v33);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_0, v19, v30, "No processing pipeline with the ID “%{public}s” was found; defaulting to an extraction memory footprint of 50MB…", v20, 0xCu);
      sub_86FC(v23);
    }
  }

  return 52428800;
}

id sub_17A0(char *a1)
{
  v3 = v1;
  v4 = sub_14C78();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_20880 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_20888);
  v9 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
  swift_beginAccess();
  v10 = v5[2];
  v10(v8, v1 + v9, v4);
  v11 = off_20890;
  if (*(&dword_10 + off_20890) && (v12 = sub_12260(v8), (v13 & 1) != 0))
  {
    v14 = *(*&stru_20.segname[v11 + 16] + 8 * v12);
    v18 = a1;
    v15 = v5[1];
    v16 = v14;
    v15(v8, v4);
    a1 = v18;
    os_unfair_lock_unlock(&dword_20888);
    if (v16)
    {
      return v16;
    }
  }

  else
  {
    (v5[1])(v8, v4);
    os_unfair_lock_unlock(&dword_20888);
  }

  v10(a1, v3 + v9, v4);
  v16 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  sub_7870(&qword_20A18, type metadata accessor for Dispatcher.PipelineNotFound);
  swift_willThrowTypedImpl();
  return v16;
}

uint64_t sub_19D8()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_208A0);
  sub_77D4(v0, qword_208A0);
  return sub_14DD8();
}

uint64_t sub_1ADC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(sub_75AC(&qword_20A10, &unk_15A50) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = sub_14C78();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = *(*(type metadata accessor for Dispatcher.PipelineNotFound(0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v9 = type metadata accessor for ResumptionInfo();
  v3[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v11 = sub_14BA8();
  v3[29] = v11;
  v12 = *(v11 - 8);
  v3[30] = v12;
  v13 = *(v12 + 64) + 15;
  v3[31] = swift_task_alloc();
  v14 = sub_14BF8();
  v3[32] = v14;
  v15 = *(v14 - 8);
  v3[33] = v15;
  v16 = *(v15 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1D58, 0, 0);
}

uint64_t sub_1D58()
{
  v138 = v0;
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_14DE8();
  sub_77D4(v2, qword_208A0);
  v3 = sub_14F58();

  v4 = sub_14DC8();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v137[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_119EC(v6, v5, v137);
    _os_log_impl(&dword_0, v4, v3, "Prepare for extraction to path: %{public}s", v7, 0xCu);
    sub_86FC(v8);
  }

  v10 = *(v0 + 288);
  v9 = *(v0 + 296);
  v11 = *(v0 + 264);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  v14 = *(v0 + 232);
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);
  sub_14BB8();
  *(v0 + 88) = 0xD000000000000014;
  *(v0 + 96) = 0x80000000000163D0;
  (*(v12 + 104))(v13, enum case for URL.DirectoryHint.notDirectory(_:), v14);
  sub_8AD4();
  sub_14BE8();
  (*(v12 + 8))(v13, v14);
  v17 = [objc_opt_self() defaultManager];
  sub_14BD8(0);
  v18 = sub_14E58();

  LODWORD(v9) = [v17 fileExistsAtPath:v18];

  v19 = *(v11 + 16);
  v20 = *(v0 + 288);
  v21 = *(v0 + 256);
  if (v9)
  {
    v19(*(v0 + 280), v20, v21);
    v22 = sub_14DC8();
    v23 = sub_14F88();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 280);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137[0] = v134;
      *v28 = 136446210;
      sub_7870(&qword_20A20, &type metadata accessor for URL);
      v29 = sub_15078();
      v31 = v30;
      v32 = *(v26 + 8);
      v32(v25, v27);
      v33 = sub_119EC(v29, v31, v137);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_0, v22, v23, "Resumption info was found at “%{public}s”; reusing an existing processing pipeline…", v28, 0xCu);
      sub_86FC(v134);
    }

    else
    {

      v32 = *(v26 + 8);
      v32(v25, v27);
    }

    *(v0 + 304) = v32;
    v54 = *(v0 + 288);
    v55 = sub_14C08();
    *(v0 + 312) = v55;
    *(v0 + 320) = v56;
    v135 = v32;
    v63 = v55;
    v64 = v56;
    v65 = *(v0 + 224);
    v66 = *(v0 + 192);
    v67 = sub_14B48();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    swift_allocObject();
    *(v0 + 328) = sub_14B38();
    sub_7870(&qword_20A48, type metadata accessor for ResumptionInfo);
    sub_14B28();
    sub_967C(*(v0 + 224), *(v0 + 216), type metadata accessor for ResumptionInfo);
    v70 = sub_14DC8();
    v71 = sub_14F88();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 216);
    if (v72)
    {
      v74 = *(v0 + 136);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v137[0] = v76;
      *v75 = 136446210;
      sub_7870(&qword_20A28, &type metadata accessor for UUID);
      v77 = sub_15078();
      v79 = v78;
      sub_96E4(v73, type metadata accessor for ResumptionInfo);
      v80 = sub_119EC(v77, v79, v137);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_0, v70, v71, "The existing processing pipeline’s ID is “%{public}s”.", v75, 0xCu);
      sub_86FC(v76);
    }

    else
    {

      sub_96E4(v73, type metadata accessor for ResumptionInfo);
    }

    v81 = *(v0 + 224);
    v83 = *(v0 + 200);
    v82 = *(v0 + 208);
    v85 = *(v0 + 136);
    v84 = *(v0 + 144);
    v86 = *(v0 + 120);
    v87 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v84 + 24))(v86 + v87, v81, v85);
    swift_endAccess();
    sub_967C(v81, v82, type metadata accessor for ResumptionInfo);
    sub_967C(v81, v83, type metadata accessor for ResumptionInfo);
    v88 = sub_14DC8();
    v89 = sub_14F88();
    v90 = os_log_type_enabled(v88, v89);
    v92 = *(v0 + 200);
    v91 = *(v0 + 208);
    if (v90)
    {
      v122 = *(v0 + 192);
      loga = v88;
      v93 = *(v0 + 136);
      v94 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v137[0] = v125;
      *v94 = 136446466;
      sub_7870(&qword_20A28, &type metadata accessor for UUID);
      v95 = sub_15078();
      v97 = v96;
      sub_96E4(v91, type metadata accessor for ResumptionInfo);
      v98 = sub_119EC(v95, v97, v137);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2048;
      v99 = *(v92 + *(v122 + 20));
      sub_96E4(v92, type metadata accessor for ResumptionInfo);
      *(v94 + 14) = v99;
      _os_log_impl(&dword_0, loga, v89, "Resuming the processing pipeline with the ID “%{public}s” at an offset of %llu bytes…", v94, 0x16u);
      sub_86FC(v125);
    }

    else
    {
      sub_96E4(*(v0 + 200), type metadata accessor for ResumptionInfo);

      sub_96E4(v91, type metadata accessor for ResumptionInfo);
    }

    v100 = *(v0 + 120);
    v101 = sub_17A0(*(v0 + 176));
    v102 = *(v0 + 296);
    v103 = *(v0 + 256);
    v104 = *(v0 + 264);
    v105 = *(v0 + 224);
    v106 = *(v0 + 192);
    v107 = *(v0 + 120);
    swift_unknownObjectUnownedLoadStrong();
    sub_B18C();
    swift_unknownObjectRelease();

    sub_8748(v63, v64);
    v135(v102, v103);
    v136 = *(v105 + *(v106 + 20));
    sub_96E4(v105, type metadata accessor for ResumptionInfo);
    v108 = *(v0 + 296);
    v109 = *(v0 + 272);
    v110 = *(v0 + 280);
    v112 = *(v0 + 256);
    v111 = *(v0 + 264);
    v113 = *(v0 + 248);
    v118 = *(v0 + 224);
    v119 = *(v0 + 216);
    v120 = *(v0 + 208);
    v121 = *(v0 + 200);
    v123 = *(v0 + 184);
    v126 = *(v0 + 176);
    logb = *(v0 + 168);
    v131 = *(v0 + 160);
    v133 = *(v0 + 152);
    v115 = *(v0 + 120);
    v114 = *(v0 + 128);
    (*(v111 + 32))(v114, *(v0 + 288), v112);
    (*(v111 + 56))(v114, 0, 1, v112);
    v116 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
    swift_beginAccess();
    sub_960C(v114, v115 + v116);
    swift_endAccess();

    v117 = *(v0 + 8);

    return v117(v136);
  }

  else
  {
    v34 = *(v0 + 120);
    v19(*(v0 + 272), v20, v21);
    v35 = v34;
    v36 = sub_14DC8();
    v37 = sub_14F88();

    v38 = os_log_type_enabled(v36, v37);
    v40 = *(v0 + 264);
    v39 = *(v0 + 272);
    v41 = *(v0 + 256);
    if (v38)
    {
      v42 = *(v0 + 144);
      log = *(v0 + 136);
      v130 = *(v0 + 152);
      v124 = *(v0 + 120);
      v43 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v43 = 136446466;
      sub_7870(&qword_20A20, &type metadata accessor for URL);
      v44 = sub_15078();
      v46 = v45;
      v132 = v37;
      v47 = *(v40 + 8);
      v47(v39, v41);
      v48 = sub_119EC(v44, v46, v137);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2082;
      v49 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
      swift_beginAccess();
      (*(v42 + 16))(v130, v124 + v49, log);
      sub_7870(&qword_20A28, &type metadata accessor for UUID);
      v50 = sub_15078();
      v52 = v51;
      (*(v42 + 8))(v130, log);
      v53 = sub_119EC(v50, v52, v137);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_0, v36, v132, "Resumption info wasn’t found at “%{public}s”; creating a new processing pipeline with the ID “%{public}s”…", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v47 = *(v40 + 8);
      v47(v39, v41);
    }

    *(v0 + 336) = v47;
    v57 = swift_task_alloc();
    *(v0 + 344) = v57;
    *v57 = v0;
    v57[1] = sub_2D84;
    v58 = *(v0 + 288);
    v59 = *(v0 + 112);
    v60 = *(v0 + 120);
    v61 = *(v0 + 104);

    return sub_8EF0(v60, v61, v59, v58);
  }
}

uint64_t sub_2D84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = sub_3074;
  }

  else
  {
    *(v4 + 360) = a1;
    v7 = sub_2EAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2EAC()
{
  v1 = *(v0 + 264) + 8;
  (*(v0 + 336))(*(v0 + 296), *(v0 + 256));
  v22 = *(v0 + 360);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 216);
  v15 = *(v0 + 208);
  v16 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = *(v0 + 176);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  (*(v5 + 32))(v8, *(v0 + 288), v6);
  (*(v5 + 56))(v8, 0, 1, v6);
  v10 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_960C(v8, v9 + v10);
  swift_endAccess();

  v11 = *(v0 + 8);

  return v11(v22);
}

uint64_t sub_3074()
{
  v19 = v0[44];
  v1 = v0[42];
  v2 = v0[34];
  v3 = v0[33] + 8;
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[28];
  v10 = v0[27];
  v11 = v0[26];
  v12 = v0[25];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[20];
  v17 = v0[19];
  v18 = v0[16];
  v1(v0[36], v6);
  v1(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_31DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v7 = sub_3528;
  }

  else
  {
    *(v4 + 384) = a1;
    v7 = sub_3304;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3304()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[28];
  v9 = v0[21];

  sub_8748(v3, v2);
  sub_96E4(v9, type metadata accessor for Dispatcher.PipelineNotFound);
  sub_96E4(v8, type metadata accessor for ResumptionInfo);
  v4(v5, v6);
  v30 = v0[48];
  v10 = v0[37];
  v11 = v0[34];
  v12 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v15 = v0[31];
  v21 = v0[28];
  v22 = v0[27];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[23];
  v26 = v0[22];
  v27 = v0[21];
  v28 = v0[20];
  v29 = v0[19];
  v17 = v0[15];
  v16 = v0[16];
  (*(v13 + 32))(v16, v0[36], v14);
  (*(v13 + 56))(v16, 0, 1, v14);
  v18 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_960C(v16, v17 + v18);
  swift_endAccess();

  v19 = v0[1];

  return v19(v30);
}

uint64_t sub_3528()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];
  v4 = v0[28];
  v5 = v0[21];

  sub_8748(v3, v2);
  sub_96E4(v5, type metadata accessor for Dispatcher.PipelineNotFound);
  sub_96E4(v4, type metadata accessor for ResumptionInfo);
  v24 = v0[47];
  v6 = v0[34];
  v7 = v0[33] + 8;
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v11 = v0[32];
  v12 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[16];
  v8(v0[36], v11);
  v8(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_386C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_14E68();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_3940;

  return sub_1ADC(v5, v7);
}

uint64_t sub_3940(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_14B88();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_3AF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_3B8C, 0, 0);
}

uint64_t sub_3B8C()
{
  v19 = v0;
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_14DE8();
  sub_77D4(v3, qword_208A0);
  v4 = sub_14F58();
  sub_8944(v2, v1);
  v5 = sub_14DC8();
  sub_8748(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = sub_14C18();
    v12 = sub_119EC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v5, v4, "Supply bytes: %{public}s", v8, 0xCu);
    sub_86FC(v9);
  }

  v13 = *(v0 + 32);
  *(v0 + 56) = sub_17A0(*(v0 + 48));
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_3E28;
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_B330(v16, v15);
}

uint64_t sub_3E28(char a1)
{
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(v5 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_3F84, 0, 0);
  }

  else
  {
    v6 = *(v5 + 48);

    v7 = *(v5 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_3F84()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_417C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_14C38();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_4258;

  return sub_3AF4(v7, v9);
}

uint64_t sub_4258(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[3];
  sub_8748(v5[4], v5[5]);
  if (v3)
  {
    v11 = sub_14B88();

    (*(v10 + 16))(v10, v11, 0);
  }

  else
  {
    (*(v10 + 16))(v10, 0, a1 & 1);
  }

  _Block_release(v6[3]);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_4414()
{
  v1[11] = v0;
  v2 = type metadata accessor for ResumptionInfo();
  v1[12] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v4 = sub_14C78();
  v1[14] = v4;
  v5 = *(v4 - 8);
  v1[15] = v5;
  v6 = *(v5 + 64) + 15;
  v1[16] = swift_task_alloc();
  v7 = *(*(sub_75AC(&qword_20A10, &unk_15A50) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = sub_14BF8();
  v1[18] = v8;
  v9 = *(v8 - 8);
  v1[19] = v9;
  v10 = *(v9 + 64) + 15;
  v1[20] = swift_task_alloc();
  v11 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v1[21] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_45C8, 0, 0);
}

uint64_t sub_45C8()
{
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  v0[23] = sub_77D4(v1, qword_208A0);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Suspend stream", v4, 2u);
  }

  v5 = v0[22];
  v6 = v0[11];

  v0[24] = sub_17A0(v5);
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_4800;

  return sub_BA04();
}

uint64_t sub_4800(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_5028;
  }

  else
  {

    v5 = sub_491C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_491C()
{
  v77 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_83D4(v4 + v5, v3, &qword_20A10, &unk_15A50);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[23];
  if (v6 == 1)
  {
    v8 = v0[11];
    sub_78B8(v0[17], &qword_20A10, &unk_15A50);
    v9 = sub_14F78();
    v10 = v8;
    v11 = sub_14DC8();

    if (os_log_type_enabled(v11, v9))
    {
      v13 = v0[15];
      v12 = v0[16];
      v14 = v0[14];
      v15 = v0[11];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v76[0] = v17;
      *v16 = 136446210;
      v18 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
      swift_beginAccess();
      (*(v13 + 16))(v12, v15 + v18, v14);
      sub_7870(&qword_20A28, &type metadata accessor for UUID);
      v19 = sub_15078();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_119EC(v19, v21, v76);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_0, v11, v9, "No resumption URL is available for the processing pipeline with the ID “%{public}s”.", v16, 0xCu);
      sub_86FC(v17);
    }

    goto LABEL_5;
  }

  v31 = v0[11];
  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v32 = v31;
  v33 = sub_14DC8();
  v34 = sub_14F88();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v0[26];
    v37 = v0[15];
    v36 = v0[16];
    v38 = v0[14];
    v39 = v0[11];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v76[0] = v41;
    *v40 = 134218242;
    *(v40 + 4) = v35;
    *(v40 + 12) = 2082;
    v42 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v37 + 16))(v36, v39 + v42, v38);
    sub_7870(&qword_20A28, &type metadata accessor for UUID);
    v43 = sub_15078();
    v45 = v44;
    (*(v37 + 8))(v36, v38);
    v46 = sub_119EC(v43, v45, v76);

    *(v40 + 14) = v46;
    _os_log_impl(&dword_0, v33, v34, "Recording an offset of %llu bytes for the processing pipeline with the ID “%{public}s”…", v40, 0x16u);
    sub_86FC(v41);
  }

  v47 = v0[27];
  v48 = v0[20];
  v49 = sub_14C08();
  if (!v47)
  {
    v51 = v49;
    v52 = v50;
    v54 = v0[12];
    v53 = v0[13];
    v55 = sub_14B48();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    sub_14B38();
    sub_7870(&qword_20A48, type metadata accessor for ResumptionInfo);
    sub_14B28();
    *(v0[13] + *(v0[12] + 20)) = v0[26];
    v58 = sub_14B78();
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    sub_14B68();
    sub_7870(&qword_20A50, type metadata accessor for ResumptionInfo);
    v61 = sub_14B58();
    v62 = v0[20];
    v63 = v61;
    v65 = v64;
    sub_14C48();
    v66 = v0[19];
    v74 = v0[18];
    v75 = v0[20];
    v67 = v0[13];
    sub_8748(v63, v65);

    sub_8748(v51, v52);
    sub_96E4(v67, type metadata accessor for ResumptionInfo);
    (*(v66 + 8))(v75, v74);
LABEL_5:
    v23 = v0[22];
    v24 = v0[20];
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[13];

    v28 = v0[1];
    v29 = v0[26];

    return v28(v29);
  }

  (*(v0[19] + 8))(v0[20], v0[18]);
  v68 = v0[22];
  v69 = v0[20];
  v71 = v0[16];
  v70 = v0[17];
  v72 = v0[13];

  v73 = v0[1];

  return v73();
}

uint64_t sub_5028()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_5244(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_52EC;

  return sub_4414();
}

uint64_t sub_52EC(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_14B88();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_547C()
{
  v1[9] = v0;
  v2 = sub_14C78();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = *(*(sub_75AC(&qword_20A10, &unk_15A50) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_14BF8();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v1[18] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_5638, 0, 0);
}

uint64_t sub_5638()
{
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  v0[20] = sub_77D4(v1, qword_208A0);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Finish stream", v4, 2u);
  }

  v5 = v0[19];
  v6 = v0[9];

  v0[21] = sub_17A0(v5);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_58AC;

  return sub_BC18();
}

uint64_t sub_58AC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_5F08;
  }

  else
  {

    v4 = sub_59FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_59FC()
{
  v60 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_83D4(v4 + v5, v3, &qword_20A10, &unk_15A50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_78B8(v0[13], &qword_20A10, &unk_15A50);
LABEL_8:
    v42 = v0[19];
    v43 = v0[16];
    v44 = v0[17];
    v46 = v0[12];
    v45 = v0[13];

    v47 = v0[1];
    goto LABEL_10;
  }

  v6 = v0[20];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[9];
  (*(v10 + 32))(v7, v0[13], v9);
  (*(v10 + 16))(v8, v7, v9);
  v12 = v11;
  v13 = sub_14DC8();
  v14 = sub_14F88();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[14];
  if (v15)
  {
    v58 = v14;
    v19 = v0[11];
    v56 = v0[10];
    v57 = v0[12];
    v55 = v0[9];
    v20 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v20 = 136446466;
    sub_7870(&qword_20A20, &type metadata accessor for URL);
    v21 = sub_15078();
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = sub_119EC(v21, v23, &v59);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    v26 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v19 + 16))(v57, v55 + v26, v56);
    sub_7870(&qword_20A28, &type metadata accessor for UUID);
    v27 = sub_15078();
    v29 = v28;
    (*(v19 + 8))(v57, v56);
    v30 = sub_119EC(v27, v29, &v59);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_0, v13, v58, "Removing the resumption info at “%{public}s” for the processing pipeline with the ID “%{public}s”…", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v31 = v0[17];
  v32 = [objc_opt_self() defaultManager];
  sub_14BC8(v33);
  v35 = v34;
  v0[8] = 0;
  v36 = [v32 removeItemAtURL:v34 error:v0 + 8];

  v37 = v0[8];
  v38 = v0[17];
  v39 = v0[14];
  if (v36)
  {
    v40 = v0[15] + 8;
    v41 = v37;
    v24(v38, v39);
    goto LABEL_8;
  }

  v48 = v37;
  sub_14B98();

  swift_willThrow();
  v24(v38, v39);
  v49 = v0[19];
  v51 = v0[16];
  v50 = v0[17];
  v53 = v0[12];
  v52 = v0[13];

  v47 = v0[1];
LABEL_10:

  return v47();
}

uint64_t sub_5F08()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_614C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_61F4;

  return sub_547C();
}

uint64_t sub_61F4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_14B88();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_6378(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_14C78();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(*(sub_75AC(&qword_20A10, &unk_15A50) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = sub_14BF8();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v10 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  v2[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_6534, 0, 0);
}

uint64_t sub_6534()
{
  if (qword_20898 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_14DE8();
  v0[21] = sub_77D4(v2, qword_208A0);
  v3 = sub_14F58();
  swift_errorRetain();
  v4 = sub_14DC8();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v3, "Terminate stream with error: %{public}@", v6, 0xCu);
    sub_78B8(v7, &qword_20A30, &qword_15D70);
  }

  v9 = v0[20];
  v10 = v0[10];

  v0[22] = sub_17A0(v9);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_6830;
  v12 = v0[9];

  return sub_C1E8(v12);
}

uint64_t sub_6830()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_6E8C;
  }

  else
  {

    v4 = sub_6980;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_6980()
{
  v60 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  swift_beginAccess();
  sub_83D4(v4 + v5, v3, &qword_20A10, &unk_15A50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_78B8(v0[14], &qword_20A10, &unk_15A50);
LABEL_8:
    v42 = v0[20];
    v43 = v0[17];
    v44 = v0[18];
    v46 = v0[13];
    v45 = v0[14];

    v47 = v0[1];
    goto LABEL_10;
  }

  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[10];
  (*(v10 + 32))(v7, v0[14], v9);
  (*(v10 + 16))(v8, v7, v9);
  v12 = v11;
  v13 = sub_14DC8();
  v14 = sub_14F88();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[15];
  if (v15)
  {
    v58 = v14;
    v19 = v0[12];
    v56 = v0[11];
    v57 = v0[13];
    v55 = v0[10];
    v20 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v20 = 136446466;
    sub_7870(&qword_20A20, &type metadata accessor for URL);
    v21 = sub_15078();
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = sub_119EC(v21, v23, &v59);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    v26 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
    swift_beginAccess();
    (*(v19 + 16))(v57, v55 + v26, v56);
    sub_7870(&qword_20A28, &type metadata accessor for UUID);
    v27 = sub_15078();
    v29 = v28;
    (*(v19 + 8))(v57, v56);
    v30 = sub_119EC(v27, v29, &v59);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_0, v13, v58, "Removing the resumption info at “%{public}s” for the processing pipeline with the ID “%{public}s”…", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v31 = v0[18];
  v32 = [objc_opt_self() defaultManager];
  sub_14BC8(v33);
  v35 = v34;
  v0[8] = 0;
  v36 = [v32 removeItemAtURL:v34 error:v0 + 8];

  v37 = v0[8];
  v38 = v0[18];
  v39 = v0[15];
  if (v36)
  {
    v40 = v0[16] + 8;
    v41 = v37;
    v24(v38, v39);
    goto LABEL_8;
  }

  v48 = v37;
  sub_14B98();

  swift_willThrow();
  v24(v38, v39);
  v49 = v0[20];
  v51 = v0[17];
  v50 = v0[18];
  v53 = v0[13];
  v52 = v0[14];

  v47 = v0[1];
LABEL_10:

  return v47();
}

uint64_t sub_6E8C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_70E4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_71A8;

  return sub_6378(v6);
}

uint64_t sub_71A8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_14B88();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

id sub_7374()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_7474()
{
  v0 = sub_14C78();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_7554();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_7554()
{
  if (!qword_209A0)
  {
    sub_14BF8();
    v0 = sub_14F98();
    if (!v1)
    {
      atomic_store(v0, &qword_209A0);
    }
  }
}

uint64_t sub_75AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_75F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_70E4(v2, v3, v4);
}

uint64_t sub_76B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_99A8;

  return sub_11458(a1, v4, v5, v7);
}

uint64_t sub_779C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_77D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_780C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dispatcher.PipelineNotFound(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_7870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_78B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_75AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_7918(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_14C78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_75AC(&qword_20A40, &qword_15A68);
  v43 = a2;
  result = sub_15018();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_7870(&qword_20A68, &type metadata accessor for UUID);
      result = sub_14E38();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void sub_7CF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_14C78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_12260(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_7F78();
      goto LABEL_7;
    }

    sub_7918(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_12260(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_7EC0(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_150B8();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_7EC0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_14C78();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_7F78()
{
  v1 = v0;
  v32 = sub_14C78();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AC(&qword_20A40, &qword_15A68);
  v4 = *v0;
  v5 = sub_15008();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_81EC(uint64_t a1)
{
  v2 = sub_75AC(&qword_20A38, &qword_15A60);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_75AC(&qword_20A40, &qword_15A68);
    v8 = sub_15028();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_83D4(v10, v6, &qword_20A38, &qword_15A60);
      result = sub_12260(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_14C78();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_83D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_75AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_843C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_84A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_614C(v2, v3);
}

uint64_t sub_8550()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_99A8;

  return sub_11370(v2, v3, v5);
}

uint64_t sub_8610()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_5244(v2, v3);
}

uint64_t sub_86FC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_8748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_879C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_8850;

  return sub_417C(v2, v3, v4);
}

uint64_t sub_8850()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_8944(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_8998()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_89E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_386C(v2, v3, v4);
}

uint64_t sub_8A94()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_8AD4()
{
  result = qword_20A58;
  if (!qword_20A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20A58);
  }

  return result;
}

id sub_8B28(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_14C68();
  v5 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_resumptionInfoURL;
  v6 = sub_14BF8();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  if (a1)
  {
    v7 = qword_20898;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_14DE8();
    sub_77D4(v8, qword_208A0);
    v9 = sub_14F58();

    swift_unknownObjectRetain();
    v10 = sub_14DC8();
    swift_unknownObjectRelease();

    if (!os_log_type_enabled(v10, v9))
    {

      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = sub_14E28();
    v14 = v13;

    v15 = sub_119EC(v12, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_14E78();
    v18 = sub_119EC(v16, v17, &v27);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_0, v10, v9, "Init options: %{public}s delegate: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    goto LABEL_10;
  }

  if (qword_20898 != -1)
  {
    swift_once();
  }

  v19 = sub_14DE8();
  sub_77D4(v19, qword_208A0);
  v20 = sub_14F58();
  swift_unknownObjectRetain();
  v10 = sub_14DC8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v23 = sub_14E78();
    v25 = sub_119EC(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v10, v20, "Init delegate: %{public}s", v21, 0xCu);
    sub_86FC(v22);
LABEL_10:
  }

LABEL_12:

  *&v2[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_options] = a1;
  swift_unknownObjectUnownedInit();
  v28.receiver = v2;
  v28.super_class = ObjectType;
  return objc_msgSendSuper2(&v28, "init");
}

uint64_t sub_8EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for ResumptionInfo();
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = sub_14C78();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v9 = *(v8 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_8FE4, 0, 0);
}

uint64_t sub_8FE4()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_options);
  Strong = swift_unknownObjectUnownedLoadStrong();
  objc_allocWithZone(type metadata accessor for ProcessingPipeline(0));

  v4 = sub_D008(v3, Strong);
  v0[17] = v4;
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_9144;
    v7 = v0[9];
    v6 = v0[10];

    return sub_99AC(v7, v6);
  }

  else
  {
    sub_9744();
    swift_allocError();
    swift_willThrow();
    v9 = v0[16];
    v10 = v0[13];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_9144(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[18];
  v8 = *v2;
  v4[19] = v1;

  if (v1)
  {
    v6 = sub_9594;
  }

  else
  {
    v6 = sub_9260;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_9260()
{
  if (qword_20880 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v27 = v0[13];
  v28 = v0[12];
  v29 = v0[19];
  v5 = v0[8];
  os_unfair_lock_lock(&dword_20888);
  v6 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher_currentPipelineID;
  swift_beginAccess();
  v26 = *(v3 + 16);
  v26(v2, v5 + v6, v4);
  v7 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = off_20890;
  off_20890 = 0x8000000000000000;
  sub_7CF4(v7, v2, isUniquelyReferenced_nonNull_native);
  (*(v3 + 8))(v2, v4);
  off_20890 = v30;
  os_unfair_lock_unlock(&dword_20888);
  v26(v27, v5 + v6, v4);
  *(v27 + *(v28 + 20)) = 0;
  v9 = sub_14B78();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_14B68();
  sub_7870(&qword_20A50, type metadata accessor for ResumptionInfo);
  v12 = sub_14B58();
  if (v29)
  {
    v14 = v0[17];
    sub_96E4(v0[13], type metadata accessor for ResumptionInfo);

    v18 = v0[16];
    v19 = v0[13];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v15 = v12;
    v16 = v13;
    v17 = v0[11];
    sub_14C48();
    v22 = v0[6];
    v23 = v0[16];
    v24 = v0[17];
    sub_96E4(v0[13], type metadata accessor for ResumptionInfo);

    sub_8748(v15, v16);

    v25 = v0[1];

    return v25(v22);
  }
}

uint64_t sub_9594()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_960C(uint64_t a1, uint64_t a2)
{
  v4 = sub_75AC(&qword_20A10, &unk_15A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_967C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_96E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9744()
{
  result = qword_20A60;
  if (!qword_20A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20A60);
  }

  return result;
}

uint64_t sub_97D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_9854(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_98C4()
{
  result = sub_14C78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_99AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v4 = *(*(sub_75AC(&qword_20A08, &qword_15A20) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_14CD8();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = sub_14DF8();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v11 = *(*(sub_75AC(&qword_20DF0, &qword_15E38) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = type metadata accessor for ProcessingPipeline.LicenseInfo(0);
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = *(*(sub_75AC(&qword_20DF8, &qword_15E40) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_9C0C, 0, 0);
}

uint64_t sub_9C0C()
{
  v13 = v0;
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_14DE8();
  v0[22] = sub_77D4(v2, qword_20B80);
  v3 = sub_14F58();

  v4 = sub_14DC8();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_119EC(v6, v5, &v12);
    _os_log_impl(&dword_0, v4, v3, "Prepare for extraction to path: %{public}s", v7, 0xCu);
    sub_86FC(v8);
  }

  v0[23] = sub_14DB8();
  v0[24] = sub_14DA8();
  v0[25] = sub_12F9C(&qword_20E00, &type metadata accessor for AppLicenseDelivery.Isolation);
  v10 = sub_14EC8();

  return _swift_task_switch(sub_9E08, v10, v9);
}

uint64_t sub_9E08()
{
  v1 = *(v0 + 192);

  if (qword_208D0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_9EA0, 0, 0);
}

uint64_t sub_9EA0()
{
  v1 = v0[25];
  v2 = v0[23];
  v0[26] = sub_14DA8();
  v4 = sub_14EC8();

  return _swift_task_switch(sub_9F34, v4, v3);
}

uint64_t sub_9F34()
{
  v1 = *(v0 + 208);

  *(v0 + 216) = qword_217C0;

  return _swift_task_switch(sub_9FA8, 0, 0);
}

uint64_t sub_9FA8()
{
  v1 = v0[25];
  v2 = v0[23];
  v0[28] = sub_14DA8();
  v4 = sub_14EC8();

  return _swift_task_switch(sub_A03C, v4, v3);
}

uint64_t sub_A03C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);

  sub_13270();

  return _swift_task_switch(sub_A0A8, 0, 0);
}

uint64_t sub_A0A8()
{
  v56 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_83D4(v0[4] + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_licenseInfo, v3, &qword_20DF0, &qword_15E38);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_78B8(v0[16], &qword_20DF0, &qword_15E38);
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[20];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[11];
    v10 = v0[12];
    v12 = v0[2];
    v11 = v0[3];
    v13 = sub_14D78();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_12ED8(v6, v4, &qword_20DF8, &qword_15E40);

    sub_14E08();
    v14 = *(v10 + 16);
    v14(v8, v7, v9);
    v15 = sub_14DC8();
    v16 = sub_14F88();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[14];
    v19 = v0[11];
    v20 = v0[12];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v21 = 136446210;
      sub_12F9C(&qword_20E18, &type metadata accessor for FilePath);
      v53 = v16;
      v22 = v14;
      v23 = sub_15078();
      v25 = v24;
      v28 = *(v20 + 8);
      v27 = v20 + 8;
      v26 = v28;
      v28(v18, v19);
      v29 = v23;
      v14 = v22;
      v30 = sub_119EC(v29, v25, &v55);

      *(v21 + 4) = v30;
      _os_log_impl(&dword_0, v15, v53, "Creating a stream pipeline for extraction to “%{public}s”…", v21, 0xCu);
      sub_86FC(v54);
    }

    else
    {

      v31 = *(v20 + 8);
      v27 = v20 + 8;
      v26 = v31;
      v31(v18, v19);
    }

    v0[32] = v27;
    v0[33] = v26;
    v32 = v0[21];
    v33 = v0[10];
    v35 = v0[8];
    v34 = v0[9];
    v36 = v0[7];
    v14(v0[13], v0[15], v0[11]);
    sub_14CC8();
    sub_75AC(&qword_20E08, &qword_15E48);
    (*(v35 + 16))(v34, v33, v36);
    v37 = swift_task_alloc();
    v0[34] = v37;
    *(v37 + 16) = v32;
    v0[35] = sub_14CB8();
    sub_12C6C(&qword_20E10, &qword_20E08, &qword_15E48);
    v39 = sub_14EC8();

    return _swift_task_switch(sub_ACA0, v39, v38);
  }

  else
  {
    sub_12CB4(v0[16], v0[19], type metadata accessor for ProcessingPipeline.LicenseInfo);
    if (qword_208C0 != -1)
    {
      swift_once();
    }

    v0[29] = sub_13BA8();
    v40 = v0[19];
    v41 = v0[17];
    v42 = *v40;
    v43 = v40[1];
    v44 = v41[5];
    v45 = *(v40 + v41[6]);
    v46 = (v40 + v41[7]);
    v47 = *v46;
    v48 = v46[1];
    v49 = async function pointer to Helper.Proxy.requestLicense(forAssetPackWithID:versionID:internalVersionID:appBundleID:)[1];
    v50 = swift_task_alloc();
    v0[30] = v50;
    *v50 = v0;
    v50[1] = sub_A7C0;
    v51 = v0[20];

    return Helper.Proxy.requestLicense(forAssetPackWithID:versionID:internalVersionID:appBundleID:)(v51, v42, v43, v40 + v44, v45, v47, v48);
  }
}

uint64_t sub_A7C0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);

  if (v0)
  {
    v6 = sub_AF54;
  }

  else
  {
    v6 = sub_A8F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_A8F4()
{
  v42 = v0;
  sub_12DD8(v0[19], type metadata accessor for ProcessingPipeline.LicenseInfo);
  v40 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_14D78();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_12ED8(v3, v1, &qword_20DF8, &qword_15E40);

  sub_14E08();
  v11 = *(v6 + 16);
  v11(v5, v4, v7);
  v12 = sub_14DC8();
  v13 = sub_14F88();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v18 = 136446210;
    sub_12F9C(&qword_20E18, &type metadata accessor for FilePath);
    v38 = v13;
    v19 = v11;
    v20 = sub_15078();
    v22 = v21;
    v25 = *(v16 + 8);
    v23 = v16 + 8;
    v24 = v25;
    v25(v15, v17);
    v26 = v20;
    v11 = v19;
    v27 = sub_119EC(v26, v22, &v41);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_0, v12, v38, "Creating a stream pipeline for extraction to “%{public}s”…", v18, 0xCu);
    sub_86FC(v39);
  }

  else
  {

    v28 = *(v16 + 8);
    v23 = v16 + 8;
    v24 = v28;
    v28(v15, v17);
  }

  v0[32] = v23;
  v0[33] = v24;
  v29 = v0[21];
  v30 = v0[10];
  v32 = v0[8];
  v31 = v0[9];
  v33 = v0[7];
  v11(v0[13], v0[15], v0[11]);
  sub_14CC8();
  sub_75AC(&qword_20E08, &qword_15E48);
  (*(v32 + 16))(v31, v30, v33);
  v34 = swift_task_alloc();
  v0[34] = v34;
  *(v34 + 16) = v29;
  v0[35] = sub_14CB8();
  sub_12C6C(&qword_20E10, &qword_20E08, &qword_15E48);
  v36 = sub_14EC8();

  return _swift_task_switch(sub_ACA0, v36, v35);
}

uint64_t sub_ACA0()
{
  v1 = *(v0 + 280);
  *(v0 + 288) = sub_14CA8();

  return _swift_task_switch(sub_AD0C, 0, 0);
}

uint64_t sub_AD0C()
{
  v1 = v0[35];
  v19 = v0[33];
  v20 = v0[34];
  v2 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v17 = v0[15];
  v18 = v0[32];
  v23 = v0[16];
  v24 = v0[14];
  v25 = v0[13];
  v15 = v0[10];
  v16 = v0[11];
  v3 = v0[8];
  v26 = v0[9];
  v4 = v0[6];
  v14 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  atomic_store(v0[36], &v6[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_minimumChunkSize]);
  v9 = sub_14F08();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v10[5] = v6;
  v10[6] = v7;
  v10[7] = v8;
  v10[8] = v5;

  v11 = v6;
  sub_F590(0, 0, v4, &unk_15E58, v10);

  sub_78B8(v4, &qword_20A08, &qword_15A20);
  (*(v3 + 8))(v15, v14);
  v19(v17, v16);
  sub_78B8(v2, &qword_20DF8, &qword_15E40);

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_AF54()
{
  v1 = v0[31];
  v2 = v0[22];
  sub_12DD8(v0[19], type metadata accessor for ProcessingPipeline.LicenseInfo);
  v3 = sub_14F68();
  swift_errorRetain();
  v4 = sub_14DC8();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v4, v3, "A license couldn’t be requested: %{public}@", v5, 0xCu);
    sub_78B8(v6, &qword_20A30, &qword_15D70);
  }

  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[10];
  v21 = v0[9];
  v22 = v0[6];
  v13 = v0[4];

  swift_willThrow();
  v14 = (v13 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock((v13 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher));
  v15 = v14 + *(sub_75AC(&qword_20C70, &qword_15CA0) + 28);
  sub_C914(0, 1);
  os_unfair_lock_unlock(v14);

  v16 = v0[1];

  return v16();
}

void sub_B18C()
{
  v1 = v0;
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v2 = sub_14DE8();
  sub_77D4(v2, qword_20B80);
  v3 = sub_14F58();
  swift_unknownObjectRetain();
  v4 = sub_14DC8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = sub_14E78();
    v9 = sub_119EC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v4, v3, "Set delegate: %{public}s", v5, 0xCu);
    sub_86FC(v6);
  }

  v10 = (v1 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference));
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v10);
}

uint64_t sub_B330(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_B354, 0, 0);
}

uint64_t sub_B354()
{
  v60 = v0;
  if (qword_208C8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = sub_14DE8();
  sub_77D4(v3, qword_20B80);
  v4 = sub_14F58();
  sub_8944(v2, v1);
  v5 = sub_14DC8();
  sub_8748(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v59[0] = v9;
    *v8 = 136446210;
    v10 = sub_14C18();
    v12 = sub_119EC(v10, v11, v59);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v5, v4, "Supply bytes: %{public}s", v8, 0xCu);
    sub_86FC(v9);
  }

  v13 = *(v0 + 64);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_15;
    }

    v16 = *(*(v0 + 56) + 16);
    v17 = *(*(v0 + 56) + 24);
    v18 = __OFSUB__(v17, v16);
    v15 = v17 - v16;
    if (!v18)
    {
LABEL_13:
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }

    __break(1u);
LABEL_11:
    v19 = *(v0 + 56);
    v20 = *(v0 + 60);
    v18 = __OFSUB__(v20, v19);
    LODWORD(v15) = v20 - v19;
    if (v18)
    {
      __break(1u);
      return withCheckedContinuation<A>(isolation:function:_:)();
    }

    v15 = v15;
    goto LABEL_13;
  }

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = BYTE6(v13);
LABEL_16:
  v21 = *(v0 + 72);
  v22 = *(v21 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount);
  v23 = (v21 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount);
  do
  {
    v24 = v22 + v15;
    if (__CFADD__(v22, v15))
    {
      __break(1u);
      goto LABEL_34;
    }

    *(v0 + 80) = v24;
    v25 = v22;
    atomic_compare_exchange_strong(v23, &v25, v24);
    v26 = v25 == v22;
    v22 = v25;
  }

  while (!v26);
  v27 = *(v0 + 72);
  v28 = *(v27 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_totalBytesExpectedCount);
  *(v0 + 88) = v28;
  v29 = atomic_load((v27 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_minimumChunkSize));
  if (v24 >= v29 || v24 >= v28)
  {
    v31 = v24 >= v28;
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v34 = *(v0 + 56);
    v35 = swift_task_alloc();
    *(v0 + 96) = v35;
    *(v35 + 16) = v32;
    *(v35 + 24) = v34;
    *(v35 + 32) = v33;
    *(v35 + 40) = v31;
    v36 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v37 = swift_task_alloc();
    *(v0 + 104) = v37;
    *v37 = v0;
    v37[1] = sub_B830;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  v39 = *(v0 + 56);
  v38 = *(v0 + 64);
  v40 = sub_14F48();
  sub_8944(v39, v38);
  v41 = sub_14DC8();
  sub_8748(v39, v38);
  if (os_log_type_enabled(v41, v40))
  {
    v44 = *(v0 + 56);
    v43 = *(v0 + 64);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59[0] = v46;
    *v45 = 136446722;
    v47 = sub_14C18();
    v49 = sub_119EC(v47, v48, v59);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v29;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v24;
    _os_log_impl(&dword_0, v41, v40, "Buffering %{public}s until the minimum chunk size of %lu bytes (currently at %llu bytes) is reached…", v45, 0x20u);
    sub_86FC(v46);
  }

  v50 = *(v0 + 64);
  v51 = *(v0 + 56);
  v52 = (*(v0 + 72) + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk);
  os_unfair_lock_lock(v52);
  *(v0 + 40) = &type metadata for Data;
  *(v0 + 48) = &protocol witness table for Data;
  *(v0 + 16) = v51;
  *(v0 + 24) = v50;
  v53 = sub_1221C((v0 + 16), &type metadata for Data);
  v54 = *v53;
  v55 = v53[1];
  sub_8944(v51, v50);
  sub_126F4(v54, v55);
  sub_86FC((v0 + 16));
  os_unfair_lock_unlock(v52);
  v56 = *(v0 + 8);
  v57 = *(v0 + 80) >= *(v0 + 88);

  return v56(v57);
}

uint64_t sub_B830()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_B948, 0, 0);
}

uint64_t sub_B948()
{
  v1 = (v0[9] + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setExtractionProgress:v0[10] / v0[11]];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v1);
  v3 = v0[1];
  v4 = v0[10] >= v0[11];

  return v3(v4);
}

uint64_t sub_BA24()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20B80);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Suspend stream", v4, 2u);
  }

  v5 = sub_14DC8();
  v6 = sub_14F88();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Suspending the stream pipeline…", v7, 2u);
  }

  v8 = *(v0 + 16);

  v9 = atomic_load((v8 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount));
  v10 = (v8 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock(v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setExtractionProgress:v9 / *(*(v0 + 16) + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_totalBytesExpectedCount)];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v10);
  v12 = *(v0 + 8);

  return v12(v9);
}

uint64_t sub_BC18()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = swift_getObjectType();

  return _swift_task_switch(sub_BC88, 0, 0);
}

uint64_t sub_BC88()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  *(v0 + 48) = sub_77D4(v1, qword_20B80);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Finish stream", v4, 2u);
  }

  v10 = *(v0 + 32);

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v10;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = sub_75AC(&qword_20DD0, &qword_15DA0);
  *v7 = v0;
  v7[1] = sub_BE54;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x74536873696E6966, 0xEE0029286D616572, sub_12044, v5, v8);
}

uint64_t sub_BE54()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_C090;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_BF70;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_BF70()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_14DC8();
  v5 = sub_14F88();
  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = 2;
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "The stream pipeline finished.";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = 12;
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    v9 = "The stream pipeline finished after processing %ld bytes.";
  }

  _os_log_impl(&dword_0, v4, v5, v9, v8, v7);

LABEL_7:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_C090()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = sub_14F68();
  swift_errorRetain();
  v5 = sub_14DC8();

  if (os_log_type_enabled(v5, v4))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v4, "The stream couldn’t be finished: %{public}@", v7, 0xCu);
    sub_78B8(v8, &qword_20A30, &qword_15D70);
  }

  v10 = v0[9];

  swift_willThrow();
  v11 = v0[1];
  v12 = v0[9];

  return v11();
}

uint64_t sub_C1E8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_C208, 0, 0);
}

uint64_t sub_C208()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_14DE8();
  sub_77D4(v2, qword_20B80);
  v3 = sub_14F58();
  swift_errorRetain();
  v4 = sub_14DC8();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v3, "Terminate stream with error: %{public}@", v6, 0xCu);
    sub_78B8(v7, &qword_20A30, &qword_15D70);
  }

  v9 = v0[3];

  swift_errorRetain();
  v10 = sub_14DC8();
  v11 = sub_14F88();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_0, v10, v11, "Finishing the stream pipeline by throwing the error “%{public}@”…", v13, 0xCu);
    sub_78B8(v14, &qword_20A30, &qword_15D70);
  }

  v16 = v0[3];
  v17 = v0[4];

  v0[2] = v16;
  swift_errorRetain();
  sub_75AC(&unk_20DC0, &qword_15D68);
  sub_14F38();
  v18 = v0[1];

  return v18();
}

uint64_t sub_C4B8()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20B60);
  sub_77D4(v0, qword_20B60);
  return sub_14DD8();
}

uint64_t sub_C538(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_75AC(&unk_20CF0, &qword_15D00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  if (qword_208B8 != -1)
  {
    swift_once();
  }

  v11 = sub_14DE8();
  sub_77D4(v11, qword_20B60);
  v12 = sub_14F58();
  v13 = *(v4 + 16);
  v13(v10, v36, v3);
  v14 = sub_14DC8();
  v32 = v12;
  v15 = os_log_type_enabled(v14, v12);
  v34 = v13;
  v35 = v4;
  v33 = v4 + 16;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v1;
    v18 = v17;
    v37 = v17;
    *v16 = 136446210;
    v13(v8, v10, v3);
    v19 = sub_14E78();
    v21 = v20;
    (*(v4 + 8))(v10, v3);
    v22 = sub_119EC(v19, v21, &v37);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v14, v32, "Attach: %{public}s", v16, 0xCu);
    sub_86FC(v18);
    v2 = v31;
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  v23 = *v2;
  v24 = sub_14DC8();
  v25 = sub_14F88();
  v26 = os_log_type_enabled(v24, v25);
  if (v23 == 1)
  {
    if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v24, v25, "Resuming the continuation immediately…", v27, 2u);
    }

    v37 = 0;
    v38 = 1;
    return sub_14EE8();
  }

  else
  {
    if (v26)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v24, v25, "Storing the continuation for later…", v29, 2u);
    }

    v30 = *(type metadata accessor for ProcessingPipeline.Finisher(0) + 20);
    sub_78B8(&v2[v30], &qword_20C78, &qword_15CE8);
    v34(&v2[v30], v36, v3);
    return (*(v35 + 56))(&v2[v30], 0, 1, v3);
  }
}

void sub_C914(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_75AC(&qword_20C78, &qword_15CE8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  if (qword_208B8 != -1)
  {
    swift_once();
  }

  v10 = sub_14DE8();
  sub_77D4(v10, qword_20B60);
  v11 = sub_14F58();
  v12 = sub_14DC8();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v12, v11, "Finish", v13, 2u);
  }

  if (*v2)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_14DC8();
    v15 = sub_14F88();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Finishing…", v16, 2u);
    }

    *v3 = 1;
    v17 = *(type metadata accessor for ProcessingPipeline.Finisher(0) + 20);
    sub_12ED8(&v3[v17], v9, &qword_20C78, &qword_15CE8);
    v18 = sub_75AC(&unk_20CF0, &qword_15D00);
    v19 = *(v18 - 8);
    (*(v19 + 56))(&v3[v17], 1, 1, v18);
    if ((*(v19 + 48))(v9, 1, v18) == 1)
    {
      sub_78B8(v9, &qword_20C78, &qword_15CE8);
    }

    else
    {
      v20 = a1;
      v21 = a2 & 1;
      sub_14EE8();
      (*(v19 + 8))(v9, v18);
    }
  }
}

void sub_CBDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_75AC(&qword_20C78, &qword_15CE8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  if (qword_208B8 != -1)
  {
    swift_once();
  }

  v8 = sub_14DE8();
  sub_77D4(v8, qword_20B60);
  v9 = sub_14F58();
  swift_errorRetain();
  v10 = sub_14DC8();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_0, v10, v9, "Finish throwing: %{public}@", v11, 0xCu);
    sub_78B8(v12, &qword_20A30, &qword_15D70);
  }

  if (*v1)
  {
    __break(1u);
  }

  else
  {
    swift_errorRetain();
    v14 = sub_14DC8();
    v15 = sub_14F88();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&dword_0, v14, v15, "Finishing by throwing the error “%{public}@”…", v16, 0xCu);
      sub_78B8(v17, &qword_20A30, &qword_15D70);
    }

    *v2 = 1;
    v19 = *(type metadata accessor for ProcessingPipeline.Finisher(0) + 20);
    sub_12ED8(&v2[v19], v7, &qword_20C78, &qword_15CE8);
    v20 = sub_75AC(&unk_20CF0, &qword_15D00);
    v21 = *(v20 - 8);
    (*(v21 + 56))(&v2[v19], 1, 1, v20);
    if ((*(v21 + 48))(v7, 1, v20) == 1)
    {
      sub_78B8(v7, &qword_20C78, &qword_15CE8);
    }

    else
    {
      v22[1] = a1;
      swift_errorRetain();
      sub_14ED8();
      (*(v21 + 8))(v7, v20);
    }
  }
}

uint64_t sub_CF88()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20B80);
  sub_77D4(v0, qword_20B80);
  return sub_14DD8();
}

id sub_D008(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_75AC(&qword_20E50, &qword_15E98);
  v164 = *(v7 - 8);
  v165 = v7;
  v8 = *(v164 + 64);
  __chkstk_darwin(v7);
  v161 = &v145 - v9;
  v10 = sub_75AC(&unk_20DC0, &qword_15D68);
  v162 = *(v10 - 8);
  v163 = v10;
  v11 = *(v162 + 64);
  __chkstk_darwin(v10);
  v160 = &v145 - v12;
  v159 = sub_75AC(&qword_20E20, &qword_15E78);
  v158 = *(v159 - 8);
  v13 = *(v158 + 64);
  __chkstk_darwin(v159);
  v157 = &v145 - v14;
  v15 = sub_75AC(&qword_20DF0, &qword_15E38);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v152 = &v145 - v17;
  v18 = sub_75AC(&qword_20E58, &qword_15EA0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v145 - v20;
  v156 = sub_14C78();
  v155 = *(v156 - 8);
  v22 = *(v155 + 64);
  __chkstk_darwin(v156);
  v24 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ProcessingPipeline.Finisher(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_extractionMemoryFootprint] = 52428800;
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bytesProcessedCount] = 0;
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_minimumChunkSize] = 0;
  v30 = &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk];
  *v30 = 0;
  *(v30 + 8) = xmmword_15C00;
  v168 = (v30 + 8);
  v31 = &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher];
  *v29 = 0;
  v32 = *(v27 + 28);
  v33 = sub_75AC(&unk_20CF0, &qword_15D00);
  (*(*(v33 - 8) + 56))(&v29[v32], 1, 1, v33);
  *v31 = 0;
  v34 = *(sub_75AC(&qword_20C70, &qword_15CA0) + 28);
  v35 = sub_75AC(&qword_20E60, &qword_15EA8);
  bzero(&v31[v34], *(*(v35 - 8) + 64));
  v166 = v34;
  v167 = v31;
  v36 = &v31[v34];
  v37 = a1;
  sub_12CB4(v29, v36, type metadata accessor for ProcessingPipeline.Finisher);
  v38 = &Dispatcher;
  v153 = v24;
  v154 = v21;
  if (a1)
  {
    v39 = qword_208C8;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = sub_14DE8();
    sub_77D4(v40, qword_20B80);
    v41 = sub_14F58();

    swift_unknownObjectRetain();
    v42 = sub_14DC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v172[0] = swift_slowAlloc();
      *v43 = 136446466;
      v44 = sub_14E28();
      v45 = v37;
      v46 = a2;
      v48 = v47;

      v49 = sub_119EC(v44, v48, v172);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2082;
      swift_getObjectType();
      v173 = v46;
      swift_unknownObjectRetain();
      v50 = sub_14E78();
      v52 = sub_119EC(v50, v51, v172);

      *(v43 + 14) = v52;
      v37 = v45;
      v38 = &Dispatcher;
      _os_log_impl(&dword_0, v42, v41, "Init options: %{public}s delegate: %{public}s", v43, 0x16u);
      swift_arrayDestroy();

LABEL_10:

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_208C8 != -1)
    {
      swift_once();
    }

    v53 = sub_14DE8();
    sub_77D4(v53, qword_20B80);
    v54 = sub_14F58();
    swift_unknownObjectRetain();
    v42 = sub_14DC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v42, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v172[0] = v56;
      *v55 = 136446210;
      swift_getObjectType();
      v173 = a2;
      swift_unknownObjectRetain();
      v57 = sub_14E78();
      v59 = sub_119EC(v57, v58, v172);

      *(v55 + 4) = v59;
      v37 = 0;
      v38 = &Dispatcher;
      _os_log_impl(&dword_0, v42, v54, "Init delegate: %{public}s", v55, 0xCu);
      sub_86FC(v56);

      goto LABEL_10;
    }
  }

LABEL_12:

  if (v38[281].count != -1)
  {
    swift_once();
  }

  v60 = sub_14DE8();
  v61 = sub_77D4(v60, qword_20B80);
  v62 = sub_14DC8();
  v63 = sub_14F88();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_0, v62, v63, "Initializing the processing pipeline…", v64, 2u);
  }

  swift_unknownObjectWeakInit();
  v65 = swift_unknownObjectWeakAssign();
  LODWORD(v172[0]) = 0;
  v172[1] = 0;
  sub_12D1C(v65, &v172[1]);
  v66 = &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference];
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference] = *v172;
  if (!v37)
  {
    v100 = sub_14F78();
    v101 = sub_14DC8();
    if (os_log_type_enabled(v101, v100))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      v103 = "No options dictionary was provided.";
      goto LABEL_41;
    }

LABEL_42:

    swift_unknownObjectRelease();
LABEL_43:
    sub_12D54((v66 + 8));
    sub_12D84(v168);
    sub_12DD8(v167 + v166, type metadata accessor for ProcessingPipeline.Finisher);
    v104 = *&stru_20.segname[(swift_isaMask & *v3) + 8];
    v105 = *&stru_20.segname[(swift_isaMask & *v3) + 12];
    swift_deallocPartialClassInstance();
    return 0;
  }

  v67 = sub_14DC8();
  v68 = sub_14F88();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v172[0] = v150;
    *v69 = 136446210;
    v70 = sub_14E28();
    v151 = v61;
    v72 = v37;
    v73 = sub_119EC(v70, v71, v172);
    v61 = v151;

    *(v69 + 4) = v73;
    v37 = v72;
    _os_log_impl(&dword_0, v67, v68, "An options dictionary, “%{public}s”, was provided.", v69, 0xCu);
    sub_86FC(v150);
  }

  v170 = 0xD000000000000017;
  v171 = 0x80000000000165D0;
  sub_14FC8();
  if (!*(v37 + 16) || (v74 = sub_12370(v172), (v75 & 1) == 0))
  {

    sub_12E38(v172);
    goto LABEL_37;
  }

  sub_1204C(*(v37 + 56) + 32 * v74, &v173);
  sub_12E38(v172);
  v76 = sub_12E8C();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_37:
    v100 = sub_14F78();
    v101 = sub_14DC8();
    if (os_log_type_enabled(v101, v100))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      v103 = "A number value for the key “TotalBytesExpectedCount” wasn’t found in the options dictionary.";
LABEL_41:
      _os_log_impl(&dword_0, v101, v100, v103, v102, 2u);

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v150 = v170;
  v77 = [v170 unsignedLongLongValue];
  *&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_totalBytesExpectedCount] = v77;
  v170 = 0x4965736E6563694CLL;
  v171 = 0xEB000000006F666ELL;
  sub_14FC8();
  if (!*(v37 + 16) || (v78 = sub_12370(v172), (v79 & 1) == 0))
  {

    sub_12E38(v172);
    goto LABEL_46;
  }

  sub_1204C(*(v37 + 56) + 32 * v78, &v173);
  sub_12E38(v172);

  sub_75AC(&unk_20E70, &unk_15EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    v107 = sub_14DC8();
    v108 = sub_14F88();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_0, v107, v108, "A string-keyed dictionary value wasn’t found for the key “LicenseInfo” in the options dictionary.", v109, 2u);
    }

    v110 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_licenseInfo;
    v111 = type metadata accessor for ProcessingPipeline.LicenseInfo(0);
    (*(*(v111 - 8) + 56))(&v3[v110], 1, 1, v111);
    goto LABEL_49;
  }

  v149 = v76;
  v80 = v61;
  v81 = v170;
  v151 = v80;
  v82 = sub_14DC8();
  v83 = sub_14F88();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_0, v82, v83, "License info was provided in the options dictionary.", v84, 2u);
  }

  if (!*(v81 + 16) || (v85 = sub_122F8(0x6361507465737341, 0xEB0000000044496BLL), (v86 & 1) == 0) || (sub_1204C(*(v81 + 56) + 32 * v85, v172), (swift_dynamicCast() & 1) == 0))
  {

    v118 = sub_14F78();
    v119 = sub_14DC8();
    if (!os_log_type_enabled(v119, v118))
    {
LABEL_53:

      swift_unknownObjectRelease();
      goto LABEL_43;
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = "A string value for the key “AssetPackID” wasn’t found in the license-info dictionary.";
LABEL_52:
    _os_log_impl(&dword_0, v119, v118, v121, v120, 2u);

    goto LABEL_53;
  }

  v87 = v174;
  if (!*(v81 + 16) || (v88 = v173, v89 = sub_122F8(0x496E6F6973726556, 0xE900000000000044), (v90 & 1) == 0) || (sub_1204C(*(v81 + 56) + 32 * v89, v172), (swift_dynamicCast() & 1) == 0))
  {

    v118 = sub_14F78();
    v119 = sub_14DC8();
    if (!os_log_type_enabled(v119, v118))
    {
      goto LABEL_53;
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    v121 = "A string value for the key “VersionID” wasn’t found in the license-info dictionary.";
    goto LABEL_52;
  }

  v145 = v88;
  v148 = v87;
  v147 = v66;
  v91 = v174;
  v92 = v154;
  v146 = v173;
  sub_14C58();
  v93 = v155;
  v94 = v156;
  if ((*(v155 + 48))(v92, 1, v156) == 1)
  {

    sub_78B8(v92, &qword_20E58, &qword_15EA0);
    v95 = sub_14F78();

    v96 = sub_14DC8();

    if (os_log_type_enabled(v96, v95))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v172[0] = v98;
      *v97 = 136446210;
      v99 = sub_119EC(v146, v91, v172);

      *(v97 + 4) = v99;
      _os_log_impl(&dword_0, v96, v95, "The version-ID string “%{public}s” isn’t a valid UUID.", v97, 0xCu);
      sub_86FC(v98);
    }

    else
    {
    }

    swift_unknownObjectRelease();
LABEL_70:
    v66 = v147;
    goto LABEL_43;
  }

  v122 = *(v93 + 32);
  v123 = v153;
  v122(v153, v92, v94);
  if (!*(v81 + 16) || (v124 = sub_122F8(0xD000000000000011, 0x80000000000165F0), (v125 & 1) == 0) || (sub_1204C(*(v81 + 56) + 32 * v124, v172), (swift_dynamicCast() & 1) == 0))
  {

    v137 = sub_14F78();
    v138 = sub_14DC8();
    v139 = os_log_type_enabled(v138, v137);
    v140 = v155;
    if (v139)
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_0, v138, v137, "A number value for the key “InternalVersionID” wasn’t found in the license-info dictionary.", v141, 2u);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v140 + 8))(v123, v156);
    goto LABEL_70;
  }

  v154 = v173;
  if (!*(v81 + 16) || (v126 = sub_122F8(0x6C646E7542707041, 0xEB00000000444965), (v127 & 1) == 0))
  {

    goto LABEL_73;
  }

  sub_1204C(*(v81 + 56) + 32 * v126, v172);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_73:

    v142 = sub_14F78();
    v143 = sub_14DC8();
    if (os_log_type_enabled(v143, v142))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_0, v143, v142, "A string value for the key “AppBundleID” wasn’t found in the license-info dictionary.", v144, 2u);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v155 + 8))(v123, v156);
    goto LABEL_70;
  }

  v167 = v174;
  v168 = v173;
  v128 = type metadata accessor for ProcessingPipeline.LicenseInfo(0);
  v129 = v155;
  v130 = v152;
  v131 = v156;
  (*(v155 + 16))(&v152[v128[5]], v123, v156);
  v132 = v154;
  v133 = [v154 unsignedLongLongValue];

  (*(v129 + 8))(v123, v131);
  v134 = v148;
  *v130 = v145;
  v130[1] = v134;
  *(v130 + v128[6]) = v133;
  v135 = (v130 + v128[7]);
  v136 = v167;
  *v135 = v168;
  v135[1] = v136;
  (*(*(v128 - 1) + 56))(v130, 0, 1, v128);
  sub_12ED8(v130, &v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_licenseInfo], &qword_20DF0, &qword_15E38);
LABEL_49:
  sub_75AC(&qword_20C30, &qword_15C70);
  v113 = v164;
  v112 = v165;
  v114 = v161;
  (*(v164 + 104))(v161, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v165);
  v115 = v157;
  v116 = v160;
  sub_14F18();

  (*(v113 + 8))(v114, v112);
  (*(v158 + 32))(&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_stream], v115, v159);
  (*(v162 + 32))(&v3[OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_streamContinuation], v116, v163);
  v169.receiver = v3;
  v169.super_class = ObjectType;
  v117 = objc_msgSendSuper2(&v169, "init");
  swift_unknownObjectRelease();
  return v117;
}

id sub_E6A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v3 = sub_14DE8();
  sub_77D4(v3, qword_20B80);
  v4 = sub_14F58();
  v5 = sub_14DC8();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v5, v4, "Deinit", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_E93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v54 = a2;
  v2 = sub_14D38();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  v4 = __chkstk_darwin(v2);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v47 - v6;
  v51 = sub_75AC(&qword_20E30, &qword_15E80);
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v9;
  v10 = sub_75AC(&qword_20E38, &qword_15E88);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v47 - v12;
  v14 = sub_75AC(&qword_20DF8, &qword_15E40);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v47 - v16;
  v18 = sub_14D78();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v47 - v24;
  v50 = sub_75AC(&qword_20E40, &qword_15E90);
  v26 = *(v50 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v50);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v57 = &v47 - v31;
  sub_83D4(v49, v17, &qword_20DF8, &qword_15E40);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_78B8(v17, &qword_20DF8, &qword_15E40);
    (*(v7 + 56))(v13, 1, 1, v51);
    sub_14CF8();
    sub_14D18();
    sub_78B8(v13, &qword_20E38, &qword_15E88);
  }

  else
  {
    v32 = *(v19 + 32);
    v47 = v25;
    v32(v25, v17, v18);
    v33 = sub_14CF8();
    (*(v19 + 16))(v23, v25, v18);
    v60[0] = sub_14CE8();
    v61 = v60;

    v58 = v33;
    v63 = &protocol witness table for DecryptionProcessor;
    v34 = v48;
    sub_14D08();

    v35 = *(v7 + 16);
    v49 = v30;
    v36 = v51;
    v35(v13, v34, v51);
    (*(v7 + 56))(v13, 0, 1, v36);
    sub_14D18();

    sub_78B8(v13, &qword_20E38, &qword_15E88);
    v37 = v36;
    v30 = v49;
    (*(v7 + 8))(v34, v37);
    (*(v19 + 8))(v47, v18);
  }

  v38 = v52;
  sub_14D28();
  v39 = v57;
  v40 = v50;
  (*(v26 + 16))(v30, v57, v50);
  v61 = v30;
  v42 = v55;
  v41 = v56;
  v43 = v53;
  (*(v55 + 16))(v53, v38, v56);
  v62 = v43;
  v60[0] = v40;
  v60[1] = v41;
  v58 = sub_12C6C(&qword_20E48, &qword_20E40, &qword_15E90);
  v59 = &protocol witness table for DecompressionProcessor;
  sub_14D08();
  v44 = *(v42 + 8);
  v44(v38, v41);
  v45 = *(v26 + 8);
  v45(v39, v40);
  v44(v43, v41);
  return (v45)(v30, v40);
}

uint64_t sub_EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_stream;
  v10 = *(&async function pointer to dispatch thunk of StreamPipeline.process<A>(_:) + 1);
  v15 = (&async function pointer to dispatch thunk of StreamPipeline.process<A>(_:) + async function pointer to dispatch thunk of StreamPipeline.process<A>(_:));
  v11 = swift_task_alloc();
  v7[5] = v11;
  v12 = sub_75AC(&qword_20E20, &qword_15E78);
  v13 = sub_12C6C(&qword_20E28, &qword_20E20, &qword_15E78);
  *v11 = v7;
  v11[1] = sub_F0D8;

  return v15(a5 + v9, v12, v13);
}

uint64_t sub_F0D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_F3B4;
  }

  else
  {
    v5 = sub_F1EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_F1EC()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20B80);
  v2 = sub_14DC8();
  v3 = sub_14F88();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "The stream pipeline successfully processed %ld bytes.", v5, 0xCu);
  }

  v6 = v0[6];
  v7 = v0[2];

  v8 = (v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher));
  v9 = v8 + *(sub_75AC(&qword_20C70, &qword_15CA0) + 28);
  sub_C914(v6, 0);
  os_unfair_lock_unlock(v8);
  v10 = (v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference);
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_delegateReference));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = v0[3];
    v14 = v0[4];
    v15 = sub_14E58();
    [v12 extractionCompleteAtArchivePath:v15];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v10);
  v16 = v0[1];

  return v16();
}

uint64_t sub_F3B4()
{
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_14DE8();
  sub_77D4(v2, qword_20B80);
  v3 = sub_14F68();
  swift_errorRetain();
  v4 = sub_14DC8();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v3, "The stream pipeline failed: %{public}@", v6, 0xCu);
    sub_78B8(v7, &qword_20A30, &qword_15D70);
  }

  v9 = v0[7];
  v10 = v0[2];

  v11 = (v10 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock(v11);
  v12 = v11 + *(sub_75AC(&qword_20C70, &qword_15CA0) + 28);
  sub_CBDC(v9);
  os_unfair_lock_unlock(v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_F590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_75AC(&qword_20A08, &qword_15A20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_83D4(a3, v27 - v11, &qword_20A08, &qword_15A20);
  v13 = sub_14F08();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_78B8(v12, &qword_20A08, &qword_15A20);
  }

  else
  {
    sub_14EF8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_14EC8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_14E88() + 32;
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

uint64_t sub_F9D8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_14E68();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_3940;

  return sub_99AC(v5, v7);
}

void sub_FAAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v26 = a5;
  v24[1] = a2;
  v28 = a1;
  v8 = sub_75AC(&qword_20C30, &qword_15C70);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = v24 - v11;
  v27 = sub_75AC(&qword_20DE0, &qword_15E00);
  v25 = *(v27 - 8);
  v13 = *(v25 + 64);
  __chkstk_darwin(v27);
  v15 = v24 - v14;
  v16 = a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk;
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_bufferedChunk));
  v24[0] = OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_streamContinuation;
  v18 = *(v16 + 16);
  *&v30 = *(v16 + 8);
  v17 = v30;
  *(&v30 + 1) = v18;
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a3;
  v29[1] = a4;
  v19 = sub_1221C(v29, &type metadata for Data);
  v20 = *v19;
  v21 = v19[1];
  sub_8944(v17, v18);
  sub_8944(a3, a4);
  sub_126F4(v20, v21);
  sub_86FC(v29);
  v22 = *(v9 + 72);
  *v12 = v30;
  v12[16] = v26;
  v23 = sub_75AC(&qword_20DE8, &qword_15E08);
  (*(*(v23 - 8) + 16))(&v12[v22], v28, v23);
  sub_75AC(&unk_20DC0, &qword_15D68);
  sub_14F28();
  (*(v25 + 8))(v15, v27);
  sub_8748(*(v16 + 8), *(v16 + 16));
  *(v16 + 8) = xmmword_15C00;
  os_unfair_lock_unlock(v16);
}

uint64_t sub_FEA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = sub_14C38();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_4258;

  return sub_B330(v7, v9);
}

uint64_t sub_100F0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_52EC;

  return sub_BA04();
}

uint64_t sub_10198(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC41ManagedBackgroundAssetsProcessingPipeline18ProcessingPipeline_finisher));
  v4 = v3 + *(sub_75AC(&qword_20C70, &qword_15CA0) + 28);
  sub_C538(a1);
  os_unfair_lock_unlock(v3);
  if (qword_208C8 != -1)
  {
    swift_once();
  }

  v5 = sub_14DE8();
  sub_77D4(v5, qword_20B80);
  v6 = sub_14DC8();
  v7 = sub_14F88();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Finishing the stream pipeline…", v8, 2u);
  }

  sub_75AC(&unk_20DC0, &qword_15D68);
  return sub_14F38();
}

uint64_t sub_10464(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_61F4;

  return sub_BC18();
}

uint64_t sub_10694(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_71A8;

  return sub_C1E8(v6);
}

void sub_10788()
{
  sub_10A88(319, &qword_20C20, type metadata accessor for ProcessingPipeline.LicenseInfo, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_109F8(319, &qword_20C28, &type metadata accessor for AsyncThrowingStream);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_109F8(319, &qword_20C40, &type metadata accessor for AsyncThrowingStream.Continuation);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10A88(319, &qword_20C48, type metadata accessor for ProcessingPipeline.Finisher, &type metadata accessor for Mutex);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_109B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_109F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_109B0(&qword_20C30, &qword_15C70);
    v7 = sub_109B0(&qword_20C38, &qword_15C78);
    v8 = a3(a1, v6, v7, &protocol self-conformance witness table for Error);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_10B0C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C50, &qword_15C80);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10B3C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C58, &qword_15C88);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10B6C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C60, &qword_15C90);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10B9C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C68, &qword_15C98);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10BCC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_75AC(&qword_20C70, &qword_15CA0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10BFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10C1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10C68(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_75AC(&qword_20C78, &qword_15CE8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10D38(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_75AC(&qword_20C78, &qword_15CE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10DE4()
{
  sub_10E60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10E60()
{
  if (!qword_20CE8)
  {
    sub_109B0(&unk_20CF0, &qword_15D00);
    v0 = sub_14F98();
    if (!v1)
    {
      atomic_store(v0, &qword_20CE8);
    }
  }
}

uint64_t sub_10ED8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_14C78();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10F98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_14C78();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1103C()
{
  result = sub_14C78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_110CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_10694(v2, v3, v4);
}

uint64_t sub_11180(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_11278;

  return v7(a1);
}

uint64_t sub_11278()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_11370(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_99A8;

  return v7();
}

uint64_t sub_11458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_8850;

  return v8();
}

uint64_t sub_11540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_75AC(&qword_20A08, &qword_15A20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_83D4(a3, v25 - v11, &qword_20A08, &qword_15A20);
  v13 = sub_14F08();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_78B8(v12, &qword_20A08, &qword_15A20);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_14EF8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_14EC8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_14E88() + 32;
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

    sub_78B8(a3, &qword_20A08, &qword_15A20);

    return v23;
  }

LABEL_8:
  sub_78B8(a3, &qword_20A08, &qword_15A20);
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

uint64_t sub_1183C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_13020;

  return v7(a1);
}

uint64_t sub_11934(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_99A8;

  return sub_1183C(a1, v5);
}

uint64_t sub_119EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_11AB8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_1204C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_86FC(v11);
  return v7;
}

unint64_t sub_11AB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_11BC4(a5, a6);
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
    result = sub_14FF8();
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

char *sub_11BC4(uint64_t a1, unint64_t a2)
{
  v4 = sub_11C10(a1, a2);
  sub_11D40(&off_1C9E0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_11C10(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_11E2C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_14FF8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_14EB8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_11E2C(v10, 0);
        result = sub_14FD8();
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

uint64_t sub_11D40(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_11EA0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_11E2C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_75AC(&qword_20DD8, &qword_15DA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11EA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_75AC(&qword_20DD8, &qword_15DA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_11F98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_10464(v2, v3);
}

uint64_t sub_1204C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_120AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_99A8;

  return sub_100F0(v2, v3);
}

uint64_t sub_12158()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_8850;

  return sub_FEA0(v2, v3, v4);
}

void *sub_1221C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_12260(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_14C78();
  sub_12F9C(&qword_20A68, &type metadata accessor for UUID);
  v5 = sub_14E38();

  return sub_123B4(a1, v5);
}

unint64_t sub_122F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_15118();
  sub_14E98();
  v6 = sub_15138();

  return sub_12574(a1, a2, v6);
}

unint64_t sub_12370(uint64_t a1)
{
  v2 = v1;
  v4 = sub_14FA8(*(v2 + 40));

  return sub_1262C(a1, v4);
}

unint64_t sub_123B4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_14C78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_12F9C(&unk_20E80, &type metadata accessor for UUID);
      v16 = sub_14E48();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_12574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_15098())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1262C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_12F40(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_14FB8();
      sub_12E38(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_126F4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_14C28();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1282C(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1282C(v3, v4);
  }

  return sub_14C28();
}

uint64_t sub_1282C(uint64_t a1, uint64_t a2)
{
  result = sub_14AC8();
  if (!result || (result = sub_14AE8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_14AD8();
      return sub_14C28();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_128C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_99A8;

  return sub_F9D8(v2, v3, v4);
}

uint64_t sub_12998()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_129E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_99A8;

  return sub_EFB0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_12AC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12AFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_99A8;

  return sub_11180(a1, v5);
}

uint64_t sub_12BB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_8850;

  return sub_11180(a1, v5);
}

uint64_t sub_12C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_109B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_12CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_12E8C()
{
  result = qword_20E68;
  if (!qword_20E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_20E68);
  }

  return result;
}

uint64_t sub_12ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_75AC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_12F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ProcessingPipelineError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ProcessingPipelineError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_13120()
{
  sub_15118();
  sub_15128(0);
  return sub_15138();
}

Swift::Int sub_1318C()
{
  sub_15118();
  sub_15128(0);
  return sub_15138();
}

unint64_t sub_1321C()
{
  result = qword_20E90;
  if (!qword_20E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E90);
  }

  return result;
}

void sub_13270()
{
  if (qword_208D8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20E98);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Start if necessary", v4, 2u);
  }

  v5 = *(v0 + 16);
  oslog = sub_14DC8();
  v6 = sub_14F88();
  v7 = os_log_type_enabled(oslog, v6);
  if (v5)
  {
    if (v7)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, oslog, v6, "App License Delivery was previously started.", v8, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, oslog, v6, "Starting App License Delivery…", v9, 2u);
    }

    sub_14D98();
    *(v0 + 16) = 1;
  }
}

uint64_t sub_13538()
{
  type metadata accessor for AppLicenseDeliverySession();
  swift_allocObject();
  result = sub_135F4();
  qword_217C0 = result;
  return result;
}

uint64_t sub_13574()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20E98);
  sub_77D4(v0, qword_20E98);
  return sub_14DD8();
}

uint64_t sub_135F4()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_208D8 != -1)
  {
    swift_once();
  }

  v2 = sub_14DE8();
  sub_77D4(v2, qword_20E98);
  v3 = sub_14F58();
  v4 = sub_14DC8();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v4, v3, "Init", v5, 2u);
  }

  return v1;
}

uint64_t sub_136D4()
{
  sub_14DB8();
  sub_14DA8();
  sub_13AE8();
  sub_14EC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_208D8 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20E98);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Deinit", v4, 2u);
  }

  v5 = *(v0 + 16);
  v6 = sub_14DC8();
  v7 = sub_14F88();
  v8 = os_log_type_enabled(v6, v7);
  if (v5 == 1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v6, v7, "Stopping App License Delivery…", v9, 2u);
    }

    sub_14D88();
  }

  else
  {
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v6, v7, "App License Delivery wasn’t previously started.", v10, 2u);
    }
  }

  return v0;
}

uint64_t sub_139F0(uint64_t a1)
{
  sub_136D4();

  return _swift_deallocClassInstance(a1, 17, 7);
}

uint64_t sub_13A30()
{
  sub_14DB8();
  sub_14DA8();
  sub_13AE8();
  v1 = sub_14EC8();
  v3 = v2;

  return _swift_task_deinitOnExecutor(v0, sub_139F0, v1, v3, 0);
}

unint64_t sub_13AE8()
{
  result = qword_20E00;
  if (!qword_20E00)
  {
    sub_14DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_20E00);
  }

  return result;
}

uint64_t sub_13B40(uint64_t a1)
{
  v2 = sub_75AC(&qword_20A30, &qword_15D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_13BA8()
{
  if (qword_208E0 != -1)
  {
    swift_once();
  }

  v1 = sub_14DE8();
  sub_77D4(v1, qword_20F50);
  v2 = sub_14F58();
  v3 = sub_14DC8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v3, v2, "Helper", v4, 2u);
  }

  sub_75AC(&qword_20F68, &qword_16030);
  result = sub_14C98();
  if (!result)
  {
    v6 = sub_14DC8();
    v7 = sub_14F88();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Connecting to the helper service…", v8, 2u);
    }

    sub_14D68();
    result = sub_14D58();
    if (!v0)
    {
      return sub_14C88();
    }
  }

  return result;
}

uint64_t sub_13D54()
{
  v0 = sub_14DE8();
  sub_843C(v0, qword_20F50);
  sub_77D4(v0, qword_20F50);
  return sub_14DD8();
}

uint64_t sub_13DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_13E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_14C78();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ResumptionInfo()
{
  result = qword_20FC8;
  if (!qword_20FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13F28()
{
  result = sub_14C78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_13FB4()
{
  v1 = *v0;
  sub_15118();
  sub_15128(v1);
  return sub_15138();
}

Swift::Int sub_14028()
{
  v1 = *v0;
  sub_15118();
  sub_15128(v1);
  return sub_15138();
}

uint64_t sub_1406C()
{
  if (*v0)
  {
    result = 0x74657366666FLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_14098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_15098() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_15098();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_14180(uint64_t a1)
{
  v2 = sub_146F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_141BC(uint64_t a1)
{
  v2 = sub_146F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_141F8(void *a1)
{
  v3 = v1;
  v5 = sub_75AC(&qword_21018, &qword_160A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1221C(a1, a1[3]);
  sub_146F8();
  sub_15158();
  v13[15] = 0;
  sub_14C78();
  sub_1480C(&qword_21020);
  sub_15058();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ResumptionInfo() + 20));
    v13[14] = 1;
    sub_15068();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1439C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = sub_14C78();
  v24 = *(v26 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75AC(&qword_21000, &qword_160A0);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v27);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ResumptionInfo();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1221C(a1, a1[3]);
  sub_146F8();
  sub_15148();
  if (v2)
  {
    return sub_86FC(a1);
  }

  v22 = v13;
  v15 = v24;
  v29 = 0;
  sub_1480C(&qword_21010);
  v16 = v26;
  sub_15038();
  v17 = v22;
  (*(v15 + 32))(v22, v6, v16);
  v28 = 1;
  v18 = sub_15048();
  v19 = v17;
  v20 = *(v10 + 20);
  (*(v25 + 8))(v9, v27);
  *(v19 + v20) = v18;
  sub_1474C(v19, v23);
  sub_86FC(a1);
  return sub_147B0(v19);
}

unint64_t sub_146F8()
{
  result = qword_21008;
  if (!qword_21008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21008);
  }

  return result;
}

uint64_t sub_1474C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResumptionInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_147B0(uint64_t a1)
{
  v2 = type metadata accessor for ResumptionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1480C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_14C78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResumptionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResumptionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_149C4()
{
  result = qword_21028;
  if (!qword_21028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21028);
  }

  return result;
}

unint64_t sub_14A1C()
{
  result = qword_21030;
  if (!qword_21030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21030);
  }

  return result;
}

unint64_t sub_14A74()
{
  result = qword_21038;
  if (!qword_21038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21038);
  }

  return result;
}