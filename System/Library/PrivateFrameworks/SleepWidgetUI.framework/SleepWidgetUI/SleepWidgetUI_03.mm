uint64_t sub_269E35C28(uint64_t a1, void (*a2)(void))
{
  v52 = a1;
  sub_269E39CE4();
  v4 = v3;
  v54 = *(v3 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_269E50B9C();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269E51BCC();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v18;
  v19 = sub_269E5101C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v24 = sub_269E5100C();
  v25 = sub_269E51ECC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = a2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v44 = v11;
    v29 = v28;
    v55 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v55);
    _os_log_impl(&dword_269DE5000, v24, v25, "[%{public}s] Returning timeline for sleep score widget", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v11 = v44;
    MEMORY[0x26D654490](v29, -1, -1);
    v30 = v27;
    a2 = v45;
    MEMORY[0x26D654490](v30, -1, -1);
  }

  (*(v20 + 8))(v23, v19);
  v31 = type metadata accessor for SleepScoreWidgetEntry(0);
  v32 = v52;
  sub_269E39A9C(v52 + *(v31 + 20), v10, &qword_281573C60, MEMORY[0x277CC9578]);
  v33 = v47;
  v34 = (*(v47 + 48))(v10, 1, v11);
  v35 = v49;
  if (v34 == 1)
  {
    sub_269E39C04(v10, &qword_281573C60, MEMORY[0x277CC9578]);
    sub_269E51BBC();
  }

  else
  {
    v36 = v46;
    (*(v33 + 32))(v46, v10, v11);
    sub_269E51BAC();
    (*(v33 + 8))(v36, v11);
  }

  sub_269E3953C(0, &qword_28035F218, type metadata accessor for SleepScoreWidgetEntry, MEMORY[0x277D84560]);
  v37 = *(*(v31 - 8) + 72);
  v38 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_269E528D0;
  sub_269E39C74(v32, v39 + v38, type metadata accessor for SleepScoreWidgetEntry);
  v41 = v50;
  v40 = v51;
  (*(v50 + 16))(v48, v35, v51);
  sub_269E3871C(&qword_28035F208, type metadata accessor for SleepScoreWidgetEntry);
  v42 = v53;
  sub_269E51C2C();
  a2(v42);
  (*(v54 + 8))(v42, v4);
  return (*(v41 + 8))(v35, v40);
}

uint64_t sub_269E3625C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v29 = sub_269E50CDC();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v7 = type metadata accessor for SleepScoreWidgetTimelineProvider(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = *(v10 + 36);
  v28 = *(v10 + 32);
  v12 = v3 + v11;
  v13 = *v12;
  v14 = *(v12 + 8);
  sub_269E39C74(v4, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreWidgetTimelineProvider);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_269E39B1C(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SleepScoreWidgetTimelineProvider);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v32;
  *v17 = v31;
  v17[1] = v18;

  result = sub_269E50CEC();
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = v13;
    v34 = v14;
    v21 = v29;
    (*(v5 + 16))(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v28, v29);
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v13;
    *(v23 + 24) = v14;
    (*(v5 + 32))(v23 + v22, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
    v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v24 = sub_269E398D8;
    v24[1] = v16;
    v25 = v13;
    v26 = v14;

    sub_269E45B8C(v30 & 1, v20, 132, sub_269E39988, v23);
  }

  return result;
}

uint64_t sub_269E36514(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v98 = a5;
  v99 = a4;
  v91 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_269E3953C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v101 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v85 - v12;
  v95 = type metadata accessor for SleepScoreWidgetEntry(0);
  v13 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v96 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3953C(0, &qword_281573C60, MEMORY[0x277CC9578], v7);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v85 - v20;
  v94 = sub_269E50B9C();
  v92 = *(v94 - 8);
  v21 = *(v92 + 64);
  v22 = MEMORY[0x28223BE20](v94);
  v103 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - v24;
  v89 = type metadata accessor for SleepScoreWidgetViewModel();
  v26 = *(*(v89 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v89);
  v104 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v88 = &v85 - v30;
  MEMORY[0x28223BE20](v29);
  v90 = &v85 - v31;
  v32 = sub_269E5101C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 8);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v85 - v38;
  v102 = a1;
  v100 = v37;
  if (a2)
  {
    v87 = v25;
    v40 = a2;
    sub_269E50FFC();
    v41 = a2;
    v42 = sub_269E5100C();
    v43 = sub_269E51EAC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v106[0] = v85;
      *v44 = 136446466;
      *(v44 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, v106);
      *(v44 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v86 = v19;
      v46 = *(*(v105 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v48 + 16))(&v85 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = sub_269E51D0C();
      v51 = sub_269E47920(v49, v50, v106);

      *(v44 + 14) = v51;
      v19 = v86;
      _os_log_impl(&dword_269DE5000, v42, v43, "[%{public}s] Error getting sleep score widget viewModel: %{public}s", v44, 0x16u);
      v52 = v85;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v52, -1, -1);
      v53 = v44;
      a1 = v102;
      MEMORY[0x26D654490](v53, -1, -1);
    }

    else
    {
    }

    (*(v33 + 1))(v39, v32);
    v25 = v87;
    v37 = v100;
  }

  sub_269E50FFC();
  v54 = v90;
  sub_269E39C74(a1, v90, type metadata accessor for SleepScoreWidgetViewModel);
  v55 = sub_269E5100C();
  v56 = sub_269E51ECC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v87 = v33;
    v58 = v57;
    v59 = swift_slowAlloc();
    v106[0] = v59;
    *v58 = 136446466;
    *(v58 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, v106);
    *(v58 + 12) = 2082;
    sub_269E39C74(v54, v88, type metadata accessor for SleepScoreWidgetViewModel);
    v60 = sub_269E51D0C();
    v61 = v32;
    v62 = v19;
    v63 = v25;
    v65 = v64;
    sub_269E39A3C(v54, type metadata accessor for SleepScoreWidgetViewModel);
    v66 = sub_269E47920(v60, v65, v106);
    v25 = v63;
    v19 = v62;

    *(v58 + 14) = v66;
    _os_log_impl(&dword_269DE5000, v55, v56, "[%{public}s] Returning sleep score widget viewModel: %{public}s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v59, -1, -1);
    MEMORY[0x26D654490](v58, -1, -1);

    (*(v87 + 1))(v100, v61);
  }

  else
  {

    sub_269E39A3C(v54, type metadata accessor for SleepScoreWidgetViewModel);
    (*(v33 + 1))(v37, v32);
  }

  v67 = v94;
  sub_269E50B8C();
  v68 = v91 + *(type metadata accessor for SleepScoreWidgetTimelineProvider(0) + 36);
  v69 = v93;
  Calendar.midnight(after:)(v93);
  v70 = v92;
  (*(v92 + 16))(v103, v25, v67);
  sub_269E39A9C(v69, v19, &qword_281573C60, MEMORY[0x277CC9578]);
  v71 = v102;
  sub_269E39C74(v102, v104, type metadata accessor for SleepScoreWidgetViewModel);
  v72 = v97;
  if (*v71)
  {
    v73 = v71[3];
    if (v73)
    {
      v74 = [v73 averageSleepDuration];
      if (v74)
      {
        v75 = v74;
        [v74 _value];
      }
    }

    v76 = v101;
    sub_269E51BDC();
    v77 = sub_269E51BEC();
    v78 = *(v77 - 8);
    (*(v78 + 56))(v76, 0, 1, v77);
    (*(v78 + 32))(v72, v76, v77);
  }

  else
  {
    v77 = sub_269E51BEC();
    v79 = *(v77 - 8);
    v80 = v101;
    (*(v79 + 56))(v101, 1, 1, v77);
    sub_269E51BDC();
    if ((*(v79 + 48))(v80, 1, v77) != 1)
    {
      sub_269E39C04(v101, &qword_281571DE0, MEMORY[0x277CE3E20]);
    }
  }

  sub_269E51BEC();
  (*(*(v77 - 8) + 56))(v72, 0, 1, v77);
  v81 = v96;
  (*(v70 + 32))(v96, v103, v67);
  v82 = v95;
  v83 = MEMORY[0x277CC9578];
  sub_269E39B84(v19, v81 + *(v95 + 20), &qword_281573C60, MEMORY[0x277CC9578]);
  sub_269E39B1C(v104, v81 + *(v82 + 24), type metadata accessor for SleepScoreWidgetViewModel);
  sub_269E39B84(v72, v81 + *(v82 + 28), &qword_281571DE0, MEMORY[0x277CE3E20]);
  v99(v81);
  sub_269E39A3C(v81, type metadata accessor for SleepScoreWidgetEntry);
  sub_269E39C04(v69, &qword_281573C60, v83);
  return (*(v70 + 8))(v25, v67);
}

uint64_t sub_269E37120(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269DF73E0;

  return sub_269E371B8(a1);
}

uint64_t sub_269E371B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SleepScoreWidgetEntry(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_269E5101C();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269E372B4, 0, 0);
}

uint64_t sub_269E372B4()
{
  v19 = v0;
  v1 = v0[9];
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v18);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] fetching current entry for relevance...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[10] = v10;
  v11 = v0[3];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = 1;
  v13 = *(MEMORY[0x277D859E0] + 4);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_269E374BC;
  v16 = v0[4];
  v15 = v0[5];

  return MEMORY[0x2822007B8](v15, 0, 0, 0xD000000000000023, 0x8000000269E567C0, sub_269E397F4, v12, v16);
}

uint64_t sub_269E374BC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269E375D4, 0, 0);
}

uint64_t sub_269E375D4()
{
  v18 = v0;
  v1 = v0[8];
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v17);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] determining relevance for entry...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D654490](v10, -1, -1);
    MEMORY[0x26D654490](v9, -1, -1);
  }

  v5(v6, v8);
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[5];
  v14 = *(v0[4] + 24);
  sub_269DF4554(v0[2]);
  sub_269E39A3C(v13, type metadata accessor for SleepScoreWidgetEntry);

  v15 = v0[1];

  return v15();
}

uint64_t sub_269E3778C(uint64_t a1, uint64_t a2, int a3)
{
  sub_269E39800();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_269E3625C(a3, sub_269E39868, v10);
}

uint64_t sub_269E378D0(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreWidgetEntry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269E39C74(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreWidgetEntry);
  sub_269E39800();
  return sub_269E51DEC();
}

SleepWidgetUI::SleepScoreWidget __swiftcall SleepScoreWidget.init()()
{
  v1 = v0;
  v2 = *MEMORY[0x277D622F8];
  v3 = sub_269E51CDC();
  *v1 = v3;
  v1[1] = v4;
  result.kind._object = v4;
  result.kind._countAndFlagsBits = v3;
  return result;
}

uint64_t SleepScoreWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v91 = sub_269E51CBC();
  v84 = *(v91 - 8);
  v2 = *(v84 + 64);
  MEMORY[0x28223BE20](v91);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269E50BDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SleepScoreWidgetTimelineProvider(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E3852C();
  v87 = v14;
  v88 = *(v14 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v14);
  v82 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E38814();
  v18 = *(v17 - 8);
  v92 = v17;
  v93 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v85 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E388E4();
  v22 = *(v21 - 8);
  v94 = v21;
  v95 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v86 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E389F4();
  v26 = *(v25 - 8);
  v96 = v25;
  v97 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v89 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E38B3C();
  v100 = v29;
  v102 = *(v29 - 8);
  v30 = *(v102 + 64);
  MEMORY[0x28223BE20](v29);
  v90 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E38CB4();
  v101 = v32;
  v99 = *(v32 - 8);
  v33 = *(v99 + 64);
  MEMORY[0x28223BE20](v32);
  v98 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v1[1];
  v83 = *v1;
  v36 = v10[9];
  (*(v6 + 104))(v9, *MEMORY[0x277CC9830], v5);

  sub_269E50BEC();
  (*(v6 + 8))(v9, v5);
  v37 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *v13 = v37;
  v38 = objc_allocWithZone(MEMORY[0x277D62528]);
  v39 = v37;
  v40 = sub_269E51CCC();
  v41 = [v38 initWithIdentifier:v40 healthStore:v39 options:1];

  v13[1] = v41;
  sub_269E50D4C();
  v42 = v41;
  sub_269E50D3C();
  v43 = v13 + v10[6];
  sub_269E50D2C();

  v44 = (v13 + v10[7]);
  *v44 = v39;
  v44[1] = v42;
  sub_269E38590();
  sub_269E38764();
  sub_269E3871C(&qword_281573430, type metadata accessor for SleepScoreWidgetTimelineProvider);
  sub_269E51B8C();
  v45 = v4;
  sub_269E51CAC();
  v46 = sub_269E35418(v4);
  v48 = v47;
  v49 = *(v84 + 8);
  v50 = v91;
  v49(v4, v91);
  v104 = v46;
  v105 = v48;
  v51 = sub_269E3871C(&qword_281571E10, sub_269E3852C);
  v52 = sub_269DF0E28();
  v53 = v85;
  v54 = v87;
  v55 = v82;
  sub_269E5138C();

  (*(v88 + 8))(v55, v54);
  sub_269E51CAC();
  v56 = sub_269E35418(v45);
  v58 = v57;
  v49(v45, v50);
  v108 = v56;
  v109 = v58;
  v104 = v54;
  v59 = MEMORY[0x277D837D0];
  v105 = MEMORY[0x277D837D0];
  v106 = v51;
  v107 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v86;
  v62 = v92;
  sub_269E5135C();

  (*(v93 + 8))(v53, v62);
  _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  v104 = v62;
  v105 = v59;
  v106 = OpaqueTypeConformance2;
  v107 = v52;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v89;
  v65 = v94;
  sub_269E5136C();

  (*(v95 + 8))(v61, v65);
  v104 = v65;
  v105 = v63;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v90;
  v68 = v96;
  sub_269E5139C();
  (*(v97 + 8))(v64, v68);
  v69 = MEMORY[0x277D84560];
  sub_269E3953C(0, &qword_281571BC8, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  v70 = *(sub_269E51B3C() - 8);
  v71 = *(v70 + 72);
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  *(swift_allocObject() + 16) = xmmword_269E528E0;
  sub_269E51B2C();
  sub_269E51B1C();
  sub_269E3953C(0, &qword_281571BD0, MEMORY[0x277CE3BA0], v69);
  v73 = sub_269E51B0C();
  v74 = *(v73 - 8);
  v75 = *(v74 + 72);
  v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_269E528D0;
  (*(v74 + 104))(v77 + v76, *MEMORY[0x277CE3B68], v73);
  v104 = v68;
  v105 = v66;
  swift_getOpaqueTypeConformance2();
  v78 = v98;
  v79 = v100;
  sub_269E5137C();

  (*(v102 + 8))(v67, v79);
  sub_269E3903C(v103);
  return (*(v99 + 8))(v78, v101);
}

void sub_269E3852C()
{
  if (!qword_281571E08)
  {
    sub_269E38590();
    sub_269E38764();
    v0 = sub_269E51B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571E08);
    }
  }
}

void sub_269E38590()
{
  if (!qword_281572448)
  {
    sub_269E38630();
    sub_269E39720(255, &qword_2815720D8, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572448);
    }
  }
}

void sub_269E38630()
{
  if (!qword_281571FA0)
  {
    type metadata accessor for SleepScoreWidgetView();
    sub_269E50B9C();
    sub_269E3871C(qword_281573388, type metadata accessor for SleepScoreWidgetView);
    sub_269E3871C(&qword_281573C68, MEMORY[0x277CC9578]);
    v0 = sub_269E5192C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571FA0);
    }
  }
}

uint64_t sub_269E3871C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269E38764()
{
  result = qword_281572450;
  if (!qword_281572450)
  {
    sub_269E38590();
    sub_269E3871C(&qword_281571FA8, sub_269E38630);
    sub_269E1C2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572450);
  }

  return result;
}

void sub_269E38814()
{
  if (!qword_281572270)
  {
    sub_269E3852C();
    sub_269E3871C(&qword_281571E10, sub_269E3852C);
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572270);
    }
  }
}

void sub_269E388E4()
{
  if (!qword_2815722B0)
  {
    sub_269E38814();
    sub_269E3852C();
    sub_269E3871C(&qword_281571E10, sub_269E3852C);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722B0);
    }
  }
}

void sub_269E389F4()
{
  if (!qword_281572298)
  {
    sub_269E388E4();
    sub_269E38814();
    sub_269E3852C();
    sub_269E3871C(&qword_281571E10, sub_269E3852C);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572298);
    }
  }
}

void sub_269E38B3C()
{
  if (!qword_281572250)
  {
    sub_269E389F4();
    sub_269E388E4();
    sub_269E38814();
    sub_269E3852C();
    sub_269E3871C(&qword_281571E10, sub_269E3852C);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572250);
    }
  }
}

void sub_269E38CB4()
{
  if (!qword_281572280)
  {
    sub_269E38B3C();
    sub_269E389F4();
    sub_269E388E4();
    sub_269E38814();
    sub_269E3852C();
    sub_269E3871C(&qword_281571E10, sub_269E3852C);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572280);
    }
  }
}

void sub_269E38E64(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(type metadata accessor for SleepScoreWidgetEntry(0) + 24);
  v5 = type metadata accessor for SleepScoreWidgetView();
  sub_269E39C74(a1 + v4, a2 + v5[7], type metadata accessor for SleepScoreWidgetViewModel);
  *a2 = swift_getKeyPath();
  sub_269E3953C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  sub_269E38630();
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  v7[32] = 0;
  v9 = *(v8 + 52);
  v10 = sub_269E50B9C();
  (*(*(v10 - 8) + 16))(a2 + v9, a1, v10);
  v11 = sub_269E5107C();

  sub_269E38590();
  *(a2 + *(v12 + 36)) = v11;
}

void sub_269E3903C(uint64_t a1@<X8>)
{
  v3 = sub_269E5101C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = objc_opt_self();
  v12 = [v11 sharedBehavior];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 features];

  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = [v14 sleepDetails];

  v44 = a1;
  v45 = v1;
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = [v11 sharedBehavior];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 hksp_supportsHealthData];

    if (v18)
    {
      sub_269E50FFC();
      v19 = sub_269E5100C();
      v20 = sub_269E51E9C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v46 = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v46);
        _os_log_impl(&dword_269DE5000, v19, v20, "[%{public}s] sleep score widget supported", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x26D654490](v22, -1, -1);
        MEMORY[0x26D654490](v21, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
LABEL_12:
      sub_269E38CB4();
      sub_269E38B3C();
      v28 = v27;
      sub_269E389F4();
      v30 = v29;
      sub_269E388E4();
      v32 = v31;
      sub_269E38814();
      v34 = v33;
      sub_269E3852C();
      v36 = v35;
      v37 = sub_269E3871C(&qword_281571E10, sub_269E3852C);
      v38 = sub_269DF0E28();
      v39 = MEMORY[0x277D837D0];
      v46 = v36;
      v47 = MEMORY[0x277D837D0];
      v48 = v37;
      v49 = v38;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v46 = v34;
      v47 = v39;
      v48 = OpaqueTypeConformance2;
      v49 = v38;
      v41 = swift_getOpaqueTypeConformance2();
      v46 = v32;
      v47 = v41;
      v42 = swift_getOpaqueTypeConformance2();
      v46 = v30;
      v47 = v42;
      v43 = swift_getOpaqueTypeConformance2();
      v46 = v28;
      v47 = v43;
      swift_getOpaqueTypeConformance2();
      sub_269E513AC();
      return;
    }

