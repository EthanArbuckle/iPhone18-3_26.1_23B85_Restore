uint64_t sub_264DE5D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24318();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_264DE5E50(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  sub_264E24308();
  swift_endAccess();
  return sub_264DE5FC0;
}

void sub_264DE5FC0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_264E24318();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_264E24318();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t AllActivityView.Bridge.__allocating_init(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AllActivityView.Bridge.init(userAltDSID:deviceIdentifier:)(a1, a2, a3, a4);
  return v11;
}

uint64_t AllActivityView.Bridge.init(userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v16 = xmmword_264E280B0;
  v17 = 0;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2788, &qword_264E28148);
  sub_264E242F8();
  (*(v10 + 32))(v4 + v14, v13, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17 = a3;
  v18 = a4;

  sub_264E24348();
  return v4;
}

uint64_t AllActivityView.Bridge.deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AllActivityView.Bridge.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView6Bridge__userDevice;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264DE6440()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();
}

void sub_264DE64B0(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v107 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2878, &qword_264E283C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v106 = &v84 - v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2780, &qword_264E28140);
  v102 = *(v104 - 8);
  v5 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2880, &qword_264E283D0);
  v103 = *(v7 - 8);
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2888, &qword_264E283D8);
  v105 = *(v11 - 8);
  v12 = *(v105 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v84 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2890, &unk_264E283E0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v84 - v18;
  v108 = sub_264E23AA8();
  v20 = *(v108 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v108);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  if (*(&v110->isa + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_userDeviceSinkCancellable))
  {
    if (qword_27FFB1690 != -1)
    {
      swift_once();
    }

    v25 = sub_264E23FC8();
    __swift_project_value_buffer(v25, qword_27FFB6C08);
    v110 = sub_264E23FA8();
    v26 = sub_264E25298();
    if (os_log_type_enabled(v110, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_264D7D000, v110, v26, "Manager.setUp: already set up; returning", v27, 2u);
      MEMORY[0x26674FCD0](v27, -1, -1);
    }

    v28 = v110;
  }

  else
  {
    v95 = v11;
    v88 = &v84 - v24;
    v90 = v10;
    v91 = v7;
    v99 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v92 = v20;
    v93 = v14;
    v94 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_userDeviceSinkCancellable;
    v96 = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264E24338();

    v30 = v111;
    v29 = v112;
    v97 = v16;
    v98 = v15;
    v89 = v21;
    if (v112 == 1)
    {
      v100 = 0;
      v31 = 0;
    }

    else
    {

      v100 = v30;
      v31 = v29;
    }

    sub_264DEDA20(v30, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264E24338();

    v32 = v112;
    v33 = v113;
    v34 = v114;
    if (v112 == 1)
    {
      v35 = 0;
      v36 = 0;
    }

    else
    {

      v35 = v33;
      v36 = v34;
    }

    sub_264DEDA20(v111, v32);
    if (qword_27FFB1690 != -1)
    {
      swift_once();
    }

    v37 = sub_264E23FC8();
    __swift_project_value_buffer(v37, qword_27FFB6C08);

    v38 = sub_264E23FA8();
    v39 = sub_264E25298();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v111 = v41;
      *v40 = 136315394;
      if (v31)
      {
        v42 = v100;
      }

      else
      {
        v42 = 7104878;
      }

      if (v31)
      {
        v43 = v31;
      }

      else
      {
        v43 = 0xE300000000000000;
      }

      v44 = sub_264DEA000(v42, v43, &v111);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      if (v36)
      {
        v45 = v35;
      }

      else
      {
        v45 = 7104878;
      }

      if (v36)
      {
        v46 = v36;
      }

      else
      {
        v46 = 0xE300000000000000;
      }

      v47 = sub_264DEA000(v45, v46, &v111);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_264D7D000, v38, v39, "Manager.setUp: fetching data for initialUserAltDSID %s, initialDeviceIdentifier %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26674FCD0](v41, -1, -1);
      MEMORY[0x26674FCD0](v40, -1, -1);
    }

    v48 = v92;
    v49 = v36;
    v50 = v99;
    v51 = v109;
    sub_264DE7C3C(v100, v31, v35, v36, v109);
    v52 = sub_264E25248();
    v53 = *(*(v52 - 8) + 56);
    v85 = v35;
    v84 = v31;
    v54 = v88;
    v53(v88, 1, 1, v52);
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = v48[2];
    v87 = (v48 + 2);
    v92 = v56;
    v57 = v108;
    (v56)(v50, v51, v108);
    sub_264E25228();

    v58 = sub_264E25218();
    v86 = *(v48 + 80);
    v59 = (v86 + 72) & ~v86;
    v60 = swift_allocObject();
    v61 = MEMORY[0x277D85700];
    *(v60 + 2) = v58;
    *(v60 + 3) = v61;
    v62 = v100;
    *(v60 + 4) = v55;
    *(v60 + 5) = v62;
    v63 = v85;
    *(v60 + 6) = v84;
    *(v60 + 7) = v63;
    *(v60 + 8) = v49;
    v64 = v48[4];
    v64(&v60[v59], v50, v57);

    sub_264DDE9C8(0, 0, v54, &unk_264E283F8, v60);

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2778, &qword_264E28138);
    v65 = v101;
    sub_264E24308();
    swift_endAccess();
    sub_264D81DCC(&qword_27FFB2898, &qword_27FFB2780, &qword_264E28140);
    sub_264DEDBCC();
    v66 = v90;
    v67 = v104;
    sub_264E24388();
    (*(v102 + 8))(v65, v67);
    sub_264D81DCC(&qword_27FFB28B0, &qword_27FFB2880, &qword_264E283D0);
    v68 = v93;
    v69 = v91;
    sub_264E24378();
    (*(v103 + 8))(v66, v69);
    sub_264DEDCA4();
    v70 = sub_264E252E8();
    v111 = v70;
    v71 = sub_264E252D8();
    v72 = v106;
    (*(*(v71 - 8) + 56))(v106, 1, 1, v71);
    sub_264D81DCC(&qword_27FFB28B8, &qword_27FFB2888, &qword_264E283D8);
    sub_264DEC2DC(&qword_27FFB28C0, sub_264DEDCA4);
    v74 = v95;
    v73 = v96;
    sub_264E24368();
    sub_264D817BC(v72, &qword_27FFB2878, &qword_264E283C8);

    (*(v105 + 8))(v68, v74);
    v75 = swift_allocObject();
    v76 = v110;
    swift_weakInit();
    v77 = v99;
    v78 = v108;
    (v92)(v99, v109, v108);
    v79 = (v86 + 24) & ~v86;
    v80 = swift_allocObject();
    *(v80 + 16) = v75;
    v64((v80 + v79), v77, v78);
    sub_264D81DCC(&qword_27FFB28C8, &qword_27FFB2890, &unk_264E283E0);
    v81 = v98;
    v82 = sub_264E24398();

    (*(v97 + 8))(v73, v81);
    v83 = *(&v76->isa + v94);
    *(&v76->isa + v94) = v82;
  }
}

uint64_t sub_264DE7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  sub_264E25228();
  v8[12] = sub_264E25218();
  v10 = sub_264E25208();
  v8[13] = v10;
  v8[14] = v9;

  return MEMORY[0x2822009F8](sub_264DE71D0, v10, v9);
}

uint64_t sub_264DE71D0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_264DE72E4;
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);

    return sub_264DE8E44(v8, v6, v7, v4, v5);
  }

  else
  {
    v10 = *(v0 + 96);

    **(v0 + 40) = *(v0 + 120) == 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_264DE72E4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264DEEB08, v5, v4);
}

uint64_t sub_264DE7428(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1E60, &qword_264E26A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - v7;
  v9 = sub_264E23AA8();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v11;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = a1[1];
  if (v16 != 1)
  {
    v12 = a1[2];
    v13 = a1[3];
    v14 = *a1;

    v15 = v16;
  }

  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v17 = sub_264E23FC8();
  __swift_project_value_buffer(v17, qword_27FFB6C08);

  v18 = sub_264E23FA8();
  v19 = sub_264E25298();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v49 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v48 = v9;
    v23 = v22;
    v54[0] = v22;
    *v21 = 136315394;
    if (v15)
    {
      v24 = v14;
    }

    else
    {
      v24 = 7104878;
    }

    v47 = a3;
    if (v15)
    {
      v25 = v15;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_264DEA000(v24, v25, v54);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    if (v13)
    {
      v27 = v12;
    }

    else
    {
      v27 = 7104878;
    }

    if (v13)
    {
      v28 = v13;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_264DEA000(v27, v28, v54);

    *(v21 + 14) = v29;
    a3 = v47;
    _os_log_impl(&dword_264D7D000, v18, v19, "Manager received newUserAltDSID %s newDeviceIdentifier %s; fetching data", v21, 0x16u);
    swift_arrayDestroy();
    v30 = v23;
    v9 = v48;
    MEMORY[0x26674FCD0](v30, -1, -1);
    v8 = v49;
    MEMORY[0x26674FCD0](v21, -1, -1);
  }

  v31 = v51;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v33 = v14;
  v34 = v50;
  if (Strong)
  {
    sub_264E23A98();
    sub_264DE7C3C(v33, v15, v12, v13, v31);

    (*(v34 + 8))(v31, v9);
  }

  v35 = sub_264E25248();
  (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
  v36 = *(v34 + 16);
  v51 = v13;
  v37 = v15;
  v38 = v9;
  v36(v31, a3, v9);
  sub_264E25228();
  v39 = v53;

  v40 = sub_264E25218();
  v41 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v42 = swift_allocObject();
  v43 = v31;
  v44 = v42;
  v45 = MEMORY[0x277D85700];
  *(v42 + 2) = v40;
  *(v42 + 3) = v45;
  *(v42 + 4) = v39;
  *(v42 + 5) = v33;
  *(v42 + 6) = v37;
  *(v42 + 7) = v12;
  *(v42 + 8) = v51;
  (*(v34 + 32))(&v42[v41], v43, v38);
  sub_264DDE9C8(0, 0, v8, &unk_264E28408, v44);
}

uint64_t sub_264DE78C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[5] = a1;
  sub_264E25228();
  v8[12] = sub_264E25218();
  v10 = sub_264E25208();
  v8[13] = v10;
  v8[14] = v9;

  return MEMORY[0x2822009F8](sub_264DE7970, v10, v9);
}

uint64_t sub_264DE7970()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_264DE7A84;
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = *(v0 + 56);

    return sub_264DE8E44(v8, v6, v7, v4, v5);
  }

  else
  {
    v10 = *(v0 + 96);

    **(v0 + 40) = *(v0 + 120) == 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_264DE7A84()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_264DE7BC8, v5, v4);
}

uint64_t sub_264DE7BC8()
{
  v1 = *(v0 + 96);

  **(v0 + 40) = *(v0 + 120) == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_264DE7C3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v157 = a1;
  v141 = sub_264E23AA8();
  v140 = *(v141 - 8);
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v138 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for AllActivityView.Model(0);
  v150 = *(v153 - 8);
  v16 = *(v150 + 64);
  MEMORY[0x28223BE20](v153);
  v142 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v146 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v144 = &v133 - v22;
  MEMORY[0x28223BE20](v23);
  v149 = &v133 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v133 - v26;
  v28 = sub_264E23C38();
  v155 = *(v28 - 8);
  KeyPath = v28;
  v29 = *(v155 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v145 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v154 = &v133 - v36;
  v37 = sub_264E238E8();
  v161 = *(v37 - 8);
  v38 = *(v161 + 64);
  MEMORY[0x28223BE20](v37);
  v137 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v135 = &v133 - v41;
  MEMORY[0x28223BE20](v42);
  v136 = &v133 - v43;
  MEMORY[0x28223BE20](v44);
  v143 = &v133 - v45;
  MEMORY[0x28223BE20](v46);
  v158 = &v133 - v47;
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v48 = sub_264E23FC8();
  v49 = __swift_project_value_buffer(v48, qword_27FFB6C08);

  v160 = v49;
  v50 = sub_264E23FA8();
  v51 = sub_264E25298();

  v52 = os_log_type_enabled(v50, v51);
  v159 = v37;
  v152 = a4;
  v151 = a3;
  v148 = a2;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v133 = a5;
    v54 = a3;
    v55 = v53;
    v56 = swift_slowAlloc();
    v134 = v27;
    v57 = v56;
    v162 = v56;
    *v55 = 136315394;
    v147 = v6;
    if (a2)
    {
      v58 = v157;
    }

    else
    {
      v58 = 7104878;
    }

    if (a2)
    {
      v59 = a2;
    }

    else
    {
      v59 = 0xE300000000000000;
    }

    v60 = sub_264DEA000(v58, v59, &v162);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    if (a4)
    {
      v61 = v54;
    }

    else
    {
      v61 = 7104878;
    }

    a5 = v133;
    if (a4)
    {
      v62 = a4;
    }

    else
    {
      v62 = 0xE300000000000000;
    }

    v63 = sub_264DEA000(v61, v62, &v162);
    v37 = v159;
    v6 = v147;

    *(v55 + 14) = v63;
    _os_log_impl(&dword_264D7D000, v50, v51, "Fetching initial data forUserAltDSID %s deviceIdentifier %s", v55, 0x16u);
    swift_arrayDestroy();
    v64 = v57;
    v27 = v134;
    MEMORY[0x26674FCD0](v64, -1, -1);
    MEMORY[0x26674FCD0](v55, -1, -1);
  }

  v65 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  swift_beginAccess();
  v66 = v155;
  v67 = v6 + v65;
  v68 = KeyPath;
  (*(v155 + 16))(v31, v67, KeyPath);
  v69 = v154;
  Calendar.weeksPreceding(date:weekCount:)(a5, *(v6 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_numberOfWeeksToFetch), v154);
  (*(v66 + 8))(v31, v68);
  v70 = v69;
  v71 = v161;
  v72 = *(v161 + 48);
  if (v72(v70, 1, v37) == 1)
  {
    sub_264D817BC(v70, &qword_27FFB1880, &qword_264E26220);
    v73 = sub_264E23FA8();
    v74 = sub_264E252A8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_264D7D000, v73, v74, "Failed to calculate interval - not updating model", v75, 2u);
      MEMORY[0x26674FCD0](v75, -1, -1);
    }

    return;
  }

  KeyPath = v72;
  v76 = *(v71 + 32);
  v77 = v158;
  v76(v158, v70, v37);
  swift_beginAccess();
  sub_264DED7DC(v6 + 16, &v162);
  v78 = v163;
  v79 = v164;
  __swift_project_boxed_opaque_existential_1(&v162, v163);
  v80 = v77;
  v81 = v152;
  (*(v79 + 8))(v80, v157, v148, v151, v152, v78, v79);
  v157 = v76;
  v155 = v71 + 32;
  (*(v150 + 56))(v27, 0, 1, v153);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D81744(v27, v149, &qword_27FFB2830, &qword_264E282B0);

  v147 = v6;
  sub_264E24348();
  sub_264D817BC(v27, &qword_27FFB2830, &qword_264E282B0);
  __swift_destroy_boxed_opaque_existential_1Tm(&v162);

  v82 = sub_264E23FA8();
  v83 = sub_264E25298();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v162 = v85;
    *v84 = 136315138;
    if (v81)
    {
      v86 = v151;
    }

    else
    {
      v86 = 7104878;
    }

    if (v81)
    {
      v87 = v81;
    }

    else
    {
      v87 = 0xE300000000000000;
    }

    v88 = sub_264DEA000(v86, v87, &v162);
    v89 = v159;
    v90 = v161;

    *(v84 + 4) = v88;
    _os_log_impl(&dword_264D7D000, v82, v83, "Model updated successfully with initial data forDeviceIdentifier %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x26674FCD0](v85, -1, -1);
    MEMORY[0x26674FCD0](v84, -1, -1);

    v91 = v144;
    v92 = v157;
  }

  else
  {

    v91 = v144;
    v89 = v159;
    v92 = v157;
    v90 = v161;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  if ((*(v150 + 48))(v91, 1, v153))
  {
    sub_264D817BC(v91, &qword_27FFB2830, &qword_264E282B0);
    v93 = v145;
    (*(v90 + 56))(v145, 1, 1, v89);
    v94 = 7104878;
    goto LABEL_33;
  }

  v95 = v142;
  sub_264DED884(v91, v142, type metadata accessor for AllActivityView.Model);
  sub_264D817BC(v91, &qword_27FFB2830, &qword_264E282B0);
  v93 = v145;
  sub_264D81744(v95 + *(v153 + 104), v145, &qword_27FFB1880, &qword_264E26220);
  sub_264DED9C0(v95, type metadata accessor for AllActivityView.Model);
  v94 = 7104878;
  if (KeyPath(v93, 1, v89) == 1)
  {
LABEL_33:
    sub_264D817BC(v93, &qword_27FFB1880, &qword_264E26220);
    v96 = v152;

    v97 = sub_264E23FA8();
    v98 = sub_264E252A8();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v162 = v100;
      *v99 = 136315138;
      if (v96)
      {
        v94 = v151;
      }

      v101 = v89;
      if (v96)
      {
        v102 = v96;
      }

      else
      {
        v102 = 0xE300000000000000;
      }

      v103 = sub_264DEA000(v94, v102, &v162);

      *(v99 + 4) = v103;
      _os_log_impl(&dword_264D7D000, v97, v98, "No bounds available - after initial data forDeviceIdentifier %s - not updating navigationState", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      MEMORY[0x26674FCD0](v100, -1, -1);
      MEMORY[0x26674FCD0](v99, -1, -1);

      (*(v90 + 8))(v158, v101);
    }

    else
    {

      (*(v90 + 8))(v158, v89);
    }

    return;
  }

  v104 = v143;
  v92(v143, v93, v89);
  KeyPath = swift_getKeyPath();
  v157 = swift_getKeyPath();
  v155 = sub_264E24328();
  v106 = v105;
  v107 = *(v90 + 16);
  v108 = v136;
  v107(v136, v104, v89);
  v109 = *(type metadata accessor for ActivityNavigationState(0) + 20);
  v110 = v139;
  (*(v140 + 16))(v139, v106 + v109, v141);
  v111 = v135;
  v107(v135, v108, v89);
  v112 = v138;
  sub_264D9173C(v110, v111, v138);
  v113 = v89;
  v114 = *(v90 + 8);
  v161 = v90 + 8;
  v114(v108, v113);
  sub_264D93A84(v112, v106 + v109);
  (v155)(&v162, 0);

  v115 = v137;
  v107(v137, v143, v113);
  v116 = v152;

  v117 = sub_264E23FA8();
  v118 = sub_264E25298();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v162 = v120;
    *v119 = 136315394;
    sub_264DEC2DC(&qword_27FFB1CD0, MEMORY[0x277CC88A8]);
    v121 = sub_264E25468();
    v122 = v115;
    v124 = v123;
    v114(v122, v113);
    v125 = sub_264DEA000(v121, v124, &v162);

    *(v119 + 4) = v125;
    *(v119 + 12) = 2080;
    if (v116)
    {
      v126 = v151;
    }

    else
    {
      v126 = 7104878;
    }

    if (v116)
    {
      v127 = v116;
    }

    else
    {
      v127 = 0xE300000000000000;
    }

    v128 = sub_264DEA000(v126, v127, &v162);

    *(v119 + 14) = v128;
    _os_log_impl(&dword_264D7D000, v117, v118, "Bounds updated successfully to %s with initial data forDeviceIdentifier %s", v119, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674FCD0](v120, -1, -1);
    MEMORY[0x26674FCD0](v119, -1, -1);
  }

  else
  {

    v114(v115, v113);
  }

  v129 = *(v147 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData);
  if (v129)
  {
    v130 = *(v147 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData + 8);

    v129(v131);
    sub_264D91628(v129);
  }

  v132 = v159;
  v114(v143, v159);
  v114(v158, v132);
}

