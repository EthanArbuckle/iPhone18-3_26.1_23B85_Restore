void sub_1B1B7BCE8(char a1)
{
  if (a1)
  {
    sub_1B1B7CC30();
  }

  else
  {
    sub_1B1B7BE10();
  }
}

id sub_1B1B7BD0C()
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v0 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v0, qword_1ED9A9120);
  v1 = sub_1B1C2C888();
  sub_1B1C2D0D8();
  v2 = OUTLINED_FUNCTION_9_22();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_45_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_29_8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  return sub_1B1B7CC30();
}

void sub_1B1B7BE10()
{
  v2 = v0;
  v105 = sub_1B1C2C9F8();
  v3 = OUTLINED_FUNCTION_7(v105);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v104 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v99 - v10;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v11 = sub_1B1C2C8A8();
  v107 = __swift_project_value_buffer(v11, qword_1ED9A9120);
  v12 = sub_1B1C2C888();
  v13 = sub_1B1C2D098();
  v14 = OUTLINED_FUNCTION_9_22();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_45_0();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B1A8A000, v12, v13, "#AVSBAR waitUntilFinished", v16, 2u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  os_unfair_lock_lock((v2 + 56));
  sub_1B1B7C94C((v2 + 60), v2, &aBlock);
  if (v1)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock((v2 + 56));
  value = aBlock.value;
  if (!aBlock.value)
  {
    v80 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v81 = OUTLINED_FUNCTION_37_0();
    if (os_log_type_enabled(v81, v82))
    {
      OUTLINED_FUNCTION_45_0();
      v83 = swift_slowAlloc();
      *v83 = 0;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v84, v85, v86, v87, v83, 2u);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    return;
  }

  sub_1B1B7B1DC();
  v18 = *(v2 + 48);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B1B7DA90;
  *(v19 + 24) = v2;
  v118 = sub_1B1AF77FC;
  v119 = v19;
  aBlock.value = MEMORY[0x1E69E9820];
  *&aBlock.timescale = 1107296256;
  aBlock.epoch = sub_1B1AAC018;
  v117 = &block_descriptor_21;
  v20 = _Block_copy(&aBlock);
  v21 = v18;

  dispatch_sync(v21, v20);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_39:
    os_unfair_lock_unlock((v2 + 56));
    __break(1u);
    return;
  }

  v100 = 0;
  [*(v2 + 40) currentTime];
  v22 = aBlock.value;
  v99 = *&aBlock.timescale;
  epoch = aBlock.epoch;
  v23 = *(v2 + 64);
  v24 = value;
  v26 = *(v2 + 72);
  v25 = *(v2 + 76);
  v102 = v5;
  v27 = *(v2 + 80);
  v113 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B1C37D90;
  v29 = objc_opt_self();
  *&v101 = v113;
  v112 = v23;
  aBlock.value = v23;
  v30 = v22;
  v111 = v26;
  aBlock.timescale = v26;
  aBlock.flags = v25;
  v110 = v25;
  v109 = v27;
  aBlock.epoch = v27;
  *(v28 + 32) = [v29 valueWithCMTime_];
  sub_1B1A8E474(0, &qword_1ED9A8D78, 0x1E696B098);
  v31 = sub_1B1C2CE68();

  v113 = v2;
  v32 = *(v2 + 48);
  OUTLINED_FUNCTION_17();
  v33 = swift_allocObject();
  *(v33 + 16) = v24;
  v118 = sub_1B1B7DA94;
  v119 = v33;
  aBlock.value = MEMORY[0x1E69E9820];
  *&aBlock.timescale = 1107296256;
  v34 = v99;
  aBlock.epoch = sub_1B1A95870;
  v117 = &block_descriptor_6_4;
  v35 = _Block_copy(&aBlock);
  v36 = v32;
  v106 = v24;

  v37 = v101;
  v38 = [v101 addBoundaryTimeObserverForTimes:v31 queue:v36 usingBlock:v35];
  _Block_release(v35);

  v39 = HIDWORD(v99);
  sub_1B1C2D3F8();
  v40 = epoch;
  swift_unknownObjectRelease();
  v41 = 0;
  ++v102;
  *&v42 = 134218240;
  v101 = v42;
  while (2)
  {
    HIDWORD(v99) = v41;
    v43 = v30;
    v44 = v39;
LABEL_10:
    v45 = v40;
    do
    {
      do
      {
        aBlock.value = v43;
        aBlock.timescale = v34;
        aBlock.flags = v44;
        aBlock.epoch = v45;
        OUTLINED_FUNCTION_41_2();
        time2.value = v46;
        OUTLINED_FUNCTION_46_6();
        time2.timescale = v48;
        time2.flags = v47;
        time2.epoch = v109;
        if ((CMTimeCompare(&aBlock, &time2) & 0x80000000) == 0)
        {
          OUTLINED_FUNCTION_22_10();
          goto LABEL_34;
        }

        v49 = sub_1B1C2C888();
        v50 = sub_1B1C2D0D8();
        v51 = OUTLINED_FUNCTION_9_22();
        if (os_log_type_enabled(v51, v52))
        {
          OUTLINED_FUNCTION_34_8();
          v53 = swift_slowAlloc();
          *v53 = v101;
          aBlock.value = v43;
          aBlock.timescale = v34;
          aBlock.flags = v44;
          aBlock.epoch = v45;
          *(v53 + 4) = CMTimeGetSeconds(&aBlock);
          *(v53 + 12) = 2048;
          OUTLINED_FUNCTION_41_2();
          aBlock.value = v54;
          OUTLINED_FUNCTION_46_6();
          aBlock.timescale = v56;
          aBlock.flags = v55;
          aBlock.epoch = v109;
          *(v53 + 14) = CMTimeGetSeconds(&aBlock);
          _os_log_impl(&dword_1B1A8A000, v49, v50, "#AVSBAR Waiting for synchronizer finishing playing between current %f sec and until %f sec", v53, 0x16u);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }

        v57 = v104;
        sub_1B1C2C9E8();
        v58 = v103;
        sub_1B1C2CA18();
        v59 = *v102;
        v36 = v105;
        (*v102)(v57, v105);
        sub_1B1C2D1A8();
        v59(v58, v36);
        sub_1B1C2C978();
        OUTLINED_FUNCTION_22_10();
        if ((v60 & 1) != 0 || !*(v36 + 120))
        {
          goto LABEL_34;
        }

        [*(v36 + 40) currentTime];
        v61 = aBlock.value;
        timescale = aBlock.timescale;
        flags = aBlock.flags;
        v40 = aBlock.epoch;
        [*(v36 + 40) rate];
        epoch = v61;
        if (v64 <= 0.0)
        {
          v65 = timescale;
          break;
        }

        aBlock.value = v61;
        aBlock.timescale = timescale;
        aBlock.flags = flags;
        aBlock.epoch = v40;
        time2.value = v43;
        time2.timescale = v34;
        time2.flags = v44;
        time2.epoch = v45;
        v45 = v40;
        v43 = v61;
        v65 = timescale;
        v34 = timescale;
        v44 = flags;
      }

      while (CMTimeCompare(&aBlock, &time2) > 0);
      sub_1B1B77DD8();
      OUTLINED_FUNCTION_17_16();
      switch(v66)
      {
        case 1:
          break;
        case 2:
          OUTLINED_FUNCTION_19_9();
          OUTLINED_FUNCTION_44_3();
          break;
        case 3:
          OUTLINED_FUNCTION_25_8();
          break;
        default:

          OUTLINED_FUNCTION_39_7();
          goto LABEL_10;
      }

      v36 = sub_1B1C2D7A8();

      OUTLINED_FUNCTION_39_7();
      v45 = v40;
    }

    while ((v36 & 1) != 0);
    v39 = flags;
    v41 = HIDWORD(v99) + 1;
    v34 = v65;
    v30 = epoch;
    if (HIDWORD(v99) != 4)
    {
      continue;
    }

    break;
  }

  v67 = v113;

  v68 = sub_1B1C2C888();
  v69 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v68, v69))
  {
    OUTLINED_FUNCTION_34_8();
    v70 = swift_slowAlloc();
    *v70 = v101;
    [v67[5] rate];
    *(v70 + 4) = v71;
    *(v70 + 12) = 2048;
    aBlock.value = v30;
    aBlock.timescale = v65;
    aBlock.flags = flags;
    aBlock.epoch = v40;
    *(v70 + 14) = CMTimeGetSeconds(&aBlock);
    _os_log_impl(&dword_1B1A8A000, v68, v69, "#AVSBAR Synchronizer is stalled with rate %f at time %f.", v70, 0x16u);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v73 = *MEMORY[0x1E696A578];
  v74 = sub_1B1C2CB58();
  v75 = MEMORY[0x1E69E6158];
  *(inited + 32) = v74;
  *(inited + 40) = v76;
  *(inited + 72) = v75;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x80000001B1C501C0;
  v77 = sub_1B1C2CAB8();
  v78 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v79 = sub_1B1B1AE5C(0xD00000000000001BLL, 0x80000001B1C50100, 2, v77);
  sub_1B1B77D88(v79);
  v36 = v67;
LABEL_34:
  v88 = v100;
  v89 = *(v36 + 40);
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  v90 = v89;
  [v90 removeTimeObserver_];

  swift_unknownObjectRelease();
  v91 = *(v36 + 120);
  *(v36 + 120) = 0;

  sub_1B1B7CC30();
  if (!v88)
  {
    v92 = *(v36 + 16);
    if (v92)
    {
      v93 = v92;
      v94 = [v93 description];
      v95 = sub_1B1C2CB58();
      v97 = v96;

      sub_1B1A9EC9C();
      swift_allocError();
      *v98 = 14;
      *(v98 + 8) = v95;
      *(v98 + 16) = v97;
      swift_willThrow();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v115);
}

void sub_1B1B7C94C(_BYTE *a1@<X0>, uint64_t a2@<X1>, dispatch_semaphore_t *a3@<X8>)
{
  v3 = *a1;
  switch(*a1)
  {
    case 3:
      goto LABEL_6;
    default:
      v7 = sub_1B1C2D7A8();

      if (v7)
      {
        goto LABEL_7;
      }

      if (v3 > 1)
      {
LABEL_6:
      }

      else
      {
        v8 = sub_1B1C2D7A8();

        if ((v8 & 1) == 0)
        {
          v9 = dispatch_semaphore_create(0);
          v10 = *(a2 + 120);
          *(a2 + 120) = v9;
          v11 = v9;

          *a1 = 2;
          goto LABEL_8;
        }
      }

LABEL_7:
      v9 = 0;
LABEL_8:
      *a3 = v9;
      return;
  }
}

uint64_t sub_1B1B7CAEC()
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v0 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v0, qword_1ED9A9120);
  v1 = sub_1B1C2C888();
  v2 = sub_1B1C2D098();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B1A8A000, v1, v2, "#AVSBAR Synchronizer reached endTime", v3, 2u);
    MEMORY[0x1B2739FD0](v3, -1, -1);
  }

  return sub_1B1C2D1C8();
}

void sub_1B1B7CBD0()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    *(v0 + 120) = 0;
    v2 = v1;
    sub_1B1C2D1C8();
  }
}

id sub_1B1B7CC30()
{
  v2 = v0;
  v3 = sub_1B1C2C988();
  v4 = OUTLINED_FUNCTION_7(v3);
  v79 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v77 = v9 - v8;
  v78 = sub_1B1C2C9D8();
  v10 = OUTLINED_FUNCTION_7(v78);
  v76 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v75 = sub_1B1C2C998();
  v17 = OUTLINED_FUNCTION_7(v75);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v25 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v25, qword_1ED9A9120);
  v26 = sub_1B1C2C888();
  v27 = sub_1B1C2D0D8();
  v28 = OUTLINED_FUNCTION_9_22();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_45_0();
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1B1A8A000, v26, v27, "Stopping synchronizer and renderer", v30, 2u);
    v31 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v31);
  }

  sub_1B1B77E0C(3);
  sub_1B1B7CBD0();
  [*(v2 + 32) stopRequestingMediaData];

  v32 = sub_1B1C2C888();
  v33 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_23_6();
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    [*(v2 + 40) currentTime];
    *(v34 + 4) = CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v35, v36, v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v41);
  }

  v42 = mach_absolute_time();
  v43 = *(v2 + 40);
  v44 = *(MEMORY[0x1E6960CC0] + 16);
  time.value = *MEMORY[0x1E6960CC0];
  *&time.timescale = *(MEMORY[0x1E6960CC0] + 8);
  time.epoch = v44;
  [v43 setRate:&time time:0.0];
  v45 = mach_absolute_time();
  if (v45 < v42)
  {
    __break(1u);
  }

  else
  {
    v1 = (v45 - v42);
    if (qword_1ED9A5270 == -1)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_9:
  if (*&qword_1ED9AA500 * v1 > 0.25)
  {
    v46 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v47 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_23_6();
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = *&qword_1ED9AA500 * v1;
      OUTLINED_FUNCTION_12_15();
      _os_log_impl(v50, v51, v52, v53, v54, v55);
      v56 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v56);
    }
  }

  v57 = sub_1B1C2C888();
  v58 = sub_1B1C2D098();

  if (os_log_type_enabled(v57, v58))
  {
    OUTLINED_FUNCTION_23_6();
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    [*(v2 + 40) rate];
    *(v59 + 4) = v60;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v61, v62, v63, v64, v59, 0xCu);
    v65 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v65);
  }

  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  (*(v19 + 104))(v24, *MEMORY[0x1E69E7F90], v75);
  v66 = sub_1B1C2D168();
  (*(v19 + 8))(v24, v75);
  v82 = sub_1B1B7DA9C;
  v83 = v2;
  OUTLINED_FUNCTION_2_2();
  *&time.timescale = 1107296256;
  OUTLINED_FUNCTION_25_0();
  time.epoch = v67;
  v81 = &block_descriptor_9_1;
  v68 = _Block_copy(&time);

  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_15_15();
  sub_1B1A979CC(v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v16, v77, v68);
  _Block_release(v68);

  v71 = *(v79 + 8);
  v72 = OUTLINED_FUNCTION_42_0();
  v73(v72);
  (*(v76 + 8))(v16, v78);

  return sub_1B1B7D614();
}

void sub_1B1B7D264(uint64_t a1)
{
  [*(a1 + 32) flush];
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D098();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "#AVSBAR renderer was flushed", v5, 2u);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  *(a1 + 112) = 0;
  v6 = qword_1EB762980;
  if (qword_1EB762980)
  {
    v7 = *(a1 + 40);
    sub_1B1A8E474(0, &qword_1EB7629C8, 0x1E6988140);
    v8 = v7;
    v9 = v6;
    v10 = sub_1B1C2D248();

    if (v10)
    {
      byte_1EB762988 = 0;
    }
  }
}