LABEL_9:
    sub_269E50FFC();
    v23 = sub_269E5100C();
    v24 = sub_269E51ECC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v46);
      _os_log_impl(&dword_269DE5000, v23, v24, "[%{public}s] sleep score widget not supported", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D654490](v26, -1, -1);
      MEMORY[0x26D654490](v25, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_269E39504@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x277D622F8];
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_269E3953C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E395F4()
{
  sub_269DF6A7C(319, &qword_281571D10, 0x277CCD4D8);
  if (v0 <= 0x3F)
  {
    sub_269DF6A7C(319, &qword_281571D08, 0x277D62528);
    if (v1 <= 0x3F)
    {
      sub_269E50CDC();
      if (v2 <= 0x3F)
      {
        sub_269E39720(319, qword_281572B98, type metadata accessor for SleepScoreWidgetViewModel, &protocol witness table for SleepScoreWidgetViewModel, type metadata accessor for SleepWidgetRelevanceProvider);
        if (v3 <= 0x3F)
        {
          sub_269E50C8C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269E39720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_269E39800()
{
  if (!qword_281571D40)
  {
    type metadata accessor for SleepScoreWidgetEntry(255);
    v0 = sub_269E51DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571D40);
    }
  }
}

uint64_t sub_269E39868(uint64_t a1)
{
  sub_269E39800();
  v3 = *(*(v2 - 8) + 80);

  return sub_269E378D0(a1);
}

uint64_t sub_269E398D8(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for SleepScoreWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_269E36514(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_269E39988(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_269E50CDC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_269E467A0(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t sub_269E39A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E39A9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3953C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E39B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E39B84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3953C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E39C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E3953C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E39C74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269E39CE4()
{
  if (!qword_28035F210)
  {
    type metadata accessor for SleepScoreWidgetEntry(255);
    sub_269E3871C(&qword_28035F208, type metadata accessor for SleepScoreWidgetEntry);
    v0 = sub_269E51C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F210);
    }
  }
}

void sub_269E39DA8()
{
  sub_269E50B9C();
  if (v0 <= 0x3F)
  {
    sub_269E3953C(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SleepScoreWidgetViewModel();
      if (v2 <= 0x3F)
      {
        sub_269E3953C(319, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t SleepWidgetViewModel.baseAccessibilityIdentifier.getter()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v0 = qword_281575978;

  return v0;
}

uint64_t SleepWidgetViewModel.title.getter()
{
  v1 = sub_269E5101C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269E50BCC();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269E50BDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269E50C8C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 8) & 1) == 0)
  {
    v25 = *v0;
    if (*v0 <= 3)
    {
      if (v25 == 2)
      {
        if (qword_281571CB0 == -1)
        {
          return sub_269E50A7C();
        }

LABEL_16:
        swift_once();
        return sub_269E50A7C();
      }

      if (v25 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if ((v25 - 4) < 2)
      {
        if (qword_281571CB0 == -1)
        {
          return sub_269E50A7C();
        }

        goto LABEL_16;
      }

      if (v25 != 6)
      {
        goto LABEL_2;
      }
    }

    v26 = v17;
    v27 = v18;
    (*(v11 + 104))(v14, *MEMORY[0x277CC9830], v10);
    sub_269E50BEC();
    (*(v11 + 8))(v14, v10);
    v28 = *(type metadata accessor for SleepWidgetViewModel() + 32);
    sub_269E50BAC();
    sub_269E50C0C();
    (*(v30 + 8))(v9, v6);
    (*(v27 + 8))(v20, v26);
    return sub_269E51E8C();
  }

LABEL_2:
  sub_269E50FFC();
  v21 = sub_269E5100C();
  v22 = sub_269E51EAC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_269DE5000, v21, v22, "State has no title", v23, 2u);
    MEMORY[0x26D654490](v23, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

BOOL SleepWidgetViewModel.showWakeUpDateView.getter()
{
  v0 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  sub_269E3CD30(&v8 - v3);
  v5 = sub_269E50B9C();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_269E3E2CC(v4, &qword_281573C60, v0);
  return v6;
}

uint64_t sub_269E3A4C0()
{
  *v0;
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t sub_269E3A588()
{
  *v0;
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t SleepWidgetViewModel.scheduleOccurrenceTimeAttributedString(occurrence:isCondensed:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_269E50ACC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_269E3E81C(0, &qword_28035F220, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  if (*a1 == 3)
  {
    v21 = &v31 - v19;
    if (a2)
    {
      SleepWidgetViewModel.localizedCondensedBedtimeAttributedString.getter(v21);
    }

    else
    {
      SleepWidgetViewModel.localizedBedtimeAttributedString.getter(v21);
    }

    sub_269E3E33C(v20, v18, &qword_28035F220, MEMORY[0x277CC8C40]);
    v22 = sub_269E50A5C();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v18, 1, v22) == 1)
    {
      if (qword_281571CB0 != -1)
      {
        swift_once();
      }

      sub_269E50A7C();
      sub_269E50ABC();
      sub_269E50A6C();
      sub_269E3E2CC(v20, &qword_28035F220, MEMORY[0x277CC8C40]);
      result = v24(v18, 1, v22);
      if (result != 1)
      {
        v26 = MEMORY[0x277CC8C40];
        v27 = v18;
        return sub_269E3E2CC(v27, &qword_28035F220, v26);
      }
    }

    else
    {
      sub_269E3E2CC(v20, &qword_28035F220, MEMORY[0x277CC8C40]);
      return (*(v23 + 32))(a3, v18, v22);
    }
  }

  else
  {
    if (a2)
    {
      SleepWidgetViewModel.localizedCondensedWakeUpAttributedString.getter(v15);
    }

    else
    {
      SleepWidgetViewModel.localizedWakeUpAttributedString.getter(v15);
    }

    sub_269E3E33C(v15, v12, &qword_28035F220, MEMORY[0x277CC8C40]);
    v28 = sub_269E50A5C();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (v30(v12, 1, v28) == 1)
    {
      if (qword_281571CB0 != -1)
      {
        swift_once();
      }

      sub_269E50A7C();
      sub_269E50ABC();
      sub_269E50A6C();
      sub_269E3E2CC(v15, &qword_28035F220, MEMORY[0x277CC8C40]);
      result = v30(v12, 1, v28);
      if (result != 1)
      {
        v26 = MEMORY[0x277CC8C40];
        v27 = v12;
        return sub_269E3E2CC(v27, &qword_28035F220, v26);
      }
    }

    else
    {
      sub_269E3E2CC(v15, &qword_28035F220, MEMORY[0x277CC8C40]);
      return (*(v29 + 32))(a3, v12, v28);
    }
  }

  return result;
}

uint64_t sub_269E3AB78(_BYTE *a1)
{
  v2 = sub_269E50B9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  if (*a1 == 3)
  {
    sub_269E3CA50(&v16 - v12);
  }

  else
  {
    sub_269E3CD30(&v16 - v12);
  }

  sub_269E3E33C(v13, v11, &qword_281573C60, MEMORY[0x277CC9578]);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_269E3E2CC(v11, &qword_281573C60, MEMORY[0x277CC9578]);
    if (qword_281571CB0 != -1)
    {
      swift_once();
    }

    sub_269E50A7C();
    sub_269E50F3C();
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v14 setDateStyle_];
    [v14 setTimeStyle_];
    sub_269E51EEC();

    (*(v3 + 8))(v6, v2);
  }

  return sub_269E3E2CC(v13, &qword_281573C60, MEMORY[0x277CC9578]);
}

uint64_t SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(unsigned __int8 *a1)
{
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_269E50B9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = *a1;
  v19 = type metadata accessor for SleepWidgetViewModel();
  v20 = v19;
  v21 = (v11 + 48);
  if (v18 == 3)
  {
    sub_269E3E33C(v1 + *(v19 + 48), v9, &qword_281573C60, MEMORY[0x277CC9578]);
    if ((*v21)(v9, 1, v10) == 1)
    {
      v22 = MEMORY[0x277CC9578];
      v23 = v9;
LABEL_6:
      sub_269E3E2CC(v23, &qword_281573C60, v22);
      return 0;
    }

    (*(v11 + 32))(v17, v9, v10);
    v25 = *(v1 + *(v20 + 36));
    v26 = sub_269E50B5C();
    v27 = [v25 stringFromDate_];

    v28 = sub_269E51CDC();
    (*(v11 + 8))(v17, v10);
  }

  else
  {
    sub_269E3E33C(v1 + *(v19 + 52), v7, &qword_281573C60, MEMORY[0x277CC9578]);
    if ((*v21)(v7, 1, v10) == 1)
    {
      v22 = MEMORY[0x277CC9578];
      v23 = v7;
      goto LABEL_6;
    }

    (*(v11 + 32))(v15, v7, v10);
    v29 = *(v1 + *(v20 + 36));
    v30 = sub_269E50B5C();
    v31 = [v29 stringFromDate_];

    v28 = sub_269E51CDC();
    (*(v11 + 8))(v15, v10);
  }

  return v28;
}

uint64_t SleepWidgetViewModel.sleepChart.getter@<X0>(char **a1@<X8>)
{
  result = type metadata accessor for SleepWidgetViewModel();
  v4 = (v1 + *(result + 40));
  if (*v4)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    return sub_269E0B178(a1);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

double SleepWidgetViewModel.init(state:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SleepWidgetViewModel();
  v7 = v6[5];
  v8 = sub_269E50A0C();
  v9 = *(*(v8 - 8) + 56);
  v9(a3 + v7, 1, 1, v8);
  v9(a3 + v6[6], 1, 1, v8);
  v10 = a3 + v6[8];
  sub_269E50B8C();
  v11 = v6[9];
  *(a3 + v11) = [objc_allocWithZone(sub_269E50F0C()) init];
  v12 = v6[11];
  v13 = sub_269E50B9C();
  v14 = *(*(v13 - 8) + 56);
  v14(a3 + v12, 1, 1, v13);
  v14(a3 + v6[12], 1, 1, v13);
  v14(a3 + v6[13], 1, 1, v13);
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  *(a3 + v6[7]) = 0;
  v15 = (a3 + v6[10]);
  result = 0.0;
  *v15 = 0u;
  v15[1] = 0u;
  return result;
}

id SleepWidgetViewModel.summaryResults.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepWidgetViewModel() + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_269DF6E4C(v4, v5, v6, v7);
}

uint64_t SleepWidgetViewModel.init(state:bedtimeComponents:wakeUpComponents:alarmState:summaryResults:now:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = *a5;
  v14 = type metadata accessor for SleepWidgetViewModel();
  v15 = v14[9];
  v16 = sub_269E50F0C();
  v26 = a6[1];
  v27 = *a6;
  *(a8 + v15) = [objc_allocWithZone(v16) init];
  v17 = v14[11];
  v18 = sub_269E50B9C();
  v25 = *(v18 - 8);
  v19 = *(v25 + 56);
  v19(a8 + v17, 1, 1, v18);
  v19(a8 + v14[12], 1, 1, v18);
  v19(a8 + v14[13], 1, 1, v18);
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  v20 = MEMORY[0x277CC8990];
  sub_269E3E4B4(a3, a8 + v14[5], &qword_281573CB0, MEMORY[0x277CC8990]);
  sub_269E3E4B4(a4, a8 + v14[6], &qword_281573CB0, v20);
  *(a8 + v14[7]) = v28;
  v21 = (a8 + v14[10]);
  *v21 = v27;
  v21[1] = v26;
  v22 = *(v25 + 32);
  v23 = a8 + v14[8];

  return v22(v23, a7, v18);
}

uint64_t SleepWidgetViewModel.init(resolvedOccurrence:summaryResults:state:now:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v75 = a4;
  v74 = a3;
  v10 = MEMORY[0x277D83D88];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v76 = &v68 - v17;
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], v10);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  v25 = type metadata accessor for SleepWidgetViewModel();
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a2;
  v70 = a2[1];
  v71 = v29;
  v80 = a6;
  v72 = v24;
  v73 = v22;
  if (a1)
  {
    v30 = [a1 occurrence];
    v31 = [v30 bedtimeComponents];

    sub_269E509FC();
    v32 = sub_269E50A0C();
    v33 = *(*(v32 - 8) + 56);
    v33(v24, 0, 1, v32);
    v34 = [a1 occurrence];
    v35 = [v34 wakeUpComponents];

    sub_269E509FC();
    v33(v22, 0, 1, v32);
  }

  else
  {
    v36 = sub_269E50A0C();
    v37 = *(*(v36 - 8) + 56);
    v37(v24, 1, 1, v36);
    v37(v22, 1, 1, v36);
  }

  v69 = a1;
  sub_269E3BD48(a1, &v81);
  v38 = a1;
  v39 = v81;
  v40 = v25[8];
  v41 = sub_269E50B9C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 16);
  v79 = a5;
  v43(&v28[v40], a5, v41);
  v44 = v25[9];
  *&v28[v44] = [objc_allocWithZone(sub_269E50F0C()) init];
  v45 = *(v42 + 56);
  v45(&v28[v25[11]], 1, 1, v41);
  v45(&v28[v25[12]], 1, 1, v41);
  v45(&v28[v25[13]], 1, 1, v41);
  *v28 = v74;
  v28[8] = v75 & 1;
  v46 = MEMORY[0x277CC8990];
  sub_269E3E4B4(v72, &v28[v25[5]], &qword_281573CB0, MEMORY[0x277CC8990]);
  sub_269E3E4B4(v73, &v28[v25[6]], &qword_281573CB0, v46);
  v28[v25[7]] = v39;
  v47 = &v28[v25[10]];
  v48 = v70;
  *v47 = v71;
  *(v47 + 1) = v48;
  v49 = v80;
  sub_269E3E3BC(v28, v80);
  v50 = v38;
  if (v38)
  {
    v51 = v69;
    v52 = [v69 windDownEvent];
    if (v52)
    {
      v53 = v52;
      v54 = [v52 dueDate];

      v55 = v76;
      sub_269E50B6C();

      v56 = 0;
    }

    else
    {
      v56 = 1;
      v55 = v76;
    }

    v45(v55, v56, 1, v41);
    sub_269E3E420(v55, v49 + v25[11]);
    v58 = [v51 bedtimeEvent];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 dueDate];

      v61 = v77;
      sub_269E50B6C();

      v45(v61, 0, 1, v41);
      sub_269E3E420(v61, v49 + v25[12]);
      goto LABEL_12;
    }
  }

  else
  {
    v57 = v76;
    v45(v76, 1, 1, v41);
    sub_269E3E420(v57, v49 + v25[11]);
    v51 = v69;
  }

  v62 = 1;
  v63 = v77;
  v45(v77, 1, 1, v41);
  sub_269E3E420(v63, v49 + v25[12]);
  if (!v50)
  {
    v66 = v78;
    goto LABEL_14;
  }

LABEL_12:
  v64 = [v51 wakeUpEvent];
  v65 = [v64 dueDate];

  v66 = v78;
  sub_269E50B6C();

  v62 = 0;
LABEL_14:
  (*(v42 + 8))(v79, v41);
  v45(v66, v62, 1, v41);
  return sub_269E3E420(v66, v49 + v25[13]);
}

void sub_269E3BD48(void *a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 wakeUpEvent];
    v5 = [v4 type];

    if (v5 == 1)
    {

      v6 = 1;
    }

    else
    {
      v7 = [v3 occurrence];
      v8 = [v7 alarmConfiguration];

      LODWORD(v7) = [v8 isEnabled];
      if (v7)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t SleepWidgetViewModel.init(resolvedOccurrence:summaryResults:state:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v5) = a4;
  v69 = a3;
  v73 = a5;
  v8 = MEMORY[0x277D83D88];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v72 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v64[-v14];
  MEMORY[0x28223BE20](v13);
  v70 = &v64[-v15];
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], v8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v74 = &v64[-v21];
  v22 = type metadata accessor for SleepWidgetViewModel();
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v64[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_269E50B9C();
  v76 = *(v26 - 8);
  v27 = *(v76 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = *a2;
  v66 = a2[1];
  v67 = v29;
  v75 = &v64[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E50B8C();
  v68 = v20;
  if (a1)
  {
    v65 = v5;
    v30 = [a1 occurrence];
    v31 = [v30 bedtimeComponents];

    v32 = v74;
    sub_269E509FC();

    v33 = sub_269E50A0C();
    v34 = *(*(v33 - 8) + 56);
    v34(v32, 0, 1, v33);
    v35 = [a1 occurrence];
    v5 = [v35 wakeUpComponents];

    sub_269E509FC();
    LOBYTE(v5) = v65;
    v34(v20, 0, 1, v33);
  }

  else
  {
    v36 = sub_269E50A0C();
    v37 = *(*(v36 - 8) + 56);
    v37(v74, 1, 1, v36);
    v37(v20, 1, 1, v36);
  }

  v38 = a1;
  sub_269E3BD48(a1, &v77);
  v39 = v77;
  v40 = v76;
  (*(v76 + 16))(&v25[v22[8]], v75, v26);
  v41 = v22[9];
  *&v25[v41] = [objc_allocWithZone(sub_269E50F0C()) init];
  v42 = *(v40 + 56);
  v42(&v25[v22[11]], 1, 1, v26);
  v42(&v25[v22[12]], 1, 1, v26);
  v42(&v25[v22[13]], 1, 1, v26);
  *v25 = v69;
  v25[8] = v5 & 1;
  v43 = MEMORY[0x277CC8990];
  sub_269E3E4B4(v74, &v25[v22[5]], &qword_281573CB0, MEMORY[0x277CC8990]);
  sub_269E3E4B4(v68, &v25[v22[6]], &qword_281573CB0, v43);
  v25[v22[7]] = v39;
  v44 = &v25[v22[10]];
  v45 = v66;
  *v44 = v67;
  v44[1] = v45;
  v46 = v73;
  sub_269E3E3BC(v25, v73);
  if (a1)
  {
    v47 = [v38 windDownEvent];
    v48 = v38;
    if (v47)
    {
      v49 = v47;
      v50 = [v47 dueDate];

      v51 = v70;
      sub_269E50B6C();

      v52 = 0;
    }

    else
    {
      v52 = 1;
      v51 = v70;
    }

    v42(v51, v52, 1, v26);
    sub_269E3E420(v51, v46 + v22[11]);
    v54 = [v48 bedtimeEvent];
    if (v54)
    {
      v55 = v54;
      v56 = [v54 dueDate];

      v57 = v71;
      sub_269E50B6C();

      v42(v57, 0, 1, v26);
      sub_269E3E420(v57, v46 + v22[12]);
      goto LABEL_12;
    }
  }

  else
  {
    v53 = v70;
    v42(v70, 1, 1, v26);
    sub_269E3E420(v53, v46 + v22[11]);
    v48 = v38;
  }

  v58 = 1;
  v59 = v71;
  v42(v71, 1, 1, v26);
  sub_269E3E420(v59, v46 + v22[12]);
  if (!a1)
  {
    v62 = v72;
    goto LABEL_14;
  }

LABEL_12:
  v60 = [v48 wakeUpEvent];
  v61 = [v60 dueDate];

  v62 = v72;
  sub_269E50B6C();

  v58 = 0;
LABEL_14:
  (*(v76 + 8))(v75, v26);
  v42(v62, v58, 1, v26);
  return sub_269E3E420(v62, v46 + v22[13]);
}

uint64_t SleepWidgetViewModel.defaultText.getter()
{
  if (v0[1])
  {
    return 0x617453206C6C754ELL;
  }

  v2 = *v0;
  v3 = NSStringFromHKSPSleepWidgetState();
  v4 = sub_269E51CDC();

  return v4;
}

uint64_t sub_269E3C628@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_269E50BCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6A7C(0, &qword_281571D00, 0x277CCA968);
  sub_269E50BAC();
  HKSPIsRemoveSpacesForTimeFormatEnabled();
  v14 = sub_269E51EDC();
  v15 = (*(v10 + 8))(v13, v9);
  a1(v15);
  sub_269E3D470(v8, v14);
  v17 = v16;
  sub_269E3E2CC(v8, &qword_281573C60, v4);
  if (v17)
  {
    sub_269E51D5C();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_269E50A5C();
  return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
}

uint64_t sub_269E3C870@<X0>(void (*a1)(id)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E50ACC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v11 setDateStyle_];
  v12 = 1;
  a1([v11 setTimeStyle_]);
  sub_269E3D470(v10, v11);
  v14 = v13;

  sub_269E3E2CC(v10, &qword_281573C60, v6);
  if (v14)
  {
    sub_269E50ABC();
    sub_269E50A6C();
    v12 = 0;
  }

  v15 = sub_269E50A5C();
  return (*(*(v15 - 8) + 56))(a2, v12, 1, v15);
}

uint64_t sub_269E3CA50@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = MEMORY[0x277CC8990];
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_269E50A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269E50C8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50C5C();
  v17 = type metadata accessor for SleepWidgetViewModel();
  sub_269E3E33C(v1 + *(v17 + 20), v6, &qword_281573CB0, v2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v13 + 8))(v16, v12);
    sub_269E3E2CC(v6, &qword_281573CB0, MEMORY[0x277CC8990]);
    v18 = sub_269E50B9C();
    return (*(*(v18 - 8) + 56))(v21, 1, 1, v18);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_269E50C2C();
    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_269E3CD30@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = MEMORY[0x277CC8990];
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = sub_269E50A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269E50C8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50C5C();
  v17 = type metadata accessor for SleepWidgetViewModel();
  sub_269E3E33C(v1 + *(v17 + 24), v6, &qword_281573CB0, v2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v13 + 8))(v16, v12);
    sub_269E3E2CC(v6, &qword_281573CB0, MEMORY[0x277CC8990]);
    v18 = sub_269E50B9C();
    return (*(*(v18 - 8) + 56))(v21, 1, 1, v18);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_269E50C2C();
    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t SleepWidgetViewModel.localizedBedtimeRelativeDateString.getter()
{
  v1 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepWidgetViewModel();
  sub_269E3E33C(v0 + *(v11 + 48), v5, &qword_281573C60, v1);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_269E3E2CC(v5, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = *(v0 + *(v11 + 36));
    v14 = sub_269E50B5C();
    v15 = [v13 stringFromDate_];

    v16 = sub_269E51CDC();
    (*(v7 + 8))(v10, v6);
    return v16;
  }
}

uint64_t SleepWidgetViewModel.localizedWakeUpRelativeDateString.getter()
{
  v1 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepWidgetViewModel();
  sub_269E3E33C(v0 + *(v11 + 52), v5, &qword_281573C60, v1);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_269E3E2CC(v5, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = *(v0 + *(v11 + 36));
    v14 = sub_269E50B5C();
    v15 = [v13 stringFromDate_];

    v16 = sub_269E51CDC();
    (*(v7 + 8))(v10, v6);
    return v16;
  }
}

uint64_t sub_269E3D470(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_269E50B9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3E33C(a1, v8, &qword_281573C60, v4);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_269E3E2CC(v8, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v15 = sub_269E50B5C();
    v16 = [a2 stringFromDate_];

    v17 = sub_269E51CDC();
    (*(v10 + 8))(v13, v9);
    return v17;
  }
}

uint64_t sub_269E3D6BC(void (*a1)(id))
{
  v2 = MEMORY[0x277CC9578];
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v7 setDateStyle_];
  a1([v7 setTimeStyle_]);
  v8 = sub_269E3D470(v6, v7);

  sub_269E3E2CC(v6, &qword_281573C60, v2);
  return v8;
}