uint64_t sub_264DE8E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for AllActivityView.Model(0);
  v6[22] = v8;
  v9 = *(v8 - 8);
  v6[23] = v9;
  v10 = *(v9 + 64) + 15;
  v6[24] = swift_task_alloc();
  v11 = sub_264E23C38();
  v6[25] = v11;
  v12 = *(v11 - 8);
  v6[26] = v12;
  v13 = *(v12 + 64) + 15;
  v6[27] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v15 = sub_264E238E8();
  v6[29] = v15;
  v16 = *(v15 - 8);
  v6[30] = v16;
  v17 = *(v16 + 64) + 15;
  v6[31] = swift_task_alloc();
  sub_264E25228();
  v6[32] = sub_264E25218();
  v19 = sub_264E25208();
  v6[33] = v19;
  v6[34] = v18;

  return MEMORY[0x2822009F8](sub_264DE9080, v19, v18);
}

uint64_t sub_264DE9080()
{
  v63 = v0;
  if (qword_27FFB1690 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_264E23FC8();
  v0[35] = __swift_project_value_buffer(v2, qword_27FFB6C08);

  v3 = sub_264E23FA8();
  v4 = sub_264E25298();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v62 = v8;
    *v7 = 136315138;
    v9 = v5 == 0;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 7104878;
    }

    if (v9)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v1;
    }

    v12 = sub_264DEA000(v10, v11, &v62);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_264D7D000, v3, v4, "Fetching remaining data forDeviceIdentifier %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26674FCD0](v8, -1, -1);
    MEMORY[0x26674FCD0](v7, -1, -1);
  }

  v13 = v0[29];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[17];
  v20 = v0[18];
  v21 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  swift_beginAccess();
  (*(v18 + 16))(v15, v20 + v21, v17);
  Calendar.weeksPreceding(date:weekCount:)(v19, *(v20 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_numberOfWeeksToFetch), v16);
  (*(v18 + 8))(v15, v17);
  if ((*(v14 + 48))(v16, 1, v13) == 1)
  {
    v22 = v0[32];
    v23 = v0[28];

    sub_264D817BC(v23, &qword_27FFB1880, &qword_264E26220);
    v24 = sub_264E23FA8();
    v25 = sub_264E252A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264D7D000, v24, v25, "Failed to calculate interval - not updating model", v26, 2u);
      MEMORY[0x26674FCD0](v26, -1, -1);
    }

LABEL_19:
    v40 = v0[31];
    v41 = v0[27];
    v42 = v0[28];
    v43 = v0[24];
    v45 = v0[20];
    v44 = v0[21];
    v46 = v0[19];

    v47 = v0[1];

    return v47();
  }

  v28 = v0[22];
  v27 = v0[23];
  v29 = v0[21];
  v30 = v0[18];
  (*(v0[30] + 32))(v0[31], v0[28], v0[29]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();

  if ((*(v27 + 48))(v29, 1, v28) == 1)
  {
    v31 = v0[32];
    v32 = v0[21];

    sub_264D817BC(v32, &qword_27FFB2830, &qword_264E282B0);
    v33 = sub_264E23FA8();
    v34 = sub_264E252A8();
    v35 = os_log_type_enabled(v33, v34);
    v37 = v0[30];
    v36 = v0[31];
    v38 = v0[29];
    if (v35)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_264D7D000, v33, v34, "Model is nil - not updating model", v39, 2u);
      MEMORY[0x26674FCD0](v39, -1, -1);
    }

    (*(v37 + 8))(v36, v38);
    goto LABEL_19;
  }

  v49 = v0[18];
  sub_264DED774(v0[21], v0[24], type metadata accessor for AllActivityView.Model);
  swift_beginAccess();
  sub_264DED7DC(v49 + 16, (v0 + 2));
  v50 = v0[5];
  v51 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v50);
  v52 = *(v51 + 16);
  v61 = (v52 + *v52);
  v53 = v52[1];
  v54 = swift_task_alloc();
  v0[36] = v54;
  *v54 = v0;
  v54[1] = sub_264DE965C;
  v55 = v0[31];
  v56 = v0[15];
  v57 = v0[16];
  v58 = v0[13];
  v59 = v0[14];
  v60 = v0[24];

  return v61(v60, v55, v58, v59, v56, v57, v50, v51);
}

uint64_t sub_264DE965C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 264);
  if (v0)
  {
    v7 = sub_264DE9A9C;
  }

  else
  {
    v7 = sub_264DE9798;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_264DE9798()
{
  v36 = v0;
  v1 = v0[35];
  v2 = v0[32];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = v0[16];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_264DED884(v3, v6, type metadata accessor for AllActivityView.Model);
  (*(v4 + 56))(v6, 0, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D81744(v6, v7, &qword_27FFB2830, &qword_264E282B0);

  sub_264E24348();
  sub_264D817BC(v6, &qword_27FFB2830, &qword_264E282B0);

  v10 = sub_264E23FA8();
  v11 = sub_264E25298();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v13 = 7104878;
      v16 = 0xE300000000000000;
    }

    v17 = sub_264DEA000(v13, v16, &v35);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_264D7D000, v10, v11, "Model updated successfully with remaining data forDeviceIdentifier %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26674FCD0](v15, -1, -1);
    MEMORY[0x26674FCD0](v14, -1, -1);
  }

  v18 = v0[18] + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData;
  v19 = *v18;
  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[29];
  v23 = v0[24];
  if (*v18)
  {
    v24 = *(v18 + 8);

    v19(v25);
    sub_264D91628(v19);
  }

  sub_264DED9C0(v23, type metadata accessor for AllActivityView.Model);
  (*(v21 + 8))(v20, v22);
  v26 = v0[31];
  v27 = v0[27];
  v28 = v0[28];
  v29 = v0[24];
  v31 = v0[20];
  v30 = v0[21];
  v32 = v0[19];

  v33 = v0[1];

  return v33();
}

uint64_t sub_264DE9A9C()
{
  v1 = v0[35];
  v2 = v0[32];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = sub_264E23FA8();
  v4 = sub_264E252A8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[37];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[29];
  v10 = v0[24];
  if (v5)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_264D7D000, v3, v4, "Failed to fetch hourly data - not updating model", v11, 2u);
    MEMORY[0x26674FCD0](v11, -1, -1);
  }

  sub_264DED9C0(v10, type metadata accessor for AllActivityView.Model);
  (*(v8 + 8))(v7, v9);
  v12 = v0[31];
  v13 = v0[27];
  v14 = v0[28];
  v15 = v0[24];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];

  v19 = v0[1];

  return v19();
}

uint64_t sub_264DE9C20()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar;
  v2 = sub_264E23C38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_userDeviceSinkCancellable);

  v4 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager__model;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D8, &qword_264E28430);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager__navigationState;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28E0, &qword_264E28438);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData + 8);
  sub_264D91628(*(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData));
  v9 = *(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData + 8);
  sub_264D91628(*(v0 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData));
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264DE9D94@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AllActivityView.Manager(0);
  result = sub_264E242E8();
  *a1 = result;
  return result;
}

uint64_t sub_264DE9DD4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264E24338();
}

uint64_t sub_264DE9E4C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_264D81744(a1, &v13 - v9, &qword_27FFB2830, &qword_264E282B0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264D81744(v10, v7, &qword_27FFB2830, &qword_264E282B0);

  sub_264E24348();
  return sub_264D817BC(v10, &qword_27FFB2830, &qword_264E282B0);
}

uint64_t sub_264DE9FA4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_264DEA000(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_264DEA000(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_264DEA0CC(v11, 0, 0, 1, a1, a2);
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
    sub_264DED938(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_264DEA0CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_264DEA1D8(a5, a6);
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
    result = sub_264E253D8();
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

uint64_t sub_264DEA1D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_264DEA224(a1, a2);
  sub_264DEA354(&unk_2876A2C60);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_264DEA224(uint64_t a1, unint64_t a2)
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

  v6 = sub_264DEA440(v5, 0);
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

  result = sub_264E253D8();
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
        v10 = sub_264E25198();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_264DEA440(v10, 0);
        result = sub_264E25398();
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

uint64_t sub_264DEA354(uint64_t result)
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

  result = sub_264DEA4B4(result, v12, 1, v3);
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

void *sub_264DEA440(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2870, &qword_264E28378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_264DEA4B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2870, &qword_264E28378);
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

_BYTE **sub_264DEA5A8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_264DEA5B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a4;
  v86 = a2;
  v87 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = (v67 - v9);
  v72 = sub_264E238E8();
  v70 = *(v72 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v77 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = v67 - v13;
  MEMORY[0x28223BE20](v14);
  v82 = v67 - v15;
  v89 = sub_264E23C38();
  v84 = *(v89 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_264E23AA8();
  v83 = *(v79 - 8);
  v18 = v83[8];
  MEMORY[0x28223BE20](v79);
  v73 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v74 = v67 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v67 - v23;
  v81 = type metadata accessor for ActivityNavigationState(0);
  v25 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v75 = v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v80 = (v67 - v28);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28D8, &qword_264E28430);
  v29 = *(v78 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v78);
  v32 = v67 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2830, &qword_264E282B0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = v67 - v38;
  v90[3] = type metadata accessor for ModelProvider();
  v90[4] = &protocol witness table for ModelProvider;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  sub_264DED774(a1, boxed_opaque_existential_1, type metadata accessor for ModelProvider);
  *(a5 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_userDeviceSinkCancellable) = 0;
  v41 = OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager__model;
  v42 = type metadata accessor for AllActivityView.Model(0);
  (*(*(v42 - 8) + 56))(v39, 1, 1, v42);
  sub_264D81744(v39, v36, &qword_27FFB2830, &qword_264E282B0);
  sub_264E242F8();
  sub_264D817BC(v39, &qword_27FFB2830, &qword_264E282B0);
  (*(v29 + 32))(a5 + v41, v32, v78);
  v43 = (a5 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchInitialData);
  *v43 = 0;
  v43[1] = 0;
  v44 = (a5 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_didFetchRemainingData);
  *v44 = 0;
  v44[1] = 0;
  v78 = a5;
  sub_264DED7DC(v90, a5 + 16);
  v45 = v83[2];
  v46 = v79;
  v67[2] = v83 + 2;
  v45(v24, v86);
  v69 = *(v84 + 16);
  v67[1] = v84 + 16;
  v69(v88, v85, v89);
  v47 = v71;
  v48 = v24;
  Calendar.weeksRoundedToDay(untilDateInLastDay:weekCount:)(v24, v87, v71);
  v49 = v47;
  v50 = v70;
  v51 = v72;
  if ((*(v70 + 48))(v49, 1) == 1)
  {
    sub_264D817BC(v49, &qword_27FFB1880, &qword_264E26220);
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {
    v52 = v82;
    (*(v50 + 32))(v82, v49, v51);
    v53 = v74;
    v68 = v48;
    (v45)(v74, v48, v46);
    v71 = v45;
    v67[0] = *(v50 + 16);
    v54 = v76;
    (v67[0])(v76, v52, v51);
    v55 = v80;
    v56 = v81;
    v69(v80 + *(v81 + 24), v88, v89);
    *v55 = 1;
    v57 = v73;
    (v71)(v73, v53, v46);
    v58 = v77;
    (v67[0])(v77, v54, v51);
    sub_264D9173C(v57, v58, v55 + *(v56 + 20));
    v59 = *(v50 + 8);
    v59(v54, v51);
    v60 = v83[1];
    v61 = v79;
    v60(v53, v79);
    v59(v82, v51);
    v62 = v84;
    v63 = v89;
    (*(v84 + 8))(v88, v89);
    v60(v68, v61);
    v64 = v78;
    swift_beginAccess();
    v65 = v80;
    sub_264DED884(v80, v75, type metadata accessor for ActivityNavigationState);
    sub_264E242F8();
    sub_264DED9C0(v65, type metadata accessor for ActivityNavigationState);
    swift_endAccess();
    v60(v86, v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    *(v64 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_numberOfWeeksToFetch) = v87;
    (*(v62 + 32))(v64 + OBJC_IVAR____TtCV16ScreenTimeUICore15AllActivityView7Manager_calendar, v85, v63);
    return v64;
  }

  return result;
}

uint64_t sub_264DEAE90(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_264DEAF84;

  return v6(v2 + 32);
}

uint64_t sub_264DEAF84()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_264DEB098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F08, &qword_264E28600);
    v3 = sub_264E25448();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_264D9D57C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s16ScreenTimeUICore15AllActivityViewV6BridgeC10UserDeviceV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_264E25478() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_264E25478() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_264DEB26C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_264E25448();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_264D81744(v17, v13, a2, v28);
      result = sub_264D9D6C8(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_264E238E8();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEB44C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C10, &qword_264E26688);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F28, &unk_264E26CD0);
    v8 = sub_264E25448();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v10, v6, &qword_27FFB1C10, &qword_264E26688);
      result = sub_264D9D5F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_264E23AA8();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_264DEB634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_264DEB6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AB8, &qword_264E28668);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F18, qword_264E28670);
    v8 = sub_264E25448();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v10, v6, &qword_27FFB2AB8, &qword_264E28668);
      result = sub_264D9D6C8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_264E238E8();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEB88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AB0, &unk_264E28658);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F00, &unk_264E26CB0);
    v8 = sub_264E25448();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v10, v6, &qword_27FFB2AB0, &unk_264E28658);
      result = sub_264D9D6C8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_264E238E8();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEBA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AA0, &unk_264E28638);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F38, &qword_264E26CE0);
    v8 = sub_264E25448();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v10, v6, &qword_27FFB2AA0, &unk_264E28638);
      result = sub_264D9D5F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_264E23AA8();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEBC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2A98, &qword_264E28628);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F30, &qword_264E28630);
    v8 = sub_264E25448();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v10, v6, &qword_27FFB2A98, &qword_264E28628);
      result = sub_264D9D5F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_264E23AA8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
      result = sub_264DED774(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PickupsDetailLegendView.DayPickups);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_264DEBEC0()
{
  result = qword_27FFB2750;
  if (!qword_27FFB2750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2748, &qword_264E280D0);
    sub_264D81DCC(&qword_27FFB2758, &qword_27FFB2760, &unk_264E280D8);
    sub_264D9CE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2750);
  }

  return result;
}