void sub_1B1B7D3B0()
{
  v2 = v0;
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v3 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v3, qword_1ED9A9120);
  v4 = sub_1B1C2C888();
  sub_1B1C2D0D8();
  v5 = OUTLINED_FUNCTION_19();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_45_0();
    v7 = swift_slowAlloc();
    *v7 = 0;
    OUTLINED_FUNCTION_23_11();
    _os_log_impl(v8, v9, v10, v11, v7, 2u);
    v12 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v12);
  }

  sub_1B1B77E0C(0);

  v13 = sub_1B1C2C888();
  v14 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_23_6();
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    [*(v2 + 40) currentTime];
    *(v15 + 4) = CMTimeGetSeconds(&time);
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v16, v17, v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_10_0();
    MEMORY[0x1B2739FD0](v22);
  }

  v23 = mach_absolute_time();
  [*(v2 + 40) setRate_];
  v24 = mach_absolute_time();
  if (v24 < v23)
  {
    __break(1u);
  }

  else
  {
    v1 = (v24 - v23);
    if (qword_1ED9A5270 == -1)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_9:
  if (*&qword_1ED9AA500 * v1 > 0.25)
  {
    v25 = sub_1B1C2C888();
    sub_1B1C2D0B8();
    v26 = OUTLINED_FUNCTION_37_0();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_23_6();
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *&qword_1ED9AA500 * v1;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v29, v30, v31, v32, v28, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }
  }
}

id sub_1B1B7D614()
{
  v1 = v0;
  [*(v0 + 24) lock];
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  if (sub_1B1A9547C(*(v0 + 104)))
  {
    if (qword_1ED9A9288 != -1)
    {
LABEL_21:
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v2 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v2, qword_1ED9A9120);

    v3 = sub_1B1C2C888();
    sub_1B1C2D0D8();
    v4 = OUTLINED_FUNCTION_9_22();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_23_6();
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = sub_1B1A9547C(*(v1 + 104));

      OUTLINED_FUNCTION_29_8();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    else
    {
    }

    v12 = *(v1 + 104);
    v13 = sub_1B1A9547C(v12);

    for (i = 0; v13 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B2738A20](i, v12);
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v15 = *(v12 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v16 = *(v15 + 72);
      if (v16)
      {
        v17 = *(v15 + 80);

        v16(0);

        sub_1B1A949B4(v16);
      }

      else
      {
      }
    }

    v18 = *(v1 + 104);
    *(v1 + 104) = MEMORY[0x1E69E7CC0];
  }

  return [*(v1 + 24) unlock];
}

uint64_t sub_1B1B7D830(_DWORD *a1, _DWORD *a2)
{
  [*(v2 + 32) volume];
  *a1 = v5;
  [*(v2 + 32) volume];
  *a2 = v6;
  return 1;
}

uint64_t sub_1B1B7D90C@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X8>)
{
  result = AVSBARPlayback.__allocating_init(audioSessionId:asbd:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1B1B7D9EC(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1B1B7DA2C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t dispatch thunk of AVSBARPlayback.asbd.setter(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_44();
  v3 = *(v2 + 504);
  v8 = v4;
  v6 = *(v5 + 24);
  v9 = *(v5 + 8);
  v10 = v6;
  return v3(&v8);
}

uint64_t dispatch thunk of AVSBARPlayback.__allocating_init(audioSessionId:asbd:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 600);
  v6 = *a2;
  v4 = *(a2 + 3);
  v7 = *(a2 + 1);
  v8 = v4;
  return v3(a1, &v6);
}

uint64_t getEnumTagSinglePayload for AudioPlaybackServiceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AudioPlaybackServiceState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B1B7E0E0()
{
  result = qword_1EB7629B8;
  if (!qword_1EB7629B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7629B8);
  }

  return result;
}

uint64_t sub_1B1B7E134(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, id *a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v9 = WORD2(a2);
  v8 = a2;
  if (a3 > BYTE6(a2))
  {
    __break(1u);
  }

  result = sub_1B1B7A1A0(*MEMORY[0x1E695E480], &v7 + a3, a4, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t Realtime_V1_ClientEventType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xA;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B1B7E25C@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_ClientEventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B7E290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C340();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Realtime_V1_ClientEvent.sessionUpdate.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v13);
  OUTLINED_FUNCTION_6_21();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_27_11();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  sub_1B1C2C5B8();
  v11 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  if (qword_1EB761678 != -1)
  {
    OUTLINED_FUNCTION_41_3();
  }

  *(v0 + v11) = qword_1EB762A18;
}

uint64_t Realtime_V1_SessionUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B1C2C5B8();
  v2 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  if (qword_1EB761678 != -1)
  {
    OUTLINED_FUNCTION_41_3();
  }

  *(a1 + v2) = qword_1EB762A18;
}

void Realtime_V1_ClientEvent.sessionUpdate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_SessionUpdate(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_3_21();
  if (v15)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_27_11();
      OUTLINED_FUNCTION_67_2();
      sub_1B1B884C0();
      goto LABEL_9;
    }

    sub_1B1B8844C();
  }

  sub_1B1C2C5B8();
  v17 = *(v9 + 20);
  if (qword_1EB761678 != -1)
  {
    OUTLINED_FUNCTION_41_3();
  }

  *(v11 + v17) = qword_1EB762A18;

LABEL_9:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.inputAudioBufferAppend.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v12);
  OUTLINED_FUNCTION_6_21();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_31_7();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(0);
  return OUTLINED_FUNCTION_112_0(v11);
}

uint64_t sub_1B1B7E7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_126();
  sub_1B1B88514();
  return a7(v7);
}

void Realtime_V1_ClientEvent.inputAudioBufferAppend.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_3_21();
  if (v15)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    v17 = v11 + *(v9 + 28);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.inputAudioBufferCommit.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v13);
  OUTLINED_FUNCTION_6_21();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_30_9();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v11 = OUTLINED_FUNCTION_10_23();
  v12 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(v11);
  return OUTLINED_FUNCTION_106_0(v12);
}

void Realtime_V1_ClientEvent.inputAudioBufferCommit.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_3_21();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.inputAudioBufferClear.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v13);
  OUTLINED_FUNCTION_6_21();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v11 = OUTLINED_FUNCTION_10_23();
  v12 = type metadata accessor for Realtime_V1_InputAudioBufferClear(v11);
  return OUTLINED_FUNCTION_106_0(v12);
}

uint64_t sub_1B1B7EDA8()
{
  v0 = OUTLINED_FUNCTION_10_23();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_106_0(v2);
}

void Realtime_V1_ClientEvent.inputAudioBufferClear.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferClear(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_3_21();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.conversationItemCreate.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v17);
  OUTLINED_FUNCTION_6_21();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  OUTLINED_FUNCTION_112_0(v11);
  v12 = *(v11 + 32);
  type metadata accessor for Realtime_V1_Item(0);
  v13 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Realtime_V1_ConversationItemCreate.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  OUTLINED_FUNCTION_112_0(v0);
  v1 = *(v0 + 32);
  type metadata accessor for Realtime_V1_Item(0);
  v2 = OUTLINED_FUNCTION_55_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Realtime_V1_ClientEvent.conversationItemCreate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreate(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_3_21();
  if (v15)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    v17 = v11 + *(v9 + 28);
    sub_1B1C2C5B8();
    v18 = *(v9 + 32);
    type metadata accessor for Realtime_V1_Item(0);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.conversationItemTruncate.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v13);
  OUTLINED_FUNCTION_6_21();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_26_7();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  v12 = v0 + *(type metadata accessor for Realtime_V1_ConversationItemTruncate(0) + 36);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_ConversationItemTruncate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  v2 = a1 + *(type metadata accessor for Realtime_V1_ConversationItemTruncate(0) + 36);
  return sub_1B1C2C5B8();
}

void Realtime_V1_ClientEvent.conversationItemTruncate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ConversationItemTruncate(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_3_21();
  if (v15)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v11 + 48) = 0;
    v17 = v11 + *(v9 + 36);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.conversationItemDelete.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v12);
  OUTLINED_FUNCTION_6_21();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_25_9();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = type metadata accessor for Realtime_V1_ConversationItemDelete(0);
  return OUTLINED_FUNCTION_112_0(v11);
}

uint64_t sub_1B1B7F618@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  v2 = a1(0);
  return OUTLINED_FUNCTION_112_0(v2);
}

void Realtime_V1_ClientEvent.conversationItemDelete.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ConversationItemDelete(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_3_21();
  if (v15)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    v17 = v11 + *(v9 + 28);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_25_9();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.responseCreate.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v18);
  OUTLINED_FUNCTION_6_21();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_24_5();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v11 = OUTLINED_FUNCTION_10_23();
  v12 = type metadata accessor for Realtime_V1_ResponseCreate(v11);
  OUTLINED_FUNCTION_106_0(v12);
  v13 = *(v12 + 28);
  type metadata accessor for Realtime_V1_Response(0);
  v14 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Realtime_V1_ResponseCreate.init()()
{
  v0 = OUTLINED_FUNCTION_10_23();
  v1 = type metadata accessor for Realtime_V1_ResponseCreate(v0);
  OUTLINED_FUNCTION_106_0(v1);
  v2 = *(v1 + 28);
  type metadata accessor for Realtime_V1_Response(0);
  v3 = OUTLINED_FUNCTION_55_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ClientEvent.responseCreate.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseCreate(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_3_21();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    v16 = *(v9 + 28);
    type metadata accessor for Realtime_V1_Response(0);
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ClientEvent.responseCancel.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v13);
  OUTLINED_FUNCTION_6_21();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_21_11();
      OUTLINED_FUNCTION_49();
      return sub_1B1B884C0();
    }

    sub_1B1B8844C();
  }

  v11 = OUTLINED_FUNCTION_10_23();
  v12 = type metadata accessor for Realtime_V1_ResponseCancel(v11);
  return OUTLINED_FUNCTION_106_0(v12);
}

uint64_t sub_1B1B7FBBC()
{
  sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
  v1 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  OUTLINED_FUNCTION_67_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_79_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void Realtime_V1_ClientEvent.responseCancel.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseCancel(v8);
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_3_21();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_7:
    OUTLINED_FUNCTION_44_4();
    OUTLINED_FUNCTION_77_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B1B8844C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_67_2();
  sub_1B1B884C0();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1B7FDC8()
{
  OUTLINED_FUNCTION_25();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_33();
    sub_1B1B88514();
    sub_1B1A90C20(v5, &qword_1EB762AE0, &qword_1B1C3A110);
    sub_1B1B884C0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_79_1();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B1B8844C();
  }

  else
  {
    sub_1B1A90C20(**v0, &qword_1EB762AE0, &qword_1B1C3A110);
    sub_1B1B884C0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_79_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_26_1();

  free(v13);
}

uint64_t Realtime_V1_ClientEvent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_ClientEvent(v0) + 20);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_ClientEvent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ClientEvent(v0) + 20);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_ClientEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ClientEvent(v0) + 20);
  return OUTLINED_FUNCTION_85_0();
}

void static Realtime_V1_ClientEvent.OneOf_Event.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v142 = v1;
  v143 = v2;
  v128 = type metadata accessor for Realtime_V1_ResponseCancel(0);
  v3 = OUTLINED_FUNCTION_45(v128);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_1();
  v138 = v6;
  v7 = OUTLINED_FUNCTION_81_1();
  v8 = type metadata accessor for Realtime_V1_ResponseCreate(v7);
  v9 = OUTLINED_FUNCTION_23(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_1();
  v136 = v12;
  v13 = OUTLINED_FUNCTION_81_1();
  v125 = type metadata accessor for Realtime_V1_ConversationItemDelete(v13);
  v14 = OUTLINED_FUNCTION_45(v125);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_1();
  v137 = v17;
  v18 = OUTLINED_FUNCTION_81_1();
  v19 = type metadata accessor for Realtime_V1_ConversationItemTruncate(v18);
  v20 = OUTLINED_FUNCTION_23(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_1();
  v132 = v23;
  v24 = OUTLINED_FUNCTION_81_1();
  v25 = type metadata accessor for Realtime_V1_ConversationItemCreate(v24);
  v26 = OUTLINED_FUNCTION_23(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_1();
  v131 = v29;
  v30 = OUTLINED_FUNCTION_81_1();
  v127 = type metadata accessor for Realtime_V1_InputAudioBufferClear(v30);
  v31 = OUTLINED_FUNCTION_45(v127);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_14_1();
  v135 = v34;
  v35 = OUTLINED_FUNCTION_81_1();
  v126 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(v35);
  v36 = OUTLINED_FUNCTION_45(v126);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_1();
  v133 = v39;
  v40 = OUTLINED_FUNCTION_81_1();
  v124 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(v40);
  v41 = OUTLINED_FUNCTION_45(v124);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_14_1();
  v134 = v44;
  v45 = OUTLINED_FUNCTION_81_1();
  v129 = type metadata accessor for Realtime_V1_SessionUpdate(v45);
  v46 = OUTLINED_FUNCTION_45(v129);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14_1();
  v130 = v49;
  v50 = OUTLINED_FUNCTION_81_1();
  v51 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(v50);
  v52 = OUTLINED_FUNCTION_45(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v140 = &v123 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16_0();
  v57 = MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  v141 = &v123 - v58;
  OUTLINED_FUNCTION_16_0();
  v60 = MEMORY[0x1EEE9AC00](v59);
  v62 = (&v123 - v61);
  v63 = MEMORY[0x1EEE9AC00](v60);
  MEMORY[0x1EEE9AC00](v63);
  v139 = &v123 - v64;
  OUTLINED_FUNCTION_16_0();
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v123 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v123 - v69;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v123 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE8, &qword_1B1C3A118);
  OUTLINED_FUNCTION_23(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_35();
  v79 = *(v78 + 56);
  sub_1B1B88514();
  sub_1B1B88514();
  OUTLINED_FUNCTION_67_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 1)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_31_7();
      v91 = v134;
      sub_1B1B884C0();
      OUTLINED_FUNCTION_96_0();
      v94 = v81 && v92 == v93;
      if (v94 || (sub_1B1C2D7A8()) && (OUTLINED_FUNCTION_91_1())
      {
        v95 = *(v70 + 4) == *(v91 + 32) && *(v70 + 5) == *(v91 + 40);
        if (v95 || (sub_1B1C2D7A8() & 1) != 0)
        {
          v96 = *(v124 + 28);
          sub_1B1C2C5C8();
          OUTLINED_FUNCTION_0_29();
          sub_1B1B8C2F8(v97, v98);
          OUTLINED_FUNCTION_90_0();
        }
      }

      goto LABEL_70;
    case 2u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 2)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_30_9();
      v80 = v133;
      sub_1B1B884C0();
      v81 = *v68 == *v80 && *(v68 + 1) == *(v80 + 8);
      if (v81 || (sub_1B1C2D7A8()) && (sub_1B1B1AFA0(*(v68 + 2), v68[24], *(v80 + 16), *(v80 + 24)))
      {
        v82 = *(v126 + 24);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v83, v84);
        sub_1B1C2CB18();
      }

      OUTLINED_FUNCTION_73_3();
      sub_1B1B8844C();
      OUTLINED_FUNCTION_43_0();
      goto LABEL_71;
    case 3u:
      OUTLINED_FUNCTION_1_32();
      v85 = v139;
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 3)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_29_9();
      v86 = v135;
      sub_1B1B884C0();
      v87 = *v85 == *v86 && *(v85 + 1) == *(v86 + 8);
      if (v87 || (sub_1B1C2D7A8()) && (sub_1B1B1AFA0(*(v85 + 2), v85[24], *(v86 + 16), *(v86 + 24)))
      {
        v88 = *(v127 + 24);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v89, v90);
        sub_1B1C2CB18();
      }

      goto LABEL_70;
    case 4u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 4)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_28_7();
      sub_1B1B884C0();
      static Realtime_V1_ConversationItemCreate.== infix(_:_:)();
      sub_1B1B8844C();
      goto LABEL_71;
    case 5u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 5)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_26_7();
      v99 = v132;
      sub_1B1B884C0();
      static Realtime_V1_ConversationItemTruncate.== infix(_:_:)(v62, v99);
      sub_1B1B8844C();
      goto LABEL_71;
    case 6u:
      OUTLINED_FUNCTION_1_32();
      v100 = v141;
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 6)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_25_9();
      v101 = v137;
      sub_1B1B884C0();
      OUTLINED_FUNCTION_96_0();
      v104 = v81 && v102 == v103;
      if (v104 || (sub_1B1C2D7A8()) && (OUTLINED_FUNCTION_91_1())
      {
        v105 = *(v100 + 4) == *(v101 + 32) && *(v100 + 5) == *(v101 + 40);
        if (v105 || (sub_1B1C2D7A8() & 1) != 0)
        {
          v106 = *(v125 + 28);
          sub_1B1C2C5C8();
          OUTLINED_FUNCTION_0_29();
          sub_1B1B8C2F8(v107, v108);
          OUTLINED_FUNCTION_90_0();
        }
      }

      goto LABEL_70;
    case 7u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 7)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_24_5();
      sub_1B1B884C0();
      static Realtime_V1_ResponseCreate.== infix(_:_:)();
      sub_1B1B8844C();
      goto LABEL_71;
    case 8u:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0() != 8)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_21_11();
      sub_1B1B884C0();
      OUTLINED_FUNCTION_96_0();
      v111 = v81 && v109 == v110;
      if (v111 || (sub_1B1C2D7A8()) && (OUTLINED_FUNCTION_91_1())
      {
        v112 = *(v128 + 24);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v113, v114);
        OUTLINED_FUNCTION_90_0();
      }

      goto LABEL_70;
    default:
      OUTLINED_FUNCTION_1_32();
      sub_1B1B88514();
      if (OUTLINED_FUNCTION_94_0())
      {
LABEL_61:
        sub_1B1B8844C();
        sub_1B1A90C20(v0, &qword_1EB762AE8, &qword_1B1C3A118);
      }

      else
      {
        OUTLINED_FUNCTION_27_11();
        v115 = v130;
        sub_1B1B884C0();
        v116 = *(v129 + 20);
        if (*&v73[v116] == *(v115 + v116) || (v117 = *&v73[v116], , , v118 = OUTLINED_FUNCTION_43_0(), v120 = sub_1B1B88FA8(v118, v119), , , v120))
        {
          sub_1B1C2C5C8();
          OUTLINED_FUNCTION_0_29();
          sub_1B1B8C2F8(v121, v122);
          sub_1B1C2CB18();
        }

LABEL_70:
        sub_1B1B8844C();
LABEL_71:
        sub_1B1B8844C();
        OUTLINED_FUNCTION_2_29();
        sub_1B1B8844C();
      }

      OUTLINED_FUNCTION_26_1();
      return;
  }
}