uint64_t SleepWidgetViewModel.sleepSampleEndDateString.getter()
{
  v1 = sub_269E509EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = sub_269E50B9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v0 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v19 = v18[1];
  if (*v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_18:
    sub_269E3E2CC(v12, &qword_281573C60, MEMORY[0x277CC9578]);
    return 0;
  }

  v21 = [v19 periods];
  sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
  v22 = sub_269E51DAC();

  if (v22 >> 62)
  {
    v23 = sub_269E5204C();
    if (v23)
    {
LABEL_9:
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if (v24)
      {
        __break(1u);
      }

      else if ((v22 & 0xC000000000000001) == 0)
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v25 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v26 = *(v22 + 8 * v25 + 32);
LABEL_14:
          v27 = v26;

          v28 = [v27 dateInterval];

          sub_269E5099C();
          sub_269E509AC();
          (*(v2 + 8))(v5, v1);
          (*(v14 + 56))(v10, 0, 1, v13);
          goto LABEL_17;
        }

        __break(1u);
LABEL_28:
        swift_once();
        goto LABEL_21;
      }

      v26 = MEMORY[0x26D653D70](v25, v22);
      goto LABEL_14;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_9;
    }
  }

  (*(v14 + 56))(v10, 1, 1, v13);
LABEL_17:
  sub_269E3E4B4(v10, v12, &qword_281573C60, MEMORY[0x277CC9578]);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_18;
  }

  (*(v14 + 32))(v17, v12, v13);
  v22 = sub_269E50B5C();
  if (qword_28035E880 != -1)
  {
    goto LABEL_28;
  }

LABEL_21:
  v30 = HKMostRecentSampleEndDateText();

  if (!v30)
  {
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  v31 = sub_269E51CDC();

  (*(v14 + 8))(v17, v13);
  return v31;
}

uint64_t SleepWidgetViewModel.AlarmState.hashValue.getter()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

uint64_t SleepWidgetViewModel.description.getter()
{
  sub_269E3E81C(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-v3];
  sub_269E3E81C(0, &qword_281571BB0, sub_269E3E534, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269E53730;
  if (v0[1])
  {
    v6 = 0xEA00000000006574;
    v7 = 0x617453206C6C754ELL;
  }

  else
  {
    v8 = *v0;
    v9 = NSStringFromHKSPSleepWidgetState();
    v7 = sub_269E51CDC();
    v6 = v10;
  }

  v11 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v12 = sub_269E3E598();
  *(v5 + 64) = v12;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v13 = type metadata accessor for SleepWidgetViewModel();
  v14 = MEMORY[0x277CC8990];
  sub_269E3E33C(v0 + v13[5], v4, &qword_281573CB0, MEMORY[0x277CC8990]);
  v15 = sub_269E51D0C();
  *(v5 + 96) = v11;
  *(v5 + 104) = v12;
  *(v5 + 72) = v15;
  *(v5 + 80) = v16;
  sub_269E3E33C(v0 + v13[6], v4, &qword_281573CB0, v14);
  v17 = sub_269E51D0C();
  *(v5 + 136) = v11;
  *(v5 + 144) = v12;
  *(v5 + 112) = v17;
  *(v5 + 120) = v18;
  v22[15] = *(v0 + v13[7]);
  v19 = sub_269E51D0C();
  *(v5 + 176) = v11;
  *(v5 + 184) = v12;
  *(v5 + 152) = v19;
  *(v5 + 160) = v20;
  return sub_269E51CEC();
}

uint64_t SleepWidgetViewModel.noDataTexts.getter()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  if (*v1 && (v8 = *v1, v9 = v1[1], v10 = v1[2], v11 = v1[3], SleepDaySummaryResults.hasAnyDataInLastWeek.getter()))
  {
    sub_269E3E880(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_269E546C0;
    if (qword_281571CB0 != -1)
    {
      swift_once();
    }

    *(v2 + 32) = sub_269E50A7C();
    *(v2 + 40) = v3;
    *(v2 + 48) = sub_269E50A7C();
    *(v2 + 56) = v4;
    *(v2 + 64) = 11565;
    *(v2 + 72) = 0xE200000000000000;
    sub_269E3E880(0, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269E18DEC();
    v5 = sub_269E51E7C();
  }

  else
  {
    sub_269E3E880(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_269E528E0;
    if (qword_281571CB0 != -1)
    {
      swift_once();
    }

    *(v5 + 32) = sub_269E50A7C();
    *(v5 + 40) = v6;
    *(v5 + 48) = 11565;
    *(v5 + 56) = 0xE200000000000000;
  }

  return v5;
}

id sub_269E3E1F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_269DF6E4C(v4, v5, v6, v7);
}

uint64_t sub_269E3E218()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v0 = qword_281575978;

  return v0;
}

uint64_t type metadata accessor for SleepWidgetViewModel()
{
  result = qword_2815728B8;
  if (!qword_2815728B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E3E2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E3E81C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E3E33C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3E81C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E3E3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E3E420(uint64_t a1, uint64_t a2)
{
  sub_269E3E81C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E3E4B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E3E81C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_269E3E534()
{
  result = qword_281571BA0;
  if (!qword_281571BA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281571BA0);
  }

  return result;
}

unint64_t sub_269E3E598()
{
  result = qword_281571DD0;
  if (!qword_281571DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DD0);
  }

  return result;
}

unint64_t sub_269E3E5F0()
{
  result = qword_28035F228;
  if (!qword_28035F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F228);
  }

  return result;
}

void sub_269E3E66C()
{
  sub_269E3E81C(319, &qword_281571CD8, type metadata accessor for HKSPSleepWidgetState, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_269E3E81C(319, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_269E50B9C();
      if (v2 <= 0x3F)
      {
        sub_269E50F0C();
        if (v3 <= 0x3F)
        {
          sub_269E3E880(319, &qword_281573CD8, &type metadata for SleepDaySummaryResults, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_269E3E81C(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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

void sub_269E3E81C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E3E880(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SleepWidgetViewModel.ScheduleOccurrence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepWidgetViewModel.ScheduleOccurrence(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_269E3EA24(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_269E3EA38(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_269E3EA68()
{
  v0 = sub_269E5101C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v5 = sub_269E5100C();
  v6 = sub_269E51ECC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v11);
    _os_log_impl(&dword_269DE5000, v5, v6, "[%{public}s] Returning placeholder for sleep launcher widget...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D654490](v8, -1, -1);
    MEMORY[0x26D654490](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_269E50B7C();
}

uint64_t sub_269E3EC0C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v9 = sub_269E5100C();
  v10 = sub_269E51ECC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v15);
    _os_log_impl(&dword_269DE5000, v9, v10, "[%{public}s] Returning snapshot for sleep launcher widget", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D654490](v12, -1, -1);
    MEMORY[0x26D654490](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1);
}

uint64_t sub_269E3EDC8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v25 = a1;
  v3 = sub_269E51BCC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_269E3FBD4();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269E5101C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v15 = sub_269E5100C();
  v16 = sub_269E51ECC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v29);
    _os_log_impl(&dword_269DE5000, v15, v16, "[%{public}s] Returning timeline for sleep launcher widget", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D654490](v18, -1, -1);
    MEMORY[0x26D654490](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_269E3FC68();
  v19 = *(type metadata accessor for SleepLauncherComplicationEntry() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_269E528D0;
  sub_269E3FCC0(v25, v22 + v21);
  sub_269E51BBC();
  sub_269E3F8B8(&qword_28035F258, type metadata accessor for SleepLauncherComplicationEntry);
  sub_269E51C2C();
  v28(v9);
  return (*(v6 + 8))(v9, v26);
}

uint64_t sub_269E3F1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3D00] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_269DF73E0;

  return MEMORY[0x282136278](a1, a2, a3);
}

SleepWidgetUI::SleepLauncherComplication __swiftcall SleepLauncherComplication.init()()
{
  v1 = v0;
  v2 = *MEMORY[0x277D62248];
  v3 = sub_269E51CDC();
  *v1 = v3;
  v1[1] = v4;
  result.kind._object = v4;
  result.kind._countAndFlagsBits = v3;
  return result;
}

uint64_t SleepLauncherComplication.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  sub_269E3F598();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3F648();
  v21[0] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = v1[1];
  sub_269E3F5F4();
  sub_269E3F7A8();

  sub_269E51B8C();
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v22 = sub_269E50A7C();
  v23 = v15;
  v16 = sub_269E3F8B8(&qword_28035F248, sub_269E3F598);
  v17 = sub_269DF0E28();
  v18 = MEMORY[0x277D837D0];
  sub_269E5138C();

  (*(v4 + 8))(v7, v3);
  sub_269E182D4();
  v22 = v3;
  v23 = v18;
  v24 = v16;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  v19 = v21[0];
  sub_269E5136C();

  return (*(v9 + 8))(v12, v19);
}

void sub_269E3F598()
{
  if (!qword_28035F230)
  {
    sub_269E3F5F4();
    v0 = sub_269E51B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F230);
    }
  }
}

unint64_t sub_269E3F5F4()
{
  result = qword_28035F238;
  if (!qword_28035F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F238);
  }

  return result;
}

void sub_269E3F648()
{
  if (!qword_28035F240)
  {
    sub_269E3F598();
    sub_269E3F8B8(&qword_28035F248, sub_269E3F598);
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F240);
    }
  }
}

uint64_t sub_269E3F718()
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

unint64_t sub_269E3F7A8()
{
  result = qword_28035F250;
  if (!qword_28035F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F250);
  }

  return result;
}

uint64_t sub_269E3F7FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x277D62248];
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_269E3F8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepLauncherComplicationEntry()
{
  result = qword_28035F270;
  if (!qword_28035F270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E3F94C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(void, void, void))
{
  v9 = type metadata accessor for SleepLauncherComplicationEntry();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269E5101C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v18 = sub_269E5100C();
  v19 = sub_269E51ECC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = a2;
    v31 = v22;
    v23 = a3;
    v24 = a5;
    v25 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_269E47920(0xD000000000000029, 0x8000000269E55BE0, &v31);
    _os_log_impl(&dword_269DE5000, v18, v19, v29, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v26 = v25;
    a5 = v24;
    a3 = v23;
    a2 = v30;
    MEMORY[0x26D654490](v26, -1, -1);
    MEMORY[0x26D654490](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  sub_269E50B7C();
  a5(v12, a2, a3);
  return sub_269E3FB78(v12);
}

uint64_t sub_269E3FB78(uint64_t a1)
{
  v2 = type metadata accessor for SleepLauncherComplicationEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269E3FBD4()
{
  if (!qword_28035F260)
  {
    type metadata accessor for SleepLauncherComplicationEntry();
    sub_269E3F8B8(&qword_28035F258, type metadata accessor for SleepLauncherComplicationEntry);
    v0 = sub_269E51C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F260);
    }
  }
}

void sub_269E3FC68()
{
  if (!qword_28035F268)
  {
    type metadata accessor for SleepLauncherComplicationEntry();
    v0 = sub_269E521AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F268);
    }
  }
}

uint64_t sub_269E3FCC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepLauncherComplicationEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E3FD4C()
{
  result = sub_269E50B9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 SleepStageInAppWidgetView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t SleepStageInAppWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30[1] = a1;
  v2 = sub_269E5144C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE53C();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E401B8();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E40370();
  v31 = *(v17 - 8);
  v32 = v17;
  v18 = *(v31 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 16);
  v37[0] = *v1;
  v37[1] = v21;
  v38 = *(v1 + 32);
  *v16 = sub_269E5134C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_269E40924();
  sub_269E404BC(v37, &v16[*(v22 + 44)]);
  v23 = *MEMORY[0x277CDFA10];
  v24 = sub_269E510EC();
  (*(*(v24 - 8) + 104))(v11, v23, v24);
  sub_269E40474(&qword_281572560, MEMORY[0x277CDFA28]);
  result = sub_269E51C9C();
  if (result)
  {
    v26 = sub_269E40474(&qword_28035F2B0, sub_269E401B8);
    v27 = sub_269E40474(&qword_281571BF8, sub_269DFE53C);
    v30[0] = v2;
    v28 = v27;
    sub_269E5179C();
    sub_269E41548(v11, sub_269DFE53C);
    sub_269E41548(v16, sub_269E401B8);
    sub_269E5143C();
    v33 = v13;
    v34 = v8;
    v35 = v26;
    v36 = v28;
    swift_getOpaqueTypeConformance2();
    v29 = v32;
    sub_269E517DC();
    (*(v3 + 8))(v6, v30[0]);
    return (*(v31 + 8))(v20, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269E401B8()
{
  if (!qword_28035F280)
  {
    sub_269E414AC(255, &qword_28035F288, sub_269E4026C, MEMORY[0x277CE14B8]);
    sub_269E4030C(&qword_28035F2A0, &qword_28035F288, sub_269E4026C);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F280);
    }
  }
}

void sub_269E4026C()
{
  if (!qword_28035F290)
  {
    sub_269E41204(255, &qword_28035F298, type metadata accessor for SleepStageResultsView, MEMORY[0x277CDE470]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035F290);
    }
  }
}

uint64_t sub_269E4030C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_269E414AC(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269E40370()
{
  if (!qword_28035F2A8)
  {
    sub_269E401B8();
    sub_269DFE53C();
    sub_269E40474(&qword_28035F2B0, sub_269E401B8);
    sub_269E40474(&qword_281571BF8, sub_269DFE53C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F2A8);
    }
  }
}

uint64_t sub_269E40474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269E404BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for SleepStageResultsView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E41204(0, &qword_28035F298, type metadata accessor for SleepStageResultsView, MEMORY[0x277CDE470]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - v11;
  sub_269E51E1C();
  v35 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 24);
  v33 = *(a1 + 16);
  v14 = v33;
  v16 = *(a1 + 32);
  *v6 = swift_getKeyPath();
  v17 = MEMORY[0x277CDF458];
  sub_269E414AC(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v18 = *(v3 + 20);
  *(v6 + v18) = swift_getKeyPath();
  sub_269E414AC(0, &qword_281572610, MEMORY[0x277CE3AF8], v17);
  swift_storeEnumTagMultiPayload();
  v19 = v6 + *(v3 + 24);
  *v19 = v12;
  *(v19 + 1) = v13;
  *(v19 + 2) = v14;
  *(v19 + 3) = v15;
  LOBYTE(v18) = v16;
  v19[32] = v16;
  sub_269E41510(a1, v39);
  sub_269E41510(a1, v39);
  sub_269E41510(a1, v39);
  sub_269E40474(&qword_2815736A8, type metadata accessor for SleepStageResultsView);
  v20 = v37;
  sub_269E5177C();
  sub_269E41548(v6, type metadata accessor for SleepStageResultsView);
  v39[3] = &type metadata for SleepStageWidgetViewModel;
  v39[4] = &protocol witness table for SleepStageWidgetViewModel;
  v21 = swift_allocObject();
  v39[0] = v21;
  v22 = v12;
  *(v21 + 16) = v12;
  *(v21 + 24) = v13;
  v23 = v13;
  v24 = v33;
  *(v21 + 32) = v33;
  *(v21 + 40) = v15;
  v25 = v15;
  *(v21 + 48) = v18;
  LOBYTE(v15) = v18;
  v39[5] = sub_269E5180C();
  v26 = MEMORY[0x277CDE470];
  v27 = v36;
  sub_269E415A8(v20, v36, &qword_28035F298, type metadata accessor for SleepStageResultsView, MEMORY[0x277CDE470]);
  sub_269E41618(v39, v38);
  v28 = v34;
  *v34 = v22;
  v28[1] = v23;
  v28[2] = v24;
  v28[3] = v25;
  *(v28 + 32) = v15;
  sub_269E4026C();
  v30 = v29;
  sub_269E415A8(v27, v28 + *(v29 + 48), &qword_28035F298, type metadata accessor for SleepStageResultsView, v26);
  sub_269E41618(v38, v28 + *(v30 + 64));
  sub_269DF6E4C(v22, v23, v24, v25);
  sub_269E41674(v39);
  sub_269E41360(v37, &qword_28035F298, type metadata accessor for SleepStageResultsView, v26, sub_269E41204);
  sub_269E41674(v38);
  sub_269E41360(v27, &qword_28035F298, type metadata accessor for SleepStageResultsView, v26, sub_269E41204);
  sub_269DF6EA0(v22, v23, v24, v25);
}

void sub_269E40924()
{
  if (!qword_28035F2B8)
  {
    sub_269E414AC(255, &qword_28035F288, sub_269E4026C, MEMORY[0x277CE14B8]);
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F2B8);
    }
  }
}

uint64_t sub_269E409D8@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  sub_269E41204(0, &qword_28035F2D8, sub_269E41278, sub_269E41308);
  v48 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v51 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v49 = &v45[-v5];
  sub_269E414AC(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45[-v8];
  v10 = sub_269E5166C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E51E1C();
  v47 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v52 = sub_269E50A7C();
  v53 = v15;
  sub_269DF0E28();
  v16 = sub_269E516CC();
  v18 = v17;
  v20 = v19;
  (*(v11 + 104))(v14, *MEMORY[0x277CE0A68], v10);
  v21 = sub_269E5159C();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_269E515CC();
  sub_269E515EC();
  sub_269E41360(v9, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88], sub_269E414AC);
  (*(v11 + 8))(v14, v10);
  v22 = sub_269E516AC();
  v24 = v23;
  v26 = v25;

  sub_269E00F48(v16, v18, v20 & 1);

  v52 = sub_269E5180C();
  v27 = sub_269E5169C();
  v29 = v28;
  v46 = v30;
  v32 = v31;
  sub_269E00F48(v22, v24, v26 & 1);

  v33 = sub_269E518BC();
  sub_269E41278();
  v35 = v49;
  v36 = (v49 + *(v34 + 36));
  sub_269E414AC(0, &qword_281572090, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v38 = *(v37 + 28);
  v39 = *MEMORY[0x277CE1050];
  v40 = sub_269E518DC();
  (*(*(v40 - 8) + 104))(v36 + v38, v39, v40);
  *v36 = swift_getKeyPath();
  *v35 = v33;
  *(v35 + *(v48 + 36)) = sub_269E5181C();
  v41 = v51;
  sub_269E415A8(v35, v51, &qword_28035F2D8, sub_269E41278, sub_269E41308);
  v42 = v50;
  *v50 = v27;
  v42[1] = v29;
  LOBYTE(v38) = v46 & 1;
  *(v42 + 16) = v46 & 1;
  v42[3] = v32;
  v42[4] = 0;
  *(v42 + 40) = 1;
  sub_269E41164();
  sub_269E415A8(v41, v42 + *(v43 + 64), &qword_28035F2D8, sub_269E41278, sub_269E41308);
  sub_269E00F58(v27, v29, v38);

  sub_269E41360(v35, &qword_28035F2D8, sub_269E41278, sub_269E41308, sub_269E41204);
  sub_269E41360(v41, &qword_28035F2D8, sub_269E41278, sub_269E41308, sub_269E41204);
  sub_269E00F48(v27, v29, v38);
}