uint64_t sub_264DEBFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2790, qword_264E281D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264DEC0AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2790, qword_264E281D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DEC15C()
{
  sub_264DEC228();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AllActivityView.Bridge(319);
    if (v1 <= 0x3F)
    {
      sub_264DECF7C(319, &qword_27FFB27B8, type metadata accessor for AllActivityView.UnitTestOverrides, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DEC228()
{
  if (!qword_27FFB27A8)
  {
    type metadata accessor for AllActivityView.Manager(255);
    sub_264DEC2DC(&qword_27FFB27B0, type metadata accessor for AllActivityView.Manager);
    v0 = sub_264E24468();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB27A8);
    }
  }
}

uint64_t sub_264DEC2DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DEC358(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_34:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for UsageHeaderView.Model(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_33:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_34;
  }

  v16 = type metadata accessor for UsageOverviewTabView.Model(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_33;
  }

  v17 = type metadata accessor for UsageDetailTabView.Model(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[9];
    goto LABEL_33;
  }

  v18 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[10];
    goto LABEL_33;
  }

  v19 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v14 = *(v19 - 8);
    v15 = a3[11];
    goto LABEL_33;
  }

  v20 = type metadata accessor for PickupsHeaderView.Model(0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v14 = *(v20 - 8);
    v15 = a3[14];
    goto LABEL_33;
  }

  v21 = type metadata accessor for PickupsOverviewTabView.Model(0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v14 = *(v21 - 8);
    v15 = a3[15];
    goto LABEL_33;
  }

  v22 = type metadata accessor for PickupsDetailTabView.Model(0);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v14 = *(v22 - 8);
    v15 = a3[16];
    goto LABEL_33;
  }

  v23 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v14 = *(v23 - 8);
    v15 = a3[17];
    goto LABEL_33;
  }

  v24 = type metadata accessor for PickupsDetailLegendView.Model(0);
  if (*(*(v24 - 8) + 84) == a2)
  {
    v8 = v24;
    v14 = *(v24 - 8);
    v15 = a3[18];
    goto LABEL_33;
  }

  v25 = type metadata accessor for NotificationsHeaderView.Model(0);
  if (*(*(v25 - 8) + 84) == a2)
  {
    v8 = v25;
    v14 = *(v25 - 8);
    v15 = a3[21];
    goto LABEL_33;
  }

  v26 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  if (*(*(v26 - 8) + 84) == a2)
  {
    v8 = v26;
    v14 = *(v26 - 8);
    v15 = a3[22];
    goto LABEL_33;
  }

  v27 = type metadata accessor for NotificationsDetailTabView.Model(0);
  if (*(*(v27 - 8) + 84) == a2)
  {
    v8 = v27;
    v14 = *(v27 - 8);
    v15 = a3[23];
    goto LABEL_33;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v29 = *(*(v28 - 8) + 48);
  v30 = a1 + a3[26];

  return v29(v30, a2, v28);
}

uint64_t sub_264DEC84C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_32:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for UsageHeaderView.Model(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_31:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_32;
  }

  v16 = type metadata accessor for UsageOverviewTabView.Model(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_31;
  }

  v17 = type metadata accessor for UsageDetailTabView.Model(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_31;
  }

  v18 = type metadata accessor for CategoriesLegendView.Model(0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_31;
  }

  v19 = type metadata accessor for UsageChartFooterView.Model(0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[11];
    goto LABEL_31;
  }

  v20 = type metadata accessor for PickupsHeaderView.Model(0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_31;
  }

  v21 = type metadata accessor for PickupsOverviewTabView.Model(0);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[15];
    goto LABEL_31;
  }

  v22 = type metadata accessor for PickupsDetailTabView.Model(0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[16];
    goto LABEL_31;
  }

  v23 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[17];
    goto LABEL_31;
  }

  v24 = type metadata accessor for PickupsDetailLegendView.Model(0);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[18];
    goto LABEL_31;
  }

  v25 = type metadata accessor for NotificationsHeaderView.Model(0);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[21];
    goto LABEL_31;
  }

  v26 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[22];
    goto LABEL_31;
  }

  v27 = type metadata accessor for NotificationsDetailTabView.Model(0);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[23];
    goto LABEL_31;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v29 = *(*(v28 - 8) + 56);
  v30 = a1 + a4[26];

  return v29(v30, a2, a2, v28);
}