uint64_t static Realtime_V1_SessionUpdate.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_51_4();
  v3 = *(type metadata accessor for Realtime_V1_SessionUpdate(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {
    v6 = *(v1 + v3);

    v7 = sub_1B1B88FA8(v4, v5);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_29();
  sub_1B1B8C2F8(v8, v9);
  OUTLINED_FUNCTION_49();
  return sub_1B1C2CB18() & 1;
}

void static Realtime_V1_ConversationItemCreate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_51_4();
  v4 = type metadata accessor for Realtime_V1_Item(v3);
  v5 = OUTLINED_FUNCTION_45(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_82();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B00, &qword_1B1C3A128);
  OUTLINED_FUNCTION_45(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35();
  v16 = *v1 == *v0 && v1[1] == *(v0 + 8);
  if (!v16 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_98_0();
  if (*(v0 + 24) == 1)
  {
    switch(v18)
    {
      case 1:
        if (v17 == 1)
        {
          goto LABEL_11;
        }

        break;
      case 2:
        if (v17 == 2)
        {
          goto LABEL_11;
        }

        break;
      case 3:
        if (v17 == 3)
        {
          goto LABEL_11;
        }

        break;
      case 4:
        if (v17 == 4)
        {
          goto LABEL_11;
        }

        break;
      case 5:
        if (v17 == 5)
        {
          goto LABEL_11;
        }

        break;
      case 6:
        if (v17 == 6)
        {
          goto LABEL_11;
        }

        break;
      case 7:
        if (v17 == 7)
        {
          goto LABEL_11;
        }

        break;
      case 8:
        if (v17 == 8)
        {
          goto LABEL_11;
        }

        break;
      case 9:
        if (v17 == 9)
        {
          goto LABEL_11;
        }

        break;
      default:
        if (!v17)
        {
          goto LABEL_11;
        }

        break;
    }

    goto LABEL_25;
  }

  if (v17 != v18)
  {
    goto LABEL_25;
  }

LABEL_11:
  OUTLINED_FUNCTION_95_0();
  v21 = v16 && v19 == v20;
  if (v21 || (sub_1B1C2D7A8() & 1) != 0)
  {
    v35 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
    v22 = *(v35 + 32);
    v23 = *(v12 + 48);
    sub_1B1B8D9D8(v1 + v22, v2, &qword_1EB762AF8, &qword_1B1C3A120);
    sub_1B1B8D9D8(v0 + v22, v2 + v23, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_36_9(v2);
    if (v16)
    {
      OUTLINED_FUNCTION_36_9(v2 + v23);
      if (v16)
      {
        sub_1B1A90C20(v2, &qword_1EB762AF8, &qword_1B1C3A120);
        goto LABEL_27;
      }
    }

    else
    {
      v24 = OUTLINED_FUNCTION_126();
      sub_1B1B8D9D8(v24, v25, v26, v27);
      OUTLINED_FUNCTION_36_9(v2 + v23);
      if (!v28)
      {
        OUTLINED_FUNCTION_4_21();
        sub_1B1B884C0();
        v29 = OUTLINED_FUNCTION_3_3();
        v31 = static Realtime_V1_Item.== infix(_:_:)(v29, v30);
        sub_1B1B8844C();
        sub_1B1B8844C();
        sub_1B1A90C20(v2, &qword_1EB762AF8, &qword_1B1C3A120);
        if ((v31 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_27:
        v32 = *(v35 + 28);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v33, v34);
        OUTLINED_FUNCTION_42();
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_71_1();
      sub_1B1B8844C();
    }

    sub_1B1A90C20(v2, &qword_1EB762B00, &qword_1B1C3A128);
  }

LABEL_25:
  OUTLINED_FUNCTION_26_1();
}

uint64_t static Realtime_V1_ConversationItemTruncate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_1B1C2D7A8() & 1) != 0)
  {
    OUTLINED_FUNCTION_98_0();
    if (*(v2 + 24) == 1)
    {
      switch(v8)
      {
        case 1:
          if (v7 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v7 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v7 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v7 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v7 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v7 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v7 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v7 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v7 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v7)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v7 == v8)
    {
LABEL_11:
      OUTLINED_FUNCTION_95_0();
      v11 = v6 && v9 == v10;
      if (v11 || (sub_1B1C2D7A8()) && *(v3 + 48) == *(v2 + 48) && *(v3 + 52) == *(v2 + 52))
      {
        v12 = *(type metadata accessor for Realtime_V1_ConversationItemTruncate(0) + 36);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v13, v14);
        return OUTLINED_FUNCTION_42() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B1B811B8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v7 = v7 && v5 == v6;
  if (v7 || (sub_1B1C2D7A8() & 1) != 0)
  {
    OUTLINED_FUNCTION_98_0();
    if (*(v3 + 24) == 1)
    {
      switch(v9)
      {
        case 1:
          if (v8 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v8 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v8 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v8 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v8 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v8 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v8 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v8 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v8 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v8)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v8 == v9)
    {
LABEL_11:
      OUTLINED_FUNCTION_95_0();
      v12 = v7 && v10 == v11;
      if (v12 || (sub_1B1C2D7A8() & 1) != 0)
      {
        v13 = *(a3(0) + 28);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v14, v15);
        return OUTLINED_FUNCTION_42() & 1;
      }
    }
  }

  return 0;
}

void static Realtime_V1_ResponseCreate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_51_4();
  v4 = type metadata accessor for Realtime_V1_Response(v3);
  v5 = OUTLINED_FUNCTION_45(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_82();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B10, &qword_1B1C3A138);
  OUTLINED_FUNCTION_45(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35();
  v16 = *v1 == *v0 && v1[1] == *(v0 + 8);
  if (!v16 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_98_0();
  if (*(v0 + 24) != 1)
  {
    if (v17 != v18)
    {
      goto LABEL_20;
    }

LABEL_11:
    v30 = type metadata accessor for Realtime_V1_ResponseCreate(0);
    v19 = *(v30 + 28);
    v20 = *(v12 + 48);
    sub_1B1B8D9D8(v1 + v19, v2, &qword_1EB762B08, &qword_1B1C3A130);
    sub_1B1B8D9D8(v0 + v19, v2 + v20, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_36_9(v2);
    if (v16)
    {
      OUTLINED_FUNCTION_36_9(v2 + v20);
      if (v16)
      {
        sub_1B1A90C20(v2, &qword_1EB762B08, &qword_1B1C3A130);
        goto LABEL_22;
      }
    }

    else
    {
      v21 = OUTLINED_FUNCTION_126();
      sub_1B1B8D9D8(v21, v22, v23, v24);
      OUTLINED_FUNCTION_36_9(v2 + v20);
      if (!v25)
      {
        OUTLINED_FUNCTION_5_24();
        sub_1B1B884C0();
        OUTLINED_FUNCTION_3_3();
        v26 = static Realtime_V1_Response.== infix(_:_:)();
        sub_1B1B8844C();
        sub_1B1B8844C();
        sub_1B1A90C20(v2, &qword_1EB762B08, &qword_1B1C3A130);
        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_22:
        v27 = *(v30 + 24);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_29();
        sub_1B1B8C2F8(v28, v29);
        OUTLINED_FUNCTION_42();
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_74_3();
      sub_1B1B8844C();
    }

    sub_1B1A90C20(v2, &qword_1EB762B10, &qword_1B1C3A138);
    goto LABEL_20;
  }

  switch(v18)
  {
    case 1:
      if (v17 == 1)
      {
        goto LABEL_11;
      }

      break;
    case 2:
      if (v17 == 2)
      {
        goto LABEL_11;
      }

      break;
    case 3:
      if (v17 == 3)
      {
        goto LABEL_11;
      }

      break;
    case 4:
      if (v17 == 4)
      {
        goto LABEL_11;
      }

      break;
    case 5:
      if (v17 == 5)
      {
        goto LABEL_11;
      }

      break;
    case 6:
      if (v17 == 6)
      {
        goto LABEL_11;
      }

      break;
    case 7:
      if (v17 == 7)
      {
        goto LABEL_11;
      }

      break;
    case 8:
      if (v17 == 8)
      {
        goto LABEL_11;
      }

      break;
    case 9:
      if (v17 == 9)
      {
        goto LABEL_11;
      }

      break;
    default:
      if (!v17)
      {
        goto LABEL_11;
      }

      break;
  }

LABEL_20:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B8164C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_98_0();
  if (*(v3 + 24) == 1)
  {
    switch(v9)
    {
      case 1:
        if (v8 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v8 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v8 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v8 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v8 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      case 6:
        if (v8 == 6)
        {
          goto LABEL_11;
        }

        return 0;
      case 7:
        if (v8 == 7)
        {
          goto LABEL_11;
        }

        return 0;
      case 8:
        if (v8 == 8)
        {
          goto LABEL_11;
        }

        return 0;
      case 9:
        if (v8 == 9)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v8)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v8 != v9)
  {
    return 0;
  }

LABEL_11:
  v11 = *(a3(0) + 24);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_29();
  sub_1B1B8C2F8(v12, v13);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t Realtime_V1_ClientEvent.init()()
{
  v1 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(v1);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for Realtime_V1_ClientEvent(0) + 20);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_SessionUpdate.eventID.getter()
{
  OUTLINED_FUNCTION_69_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_65();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1B81818(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Realtime_V1_SessionUpdate.eventID.setter(v1, v2);
}

uint64_t Realtime_V1_SessionUpdate.eventID.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OUTLINED_FUNCTION_111_0();
  v8 = *(v2 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v9 = OUTLINED_FUNCTION_47_5();
    v8 = sub_1B1B886C0(v9);
    *(v4 + v3) = v8;
  }

  OUTLINED_FUNCTION_66_0();
  v10 = *(v8 + 24);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

uint64_t Realtime_V1_SessionUpdate.eventID.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_69_1();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_65();
  v6 = *(v5 + 24);
  v3[6] = *(v5 + 16);
  v3[7] = v6;

  return OUTLINED_FUNCTION_92();
}

void sub_1B1B81950(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    v7 = OUTLINED_FUNCTION_33();
    Realtime_V1_SessionUpdate.eventID.setter(v7, v8);
    v9 = *(v2 + 56);
  }

  else
  {
    v10 = *(v2 + 72);
    v11 = *(v2 + 64);
    v12 = *(v11 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v2 + 72);
      v16 = *(v2 + 64);
      OUTLINED_FUNCTION_70_1();
      v17 = OUTLINED_FUNCTION_47_5();
      v14 = sub_1B1B886C0(v17);
      *(v16 + v15) = v14;
    }

    OUTLINED_FUNCTION_66_0();
    v18 = *(v14 + 24);
    *(v14 + 16) = v3;
    *(v14 + 24) = v4;
  }

  free(v2);
}

uint64_t Realtime_V1_SessionUpdate.type.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_69_1();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_65();
  v6 = *(v4 + 40);
  *a1 = *(v4 + 32);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B1B81A58@<X0>(uint64_t a1@<X8>)
{
  result = Realtime_V1_SessionUpdate.type.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B1B81A9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Realtime_V1_SessionUpdate.type.setter(&v3);
}

uint64_t Realtime_V1_SessionUpdate.type.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_111_0();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v8 = OUTLINED_FUNCTION_47_5();
    v7 = sub_1B1B886C0(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_66_0();
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  return result;
}

uint64_t Realtime_V1_SessionUpdate.type.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_69_1();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_65();
  v6 = *(v5 + 40);
  v3[9] = *(v5 + 32);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B81BD0()
{
  OUTLINED_FUNCTION_53_0();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 84);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_70_1();
    v11 = OUTLINED_FUNCTION_47_5();
    v8 = sub_1B1B886C0(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_66_0();
  *(v8 + 32) = v2;
  *(v8 + 40) = v5;
  OUTLINED_FUNCTION_34_3();

  free(v12);
}

uint64_t Realtime_V1_SessionUpdate.session.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_32_0();
  v9 = *(v1 + *(type metadata accessor for Realtime_V1_SessionUpdate(v8) + 20));
  v10 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_107_0(v9 + v10);
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_13(v2);
  if (v11)
  {
    Realtime_V1_Session.init()(a1);
    result = OUTLINED_FUNCTION_13(v2);
    if (!v11)
    {
      return sub_1B1A90C20(v2, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_11();
    return sub_1B1B884C0();
  }

  return result;
}

uint64_t Realtime_V1_SessionUpdate.session.setter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_111_0();
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v9 = OUTLINED_FUNCTION_47_5();
    *(v2 + v1) = sub_1B1B886C0(v9);
  }

  OUTLINED_FUNCTION_22_11();
  sub_1B1B884C0();
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_79_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  swift_beginAccess();
  v14 = OUTLINED_FUNCTION_116();
  sub_1B1B8C2AC(v14, v15, v16, v17);
  return swift_endAccess();
}

void Realtime_V1_SessionUpdate.session.modify()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_45(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_69_1();
  v12 = *(v0 + v11);
  v13 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  OUTLINED_FUNCTION_65();
  sub_1B1B8D9D8(v12 + v13, v6, &qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_46();
  if (v14)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    v10[7] = 0;
    *(v10 + 64) = 1;
    v10[9] = v15;
    v10[10] = 0;
    *(v10 + 88) = 1;
    *(v10 + 92) = 0;
    v10[13] = 0;
    v10[14] = v16;
    v10[15] = 0;
    v10[16] = v16;
    v17 = v10 + v7[15];
    sub_1B1C2C5B8();
    v18 = v7[16];
    type metadata accessor for Realtime_V1_InputAudioTranscription(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = v7[17];
    type metadata accessor for Realtime_V1_TurnDetection(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_46();
    if (!v14)
    {
      sub_1B1A90C20(v6, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B884C0();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_26_1();
}

void sub_1B1B82030(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_15();
    sub_1B1B88514();
    Realtime_V1_SessionUpdate.session.setter();
    sub_1B1B8844C();
  }

  else
  {
    v7 = *(*a1 + 48);
    Realtime_V1_SessionUpdate.session.setter();
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t Realtime_V1_SessionUpdate.hasSession.getter()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = *(v0 + *(type metadata accessor for Realtime_V1_SessionUpdate(v7) + 20));
  v9 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_108_0(v8 + v9);
  v10 = type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_63_2(v10);
  return v8;
}

Swift::Void __swiftcall Realtime_V1_SessionUpdate.clearSession()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_70_1();
    v10 = OUTLINED_FUNCTION_47_5();
    *(v1 + v6) = sub_1B1B886C0(v10);
  }

  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  swift_beginAccess();
  v15 = OUTLINED_FUNCTION_116();
  sub_1B1B8C2AC(v15, v16, v17, v18);
  swift_endAccess();
}

uint64_t Realtime_V1_SessionUpdate.unknownFields.getter()
{
  OUTLINED_FUNCTION_89();
  v0 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_43_0();

  return v4(v3);
}

uint64_t Realtime_V1_SessionUpdate.unknownFields.setter()
{
  OUTLINED_FUNCTION_58_0();
  v0 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_49();

  return v4(v3);
}

uint64_t Realtime_V1_InputAudioBufferAppend.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioBufferAppend(v0) + 28);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_InputAudioBufferCommit.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioBufferCommit(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B82510()
{
  v0 = OUTLINED_FUNCTION_89();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1B82598()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_InputAudioBufferClear.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioBufferClear(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemCreate.previousItemID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ConversationItemCreate.previousItemID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Realtime_V1_ConversationItemCreate.item.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_32_0();
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreate(v8);
  OUTLINED_FUNCTION_107_0(v1 + *(v9 + 32));
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_13(v2);
  if (v10)
  {
    Realtime_V1_Item.init()(a1);
    result = OUTLINED_FUNCTION_13(v2);
    if (!v10)
    {
      return sub_1B1A90C20(v2, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_21();
    return sub_1B1B884C0();
  }

  return result;
}

uint64_t Realtime_V1_ConversationItemCreate.item.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ConversationItemCreate(v1);
  sub_1B1A90C20(v0 + *(v2 + 32), &qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_116();
  sub_1B1B884C0();
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_79_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ConversationItemCreate.item.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v1 + 8) = v7;
  v8 = type metadata accessor for Realtime_V1_Item(0);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_45(v8);
  v10 = *(v9 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 32) = v11;
  v12 = *(type metadata accessor for Realtime_V1_ConversationItemCreate(0) + 32);
  *(v1 + 40) = v12;
  OUTLINED_FUNCTION_92_0(v0 + v12, v7);
  OUTLINED_FUNCTION_46();
  if (v13)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = MEMORY[0x1E69E7CC0];
    v11[5] = 0;
    v11[6] = 0xE000000000000000;
    v11[7] = 0;
    v11[8] = 0xE000000000000000;
    v11[9] = 0;
    v11[10] = 0xE000000000000000;
    v11[11] = 0;
    v11[12] = 0xE000000000000000;
    v11[13] = 0;
    v11[14] = 0xE000000000000000;
    v11[15] = 0;
    v11[16] = 0xE000000000000000;
    v14 = v11 + *(v8 + 52);
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_46();
    if (!v13)
    {
      sub_1B1A90C20(v7, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B884C0();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1B829B4()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1B88514();
    sub_1B1A90C20(v4 + v3, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_4_21();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_71_1();
    sub_1B1B8844C();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_4_21();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v7);
}

uint64_t Realtime_V1_ConversationItemCreate.hasItem.getter()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_ConversationItemCreate(v7);
  OUTLINED_FUNCTION_108_0(v0 + *(v8 + 32));
  v9 = type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_63_2(v9);
  return v0;
}

Swift::Void __swiftcall Realtime_V1_ConversationItemCreate.clearItem()()
{
  v1 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  sub_1B1A90C20(v0 + *(v1 + 32), &qword_1EB762AF8, &qword_1B1C3A120);
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_64_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B1B82B9C()
{
  v0 = OUTLINED_FUNCTION_89();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1B82C24()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_ConversationItemCreate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemCreate(v0) + 28);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemTruncate.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemTruncate(v0) + 36);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_ConversationItemTruncate.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemTruncate(v0) + 36);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_ConversationItemTruncate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemTruncate(v0) + 36);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemDelete.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemDelete(v0) + 28);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseCreate.response.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_32_0();
  v9 = type metadata accessor for Realtime_V1_ResponseCreate(v8);
  OUTLINED_FUNCTION_107_0(v1 + *(v9 + 28));
  type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_13(v2);
  if (v10)
  {
    Realtime_V1_Response.init()(a1);
    result = OUTLINED_FUNCTION_13(v2);
    if (!v10)
    {
      return sub_1B1A90C20(v2, &qword_1EB762B08, &qword_1B1C3A130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_24();
    return sub_1B1B884C0();
  }

  return result;
}

uint64_t Realtime_V1_ResponseCreate.response.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ResponseCreate(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_116();
  sub_1B1B884C0();
  type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_79_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ResponseCreate.response.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v1 + 8) = v7;
  v8 = type metadata accessor for Realtime_V1_Response(0);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_45(v8);
  v10 = *(v9 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 32) = v11;
  v12 = *(type metadata accessor for Realtime_V1_ResponseCreate(0) + 28);
  *(v1 + 40) = v12;
  OUTLINED_FUNCTION_92_0(v0 + v12, v7);
  OUTLINED_FUNCTION_46();
  if (v13)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    v11[7] = v14;
    v11[8] = 0;
    *(v11 + 72) = 1;
    *(v11 + 19) = 0;
    v11[10] = 0;
    v11[11] = v15;
    v16 = v11 + *(v8 + 48);
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_46();
    if (!v13)
    {
      sub_1B1A90C20(v7, &qword_1EB762B08, &qword_1B1C3A130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_24();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B884C0();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1B83238()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1B88514();
    sub_1B1A90C20(v4 + v3, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_5_24();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_74_3();
    sub_1B1B8844C();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_5_24();
    sub_1B1B884C0();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v7);
}

uint64_t Realtime_V1_ResponseCreate.hasResponse.getter()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_ResponseCreate(v7);
  OUTLINED_FUNCTION_108_0(v0 + *(v8 + 28));
  v9 = type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_63_2(v9);
  return v0;
}

Swift::Void __swiftcall Realtime_V1_ResponseCreate.clearResponse()()
{
  v1 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  sub_1B1A90C20(v0 + *(v1 + 28), &qword_1EB762B08, &qword_1B1C3A130);
  type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_64_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_ResponseCreate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseCreate(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseCancel.eventID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ResponseCancel.eventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void Realtime_V1_ResponseCancel.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Realtime_V1_ResponseCancel.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Realtime_V1_ResponseCancel.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseCancel(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B835AC()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7629D0);
  __swift_project_value_buffer(v0, qword_1EB7629D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CLIENT_EVENT_TYPE_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLIENT_EVENT_TYPE_SESSION_UPDATE";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CLIENT_EVENT_TYPE_INPUT_AUDIO_BUFFER_APPEND";
  *(v12 + 1) = 43;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CLIENT_EVENT_TYPE_INPUT_AUDIO_BUFFER_COMMIT";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CLIENT_EVENT_TYPE_INPUT_AUDIO_BUFFER_CLEAR";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CLIENT_EVENT_TYPE_CONVERSATION_ITEM_CREATE";
  *(v18 + 1) = 42;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "CLIENT_EVENT_TYPE_CONVERSATION_ITEM_TRUNCATE";
  *(v20 + 1) = 44;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "CLIENT_EVENT_TYPE_CONVERSATION_ITEM_DELETE";
  *(v22 + 1) = 42;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "CLIENT_EVENT_TYPE_RESPONSE_CREATE";
  *(v24 + 1) = 33;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "CLIENT_EVENT_TYPE_RESPONSE_CANCEL";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B83998()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7629E8);
  __swift_project_value_buffer(v0, qword_1EB7629E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B1C373B0;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "session_update";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 2;
  *v8 = "input_audio_buffer_append";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "input_audio_buffer_commit";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "input_audio_buffer_clear";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "conversation_item_create";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "conversation_item_truncate";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "conversation_item_delete";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "response_create";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "response_cancel";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ClientEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_15_4();
        sub_1B1B83E18(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_15_4();
        sub_1B1B84310(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_15_4();
        sub_1B1B84808(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_15_4();
        sub_1B1B84D00(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_15_4();
        sub_1B1B851F8(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_15_4();
        sub_1B1B856F0(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_15_4();
        sub_1B1B85BE8(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_15_4();
        sub_1B1B860E0(v19, v20, v21, v22);
        break;
      case 9:
        v35 = OUTLINED_FUNCTION_15_4();
        sub_1B1B865D8(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B83E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_SessionUpdate(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DF0, &qword_1B1C3B410);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B1B8844C();
    }

    else
    {
      sub_1B1A90C20(v22, &qword_1EB762DF0, &qword_1B1C3B410);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762DF0, &qword_1B1C3B410);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762DF0, &qword_1B1C3B410);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762DF0, &qword_1B1C3B410);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762DF0, &qword_1B1C3B410);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762DF0, &qword_1B1C3B410);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B84310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DF8, &qword_1B1C3B418);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B1A90C20(v22, &qword_1EB762DF8, &qword_1B1C3B418);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762DF8, &qword_1B1C3B418);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762DF8, &qword_1B1C3B418);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762DF8, &qword_1B1C3B418);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762DF8, &qword_1B1C3B418);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762DF8, &qword_1B1C3B418);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B84808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E00, &qword_1B1C3B420);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B1A90C20(v22, &qword_1EB762E00, &qword_1B1C3B420);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762E00, &qword_1B1C3B420);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762E00, &qword_1B1C3B420);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762E00, &qword_1B1C3B420);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762E00, &qword_1B1C3B420);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762E00, &qword_1B1C3B420);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B84D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferClear(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E08, &qword_1B1C3B428);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B1A90C20(v22, &qword_1EB762E08, &qword_1B1C3B428);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762E08, &qword_1B1C3B428);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762E08, &qword_1B1C3B428);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762E08, &qword_1B1C3B428);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762E08, &qword_1B1C3B428);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762E08, &qword_1B1C3B428);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B851F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E10, &qword_1B1C3B430);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B1A90C20(v22, &qword_1EB762E10, &qword_1B1C3B430);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762E10, &qword_1B1C3B430);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762E10, &qword_1B1C3B430);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762E10, &qword_1B1C3B430);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762E10, &qword_1B1C3B430);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762E10, &qword_1B1C3B430);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B856F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E18, &qword_1B1C3B438);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B1A90C20(v22, &qword_1EB762E18, &qword_1B1C3B438);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762E18, &qword_1B1C3B438);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762E18, &qword_1B1C3B438);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762E18, &qword_1B1C3B438);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762E18, &qword_1B1C3B438);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762E18, &qword_1B1C3B438);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B85BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemDelete(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E20, &qword_1B1C3B440);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B1A90C20(v22, &qword_1EB762E20, &qword_1B1C3B440);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762E20, &qword_1B1C3B440);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762E20, &qword_1B1C3B440);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762E20, &qword_1B1C3B440);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762E20, &qword_1B1C3B440);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762E20, &qword_1B1C3B440);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B860E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E28, &qword_1B1C3B448);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B1A90C20(v22, &qword_1EB762E28, &qword_1B1C3B448);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762E28, &qword_1B1C3B448);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762E28, &qword_1B1C3B448);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762E28, &qword_1B1C3B448);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762E28, &qword_1B1C3B448);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762E28, &qword_1B1C3B448);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1B865D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ResponseCancel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E30, &unk_1B1C3B450);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB762AE0, &qword_1B1C3A110);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    sub_1B1B884C0();
    sub_1B1B884C0();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B1A90C20(v22, &qword_1EB762E30, &unk_1B1C3B450);
      sub_1B1B884C0();
      sub_1B1B884C0();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B8844C();
    }
  }

  sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB762E30, &unk_1B1C3B450);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB762E30, &unk_1B1C3B450);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB762E30, &unk_1B1C3B450);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB762E30, &unk_1B1C3B450);
  }

  sub_1B1B884C0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB762E30, &unk_1B1C3B450);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB762AE0, &qword_1B1C3A110);
  sub_1B1B884C0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Realtime_V1_ClientEvent.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  sub_1B1B8D9D8(v0, &v47 - v6, &qword_1EB762AE0, &qword_1B1C3A110);
  v8 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    OUTLINED_FUNCTION_66_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v29 = OUTLINED_FUNCTION_8_22();
        sub_1B1B86EA0(v29, v30, v31, v32);
        goto LABEL_11;
      case 2u:
        v17 = OUTLINED_FUNCTION_8_22();
        sub_1B1B870B4(v17, v18, v19, v20);
        goto LABEL_11;
      case 3u:
        v21 = OUTLINED_FUNCTION_8_22();
        sub_1B1B872C8(v21, v22, v23, v24);
        goto LABEL_11;
      case 4u:
        v13 = OUTLINED_FUNCTION_8_22();
        sub_1B1B874DC(v13, v14, v15, v16);
        goto LABEL_11;
      case 5u:
        v33 = OUTLINED_FUNCTION_8_22();
        sub_1B1B876F0(v33, v34, v35, v36);
        goto LABEL_11;
      case 6u:
        v37 = OUTLINED_FUNCTION_8_22();
        sub_1B1B87904(v37, v38, v39, v40);
        goto LABEL_11;
      case 7u:
        v25 = OUTLINED_FUNCTION_8_22();
        sub_1B1B87B18(v25, v26, v27, v28);
        goto LABEL_11;
      case 8u:
        v43 = OUTLINED_FUNCTION_8_22();
        sub_1B1B87D2C(v43, v44, v45, v46);
        if (v1)
        {
          OUTLINED_FUNCTION_2_29();
          return sub_1B1B8844C();
        }

        OUTLINED_FUNCTION_2_29();
        sub_1B1B8844C();
        break;
      default:
        v9 = OUTLINED_FUNCTION_8_22();
        sub_1B1B86C90(v9, v10, v11, v12);