uint64_t sub_269E4102C@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 32);
  *a1 = sub_269E5130C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_269E410CC();
  return sub_269E409D8((a1 + *(v3 + 44)));
}

void sub_269E410CC()
{
  if (!qword_28035F2C0)
  {
    sub_269E414AC(255, &qword_28035F2C8, sub_269E41164, MEMORY[0x277CE14B8]);
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F2C0);
    }
  }
}

void sub_269E41164()
{
  if (!qword_28035F2D0)
  {
    sub_269E41204(255, &qword_28035F2D8, sub_269E41278, sub_269E41308);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035F2D0);
    }
  }
}

void sub_269E41204(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269E510FC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E41278()
{
  if (!qword_281572480)
  {
    sub_269E414AC(255, &qword_281572090, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572480);
    }
  }
}

void sub_269E41308()
{
  if (!qword_2815720D0)
  {
    v0 = sub_269E5141C();
    if (!v1)
    {
      atomic_store(v0, &qword_2815720D0);
    }
  }
}

uint64_t sub_269E41360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_269E413E4(uint64_t a1)
{
  v2 = sub_269E518DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269E5115C();
}

void sub_269E414AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E41548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E415A8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_269E41204(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_269E416C8()
{
  if (!qword_28035F2E8)
  {
    sub_269E414AC(255, &qword_28035F2C8, sub_269E41164, MEMORY[0x277CE14B8]);
    sub_269E4030C(&qword_28035F2F0, &qword_28035F2C8, sub_269E41164);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F2E8);
    }
  }
}