void sub_264DECD2C()
{
  sub_264E23C38();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScreenTimeAppInfoCache();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScreenTimeAppIconCache();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UsageHeaderView.Model(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UsageOverviewTabView.Model(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UsageDetailTabView.Model(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CategoriesLegendView.Model(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for UsageChartFooterView.Model(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for PickupsHeaderView.Model(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for PickupsOverviewTabView.Model(319);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for PickupsDetailTabView.Model(319);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for PickupsOverviewLegendView.Model(319);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for PickupsDetailLegendView.Model(319);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for NotificationsHeaderView.Model(319);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for NotificationsOverviewTabView.Model(319);
                              if (v14 <= 0x3F)
                              {
                                type metadata accessor for NotificationsDetailTabView.Model(319);
                                if (v15 <= 0x3F)
                                {
                                  sub_264DECF7C(319, &qword_27FFB27D0, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
                                  if (v16 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_264DECF7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_264DECFE8()
{
  sub_264DED3D8(319, &qword_27FFB27E8, &qword_27FFB2788, &qword_264E28148);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264DED194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_264DED1F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_264DED25C()
{
  v0 = sub_264E23C38();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_264DED3D8(319, &qword_27FFB2828, &qword_27FFB2830, &qword_264E282B0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_264DECF7C(319, &qword_27FFB2838, type metadata accessor for ActivityNavigationState, MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264DED3D8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264E24358();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_264DED430()
{
  result = qword_27FFB2840;
  if (!qword_27FFB2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2768, &qword_264E280E8);
    sub_264D81DCC(&qword_27FFB2848, &qword_27FFB2850, &unk_264E282D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2840);
  }

  return result;
}

uint64_t sub_264DED4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_264DED5BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_264DED660()
{
  result = sub_264DED6E4();
  if (v1 <= 0x3F)
  {
    result = sub_264E23C38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_264DED6E4()
{
  result = qword_27FFB2868;
  if (!qword_27FFB2868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FFB2868);
  }

  return result;
}

uint64_t sub_264DED774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DED7DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264DED884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_264DED938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264DED9C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264DEDA20(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_264DEDA68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264DEDAA4(uint64_t a1)
{
  v4 = *(sub_264E23AA8() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_264D9BB74;

  return sub_264DE7124(a1, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_264DEDBCC()
{
  result = qword_27FFB28A0;
  if (!qword_27FFB28A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2788, &qword_264E28148);
    sub_264DEDC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB28A0);
  }

  return result;
}

unint64_t sub_264DEDC50()
{
  result = qword_27FFB28A8;
  if (!qword_27FFB28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB28A8);
  }

  return result;
}

unint64_t sub_264DEDCA4()
{
  result = qword_27FFB26C0;
  if (!qword_27FFB26C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFB26C0);
  }

  return result;
}

uint64_t sub_264DEDCF0()
{
  v1 = sub_264E23AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264DEDDB4(uint64_t *a1)
{
  v3 = *(sub_264E23AA8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_264DE7428(a1, v4, v5);
}

uint64_t objectdestroy_79Tm()
{
  v1 = sub_264E23AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264DEDF04(uint64_t a1)
{
  v4 = *(sub_264E23AA8() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_264D9A59C;

  return sub_264DE78C4(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_264DEE02C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264DEE064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264D9BB74;

  return sub_264DEAE90(a1, v5);
}

uint64_t sub_264DEE11C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264D9A59C;

  return sub_264DEAE90(a1, v5);
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for AllActivityView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = *(v0 + v4);
  v6 = *(v0 + v4 + 8);
  v7 = *(v0 + v4 + 16);
  sub_264DEBF7C();
  v8 = *(v0 + v4 + 24);

  v9 = (v0 + v4 + v1[8]);
  v10 = type metadata accessor for AllActivityView.UnitTestOverrides(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v11 = *(v10 + 20);
    v12 = sub_264E23C38();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_264DEE31C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AllActivityView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_264DEE390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB28E8, &unk_264E28440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F10, &unk_264E26CC0);
    v8 = sub_264E25448();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_264D81744(v10, v6, &qword_27FFB28E8, &unk_264E28440);
      result = sub_264D9D5F4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_264E23AA8();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_264DEE578(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

unint64_t sub_264DEE920()
{
  result = qword_27FFB2A40;
  if (!qword_27FFB2A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2A28, &qword_264E28570);
    sub_264DEE9A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2A40);
  }

  return result;
}

unint64_t sub_264DEE9A4()
{
  result = qword_27FFB2A48;
  if (!qword_27FFB2A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2A30, &qword_264E28578);
    sub_264D81DCC(&qword_27FFB1798, &qword_27FFB1768, &unk_264E298C0);
    sub_264D81DCC(&qword_27FFB17F0, &qword_27FFB17F8, &qword_264E28590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2A48);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id STCommunicationSafetyAnalyticsTipContentInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STCommunicationSafetyAnalyticsTipContentInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationSafetyAnalyticsTipContentInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STCommunicationSafetyAnalyticsTipContentInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationSafetyAnalyticsTipContentInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264DEECD0(uint64_t a1)
{
  v2 = sub_264E24808();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_264E24628();
}

id sub_264DEED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CommunicationSafetyAnalyticsTipView();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1790, &qword_264E26110);
  swift_storeEnumTagMultiPayload();
  v13 = (v12 + *(v9 + 28));
  *v13 = a1;
  v13[1] = a2;
  v14 = (v12 + *(v9 + 32));
  *v14 = a3;
  v14[1] = a4;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2AC0, &qword_264E28720));

  v15 = sub_264E24848();
  result = [v15 view];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264DEEF68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t PickupsOverviewLegendView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20);
  *(a2 + v4) = sub_264DEBA74(MEMORY[0x277D84F90]);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t PickupsOverviewLegendView.init(model:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  sub_264DF1DF8(a1, a3);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  Calendar.startOfWeek(containing:)(v10, v14);
  (*(v7 + 8))(v10, v6);
  result = (*(v7 + 48))(v14, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = type metadata accessor for PickupsOverviewLegendView(0);
    v17 = (a3 + *(v16 + 24));
    v18 = sub_264E238E8();
    (*(*(v18 - 8) + 8))(a2, v18);
    sub_264DF1E7C(a1);
    result = (*(v7 + 32))(a3 + *(v16 + 20), v14, v6);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0;
  }

  return result;
}

uint64_t sub_264DEF284@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v28 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v30 = &v28 - v13;
  v14 = a1[2];
  if (v14)
  {
    v29 = a2;
    v15 = sub_264D8C3EC(v14, 0);
    v28 = v4;
    sub_264D8E568(&v34, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v14, a1);
    v17 = v16;

    sub_264D8F07C();
    if (v17 != v14)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v4 = v28;
    a2 = v29;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v34 = v15;
  sub_264DF088C(&v34);
  if (v34[2])
  {
    sub_264D81744(v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v11, &qword_27FFB1BB8, &unk_264E26640);

    v18 = v30;
    sub_264D90E64(v11, v30, &qword_27FFB1BB8, &unk_264E26640);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850);
    v20 = *(v19 + 48);
    v21 = v31;
    sub_264D81744(v18, v31, &qword_27FFB1BB8, &unk_264E26640);
    v22 = sub_264E23AA8();
    v23 = *(v22 - 8);
    (*(v23 + 32))(a2, v21, v22);
    v24 = v33;
    sub_264D90E64(v18, v33, &qword_27FFB1BB8, &unk_264E26640);
    *(a2 + v20) = *(v24 + *(v32 + 48));
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
    return (*(v23 + 8))(v24, v22);
  }

  else
  {

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850);
    v27 = *(*(v26 - 8) + 56);

    return v27(a2, 1, 1, v26);
  }
}

uint64_t sub_264DEF650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v8)
  {
    v13 = v11;
LABEL_10:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(a1 + 48);
    v17 = sub_264E23AA8();
    (*(*(v17 - 8) + 16))(v5, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(*(a1 + 56) + 8 * v15);
    *&v5[*(v2 + 48)] = v18;
    result = sub_264D817BC(v5, &qword_27FFB1BB8, &unk_264E26640);
    v19 = __OFADD__(v12, v18);
    v12 += v18;
    if (v19)
    {
      __break(1u);
LABEL_13:

      return v12;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_13;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double PickupsOverviewLegendView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264E24758();
  v28 = 0;
  sub_264DEF9A0(v2, &v14);
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v29 = v14;
  v30 = v15;
  v42[10] = v24;
  v42[11] = v25;
  v42[12] = v26;
  v42[6] = v20;
  v42[7] = v21;
  v42[8] = v22;
  v42[9] = v23;
  v42[2] = v16;
  v42[3] = v17;
  v42[4] = v18;
  v42[5] = v19;
  v42[0] = v14;
  v42[1] = v15;
  sub_264D81744(&v29, &v13, &qword_27FFB2AC8, &qword_264E28728);
  sub_264D817BC(v42, &qword_27FFB2AC8, &qword_264E28728);
  *&v27[151] = v38;
  *&v27[167] = v39;
  *&v27[183] = v40;
  *&v27[199] = v41;
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[7] = v29;
  v5 = *&v27[176];
  *(a1 + 177) = *&v27[160];
  *(a1 + 193) = v5;
  *(a1 + 209) = *&v27[192];
  v6 = *&v27[112];
  *(a1 + 113) = *&v27[96];
  *(a1 + 129) = v6;
  v7 = *&v27[144];
  *(a1 + 145) = *&v27[128];
  *(a1 + 161) = v7;
  v8 = *&v27[48];
  *(a1 + 49) = *&v27[32];
  *(a1 + 65) = v8;
  v9 = *&v27[80];
  *(a1 + 81) = *&v27[64];
  *(a1 + 97) = v9;
  result = *v27;
  v11 = *&v27[16];
  *(a1 + 17) = *v27;
  v12 = v28;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 224) = *&v27[207];
  *(a1 + 33) = v11;
  return result;
}

uint64_t sub_264DEF9A0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B10, &qword_264E28848);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = *(a1 + *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20));
  if (!*(v17 + 16) || (v18 = type metadata accessor for PickupsOverviewLegendView(0), v19 = sub_264D9D5F4(a1 + *(v18 + 20)), (v20 & 1) == 0) || (v21 = *(*(v17 + 56) + 8 * v19), , !v21))
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    v21 = 0;
    goto LABEL_7;
  }

  sub_264DEF284(v22, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_7:
    sub_264D817BC(v11, &qword_27FFB2B10, &qword_264E28848);
    v55 = 0;
    v56 = 0;
    v24 = 0;
    v46 = 0;
    v47 = 0;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    KeyPath = 0;
    v23 = 0;
    goto LABEL_8;
  }

  sub_264D90E64(v11, v16, &qword_27FFB2B18, &qword_264E28850);
  v56 = sub_264E24828();
  LOBYTE(v76[0]) = 0;
  sub_264DEFF1C(a1, v16, &v84);
  v46 = v84;
  v54 = v86;
  v55 = v85;
  v52 = v88;
  v53 = v87;
  v50 = v90;
  v51 = v89;
  v49 = v91;
  v23 = LOBYTE(v76[0]);
  v47 = sub_264E249E8();
  KeyPath = swift_getKeyPath();
  sub_264D817BC(v16, &qword_27FFB2B18, &qword_264E28850);
  v24 = 0x4014000000000000;
LABEL_8:
  v25 = sub_264E24828();
  LOBYTE(v84) = 0;
  sub_264DF04B4(v21, v65);

  *&v64[7] = v65[0];
  *&v64[23] = v65[1];
  *&v64[39] = v65[2];
  *&v64[55] = v65[3];
  v26 = v84;
  v27 = sub_264E249F8();
  (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
  v28 = sub_264E24A38();
  sub_264D817BC(v7, &qword_27FFB17B8, &qword_264E279E0);
  v29 = swift_getKeyPath();
  *&v66 = v56;
  *(&v66 + 1) = v24;
  v45 = v24;
  v30 = v23;
  *&v67 = v23;
  v31 = v46;
  *(&v67 + 1) = v46;
  *&v68 = v55;
  *(&v68 + 1) = v54;
  *&v69 = v53;
  *(&v69 + 1) = v52;
  *&v70 = v51;
  *(&v70 + 1) = v50;
  *&v71 = v49;
  *(&v71 + 1) = KeyPath;
  v61 = v70;
  v62 = v71;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v60 = v69;
  v32 = v25;
  *&v73 = v25;
  *(&v73 + 1) = 0x4014000000000000;
  LOBYTE(v74[0]) = v26;
  v33 = *&v64[16];
  *(v74 + 1) = *v64;
  *&v74[4] = *&v64[63];
  v34 = *&v64[32];
  *(&v74[3] + 1) = *&v64[48];
  *(&v74[2] + 1) = *&v64[32];
  v35 = *v64;
  *(&v74[1] + 1) = *&v64[16];
  *(&v74[4] + 1) = v29;
  *(&v63[2] + 8) = v74[1];
  *(&v63[1] + 8) = v74[0];
  *(v63 + 8) = v73;
  *(&v63[5] + 8) = v74[4];
  v36 = v30;
  v37 = v47;
  v72 = v47;
  *&v63[0] = v47;
  v75 = v28;
  *(&v63[6] + 1) = v28;
  *(&v63[4] + 8) = v74[3];
  *(&v63[3] + 8) = v74[2];
  v38 = v69;
  a2[2] = v68;
  a2[3] = v38;
  v39 = v58;
  *a2 = v57;
  a2[1] = v39;
  v40 = v63[1];
  a2[6] = v63[0];
  a2[7] = v40;
  v41 = v62;
  a2[4] = v61;
  a2[5] = v41;
  v42 = v63[6];
  a2[11] = v63[5];
  a2[12] = v42;
  v43 = v63[4];
  a2[9] = v63[3];
  a2[10] = v43;
  a2[8] = v63[2];
  v76[0] = v32;
  v76[1] = 0x4014000000000000;
  v77 = v26;
  v79 = v33;
  v80 = v34;
  *v81 = *&v64[48];
  v78 = v35;
  *&v81[15] = *&v64[63];
  v82 = v29;
  v83 = v28;
  sub_264D81744(&v66, &v84, &qword_27FFB2B20, &qword_264E28888);
  sub_264D81744(&v73, &v84, &qword_27FFB2B28, &unk_264E28890);
  sub_264D817BC(v76, &qword_27FFB2B28, &unk_264E28890);
  v84 = v56;
  v85 = v45;
  v86 = v36;
  v87 = v31;
  v88 = v55;
  v89 = v54;
  v90 = v53;
  v91 = v52;
  v92 = v51;
  v93 = v50;
  v94 = v49;
  v95 = KeyPath;
  v96 = v37;
  return sub_264D817BC(&v84, &qword_27FFB2B20, &qword_264E28888);
}

uint64_t sub_264DEFF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a1;
  v43 = sub_264E23C18();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264E247C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_264E247D8();
  v39 = objc_opt_self();
  v10 = [v39 bundle];
  v11 = sub_264E24AE8();
  v13 = v12;
  v15 = v14;
  LODWORD(v45) = sub_264E248D8();
  v16 = sub_264E24AC8();
  v18 = v17;
  HIDWORD(v38) = v19;
  v40 = v20;
  v21 = v13;
  v22 = v41;
  sub_264D817AC(v11, v21, v15 & 1);

  sub_264E247B8();
  sub_264E247A8();
  v23 = v43;
  (*(v4 + 104))(v7, *MEMORY[0x277CC99B8], v43);
  v24 = sub_264E23C28();
  result = (*(v4 + 8))(v7, v23);
  v26 = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_264E23B68();
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v26 < *(result + 16))
  {
    v27 = result + 16 * v26;
    v28 = *(v27 + 32);
    v29 = *(v27 + 40);

    sub_264E24798();

    sub_264E247A8();
    v45 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2B18, &qword_264E28850) + 48));
    sub_264E24788();
    sub_264E247A8();
    sub_264E247E8();
    v30 = [v39 bundle];
    v31 = sub_264E24AE8();
    v33 = v32;
    v34 = BYTE4(v38) & 1;
    v44 = BYTE4(v38) & 1;
    LOBYTE(v45) = BYTE4(v38) & 1;
    v36 = v35 & 1;
    v46 = v35 & 1;
    *a3 = v16;
    *(a3 + 8) = v18;
    *(a3 + 16) = v34;
    *(a3 + 24) = v40;
    *(a3 + 32) = v31;
    *(a3 + 40) = v32;
    *(a3 + 48) = v35 & 1;
    *(a3 + 56) = v37;
    sub_264D80F20(v16, v18, v34);

    sub_264D80F20(v31, v33, v36);

    sub_264D817AC(v31, v33, v36);

    sub_264D817AC(v16, v18, v44);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t PickupsOverviewLegendView.Model.dayOfWeek(day:)()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CC99B8], v0, v3);
  v6 = sub_264E23C28();
  result = (*(v1 + 8))(v5, v0);
  v8 = __OFSUB__(v6, 1);
  v9 = v6 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_264E23B68();
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < *(result + 16))
  {
    v10 = result + 16 * v9;
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);

    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_264DF04B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_264E247D8();
  v3 = [objc_opt_self() bundle];
  v4 = sub_264E24AE8();
  v6 = v5;
  v8 = v7;
  sub_264E24C68();
  v9 = sub_264E24AC8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_264D817AC(v4, v6, v8 & 1);

  if (a1)
  {
    sub_264DEF650(a1);
  }

  sub_264D908C4();
  sub_264E25348();
  sub_264D89EB8();
  v16 = sub_264E24AF8();
  v18 = v17;
  v19 = v13 & 1;
  v25 = v13 & 1;
  v21 = v20 & 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 & 1;
  *(a2 + 56) = v22;
  sub_264D80F20(v9, v11, v19);

  sub_264D80F20(v16, v18, v21);

  sub_264D817AC(v16, v18, v21);

  sub_264D817AC(v9, v11, v25);
}

double sub_264DF06DC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264E24758();
  v28 = 0;
  sub_264DEF9A0(v2, &v14);
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v29 = v14;
  v30 = v15;
  v42[10] = v24;
  v42[11] = v25;
  v42[12] = v26;
  v42[6] = v20;
  v42[7] = v21;
  v42[8] = v22;
  v42[9] = v23;
  v42[2] = v16;
  v42[3] = v17;
  v42[4] = v18;
  v42[5] = v19;
  v42[0] = v14;
  v42[1] = v15;
  sub_264D81744(&v29, &v13, &qword_27FFB2AC8, &qword_264E28728);
  sub_264D817BC(v42, &qword_27FFB2AC8, &qword_264E28728);
  *&v27[151] = v38;
  *&v27[167] = v39;
  *&v27[183] = v40;
  *&v27[199] = v41;
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[7] = v29;
  v5 = *&v27[176];
  *(a1 + 177) = *&v27[160];
  *(a1 + 193) = v5;
  *(a1 + 209) = *&v27[192];
  v6 = *&v27[112];
  *(a1 + 113) = *&v27[96];
  *(a1 + 129) = v6;
  v7 = *&v27[144];
  *(a1 + 145) = *&v27[128];
  *(a1 + 161) = v7;
  v8 = *&v27[48];
  *(a1 + 49) = *&v27[32];
  *(a1 + 65) = v8;
  v9 = *&v27[80];
  *(a1 + 81) = *&v27[64];
  *(a1 + 97) = v9;
  result = *v27;
  v11 = *&v27[16];
  *(a1 + 17) = *v27;
  v12 = v28;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 224) = *&v27[207];
  *(a1 + 33) = v11;
  return result;
}

void sub_264DF088C(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_264DA4960(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_264DF0940(v5);
  *a1 = v3;
}

void sub_264DF0940(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_264E25458();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
        v6 = sub_264E251E8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_264DF0CF8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_264DF0A84(0, v2, 1, a1);
  }
}

void sub_264DF0A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v8 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v36 = v17;
    v30 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v22;
    v33 = v21;
    while (1)
    {
      sub_264D81744(v22, v16, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D81744(v19, v12, &qword_27FFB1BB8, &unk_264E26640);
      v23 = *(v38 + 48);
      v24 = *&v16[v23];
      v25 = *&v12[v23];
      if (v24 == v25)
      {
        v26 = sub_264E23A58();
      }

      else
      {
        v26 = v25 < v24;
      }

      sub_264D817BC(v12, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D817BC(v16, &qword_27FFB1BB8, &unk_264E26640);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v21 = v33 - 1;
        v22 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_264D90E64(v22, v37, &qword_27FFB1BB8, &unk_264E26640);
      swift_arrayInitWithTakeFrontToBack();
      sub_264D90E64(v27, v19, &qword_27FFB1BB8, &unk_264E26640);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_264DF0CF8(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v143 = *(v8 - 8);
  v9 = *(v143 + 64);
  MEMORY[0x28223BE20](v8);
  v139 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v147 = &v128 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v128 - v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v144 = &v128 - v18;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v131 = &v128 - v21;
  MEMORY[0x28223BE20](v22);
  v130 = &v128 - v25;
  v26 = *(a3 + 1);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_104:
    v29 = *v134;
    if (!*v134)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v151 = v28;
      v123 = *(v28 + 16);
      if (v123 >= 2)
      {
        v124 = a3;
        while (*v124)
        {
          a3 = v28;
          v28 = v123 - 1;
          v125 = *&a3[16 * v123];
          v126 = *&a3[16 * v123 + 24];
          sub_264DF177C(*v124 + *(v143 + 72) * v125, *v124 + *(v143 + 72) * *&a3[16 * v123 + 16], *v124 + *(v143 + 72) * v126, v29);
          if (v5)
          {
            goto LABEL_115;
          }

          if (v126 < v125)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_264D9E01C(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_131;
          }

          v127 = &a3[16 * v123];
          *v127 = v125;
          *(v127 + 1) = v126;
          v151 = a3;
          sub_264D9DF90(v28);
          v28 = v151;
          v123 = *(v151 + 16);
          if (v123 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_141;
      }

LABEL_115:

      return;
    }

LABEL_137:
    v28 = sub_264D9E01C(v28);
    goto LABEL_106;
  }

  v148 = v24;
  v140 = v23;
  v129 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v136 = a3;
  v149 = v15;
  v150 = v8;
  while (1)
  {
    v29 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v141 = v26;
      v30 = v27 + 1;
      v135 = v27;
      v31 = *a3;
      v32 = *(v143 + 72);
      v146 = v30;
      v33 = v130;
      sub_264D81744(v31 + v32 * v30, v130, &qword_27FFB1BB8, &unk_264E26640);
      v145 = v32;
      v34 = v131;
      sub_264D81744(v31 + v32 * v135, v131, &qword_27FFB1BB8, &unk_264E26640);
      v35 = *(v8 + 48);
      v36 = *(v33 + v35);
      v37 = *(v34 + v35);
      v133 = v5;
      if (v36 == v37)
      {
        v38 = sub_264E23A58();
        v34 = v131;
        LODWORD(v142) = v38;
      }

      else
      {
        LODWORD(v142) = v37 < v36;
      }

      v132 = v28;
      sub_264D817BC(v34, &qword_27FFB1BB8, &unk_264E26640);
      sub_264D817BC(v33, &qword_27FFB1BB8, &unk_264E26640);
      v39 = v135 + 2;
      v40 = v146;
      v41 = v145 * (v135 + 2);
      v42 = v31 + v41;
      v43 = v145 * v146;
      v29 = v31 + v145 * v146;
      do
      {
        v5 = v39;
        v28 = v40;
        a3 = v43;
        v46 = v41;
        if (v39 >= v141)
        {
          break;
        }

        v146 = v39;
        v47 = v140;
        sub_264D81744(v42, v140, &qword_27FFB1BB8, &unk_264E26640);
        v48 = v144;
        sub_264D81744(v29, v144, &qword_27FFB1BB8, &unk_264E26640);
        v49 = *(v8 + 48);
        v50 = *(v47 + v49);
        v51 = *(v48 + v49);
        if (v50 == v51)
        {
          v52 = sub_264E23A58();
          v48 = v144;
          v44 = v52;
        }

        else
        {
          v44 = v51 < v50;
        }

        sub_264D817BC(v48, &qword_27FFB1BB8, &unk_264E26640);
        sub_264D817BC(v47, &qword_27FFB1BB8, &unk_264E26640);
        v45 = v44;
        v5 = v146;
        v39 = v146 + 1;
        v42 += v145;
        v29 += v145;
        v40 = v28 + 1;
        v43 = &a3[v145];
        v41 = v46 + v145;
        v8 = v150;
      }

      while ((v142 & 1) == v45);
      if ((v142 & 1) == 0)
      {
        v29 = v5;
        v28 = v132;
        v5 = v133;
        a3 = v136;
LABEL_30:
        v27 = v135;
        goto LABEL_31;
      }

      v53 = v135;
      if (v5 < v135)
      {
        goto LABEL_134;
      }

      if (v135 < v5)
      {
        v54 = v135 * v145;
        do
        {
          if (v53 != v28)
          {
            v56 = *v136;
            if (!*v136)
            {
              goto LABEL_140;
            }

            sub_264D90E64(v56 + v54, v139, &qword_27FFB1BB8, &unk_264E26640);
            if (v54 < a3 || v56 + v54 >= v56 + v46)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_264D90E64(v139, &a3[v56], &qword_27FFB1BB8, &unk_264E26640);
          }

          ++v53;
          a3 -= v145;
          v46 -= v145;
          v54 += v145;
        }

        while (v53 < v28--);
        v29 = v5;
        v28 = v132;
        v5 = v133;
        a3 = v136;
        v8 = v150;
        goto LABEL_30;
      }

      v29 = v5;
      v28 = v132;
      v5 = v133;
      a3 = v136;
      v27 = v135;
    }

LABEL_31:
    v57 = *(a3 + 1);
    if (v29 < v57)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_133;
      }

      if (v29 - v27 < v129)
      {
        break;
      }
    }

LABEL_53:
    if (v29 < v27)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_264D9E030(0, *(v28 + 16) + 1, 1, v28);
    }

    v76 = *(v28 + 16);
    v75 = *(v28 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v28 = sub_264D9E030((v75 > 1), v76 + 1, 1, v28);
    }

    *(v28 + 16) = v77;
    v78 = v28 + 16 * v76;
    v79 = v146;
    *(v78 + 32) = v27;
    *(v78 + 40) = v79;
    v145 = *v134;
    if (!v145)
    {
      goto LABEL_142;
    }

    if (v76)
    {
      while (1)
      {
        v29 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v28 + 32);
          v81 = *(v28 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_73:
          if (v83)
          {
            goto LABEL_121;
          }

          v96 = (v28 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_124;
          }

          v102 = (v28 + 32 + 16 * v29);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_128;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v29 = v77 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v106 = (v28 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_87:
        if (v101)
        {
          goto LABEL_123;
        }

        v109 = v28 + 16 * v29;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_126;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_94:
        v117 = v29 - 1;
        if (v29 - 1 >= v77)
        {
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
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_139;
        }

        v119 = a3;
        a3 = v28;
        v120 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v117);
        v121 = *(v120 + 16 * v29 + 8);
        sub_264DF177C(v118 + *(v143 + 72) * v28, v118 + *(v143 + 72) * *(v120 + 16 * v29), v118 + *(v143 + 72) * v121, v145);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v121 < v28)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_264D9E01C(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_118;
        }

        v122 = &a3[16 * v117];
        *(v122 + 4) = v28;
        *(v122 + 5) = v121;
        v151 = a3;
        sub_264D9DF90(v29);
        v28 = v151;
        v77 = *(v151 + 16);
        v8 = v150;
        a3 = v119;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v28 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_119;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_120;
      }

      v91 = (v28 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_122;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_125;
      }

      if (v95 >= v87)
      {
        v113 = (v28 + 32 + 16 * v29);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_129;
        }

        if (v82 < v116)
        {
          v29 = v77 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v26 = *(a3 + 1);
    v27 = v146;
    if (v146 >= v26)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v27, v129))
  {
    goto LABEL_135;
  }

  if (v27 + v129 >= v57)
  {
    v58 = *(a3 + 1);
  }

  else
  {
    v58 = v27 + v129;
  }

  if (v58 < v27)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v29 == v58)
  {
    goto LABEL_53;
  }

  v132 = v28;
  v133 = v5;
  v59 = *a3;
  v60 = *(v143 + 72);
  v61 = *a3 + v60 * (v29 - 1);
  v62 = -v60;
  v135 = v27;
  v63 = v27 - v29;
  v146 = v29;
  v64 = v59;
  v137 = v60;
  v138 = v58;
  v65 = v59 + v29 * v60;
LABEL_43:
  v141 = v65;
  v142 = v63;
  v145 = v61;
  while (1)
  {
    v66 = v148;
    sub_264D81744(v65, v148, &qword_27FFB1BB8, &unk_264E26640);
    v67 = v149;
    sub_264D81744(v61, v149, &qword_27FFB1BB8, &unk_264E26640);
    v68 = *(v8 + 48);
    v69 = *(v66 + v68);
    v70 = *(v67 + v68);
    if (v69 == v70)
    {
      v71 = sub_264E23A58();
    }

    else
    {
      v71 = v70 < v69;
    }

    sub_264D817BC(v67, &qword_27FFB1BB8, &unk_264E26640);
    sub_264D817BC(v66, &qword_27FFB1BB8, &unk_264E26640);
    if ((v71 & 1) == 0)
    {
      v8 = v150;
LABEL_42:
      v61 = v145 + v137;
      v63 = v142 - 1;
      v65 = v141 + v137;
      if (++v146 == v138)
      {
        v28 = v132;
        v5 = v133;
        v27 = v135;
        a3 = v136;
        v29 = v138;
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    if (!v64)
    {
      break;
    }

    v72 = v147;
    sub_264D90E64(v65, v147, &qword_27FFB1BB8, &unk_264E26640);
    v8 = v150;
    swift_arrayInitWithTakeFrontToBack();
    sub_264D90E64(v72, v61, &qword_27FFB1BB8, &unk_264E26640);
    v61 += v62;
    v65 += v62;
    if (__CFADD__(v63++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

void sub_264DF177C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v58 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v9 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  MEMORY[0x28223BE20](v10);
  v12 = v50 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v50 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = v50 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_68;
  }

  v22 = v58 - a2;
  if (v58 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_69;
  }

  v23 = (a2 - a1) / v21;
  v61 = a1;
  v60 = a4;
  v50[1] = v5;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    v56 = v17;
    v54 = v12;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v25;
    if (v25 >= 1)
    {
      v34 = -v21;
      v35 = v33;
      v52 = a4;
      v55 = -v21;
      while (2)
      {
        while (1)
        {
          v50[0] = v33;
          v36 = a2;
          a2 += v34;
          v53 = v36;
          while (1)
          {
            v39 = v58;
            if (v36 <= a1)
            {
              v61 = v36;
              v59 = v50[0];
              goto LABEL_66;
            }

            v51 = v33;
            v40 = v35 + v34;
            v41 = v54;
            sub_264D81744(v40, v54, &qword_27FFB1BB8, &unk_264E26640);
            v42 = v56;
            sub_264D81744(a2, v56, &qword_27FFB1BB8, &unk_264E26640);
            v43 = *(v57 + 48);
            v44 = *(v41 + v43);
            v45 = *(v42 + v43);
            if (v44 == v45)
            {
              v46 = sub_264E23A58();
              v47 = v56;
              v48 = v46;
            }

            else
            {
              v47 = v42;
              v48 = v45 < v44;
            }

            v58 = v39 + v55;
            sub_264D817BC(v47, &qword_27FFB1BB8, &unk_264E26640);
            sub_264D817BC(v41, &qword_27FFB1BB8, &unk_264E26640);
            if (v48)
            {
              break;
            }

            v33 = v40;
            if (v39 < v35 || v58 >= v35)
            {
              swift_arrayInitWithTakeFrontToBack();
              v37 = v52;
            }

            else
            {
              v37 = v52;
              if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v40;
            v38 = v40 > v37;
            v34 = v55;
            v36 = v53;
            if (!v38)
            {
              a2 = v53;
              goto LABEL_65;
            }
          }

          if (v39 < v53 || v58 >= v53)
          {
            break;
          }

          v34 = v55;
          v33 = v51;
          v49 = v52;
          if (v39 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v35 <= v49)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v34 = v55;
        v33 = v51;
        if (v35 > v52)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v61 = a2;
    v59 = v33;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v24;
    v59 = a4 + v24;
    if (v24 >= 1 && a2 < v58)
    {
      v55 = v21;
      do
      {
        sub_264D81744(a2, v19, &qword_27FFB1BB8, &unk_264E26640);
        sub_264D81744(a4, v15, &qword_27FFB1BB8, &unk_264E26640);
        v27 = *(v57 + 48);
        v28 = *&v19[v27];
        v29 = *&v15[v27];
        if (v28 == v29)
        {
          v30 = sub_264E23A58();
        }

        else
        {
          v30 = v29 < v28;
        }

        sub_264D817BC(v15, &qword_27FFB1BB8, &unk_264E26640);
        sub_264D817BC(v19, &qword_27FFB1BB8, &unk_264E26640);
        if (v30)
        {
          v31 = a2 + v21;
          if (a1 < a2 || a1 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v31;
        }

        else
        {
          v32 = a4 + v21;
          if (a1 < a4 || a1 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = v32;
          a4 = v32;
        }

        v21 = v55;
        a1 += v55;
        v61 = a1;
      }

      while (a4 < v56 && a2 < v58);
    }
  }

LABEL_66:
  sub_264DF1D08(&v61, &v60, &v59);
}

uint64_t sub_264DF1D08(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1BB8, &unk_264E26640);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_264DF1DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF1E7C(uint64_t a1)
{
  v2 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF1F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DF2038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsOverviewLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E23AA8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DF2144()
{
  type metadata accessor for PickupsOverviewLegendView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264E23AA8();
    if (v1 <= 0x3F)
    {
      sub_264DF21E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DF21E0()
{
  if (!qword_27FFB2AE0)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2AE0);
    }
  }
}

uint64_t sub_264DF2244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264DF2314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264DF23CC()
{
  sub_264E23C38();
  if (v0 <= 0x3F)
  {
    sub_264DF2450();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DF2450()
{
  if (!qword_27FFB2AF8)
  {
    sub_264E23AA8();
    sub_264DF24BC();
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2AF8);
    }
  }
}

unint64_t sub_264DF24BC()
{
  result = qword_27FFB19D0;
  if (!qword_27FFB19D0)
  {
    sub_264E23AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB19D0);
  }

  return result;
}

unint64_t sub_264DF2518()
{
  result = qword_27FFB2B00;
  if (!qword_27FFB2B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2B08, &qword_264E287D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2B00);
  }

  return result;
}

uint64_t sub_264DF258C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_264DF25D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_264DF2630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_264E23AA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t NotificationsOverviewChart.body.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for OverviewChart(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DF2948(v0, v12);
  v13 = type metadata accessor for NotificationsOverviewChart(0);
  v14 = *(v13 + 20);
  v15 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  sub_264E24E78();
  v16 = *(v1 + *(v13 + 24));
  v17 = v9[5];
  v18 = sub_264E23AA8();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  sub_264D93A14(v8, v5);

  sub_264E24D78();
  sub_264DF29CC(v8);
  v19 = v9[7];
  v20 = &v12[v9[8]];
  v26 = 0x4024000000000000;
  sub_264E24D78();
  v21 = v28;
  *v20 = v27;
  *(v20 + 1) = v21;
  v22 = &v12[v9[9]];
  v26 = 0;
  sub_264E24D78();
  v23 = v28;
  *v22 = v27;
  *(v22 + 1) = v23;
  v12[v9[10]] = 1;
  *&v12[v19] = v16;
  sub_264DF3344(&qword_27FFB2B30, type metadata accessor for OverviewChart);
  sub_264E24C08();
  return sub_264DF2A34(v12);
}

uint64_t sub_264DF2948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF29CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF2A34(uint64_t a1)
{
  v2 = type metadata accessor for OverviewChart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF2AC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for OverviewChart.Model(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_264DF2C84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1870, &unk_264E26210);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = type metadata accessor for OverviewChart.Model(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_264DF2E04()
{
  type metadata accessor for NotificationsOverviewChart.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264DF2F10(319, &qword_27FFB19F0, &qword_27FFB1860, &qword_264E267E0, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_264DF2F10(319, &qword_27FFB22C0, &qword_27FFB22C8, &qword_264E27880, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OverviewChart.Model(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_264DF2F10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_264DF2F78()
{
  result = qword_27FFB2B48;
  if (!qword_27FFB2B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2B50, &qword_264E2AA70);
    sub_264DF3344(&qword_27FFB2B30, type metadata accessor for OverviewChart);
    sub_264DF3344(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2B48);
  }

  return result;
}

uint64_t sub_264DF3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_264E23AA8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DF317C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_264E23AA8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_264DF3278()
{
  result = type metadata accessor for OverviewChart.Model(319);
  if (v1 <= 0x3F)
  {
    result = sub_264E23AA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264DF3344(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DF338C(uint64_t a1, uint64_t a2)
{
  if ((sub_264E23A78() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OverviewChart.Model(0);
  if ((sub_264D84128(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if ((sub_264E24C48() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  v9 = *(type metadata accessor for NotificationsOverviewChart.Model(0) + 20);

  return sub_264E23A78();
}

id STCommunicationSafetyContentInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STCommunicationSafetyContentInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationSafetyContentInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STCommunicationSafetyContentInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STCommunicationSafetyContentInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PickupsDetailLegendView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20);
  *(a2 + v4) = sub_264DEBC5C(MEMORY[0x277D84F90]);
  v5 = sub_264E23C38();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t PickupsDetailLegendView.init(model:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PickupsDetailLegendView(0);
  v12 = (a3 + *(v11 + 24));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  sub_264DF54C4(a1, a3, type metadata accessor for PickupsDetailLegendView.Model);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v13 = a3 + *(v11 + 20);
  sub_264E23AF8();
  v14 = sub_264E238E8();
  (*(*(v14 - 8) + 8))(a2, v14);
  sub_264DF552C(a1, type metadata accessor for PickupsDetailLegendView.Model);
  return (*(v7 + 8))(v10, v6);
}

void *PickupsDetailLegendView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E24818();
  v9 = 1;
  sub_264DF385C(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_264D81744(__dst, &v6, &qword_27FFB2B68, &qword_264E28A10);
  sub_264D817BC(v11, &qword_27FFB2B68, &qword_264E28A10);
  memcpy(&v8[7], __dst, 0x130uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x137uLL);
}

uint64_t sub_264DF385C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(a1 + *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20));
  if (*(v8 + 16) && (v9 = type metadata accessor for PickupsDetailLegendView(0), v10 = sub_264D9D5F4(a1 + *(v9 + 20)), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v8 + 56);
    v14 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    v15 = *(v14 - 8);
    sub_264DF54C4(v13 + *(v15 + 72) * v12, v7, type metadata accessor for PickupsDetailLegendView.DayPickups);
    (*(v15 + 56))(v7, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  }

  v17 = sub_264E24758();
  v24 = 0;
  sub_264DF3ABC(v7, a1, v22);
  memcpy(v25, v22, sizeof(v25));
  memcpy(v26, v22, sizeof(v26));
  sub_264D81744(v25, &v21, &qword_27FFB2BC0, &qword_264E28B10);
  sub_264D817BC(v26, &qword_27FFB2BC0, &qword_264E28B10);
  memcpy(&v23[7], v25, 0x118uLL);
  v18 = v24;
  *a2 = v17;
  *(a2 + 8) = 0;
  *(a2 + 16) = v18;
  memcpy((a2 + 17), v23, 0x11FuLL);
  return sub_264D817BC(v7, &qword_27FFB20A8, &qword_264E270C8);
}

uint64_t sub_264DF3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_264E24828();
  LOBYTE(v32[0]) = 0;
  sub_264DF3E50(a1, a2, &v38);
  v21 = *&v39[112];
  v22 = *&v39[128];
  v17 = *&v39[48];
  v18 = *&v39[64];
  v19 = *&v39[80];
  v20 = *&v39[96];
  v13 = v38;
  v14 = *v39;
  v15 = *&v39[16];
  v16 = *&v39[32];
  v24[8] = *&v39[112];
  v24[9] = *&v39[128];
  v24[4] = *&v39[48];
  v24[5] = *&v39[64];
  v24[6] = *&v39[80];
  v24[7] = *&v39[96];
  v24[0] = v38;
  v24[1] = *v39;
  v23 = *&v39[144];
  v25 = *&v39[144];
  v24[2] = *&v39[16];
  v24[3] = *&v39[32];
  sub_264D81744(&v13, &v28, &qword_27FFB2BC8, &qword_264E28B18);
  sub_264D817BC(v24, &qword_27FFB2BC8, &qword_264E28B18);
  *&v12[119] = v20;
  *&v12[135] = v21;
  *&v12[151] = v22;
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[167] = v23;
  *&v12[39] = v15;
  v6 = v32[0];
  v7 = sub_264E24828();
  LOBYTE(v38) = 0;
  sub_264DF4894(a1, v26);
  *&v11[7] = v26[0];
  *&v11[23] = v26[1];
  *&v11[39] = v26[2];
  *&v11[55] = v27;
  LOBYTE(a1) = v38;
  *&v28 = v5;
  *(&v28 + 1) = 0x4014000000000000;
  v29[0] = v6;
  *&v29[1] = *v12;
  *&v29[17] = *&v12[16];
  *&v29[33] = *&v12[32];
  *&v29[97] = *&v12[96];
  *&v29[81] = *&v12[80];
  *&v29[65] = *&v12[64];
  *&v29[49] = *&v12[48];
  *&v29[160] = *&v12[159];
  *&v29[145] = *&v12[144];
  *&v29[129] = *&v12[128];
  *&v29[113] = *&v12[112];
  *&__src[128] = *&v29[112];
  *&__src[144] = *&v29[128];
  *&__src[160] = *&v29[144];
  *&__src[176] = *&v29[160];
  *&__src[64] = *&v29[48];
  *&__src[80] = *&v29[64];
  *&__src[96] = *&v29[80];
  *&__src[112] = *&v29[96];
  *__src = v28;
  *&__src[16] = *v29;
  *&__src[32] = *&v29[16];
  *&__src[48] = *&v29[32];
  *&v30 = v7;
  *(&v30 + 1) = 0x4014000000000000;
  v31[0] = v38;
  *&v31[1] = *v11;
  *&v31[17] = *&v11[16];
  *&v31[33] = *&v11[32];
  *&v31[49] = *&v11[48];
  *&v31[64] = *(&v27 + 1);
  *&__src[192] = v30;
  *&__src[208] = *v31;
  *&__src[272] = *(&v27 + 1);
  *&__src[240] = *&v31[32];
  *&__src[256] = *&v31[48];
  *&__src[224] = *&v31[16];
  memcpy(a3, __src, 0x118uLL);
  v32[0] = v7;
  v32[1] = 0x4014000000000000;
  v33 = a1;
  v35 = *&v11[16];
  v36 = *&v11[32];
  *v37 = *&v11[48];
  *&v37[15] = *&v11[63];
  v34 = *v11;
  sub_264D81744(&v28, &v38, &qword_27FFB2BD0, &qword_264E28B20);
  sub_264D81744(&v30, &v38, &qword_27FFB2BD8, &qword_264E28B28);
  sub_264D817BC(v32, &qword_27FFB2BD8, &qword_264E28B28);
  *&v39[113] = *&v12[112];
  *&v39[129] = *&v12[128];
  *&v39[145] = *&v12[144];
  *&v39[160] = *&v12[159];
  *&v39[49] = *&v12[48];
  *&v39[65] = *&v12[64];
  *&v39[81] = *&v12[80];
  *&v39[97] = *&v12[96];
  *&v39[1] = *v12;
  *&v39[17] = *&v12[16];
  *&v38 = v5;
  *(&v38 + 1) = 0x4014000000000000;
  v39[0] = v6;
  *&v39[33] = *&v12[32];
  return sub_264D817BC(&v38, &qword_27FFB2BD0, &qword_264E28B20);
}

__n128 sub_264DF3E50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44[-v11];
  v13 = sub_264E23AA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264D81744(a1, v8, &qword_27FFB20A8, &qword_264E270C8);
  v18 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_264D817BC(v8, &qword_27FFB20A8, &qword_264E270C8);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  else
  {
    sub_264D81744(v8, v12, &qword_27FFB1860, &qword_264E267E0);
    sub_264DF552C(v8, type metadata accessor for PickupsDetailLegendView.DayPickups);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      v49 = v13;
      v50 = v14;
      v19 = *(v14 + 32);
      v48 = v17;
      v19(v17, v12, v13);
      sub_264E247D8();
      v20 = [objc_opt_self() bundle];
      v21 = sub_264E24AE8();
      v23 = v22;
      v25 = v24;
      LODWORD(v94) = sub_264E248D8();
      v26 = sub_264E24AC8();
      v46 = v27;
      v47 = v28;
      v45 = v29;
      sub_264D817AC(v21, v23, v25 & 1);

      v30 = sub_264E24758();
      LOBYTE(v73[0]) = 0;
      sub_264DF4560(&v94);
      v57 = v97;
      v58 = v98;
      v54 = v94;
      v55 = v95;
      v56 = v96;
      v60[4] = v98;
      v60[5] = v99;
      v60[2] = v96;
      v60[3] = v97;
      v59 = v99;
      v60[0] = v94;
      v60[1] = v95;
      sub_264D81744(&v54, &v83, &qword_27FFB2BE0, &qword_264E28B30);
      sub_264D817BC(v60, &qword_27FFB2BE0, &qword_264E28B30);
      *(&v53[2] + 7) = v56;
      *(&v53[3] + 7) = v57;
      *(&v53[4] + 7) = v58;
      *(&v53[5] + 7) = v59;
      *(v53 + 7) = v54;
      *(&v53[1] + 7) = v55;
      v31 = v73[0];
      v32 = sub_264E249E8();
      KeyPath = swift_getKeyPath();
      *&v61 = v30;
      *(&v61 + 1) = 0x4000000000000000;
      LOBYTE(v62[0]) = v31;
      *(&v62[3] + 1) = v53[3];
      *(&v62[4] + 1) = v53[4];
      *(&v62[5] + 1) = v53[5];
      *(v62 + 1) = v53[0];
      *(&v62[1] + 1) = v53[1];
      *(&v62[2] + 1) = v53[2];
      *&v62[6] = *(&v53[5] + 15);
      *(&v62[6] + 1) = KeyPath;
      v65 = v62[0];
      v69 = v62[4];
      v70 = v62[5];
      v66 = v62[1];
      v67 = v62[2];
      v68 = v62[3];
      v64 = v61;
      v71 = v62[6];
      v78 = v53[3];
      v79 = v53[4];
      *v80 = v53[5];
      v75 = v53[0];
      v76 = v53[1];
      v34 = v45 & 1;
      v52 = v45 & 1;
      v63 = v32;
      v72 = v32;
      LODWORD(v51) = v45 & 1;
      v73[0] = v30;
      v73[1] = 0x4000000000000000;
      v74 = v31;
      v77 = v53[2];
      *&v80[15] = *(&v53[5] + 15);
      v81 = KeyPath;
      v82 = v32;
      v35 = v26;
      v36 = v26;
      v37 = v46;
      sub_264D80F20(v36, v46, v45 & 1);
      v38 = v47;

      sub_264D81744(&v61, &v94, &qword_27FFB2BE8, &qword_264E28B68);
      sub_264D817BC(v73, &qword_27FFB2BE8, &qword_264E28B68);
      sub_264D817AC(v35, v37, v34);

      *&v83 = v35;
      *(&v83 + 1) = v37;
      LOBYTE(v84) = v51;
      *(&v84 + 1) = v38;
      v91 = v70;
      v92 = v71;
      v93 = v72;
      v87 = v66;
      v88 = v67;
      v90 = v69;
      v89 = v68;
      v86 = v65;
      v85 = v64;
      nullsub_1(&v83);
      (*(v50 + 8))(v48, v49);
      v102 = v91;
      v103 = v92;
      v104 = v93;
      v98 = v87;
      v99 = v88;
      v100 = v89;
      v101 = v90;
      v94 = v83;
      v95 = v84;
      v96 = v85;
      v97 = v86;
      goto LABEL_6;
    }
  }

  sub_264D817BC(v12, &qword_27FFB1860, &qword_264E267E0);
  sub_264DF558C(&v94);
LABEL_6:
  v39 = v103;
  *(a3 + 128) = v102;
  *(a3 + 144) = v39;
  *(a3 + 160) = v104;
  v40 = v99;
  *(a3 + 64) = v98;
  *(a3 + 80) = v40;
  v41 = v101;
  *(a3 + 96) = v100;
  *(a3 + 112) = v41;
  v42 = v95;
  *a3 = v94;
  *(a3 + 16) = v42;
  result = v97;
  *(a3 + 32) = v96;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_264DF4560@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E24D28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E24D18();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v29 = sub_264E24D48();

  (*(v3 + 8))(v6, v2);
  sub_264E24F58();
  sub_264E244B8();
  v7 = v31;
  LOBYTE(v6) = v32;
  v8 = v33;
  v9 = v34;
  v27 = v36;
  v28 = v35;
  LODWORD(v2) = sub_264E248D8();
  v38 = v6;
  v37 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v10 setDateStyle_];
  [v10 setTimeStyle_];
  v11 = sub_264E250E8();
  [v10 setLocalizedDateFormatFromTemplate_];

  v12 = sub_264E23A38();
  v13 = [v10 stringFromDate_];

  v14 = sub_264E25108();
  v16 = v15;

  *&v42 = v14;
  *(&v42 + 1) = v16;
  sub_264D89EB8();
  v17 = sub_264E24AF8();
  v19 = v18;
  v20 = v17;
  *&v39 = v29;
  *(&v39 + 1) = v7;
  LOBYTE(v40) = v38;
  *(&v40 + 1) = v8;
  LOBYTE(v41[0]) = v37;
  *(&v41[0] + 1) = v28;
  *&v41[1] = v27;
  DWORD2(v41[1]) = v2;
  *(v44 + 12) = *(v41 + 12);
  v43 = v40;
  v44[0] = v41[0];
  v42 = v39;
  LOBYTE(v2) = v21 & 1;
  v30[64] = v21 & 1;
  v22 = v39;
  v23 = v40;
  v24 = v44[1];
  *(a1 + 32) = v41[0];
  *(a1 + 48) = v24;
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 64) = v17;
  *(a1 + 72) = v18;
  *(a1 + 80) = v21 & 1;
  *(a1 + 88) = v25;
  sub_264D81744(&v39, v30, &qword_27FFB2BF0, &unk_264E28B70);
  sub_264D80F20(v20, v19, v2);

  sub_264D817AC(v20, v19, v2);
}

uint64_t sub_264DF4894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  sub_264E247D8();
  v7 = [objc_opt_self() bundle];
  v8 = sub_264E24AE8();
  v10 = v9;
  v12 = v11;
  v34 = sub_264E24C68();
  v13 = sub_264E24AC8();
  v15 = v14;
  v31 = v16;
  v18 = v17;
  sub_264D817AC(v8, v10, v12 & 1);

  sub_264D81744(v32, v6, &qword_27FFB20A8, &qword_264E270C8);
  v19 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
  {
    sub_264D817BC(v6, &qword_27FFB20A8, &qword_264E270C8);
    v20 = 0;
  }

  else
  {
    v20 = *&v6[*(v19 + 20)];
    sub_264DF552C(v6, type metadata accessor for PickupsDetailLegendView.DayPickups);
  }

  v36 = v20;
  sub_264D908C4();
  v34 = sub_264E25348();
  v35 = v21;
  sub_264D89EB8();
  v22 = sub_264E24AF8();
  v24 = v23;
  v25 = v31 & 1;
  v33 = v31 & 1;
  LOBYTE(v34) = v31 & 1;
  v27 = v26 & 1;
  LOBYTE(v36) = v26 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v25;
  *(a2 + 24) = v18;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v28;
  sub_264D80F20(v13, v15, v25);

  sub_264D80F20(v22, v24, v27);

  sub_264D817AC(v22, v24, v27);

  sub_264D817AC(v13, v15, v33);
}

void *sub_264DF4BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264E24818();
  v9 = 1;
  sub_264DF385C(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_264D81744(__dst, &v6, &qword_27FFB2B68, &qword_264E28A10);
  sub_264D817BC(v11, &qword_27FFB2B68, &qword_264E28A10);
  memcpy(&v8[7], __dst, 0x130uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x137uLL);
}

uint64_t sub_264DF4CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsDetailLegendView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DF4E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsDetailLegendView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E23AA8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DF4F14()
{
  type metadata accessor for PickupsDetailLegendView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264E23AA8();
    if (v1 <= 0x3F)
    {
      sub_264DF4FB0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DF4FB0()
{
  if (!qword_27FFB2B80)
  {
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2B80);
    }
  }
}

uint64_t sub_264DF5014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264E23C38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264DF50E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264E23C38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_264DF519C()
{
  sub_264E23C38();
  if (v0 <= 0x3F)
  {
    sub_264DF5220();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DF5220()
{
  if (!qword_27FFB2B98)
  {
    sub_264E23AA8();
    type metadata accessor for PickupsDetailLegendView.DayPickups(255);
    sub_264DF24BC();
    v0 = sub_264E25028();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2B98);
    }
  }
}

unint64_t sub_264DF52C0()
{
  result = qword_27FFB2BA0;
  if (!qword_27FFB2BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2BA8, &unk_264E28AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2BA0);
  }

  return result;
}

uint64_t sub_264DF5338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DF53C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_264DF5440()
{
  sub_264DDB89C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_264DF54C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DF552C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_264DF558C(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_264DF55B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264DF55D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_264DF562C()
{
  v0 = sub_264E24568();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2BF8, &qword_264E28C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  v9 = *(v1 + 28);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_264E247F8();
  (*(*(v11 - 8) + 104))(&v4[v9], v10, v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v4 = _Q0;
  sub_264E24F58();
  sub_264E244B8();
  sub_264DF5924(v4, v8);
  v17 = &v8[*(v5 + 36)];
  v18 = v28;
  *v17 = v27;
  *(v17 + 1) = v18;
  *(v17 + 2) = v29;
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v19 setNumberStyle_];
  [v19 setMinimumIntegerDigits_];
  [v19 setMaximumIntegerDigits_];
  [v19 setMaximumFractionDigits_];
  v20 = sub_264E23C58();
  v21 = [v19 stringFromNumber_];

  if (v21)
  {
    v22 = sub_264E25108();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v26[0] = v22;
  v26[1] = v24;
  sub_264DF5988();
  sub_264D89EB8();
  sub_264E24BF8();

  return sub_264DF5A44(v8);
}

uint64_t sub_264DF5918()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_264DF562C();
}

uint64_t sub_264DF5924(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E24568();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264DF5988()
{
  result = qword_27FFB2C00;
  if (!qword_27FFB2C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2BF8, &qword_264E28C10);
    sub_264DF5B6C(&qword_27FFB2C08, MEMORY[0x277CDFC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C00);
  }

  return result;
}

uint64_t sub_264DF5A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2BF8, &qword_264E28C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264DF5AB0()
{
  result = qword_27FFB2C10;
  if (!qword_27FFB2C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2C18, &qword_264E28C18);
    sub_264DF5988();
    sub_264DF5B6C(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C10);
  }

  return result;
}

uint64_t sub_264DF5B6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NotificationsOverviewTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DF5C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = v47 - v7;
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264E23C38();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v56 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = v47 - v16;
  v17 = sub_264E23AA8();
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v17);
  v54 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2CB0, &unk_264E28D60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v47 - v25;
  v52 = a2;
  v27 = *a2;
  v28 = a1;
  v60 = a1;
  v29 = v58;
  sub_264D93E08(sub_264DF7AE4, v27, v47 - v25);
  v30 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v50 = v31 + 48;
  v51 = v32;
  if (v32(v26, 1, v30) != 1)
  {
    return sub_264DF7B1C(v26, v61, type metadata accessor for NotificationsOverviewChart.Model);
  }

  v47[1] = v29;
  v48 = v11;
  v49 = v8;
  v58 = v12;
  v33 = *(v59 + 16);
  v33(v22, v28, v17);
  v34 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  v35 = *(v57 + 16);
  v36 = v55;
  v35(v55, v52 + *(v34 + 20), v58);
  v33((v61 + *(v30 + 20)), v22, v17);
  v37 = v22;
  v38 = v54;
  v52 = v37;
  (v33)(v54);
  v35(v56, v36, v58);
  v39 = v53;
  v47[0] = sub_264E24C58();
  Calendar.startOfWeek(containing:)(v38, v39);
  result = (*(v59 + 48))(v39, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = v59;
    v42 = *(v59 + 8);
    v42(v54, v17);
    v43 = v57;
    v44 = v58;
    (*(v57 + 8))(v55, v58);
    v42(v52, v17);
    v45 = v48;
    (*(v41 + 32))(v48, v39, v17);
    v46 = v49;
    *(v45 + v49[5]) = MEMORY[0x277D84F90];
    (*(v43 + 32))(v45 + v46[6], v56, v44);
    *(v45 + v46[7]) = v47[0];
    *(v45 + v46[8]) = 1;
    sub_264DF7B1C(v45, v61, type metadata accessor for OverviewChart.Model);
    result = v51(v26, 1, v30);
    if (result != 1)
    {
      return sub_264D817BC(v26, &qword_27FFB2CB0, &unk_264E28D60);
    }
  }

  return result;
}

uint64_t NotificationsOverviewTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C20, &qword_264E28C20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C28, &qword_264E28C28);
  sub_264DF62B4(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB2C30, &qword_27FFB2C20, &qword_264E28C20);
  sub_264E24C08();
  return sub_264DF6754(v4);
}

uint64_t sub_264DF62B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_264E24538();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_264E24558();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C70, &qword_264E28CE8);
  v22 = *(v34 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v34);
  v25 = &v33 - v24;
  v26 = a1 + *(type metadata accessor for NotificationsOverviewTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v17, &qword_27FFB1F70, &qword_264E28470);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v41 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C78, &qword_264E28D20);
  sub_264DF79CC(&qword_27FFB19D0, MEMORY[0x277CC9578]);
  sub_264DF7688();
  sub_264E24F48();
  sub_264E24528();
  v28 = v36;
  v29 = v37;
  (*(v36 + 16))(v35, v8, v37);
  sub_264E24548();
  (*(v28 + 8))(v8, v29);
  sub_264D81DCC(&qword_27FFB2C90, &qword_27FFB2C70, &qword_264E28CE8);
  v30 = v34;
  v31 = v38;
  sub_264E24B68();
  (*(v39 + 8))(v13, v31);
  return (*(v22 + 8))(v25, v30);
}

uint64_t sub_264DF6754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C20, &qword_264E28C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DF67D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for NotificationsOverviewTabView(0);
  v4 = v3 - 8;
  v40 = *(v3 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = v6;
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_264E23AA8();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_264E238E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ActivityNavigationState(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v25);
  v26 = *(v20 + 28);
  v27 = v39;
  v28 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v15 + 16))(v18, &v23[v26 + *(v28 + 20)], v14);
  sub_264DF7A84(v23, type metadata accessor for ActivityNavigationState);
  LODWORD(v23) = *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v29 = Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(v13, v10);
  v30 = *(v7 + 8);
  v30(v10, v27);
  v31 = (v30)(v13, v27);
  if (v29)
  {
    MEMORY[0x28223BE20](v31);
    v37 = a1;
    v32 = sub_264E0ADD4(sub_264DF773C, (&v38 - 4), v29);

    (*(v15 + 8))(v18, v14);
    v44 = v32;
    v33 = v42;
    sub_264DF7A14(a1, v42, type metadata accessor for NotificationsOverviewTabView);
    v34 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v35 = swift_allocObject();
    sub_264DF7B1C(v33, v35 + v34, type metadata accessor for NotificationsOverviewTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C98, &qword_264E28D28);
    type metadata accessor for NotificationsOverviewChart(0);
    sub_264D81DCC(&qword_27FFB2CA0, &qword_27FFB2C98, &qword_264E28D28);
    sub_264DF79CC(&qword_27FFB2C88, type metadata accessor for NotificationsOverviewChart);
    v37 = sub_264DF79CC(&qword_27FFB2CA8, type metadata accessor for NotificationsOverviewChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DF6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DF7A14(a1, v13, type metadata accessor for NotificationsOverviewChart.Model);
  v14 = a2 + *(type metadata accessor for NotificationsOverviewTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  v15 = type metadata accessor for NotificationsOverviewChart(0);
  v16 = a3 + v15[5];
  sub_264E24E68();

  sub_264D817BC(v9, &qword_27FFB1F70, &qword_264E28470);
  *(a3 + v15[6]) = 0;
  sub_264DF7A14(v13, a3, type metadata accessor for NotificationsOverviewChart.Model);
  sub_264DF7A14(v13, a3 + v15[7], type metadata accessor for OverviewChart.Model);
  return sub_264DF7A84(v13, type metadata accessor for NotificationsOverviewChart.Model);
}

uint64_t sub_264DF6EDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C20, &qword_264E28C20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2C28, &qword_264E28C28);
  sub_264DF62B4(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB2C30, &qword_27FFB2C20, &qword_264E28C20);
  sub_264E24C08();
  return sub_264DF6754(v4);
}

uint64_t sub_264DF7010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DF7120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsOverviewTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264DF7248()
{
  type metadata accessor for NotificationsOverviewTabView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264DF7528(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DF7310(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DF73D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DF7474()
{
  sub_264DF7528(319, &qword_27FFB2C58, type metadata accessor for NotificationsOverviewChart.Model, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DF7528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_264DF7590()
{
  result = qword_27FFB2C60;
  if (!qword_27FFB2C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2C68, &unk_264E28CD8);
    sub_264D81DCC(&qword_27FFB2C30, &qword_27FFB2C20, &qword_264E28C20);
    sub_264DF79CC(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C60);
  }

  return result;
}

unint64_t sub_264DF7688()
{
  result = qword_27FFB2C80;
  if (!qword_27FFB2C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2C78, &qword_264E28D20);
    sub_264DF79CC(&qword_27FFB2C88, type metadata accessor for NotificationsOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2C80);
  }

  return result;
}

uint64_t sub_264DF775C()
{
  v1 = (type metadata accessor for NotificationsOverviewTabView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*v1 + 64);
  v4 = *(v0 + v3);

  v5 = *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  v6 = sub_264E23C38();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = (v0 + v3 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470) + 32);
  v12 = type metadata accessor for ActivityNavigationState(0);
  v13 = &v11[*(v12 + 20)];
  v14 = sub_264E23AA8();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
  v16 = sub_264E238E8();
  (*(*(v16 - 8) + 8))(&v13[v15], v16);
  v7(&v11[*(v12 + 24)], v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v18, v2 | 7);
}

uint64_t sub_264DF794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NotificationsOverviewTabView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264DF6D0C(a1, v6, a2);
}

uint64_t sub_264DF79CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DF7A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DF7A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264DF7B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t NotificationsHeaderView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0);
  v4 = *(v3 - 8);
  v52 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v47 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = sub_264E23C38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v48 = sub_264DEB44C(MEMORY[0x277D84F90]);
  v56 = v19;
  v26 = *(v19 + 16);
  v59 = a1;
  v26(v25, a1, v18);
  v27 = sub_264E23AA8();
  v47 = *(v27 - 8);
  v28 = v47 + 56;
  v29 = *(v47 + 56);
  v29(v17, 1, 1, v27);
  v55 = v25;
  v26(v22, v25, v18);
  v58 = v17;
  sub_264D81744(v17, v14, &qword_27FFB1860, &qword_264E267E0);
  v30 = v62;
  v53 = v22;
  v49 = v18;
  v26(v62, v22, v18);
  v31 = v52;
  v32 = *(v52 + 44);
  sub_264DEB44C(MEMORY[0x277D84F90]);
  v51 = *(v31 + 52);
  v57 = v28;
  v54 = v29;
  v29(&v30[v51], 1, 1, v27);

  v30[*(v31 + 48)] = 1;
  *&v30[v32] = v48;
  v33 = v50;
  v34 = v14;
  v35 = v47;
  v36 = v34;
  v37 = v27;
  sub_264D81744(v34, v50, &qword_27FFB1860, &qword_264E267E0);
  v38 = *(v35 + 48);
  if (v38(v33, 1, v27) == 1)
  {
    v39 = v60;
    sub_264E23A98();
    v40 = *(v56 + 8);
    v41 = v49;
    v40(v59, v49);
    sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
    v40(v53, v41);
    sub_264D817BC(v58, &qword_27FFB1860, &qword_264E267E0);
    v40(v55, v41);
    v42 = v39;
    if (v38(v33, 1, v37) != 1)
    {
      sub_264D817BC(v33, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  else
  {
    v43 = *(v56 + 8);
    v44 = v49;
    v43(v59, v49);
    sub_264D817BC(v36, &qword_27FFB1860, &qword_264E267E0);
    v43(v53, v44);
    sub_264D817BC(v58, &qword_27FFB1860, &qword_264E267E0);
    v43(v55, v44);
    v42 = v60;
    (*(v35 + 32))(v60, v33, v27);
  }

  v54(v42, 0, 1, v37);
  v45 = v62;
  sub_264DEB634(v42, &v62[v51]);
  return sub_264DF876C(v45, v61);
}

uint64_t NotificationsHeaderView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsHeaderView.Model(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2CB8, &qword_264E28D70);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  sub_264DF87FC(v1, v5);
  sub_264DF876C(v5, v9);
  v10 = type metadata accessor for NotificationsHeaderView(0);
  v11 = v10[6];
  v12 = *(v1 + v10[5]);
  v13 = v6[10];
  v14 = sub_264E238E8();
  (*(*(v14 - 8) + 16))(&v9[v13], v1 + v11, v14);
  v15 = *(v1 + v10[7]);
  *&v9[v6[9]] = v12;
  v16 = &v9[v6[11]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v9[v6[12]] = v15;
  v17 = &v9[v6[13]];
  *v17 = sub_264DF82C0;
  *(v17 + 1) = 0;
  sub_264D81DCC(&qword_27FFB2CC0, &qword_27FFB2CB8, &qword_264E28D70);

  sub_264E24C08();
  return sub_264D817BC(v9, &qword_27FFB2CB8, &qword_264E28D70);
}

uint64_t sub_264DF82C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_264DF82CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_264D89EB8();

  v4 = sub_264E24AF8();
  v6 = v5;
  v8 = v7;
  sub_264E249C8();
  v9 = sub_264E24AD8();
  v11 = v10;
  v16 = v12;
  v17 = v13;

  sub_264D817AC(v4, v6, v8 & 1);

  sub_264E24F58();
  sub_264E244B8();
  v14 = sub_264E24C58();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  *(a3 + 48) = v20;
  *(a3 + 56) = v21;
  *(a3 + 64) = v22;
  *(a3 + 72) = v23;
  *(a3 + 80) = v14;
  sub_264D80F20(v9, v11, v16 & 1);

  sub_264D817AC(v9, v11, v16 & 1);
}

double sub_264DF8448@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_264E24768();
  v18 = 0;
  sub_264DF82CC(v3, v4, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v26 = v16;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[0] = v11;
  v25[1] = v12;
  sub_264D81744(&v19, v10, &qword_27FFB2D08, &qword_264E28EA0);
  sub_264D817BC(v25, &qword_27FFB2D08, &qword_264E28EA0);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[7] = v19;
  *&v17[23] = v20;
  v6 = *&v17[48];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = v6;
  *(a1 + 81) = *&v17[64];
  *(a1 + 96) = *&v17[79];
  result = *&v17[16];
  v8 = *v17;
  *(a1 + 33) = *&v17[16];
  v9 = v18;
  *a1 = v5;
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_264DF8570(int *a1)
{
  v3 = v1;
  v4 = type metadata accessor for NotificationsHeaderView.Model(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2CB8, &qword_264E28D70);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  sub_264DF87FC(v3, v7);
  sub_264DF876C(v7, v11);
  v12 = a1[6];
  v13 = *(v3 + a1[5]);
  v14 = v8[10];
  v15 = sub_264E238E8();
  (*(*(v15 - 8) + 16))(&v11[v14], v3 + v12, v15);
  v16 = *(v3 + a1[7]);
  *&v11[v8[9]] = v13;
  v17 = &v11[v8[11]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v11[v8[12]] = v16;
  v18 = &v11[v8[13]];
  *v18 = sub_264DF82C0;
  *(v18 + 1) = 0;
  sub_264D81DCC(&qword_27FFB2CC0, &qword_27FFB2CB8, &qword_264E28D70);

  sub_264E24C08();
  return sub_264D817BC(v11, &qword_27FFB2CB8, &qword_264E28D70);
}

uint64_t sub_264DF876C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF87FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsHeaderView.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DF88B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsHeaderView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DF89DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsHeaderView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_264E238E8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DF8AE4()
{
  type metadata accessor for NotificationsHeaderView.Model(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for STActivityMode(319);
    if (v1 <= 0x3F)
    {
      sub_264E238E8();
      if (v2 <= 0x3F)
      {
        sub_264DDB468();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_264DF8BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DF8C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B8, &qword_264E270F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_264DF8CB4()
{
  sub_264DF8D20();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_264DF8D20()
{
  if (!qword_27FFB2CE8)
  {
    sub_264DF8D7C();
    v0 = type metadata accessor for ChartHeaderView.Model();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB2CE8);
    }
  }
}

unint64_t sub_264DF8D7C()
{
  result = qword_27FFB2CF0;
  if (!qword_27FFB2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2CF0);
  }

  return result;
}

unint64_t sub_264DF8DD4()
{
  result = qword_27FFB2CF8;
  if (!qword_27FFB2CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2D00, &qword_264E28E18);
    sub_264D81DCC(&qword_27FFB2CC0, &qword_27FFB2CB8, &qword_264E28D70);
    sub_264DA89E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2CF8);
  }

  return result;
}

uint64_t sub_264DF8EFC()
{
  result = sub_264E24F98();
  qword_27FFB6C38 = result;
  return result;
}

uint64_t sub_264DF8F4C(uint64_t a1, unint64_t a2)
{
  v42[0] = 32;
  v42[1] = 0xE100000000000000;
  v41[2] = v42;

  v8 = sub_264DF9690(0x7FFFFFFFFFFFFFFFLL, 1, sub_264DF9A50, v41, a1, a2, v7);
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    if (v10 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = *(v8 + 16);
    }

    v42[0] = MEMORY[0x277D84F90];
    sub_264D8D2E4(0, v12, 0);
    v11 = v42[0];
    v13 = v9[4];
    v14 = v9[5];
    v16 = v9[6];
    v15 = v9[7];

    v17 = sub_264E25328();
    if (v18)
    {
      v19 = v14;
    }

    else
    {
      v19 = v17;
    }

    v20 = v19 >> 14;
    if (v19 >> 14 < v13 >> 14)
    {
      goto LABEL_19;
    }

    v13 = sub_264E25338();
    v14 = v21;
    v16 = v22;
    v2 = v23;

    v42[0] = v11;
    v4 = *(v11 + 16);
    v20 = *(v11 + 24);
    v3 = v4 + 1;
    if (v4 >= v20 >> 1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      *(v11 + 16) = v3;
      v24 = (v11 + 32 * v4);
      v24[4] = v13;
      v24[5] = v14;
      v24[6] = v16;
      v24[7] = v2;
      if (v10 == 1)
      {
        break;
      }

      v13 = v9[8];
      v14 = v9[9];
      v16 = v9[10];
      v25 = v9[11];

      v26 = sub_264E25328();
      if (v27)
      {
        v28 = v14;
      }

      else
      {
        v28 = v26;
      }

      v20 = v28 >> 14;
      if (v28 >> 14 >= v13 >> 14)
      {
        v29 = sub_264E25338();
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v42[0] = v11;
        v37 = *(v11 + 16);
        v36 = *(v11 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_264D8D2E4((v36 > 1), v37 + 1, 1);
          v11 = v42[0];
        }

        *(v11 + 16) = v37 + 1;
        v38 = (v11 + 32 * v37);
        v38[4] = v29;
        v38[5] = v31;
        v38[6] = v33;
        v38[7] = v35;
        break;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      sub_264D8D2E4((v20 > 1), v3, 1);
      v11 = v42[0];
    }
  }

  v42[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D30, &qword_264E28F68);
  sub_264D81DCC(&qword_27FFB2D38, &qword_27FFB2D30, &qword_264E28F68);
  sub_264DF9AA8();
  sub_264E251D8();

  v39 = sub_264E25148();

  return v39;
}

uint64_t sub_264DF9244@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB17B8, &qword_264E279E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v35 = sub_264E24C68();
  sub_264E24F58();
  sub_264E244B8();
  *&v37[3] = *&v37[27];
  *&v37[11] = *&v37[35];
  *&v37[19] = *&v37[43];
  v39 = sub_264DF8F4C(a1, a2);
  *v40 = v10;
  sub_264D89EB8();
  v11 = sub_264E24AF8();
  v13 = v12;
  v15 = v14;
  sub_264E24CA8();
  v16 = sub_264E24AB8();
  v18 = v17;
  v20 = v19;
  v34 = v21;

  sub_264D817AC(v11, v13, v15 & 1);

  v22 = sub_264E249F8();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_264E24A38();
  sub_264D817BC(v9, &qword_27FFB17B8, &qword_264E279E0);
  v23 = sub_264E24AD8();
  v25 = v24;
  LOBYTE(a2) = v26;
  v28 = v27;

  sub_264D817AC(v16, v18, v20 & 1);

  v29 = v35;
  *v38 = v35;
  *&v38[8] = 256;
  *&v38[10] = *v37;
  *&v38[26] = *&v37[8];
  *&v38[42] = *&v37[16];
  *&v38[56] = *&v37[23];
  v36 = a2 & 1;
  v30 = *v38;
  v31 = *&v38[16];
  v32 = *&v38[48];
  *(a3 + 32) = *&v38[32];
  *(a3 + 48) = v32;
  *a3 = v30;
  *(a3 + 16) = v31;
  *(a3 + 64) = v23;
  *(a3 + 72) = v25;
  *(a3 + 80) = a2 & 1;
  *(a3 + 88) = v28;
  sub_264D81744(v38, &v39, &qword_27FFB2D28, &qword_264E28F60);
  sub_264D80F20(v23, v25, a2 & 1);

  sub_264D817AC(v23, v25, a2 & 1);

  v39 = v29;
  *v40 = 256;
  *&v40[2] = *v37;
  v41 = *&v37[8];
  *v42 = *&v37[16];
  *&v42[14] = *&v37[23];
  return sub_264D817BC(&v39, &qword_27FFB2D28, &qword_264E28F60);
}

double sub_264DF95B4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = sub_264E24F58();
  v8 = v7;
  sub_264DF9244(v3, v4, &v14);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[5] = v19;
  v26[0] = v14;
  v26[1] = v15;
  sub_264D81744(&v20, &v13, &qword_27FFB2D20, &unk_264E28F50);
  sub_264D817BC(v26, &qword_27FFB2D20, &unk_264E28F50);
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = v23;
  *(a1 + 48) = v22;
  *(a1 + 64) = v9;
  v10 = v25;
  *(a1 + 80) = v24;
  *(a1 + 96) = v10;
  result = *&v20;
  v12 = v21;
  *(a1 + 16) = v20;
  *(a1 + 32) = v12;
  return result;
}

unint64_t sub_264DF9690@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_264E251C8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_264DBC3B4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_264DBC3B4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_264E251B8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_264E25178();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_264E25178();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_264E251C8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_264DBC3B4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_264E251C8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_264DBC3B4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_264DBC3B4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_264E25178();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264DF9A50(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_264E25478() & 1;
  }
}

unint64_t sub_264DF9AA8()
{
  result = qword_27FFB2D40;
  if (!qword_27FFB2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2D40);
  }

  return result;
}

uint64_t PickupsOverviewTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DF9BE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = v47 - v7;
  v8 = type metadata accessor for OverviewChart.Model(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264E23C38();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v56 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = v47 - v16;
  v17 = sub_264E23AA8();
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v17);
  v54 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DE8, &qword_264E290B8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v47 - v25;
  v52 = a2;
  v27 = *a2;
  v28 = a1;
  v60 = a1;
  v29 = v58;
  sub_264D93E70(sub_264DF7AE4, v27, v47 - v25);
  v30 = type metadata accessor for PickupsOverviewChart.Model(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v50 = v31 + 48;
  v51 = v32;
  if (v32(v26, 1, v30) != 1)
  {
    return sub_264DFBA70(v26, v61, type metadata accessor for PickupsOverviewChart.Model);
  }

  v47[1] = v29;
  v48 = v11;
  v49 = v8;
  v58 = v12;
  v33 = *(v59 + 16);
  v33(v22, v28, v17);
  v34 = type metadata accessor for PickupsOverviewTabView.Model(0);
  v35 = *(v57 + 16);
  v36 = v55;
  v35(v55, v52 + *(v34 + 20), v58);
  v33((v61 + *(v30 + 20)), v22, v17);
  v37 = v22;
  v38 = v54;
  v52 = v37;
  (v33)(v54);
  v35(v56, v36, v58);
  v39 = v53;
  v47[0] = sub_264E24C78();
  Calendar.startOfWeek(containing:)(v38, v39);
  result = (*(v59 + 48))(v39, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = v59;
    v42 = *(v59 + 8);
    v42(v54, v17);
    v43 = v57;
    v44 = v58;
    (*(v57 + 8))(v55, v58);
    v42(v52, v17);
    v45 = v48;
    (*(v41 + 32))(v48, v39, v17);
    v46 = v49;
    *(v45 + v49[5]) = MEMORY[0x277D84F90];
    (*(v43 + 32))(v45 + v46[6], v56, v44);
    *(v45 + v46[7]) = v47[0];
    *(v45 + v46[8]) = 1;
    sub_264DFBA70(v45, v61, type metadata accessor for OverviewChart.Model);
    result = v51(v26, 1, v30);
    if (result != 1)
    {
      return sub_264D817BC(v26, &qword_27FFB2DE8, &qword_264E290B8);
    }
  }

  return result;
}

uint64_t PickupsOverviewTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D58, &qword_264E28F80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D60, &qword_264E28F88);
  sub_264DFA240(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB2D68, &qword_27FFB2D58, &qword_264E28F80);
  sub_264E24C08();
  return sub_264DFA6E0(v4);
}

uint64_t sub_264DFA240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_264E24538();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_264E24558();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DA8, &qword_264E29040);
  v22 = *(v34 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v34);
  v25 = &v33 - v24;
  v26 = a1 + *(type metadata accessor for PickupsOverviewTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v17, &qword_27FFB1F70, &qword_264E28470);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v41 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DB0, &qword_264E29078);
  sub_264DFB958(&qword_27FFB19D0, MEMORY[0x277CC9578]);
  sub_264DFB614();
  sub_264E24F48();
  sub_264E24528();
  v28 = v36;
  v29 = v37;
  (*(v36 + 16))(v35, v8, v37);
  sub_264E24548();
  (*(v28 + 8))(v8, v29);
  sub_264D81DCC(&qword_27FFB2DC8, &qword_27FFB2DA8, &qword_264E29040);
  v30 = v34;
  v31 = v38;
  sub_264E24B68();
  (*(v39 + 8))(v13, v31);
  return (*(v22 + 8))(v25, v30);
}

uint64_t sub_264DFA6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D58, &qword_264E28F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DFA764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for PickupsOverviewTabView(0);
  v4 = v3 - 8;
  v40 = *(v3 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = v6;
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_264E23AA8();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_264E238E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ActivityNavigationState(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v25);
  v26 = *(v20 + 28);
  v27 = v39;
  v28 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v15 + 16))(v18, &v23[v26 + *(v28 + 20)], v14);
  sub_264DFBA10(v23, type metadata accessor for ActivityNavigationState);
  LODWORD(v23) = *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v29 = Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(v13, v10);
  v30 = *(v7 + 8);
  v30(v10, v27);
  v31 = (v30)(v13, v27);
  if (v29)
  {
    MEMORY[0x28223BE20](v31);
    v37 = a1;
    v32 = sub_264E0AE28(sub_264DFB6C8, (&v38 - 4), v29);

    (*(v15 + 8))(v18, v14);
    v44 = v32;
    v33 = v42;
    sub_264DFB9A0(a1, v42, type metadata accessor for PickupsOverviewTabView);
    v34 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v35 = swift_allocObject();
    sub_264DFBA70(v33, v35 + v34, type metadata accessor for PickupsOverviewTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2DD0, &qword_264E29080);
    type metadata accessor for PickupsOverviewChart(0);
    sub_264D81DCC(&qword_27FFB2DD8, &qword_27FFB2DD0, &qword_264E29080);
    sub_264DFB958(&qword_27FFB2DC0, type metadata accessor for PickupsOverviewChart);
    v37 = sub_264DFB958(&qword_27FFB2DE0, type metadata accessor for PickupsOverviewChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DFAC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = type metadata accessor for PickupsOverviewChart.Model(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DFB9A0(a1, v13, type metadata accessor for PickupsOverviewChart.Model);
  v14 = a2 + *(type metadata accessor for PickupsOverviewTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  v15 = type metadata accessor for PickupsOverviewChart(0);
  v16 = a3 + v15[5];
  sub_264E24E68();

  sub_264D817BC(v9, &qword_27FFB1F70, &qword_264E28470);
  v17 = v15[6];
  sub_264DFB9A0(v13, a3, type metadata accessor for PickupsOverviewChart.Model);
  sub_264DFB9A0(v13, a3 + v15[7], type metadata accessor for OverviewChart.Model);
  result = sub_264DFBA10(v13, type metadata accessor for PickupsOverviewChart.Model);
  *(a3 + v17) = 0;
  return result;
}

uint64_t sub_264DFAE68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D58, &qword_264E28F80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2D60, &qword_264E28F88);
  sub_264DFA240(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB2D68, &qword_27FFB2D58, &qword_264E28F80);
  sub_264E24C08();
  return sub_264DFA6E0(v4);
}

uint64_t sub_264DFAF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsOverviewTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DFB0AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsOverviewTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264DFB1D4()
{
  type metadata accessor for PickupsOverviewTabView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264DFB4B4(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DFB29C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DFB35C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DFB400()
{
  sub_264DFB4B4(319, &qword_27FFB2D90, type metadata accessor for PickupsOverviewChart.Model, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DFB4B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_264DFB51C()
{
  result = qword_27FFB2D98;
  if (!qword_27FFB2D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2DA0, &unk_264E29030);
    sub_264D81DCC(&qword_27FFB2D68, &qword_27FFB2D58, &qword_264E28F80);
    sub_264DFB958(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2D98);
  }

  return result;
}

unint64_t sub_264DFB614()
{
  result = qword_27FFB2DB8;
  if (!qword_27FFB2DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2DB0, &qword_264E29078);
    sub_264DFB958(&qword_27FFB2DC0, type metadata accessor for PickupsOverviewChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2DB8);
  }

  return result;
}

uint64_t sub_264DFB6E8()
{
  v1 = (type metadata accessor for PickupsOverviewTabView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*v1 + 64);
  v4 = *(v0 + v3);

  v5 = *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  v6 = sub_264E23C38();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = (v0 + v3 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470) + 32);
  v12 = type metadata accessor for ActivityNavigationState(0);
  v13 = &v11[*(v12 + 20)];
  v14 = sub_264E23AA8();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(type metadata accessor for ActivityNavigationState.DateAndBounds(0) + 20);
  v16 = sub_264E238E8();
  (*(*(v16 - 8) + 8))(&v13[v15], v16);
  v7(&v11[*(v12 + 24)], v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v18, v2 | 7);
}

uint64_t sub_264DFB8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PickupsOverviewTabView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_264DFAC98(a1, v6, a2);
}

uint64_t sub_264DFB958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DFB9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DFBA10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264DFBA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DFBAD8(char a1)
{
  sub_264DFBB3C(a1);
  sub_264E24C08();
}

unint64_t sub_264DFBB3C(char a1)
{
  result = 0x567972616D6D7573;
  switch(a1)
  {
    case 1:
    case 43:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
    case 11:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6165486567617375;
      break;
    case 5:
    case 9:
    case 12:
    case 47:
    case 58:
      result = 0xD000000000000014;
      break;
    case 6:
    case 7:
    case 28:
    case 31:
    case 37:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x507370756B636970;
      break;
    case 10:
    case 23:
    case 25:
    case 42:
    case 69:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 16:
    case 24:
    case 48:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 51:
    case 53:
      result = 0xD000000000000018;
      break;
    case 19:
    case 27:
    case 34:
    case 36:
    case 46:
      result = 0xD000000000000013;
      break;
    case 20:
    case 21:
      result = 0x655073746E756F63;
      break;
    case 22:
    case 32:
    case 38:
    case 40:
      result = 0xD000000000000015;
      break;
    case 26:
    case 30:
    case 61:
      result = 0xD000000000000010;
      break;
    case 29:
    case 33:
      result = 0x6465735574736F6DLL;
      break;
    case 35:
      result = 0xD000000000000017;
      break;
    case 39:
      result = 0xD00000000000001ELL;
      break;
    case 41:
      result = 0xD000000000000017;
      break;
    case 44:
      result = 0xD000000000000017;
      break;
    case 45:
    case 54:
      result = 0xD00000000000001BLL;
      break;
    case 49:
      result = 0xD000000000000017;
      break;
    case 50:
    case 52:
      result = 0xD00000000000001DLL;
      break;
    case 55:
      result = 0xD000000000000029;
      break;
    case 56:
      result = 0xD000000000000024;
      break;
    case 57:
      result = 0xD00000000000001FLL;
      break;
    case 60:
      result = 0x4C65676172657661;
      break;
    case 62:
      result = 0x5265676172657661;
      break;
    case 63:
    case 64:
    case 65:
    case 66:
      result = 0x62614C7369784179;
      break;
    case 68:
      result = 0xD000000000000017;
      break;
    case 70:
      result = 0x6562614C74736574;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

uint64_t CategoriesLegendView.init(model:dateInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_264DFE834(a1, a3, type metadata accessor for CategoriesLegendView.Model);
  v5 = *(type metadata accessor for CategoriesLegendView(0) + 20);
  v6 = sub_264E238E8();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_264DFC320(double a1)
{
  v2 = v1;
  v4 = sub_264E238E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 16))(v13, v16, v9);
  v17 = *v1;
  v18 = 0.0;
  if (*(*v2 + 16))
  {
    v19 = sub_264D9D5F4(v16);
    if (v20)
    {
      v18 = *(*(v17 + 56) + 8 * v19);
    }
  }

  v21 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v2;
  sub_264DCD340(v13, isUniquelyReferenced_nonNull_native, v18 + a1);
  v23 = *(v10 + 8);
  v23(v13, v9);
  result = (v23)(v16, v9);
  *v2 = v26;
  return result;
}

BOOL sub_264DFC554(uint64_t a1)
{
  v3 = type metadata accessor for CategoriesLegendView.Model(0);
  v4 = *(v1 + *(v3 + 36));
  if (v4 == 1)
  {
    v6 = *(v1 + 8);
    MEMORY[0x28223BE20](v3);
    v10[2] = a1;

    sub_264DFCBA4(sub_264DFF3CC, v10, v6);
    v8 = *(v7 + 16);

    return v8 != 0;
  }

  else if (v4 || !*(*(v1 + 8) + 16))
  {
    return 0;
  }

  else
  {
    sub_264D9D6C8(a1);
  }

  return v5;
}

double sub_264DFC630(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_264D9D57C(a1, a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_264D9E134(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_264D9D57C(a1, a2);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_264E25498();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    v22 = v12;
    sub_264DA0FDC();
    v12 = v22;
    *v5 = v11;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *v5 = v11;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    v19 = v12;
    sub_264DA0B08(v12, a1, a2, v11, 0.0);

    v12 = v19;
  }

LABEL_8:
  v20 = v11[7];
  result = *(v20 + 8 * v12) + a3;
  *(v20 + 8 * v12) = result;
  return result;
}

void *sub_264DFC764(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = sub_264D8C20C(*(a1 + 16), 0);
    v5 = sub_264D8E104(&v29, v4 + 4, v1, a1);

    sub_264D8F07C();
    if (v5 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = v2;
LABEL_5:
  v29 = v4;
  sub_264D8C4F4(&v29);
  v6 = v29;
  v7 = v29[2];
  if (v7)
  {
    if (v7 >= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = v29[2];
    }

    v29 = v2;
    sub_264D8D348(0, v8, 0);
    v9 = v29;
    v11 = v6[4];
    v10 = v6[5];
    v12 = v6[6];
    v13 = v29[2];
    v14 = v29[3];

    if (v13 >= v14 >> 1)
    {
      sub_264D8D348((v14 > 1), v13 + 1, 1);
      v9 = v29;
    }

    v9[2] = v13 + 1;
    v15 = &v9[3 * v13];
    v15[4] = v11;
    v15[5] = v10;
    v15[6] = v12;
    if (v7 != 1)
    {
      v17 = v6[7];
      v16 = v6[8];
      v18 = v6[9];
      v29 = v9;
      v19 = v9[2];
      v20 = v9[3];

      if (v19 >= v20 >> 1)
      {
        sub_264D8D348((v20 > 1), v19 + 1, 1);
        v9 = v29;
      }

      v9[2] = v19 + 1;
      v21 = &v9[3 * v19];
      v21[4] = v17;
      v21[5] = v16;
      v21[6] = v18;
      if (v7 != 2)
      {
        v23 = v6[10];
        v22 = v6[11];
        v24 = v6[12];
        v29 = v9;
        v25 = v9[2];
        v26 = v9[3];

        if (v25 >= v26 >> 1)
        {
          sub_264D8D348((v26 > 1), v25 + 1, 1);
          v9 = v29;
        }

        v9[2] = v25 + 1;
        v27 = &v9[3 * v25];
        v27[4] = v23;
        v27[5] = v22;
        v27[6] = v24;
      }
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_264DFC9B4()
{
  v0 = sub_264E23AA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264DFF3EC(&qword_27FFB1BF0, MEMORY[0x277CC9578]);
  v8 = sub_264E25048();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    sub_264E23888();
    sub_264E23888();
    v11 = sub_264E25048();
    v9(v4, v0);
    v9(v7, v0);
    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

void sub_264DFCBA4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v6 = sub_264E238E8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v40 - v10;
  v13 = MEMORY[0x28223BE20](v11);
  v50 = a3;
  v51 = &v40 - v14;
  v15 = 0;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v48 = v12;
  v49 = v12 + 32;
  v43 = (v12 + 8);
  v44 = v12 + 16;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

    v24 = v4;
LABEL_10:
    v25 = *(v50 + 48);
    v26 = v48;
    v42 = *(v48 + 72);
    v27 = v45;
    (*(v48 + 16))(v45, v25 + v42 * (__clz(__rbit64(v21)) | (v15 << 6)), v6, v13);
    v28 = *(v26 + 32);
    v29 = v6;
    v30 = v51;
    v31 = v29;
    v28(v51, v27);
    v32 = v46(v30);
    v4 = v24;
    if (v24)
    {
      (*v43)(v51, v31);

      return;
    }

    v21 &= v21 - 1;
    if (v32)
    {
      v6 = v31;
      (v28)(v40, v51, v31);
      v33 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_264D8D190(0, *(v33 + 16) + 1, 1);
        v6 = v31;
        v33 = v52;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v39 = v36 + 1;
        v41 = v36;
        sub_264D8D190(v35 > 1, v36 + 1, 1);
        v37 = v39;
        v36 = v41;
        v6 = v31;
        v33 = v52;
      }

      *(v33 + 16) = v37;
      v38 = *(v48 + 80);
      v41 = v33;
      (v28)(v33 + ((v38 + 32) & ~v38) + v36 * v42, v40, v6);
    }

    else
    {
      v6 = v31;
      (*v43)(v51, v31);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      v24 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_264DFCF14(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = sub_264E23C18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_264E23AA8();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v29 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = sub_264E238E8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for CategoriesLegendView.Model(0) + 32);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9940], v2);
  v30 = v22;
  sub_264E23B08();
  (*(v3 + 8))(v6, v2);
  result = (*(v18 + 48))(v10, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v32;
    v25 = *(v31 + 8);
    v25(v16, v32);
    (*(v18 + 32))(v21, v10, v17);
    v26 = v34;
    v27 = *v34;
    v28 = v29;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    sub_264DD26C0(v27, v28, v26 + v30, v33);
    v25(v28, v24);
    return (*(v18 + 8))(v21, v17);
  }

  return result;
}

uint64_t sub_264DFD278(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v90 - v6;
  v8 = sub_264E23AD8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v90[1] = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E250D8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v90[0] = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2E88, &qword_264E29278);
  v14 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v100 = (v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v99 = v90 - v17;
  MEMORY[0x28223BE20](v18);
  v98 = v90 - v19;
  v20 = *(v1 + 24);
  v93 = v1;
  v94 = v20;
  v91 = v7;
  if (v20)
  {
    v21 = v20;
    v22 = v20;
  }

  else
  {
    v23 = sub_264DFC554(a1);
    v24 = 16;
    if (v23)
    {
      v24 = 8;
    }

    v22 = *(v1 + v24);

    v21 = 0;
  }

  MEMORY[0x28223BE20](v21);
  v92 = a1;
  v90[-2] = a1;

  v25 = 0;
  v26 = sub_264DA22C4(sub_264DFF330, &v90[-4], v22);

  v27 = *(v26 + 16);
  if (v27)
  {
    v105 = MEMORY[0x277D84F90];
    sub_264D8D388(0, v27, 0);
    v28 = v105;
    v29 = v26 + 64;
    v30 = -1 << *(v26 + 32);
    v31 = sub_264E25368();
    v32 = 0;
    v95 = v26 + 72;
    v96 = v27;
    v97 = v26 + 64;
    while ((v31 & 0x8000000000000000) == 0 && v31 < 1 << *(v26 + 32))
    {
      v25 = v31 >> 6;
      if ((*(v29 + 8 * (v31 >> 6)) & (1 << v31)) == 0)
      {
        goto LABEL_62;
      }

      v35 = *(v26 + 36);
      v102 = v32;
      v103 = v35;
      v36 = *(v26 + 48);
      v37 = sub_264E238E8();
      v38 = *(v37 - 8);
      v39 = v98;
      (*(v38 + 16))(v98, v36 + *(v38 + 72) * v31, v37);
      v40 = *(*(v26 + 56) + 8 * v31);
      v41 = v99;
      (*(v38 + 32))(v99, v39, v37);
      v42 = v101;
      *&v41[*(v101 + 48)] = v40;
      v43 = v41;
      v27 = v100;
      sub_264DFF350(v43, v100);
      v104 = *(v27 + *(v42 + 48));
      v44 = v28;
      v45 = *(v38 + 8);

      v45(v27, v37);
      v28 = v44;
      v105 = v44;
      v47 = v44[2];
      v46 = v44[3];
      if (v47 >= v46 >> 1)
      {
        sub_264D8D388((v46 > 1), v47 + 1, 1);
        v28 = v105;
      }

      *(v28 + 16) = v47 + 1;
      *(v28 + 8 * v47 + 32) = v104;
      v33 = 1 << *(v26 + 32);
      if (v31 >= v33)
      {
        goto LABEL_63;
      }

      v29 = v97;
      v48 = *(v97 + 8 * v25);
      if ((v48 & (1 << v31)) == 0)
      {
        goto LABEL_64;
      }

      if (v103 != *(v26 + 36))
      {
        goto LABEL_65;
      }

      v49 = v48 & (-2 << (v31 & 0x3F));
      if (v49)
      {
        v33 = __clz(__rbit64(v49)) | v31 & 0x7FFFFFFFFFFFFFC0;
        v27 = v96;
        v34 = v102;
      }

      else
      {
        v50 = v25 << 6;
        v51 = v25 + 1;
        v27 = v96;
        v52 = (v95 + 8 * v25);
        v34 = v102;
        while (v51 < (v33 + 63) >> 6)
        {
          v53 = *v52++;
          v25 = v53;
          v50 += 64;
          ++v51;
          if (v53)
          {
            sub_264DFF3C0(v31, v103, 0);
            v33 = __clz(__rbit64(v25)) + v50;
            goto LABEL_9;
          }
        }

        sub_264DFF3C0(v31, v103, 0);
      }

LABEL_9:
      v32 = v34 + 1;
      v31 = v33;
      if (v32 == v27)
      {

        goto LABEL_26;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_26:
  v54 = sub_264DEB098(MEMORY[0x277D84F90]);
  v25 = v54;
  v101 = *(v28 + 16);
  if (v101)
  {
    v55 = 0;
    v99 = v28;
    v100 = (v28 + 32);
    while (v55 < *(v28 + 16))
    {
      v27 = v100[v55];
      v104 = v55 + 1;
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v25;
      v57 = -1 << *(v27 + 32);
      if (-v57 < 64)
      {
        v58 = ~(-1 << -v57);
      }

      else
      {
        v58 = -1;
      }

      v59 = v25;
      v25 = v58 & *(v27 + 64);
      v102 = -1 << *(v27 + 32);
      v60 = (63 - v57) >> 6;

      v61 = 0;
      v103 = v59;
      while (v25)
      {
        v28 = v61;
LABEL_42:
        v65 = __clz(__rbit64(v25)) | (v28 << 6);
        v66 = (*(v27 + 48) + 16 * v65);
        v68 = *v66;
        v67 = v66[1];
        v2 = *(*(v27 + 56) + 8 * v65);

        v69 = sub_264D9D57C(v68, v67);
        v71 = v59[2];
        v72 = (v70 & 1) == 0;
        v73 = __OFADD__(v71, v72);
        v74 = v71 + v72;
        if (v73)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v75 = v70;
        if (v59[3] >= v74)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v80 = v69;
            sub_264DA0FDC();
            v69 = v80;
          }
        }

        else
        {
          sub_264D9E134(v74, isUniquelyReferenced_nonNull_native & 1);
          v69 = sub_264D9D57C(v68, v67);
          if ((v75 & 1) != (v76 & 1))
          {
            result = sub_264E25498();
            __break(1u);
            return result;
          }
        }

        v25 &= v25 - 1;
        v59 = v105;
        if (v75)
        {
          v62 = *(v105[7] + 8 * v69);
          v63 = v69;

          *(v59[7] + 8 * v63) = v2 + v62;
        }

        else
        {
          v105[(v69 >> 6) + 8] |= 1 << v69;
          v77 = (v59[6] + 16 * v69);
          *v77 = v68;
          v77[1] = v67;
          *(v59[7] + 8 * v69) = v2;
          v78 = v59[2];
          v73 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v73)
          {
            goto LABEL_60;
          }

          v59[2] = v79;
        }

        isUniquelyReferenced_nonNull_native = 1;
        v61 = v28;
      }

      v64 = v61;
      while (1)
      {
        v28 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v28 >= v60)
        {
          break;
        }

        v25 = *(v27 + 64 + 8 * v28);
        v64 = (v64 + 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      sub_264D8F07C();

      swift_bridgeObjectRelease_n();
      v25 = v59;
      v55 = v104;
      v28 = v99;
      if (v104 == v101)
      {
        goto LABEL_52;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v28 = sub_264DBC4C0(0, *(v28 + 16) + 1, 1, v28);
    goto LABEL_54;
  }

  v59 = v54;
LABEL_52:

  v28 = sub_264DFC764(v59);

  if (!v94)
  {
    return v28;
  }

  sub_264E25078();
  v81 = [objc_opt_self() bundle];
  sub_264E23AC8();
  v25 = sub_264E25138();
  v27 = v82;
  v83 = sub_264E23AA8();
  v84 = v91;
  (*(*(v83 - 8) + 56))(v91, 1, 1, v83);
  sub_264DFCF14(v92, v84);
  v2 = v85;
  sub_264D817BC(v84, &qword_27FFB1860, &qword_264E267E0);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_54:
  v87 = *(v28 + 16);
  v86 = *(v28 + 24);
  if (v87 >= v86 >> 1)
  {
    v28 = sub_264DBC4C0((v86 > 1), v87 + 1, 1, v28);
  }

  *(v28 + 16) = v87 + 1;
  v88 = (v28 + 24 * v87);
  *(v88 + 4) = v25;
  *(v88 + 5) = v27;
  v88[6] = v2;
  return v28;
}