LABEL_11:
        OUTLINED_FUNCTION_2_29();
        result = sub_1B1B8844C();
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v42 = v0 + *(type metadata accessor for Realtime_V1_ClientEvent(0) + 20);
  OUTLINED_FUNCTION_72_0();
  return sub_1B1C2C5A8();
}

uint64_t sub_1B1B86C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_SessionUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B86EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferAppend(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B870B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferCommit(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B872C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferClear(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B874DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B876F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemTruncate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B87904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ConversationItemDelete(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B87B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B87D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AE0, &qword_1B1C3A110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_ResponseCancel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B1B8D9D8(a1, v8, &qword_1EB762AE0, &qword_1B1C3A110);
  v11 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_1B1A90C20(v8, &qword_1EB762AE0, &qword_1B1C3A110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B1B884C0();
      sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel);
      sub_1B1C2C788();
      return sub_1B1B8844C();
    }

    result = sub_1B1B8844C();
  }

  __break(1u);
  return result;
}

void static Realtime_V1_ClientEvent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v3 = OUTLINED_FUNCTION_51_4();
  v4 = type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event(v3);
  v5 = OUTLINED_FUNCTION_45(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v8 = OUTLINED_FUNCTION_66_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_82();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B28, &qword_1B1C3A148);
  OUTLINED_FUNCTION_23(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35();
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_92_0(v1, v2);
  OUTLINED_FUNCTION_92_0(v0, v2 + v19);
  OUTLINED_FUNCTION_36_9(v2);
  if (v24)
  {
    OUTLINED_FUNCTION_36_9(v2 + v19);
    if (v24)
    {
      sub_1B1A90C20(v2, &qword_1EB762AE0, &qword_1B1C3A110);
LABEL_12:
      v27 = *(type metadata accessor for Realtime_V1_ClientEvent(0) + 20);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_29();
      sub_1B1B8C2F8(v28, v29);
      OUTLINED_FUNCTION_42();
      goto LABEL_13;
    }

LABEL_9:
    sub_1B1A90C20(v2, &qword_1EB762B28, &qword_1B1C3A148);
    goto LABEL_13;
  }

  v20 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v20, v21, v22, v23);
  OUTLINED_FUNCTION_36_9(v2 + v19);
  if (v24)
  {
    OUTLINED_FUNCTION_2_29();
    sub_1B1B8844C();
    goto LABEL_9;
  }

  sub_1B1B884C0();
  OUTLINED_FUNCTION_3_3();
  static Realtime_V1_ClientEvent.OneOf_Event.== infix(_:_:)();
  v26 = v25;
  sub_1B1B8844C();
  sub_1B1B8844C();
  sub_1B1A90C20(v2, &qword_1EB762AE0, &qword_1B1C3A110);
  if (v26)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_26_1();
}