uint64_t type metadata accessor for UpcomingSleepWidgetCircularView()
{
  result = qword_281573858;
  if (!qword_281573858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E417F8(uint64_t a1)
{
  result = sub_269E41CC0(&qword_28035F0D0, type metadata accessor for UpcomingSleepWidgetCircularView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E4186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_269E50FBC();
  v3 = *(v19[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19[0]);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3216C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269E50B9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E3CA50(v10);
  v16 = *(v12 + 48);
  if (v16(v10, 1, v11) == 1)
  {
    v17 = type metadata accessor for SleepWidgetViewModel();
    (*(v12 + 16))(v15, a1 + *(v17 + 32), v11);
    if (v16(v10, 1, v11) != 1)
    {
      sub_269DFEA3C(v10);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  sub_269E50FAC();
  sub_269E50F6C();
  (*(v3 + 8))(v6, v19[0]);
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  sub_269E51A2C();
}

uint64_t sub_269E41B84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_269E519BC();
  a1[1] = v3;
  sub_269E41BC4();
  return sub_269E4186C(v1, a1 + *(v4 + 44));
}

void sub_269E41BC4()
{
  if (!qword_28035F2F8)
  {
    sub_269E51A3C();
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F2F8);
    }
  }
}

void sub_269E41C2C()
{
  if (!qword_28035F308)
  {
    sub_269E51A3C();
    sub_269E41CC0(&qword_28035F310, MEMORY[0x277D126E8]);
    v0 = sub_269E5195C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F308);
    }
  }
}

uint64_t sub_269E41CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepScoreWidgetCircularView()
{
  result = qword_28035F318;
  if (!qword_28035F318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E41D7C()
{
  result = type metadata accessor for SleepScoreWidgetViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269E41E28(uint64_t a1)
{
  v2 = sub_269E50EDC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269E5113C();
}

uint64_t sub_269E41EF0()
{
  v0 = MEMORY[0x277D83D88];
  sub_269E4221C(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_269E50E6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4221C(0, &qword_28035EE48, MEMORY[0x277D626B8], v0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  sub_269E20324();
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1DA9C(v13);
  (*(v6 + 104))(v9, *MEMORY[0x277D62708], v5);
  sub_269E50E7C();
  KeyPath = swift_getKeyPath();
  v20 = &v18[*(v15 + 36)];
  sub_269E4221C(0, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
  v22 = v20 + *(v21 + 28);
  sub_269E50EBC();
  *v20 = KeyPath;
  v23 = *MEMORY[0x277D62230];
  v24 = *MEMORY[0x277D62138];
  v25 = HKSPSleepURL();
  if (v25)
  {
    v26 = v25;
    sub_269E50AFC();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_269E50B0C();
  (*(*(v28 - 8) + 56))(v4, v27, 1, v28);
  sub_269E2E6C0();
  sub_269E5173C();
  sub_269DF0A3C(v4);
  return sub_269E42280(v18);
}

void sub_269E4221C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E42280(uint64_t a1)
{
  sub_269E20324();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.sleepWidgetFamily.getter()
{
  sub_269E0ABD8();

  return sub_269E512DC();
}

uint64_t EnvironmentValues.sleepWidgetFamily.setter(uint64_t a1)
{
  v2 = sub_269E51B0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_269E0ABD8();
  sub_269E512EC();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_269E42424()
{
  v0 = sub_269E51B0C();
  __swift_allocate_value_buffer(v0, qword_281572970);
  v1 = __swift_project_value_buffer(v0, qword_281572970);
  v2 = *MEMORY[0x277CE3B80];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_269E424AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_281572968 != -1)
  {
    swift_once();
  }

  v2 = sub_269E51B0C();
  v3 = __swift_project_value_buffer(v2, qword_281572970);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_269E42554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_269E42B1C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_269E425B8()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isAppleWatch];

    byte_28035F328 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269E4261C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_281572778 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_28035F328;
  return result;
}

void (*EnvironmentValues.sleepWidgetFamily.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_269E51B0C();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_269E0ABD8();
  sub_269E512DC();
  return sub_269E427C8;
}

void sub_269E427C8(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 16);
  v4((*a1)[4], v3[5], v3[1]);
  v6 = v3[5];
  v5 = v3[6];
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[1];
  v10 = v3[2];
  v11 = *v3;
  if (a2)
  {
    v12 = v3[6];
    v4(v3[3], v3[4], v3[1]);
    sub_269E512EC();
    v13 = *(v10 + 8);
    v13(v7, v9);
    v13(v6, v9);
  }

  else
  {
    v14 = v3[4];
    sub_269E512EC();
    (*(v10 + 8))(v6, v9);
  }

  free(v6);
  free(v7);
  free(v8);

  free(v3);
}

uint64_t EnvironmentValues.isAppleWatch.getter()
{
  sub_269E42930();
  sub_269E512DC();
  return v1;
}

unint64_t sub_269E42930()
{
  result = qword_281572770;
  if (!qword_281572770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572770);
  }

  return result;
}

uint64_t sub_269E42984@<X0>(_BYTE *a1@<X8>)
{
  sub_269E42930();
  result = sub_269E512DC();
  *a1 = v3;
  return result;
}

uint64_t sub_269E429D4(char *a1)
{
  v2 = *a1;
  sub_269E42930();
  return sub_269E512EC();
}

uint64_t (*EnvironmentValues.isAppleWatch.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_269E42930();
  sub_269E512DC();
  *(a1 + 16) = *(a1 + 17);
  return sub_269E42AC4;
}

uint64_t sub_269E42AC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_269E512EC();
}

unint64_t sub_269E42B1C()
{
  result = qword_281571E18;
  if (!qword_281571E18)
  {
    sub_269E51B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571E18);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t SleepWidgetViewModelProvider.init(healthStore:sleepStore:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SleepWidgetViewModelProvider.currentSleepStageWidgetViewModel(showLiveContent:completion:)(int a1, void (*a2)(void, void), void (**a3)(char *, uint64_t))
{
  v23 = a1;
  v6 = sub_269E5101C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v11 = v3[1];
  sub_269E50FFC();
  v13 = sub_269E5100C();
  v14 = sub_269E51ECC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = a2;
    v17 = v16;
    v24[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v24);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v23 & 1;
    _os_log_impl(&dword_269DE5000, v13, v14, "[%{public}s] getting sleep stage widget view model (live: %{BOOL}d)...", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v18 = v17;
    a2 = v22;
    MEMORY[0x26D654490](v18, -1, -1);
    MEMORY[0x26D654490](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v24[0] = v12;
  v24[1] = v11;
  v19 = v12;
  v20 = v11;

  sub_269E47EB0(v23 & 1, 1, 4, v24, v19, v20, 3, a2, a3);
}

void SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(int a1, void (*a2)(_BYTE *, id), uint64_t a3)
{
  v35 = a1;
  v6 = sub_269E50B9C();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269E5101C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[1];
  v33 = *v3;
  v34 = v15;
  sub_269E50FFC();
  v16 = sub_269E5100C();
  v17 = sub_269E51ECC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v6;
    v20 = a2;
    v21 = a3;
    v22 = v19;
    aBlock = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v35 & 1;
    _os_log_impl(&dword_269DE5000, v16, v17, "[%{public}s] getting sleep widget view model (live: %{BOOL}d)...", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    a3 = v21;
    a2 = v20;
    v6 = v31;
    MEMORY[0x26D654490](v23, -1, -1);
    MEMORY[0x26D654490](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (v35)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;
    v26 = v33;
    v25 = v34;
    *(v24 + 32) = v33;
    *(v24 + 40) = v25;
    *(v24 + 48) = 1;
    v40 = sub_269E48874;
    v41 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_269E43BD4;
    v39 = &block_descriptor;
    v27 = _Block_copy(&aBlock);

    v28 = v26;
    v29 = v25;

    [v29 sleepWidgetStateWithCompletion_];
    _Block_release(v27);
  }

  else
  {
    aBlock = v33;
    v37 = v34;
    sub_269E50B8C();
    SleepWidgetViewModelProvider.sleepWidgetViewModel(showLiveContent:state:date:completion:)(0, 6, v9, a2, a3);
    (*(v32 + 8))(v9, v6);
  }
}

uint64_t SleepWidgetViewModelProvider.sleepScoreWidgetViewModel(showLiveContent:algorithmVersion:completion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_269E50CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = *v4;
  v13 = *(v4 + 8);
  result = sub_269E50CEC();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = v12;
    v26 = v13;
    v15 = *(v10 + 16);
    v24 = result + 1;
    v15(&v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v9);
    v16 = *(v10 + 80);
    v23 = a1;
    v17 = (v16 + 32) & ~v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    (*(v10 + 32))(v18 + v17, &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
    v19 = (v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v19 = a3;
    v19[1] = a4;
    v20 = v12;
    v21 = v13;

    sub_269E45B8C(v23 & 1, v24, 132, sub_269E39988, v18);
  }

  return result;
}

uint64_t sub_269E43368(void *a1, uint64_t a2, void *a3, void (*a4)(char *, id), uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v87 = a8;
  v85 = a6;
  v86 = a7;
  v95 = a4;
  v92 = a1;
  v88 = type metadata accessor for SleepWidgetViewModel();
  v10 = *(*(v88 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v88);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v82 - v14;
  v16 = sub_269E50B9C();
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = *(v93 + 64);
  MEMORY[0x28223BE20](v16);
  v84 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_269E5101C();
  v19 = *(v98 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v98);
  v90 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v82 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v82 - v25;
  sub_269E50FFC();
  v27 = sub_269E5100C();
  v28 = sub_269E51ECC();
  v29 = os_log_type_enabled(v27, v28);
  v96 = v19;
  v89 = v13;
  if (!v29)
  {

    v42 = *(v19 + 8);
    v42(v26, v98);
    v43 = v97;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v99[0] = v85;
    v99[1] = v86;
    v56 = v84;
    sub_269E50B8C();
    SleepWidgetViewModelProvider.sleepWidgetViewModel(showLiveContent:state:date:completion:)(v87 & 1, v92, v56, v95, a5);
    return (*(v93 + 8))(v56, v94);
  }

  v30 = swift_slowAlloc();
  v91 = a5;
  v31 = v30;
  v82 = swift_slowAlloc();
  v99[0] = v82;
  *v31 = 136446466;
  *(v31 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v99);
  *(v31 + 12) = 2080;
  v32 = NSStringFromHKSPSleepWidgetState();
  v33 = a3;
  v34 = sub_269E51CDC();
  v36 = v35;

  v37 = sub_269E47920(v34, v36, v99);

  *(v31 + 14) = v37;
  a3 = v33;
  v38 = v98;
  v39 = v96;
  _os_log_impl(&dword_269DE5000, v27, v28, "[%{public}s] sleep widget state: %s", v31, 0x16u);
  v40 = v82;
  swift_arrayDestroy();
  MEMORY[0x26D654490](v40, -1, -1);
  v41 = v31;
  a5 = v91;
  MEMORY[0x26D654490](v41, -1, -1);

  v42 = *(v39 + 8);
  v42(v26, v38);
  v43 = v97;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v44 = a3;
  sub_269E50FFC();
  v45 = a3;
  v46 = sub_269E5100C();
  v47 = sub_269E51EAC();

  v48 = os_log_type_enabled(v46, v47);
  v83 = a3;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v91 = a5;
    v50 = v49;
    v51 = swift_slowAlloc();
    v99[0] = v51;
    *v50 = 136446466;
    *(v50 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v99);
    *(v50 + 12) = 2082;
    swift_getErrorValue();
    v52 = sub_269E521FC();
    v54 = sub_269E47920(v52, v53, v99);

    *(v50 + 14) = v54;
    _os_log_impl(&dword_269DE5000, v46, v47, "[%{public}s] Error getting sleepWidgetState: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v51, -1, -1);
    MEMORY[0x26D654490](v50, -1, -1);

    v55 = v97;
  }

  else
  {

    v55 = v43;
  }

  v42(v55, v98);
  v58 = v88;
  v59 = *(v88 + 20);
  v60 = sub_269E50A0C();
  v61 = *(*(v60 - 8) + 56);
  v61(&v15[v59], 1, 1, v60);
  v61(&v15[v58[6]], 1, 1, v60);
  v62 = &v15[v58[8]];
  sub_269E50B8C();
  v63 = v58[9];
  *&v15[v63] = [objc_allocWithZone(sub_269E50F0C()) init];
  v64 = v94;
  v65 = *(v93 + 56);
  v65(&v15[v58[11]], 1, 1, v94);
  v65(&v15[v58[12]], 1, 1, v64);
  v65(&v15[v58[13]], 1, 1, v64);
  *v15 = 0;
  v15[8] = 1;
  v15[v58[7]] = 0;
  v66 = &v15[v58[10]];
  *v66 = 0u;
  *(v66 + 1) = 0u;
  v67 = v90;
  sub_269E50FFC();
  v68 = v89;
  sub_269E48954(v15, v89);
  v69 = sub_269E5100C();
  v70 = sub_269E51ECC();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = v67;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v99[0] = v73;
    *v72 = 136446466;
    *(v72 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v99);
    *(v72 + 12) = 2080;
    v74 = SleepWidgetViewModel.description.getter();
    v75 = v68;
    v77 = v76;
    sub_269E48C98(v75, type metadata accessor for SleepWidgetViewModel);
    v78 = sub_269E47920(v74, v77, v99);

    *(v72 + 14) = v78;
    _os_log_impl(&dword_269DE5000, v69, v70, "[%{public}s] viewmodel=%s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v73, -1, -1);
    MEMORY[0x26D654490](v72, -1, -1);

    v79 = v71;
  }

  else
  {

    sub_269E48C98(v68, type metadata accessor for SleepWidgetViewModel);
    v79 = v67;
  }

  v42(v79, v98);
  v80 = v83;
  v81 = v83;
  v95(v15, v80);

  return sub_269E48C98(v15, type metadata accessor for SleepWidgetViewModel);
}

void sub_269E43BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

void SleepWidgetViewModelProvider.sleepWidgetViewModel(showLiveContent:state:date:completion:)(int a1, void *a2, void (*a3)(void, void, void), void (*a4)(_BYTE *, id), uint64_t a5)
{
  v137 = a4;
  v133 = a3;
  v134 = a2;
  v141[2] = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for SleepWidgetViewModel();
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v131 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v119[-v12];
  v138 = sub_269E50B9C();
  v14 = *(v138 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v138);
  v132 = &v119[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v127 = &v119[-v17];
  v18 = sub_269E5101C();
  v136 = *(v18 - 8);
  v19 = *(v136 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v119[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v128 = &v119[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v119[-v27];
  v30 = *v5;
  v29 = *(v5 + 8);
  LODWORD(v135) = a1;
  if ((a1 & 1) == 0)
  {
    v130 = v15;
    v131 = 0;
    v129 = 0;
    v66 = *(v14 + 16);
    v45 = v138;
    v67 = v14;
    v46 = v133;
LABEL_12:
    v141[0] = v30;
    v141[1] = v29;
    v86 = v132;
    v87 = v29;
    v88 = v30;
    v66(v132, v46, v45);
    v89 = (*(v67 + 80) + 48) & ~*(v67 + 80);
    v90 = (v130 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    *(v91 + 2) = v88;
    *(v91 + 3) = v87;
    v92 = v131;
    v93 = v134;
    *(v91 + 4) = v131;
    *(v91 + 5) = v93;
    (*(v67 + 32))(&v91[v89], v86, v45);
    v94 = &v91[v90];
    *v94 = v137;
    *(v94 + 1) = a5;
    v95 = v88;
    v96 = v87;

    sub_269E45B8C(v135 & 1, 7, 0, sub_269E4889C, v91);

    goto LABEL_13;
  }

  v129 = v26;
  v122 = v30;
  v125 = v14;
  v126 = a5;
  v141[0] = 0;
  v123 = v29;
  v31 = [v29 sleepScheduleModelWithError_];
  v32 = v141[0];
  if (v31)
  {
    v33 = v31;
    v34 = v31;
    v35 = v32;
    sub_269E50FFC();
    v36 = sub_269E5100C();
    v37 = sub_269E51ECC();

    v38 = os_log_type_enabled(v36, v37);
    v124 = v18;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v141[0] = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v141);
      *(v39 + 12) = 2082;
      v140 = v33;
      sub_269E489B8(0, &qword_281571CC8, &qword_281571CD0, 0x277D62500);
      v41 = v34;
      v42 = sub_269E51D0C();
      v44 = sub_269E47920(v42, v43, v141);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_269DE5000, v36, v37, "[%{public}s] fetched schedule model: %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v40, -1, -1);
      MEMORY[0x26D654490](v39, -1, -1);
    }

    v121 = *(v136 + 8);
    v121(v28, v18);
    v45 = v138;
    v46 = v133;
    v47 = sub_269E50B5C();
    v48 = [v34 upcomingResolvedOccurrenceAfterDate_];
    v129 = v34;

    v131 = v48;
    v49 = v48;
    v50 = v128;
    sub_269E50FFC();
    v51 = v125;
    v52 = v127;
    v133 = *(v125 + 16);
    v133(v127, v46, v45);
    v53 = sub_269E5100C();
    v54 = sub_269E51ECC();

    v55 = os_log_type_enabled(v53, v54);
    v130 = v15;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v141[0] = v57;
      *v56 = 136446722;
      *(v56 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v141);
      *(v56 + 12) = 2080;
      v120 = v54;
      v58 = sub_269E50B1C();
      v60 = v59;
      (*(v51 + 8))(v52, v138);
      v61 = sub_269E47920(v58, v60, v141);

      *(v56 + 14) = v61;
      *(v56 + 22) = 2082;
      v140 = v131;
      sub_269E489B8(0, &qword_281571CB8, &qword_281571CC0, 0x277D624C0);
      v62 = sub_269E51F8C();
      v64 = sub_269E47920(v62, v63, v141);

      *(v56 + 24) = v64;
      _os_log_impl(&dword_269DE5000, v53, v120, "[%{public}s] upcomingResolvedOccurrence after %s is: %{public}s", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v57, -1, -1);
      v65 = v56;
      v45 = v138;
      MEMORY[0x26D654490](v65, -1, -1);
    }

    else
    {

      (*(v51 + 8))(v52, v45);
    }

    v121(v50, v124);
    a5 = v126;
    v67 = v51;
    v29 = v123;
    v30 = v122;
    v66 = v133;
    goto LABEL_12;
  }

  v68 = v141[0];
  v69 = sub_269E50AEC();

  swift_willThrow();
  sub_269E50FFC();
  v70 = v69;
  v71 = sub_269E5100C();
  v72 = sub_269E51EAC();

  v73 = os_log_type_enabled(v71, v72);
  v135 = v69;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v141[0] = v134;
    *v74 = 136446466;
    *(v74 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v141);
    *(v74 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v124 = v18;
    v76 = *(*(v139 - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v78 + 16))(&v119[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v79 = sub_269E51D0C();
    v81 = sub_269E47920(v79, v80, v141);

    *(v74 + 14) = v81;
    _os_log_impl(&dword_269DE5000, v71, v72, "[%{public}s] error getting schedule model: %{public}s", v74, 0x16u);
    v82 = v134;
    swift_arrayDestroy();
    MEMORY[0x26D654490](v82, -1, -1);
    MEMORY[0x26D654490](v74, -1, -1);

    v83 = *(v136 + 8);
    v84 = v23;
    v85 = v124;
  }

  else
  {

    v83 = *(v136 + 8);
    v84 = v23;
    v85 = v18;
  }

  (v83)(v84);
  v98 = v8[5];
  v99 = sub_269E50A0C();
  v100 = *(*(v99 - 8) + 56);
  v100(&v13[v98], 1, 1, v99);
  v100(&v13[v8[6]], 1, 1, v99);
  v101 = &v13[v8[8]];
  sub_269E50B8C();
  v102 = v8[9];
  *&v13[v102] = [objc_allocWithZone(sub_269E50F0C()) init];
  v103 = *(v125 + 56);
  v104 = v138;
  v103(&v13[v8[11]], 1, 1, v138);
  v103(&v13[v8[12]], 1, 1, v104);
  v103(&v13[v8[13]], 1, 1, v104);
  *v13 = 0;
  v13[8] = 1;
  v13[v8[7]] = 0;
  v105 = &v13[v8[10]];
  *v105 = 0u;
  v105[1] = 0u;
  v106 = v129;
  sub_269E50FFC();
  v107 = v131;
  sub_269E48954(v13, v131);
  v108 = sub_269E5100C();
  v109 = sub_269E51ECC();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v141[0] = v111;
    *v110 = 136446466;
    *(v110 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v141);
    *(v110 + 12) = 2080;
    v112 = SleepWidgetViewModel.description.getter();
    v113 = v107;
    v115 = v114;
    sub_269E48C98(v113, type metadata accessor for SleepWidgetViewModel);
    v116 = sub_269E47920(v112, v115, v141);

    *(v110 + 14) = v116;
    _os_log_impl(&dword_269DE5000, v108, v109, "[%{public}s] viewmodel=%s", v110, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v111, -1, -1);
    MEMORY[0x26D654490](v110, -1, -1);
  }

  else
  {

    sub_269E48C98(v107, type metadata accessor for SleepWidgetViewModel);
  }

  v83(v106, v85);
  v117 = v135;
  v118 = v135;
  v137(v13, v117);

  sub_269E48C98(v13, type metadata accessor for SleepWidgetViewModel);
LABEL_13:
  v97 = *MEMORY[0x277D85DE8];
}

uint64_t sub_269E44974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v109 = a8;
  v110 = a7;
  v98 = a6;
  v115 = a4;
  v108 = a2;
  v12 = sub_269E5101C();
  v106 = *(v12 - 8);
  v107 = v12;
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v12);
  v105 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D83D88];
  sub_269E48AA4(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v103 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v94 - v21;
  MEMORY[0x28223BE20](v20);
  v99 = &v94 - v22;
  sub_269E48AA4(0, &qword_281573CB0, MEMORY[0x277CC8990], v15);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v113 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v112 = &v94 - v27;
  v28 = sub_269E50B9C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SleepWidgetViewModel();
  v34 = *(*(v33 - 1) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v102 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v94 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v116 = &v94 - v41;
  MEMORY[0x28223BE20](v40);
  v104 = &v94 - v42;
  v43 = *(a1 + 8);
  v45 = *(a1 + 16);
  v44 = *(a1 + 24);
  v46 = *a1;
  v117[4] = a3;
  v117[5] = v115;
  v117[0] = v46;
  v117[1] = v43;
  v117[2] = v45;
  v117[3] = v44;
  v111 = v44;
  sub_269E45420(v117);
  v114 = v32;
  v115 = v29;
  v95 = *(v29 + 16);
  v95(v32, v110, v28);
  v110 = a5;
  v97 = v43;
  v96 = v45;
  if (a5)
  {
    sub_269DF6E4C(v46, v43, v45, v111);
    v47 = [a5 occurrence];
    v48 = [v47 bedtimeComponents];

    v49 = v112;
    sub_269E509FC();

    v50 = sub_269E50A0C();
    v51 = *(*(v50 - 8) + 56);
    v51(v49, 0, 1, v50);
    v52 = [v110 occurrence];
    v53 = [v52 wakeUpComponents];

    v54 = v113;
    sub_269E509FC();

    v51(v54, 0, 1, v50);
    a5 = v110;
  }

  else
  {
    v55 = sub_269E50A0C();
    v56 = *(*(v55 - 8) + 56);
    v100 = v28;
    v56(v112, 1, 1, v55);
    sub_269DF6E4C(v46, v43, v45, v111);
    v56(v113, 1, 1, v55);
    v28 = v100;
  }

  v100 = a9;
  v57 = a5;
  sub_269E3BD48(a5, v117);
  v58 = v117[0];
  v95(&v39[v33[8]], v114, v28);
  v59 = v33[9];
  *&v39[v59] = [objc_allocWithZone(sub_269E50F0C()) init];
  v60 = *(v115 + 56);
  v60(&v39[v33[11]], 1, 1, v28);
  v60(&v39[v33[12]], 1, 1, v28);
  v60(&v39[v33[13]], 1, 1, v28);
  *v39 = v98;
  v39[8] = 0;
  sub_269E48B08(v112, &v39[v33[5]]);
  sub_269E48B08(v113, &v39[v33[6]]);
  v39[v33[7]] = v58;
  v61 = &v39[v33[10]];
  v62 = v97;
  *v61 = v46;
  *(v61 + 1) = v62;
  v63 = v111;
  *(v61 + 2) = v96;
  *(v61 + 3) = v63;
  v64 = v116;
  sub_269E3E3BC(v39, v116);
  v65 = v105;
  if (a5)
  {
    v66 = [v57 windDownEvent];
    v67 = v102;
    v68 = v99;
    if (v66)
    {
      v69 = v66;
      v70 = [v66 dueDate];

      v64 = v116;
      sub_269E50B6C();

      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    v60(v68, v71, 1, v28);
    sub_269E3E420(v68, v64 + v33[11]);
    v74 = [v57 bedtimeEvent];
    v73 = v64;
    if (v74)
    {
      v75 = v74;
      v76 = [v74 dueDate];

      v77 = v101;
      sub_269E50B6C();

      v60(v77, 0, 1, v28);
      sub_269E3E420(v77, v73 + v33[12]);
LABEL_12:
      v80 = [v57 wakeUpEvent];
      v81 = [v80 dueDate];

      v82 = v103;
      sub_269E50B6C();

      v78 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v72 = v99;
    v60(v99, 1, 1, v28);
    sub_269E3E420(v72, v64 + v33[11]);
    v67 = v102;
    v73 = v64;
  }

  v78 = 1;
  v79 = v101;
  v60(v101, 1, 1, v28);
  sub_269E3E420(v79, v73 + v33[12]);
  if (v110)
  {
    goto LABEL_12;
  }

  v82 = v103;
LABEL_14:
  (*(v115 + 8))(v114, v28);
  v60(v82, v78, 1, v28);
  v83 = v116;
  sub_269E3E420(v82, v116 + v33[13]);
  v84 = v104;
  sub_269E3E3BC(v83, v104);
  sub_269E50FFC();
  sub_269E48954(v84, v67);
  v85 = sub_269E5100C();
  v86 = sub_269E51ECC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v117[0] = v88;
    *v87 = 136446466;
    *(v87 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v117);
    *(v87 + 12) = 2080;
    v89 = SleepWidgetViewModel.description.getter();
    v91 = v90;
    sub_269E48C98(v67, type metadata accessor for SleepWidgetViewModel);
    v92 = sub_269E47920(v89, v91, v117);

    *(v87 + 14) = v92;
    _os_log_impl(&dword_269DE5000, v85, v86, "[%{public}s] viewmodel=%s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v88, -1, -1);
    MEMORY[0x26D654490](v87, -1, -1);
  }

  else
  {

    sub_269E48C98(v67, type metadata accessor for SleepWidgetViewModel);
  }

  (*(v106 + 8))(v65, v107);
  v109(v84, v108);
  return sub_269E48C98(v84, type metadata accessor for SleepWidgetViewModel);
}

uint64_t sub_269E45420(unint64_t *a1)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v15 = &v64 - v14;
  v16 = *a1;
  if (*a1)
  {
    v65 = v12;
    v66 = v13;
    v68 = v11;
    v69 = v2;
    v17 = a1[1];
    v18 = a1[2];
    v19 = a1[3];
    v20 = v19;

    v21 = v17;
    sub_269E50FFC();

    v67 = v21;
    v22 = v20;
    v23 = sub_269E5100C();
    v24 = sub_269E51ECC();
    v25 = os_log_type_enabled(v23, v24);
    v70 = v3;
    if (v25)
    {
      v26 = v18;
      v27 = v19;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v71 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v71);
      *(v28 + 12) = 2050;
      if (v16 >> 62)
      {
        v30 = sub_269E5204C();
      }

      else
      {
        v30 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v28 + 14) = v30;
      sub_269DF6EA0(v16, v17, v26, v19);
      _os_log_impl(&dword_269DE5000, v23, v24, "[%{public}s] found %{public}ld summaries", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D654490](v29, -1, -1);
      MEMORY[0x26D654490](v28, -1, -1);

      v31 = v70;
    }

    else
    {
      v26 = v18;
      v39 = v18;
      v27 = v19;
      sub_269DF6EA0(v16, v17, v39, v19);

      v31 = v3;
    }

    v40 = *(v31 + 8);
    v41 = v69;
    v40(v15, v69);
    v42 = v27;
    v43 = v68;
    if (v17)
    {
      v44 = v67;
      [v67 sleepDuration];
      v46 = v45;
      if (v45 > COERCE_DOUBLE(1))
      {
        v43 = v66;
        sub_269E50FFC();
        v47 = sub_269E5100C();
        v48 = sub_269E51ECC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v69 = v26;
          v50 = v49;
          v51 = v41;
          v52 = swift_slowAlloc();
          v71 = v52;
          *v50 = 136446466;
          *(v50 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v71);
          *(v50 + 12) = 2050;
          *(v50 + 14) = v46;
          v53 = "[%{public}s] last time asleep: %{public}f";
LABEL_16:
          _os_log_impl(&dword_269DE5000, v47, v48, v53, v50, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x26D654490](v52, -1, -1);
          MEMORY[0x26D654490](v50, -1, -1);

          sub_269DF6EA0(v16, v17, v69, v42);
          return (v40)(v43, v51);
        }

LABEL_19:
        sub_269DF6EA0(v16, v17, v26, v42);

        return (v40)(v43, v41);
      }

      [v44 inBedDuration];
      v55 = v54;
      if (v54 > COERCE_DOUBLE(1))
      {
        v43 = v65;
        sub_269E50FFC();
        v47 = sub_269E5100C();
        v48 = sub_269E51ECC();
        if (os_log_type_enabled(v47, v48))
        {
          v56 = swift_slowAlloc();
          v69 = v26;
          v50 = v56;
          v51 = v41;
          v52 = swift_slowAlloc();
          v71 = v52;
          *v50 = 136446466;
          *(v50 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v71);
          *(v50 + 12) = 2050;
          *(v50 + 14) = v55;
          v53 = "[%{public}s] last time in bed: %{public}f";
          goto LABEL_16;
        }

        goto LABEL_19;
      }
    }

    sub_269E50FFC();
    v47 = sub_269E5100C();
    v57 = sub_269E51ECC();
    if (os_log_type_enabled(v47, v57))
    {
      v58 = swift_slowAlloc();
      v69 = v26;
      v59 = v58;
      v60 = v17;
      v61 = v42;
      v62 = v41;
      v63 = swift_slowAlloc();
      v71 = v63;
      *v59 = 136446210;
      *(v59 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v71);
      _os_log_impl(&dword_269DE5000, v47, v57, "[%{public}s] last day has no sleep data", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x26D654490](v63, -1, -1);
      MEMORY[0x26D654490](v59, -1, -1);

      sub_269DF6EA0(v16, v60, v69, v61);
      return (v40)(v43, v62);
    }

    goto LABEL_19;
  }

  sub_269E50FFC();
  v32 = sub_269E5100C();
  v33 = sub_269E51ECC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v3;
    v35 = v2;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v71 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v71);
    _os_log_impl(&dword_269DE5000, v32, v33, "[%{public}s] no recentSleepDaySummaries", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x26D654490](v37, -1, -1);
    MEMORY[0x26D654490](v36, -1, -1);

    return (*(v34 + 8))(v7, v35);
  }

  else
  {

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_269E45B8C(int a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void), uint64_t a5)
{
  v87 = a5;
  v84 = a4;
  v82 = a3;
  LODWORD(v88) = a1;
  v7 = sub_269E5101C();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = (&v79 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (&v79 - v13);
  v15 = sub_269E50B9C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269E50BDC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_269E50C8C();
  v85 = *(v25 - 8);
  v86 = v25;
  v26 = *(v85 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v5[1];
  v79 = *v5;
  v80 = v29;
  (*(v21 + 104))(v24, *MEMORY[0x277CC9830], v20);
  sub_269E50BEC();
  v31 = *(v21 + 8);
  v30 = v21 + 8;
  v31(v24, v20);
  sub_269E50B8C();
  v32 = sub_269E50B2C();
  v34 = *(v16 + 8);
  v33 = (v16 + 8);
  v34(v19, v15);
  v35 = v32 - a2;
  if (__OFSUB__(v32, a2))
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = a2;
  a2 = v35 + 1;
  if (__OFADD__(v35, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v88 & 1) == 0 || (v36 = [objc_opt_self() sharedBehavior]) != 0 && (v37 = v36, v38 = objc_msgSend(v36, sel_hksp_useDemoSleepData), v37, v38))
  {
    v88 = v28;
    v39 = a2;
    sub_269E50FFC();
    v40 = sub_269E5100C();
    v41 = sub_269E51ECC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v97[0] = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v97);
      *(v42 + 12) = 2082;
      aBlock = v39;
      v92 = v19;
      type metadata accessor for HKDayIndexRange(0);
      v44 = sub_269E51D0C();
      v46 = sub_269E47920(v44, v45, v97);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_269DE5000, v40, v41, "[%{public}s] generating demo summaries for range: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v43, -1, -1);
      MEMORY[0x26D654490](v42, -1, -1);
    }

    v47 = v90;
    v33 = *(v89 + 8);
    v33(v14, v90);
    v48 = v83;
    a2 = sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
    v28 = v88;
    v30 = sub_269E51EFC();
    sub_269E50FFC();

    v14 = sub_269E5100C();
    LOBYTE(v19) = sub_269E51ECC();

    if (!os_log_type_enabled(v14, v19))
    {

      v57 = v48;
      v56 = v47;
      goto LABEL_16;
    }

    v24 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v24 = 136446722;
    *(v24 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    *(v24 + 6) = 2082;
    if (!(v30 >> 62))
    {
      v49 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      v97[0] = v49;
      v50 = sub_269E5219C();
      v52 = sub_269E47920(v50, v51, &aBlock);

      *(v24 + 14) = v52;
      *(v24 + 11) = 2082;
      v53 = MEMORY[0x26D653A40](v30, a2);
      v55 = sub_269E47920(v53, v54, &aBlock);

      *(v24 + 3) = v55;
      _os_log_impl(&dword_269DE5000, v14, v19, "[%{public}s] using %{public}s demo summaries: %{public}s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v15, -1, -1);
      MEMORY[0x26D654490](v24, -1, -1);

      v56 = v90;
      v57 = v83;
LABEL_16:
      v33(v57, v56);
      LOBYTE(v97[0]) = 0;
      SleepDaySummaryResults.init(summaries:context:)(v30, v97, &aBlock);
      v76 = v92;
      v93 = v93;
      v77 = v94;

      v78 = v76;
      v84(&aBlock, 0);

      sub_269DF6EA0(aBlock, v92, v93, v94);
      return (*(v85 + 8))(v28, v86);
    }

LABEL_20:
    v49 = sub_269E5204C();
    goto LABEL_11;
  }

  v58 = v28;
  v59 = v81;
  sub_269E50FFC();
  v60 = sub_269E5100C();
  v61 = sub_269E51ECC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    _os_log_impl(&dword_269DE5000, v60, v61, "[%{public}s] requesting database accessibility assertion...", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x26D654490](v63, -1, -1);
    MEMORY[0x26D654490](v62, -1, -1);
  }

  (*(v89 + 8))(v59, v90);
  v65 = v86;
  v64 = v87;
  v66 = v84;
  v67 = v85;
  v68 = sub_269E51CCC();
  v69 = swift_allocObject();
  v69[2] = a2;
  v69[3] = v19;
  v69[4] = v82;
  v69[5] = v66;
  v71 = v79;
  v70 = v80;
  v69[6] = v64;
  v69[7] = v71;
  v69[8] = v70;
  v95 = sub_269E48B9C;
  v96 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v92 = 1107296256;
  v93 = sub_269E477DC;
  v94 = &block_descriptor_12;
  v72 = _Block_copy(&aBlock);

  v73 = v71;
  v74 = v70;

  [v73 requestDatabaseAccessibilityAssertion:v68 timeout:v72 completion:5.0];
  _Block_release(v72);

  return (*(v67 + 8))(v58, v65);
}

uint64_t SleepWidgetViewModelProvider.sleepStageWidgetViewModel(showLiveContent:overrideState:completion:)(int a1, unsigned __int8 *a2, void (*a3)(void, void), void (**a4)(char *, uint64_t))
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *a2;
  v14[0] = v8;
  v14[1] = v9;
  v11 = v8;
  v12 = v9;

  sub_269E47EB0(a1, 1, 4, v14, v11, v12, v10, a3, a4);
}

void sub_269E46560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void, void), uint64_t a7)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v36[0] = a3;
  v36[1] = a4;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  sub_269E45420(&v31);
  if (v12)
  {
    v30 = a5;
    if (v12 >> 62)
    {
      v15 = sub_269E5204C();
      if (v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_4:
        v31 = MEMORY[0x277D84F90];
        v16 = v14;

        v17 = v11;
        sub_269E5212C();
        if (v15 < 0)
        {
          __break(1u);
          return;
        }

        v26 = a2;
        v27 = v13;
        v28 = a7;
        v29 = a6;
        v18 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x26D653D70](v18, v12);
          }

          else
          {
            v20 = *(v12 + 8 * v18 + 32);
          }

          v21 = v20;
          if ([v20 summaryFilteredToLastPeriod])
          {
          }

          ++v18;
          sub_269E5210C();
          v19 = v31[2];
          sub_269E5213C();
          sub_269E5214C();
          sub_269E5211C();
        }

        while (v15 != v18);
        v22 = v31;
        a6 = v29;
        a2 = v26;
        v13 = v27;
        goto LABEL_16;
      }
    }

    v24 = v14;

    v25 = v11;
    v22 = MEMORY[0x277D84F90];
LABEL_16:
    LOBYTE(v36[0]) = 0;
    SleepDaySummaryResults.init(summaries:context:)(v22, v36, &v31);
    sub_269DF6EA0(v12, v11, v13, v14);
    v23 = v31;
    v11 = v32;
    v13 = v33;
    v14 = v34;
    a5 = v30;
    goto LABEL_17;
  }

  v23 = 0;
LABEL_17:
  v31 = v23;
  v32 = v11;
  v33 = v13;
  v34 = v14;
  v35 = a5;
  sub_269DF6E4C(v23, v11, v13, v14);
  a6(&v31, a2);
  sub_269DF6EA0(v23, v11, v13, v14);

  sub_269DF6EA0(v23, v11, v13, v14);
}

uint64_t sub_269E467A0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7)
{
  v24 = a7;
  v25 = a6;
  v12 = type metadata accessor for SleepScoreWidgetViewModel();
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v26[4] = a3;
  v26[5] = a4;
  v26[0] = v18;
  v26[1] = v17;
  v26[2] = v19;
  v26[3] = v20;
  sub_269E45420(v26);
  v21 = *(v13 + 28);
  v22 = sub_269E50CDC();
  (*(*(v22 - 8) + 16))(&v16[v21], a5, v22);
  *v16 = v18;
  *(v16 + 1) = v17;
  *(v16 + 2) = v19;
  *(v16 + 3) = v20;
  sub_269DF6E4C(v18, v17, v19, v20);
  v25(v16, a2);
  return sub_269E48C98(v16, type metadata accessor for SleepScoreWidgetViewModel);
}

void sub_269E468F0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, void *a8)
{
  v71 = a3;
  v72 = a4;
  v14 = sub_269E5101C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  if (a1)
  {
    v67 = a5;
    v68 = v21;
    v66 = a1;
    sub_269E50FFC();
    v24 = sub_269E5100C();
    v25 = sub_269E51ECC();
    v26 = os_log_type_enabled(v24, v25);
    v69 = v15;
    v70 = v14;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v65 = a7;
      v28 = v14;
      v29 = v27;
      v30 = swift_slowAlloc();
      v64 = a6;
      v31 = a8;
      v32 = v15;
      v33 = v30;
      *&aBlock = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      _os_log_impl(&dword_269DE5000, v24, v25, "[%{public}s] successfully acquired database accessibility assertion", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D654490](v33, -1, -1);
      MEMORY[0x26D654490](v29, -1, -1);

      v34 = v32;
      a8 = v31;
      v35 = *(v34 + 8);
      v36 = v28;
      a6 = v64;
      a7 = v65;
      v35(v23, v36);
    }

    else
    {

      v35 = *(v15 + 8);
      v35(v23, v14);
    }

    v46 = swift_allocObject();
    v46[2] = a6;
    v46[3] = a7;
    v47 = v66;
    v46[4] = v66;
    v48 = objc_allocWithZone(MEMORY[0x277CCD9C0]);
    v75 = sub_269E48BA0;
    v76 = v46;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v74 = sub_269E47868;
    *(&v74 + 1) = &block_descriptor_18;
    v49 = _Block_copy(&aBlock);
    v50 = v47;

    v51 = [v48 initWithMorningIndexRange:v71 ascending:v72 limit:1 options:0 resultsHandler:{v67, v49}];
    _Block_release(v49);

    v52 = objc_allocWithZone(MEMORY[0x277CCD9B8]);
    v53 = sub_269E51CCC();
    v54 = [v52 initWithIdentifier:v53 mode:0];

    [v51 setCacheSettings_];
    v55 = v51;
    v56 = sub_269E51CCC();
    [v55 setDebugIdentifier_];

    v57 = v68;
    sub_269E50FFC();
    v58 = sub_269E5100C();
    v59 = sub_269E51ECC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&aBlock = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      _os_log_impl(&dword_269DE5000, v58, v59, "[%{public}s] executing sleep day summary query...", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x26D654490](v61, -1, -1);
      MEMORY[0x26D654490](v60, -1, -1);
    }

    v35(v57, v70);
    [a8 executeQuery_];
  }

  else
  {
    sub_269E50FFC();
    v37 = a2;
    v38 = sub_269E5100C();
    v39 = sub_269E51EAC();

    if (os_log_type_enabled(v38, v39))
    {
      v64 = a6;
      v65 = a7;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&aBlock = v41;
      *v40 = 136446466;
      *(v40 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      *(v40 + 12) = 2082;
      v42 = v15;
      if (a2)
      {
        swift_getErrorValue();
        v43 = sub_269E521FC();
        v45 = v44;
      }

      else
      {
        v45 = 0xE600000000000000;
        v43 = 0x3E656E6F6E3CLL;
      }

      v62 = sub_269E47920(v43, v45, &aBlock);

      *(v40 + 14) = v62;
      _os_log_impl(&dword_269DE5000, v38, v39, "[%{public}s] failed to get accessibility assertion with error: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v41, -1, -1);
      MEMORY[0x26D654490](v40, -1, -1);

      (*(v42 + 8))(v19, v14);
      a6 = v64;
    }

    else
    {

      (*(v15 + 8))(v19, v14);
    }

    aBlock = 0u;
    v74 = 0u;
    a6(&aBlock, a2);
  }
}

id sub_269E46F70(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, void *a6)
{
  v48 = a4;
  v49 = a6;
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269E519FC();
  v47 = *(v14 - 8);
  v15 = v47[8];
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269E51A1C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v24 = v21;
    sub_269DF6A7C(0, &qword_281571CE8, 0x277D85C78);

    v25 = sub_269E51F2C();
    v26 = swift_allocObject();
    v27 = v48;
    v26[2] = a2;
    v26[3] = v27;
    v26[4] = a5;
    v53 = sub_269E48BAC;
    v54 = v26;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_269E47798;
    *(&v52 + 1) = &block_descriptor_24;
    v28 = _Block_copy(&aBlock);

    sub_269E51A0C();
    v50 = MEMORY[0x277D84F90];
    sub_269E48BB8();
    sub_269E48AA4(0, &qword_281571D90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_269E48C10();
    sub_269E51FEC();
    MEMORY[0x26D653BC0](0, v23, v17, v28);
    _Block_release(v28);

    (v47[1])(v17, v14);
    (*(v19 + 8))(v23, v24);
  }

  else
  {
    v29 = v10;
    v46 = v9;
    v30 = v48;
    sub_269E50FFC();
    v31 = a3;
    v47 = a3;
    v32 = sub_269E5100C();
    v33 = v47;
    v34 = v32;
    v35 = sub_269E51EAC();

    if (os_log_type_enabled(v34, v35))
    {
      v45 = v13;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&aBlock = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
      *(v36 + 12) = 2082;
      v38 = v30;
      v39 = v29;
      if (v33)
      {
        swift_getErrorValue();
        v40 = sub_269E521FC();
        v42 = v41;
      }

      else
      {
        v42 = 0xE600000000000000;
        v40 = 0x3E656E6F6E3CLL;
      }

      v43 = sub_269E47920(v40, v42, &aBlock);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_269DE5000, v34, v35, "[%{public}s] failed to load summaries with error: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v37, -1, -1);
      MEMORY[0x26D654490](v36, -1, -1);

      (*(v39 + 8))(v45, v46);
      v33 = v47;
    }

    else
    {

      (*(v10 + 8))(v13, v46);
      v38 = v30;
    }

    aBlock = 0u;
    v52 = 0u;
    v38(&aBlock, v33);
  }

  return [v49 invalidate];
}

uint64_t sub_269E47498(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_269E5101C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E50FFC();

  v11 = sub_269E5100C();
  v12 = sub_269E51ECC();
  if (os_log_type_enabled(v11, v12))
  {
    v22 = a3;
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &v24);
    *(v14 + 12) = 2048;
    if (a1 >> 62)
    {
      v16 = sub_269E5204C();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 14) = v16;

    _os_log_impl(&dword_269DE5000, v11, v12, "[%{public}s] query returned %ld summaries", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D654490](v15, -1, -1);
    MEMORY[0x26D654490](v14, -1, -1);

    (*(v7 + 8))(v10, v6);
    a2 = v13;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v23 = 0;

  SleepDaySummaryResults.init(summaries:context:)(v17, &v23, &v24);
  v18 = v25;
  v26 = v26;
  v19 = v27;

  v20 = v18;
  a2(&v24, 0);

  sub_269DF6EA0(v24, v25, v26, v27);
}

uint64_t sub_269E47798(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_269E477DC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_269E47868(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
    v5 = sub_269E51DAC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_269E47920(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269E479EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_269E48CF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_269E479EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_269E47AF8(a5, a6);
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
    result = sub_269E520FC();
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

uint64_t sub_269E47AF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_269E47B44(a1, a2);
  sub_269E47C74(&unk_287AB3288);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_269E47B44(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269E47D60(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_269E520FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_269E51D6C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269E47D60(v10, 0);
        result = sub_269E520BC();
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

uint64_t sub_269E47C74(uint64_t result)
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

  result = sub_269E47DC8(result, v12, 1, v3);
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

void *sub_269E47D60(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_269E48D54();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269E47DC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E48D54();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_269E47EB0(int a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), void *a5, void *a6, int a7, void (*a8)(void, void), void (**a9)(char *, uint64_t))
{
  v101 = a8;
  v96 = a4;
  v86 = a3;
  v98 = a2;
  v94 = a1;
  v12 = a9;
  v13 = sub_269E5101C();
  v14 = *(v13 - 8);
  v99 = v13;
  v100 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v85 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v87 = &v84 - v20;
  v97 = sub_269E50B9C();
  v21 = *(v97 - 8);
  isa = v21[8].isa;
  MEMORY[0x28223BE20](v97);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_269E50BDC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_269E50C8C();
  v92 = *(v30 - 8);
  v93 = v30;
  v31 = *(v92 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_allocObject();
  *(v34 + 16) = a5;
  *(v34 + 24) = a6;
  v90 = a7;
  *(v34 + 32) = a7;
  *(v34 + 40) = v101;
  *(v34 + 48) = a9;
  v95 = v34;
  v35 = *v96;
  v84 = v96[1];
  (*(v26 + 104))(v29, *MEMORY[0x277CC9830], v25);
  v89 = a5;
  v88 = a6;
  v96 = a9;

  sub_269E50BEC();
  v37 = *(v26 + 8);
  v36 = v26 + 8;
  v37(v29, v25);
  sub_269E50B8C();
  v38 = sub_269E50B2C();
  v40 = v21[1].isa;
  v39 = v21 + 1;
  v40(v24, v97);
  v41 = v98;
  v42 = v38 - v98;
  if (__OFSUB__(v38, v98))
  {
    __break(1u);
    goto LABEL_19;
  }

  v38 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v94 & 1) == 0 || (v43 = [objc_opt_self() sharedBehavior]) != 0 && (v44 = v43, v45 = objc_msgSend(v43, sel_hksp_useDemoSleepData), v44, v45))
  {
    v46 = v87;
    sub_269E50FFC();
    v47 = sub_269E5100C();
    v48 = sub_269E51ECC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v108[0] = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, v108);
      *(v49 + 12) = 2082;
      aBlock = v38;
      v103 = v41;
      type metadata accessor for HKDayIndexRange(0);
      v51 = sub_269E51D0C();
      v53 = sub_269E47920(v51, v52, v108);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_269DE5000, v47, v48, "[%{public}s] generating demo summaries for range: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v50, -1, -1);
      MEMORY[0x26D654490](v49, -1, -1);
    }

    v54 = v99;
    v35 = *(v100 + 8);
    v35(v46, v99);
    v55 = v91;
    v36 = sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
    v38 = sub_269E51EFC();
    sub_269E50FFC();

    v39 = sub_269E5100C();
    v12 = sub_269E51ECC();

    if (!os_log_type_enabled(v39, v12))
    {

      v64 = v55;
      v63 = v54;
      goto LABEL_16;
    }

    v29 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v29 = 136446722;
    *(v29 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    *(v29 + 6) = 2082;
    if (!(v38 >> 62))
    {
      v56 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      v108[0] = v56;
      v57 = sub_269E5219C();
      v59 = sub_269E47920(v57, v58, &aBlock);

      *(v29 + 14) = v59;
      *(v29 + 11) = 2082;
      v60 = MEMORY[0x26D653A40](v38, v36);
      v62 = sub_269E47920(v60, v61, &aBlock);

      *(v29 + 3) = v62;
      _os_log_impl(&dword_269DE5000, v39, v12, "[%{public}s] using %{public}s demo summaries: %{public}s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v41, -1, -1);
      MEMORY[0x26D654490](v29, -1, -1);

      v63 = v99;
      v64 = v91;
LABEL_16:
      v35(v64, v63);
      LOBYTE(v108[0]) = 0;
      SleepDaySummaryResults.init(summaries:context:)(v38, v108, &aBlock);
      v80 = v103;
      v104 = v104;
      v81 = v105;

      v82 = v80;
      sub_269E46560(&aBlock, 0, v89, v88, v90, v101, v96);

      sub_269DF6EA0(aBlock, v103, v104, v105);
      (*(v92 + 8))(v33, v93);
    }

LABEL_20:
    v56 = sub_269E5204C();
    goto LABEL_11;
  }

  v65 = v33;
  v66 = v85;
  sub_269E50FFC();
  v67 = sub_269E5100C();
  v68 = sub_269E51ECC();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock = v70;
    *v69 = 136446210;
    *(v69 + 4) = sub_269E47920(0xD00000000000001CLL, 0x8000000269E56070, &aBlock);
    _os_log_impl(&dword_269DE5000, v67, v68, "[%{public}s] requesting database accessibility assertion...", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x26D654490](v70, -1, -1);
    MEMORY[0x26D654490](v69, -1, -1);
  }

  (*(v100 + 8))(v66, v99);
  v72 = v92;
  v71 = v93;
  v73 = v86;
  v74 = sub_269E51CCC();
  v75 = swift_allocObject();
  v75[2] = v38;
  v75[3] = v41;
  v75[4] = v73;
  v75[5] = sub_269E48DA4;
  v75[6] = v95;
  v75[7] = v35;
  v76 = v84;
  v75[8] = v84;
  v106 = sub_269E48E50;
  v107 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v103 = 1107296256;
  v104 = sub_269E477DC;
  v105 = &block_descriptor_34;
  v77 = _Block_copy(&aBlock);

  v78 = v35;
  v79 = v76;

  [v78 requestDatabaseAccessibilityAssertion:v74 timeout:v77 completion:5.0];
  _Block_release(v77);

  (*(v72 + 8))(v65, v71);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269E4889C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_269E50B9C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_269E44974(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), (v2 + v6), *v7, *(v7 + 8));
}

uint64_t sub_269E48954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E489B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_269DF6A7C(255, a3, a4);
    v5 = sub_269E51F9C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269E48A10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_269E48A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269E48AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E48B08(uint64_t a1, uint64_t a2)
{
  sub_269E48AA4(0, &qword_281573CB0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_269E48BB8()
{
  result = qword_281571E58;
  if (!qword_281571E58)
  {
    sub_269E519FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571E58);
  }

  return result;
}

unint64_t sub_269E48C10()
{
  result = qword_281571D88;
  if (!qword_281571D88)
  {
    sub_269E48AA4(255, &qword_281571D90, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D88);
  }

  return result;
}

uint64_t sub_269E48C98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E48CF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_269E48D54()
{
  if (!qword_281571BB8)
  {
    v0 = sub_269E521AC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571BB8);
    }
  }
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_269E48E64(uint64_t a1)
{
  result = sub_269E0AAA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E48EA8()
{
  sub_269E5124C();
  sub_269E4997C(&qword_2815722C0, MEMORY[0x277CE3940]);
  sub_269E512DC();
  return v1;
}

uint64_t sub_269E48F24@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v30 = sub_269E5146C();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E49BA4(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  sub_269E4961C();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v19;
  v39 = *(v1 + 32);
  v31 = sub_269E5134C();
  v32 = 0;
  v33 = 0;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = sub_269E512FC();
  v35 = 0;
  v36 = 0;
  sub_269E49368(v38, &v37);

  v20 = *MEMORY[0x277D62138];
  v21 = HKSPSleepURL();
  if (v21)
  {
    v22 = v21;
    sub_269E50AFC();

    v23 = sub_269E50B0C();
    (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  }

  else
  {
    v24 = sub_269E50B0C();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  }

  sub_269DF0960(v10, v12);
  sub_269E496D0();
  v26 = v25;
  v27 = sub_269E4997C(&qword_281571F78, sub_269E496D0);
  sub_269E5173C();
  sub_269DF0A3C(v12);
  sub_269E499C4(&v31, sub_269E496D0);
  sub_269E5145C();
  v31 = v26;
  v32 = v27;
  swift_getOpaqueTypeConformance2();
  sub_269E517CC();
  (*(v2 + 8))(v5, v30);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_269E49368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11[3] = &type metadata for SleepStageWidgetViewModel;
  v11[4] = &protocol witness table for SleepStageWidgetViewModel;
  v4 = swift_allocObject();
  v11[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v11[6] = v6;
  v11[7] = swift_getKeyPath();
  v12 = 0;
  v11[5] = sub_269E49A70;
  sub_269E49B08(v11, v10);
  sub_269E49B08(v10, a2);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_269E49B6C(a1, v9);
  sub_269E49B6C(a1, v9);
  sub_269E499C4(v11, sub_269E49860);
  sub_269E499C4(v10, sub_269E49860);
}

uint64_t sub_269E494F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v12 = *a1;
  v13 = v4;
  v14 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  v5 = MEMORY[0x277CDF458];
  sub_269E49BA4(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for SleepStageResultsView(0);
  v7 = *(v6 + 20);
  *(a2 + v7) = swift_getKeyPath();
  sub_269E49BA4(0, &qword_281572610, MEMORY[0x277CE3AF8], v5);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + *(v6 + 24);
  v9 = v13;
  *v8 = v12;
  *(v8 + 1) = v9;
  v8[32] = v14;
  return sub_269E49B6C(a1, v11);
}

void sub_269E4961C()
{
  if (!qword_281572038)
  {
    sub_269E496D0();
    sub_269E4997C(&qword_281571F78, sub_269E496D0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572038);
    }
  }
}

void sub_269E496D0()
{
  if (!qword_281571F70)
  {
    sub_269E49764();
    sub_269E4997C(&qword_281571FF8, sub_269E49764);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571F70);
    }
  }
}

void sub_269E49764()
{
  if (!qword_281571FF0)
  {
    sub_269E49BA4(255, &qword_281571EF8, sub_269E497F8, MEMORY[0x277CE14B8]);
    sub_269E498F4();
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571FF0);
    }
  }
}

void sub_269E497F8()
{
  if (!qword_281572EB8)
  {
    sub_269E49860();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572EB8);
    }
  }
}

void sub_269E49860()
{
  if (!qword_281572EC0[0])
  {
    type metadata accessor for SleepStageResultsView(255);
    sub_269E4997C(&qword_2815736A8, type metadata accessor for SleepStageResultsView);
    v0 = type metadata accessor for SleepWidgetResultsView();
    if (!v1)
    {
      atomic_store(v0, qword_281572EC0);
    }
  }
}

unint64_t sub_269E498F4()
{
  result = qword_281571F00;
  if (!qword_281571F00)
  {
    sub_269E49BA4(255, &qword_281571EF8, sub_269E497F8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F00);
  }

  return result;
}

uint64_t sub_269E4997C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269E499C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_269E49A78@<X0>(_BYTE *a1@<X8>)
{
  sub_269E5124C();
  sub_269E4997C(&qword_2815722C0, MEMORY[0x277CE3940]);
  result = sub_269E512DC();
  *a1 = v3;
  return result;
}

uint64_t sub_269E49B08(uint64_t a1, uint64_t a2)
{
  sub_269E49860();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E49BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E49C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepWidgetChartView()
{
  result = qword_281572A20;
  if (!qword_281572A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E49CE0()
{
  sub_269E4FE94(319, qword_281572AE0, &type metadata for SleepWidgetChart, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_269E4FE94(319, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_269E49C1C(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_269E4FE94(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_269E49C1C(319, &qword_2815725C8, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_269E49E94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_269E50B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = type metadata accessor for SleepWidgetChartView();
  v13 = v12[8];
  *(a3 + v13) = swift_getKeyPath();
  v14 = MEMORY[0x277CDF458];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v15 = a3 + v12[9];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v12[10];
  *(a3 + v16) = swift_getKeyPath();
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], v14);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + v12[11];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  *a3 = v11;
  a3[1] = a2;
  sub_269E50B8C();
  v18 = sub_269E50270(v10, MEMORY[0x277CC9908]);
  v19 = *(v7 + 8);
  v19(v10, v6);
  a3[2] = v18;
  sub_269E50B8C();
  v20 = sub_269E50270(v10, MEMORY[0x277CC98E0]);
  result = (v19)(v10, v6);
  a3[3] = v20;
  return result;
}

uint64_t sub_269E4A0F8(uint64_t a1)
{
  v2 = sub_269E51ADC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269E5127C();
}

double sub_269E4A1C0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_28035F330 = 1.0 / v2;
  return result;
}

uint64_t sub_269E4A22C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3BA0];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for SleepWidgetChartView();
  sub_269E501B8(v1 + *(v13 + 32), v12, &qword_281572608, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E51B0C();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269E4A458()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SleepWidgetChartView() + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_269E51EBC();
    v8 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_269E4A5B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE0A00];
  sub_269E49C1C(0, &qword_2815725F8, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for SleepWidgetChartView();
  sub_269E501B8(v1 + *(v13 + 40), v12, &qword_2815725F8, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E5160C();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269E4A7DC()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for SleepWidgetChartView() + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_269E51EBC();
    v8 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_269E4A934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_269E50238(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_269E4A978()
{
  result = qword_28035F340;
  if (!qword_28035F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F340);
  }

  return result;
}

unint64_t sub_269E4A9D0()
{
  result = qword_28035F348;
  if (!qword_28035F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F348);
  }

  return result;
}

unint64_t sub_269E4AA28()
{
  result = qword_28035F350;
  if (!qword_28035F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F350);
  }

  return result;
}

unint64_t sub_269E4AA80()
{
  result = qword_28035F358;
  if (!qword_28035F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F358);
  }

  return result;
}

uint64_t sub_269E4AAF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v97 = a1;
  v95 = a3;
  sub_269E4E7EC();
  v84 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v85 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4F0E8(0);
  v94 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v86 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4EE38(0, &qword_281572218, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0330]);
  v90 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v93 = &v80 - v11;
  sub_269E4F2F8(0);
  v91 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v82 = (&v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4EE38(0, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v80 - v17;
  v18 = sub_269E51B0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v81 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v80 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v87 = &v80 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v98 = &v80 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v80 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v80 - v32;
  v34 = sub_269E5160C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v89 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E5108C();
  v40 = v39;
  sub_269E5108C();
  v42 = v41;
  v43 = v88;
  v44 = 0.0;
  v97 = v88[1];
  if ((v97 & 2) != 0)
  {
    sub_269E5155C();
    sub_269E4A5B0(v38);
    sub_269E50D5C();
    v44 = v45;

    (*(v35 + 8))(v38, v34);
  }

  sub_269E4A22C(v33);
  v46 = sub_269E4A458();
  (*(v19 + 32))(v31, v33, v18);
  v47 = *(v19 + 88);
  v48 = v47(v31, v18);
  v49 = *MEMORY[0x277CE3B98];
  if (v48 == *MEMORY[0x277CE3B98])
  {
    if (v46)
    {
      v50 = 12.0;
    }

    else
    {
      v50 = 9.0;
    }
  }

  else
  {
    if ((v97 & 4) != 0)
    {
      v50 = 7.0;
    }

    else
    {
      v50 = 11.0;
    }

    (*(v19 + 8))(v31, v18);
  }

  v51 = v40 - v44;
  sub_269E4A22C(v98);
  v52 = sub_269E4A458();
  v53 = *(v19 + 16);
  v54 = v87;
  v53();
  v55 = v47(v54, v18);
  v83 = v52;
  if (v55 == v49)
  {
    if (v52)
    {
      v56 = 84.0;
    }

    else
    {
      v56 = 63.0;
    }

    v57 = v96;
    if ((v97 & 2) == 0)
    {
LABEL_18:
      v58 = 0.0;
      v59 = 6.0;
      goto LABEL_26;
    }
  }

  else
  {
    (*(v19 + 8))(v54, v18);
    v57 = v96;
    if ((v97 & 4) != 0)
    {
      v56 = 49.0;
    }

    else
    {
      v56 = 77.0;
    }

    if ((v97 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_28035E888 != -1)
  {
    swift_once();
  }

  v58 = *&qword_28035F330 * 8.0;
  v59 = 14.0;
LABEL_26:
  v96 = *&v51;
  v60 = (v42 - v56 - v58) / v59;
  (v53)(v57, v98, v18);
  if (v47(v57, v18) == v49)
  {
    if ((v83 & 1) == 0)
    {
      v61 = v81;
      (v53)(v81, v98, v18);
      v62 = v61;
      if (v47(v61, v18) == v49)
      {
        v60 = 7.2;
      }

      else
      {
        v79 = (v97 & 4) == 0;
        (*(v19 + 8))(v62, v18);
        v60 = dbl_269E56240[v79];
      }
    }
  }

  else
  {
    v60 = floor(v60);
    (*(v19 + 8))(v57, v18);
  }

  (*(v19 + 8))(v98, v18);
  v63 = *v43;
  if (*v43)
  {
    v64 = *v43;

    v65 = sub_269E512FC();
    v66 = v85;
    *v85 = v65;
    *(v66 + 8) = 0;
    *(v66 + 16) = 0;
    sub_269E4FAC4();
    sub_269E4B5F8(v63, v43, *&v50, v96, 1, v66 + *(v67 + 44), v60);
    *&v99 = v63;
    sub_269E4FE94(0, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4EFC8(&qword_281571FC8, sub_269E4E7EC);
    sub_269E4F208();
    v68 = v86;
    sub_269E516FC();

    sub_269E4FB5C(v66, sub_269E4E7EC);
    sub_269E519BC();
    sub_269E5106C();
    v69 = v93;
    v70 = (v68 + *(v94 + 36));
    v71 = v100;
    *v70 = v99;
    v70[1] = v71;
    v70[2] = v101;
    sub_269E50080(v68, v69, sub_269E4F0E8);
    swift_storeEnumTagMultiPayload();
    sub_269E4F8F0();
    sub_269E4FA14();
    v72 = v92;
    sub_269E513BC();
    v73 = sub_269E4F0E8;
  }

  else
  {
    v74 = sub_269E512FC();
    v68 = v82;
    *v82 = v74;
    *(v68 + 8) = 0;
    *(v68 + 16) = 0;
    sub_269E50014(0, &qword_2815725A0, sub_269E4F3B4);
    sub_269E4D304(v43, *&v50, v96, 1, v68 + *(v75 + 44), v60);
    sub_269E519BC();
    sub_269E5106C();
    v76 = (v68 + *(v91 + 36));
    v77 = v100;
    *v76 = v99;
    v76[1] = v77;
    v76[2] = v101;
    sub_269E50080(v68, v93, sub_269E4F2F8);
    swift_storeEnumTagMultiPayload();
    sub_269E4F8F0();
    sub_269E4FA14();
    v72 = v92;
    sub_269E513BC();
    v73 = sub_269E4F2F8;
  }

  sub_269E4FB5C(v68, v73);
  sub_269E4FE20(v72, v95, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
}

uint64_t sub_269E4B5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v67 = a5;
  v65 = a3;
  v66 = a4;
  v64 = a2;
  sub_269E4E880(0);
  v73 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SleepWidgetChartView();
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F498(0, &qword_281571F10, sub_269E4EACC);
  v70 = *(v18 - 8);
  v71 = v18;
  v19 = *(v70 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &KeyPath - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v68 = &KeyPath - v22;
  sub_269E49C1C(0, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &KeyPath - v25;
  sub_269E51E1C();
  v72 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v104 = a1;
  sub_269E29034();
  if (v28 & 1) != 0 || (v29 = v27, v118 = a1, sub_269E292D4(), (v31))
  {
    (*(v11 + 56))(v26, 1, 1, v73);
  }

  else
  {
    v61 = v30;
    v62 = a6;
    v32 = v64;
    if ((*(v64 + 8) & 2) != 0)
    {
      sub_269E4BD14(&v90);
      nullsub_1(&v90);
      v114 = v100;
      v115 = v101;
      v116 = v102;
      v117 = v103;
      v110 = v96;
      v111 = v97;
      v112 = v98;
      v113 = v99;
      v106 = v92;
      v107 = v93;
      v108 = v94;
      v109 = v95;
      v104 = v90;
      v105 = v91;
    }

    else
    {
      sub_269E4FBBC(&v104);
    }

    v33 = *(a1 + 16);
    *&v90 = 0;
    *(&v90 + 1) = v33;
    KeyPath = swift_getKeyPath();
    sub_269E50150(v32, &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetChartView);
    v34 = (*(v63 + 80) + 64) & ~*(v63 + 80);
    v35 = (v16 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v38 = v65;
    v37 = v66;
    *(v36 + 16) = a1;
    *(v36 + 24) = v38;
    *(v36 + 32) = v37;
    *(v36 + 40) = v67 & 1;
    v39 = v61;
    *(v36 + 48) = v29;
    *(v36 + 56) = v39;
    sub_269E500E8(v17, v36 + v34, type metadata accessor for SleepWidgetChartView);
    *(v36 + v35) = a7;
    sub_269E4EA78(0, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    sub_269E4EACC(0);
    sub_269DFBBA4();
    sub_269E4EFC8(&qword_28035F368, sub_269E4EACC);

    v40 = v68;
    sub_269E5197C();
    v84 = v114;
    v85 = v115;
    v86 = v116;
    v87 = v117;
    v80 = v110;
    v81 = v111;
    v82 = v112;
    v83 = v113;
    v76 = v106;
    v77 = v107;
    v78 = v108;
    v79 = v109;
    v74 = v104;
    v75 = v105;
    v42 = v69;
    v41 = v70;
    v43 = *(v70 + 16);
    v44 = v71;
    v43(v69, v40, v71);
    v45 = v85;
    v88[10] = v84;
    v88[11] = v85;
    v46 = v86;
    v88[12] = v86;
    v47 = v80;
    v48 = v81;
    v88[6] = v80;
    v88[7] = v81;
    v49 = v82;
    v50 = v83;
    v88[8] = v82;
    v88[9] = v83;
    v51 = v76;
    v52 = v77;
    v88[2] = v76;
    v88[3] = v77;
    v53 = v78;
    v54 = v79;
    v88[4] = v78;
    v88[5] = v79;
    v55 = v74;
    v56 = v75;
    v88[0] = v74;
    v88[1] = v75;
    *(v14 + 10) = v84;
    *(v14 + 11) = v45;
    *(v14 + 12) = v46;
    *(v14 + 6) = v47;
    *(v14 + 7) = v48;
    *(v14 + 8) = v49;
    *(v14 + 9) = v50;
    *(v14 + 2) = v51;
    *(v14 + 3) = v52;
    *(v14 + 4) = v53;
    *(v14 + 5) = v54;
    v89 = v87;
    v14[208] = v87;
    *v14 = v55;
    *(v14 + 1) = v56;
    sub_269E4E8B4(0);
    v43(&v14[*(v57 + 48)], v42, v44);
    sub_269E50150(v88, &v90, sub_269E4E8DC);
    v58 = *(v41 + 8);
    v58(v40, v44);
    v58(v42, v44);
    v100 = v84;
    v101 = v85;
    v102 = v86;
    v103 = v87;
    v96 = v80;
    v97 = v81;
    v98 = v82;
    v99 = v83;
    v92 = v76;
    v93 = v77;
    v94 = v78;
    v95 = v79;
    v90 = v74;
    v91 = v75;
    sub_269E4FCA0(&v90, sub_269E4E8DC);
    sub_269E4FD00(v14, v26, sub_269E4E880);
    (*(v11 + 56))(v26, 0, 1, v73);
    a6 = v62;
  }

  sub_269DEEDF0(v26, a6);
}

uint64_t sub_269E4BD14@<X0>(uint64_t a1@<X8>)
{
  sub_269E5187C();
  v2 = sub_269E5188C();

  if (qword_28035E888 != -1)
  {
    swift_once();
  }

  sub_269E519BC();
  sub_269E5106C();
  sub_269E519BC();
  sub_269E5111C();
  v3 = sub_269E514EC();
  result = sub_269E5102C();
  *(a1 + 104) = v12;
  *(a1 + 120) = v13;
  *(a1 + 136) = v14;
  *(a1 + 152) = v15;
  *(a1 + 56) = v9;
  *(a1 + 72) = v10;
  *a1 = v2;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 88) = v11;
  *(a1 + 168) = v3;
  *(a1 + 176) = v5;
  *(a1 + 184) = v6;
  *(a1 + 192) = v7;
  *(a1 + 200) = v8;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_269E4BEAC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v171 = a6;
  LODWORD(v168) = a5;
  v149 = a3;
  v150 = a4;
  v169 = a2;
  v167 = a7;
  v12 = sub_269E5144C();
  v165 = *(v12 - 8);
  v166 = v12;
  v13 = *(v165 + 64);
  MEMORY[0x28223BE20](v12);
  v164 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ED60();
  v158 = v15;
  v156 = *(v15 - 8);
  v16 = *(v156 + 64);
  MEMORY[0x28223BE20](v15);
  v138 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ED2C(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v163 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v162 = &v138 - v22;
  v23 = type metadata accessor for BarView(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4ED04(0);
  v146 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v148 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ECDC(0);
  v147 = v30;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v152 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ECB4(0);
  v151 = v33;
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v155 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v153 = &v138 - v38;
  MEMORY[0x28223BE20](v37);
  v154 = &v138 - v39;
  sub_269E4EBB8();
  v157 = v40;
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v170 = (&v138 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E4EB7C(0);
  v160 = *(v43 - 8);
  v161 = v43;
  v44 = *(v160 + 64);
  MEMORY[0x28223BE20](v43);
  v159 = &v138 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4EB34(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v50 = &v138 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v52 = &v138 - v51;
  v53 = *a1;
  sub_269E51E1C();
  v54 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v55 = sub_269E5133C();
  v56 = v170;
  *v170 = v55;
  v56[1] = 0;
  *(v56 + 16) = 0;
  v57 = sub_269E51E0C();
  sub_269E51DDC();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if ((v53 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v59 = v53;
  v60 = *(v169 + 16);
  if (v53 >= v60)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v142 = v57;
  v143 = v52;
  v144 = v54;
  v145 = v50;
  v141 = v60;
  v61 = (v169 + 48 * v53);
  v62 = v61[5];
  v63 = v61[6];
  v64 = v61[7];
  v65 = v61[8];
  v66 = v61[9];
  v139 = v61[4];
  v140 = v65;
  v169 = *(v171 + 8);
  v67 = v59;
  *v26 = swift_getKeyPath();
  v68 = MEMORY[0x277CDF458];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v69 = v23[5];
  *(v26 + v69) = swift_getKeyPath();
  sub_269E49C1C(0, &qword_281572610, MEMORY[0x277CE3AF8], v68);
  swift_storeEnumTagMultiPayload();
  v70 = v26 + v23[6];
  *v70 = swift_getKeyPath();
  v70[8] = 0;
  v71 = (v26 + v23[7]);
  v72 = v140;
  *v71 = v139;
  v71[1] = v62;
  v71[2] = v63;
  v71[3] = v64;
  v71[4] = v72;
  v71[5] = v66;
  v73 = v26 + v23[8];
  v74 = v150;
  *v73 = v149;
  *(v73 + 1) = v74;
  v73[16] = v168 & 1;
  v75 = (v26 + v23[9]);
  *v75 = a8;
  v75[1] = a9;
  LOBYTE(v66) = v169;
  *(v26 + v23[10]) = (v169 & 1) == 0;

  v76 = 1;

  v77 = sub_269E5151C();
  v168 = v67;
  sub_269E5102C();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v148;
  sub_269E500E8(v26, v148, type metadata accessor for BarView);
  v87 = v86 + *(v146 + 36);
  *v87 = v77;
  *(v87 + 8) = v79;
  *(v87 + 16) = v81;
  *(v87 + 24) = v83;
  *(v87 + 32) = v85;
  *(v87 + 40) = 0;
  v88 = sub_269E5153C();
  sub_269E5102C();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v86;
  v98 = v152;
  sub_269E500E8(v97, v152, sub_269E4ED04);
  v99 = v98 + *(v147 + 36);
  *v99 = v88;
  *(v99 + 8) = v90;
  *(v99 + 16) = v92;
  *(v99 + 24) = v94;
  *(v99 + 32) = v96;
  *(v99 + 40) = 0;
  sub_269E519BC();
  sub_269E5111C();
  v100 = v153;
  sub_269E500E8(v98, v153, sub_269E4ECDC);
  v101 = (v100 + *(v151 + 36));
  v102 = v221;
  v101[4] = v220;
  v101[5] = v102;
  v101[6] = v222;
  v103 = v217;
  *v101 = v216;
  v101[1] = v103;
  v104 = v219;
  v101[2] = v218;
  v101[3] = v104;
  v105 = v154;
  sub_269E500E8(v100, v154, sub_269E4ECB4);
  v106 = v162;
  if ((v66 & 2) != 0)
  {
    v107 = v138;
    sub_269E4CC48(v168, v138);
    sub_269E4FD00(v107, v106, sub_269E4ED60);
    v76 = 0;
  }

  (*(v156 + 56))(v106, v76, 1, v158);
  sub_269E50014(0, &unk_28035F370, sub_269E4EC4C);
  v109 = v170;
  v110 = v170 + *(v108 + 44);
  v111 = v155;
  sub_269E50150(v105, v155, sub_269E4ECB4);
  v112 = v163;
  sub_269E50080(v106, v163, sub_269E4ED2C);
  sub_269E50150(v111, v110, sub_269E4ECB4);
  sub_269E4EC80(0);
  sub_269E50080(v112, v110 + *(v113 + 48), sub_269E4ED2C);
  sub_269E4FB5C(v106, sub_269E4ED2C);
  sub_269E4FCA0(v105, sub_269E4ECB4);
  sub_269E4FB5C(v112, sub_269E4ED2C);
  sub_269E4FCA0(v111, sub_269E4ECB4);

  v114 = v164;
  sub_269E5142C();
  v115 = sub_269E4EFC8(&qword_281571F48, sub_269E4EBB8);
  v116 = v159;
  v117 = v157;
  sub_269E517DC();
  (*(v165 + 8))(v114, v166);
  sub_269E4FB5C(v109, sub_269E4EBB8);
  *&v202 = sub_269E4CFB0(v168);
  *(&v202 + 1) = v118;
  *&v188 = v117;
  *(&v188 + 1) = v115;
  swift_getOpaqueTypeConformance2();
  sub_269DF0E28();
  v119 = v143;
  v120 = v161;
  sub_269E517AC();

  (*(v160 + 8))(v116, v120);
  v121 = v145;
  if ((v169 & 2) != 0)
  {
    sub_269E4BD14(&v188);
    nullsub_1(&v188);
    v212 = v198;
    v213 = v199;
    v214 = v200;
    v215 = v201;
    v208 = v194;
    v209 = v195;
    v210 = v196;
    v211 = v197;
    v204 = v190;
    v205 = v191;
    v206 = v192;
    v207 = v193;
    v202 = v188;
    v203 = v189;
  }

  else
  {
    sub_269E4FBBC(&v202);
  }

  v122 = v167;
  sub_269E50080(v119, v121, sub_269E4EB34);
  v182 = v212;
  v183 = v213;
  v184 = v214;
  v185 = v215;
  v178 = v208;
  v179 = v209;
  v180 = v210;
  v181 = v211;
  v174 = v204;
  v175 = v205;
  v176 = v206;
  v177 = v207;
  v172 = v202;
  v173 = v203;
  sub_269E50080(v121, v122, sub_269E4EB34);
  sub_269E4EB00(0);
  v124 = *(v123 + 48);
  v125 = v183;
  v186[10] = v182;
  v186[11] = v183;
  v126 = v184;
  v186[12] = v184;
  v127 = v178;
  v128 = v179;
  v186[6] = v178;
  v186[7] = v179;
  v129 = v180;
  v130 = v181;
  v186[8] = v180;
  v186[9] = v181;
  v131 = v176;
  v132 = v177;
  v186[4] = v176;
  v186[5] = v177;
  v133 = v174;
  v134 = v175;
  v186[2] = v174;
  v186[3] = v175;
  v135 = v172;
  v136 = v173;
  v186[0] = v172;
  v186[1] = v173;
  v137 = v122 + v124;
  *(v137 + 160) = v182;
  *(v137 + 176) = v125;
  *(v137 + 192) = v126;
  *(v137 + 96) = v127;
  *(v137 + 112) = v128;
  *(v137 + 128) = v129;
  *(v137 + 144) = v130;
  *(v137 + 32) = v133;
  *(v137 + 48) = v134;
  *(v137 + 64) = v131;
  *(v137 + 80) = v132;
  v187 = v185;
  *(v137 + 208) = v185;
  *v137 = v135;
  *(v137 + 16) = v136;
  sub_269E50150(v186, &v188, sub_269E4E8DC);
  sub_269E4FB5C(v119, sub_269E4EB34);
  v198 = v182;
  v199 = v183;
  v200 = v184;
  v201 = v185;
  v194 = v178;
  v195 = v179;
  v196 = v180;
  v197 = v181;
  v190 = v174;
  v191 = v175;
  v192 = v176;
  v193 = v177;
  v188 = v172;
  v189 = v173;
  sub_269E4FCA0(&v188, sub_269E4E8DC);
  sub_269E4FB5C(v121, sub_269E4EB34);
}

void sub_269E4CC48(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E5160C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E4EE38(0, &qword_2815723A8, sub_269E4EEBC, sub_269E0841C, MEMORY[0x277CDFAB8]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38[-v12];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v14 = *(v46 + 16);
  if (*(v14 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v44 = v11;
  v45 = a2;
  v15 = v14 + 16 * a1;
  v16 = *(v15 + 40);
  v47 = *(v15 + 32);
  v48 = v16;
  sub_269DF0E28();

  v17 = sub_269E516CC();
  v41 = v5;
  v42 = v4;
  v19 = v18;
  v21 = v20;
  v43 = a1;
  sub_269E5155C();
  v22 = sub_269E516AC();
  v24 = v23;
  v40 = v8;
  v39 = v25;
  v27 = v26;

  sub_269E00F48(v17, v19, v21 & 1);

  v47 = v22;
  v48 = v24;
  LOBYTE(v17) = v39 & 1;
  v49 = v39 & 1;
  v50 = v27;
  sub_269E5155C();
  v28 = v40;
  sub_269E4A5B0(v40);
  sub_269E4A7DC();
  sub_269E516EC();

  (*(v41 + 8))(v28, v42);
  sub_269E00F48(v22, v24, v17);

  KeyPath = swift_getKeyPath();
  sub_269E4EEBC();
  v31 = &v13[*(v30 + 36)];
  *v31 = KeyPath;
  v31[1] = 0x3FE0000000000000;
  v32 = swift_getKeyPath();
  v33 = &v13[*(v44 + 36)];
  *v33 = v32;
  *(v33 + 1) = 1;
  v33[16] = 0;
  if (v43 == 6)
  {
    v34 = sub_269E5187C();
  }

  else
  {
    v34 = sub_269E5185C();
  }

  v35 = v34;
  v36 = v45;
  sub_269E4FE20(v13, v45, &qword_2815723A8, sub_269E4EEBC, sub_269E0841C, MEMORY[0x277CDFAB8]);
  sub_269E4ED60();
  *(v36 + *(v37 + 36)) = v35;
}

uint64_t sub_269E4CFB0(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = a1;
  v5 = v1[3];
  if (*(v5 + 16) <= a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5 + 16 * a1;
  v4 = *(v6 + 32);
  v3 = *(v6 + 40);
  v7 = qword_281571CB0;

  if (v7 != -1)
  {
LABEL_19:
    swift_once();
  }

  v8 = sub_269E50A7C();
  v10 = v9;
  v11 = *v1;
  if (*v1)
  {
    if (*(v11 + 16) > v2)
    {
      v12 = *(v11 + 48 * v2 + 40);
      v13 = *(v12 + 16);
      if (v13)
      {

        sub_269E51E1C();
        v14 = (v12 + 40);
        v15 = 0.0;
        do
        {
          v16 = *(v14 - 1);
          v17 = *v14;
          sub_269E51E0C();
          sub_269E51DDC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v15 = v15 + v17 - v16;
          v14 += 3;
          --v13;
        }

        while (v13);

        if (qword_28035E890 != -1)
        {
          swift_once();
        }

        v18 = [qword_28035F338 stringFromTimeInterval_];
        if (v18)
        {
          v19 = v18;
          v8 = sub_269E51CDC();
          v10 = v20;
        }

        else
        {
          v8 = sub_269E50A7C();
          v10 = v21;
        }
      }
    }
  }

  v22 = MEMORY[0x277D837D0];
  sub_269E4FE94(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_269E528E0;
  *(v23 + 32) = v4;
  *(v23 + 40) = v3;
  *(v23 + 48) = v8;
  *(v23 + 56) = v10;
  sub_269E4FE94(0, &qword_281571D70, v22, MEMORY[0x277D83940]);
  sub_269E4FEE4();
  v24 = sub_269E51C6C();

  return v24;
}

uint64_t sub_269E4D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v42 = a4;
  v40 = a2;
  v41 = a3;
  v9 = type metadata accessor for SleepWidgetChartView();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_269E4F498(0, &qword_281571F18, sub_269E4F560);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v11);
  v43 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  sub_269E51E1C();
  v44 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + 8) & 2) != 0)
  {
    sub_269E4BD14(&v61);
    nullsub_1(&v61);
    v85 = v71;
    v86 = v72;
    v87 = v73;
    v88 = v74;
    v81 = v67;
    v82 = v68;
    v83 = v69;
    v84 = v70;
    v77 = v63;
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v75 = v61;
    v76 = v62;
  }

  else
  {
    sub_269E4FBBC(&v75);
  }

  v61 = xmmword_269E56250;
  swift_getKeyPath();
  sub_269E50150(a1, &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetChartView);
  v19 = (*(v39 + 80) + 33) & ~*(v39 + 80);
  v20 = swift_allocObject();
  v21 = v41;
  *(v20 + 16) = v40;
  *(v20 + 24) = v21;
  *(v20 + 32) = v42 & 1;
  sub_269E500E8(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for SleepWidgetChartView);
  *(v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  sub_269E4EA78(0, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
  sub_269E4F560(0);
  sub_269DFBBA4();
  sub_269E4EFC8(&qword_281571EE0, sub_269E4F560);
  sub_269E5197C();
  v55 = v85;
  v56 = v86;
  v57 = v87;
  v58 = v88;
  v51 = v81;
  v52 = v82;
  v53 = v83;
  v54 = v84;
  v47 = v77;
  v48 = v78;
  v49 = v79;
  v50 = v80;
  v45 = v75;
  v46 = v76;
  v22 = v13[2];
  v23 = v43;
  v22(v43, v18, v12);
  v24 = v56;
  v59[10] = v55;
  v59[11] = v56;
  v25 = v57;
  v59[12] = v57;
  v26 = v51;
  v27 = v52;
  v59[6] = v51;
  v59[7] = v52;
  v28 = v53;
  v29 = v54;
  v59[8] = v53;
  v59[9] = v54;
  v30 = v47;
  v31 = v48;
  v59[2] = v47;
  v59[3] = v48;
  v32 = v49;
  v33 = v50;
  v59[4] = v49;
  v59[5] = v50;
  v34 = v45;
  v35 = v46;
  v59[0] = v45;
  v59[1] = v46;
  *(a5 + 160) = v55;
  *(a5 + 176) = v24;
  *(a5 + 192) = v25;
  *(a5 + 96) = v26;
  *(a5 + 112) = v27;
  *(a5 + 128) = v28;
  *(a5 + 144) = v29;
  *(a5 + 32) = v30;
  *(a5 + 48) = v31;
  *(a5 + 64) = v32;
  *(a5 + 80) = v33;
  v60 = v58;
  *(a5 + 208) = v58;
  *a5 = v34;
  *(a5 + 16) = v35;
  sub_269E4F3E8(0);
  v22((a5 + *(v36 + 48)), v23, v12);
  sub_269E50150(v59, &v61, sub_269E4E8DC);
  v37 = v13[1];
  v37(v18, v12);
  v37(v23, v12);
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v74 = v58;
  v67 = v51;
  v68 = v52;
  v69 = v53;
  v70 = v54;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v61 = v45;
  v62 = v46;
  sub_269E4FCA0(&v61, sub_269E4E8DC);
}

uint64_t sub_269E4D874@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v53 = a4;
  v52 = a2;
  v61 = a6;
  v54 = sub_269E5144C();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F700();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F610(0);
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F5C8(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v60 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v58 = &v52 - v25;
  v26 = *a1;
  sub_269E51E1C();
  v59 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v16 = sub_269E5133C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_269E50014(0, &qword_281572590, sub_269E4F794);
  v28 = a3;
  v29 = v57;
  sub_269E4DE94(v52, v28, v53 & 1, v57, v26, &v16[*(v27 + 44)]);
  sub_269E5142C();
  v30 = sub_269E4EFC8(&qword_281571F58, sub_269E4F700);
  sub_269E517DC();
  (*(v8 + 8))(v11, v54);
  sub_269E4FB5C(v16, sub_269E4F700);
  *&v92 = sub_269E4CFB0(v26);
  *(&v92 + 1) = v31;
  *&v78 = v13;
  *(&v78 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_269DF0E28();
  v32 = v58;
  v33 = v56;
  sub_269E517AC();

  (*(v55 + 8))(v20, v33);
  if ((*(v29 + 8) & 2) != 0)
  {
    sub_269E4BD14(&v78);
    nullsub_1(&v78);
    v102 = v88;
    v103 = v89;
    v104 = v90;
    v105 = v91;
    v98 = v84;
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v94 = v80;
    v95 = v81;
    v96 = v82;
    v97 = v83;
    v92 = v78;
    v93 = v79;
  }

  else
  {
    sub_269E4FBBC(&v92);
  }

  v34 = v60;
  sub_269E50080(v32, v60, sub_269E4F5C8);
  v72 = v102;
  v73 = v103;
  v74 = v104;
  v75 = v105;
  v68 = v98;
  v69 = v99;
  v70 = v100;
  v71 = v101;
  v64 = v94;
  v65 = v95;
  v66 = v96;
  v67 = v97;
  v62 = v92;
  v63 = v93;
  v35 = v61;
  sub_269E50080(v34, v61, sub_269E4F5C8);
  sub_269E4F594(0);
  v37 = *(v36 + 48);
  v38 = v73;
  v76[10] = v72;
  v76[11] = v73;
  v39 = v74;
  v76[12] = v74;
  v40 = v68;
  v41 = v69;
  v76[6] = v68;
  v76[7] = v69;
  v42 = v70;
  v43 = v71;
  v76[8] = v70;
  v76[9] = v71;
  v44 = v66;
  v45 = v67;
  v76[4] = v66;
  v76[5] = v67;
  v46 = v64;
  v47 = v65;
  v76[2] = v64;
  v76[3] = v65;
  v48 = v62;
  v49 = v63;
  v76[0] = v62;
  v76[1] = v63;
  v50 = v35 + v37;
  *(v50 + 160) = v72;
  *(v50 + 176) = v38;
  *(v50 + 192) = v39;
  *(v50 + 96) = v40;
  *(v50 + 112) = v41;
  *(v50 + 128) = v42;
  *(v50 + 144) = v43;
  *(v50 + 32) = v46;
  *(v50 + 48) = v47;
  *(v50 + 64) = v44;
  *(v50 + 80) = v45;
  v77 = v75;
  *(v50 + 208) = v75;
  *v50 = v48;
  *(v50 + 16) = v49;
  sub_269E50150(v76, &v78, sub_269E4E8DC);
  sub_269E4FB5C(v32, sub_269E4F5C8);
  v88 = v72;
  v89 = v73;
  v90 = v74;
  v91 = v75;
  v84 = v68;
  v85 = v69;
  v86 = v70;
  v87 = v71;
  v80 = v64;
  v81 = v65;
  v82 = v66;
  v83 = v67;
  v78 = v62;
  v79 = v63;
  sub_269E4FCA0(&v78, sub_269E4E8DC);
  sub_269E4FB5C(v34, sub_269E4F5C8);
}

uint64_t sub_269E4DE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a5;
  v79 = a3;
  v78 = a2;
  v77 = a1;
  v86 = a6;
  sub_269E4ED60();
  v83 = v7;
  v82 = *(v7 - 8);
  v8 = *(v82 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4ED2C(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v85 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v72 - v14;
  v15 = type metadata accessor for PlaceholderBarView(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F8C8(0);
  v74 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F8A0(0);
  v75 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E4F878(0);
  v76 = v27;
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v72 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v72 - v35;
  sub_269E51E1C();
  v80 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v72 = a4;
  v37 = *(a4 + 8);
  *&v18[*(v15 + 28)] = swift_getKeyPath();
  v38 = MEMORY[0x277CDF458];
  sub_269E49C1C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *&v18[*(v15 + 32)] = swift_getKeyPath();
  sub_269E49C1C(0, &qword_281572610, MEMORY[0x277CE3AF8], v38);
  swift_storeEnumTagMultiPayload();
  v39 = v78;
  *v18 = v77;
  *(v18 + 1) = v39;
  v18[16] = v79 & 1;
  *(v18 + 3) = 0x4018000000000000;
  v40 = 1;
  v18[32] = (v37 & 1) == 0;
  v41 = sub_269E5151C();
  v42 = v81;
  sub_269E5102C();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_269E500E8(v18, v22, type metadata accessor for PlaceholderBarView);
  v51 = &v22[*(v74 + 36)];
  *v51 = v41;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = sub_269E5153C();
  sub_269E5102C();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_269E500E8(v22, v26, sub_269E4F8C8);
  v61 = &v26[*(v75 + 36)];
  *v61 = v52;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  sub_269E519BC();
  sub_269E5111C();
  sub_269E500E8(v26, v34, sub_269E4F8A0);
  v62 = &v34[*(v76 + 36)];
  v63 = v92;
  *(v62 + 4) = v91;
  *(v62 + 5) = v63;
  *(v62 + 6) = v93;
  v64 = v88;
  *v62 = v87;
  *(v62 + 1) = v64;
  v65 = v90;
  *(v62 + 2) = v89;
  *(v62 + 3) = v65;
  sub_269E500E8(v34, v36, sub_269E4F878);
  v66 = v84;
  if ((v37 & 2) != 0)
  {
    v67 = v73;
    sub_269E4CC48(v42, v73);
    sub_269E4FD00(v67, v66, sub_269E4ED60);
    v40 = 0;
  }

  (*(v82 + 56))(v66, v40, 1, v83);
  sub_269E50150(v36, v31, sub_269E4F878);
  v68 = v85;
  sub_269E50080(v66, v85, sub_269E4ED2C);
  v69 = v86;
  sub_269E50150(v31, v86, sub_269E4F878);
  sub_269E4F7C8(0);
  sub_269E50080(v68, v69 + *(v70 + 48), sub_269E4ED2C);
  sub_269E4FB5C(v66, sub_269E4ED2C);
  sub_269E4FCA0(v36, sub_269E4F878);
  sub_269E4FB5C(v68, sub_269E4ED2C);
  sub_269E4FCA0(v31, sub_269E4F878);
}

id sub_269E4E5F4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  qword_28035F338 = v0;
  return result;
}

uint64_t sub_269E4E658@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_269E50150(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetChartView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_269E500E8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SleepWidgetChartView);
  *a2 = sub_269E4E76C;
  a2[1] = v7;
  return result;
}

uint64_t sub_269E4E76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepWidgetChartView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_269E4AAF0(a1, v6, a2);
}

void sub_269E4E7EC()
{
  if (!qword_281571FC0)
  {
    sub_269E49C1C(255, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
    sub_269E4F010();
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571FC0);
    }
  }
}

void sub_269E4E960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E4E9EC()
{
  if (!qword_281572400)
  {
    sub_269E4EA78(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572400);
    }
  }
}

void sub_269E4EA78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E4EBB8()
{
  if (!qword_281571F40)
  {
    sub_269E4EC4C(255);
    sub_269E4EFC8(&qword_281571EB8, sub_269E4EC4C);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571F40);
    }
  }
}

void sub_269E4ED60()
{
  if (!qword_281572328)
  {
    sub_269E4EE38(255, &qword_2815723A8, sub_269E4EEBC, sub_269E0841C, MEMORY[0x277CDFAB8]);
    sub_269E4EA78(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572328);
    }
  }
}

void sub_269E4EE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269E4EEBC()
{
  if (!qword_2815724E8)
  {
    sub_269E4EF48();
    sub_269E4FE94(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2815724E8);
    }
  }
}

void sub_269E4EF48()
{
  if (!qword_281572060)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572060);
    }
  }
}

uint64_t sub_269E4EFC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269E4F010()
{
  result = qword_281571E70;
  if (!qword_281571E70)
  {
    sub_269E49C1C(255, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
    sub_269E4EFC8(&qword_281571E88, sub_269E4E880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571E70);
  }

  return result;
}

void sub_269E4F110()
{
  if (!qword_281572058)
  {
    sub_269E4E7EC();
    sub_269E4FE94(255, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4EFC8(&qword_281571FC8, sub_269E4E7EC);
    sub_269E4F208();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572058);
    }
  }
}

unint64_t sub_269E4F208()
{
  result = qword_281571D98;
  if (!qword_281571D98)
  {
    sub_269E4FE94(255, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4F2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D98);
  }

  return result;
}

unint64_t sub_269E4F2A4()
{
  result = qword_281572A38[0];
  if (!qword_281572A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281572A38);
  }

  return result;
}

void sub_269E4F320()
{
  if (!qword_281571FD0)
  {
    sub_269E4F3B4(255);
    sub_269E4EFC8(&qword_281571E98, sub_269E4F3B4);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571FD0);
    }
  }
}

void sub_269E4F410(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_269E4E8DC(255);
    sub_269E4F498(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269E4F498(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_269E4EA78(255, &qword_281571D20, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    a3(255);
    sub_269DFBBA4();
    v5 = sub_269E5198C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E4F64C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269E4EFC8(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_269E4F700()
{
  if (!qword_281571F50)
  {
    sub_269E4F794(255);
    sub_269E4EFC8(&qword_281571EC8, sub_269E4F794);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571F50);
    }
  }
}

void sub_269E4F7FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_269E4F8F0()
{
  result = qword_2815724E0;
  if (!qword_2815724E0)
  {
    sub_269E4F0E8(255);
    sub_269E4E7EC();
    sub_269E4FE94(255, &qword_281571DA0, &type metadata for SleepWidgetChartBar, MEMORY[0x277D83940]);
    sub_269E4EFC8(&qword_281571FC8, sub_269E4E7EC);
    sub_269E4F208();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815724E0);
  }

  return result;
}

unint64_t sub_269E4FA14()
{
  result = qword_281572460;
  if (!qword_281572460)
  {
    sub_269E4F2F8(255);
    sub_269E4EFC8(&qword_281571FD8, sub_269E4F320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572460);
  }

  return result;
}

void sub_269E4FAC4()
{
  if (!qword_28035F360)
  {
    sub_269E49C1C(255, &qword_281571E78, sub_269E4E880, MEMORY[0x277D83D88]);
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F360);
    }
  }
}

uint64_t sub_269E4FB5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_269E4FBBC(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_269E4FBE4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepWidgetChartView() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v13 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_269E4BEAC(a1, v7, v8, v9, v10, v2 + v6, a2, v11, v12);
}

uint64_t sub_269E4FCA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E4FD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E4FD68@<X0>(void *a1@<X8>)
{
  result = sub_269E511EC();
  *a1 = v3;
  return result;
}

uint64_t sub_269E4FDBC@<X0>(uint64_t a1@<X8>)
{
  result = sub_269E5129C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269E4FDF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_269E512AC();
}

uint64_t sub_269E4FE20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_269E4EE38(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_269E4FE94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_269E4FEE4()
{
  result = qword_281571D68;
  if (!qword_281571D68)
  {
    sub_269E4FE94(255, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D68);
  }

  return result;
}

uint64_t sub_269E4FF60@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepWidgetChartView() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_269E4D874(a1, v7, v8, v9, v2 + v6, a2);
}

void sub_269E50014(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E5109C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269E50080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E500E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E50150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E501B8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E49C1C(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E50238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_269E50270(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v32 = a2;
  v33 = a1;
  v2 = sub_269E50C6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E49C1C(0, &qword_281573C58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_269E50BDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_269E50C8C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277CC9830], v11);
  sub_269E50BEC();
  (*(v12 + 8))(v15, v11);
  sub_269E50BAC();
  v21 = sub_269E50BCC();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  v22 = sub_269E50C4C();
  v23 = v32(v22);
  (*(v3 + 104))(v6, *MEMORY[0x277CC99B8], v2);
  v24 = sub_269E50C7C();
  (*(v3 + 8))(v6, v2);
  v25 = *(v23 + 16);
  if (v25 < v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v24 < 0)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_269E0E53C(v23, v23 + 32, v24, (2 * v25) | 1);
    v26 = v28;
    if (*(v23 + 16) == v24)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_269E0E53C(v23, v23 + 32, 0, (2 * v24) | 1);
    v30 = v29;

    v23 = v30;
    goto LABEL_5;
  }

  if (v24)
  {
    goto LABEL_8;
  }

  v26 = v23;
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_5:
  v34 = v26;
  sub_269E25B80(v23);
  (*(v17 + 8))(v20, v16);
  return v34;
}

void sub_269E50640()
{
  if (!qword_281572570)
  {
    sub_269E4EE38(255, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
    sub_269E506E8();
    v0 = sub_269E510BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572570);
    }
  }
}

unint64_t sub_269E506E8()
{
  result = qword_281572170;
  if (!qword_281572170)
  {
    sub_269E4EE38(255, &qword_281572168, sub_269E4F0E8, sub_269E4F2F8, MEMORY[0x277CE0338]);
    sub_269E4F8F0();
    sub_269E4FA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572170);
  }

  return result;
}

uint64_t sub_269E50810(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = sub_269E50E9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x277D62718], v6);
  v11 = sub_269E51D1C();
  v13 = v12;
  result = (*(v7 + 8))(v10, v6);
  *a3 = v11;
  *a4 = v13;
  return result;
}