uint64_t (*sub_1B1B881F4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1B1B88248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DC0, type metadata accessor for Realtime_V1_ClientEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B882C8(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BB0, type metadata accessor for Realtime_V1_ClientEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B88338()
{
  sub_1B1B8C2F8(&qword_1EB762BB0, type metadata accessor for Realtime_V1_ClientEvent);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8840C()
{
  v0 = type metadata accessor for Realtime_V1_SessionUpdate._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B1B88668();
  qword_1EB762A18 = result;
  return result;
}

uint64_t sub_1B1B8844C()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_45(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B1B884C0()
{
  v1 = OUTLINED_FUNCTION_51_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_43_0();
  v7(v6);
  return v0;
}

uint64_t sub_1B1B88514()
{
  v1 = OUTLINED_FUNCTION_51_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43_0();
  v7(v6);
  return v0;
}

uint64_t sub_1B1B88668()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  v2 = type metadata accessor for Realtime_V1_Session(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1B1B886C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  v7 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  v8 = type metadata accessor for Realtime_V1_Session(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;
  v13 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  sub_1B1B8D9D8(a1 + v13, v6, &qword_1EB762B18, &qword_1B1C3A140);

  swift_beginAccess();
  sub_1B1B8C2AC(v6, v1 + v7, &qword_1EB762B18, &qword_1B1C3A140);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B1B88880()
{
  v1 = v0[3];

  sub_1B1A90C20(v0 + OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session, &qword_1EB762B18, &qword_1B1C3A140);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t Realtime_V1_SessionUpdate.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Realtime_V1_SessionUpdate._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_47_5();
    *(v1 + v2) = sub_1B1B886C0(v9);
  }

  OUTLINED_FUNCTION_8_22();
  return sub_1B1B8898C();
}

uint64_t sub_1B1B8898C()
{
  while (1)
  {
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B1B88B54();
        break;
      case 2:
        sub_1B1B88AC0();
        break;
      case 1:
        sub_1B1B88A3C();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1B88A3C()
{
  swift_beginAccess();
  sub_1B1C2C698();
  return swift_endAccess();
}

uint64_t sub_1B1B88AC0()
{
  swift_beginAccess();
  sub_1B1B8C340();
  sub_1B1C2C648();
  return swift_endAccess();
}

uint64_t sub_1B1B88B54()
{
  swift_beginAccess();
  type metadata accessor for Realtime_V1_Session(0);
  sub_1B1B8C2F8(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session);
  sub_1B1C2C6B8();
  return swift_endAccess();
}

uint64_t Realtime_V1_SessionUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20));
  OUTLINED_FUNCTION_72_0();
  result = sub_1B1B88C94(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_15();
    return sub_1B1C2C5A8();
  }

  return result;
}

uint64_t sub_1B1B88C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = *(a1 + 24), , sub_1B1C2C768(), result = , !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 32))
    {
      return sub_1B1B88DB4(a1, a2, a3, a4);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    sub_1B1B8C340();
    result = sub_1B1C2C718();
    if (!v4)
    {
      return sub_1B1B88DB4(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B1B88DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Session(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  sub_1B1B8D9D8(a1 + v11, v8, &qword_1EB762B18, &qword_1B1C3A140);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762B18, &qword_1B1C3A140);
  }

  sub_1B1B884C0();
  sub_1B1B8C2F8(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session);
  sub_1B1C2C788();
  return sub_1B1B8844C();
}

BOOL sub_1B1B88FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Realtime_V1_Session(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762E38, &qword_1B1C40520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - v17;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  v21 = v19 == *(a2 + 16) && v20 == *(a2 + 24);
  if (!v21 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  swift_beginAccess();
  if ((sub_1B1B1AFA0(v22, v23, *(a2 + 32), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v30[1] = v7;
  v31 = v16;
  v24 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  sub_1B1B8D9D8(a1 + v24, v18, &qword_1EB762B18, &qword_1B1C3A140);
  v25 = OBJC_IVAR____TtCV14SiriTTSService25Realtime_V1_SessionUpdateP33_C93BA31E651E35C3B45A57B0C1BB1FD913_StorageClass__session;
  swift_beginAccess();
  v26 = *(v8 + 48);
  sub_1B1B8D9D8(v18, v11, &qword_1EB762B18, &qword_1B1C3A140);
  sub_1B1B8D9D8(a2 + v25, &v11[v26], &qword_1EB762B18, &qword_1B1C3A140);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762B18, &qword_1B1C3A140);
    if (__swift_getEnumTagSinglePayload(&v11[v26], 1, v4) == 1)
    {
      sub_1B1A90C20(v11, &qword_1EB762B18, &qword_1B1C3A140);
      return 1;
    }

    goto LABEL_12;
  }

  sub_1B1B8D9D8(v11, v31, &qword_1EB762B18, &qword_1B1C3A140);
  if (__swift_getEnumTagSinglePayload(&v11[v26], 1, v4) == 1)
  {
    sub_1B1A90C20(v18, &qword_1EB762B18, &qword_1B1C3A140);
    sub_1B1B8844C();
LABEL_12:
    sub_1B1A90C20(v11, &qword_1EB762E38, &qword_1B1C40520);
    return 0;
  }

  sub_1B1B884C0();
  static Realtime_V1_Session.== infix(_:_:)();
  v29 = v28;
  sub_1B1B8844C();
  sub_1B1A90C20(v18, &qword_1EB762B18, &qword_1B1C3A140);
  sub_1B1B8844C();
  sub_1B1A90C20(v11, &qword_1EB762B18, &qword_1B1C3A140);
  return (v29 & 1) != 0;
}

uint64_t sub_1B1B89470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DB8, type metadata accessor for Realtime_V1_SessionUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B894F0(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89560()
{
  sub_1B1B8C2F8(&qword_1EB762BC8, type metadata accessor for Realtime_V1_SessionUpdate);

  return sub_1B1C2C6E8();
}

uint64_t (*sub_1B1B896F4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1B1B89748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DB0, type metadata accessor for Realtime_V1_InputAudioBufferAppend);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B897C8(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89838()
{
  sub_1B1B8C2F8(&qword_1EB762BE0, type metadata accessor for Realtime_V1_InputAudioBufferAppend);

  return sub_1B1C2C6E8();
}

uint64_t (*sub_1B1B899C0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1B1B89A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DA8, type metadata accessor for Realtime_V1_InputAudioBufferCommit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B89A94(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89B04()
{
  sub_1B1B8C2F8(&qword_1EB762BF8, type metadata accessor for Realtime_V1_InputAudioBufferCommit);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B89C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_7_18();
  if (!v7 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    if (!*(v5 + 16) || (OUTLINED_FUNCTION_87_0(), result = OUTLINED_FUNCTION_40_7(), !v4))
    {
      v9 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_48();
    }
  }

  return result;
}

uint64_t sub_1B1B89D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762DA0, type metadata accessor for Realtime_V1_InputAudioBufferClear);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B89DE8(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B89E58()
{
  sub_1B1B8C2F8(&qword_1EB762C10, type metadata accessor for Realtime_V1_InputAudioBufferClear);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B89EE4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762A68);
  __swift_project_value_buffer(v0, qword_1EB762A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "previous_item_id";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "item";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ConversationItemCreate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFBF40();
        break;
      case 4:
        OUTLINED_FUNCTION_43();
        sub_1B1B8A1F0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B8A1F0()
{
  v0 = *(type metadata accessor for Realtime_V1_ConversationItemCreate(0) + 32);
  type metadata accessor for Realtime_V1_Item(0);
  sub_1B1B8C2F8(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_ConversationItemCreate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v3 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
  {
    if (!v2[2] || (OUTLINED_FUNCTION_87_0(), result = OUTLINED_FUNCTION_40_7(), (v0 = v1) == 0))
    {
      v5 = v2[4];
      v6 = v2[5];
      OUTLINED_FUNCTION_17_0();
      if (!v7 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_50_3();
        result = sub_1B1B8A374(v8, v9, v10, v11);
        if (!v0)
        {
          v12 = *(type metadata accessor for Realtime_V1_ConversationItemCreate(0) + 28);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B1B8A374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Item(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ConversationItemCreate(0);
  sub_1B1B8D9D8(a1 + *(v11 + 32), v8, &qword_1EB762AF8, &qword_1B1C3A120);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762AF8, &qword_1B1C3A120);
  }

  sub_1B1B884C0();
  sub_1B1B8C2F8(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);
  sub_1B1C2C788();
  return sub_1B1B8844C();
}

uint64_t sub_1B1B8A5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D98, type metadata accessor for Realtime_V1_ConversationItemCreate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8A678(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8A6E8()
{
  sub_1B1B8C2F8(&qword_1EB762C28, type metadata accessor for Realtime_V1_ConversationItemCreate);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8A780()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762A80);
  __swift_project_value_buffer(v0, qword_1EB762A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A100;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "item_id";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "content_index";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "audio_end_ms";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ConversationItemTruncate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFBF40();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t Realtime_V1_ConversationItemTruncate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v3 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_87_0(), result = OUTLINED_FUNCTION_40_7(), (v0 = v1) == 0))
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      OUTLINED_FUNCTION_17_0();
      if (!v7 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
      {
        if (!*(v2 + 48) || (OUTLINED_FUNCTION_50_3(), result = sub_1B1C2C748(), !v0))
        {
          if (!*(v2 + 52) || (OUTLINED_FUNCTION_50_3(), result = sub_1B1C2C748(), !v0))
          {
            v8 = *(type metadata accessor for Realtime_V1_ConversationItemTruncate(0) + 36);
            return OUTLINED_FUNCTION_48();
          }
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_1B1B8AC44(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1B1B8AC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D90, type metadata accessor for Realtime_V1_ConversationItemTruncate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8AD18(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8AD88()
{
  sub_1B1B8C2F8(&qword_1EB762C40, type metadata accessor for Realtime_V1_ConversationItemTruncate);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8AE14()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762A98);
  __swift_project_value_buffer(v0, qword_1EB762A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "item_id";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B8B074()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        v4 = OUTLINED_FUNCTION_119_0();
        v0(v4);
        break;
      case 1:
LABEL_9:
        sub_1B1C2C698();
        break;
    }
  }
}

uint64_t sub_1B1B8B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_7_18();
  if (!v7 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    if (!v5[2] || (OUTLINED_FUNCTION_87_0(), result = OUTLINED_FUNCTION_40_7(), !v4))
    {
      v9 = v5[4];
      v10 = v5[5];
      OUTLINED_FUNCTION_17_0();
      if (!v11 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
      {
        v12 = *(a4(0) + 28);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t sub_1B1B8B294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D88, type metadata accessor for Realtime_V1_ConversationItemDelete);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8B314(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8B384()
{
  sub_1B1B8C2F8(&qword_1EB762C58, type metadata accessor for Realtime_V1_ConversationItemDelete);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8B434(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_33();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C364D0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = "event_id";
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45(v15);
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADC8];
  v17();
  v20 = v8[14];
  v21 = (v12 + 2 * v9);
  *v21 = 3;
  v22 = v21 + v20;
  *v22 = a3;
  *(v22 + 1) = a4;
  v22[16] = 2;
  v17();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ResponseCreate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_43();
        sub_1B1B8B6D8();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1AFBF40();
        break;
      case 1:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1B8B6D8()
{
  v0 = *(type metadata accessor for Realtime_V1_ResponseCreate(0) + 28);
  type metadata accessor for Realtime_V1_Response(0);
  sub_1B1B8C2F8(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_ResponseCreate.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v3 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), (v0 = v1) == 0))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_87_0(), result = OUTLINED_FUNCTION_40_7(), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_50_3();
      result = sub_1B1B8B838(v5, v6, v7, v8);
      if (!v0)
      {
        v9 = *(type metadata accessor for Realtime_V1_ResponseCreate(0) + 24);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t sub_1B1B8B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for Realtime_V1_Response(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for Realtime_V1_ResponseCreate(0);
  sub_1B1B8D9D8(a1 + *(v11 + 28), v8, &qword_1EB762B08, &qword_1B1C3A130);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_1B1A90C20(v8, &qword_1EB762B08, &qword_1B1C3A130);
  }

  sub_1B1B884C0();
  sub_1B1B8C2F8(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);
  sub_1B1C2C788();
  return sub_1B1B8844C();
}

uint64_t sub_1B1B8BABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D80, type metadata accessor for Realtime_V1_ResponseCreate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8BB3C(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8BBAC()
{
  sub_1B1B8C2F8(&qword_1EB762C70, type metadata accessor for Realtime_V1_ResponseCreate);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8BC50(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_49();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B1C36280;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "event_id";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45(v13);
  v15 = *(v14 + 104);
  (v15)(v11, v12, v13);
  v16 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v15();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B8BE34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B1C2C7B8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1B1B8BEF8()
{
  OUTLINED_FUNCTION_97_0();
  while (1)
  {
    result = sub_1B1C2C618();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v4 = OUTLINED_FUNCTION_119_0();
      v0(v4);
    }

    else if (result == 1)
    {
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B8BFE8(void (*a1)(void))
{
  sub_1B1C2D888();
  a1(0);
  v2 = OUTLINED_FUNCTION_33();
  sub_1B1B8C2F8(v2, v3);
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B8C0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B8C2F8(&qword_1EB762D78, type metadata accessor for Realtime_V1_ResponseCancel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B8C148(uint64_t a1)
{
  v2 = sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B8C1B8()
{
  sub_1B1B8C2F8(&qword_1EB762C88, type metadata accessor for Realtime_V1_ResponseCancel);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B8C234()
{
  sub_1B1C2D888();
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B8C2AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_11_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_45(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_43_0();
  v9(v8);
  return v4;
}

uint64_t sub_1B1B8C2F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B1B8C340()
{
  result = qword_1EB762B40;
  if (!qword_1EB762B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762B40);
  }

  return result;
}

unint64_t sub_1B1B8C39C()
{
  result = qword_1EB762B88;
  if (!qword_1EB762B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762B88);
  }

  return result;
}

unint64_t sub_1B1B8C3F4()
{
  result = qword_1EB762B90;
  if (!qword_1EB762B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB762B98, &qword_1B1C3A198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762B90);
  }

  return result;
}

unint64_t sub_1B1B8C45C()
{
  result = qword_1EB762BA0;
  if (!qword_1EB762BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762BA0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Realtime_V1_ClientEventType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B8D024(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1B1B8D078()
{
  sub_1B1B8D42C(319, &qword_1EB762CA8, type metadata accessor for Realtime_V1_ClientEvent.OneOf_Event);
  if (v0 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1B8D120()
{
  result = type metadata accessor for Realtime_V1_SessionUpdate(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Realtime_V1_InputAudioBufferAppend(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Realtime_V1_InputAudioBufferCommit(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Realtime_V1_InputAudioBufferClear(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Realtime_V1_ConversationItemCreate(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Realtime_V1_ConversationItemTruncate(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Realtime_V1_ConversationItemDelete(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Realtime_V1_ResponseCreate(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Realtime_V1_ResponseCancel(319);
                  if (v9 <= 0x3F)
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

  return result;
}

uint64_t sub_1B1B8D248()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Realtime_V1_SessionUpdate._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B1B8D36C()
{
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    sub_1B1B8D42C(319, &qword_1EB762D10, type metadata accessor for Realtime_V1_Item);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1B8D42C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B1C2D2B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B1B8D4A8()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_59Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_60Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v2 = v0;
    sub_1B1C2C5C8();
    v3 = OUTLINED_FUNCTION_62_0(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B1B8D630()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B8D6E4()
{
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    sub_1B1B8D42C(319, &qword_1EB762D48, type metadata accessor for Realtime_V1_Response);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_68Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_69Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    v2 = v0;
    sub_1B1C2C5C8();
    v3 = OUTLINED_FUNCTION_62_0(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1B1B8D88C()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B8D918()
{
  sub_1B1B8D42C(319, &qword_1EB762D70, type metadata accessor for Realtime_V1_Session);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B1B8D9D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_11_18(a1, a2, a3, a4);
  OUTLINED_FUNCTION_45(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43_0();
  v9(v8);
  return v4;
}

void OUTLINED_FUNCTION_104_0(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return sub_1B1C2C5B8();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1)
{

  return sub_1B1B8D9D8(a1, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_111_0()
{
  v1 = *(v0 + *(type metadata accessor for Realtime_V1_SessionUpdate(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_112_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return sub_1B1C2C5B8();
}

void sub_1B1B8DB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for Realtime_V1_RateLimit(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &a9 - v32;
  v34 = *(v25 + 16);
  if (v34 == *(v23 + 16) && v34 && v25 != v23)
  {
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = v25 + v35;
    v37 = v23 + v35;
    v38 = *(v31 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_15();
      sub_1B1B8F828();
      sub_1B1B8F828();
      v39 = *v33 == *v30 && *(v33 + 1) == *(v30 + 1);
      if (!v39 && (sub_1B1C2D7A8() & 1) == 0 || *(v33 + 4) != *(v30 + 4) || *(v33 + 5) != *(v30 + 5) || *(v33 + 6) != *(v30 + 6))
      {
        break;
      }

      v40 = *(v26 + 32);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_30();
      sub_1B1B94F28(&qword_1EB762AF0, v41);
      v42 = sub_1B1C2CB18();
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      if (v42)
      {
        v37 += v38;
        v36 += v38;
        if (--v34)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_1B1B8F87C();
    OUTLINED_FUNCTION_33_2();
    sub_1B1B8F87C();
  }

LABEL_18:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B8DE00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B1B8DE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Realtime_V1_Parameters(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = (&v64 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763060, &qword_1B1C3B4B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v64 - v12;
  v74 = type metadata accessor for Realtime_V1_Function(0);
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = &v64 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763050, &qword_1B1C3B4B0);
  v18 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v20 = &v64 - v19;
  v76 = type metadata accessor for Realtime_V1_Tool(0);
  v21 = *(*(v76 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v76);
  v24 = (&v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v27 = (&v64 - v26);
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_59:
    v61 = 0;
    return v61 & 1;
  }

  v69 = *(a1 + 16);
  if (!v28 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v64 = v10;
  v65 = v4;
  v29 = 0;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v66 = a2 + v30;
  v67 = *(v25 + 72);
  v68 = a1 + v30;
  v31 = v69;
  while (1)
  {
    result = sub_1B1B8F828();
    if (v29 == v31)
    {
      break;
    }

    sub_1B1B8F828();
    v33 = *v27 == *v24 && v27[1] == v24[1];
    if (!v33 && (sub_1B1C2D7A8() & 1) == 0)
    {
      goto LABEL_58;
    }

    v34 = *(v76 + 24);
    v35 = *(v72 + 48);
    sub_1B1B90BBC();
    sub_1B1B90BBC();
    v36 = v74;
    if (__swift_getEnumTagSinglePayload(v20, 1, v74) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v20[v35], 1, v36) != 1)
      {
        goto LABEL_53;
      }

      sub_1B1A90C20(v20, &qword_1EB762FE8, &qword_1B1C3B490);
    }

    else
    {
      v37 = v70;
      sub_1B1B90BBC();
      if (__swift_getEnumTagSinglePayload(&v20[v35], 1, v36) == 1)
      {
        sub_1B1B8F87C();
LABEL_53:
        v62 = &qword_1EB763050;
        v63 = &qword_1B1C3B4B0;
        goto LABEL_57;
      }

      v38 = v77;
      sub_1B1B8F650();
      v39 = *v37 == *v38 && v37[1] == v38[1];
      if (!v39 && (sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_56;
      }

      v40 = v37[2] == *(v77 + 2) && v37[3] == *(v77 + 3);
      if (!v40 && (sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_56;
      }

      v41 = *(v36 + 28);
      v42 = *(v64 + 48);
      v43 = v75;
      sub_1B1B90BBC();
      sub_1B1B90BBC();
      v44 = v65;
      if (__swift_getEnumTagSinglePayload(v43, 1, v65) == 1)
      {
        if (__swift_getEnumTagSinglePayload(v75 + v42, 1, v44) != 1)
        {
          goto LABEL_55;
        }

        sub_1B1A90C20(v75, &qword_1EB762FF0, &qword_1B1C3B498);
        v45 = v74;
      }

      else
      {
        v46 = v75;
        sub_1B1B90BBC();
        if (__swift_getEnumTagSinglePayload(v46 + v42, 1, v44) == 1)
        {
          sub_1B1B8F87C();
LABEL_55:
          sub_1B1A90C20(v75, &qword_1EB763060, &qword_1B1C3B4B8);
          goto LABEL_56;
        }

        v47 = v71;
        sub_1B1B8F650();
        v48 = *v73 == *v47 && v73[1] == v47[1];
        if (!v48 && (sub_1B1C2D7A8() & 1) == 0)
        {
          goto LABEL_51;
        }

        if ((sub_1B1B99CF0(v73[2], *(v71 + 2)) & 1) == 0)
        {
          goto LABEL_51;
        }

        v49 = v73[3];
        v50 = *(v71 + 3);
        v51 = *(v49 + 16);
        if (v51 != *(v50 + 16))
        {
          goto LABEL_51;
        }

        if (v51 && v49 != v50)
        {
          v52 = (v49 + 40);
          v53 = (v50 + 40);
          while (1)
          {
            v54 = *(v52 - 1) == *(v53 - 1) && *v52 == *v53;
            if (!v54 && (sub_1B1C2D7A8() & 1) == 0)
            {
              break;
            }

            v52 += 2;
            v53 += 2;
            if (!--v51)
            {
              goto LABEL_45;
            }
          }

LABEL_51:
          sub_1B1B8F87C();
          sub_1B1B8F87C();
          sub_1B1A90C20(v75, &qword_1EB762FF0, &qword_1B1C3B498);
LABEL_56:
          sub_1B1B8F87C();
          sub_1B1B8F87C();
          v62 = &qword_1EB762FE8;
          v63 = &qword_1B1C3B490;
LABEL_57:
          sub_1B1A90C20(v20, v62, v63);
LABEL_58:
          sub_1B1B8F87C();
          sub_1B1B8F87C();
          goto LABEL_59;
        }

LABEL_45:
        v55 = *(v65 + 28);
        sub_1B1C2C5C8();
        sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08]);
        v56 = sub_1B1C2CB18();
        v57 = v75;
        sub_1B1B8F87C();
        sub_1B1B8F87C();
        sub_1B1A90C20(v57, &qword_1EB762FF0, &qword_1B1C3B498);
        v45 = v74;
        if ((v56 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      v58 = *(v45 + 24);
      sub_1B1C2C5C8();
      sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08]);
      v59 = sub_1B1C2CB18();
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      sub_1B1A90C20(v20, &qword_1EB762FE8, &qword_1B1C3B490);
      if ((v59 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v60 = *(v76 + 20);
    sub_1B1C2C5C8();
    sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08]);
    v61 = sub_1B1C2CB18();
    sub_1B1B8F87C();
    sub_1B1B8F87C();
    if (v61)
    {
      ++v29;
      v31 = v69;
      if (v29 != v69)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B8E83C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B1B8E8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Realtime_V1_Content(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v24 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_30:
    v22 = 0;
    return v22 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B1B8F828();
      sub_1B1B8F828();
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v19 = v11[4] == v8[4] && v11[5] == v8[5];
      if (!v19 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v20 = v11[6] == v8[6] && v11[7] == v8[7];
      if (!v20 && (sub_1B1C2D7A8() & 1) == 0)
      {
        break;
      }

      v21 = *(v4 + 32);
      sub_1B1C2C5C8();
      sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1B1C2CB18();
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      if (v22)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_1B1B8F87C();
    sub_1B1B8F87C();
    goto LABEL_30;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t Realtime_V1_Session.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_71_2(MEMORY[0x1E69E7CC0]);
  *(a1 + 56) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  *(a1 + 92) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = v4;
  v5 = type metadata accessor for Realtime_V1_Session(0);
  v6 = a1 + v5[15];
  sub_1B1C2C5B8();
  v7 = v5[16];
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = v5[17];
  type metadata accessor for Realtime_V1_TurnDetection(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Realtime_V1_Item.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = 0;
  v1[6] = v2;
  v1[7] = 0;
  v1[8] = v2;
  v1[9] = 0;
  v1[10] = v2;
  v1[11] = 0;
  v1[12] = v2;
  v1[13] = 0;
  v1[14] = v2;
  v1[15] = 0;
  v1[16] = v2;
  v3 = v1 + *(type metadata accessor for Realtime_V1_Item(0) + 52);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_Response.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_71_2(MEMORY[0x1E69E7CC0]);
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v4;
  v5 = a1 + *(type metadata accessor for Realtime_V1_Response(0) + 48);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B8EDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B9316C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B1B8EE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B931C0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B1B8EEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B935D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Realtime_V1_Session.modalities.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Realtime_V1_Session.instructions.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Session.instructions.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Realtime_V1_Session.voice.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Session.voice.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void Realtime_V1_Session.inputAudioFormat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_41_4(a1);
}

uint64_t Realtime_V1_Session.inputAudioFormat.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

void Realtime_V1_Session.outputAudioFormat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_41_4(a1);
}

uint64_t Realtime_V1_Session.outputAudioFormat.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Realtime_V1_Session.inputAudioTranscription.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_Session(v7);
  OUTLINED_FUNCTION_66_3(*(v8 + 64));
  OUTLINED_FUNCTION_103_0();
  v9 = type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  OUTLINED_FUNCTION_27_12();
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v11 = a1 + *(v9 + 20);
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_27_12();
    if (!v10)
    {
      return sub_1B1A90C20(v1, &qword_1EB762FD8, &qword_1B1C3B480);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t Realtime_V1_Session.inputAudioTranscription.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Session(v1);
  sub_1B1A90C20(v0 + *(v2 + 64), &qword_1EB762FD8, &qword_1B1C3B480);
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_InputAudioTranscription.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v2 = v1 + *(type metadata accessor for Realtime_V1_InputAudioTranscription(0) + 20);
  return sub_1B1C2C5B8();
}

void (*Realtime_V1_Session.inputAudioTranscription.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_InputAudioTranscription(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_58_5(v12);
  v14 = *(type metadata accessor for Realtime_V1_Session(v13) + 64);
  *(v0 + 40) = v14;
  OUTLINED_FUNCTION_66_3(v14);
  sub_1B1B90BBC();
  v15 = OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_48_0(v15, v16, v7);
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    v18 = v9 + *(v7 + 20);
    sub_1B1C2C5B8();
    v19 = OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_48_0(v19, v20, v7);
    if (!v17)
    {
      sub_1B1A90C20(v5, &qword_1EB762FD8, &qword_1B1C3B480);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_33();
    sub_1B1B8F650();
  }

  return sub_1B1B8F3B4;
}

uint64_t Realtime_V1_Session.hasInputAudioTranscription.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_32_0();
  v5 = *(type metadata accessor for Realtime_V1_Session(v4) + 64);
  OUTLINED_FUNCTION_57_3();
  v6 = type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  OUTLINED_FUNCTION_63_2(v6);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Session.clearInputAudioTranscription()()
{
  v1 = type metadata accessor for Realtime_V1_Session(0);
  sub_1B1A90C20(v0 + *(v1 + 64), &qword_1EB762FD8, &qword_1B1C3B480);
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_Session.turnDetection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_Session(v7);
  OUTLINED_FUNCTION_66_3(*(v8 + 68));
  OUTLINED_FUNCTION_103_0();
  v9 = type metadata accessor for Realtime_V1_TurnDetection(0);
  OUTLINED_FUNCTION_27_12();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
    v11 = a1 + *(v9 + 32);
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_27_12();
    if (!v10)
    {
      return sub_1B1A90C20(v1, &qword_1EB762FE0, &qword_1B1C3B488);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t Realtime_V1_Session.turnDetection.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Session(v1);
  sub_1B1A90C20(v0 + *(v2 + 68), &qword_1EB762FE0, &qword_1B1C3B488);
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_TurnDetection(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_TurnDetection.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v2 = v1 + *(type metadata accessor for Realtime_V1_TurnDetection(0) + 32);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B8F650()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_10_24(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_43_0();
  v6(v5);
  return v0;
}

void (*Realtime_V1_Session.turnDetection.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_TurnDetection(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_58_5(v12);
  v14 = *(type metadata accessor for Realtime_V1_Session(v13) + 68);
  *(v0 + 40) = v14;
  OUTLINED_FUNCTION_66_3(v14);
  sub_1B1B90BBC();
  v15 = OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_48_0(v15, v16, v7);
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    *(v9 + 24) = 0;
    *(v9 + 16) = 0;
    v18 = v9 + *(v7 + 32);
    sub_1B1C2C5B8();
    v19 = OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_48_0(v19, v20, v7);
    if (!v17)
    {
      sub_1B1A90C20(v5, &qword_1EB762FE0, &qword_1B1C3B488);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_33();
    sub_1B1B8F650();
  }

  return sub_1B1B8F7EC;
}

uint64_t sub_1B1B8F828()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_10_24(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_43_0();
  v6(v5);
  return v0;
}

uint64_t sub_1B1B8F87C()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_45(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Realtime_V1_Session.hasTurnDetection.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_32_0();
  v5 = *(type metadata accessor for Realtime_V1_Session(v4) + 68);
  OUTLINED_FUNCTION_57_3();
  v6 = type metadata accessor for Realtime_V1_TurnDetection(0);
  OUTLINED_FUNCTION_63_2(v6);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Session.clearTurnDetection()()
{
  v1 = type metadata accessor for Realtime_V1_Session(0);
  sub_1B1A90C20(v0 + *(v1 + 68), &qword_1EB762FE0, &qword_1B1C3B488);
  type metadata accessor for Realtime_V1_TurnDetection(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_Session.tools.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

void Realtime_V1_Session.toolChoice.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  OUTLINED_FUNCTION_41_4(a1);
}

uint64_t Realtime_V1_Session.toolChoice.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

uint64_t Realtime_V1_Session.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_Session(v0) + 60);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_Session.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Session(v0) + 60);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_Session.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Session(v0) + 60);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Response.tools.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

void Realtime_V1_Response.toolChoice.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_41_4(a1);
}

uint64_t Realtime_V1_Response.toolChoice.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Realtime_V1_Response.maxOutputTokens.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Response.maxOutputTokens.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Realtime_V1_Response.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_Response(v0) + 48);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_Response.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Response(v0) + 48);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_Response.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Response(v0) + 48);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Part.audio.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Part.audio.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Realtime_V1_Part.transcript.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Part.transcript.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Realtime_V1_Part.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Part(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_InputAudioTranscription.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioTranscription(v0) + 20);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B90160()
{
  v0 = OUTLINED_FUNCTION_89();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1B901E8()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_TurnDetection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_TurnDetection(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Tool.function.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Realtime_V1_Tool(0) + 24);
  OUTLINED_FUNCTION_103_0();
  v9 = type metadata accessor for Realtime_V1_Function(0);
  OUTLINED_FUNCTION_48_0(v7, 1, v9);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v11 = a1 + *(v9 + 24);
    sub_1B1C2C5B8();
    v12 = *(v9 + 28);
    type metadata accessor for Realtime_V1_Parameters(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_48_0(v7, 1, v9);
    if (!v10)
    {
      return sub_1B1A90C20(v7, &qword_1EB762FE8, &qword_1B1C3B490);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_24();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t Realtime_V1_Tool.function.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Tool(v1);
  sub_1B1A90C20(v0 + *(v2 + 24), &qword_1EB762FE8, &qword_1B1C3B490);
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_Function(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_Function.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Realtime_V1_Function(0);
  v4 = v1 + *(v3 + 24);
  sub_1B1C2C5B8();
  v5 = *(v3 + 28);
  type metadata accessor for Realtime_V1_Parameters(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Realtime_V1_Tool.function.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_Function(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_58_5(v12);
  v14 = type metadata accessor for Realtime_V1_Tool(v13);
  OUTLINED_FUNCTION_85_1(*(v14 + 24));
  v15 = OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_48_0(v15, v16, v7);
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    *(v9 + 16) = 0;
    *(v9 + 24) = v18;
    v19 = v9 + *(v7 + 24);
    sub_1B1C2C5B8();
    v20 = *(v7 + 28);
    type metadata accessor for Realtime_V1_Parameters(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_48_0(v25, v26, v7);
    if (!v17)
    {
      sub_1B1A90C20(v5, &qword_1EB762FE8, &qword_1B1C3B490);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_24();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B8F650();
  }

  return sub_1B1B90658;
}

uint64_t Realtime_V1_Tool.hasFunction.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_32_0();
  v5 = *(type metadata accessor for Realtime_V1_Tool(v4) + 24);
  OUTLINED_FUNCTION_57_3();
  v6 = type metadata accessor for Realtime_V1_Function(0);
  OUTLINED_FUNCTION_63_2(v6);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Tool.clearFunction()()
{
  v1 = type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1A90C20(v0 + *(v1 + 24), &qword_1EB762FE8, &qword_1B1C3B490);
  type metadata accessor for Realtime_V1_Function(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B1B90784()
{
  v0 = OUTLINED_FUNCTION_89();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1B9080C()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_Tool.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Tool(v0) + 20);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Tool.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v2 = type metadata accessor for Realtime_V1_Tool(0);
  v3 = v1 + *(v2 + 20);
  sub_1B1C2C5B8();
  v4 = *(v2 + 24);
  type metadata accessor for Realtime_V1_Function(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Realtime_V1_Function.parameters.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_Function(v7);
  OUTLINED_FUNCTION_66_3(*(v8 + 28));
  OUTLINED_FUNCTION_103_0();
  v9 = type metadata accessor for Realtime_V1_Parameters(0);
  OUTLINED_FUNCTION_27_12();
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    type metadata accessor for Realtime_V1_Property(0);
    v11 = MEMORY[0x1E69E7CC0];
    a1[2] = sub_1B1C2CAB8();
    a1[3] = v11;
    v12 = a1 + *(v9 + 28);
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_27_12();
    if (!v10)
    {
      return sub_1B1A90C20(v1, &qword_1EB762FF0, &qword_1B1C3B498);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1B8F650();
  }

  return result;
}

uint64_t sub_1B1B90A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_82();
  sub_1B1B8F828();
  return a7(v7);
}

uint64_t Realtime_V1_Function.parameters.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_Function(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB762FF0, &qword_1B1C3B498);
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_102_1();
  type metadata accessor for Realtime_V1_Parameters(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Realtime_V1_Parameters.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  type metadata accessor for Realtime_V1_Property(0);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = sub_1B1C2CAB8();
  *(v1 + 24) = v2;
  v3 = v1 + *(type metadata accessor for Realtime_V1_Parameters(0) + 28);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B90BBC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10_24(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43_0();
  v7(v6);
  return v0;
}

void (*Realtime_V1_Function.parameters.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_23(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_91(v5);
  v7 = type metadata accessor for Realtime_V1_Parameters(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_45(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_58_5(v12);
  v14 = type metadata accessor for Realtime_V1_Function(v13);
  OUTLINED_FUNCTION_85_1(*(v14 + 28));
  v15 = OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_48_0(v15, v16, v7);
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    type metadata accessor for Realtime_V1_Property(0);
    v18 = MEMORY[0x1E69E7CC0];
    *(v9 + 16) = sub_1B1C2CAB8();
    *(v9 + 24) = v18;
    v19 = v9 + *(v7 + 28);
    sub_1B1C2C5B8();
    v20 = OUTLINED_FUNCTION_73_4();
    OUTLINED_FUNCTION_48_0(v20, v21, v7);
    if (!v17)
    {
      sub_1B1A90C20(v5, &qword_1EB762FF0, &qword_1B1C3B498);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_3_3();
    sub_1B1B8F650();
  }

  return sub_1B1B90D90;
}

void sub_1B1B90DCC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[2];
  v12 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    sub_1B1B8F828();
    sub_1B1A90C20(v11 + v7, a3, a4);
    sub_1B1B8F650();
    OUTLINED_FUNCTION_98_1();
    sub_1B1B8F87C();
  }

  else
  {
    sub_1B1A90C20(v11 + v7, a3, a4);
    sub_1B1B8F650();
    OUTLINED_FUNCTION_98_1();
  }

  free(v9);
  free(v8);
  free(v12);

  free(v6);
}

uint64_t Realtime_V1_Function.hasParameters.getter()
{
  v0 = OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_32_0();
  v5 = *(type metadata accessor for Realtime_V1_Function(v4) + 28);
  OUTLINED_FUNCTION_57_3();
  v6 = type metadata accessor for Realtime_V1_Parameters(0);
  OUTLINED_FUNCTION_63_2(v6);
  return OUTLINED_FUNCTION_88_1();
}

Swift::Void __swiftcall Realtime_V1_Function.clearParameters()()
{
  v1 = type metadata accessor for Realtime_V1_Function(0);
  sub_1B1A90C20(v0 + *(v1 + 28), &qword_1EB762FF0, &qword_1B1C3B498);
  type metadata accessor for Realtime_V1_Parameters(0);
  v2 = OUTLINED_FUNCTION_37_8();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_Function.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Function(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Parameters.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Realtime_V1_Parameters.required.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Realtime_V1_Parameters.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_Parameters(v0) + 28);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_Parameters.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Parameters(v0) + 28);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_Parameters.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Parameters(v0) + 28);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B91230()
{
  v0 = OUTLINED_FUNCTION_89();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1B912B8()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_Property.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Property(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Conversation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Conversation(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B9145C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v4 = v1 + *(v3(0) + 24);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_Item.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.id.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Realtime_V1_Item.type.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.type.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Realtime_V1_Item.content.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Realtime_V1_Item.role.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.role.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Realtime_V1_Item.status.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.status.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Realtime_V1_Item.callID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.callID.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Realtime_V1_Item.name.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.name.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Realtime_V1_Item.arguments.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.arguments.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Realtime_V1_Item.output.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_Item.output.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Realtime_V1_Item.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_Item(v0) + 52);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_Item.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Item(v0) + 52);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_Item.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Item(v0) + 52);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_Content.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_Content(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1B91AD8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v4 = v1 + *(v3(0) + 32);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_CommonError.eventID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_CommonError.eventID.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Realtime_V1_CommonError.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_CommonError(v0) + 36);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_CommonError.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_CommonError(v0) + 36);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_10_24(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_CommonError.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_CommonError(v0) + 36);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_CommonError.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = 0;
  v1[9] = v2;
  v3 = v1 + *(type metadata accessor for Realtime_V1_CommonError(0) + 36);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_RateLimit.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_RateLimit(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_RateLimit.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_8(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v2 = v1 + *(type metadata accessor for Realtime_V1_RateLimit(0) + 32);
  return sub_1B1C2C5B8();
}

uint64_t sub_1B1B91ED8()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E40);
  __swift_project_value_buffer(v0, qword_1EB762E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MODALITY_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MODALITY_TEXT";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MODALITY_AUDIO";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B92104()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E58);
  __swift_project_value_buffer(v0, qword_1EB762E58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_FORMAT_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_FORMAT_PCM16";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_FORMAT_G711_ULAW";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_FORMAT_OPUS16";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_FORMAT_OPUS24";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_FORMAT_TOKENS";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B923E4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E70);
  __swift_project_value_buffer(v0, qword_1EB762E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TOOL_CHOICE_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOOL_CHOICE_AUTO";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TOOL_CHOICE_NONE";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B92624()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762E88);
  __swift_project_value_buffer(v0, qword_1EB762E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B1C3B460;
  v4 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v4 = "modalities";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v33 + v3 + v2 + v1[14];
  *(v33 + v3 + v2) = 2;
  *v8 = "instructions";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v33 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "voice";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v33 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "input_audio_format";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v7();
  v14 = (v33 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "output_audio_format";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v7();
  v16 = (v33 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "input_audio_transcription";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v7();
  v18 = (v33 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "turn_detection";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  v20 = (v33 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "tools";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v7();
  v22 = (v33 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "tool_choice";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v7();
  v24 = (v33 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "temperature";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v7();
  v26 = (v33 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "max_output_tokens";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v7();
  v28 = (v33 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "id";
  *(v29 + 1) = 2;
  v29[16] = 2;
  v7();
  v30 = (v33 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "object";
  *(v31 + 1) = 6;
  v31[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Session.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCC54();
        break;
      case 2:
      case 3:
      case 12:
      case 13:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 4:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCCA4();
        break;
      case 5:
        OUTLINED_FUNCTION_43();
        sub_1B1B92C10();
        break;
      case 6:
        OUTLINED_FUNCTION_43();
        sub_1B1B92C78();
        break;
      case 7:
        OUTLINED_FUNCTION_43();
        sub_1B1B92D2C();
        break;
      case 8:
        OUTLINED_FUNCTION_43();
        sub_1B1B92DE0();
        break;
      case 9:
        OUTLINED_FUNCTION_43();
        sub_1B1B92E80();
        break;
      case 10:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C668();
        break;
      case 11:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B92C78()
{
  v0 = *(type metadata accessor for Realtime_V1_Session(0) + 64);
  type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1B92D2C()
{
  v0 = *(type metadata accessor for Realtime_V1_Session(0) + 68);
  type metadata accessor for Realtime_V1_TurnDetection(0);
  sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection);
  return sub_1B1C2C6B8();
}

uint64_t sub_1B1B92DE0()
{
  type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool);
  return sub_1B1C2C6A8();
}

uint64_t Realtime_V1_Session.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_22();
  if (!*(*v0 + 16) || (sub_1B1B9316C(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C708(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_17_0();
    if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
    {
      v7 = *(v2 + 24);
      v8 = *(v2 + 32);
      OUTLINED_FUNCTION_17_0();
      if (!v9 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
      {
        if (!*(v2 + 40) || (v10 = *(v2 + 48), OUTLINED_FUNCTION_72_2(), sub_1B1B931C0(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
        {
          if (!*(v2 + 56) || (v11 = *(v2 + 64), OUTLINED_FUNCTION_72_2(), sub_1B1B931C0(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
          {
            v12 = OUTLINED_FUNCTION_29_10();
            result = sub_1B1B93214(v12, v13, v14, v15);
            if (!v1)
            {
              v16 = OUTLINED_FUNCTION_29_10();
              sub_1B1B933F4(v16, v17, v18, v19);
              if (*(*(v2 + 72) + 16))
              {
                type metadata accessor for Realtime_V1_Tool(0);
                OUTLINED_FUNCTION_54_2();
                sub_1B1B94F28(v20, v21);
                OUTLINED_FUNCTION_16_4();
                sub_1B1C2C778();
              }

              if (*(v2 + 80))
              {
                v22 = *(v2 + 88);
                OUTLINED_FUNCTION_72_2();
                sub_1B1B935D4();
                OUTLINED_FUNCTION_16_4();
                sub_1B1C2C718();
              }

              if (*(v2 + 92))
              {
                OUTLINED_FUNCTION_31_8();
                OUTLINED_FUNCTION_72_0();
                sub_1B1C2C738();
              }

              if (*(v2 + 96))
              {
                OUTLINED_FUNCTION_20_11();
                sub_1B1C2C748();
              }

              v23 = *(v2 + 104);
              v24 = *(v2 + 112);
              OUTLINED_FUNCTION_17_0();
              if (v25)
              {
                OUTLINED_FUNCTION_39();
                sub_1B1C2C768();
              }

              v26 = *(v2 + 120);
              v27 = *(v2 + 128);
              OUTLINED_FUNCTION_17_0();
              if (v28)
              {
                OUTLINED_FUNCTION_39();
                sub_1B1C2C768();
              }

              v29 = *(type metadata accessor for Realtime_V1_Session(0) + 60);
              return OUTLINED_FUNCTION_48();
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B1B9316C()
{
  result = qword_1EB762FF8;
  if (!qword_1EB762FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB762FF8);
  }

  return result;
}

unint64_t sub_1B1B931C0()
{
  result = qword_1EB763000;
  if (!qword_1EB763000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763000);
  }

  return result;
}

uint64_t sub_1B1B93214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FD8, &qword_1B1C3B480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Realtime_V1_Session(0) + 64);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762FD8, &qword_1B1C3B480);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

uint64_t sub_1B1B933F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE0, &qword_1B1C3B488);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Realtime_V1_TurnDetection(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Realtime_V1_Session(0) + 68);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762FE0, &qword_1B1C3B488);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

unint64_t sub_1B1B935D4()
{
  result = qword_1EB763010;
  if (!qword_1EB763010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763010);
  }

  return result;
}

void static Realtime_V1_Session.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_62();
  v67 = type metadata accessor for Realtime_V1_TurnDetection(0);
  v4 = OUTLINED_FUNCTION_45(v67);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE0, &qword_1B1C3B488);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  v66 = (&v64 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763018, &qword_1B1C3B4A0);
  OUTLINED_FUNCTION_45(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_82();
  v19 = type metadata accessor for Realtime_V1_InputAudioTranscription(0);
  v20 = OUTLINED_FUNCTION_45(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FD8, &qword_1B1C3B480);
  OUTLINED_FUNCTION_23(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_35();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763020, &qword_1B1C3B4A8);
  OUTLINED_FUNCTION_45(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  if ((sub_1B1B8DE00(*v1, *v0) & 1) == 0)
  {
    goto LABEL_40;
  }

  v36 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v36 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_40;
  }

  v37 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v37 && (sub_1B1C2D7A8() & 1) == 0 || (sub_1B1B1AFA0(*(v1 + 40), *(v1 + 48), *(v0 + 40), *(v0 + 48)) & 1) == 0 || (sub_1B1B1AFA0(*(v1 + 56), *(v1 + 64), *(v0 + 56), *(v0 + 64)) & 1) == 0)
  {
    goto LABEL_40;
  }

  v64 = v9;
  v65 = type metadata accessor for Realtime_V1_Session(0);
  v38 = *(v65 + 64);
  v39 = *(v30 + 48);
  sub_1B1B90BBC();
  sub_1B1B90BBC();
  OUTLINED_FUNCTION_48_0(v35, 1, v19);
  if (v36)
  {
    OUTLINED_FUNCTION_48_0(&v35[v39], 1, v19);
    if (v36)
    {
      sub_1B1A90C20(v35, &qword_1EB762FD8, &qword_1B1C3B480);
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  sub_1B1B90BBC();
  OUTLINED_FUNCTION_48_0(&v35[v39], 1, v19);
  if (v40)
  {
    sub_1B1B8F87C();
LABEL_22:
    v41 = &qword_1EB763020;
    v42 = &qword_1B1C3B4A8;
LABEL_23:
    v43 = v35;
LABEL_39:
    sub_1B1A90C20(v43, v41, v42);
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_11_21();
  sub_1B1B8F650();
  v44 = *v2 == *v25 && v2[1] == v25[1];
  if (!v44 && (sub_1B1C2D7A8() & 1) == 0)
  {
    sub_1B1B8F87C();
    OUTLINED_FUNCTION_33_2();
    sub_1B1B8F87C();
    v41 = &qword_1EB762FD8;
    v42 = &qword_1B1C3B480;
    goto LABEL_23;
  }

  v45 = *(v19 + 20);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v46, v47);
  v48 = sub_1B1C2CB18();
  sub_1B1B8F87C();
  sub_1B1B8F87C();
  sub_1B1A90C20(v35, &qword_1EB762FD8, &qword_1B1C3B480);
  if ((v48 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_30:
  v49 = v65;
  v50 = *(v65 + 68);
  v51 = *(v15 + 48);
  sub_1B1B90BBC();
  sub_1B1B90BBC();
  v52 = OUTLINED_FUNCTION_73_4();
  v53 = v67;
  OUTLINED_FUNCTION_48_0(v52, v54, v67);
  if (!v36)
  {
    v55 = v66;
    sub_1B1B90BBC();
    OUTLINED_FUNCTION_48_0(v3 + v51, 1, v53);
    if (!v56)
    {
      OUTLINED_FUNCTION_8_23();
      v57 = v64;
      sub_1B1B8F650();
      v58 = static Realtime_V1_TurnDetection.== infix(_:_:)(v55, v57);
      sub_1B1B8F87C();
      sub_1B1B8F87C();
      sub_1B1A90C20(v3, &qword_1EB762FE0, &qword_1B1C3B488);
      if ((v58 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_42;
    }

    sub_1B1B8F87C();
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_48_0(v3 + v51, 1, v53);
  if (!v36)
  {
LABEL_38:
    v41 = &qword_1EB763018;
    v42 = &qword_1B1C3B4A0;
    v43 = v3;
    goto LABEL_39;
  }

  sub_1B1A90C20(v3, &qword_1EB762FE0, &qword_1B1C3B488);
LABEL_42:
  if ((sub_1B1B8DE90(*(v1 + 72), *(v0 + 72)) & 1) != 0 && (sub_1B1B1AFA0(*(v1 + 80), *(v1 + 88), *(v0 + 80), *(v0 + 88)) & 1) != 0 && *(v1 + 92) == *(v0 + 92) && *(v1 + 96) == *(v0 + 96))
  {
    v59 = *(v1 + 104) == *(v0 + 104) && *(v1 + 112) == *(v0 + 112);
    if (v59 || (sub_1B1C2D7A8() & 1) != 0)
    {
      v60 = *(v1 + 120) == *(v0 + 120) && *(v1 + 128) == *(v0 + 128);
      if (v60 || (sub_1B1C2D7A8() & 1) != 0)
      {
        v61 = *(v49 + 60);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_0_30();
        sub_1B1B94F28(v62, v63);
        sub_1B1C2CB18();
      }
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_26_1();
}

uint64_t (*sub_1B1B93D08(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_1B1B93D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633C8, type metadata accessor for Realtime_V1_Session);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B93DDC(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B93E4C()
{
  sub_1B1B94F28(&qword_1EB762DE8, type metadata accessor for Realtime_V1_Session);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B93ED8()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762EA0);
  __swift_project_value_buffer(v0, qword_1EB762EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B1C3B470;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "modalities";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B1C2C798();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "instructions";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "voice";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "output_audio_format";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "tools";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "tool_choice";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "temperature";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "max_output_tokens";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v8();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Response.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCC54();
        break;
      case 2:
      case 3:
      case 8:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 4:
        OUTLINED_FUNCTION_43();
        sub_1B1AFCCA4();
        break;
      case 5:
        OUTLINED_FUNCTION_43();
        sub_1B1B94330();
        break;
      case 6:
        OUTLINED_FUNCTION_43();
        sub_1B1B943D0();
        break;
      case 7:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C668();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B94330()
{
  type metadata accessor for Realtime_V1_Tool(0);
  sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool);
  return sub_1B1C2C6A8();
}

uint64_t Realtime_V1_Response.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_22();
  if (!*(*v0 + 16) || (sub_1B1B9316C(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C708(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_17_0();
    if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
    {
      v7 = *(v2 + 24);
      v8 = *(v2 + 32);
      OUTLINED_FUNCTION_17_0();
      if (!v9 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
      {
        if (!*(v2 + 40) || (v10 = *(v2 + 48), OUTLINED_FUNCTION_72_2(), sub_1B1B931C0(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
        {
          if (!*(*(v2 + 56) + 16) || (type metadata accessor for Realtime_V1_Tool(0), OUTLINED_FUNCTION_54_2(), sub_1B1B94F28(v11, v12), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C778(), !v1))
          {
            if (!*(v2 + 64) || (v13 = *(v2 + 72), OUTLINED_FUNCTION_72_2(), sub_1B1B935D4(), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C718(), !v1))
            {
              if (!*(v2 + 76) || (OUTLINED_FUNCTION_31_8(), OUTLINED_FUNCTION_72_0(), result = sub_1B1C2C738(), !v1))
              {
                v14 = *(v2 + 80);
                v15 = *(v2 + 88);
                OUTLINED_FUNCTION_17_0();
                if (!v16 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v1))
                {
                  v17 = *(type metadata accessor for Realtime_V1_Response(0) + 48);
                  return OUTLINED_FUNCTION_48();
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

uint64_t static Realtime_V1_Response.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  if ((sub_1B1B8DE00(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v5 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B1B1AFA0(*(v1 + 40), *(v1 + 48), *(v0 + 40), *(v0 + 48)) & 1) == 0 || (sub_1B1B8DE90(*(v1 + 56), *(v0 + 56)) & 1) == 0 || (sub_1B1B1AFA0(*(v1 + 64), *(v1 + 72), *(v0 + 64), *(v0 + 72)) & 1) == 0 || *(v1 + 76) != *(v0 + 76))
  {
    return 0;
  }

  v6 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Realtime_V1_Response(0) + 48);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v8, v9);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t (*sub_1B1B947C8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1B1B9481C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633C0, type metadata accessor for Realtime_V1_Response);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B9489C(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B9490C()
{
  sub_1B1B94F28(&qword_1EB762DD8, type metadata accessor for Realtime_V1_Response);

  return sub_1B1C2C6E8();
}

uint64_t (*sub_1B1B94A98(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1B1B94AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633B8, type metadata accessor for Realtime_V1_Part);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B94B54(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763140, type metadata accessor for Realtime_V1_Part);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B94BC4()
{
  sub_1B1B94F28(&qword_1EB763140, type metadata accessor for Realtime_V1_Part);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B94C5C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762ED0);
  __swift_project_value_buffer(v0, qword_1EB762ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C361C0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "model";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B1C2C798();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_InputAudioTranscription.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t Realtime_V1_InputAudioTranscription.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v1 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    v3 = *(type metadata accessor for Realtime_V1_InputAudioTranscription(0) + 20);
    return OUTLINED_FUNCTION_48();
  }

  return result;
}

uint64_t static Realtime_V1_InputAudioTranscription.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Realtime_V1_InputAudioTranscription(0) + 20);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v6, v7);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1B94F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1B95014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633B0, type metadata accessor for Realtime_V1_InputAudioTranscription);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B95094(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B95104()
{
  sub_1B1B94F28(&qword_1EB763158, type metadata accessor for Realtime_V1_InputAudioTranscription);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B9519C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762EE8);
  __swift_project_value_buffer(v0, qword_1EB762EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
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
  *v12 = "prefix_padding_ms";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "silence_duration_ms";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_TurnDetection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    if (!v1[4] || (OUTLINED_FUNCTION_31_8(), OUTLINED_FUNCTION_72_0(), result = sub_1B1C2C738(), !v0))
    {
      if (!v1[5] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
      {
        if (!v1[6] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
        {
          v4 = *(type metadata accessor for Realtime_V1_TurnDetection(0) + 32);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_TurnDetection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0 || *(v3 + 16) != *(v2 + 16) || *(v3 + 20) != *(v2 + 20) || *(v3 + 24) != *(v2 + 24))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Realtime_V1_TurnDetection(0) + 32);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v8, v9);
  return OUTLINED_FUNCTION_42() & 1;
}