id sub_2646F86C4(void *a1, void *a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v80 - v5;
  v7 = *(*(sub_264783B94() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_264785704() - 8) + 64);
  MEMORY[0x28223BE20]();
  v87 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_264783E24();
  v12 = *(v86 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DE4();
  v16 = a1;
  v17 = a2;
  v18 = sub_264783E14();
  v19 = sub_2647859F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v95 = v82;
    *v20 = 136315651;
    v21 = v16;
    v83 = v9;
    v22 = v21;
    v23 = [v21 description];
    v85 = v17;
    v24 = v23;
    v25 = sub_264785724();
    v84 = v6;
    v26 = v25;
    v81 = v16;
    v28 = v27;

    v29 = sub_2646DF234(v26, v28, &v95);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, &v95);
    *(v20 + 22) = 2085;
    v30 = v85;
    v31 = [v30 description];
    v32 = sub_264785724();
    v34 = v33;

    v35 = v32;
    v6 = v84;
    v36 = sub_2646DF234(v35, v34, &v95);
    v17 = v85;

    *(v20 + 24) = v36;
    _os_log_impl(&dword_264605000, v18, v19, "#DetailView, %s, %s: Setting new map model for mapitem %{sensitive}s", v20, 0x20u);
    v37 = v82;
    swift_arrayDestroy();
    MEMORY[0x266740650](v37, -1, -1);
    MEMORY[0x266740650](v20, -1, -1);

    v38 = v81;
    (*(v12 + 8))(v15, v86);
  }

  else
  {

    (*(v12 + 8))(v15, v86);
    v38 = v16;
  }

  v39 = [v17 placemark];
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v42 = sub_264785754();
  v44 = v43;
  v45 = [v17 placemark];
  [v45 coordinate];
  v47 = v46;
  v49 = v48;

  v50 = objc_allocWithZone(type metadata accessor for SafetyCacheRouteInfoCellViewModel());
  v51 = sub_264705580(v39, v42, v44, v50, v47, v49);

  swift_getKeyPath();
  swift_getKeyPath();
  *&v95 = v51;
  v52 = v38;
  sub_264783EE4();
  result = [v17 place];
  if (result)
  {
    v54 = result;
    [result coordinate];
    v56 = v55;
    v58 = v57;

    v59 = &v52[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
    swift_beginAccess();
    v60 = *(v59 + 1);
    v61 = &v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation];
    *v61 = v56;
    *(v61 + 1) = v58;
    v61[16] = 0;
    v62 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
    v89 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
    v90 = v62;
    v63 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
    v65 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
    v64 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
    v93 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
    v94 = v63;
    v91 = v65;
    v92 = v64;
    v66 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
    v95 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
    v96 = v66;
    v67 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
    v69 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
    v68 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
    v99 = *&v60[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
    v100 = v67;
    v97 = v69;
    v98 = v68;
    v70 = sub_2647858E4();
    (*(*(v70 - 8) + 56))(v6, 1, 1, v70);
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    *(v71 + 32) = v60;
    v72 = v92;
    *(v71 + 72) = v91;
    *(v71 + 88) = v72;
    v73 = v94;
    *(v71 + 104) = v93;
    *(v71 + 120) = v73;
    v74 = v90;
    *(v71 + 40) = v89;
    *(v71 + 56) = v74;
    v75 = v95;
    *(v71 + 152) = v96;
    *(v71 + 136) = v75;
    v76 = v97;
    v77 = v98;
    v78 = v99;
    *(v71 + 216) = v100;
    *(v71 + 200) = v78;
    *(v71 + 184) = v77;
    *(v71 + 168) = v76;
    *(v71 + 232) = v56;
    *(v71 + 240) = v58;
    *(v71 + 248) = 0;
    v79 = v60;
    sub_26460CCE8(&v89, v88, &qword_27FF756F8, &qword_264787DF0);
    sub_26460CCE8(&v95, v88, &qword_27FF756F8, &qword_264787DF0);
    sub_264635430(0, 0, v6, &unk_26478D7D8, v71);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2646F8DA0()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v40)
  {
    v11 = v42;
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v33 = v39;
    v34 = v40;
    v12 = v42;
    sub_26460CD50(&v33, &qword_27FF756F8, &qword_264787DF0);
    if (v11)
    {
      v13 = sub_2647858E4();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      sub_2647858B4();
      v14 = v12;
      v15 = v1;
      v16 = sub_2647858A4();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v14;
      v17[5] = v15;
      sub_264635430(0, 0, v10, &unk_26478F4D0, v17);

      return;
    }
  }

  else
  {
    v35 = v41;
    v36 = v42;
    v37 = v43;
    v38 = v44;
    v33 = v39;
    v34 = v40;
    sub_26460CD50(&v33, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264783DE4();
  v19 = v1;
  v20 = sub_264783E14();
  v21 = sub_2647859F4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v39 = v23;
    *v22 = 136315394;
    v24 = v19;
    v25 = [v24 description];
    v32 = v2;
    v26 = v25;
    v27 = sub_264785724();
    v29 = v28;

    v30 = sub_2646DF234(v27, v29, &v39);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2646DF234(0xD000000000000016, 0x80000002647990D0, &v39);
    _os_log_impl(&dword_264605000, v20, v21, "#DetailView, %s, %s: Missing start location in safety cache", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v23, -1, -1);
    MEMORY[0x266740650](v22, -1, -1);

    (*(v3 + 8))(v6, v32);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2646F91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_264783E24();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_264785594();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = sub_2647855C4();
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v15 = sub_264783AF4();
  v5[20] = v15;
  v16 = *(v15 - 8);
  v5[21] = v16;
  v17 = *(v16 + 64) + 15;
  v5[22] = swift_task_alloc();
  sub_2647858B4();
  v5[23] = sub_2647858A4();
  v19 = sub_264785874();
  v5[24] = v19;
  v5[25] = v18;

  return MEMORY[0x2822009F8](sub_2646F93D8, v19, v18);
}

uint64_t sub_2646F93D8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[9];
  [v4 latitude];
  v6 = v5;
  [v4 longitude];
  v8 = v7;
  [v4 altitude];
  v10 = v9;
  [v4 hunc];
  v12 = v11;
  [v4 vunc];
  v14 = v13;
  v15 = [v4 date];
  sub_264783AC4();

  v16 = [v4 referenceFrame];
  v17 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v18 = sub_264783A64();
  v19 = [v17 initWithCoordinate:v18 altitude:v16 horizontalAccuracy:v6 verticalAccuracy:v8 timestamp:v10 referenceFrame:{v12, v14}];
  v0[26] = v19;

  (*(v2 + 8))(v1, v3);
  if (qword_27FF74FF0 != -1)
  {
    swift_once();
  }

  v20 = v19;
  v21 = swift_task_alloc();
  v0[27] = v21;
  *v21 = v0;
  v21[1] = sub_2646F95E4;

  return sub_2646DCEB0(v19);
}

uint64_t sub_2646F95E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = *(v4 + 192);
    v8 = *(v4 + 200);
    v9 = sub_2646F99C0;
  }

  else
  {

    *(v4 + 232) = a1;
    v7 = *(v4 + 192);
    v8 = *(v4 + 200);
    v9 = sub_2646F9714;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2646F9714()
{
  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[19];
  v22 = v0[26];
  v23 = v0[18];
  v4 = v0[16];
  v24 = v0[17];
  v5 = v0[14];
  v21 = v0[15];
  v7 = v0[9];
  v6 = v0[10];

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v20 = sub_264785A44();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v1;
  v8[4] = v7;
  v0[6] = sub_264706908;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264659F60;
  v0[5] = &block_descriptor_197;
  v9 = _Block_copy(v0 + 2);
  v19 = v1;
  v10 = v7;
  v11 = v6;
  sub_2647855B4();
  v0[8] = MEMORY[0x277D84F90];
  sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v3, v4, v9);
  _Block_release(v9);

  (*(v21 + 8))(v4, v5);
  (*(v23 + 8))(v3, v24);
  v12 = v0[7];

  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2646F99C0()
{
  v36 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);

  sub_264783DE4();
  v6 = v4;
  v7 = v5;
  v8 = sub_264783E14();
  v9 = sub_2647859D4();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  if (v10)
  {
    v33 = *(v0 + 224);
    v34 = *(v0 + 104);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v16 = 136315651;
    v17 = v14;
    v18 = [v17 description];
    v32 = v13;
    v19 = sub_264785724();
    v21 = v20;

    v22 = sub_2646DF234(v19, v21, &v35);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2646DF234(0xD000000000000016, 0x80000002647990D0, &v35);
    *(v16 + 22) = 2117;
    *(v16 + 24) = v15;
    *v30 = v15;
    v23 = v15;
    _os_log_impl(&dword_264605000, v8, v9, "#DetailView, %s, %s: Error happened when trying to resolve address for %{sensitive}@", v16, 0x20u);
    sub_26460CD50(v30, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v30, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v31, -1, -1);
    MEMORY[0x266740650](v16, -1, -1);

    (*(v12 + 8))(v34, v32);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = *(v0 + 176);
  v25 = *(v0 + 152);
  v26 = *(v0 + 128);
  v27 = *(v0 + 104);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2646F9C78(void *a1, void *a2, void *a3)
{
  v6 = sub_264783B94();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_264785704();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v12 = sub_264785754();
  v14 = v13;
  v15 = objc_allocWithZone(type metadata accessor for SafetyCacheRouteInfoCellViewModel());
  v16 = a2;
  sub_264705884(a2, v12, v14, a3, v15);

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = a1;
  return sub_264783EE4();
}

id SafetyCacheDetailViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetyCacheDetailViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyCacheDetailViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646FA128@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SafetyCacheDetailViewModel();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t SafetyCacheDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v170 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78088, &qword_26478F4D8);
  v2 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v155 = v136 - v3;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78090, &qword_26478F4E0);
  v4 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v156 = v136 - v5;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78098, &unk_26478F4E8);
  v6 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v141 = v136 - v7;
  v8 = sub_264783B94();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v136[1] = v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264785704();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v138 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v139 = v136 - v18;
  v19 = sub_264783AF4();
  v144 = *(v19 - 8);
  v145 = v19;
  v20 = v144[8];
  v21 = MEMORY[0x28223BE20](v19);
  v137 = v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v142 = v136 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780A0, &qword_26478F4F8);
  v24 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v143 = v136 - v25;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780A8, &qword_26478F500);
  v26 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v164 = v136 - v27;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780B0, &qword_26478F508);
  v28 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v159 = v136 - v29;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780B8, &qword_26478F510);
  v30 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v147 = v136 - v31;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780C0, &qword_26478F518);
  v32 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v148 = v136 - v33;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780C8, &qword_26478F520);
  v34 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v160 = v136 - v35;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780D0, &qword_26478F528);
  v36 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v140 = v136 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780D8, &qword_26478F530);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v169 = v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v167 = v136 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780E0, &qword_26478F538);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v168 = v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v171 = v136 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780E8, &unk_26478F540);
  v165 = *(v48 - 8);
  v49 = v165[8];
  MEMORY[0x28223BE20](v48);
  v152 = v136 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767D0, &qword_26478AC98);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v54 = v136 - v53;
  v55 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v56 = v55 - 8;
  v57 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v59 = v136 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF780F0, &qword_26478F550);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v166 = v136 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v172 = v136 - v64;
  v65 = v1[1];
  v191 = *v1;
  v192 = v65;
  v193 = v1[2];
  v194 = v65;
  v66 = *(&v65 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v66;
  sub_264783ED4();

  sub_26460CD50(&v194, &qword_27FF780F8, &qword_26478F5A0);
  sub_26460CCE8(&v59[*(v56 + 36)], v54, &qword_27FF767D0, &qword_26478AC98);
  sub_26470510C(v59, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v68 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v69 = 1;
  LODWORD(v56) = (*(*(v68 - 8) + 48))(v54, 1, v68);
  sub_26460CD50(v54, &qword_27FF767D0, &qword_26478AC98);
  if (v56 != 1)
  {
    v195 = v191;
    sub_26460CCE8(&v194, &v182, &qword_27FF780F8, &qword_26478F5A0);
    sub_26460CCE8(&v195, &v182, &qword_27FF781D0, &qword_26478F638);
    type metadata accessor for SafetyCacheDetailViewModel();
    sub_264703CEC(&qword_27FF781E0, type metadata accessor for SafetyCacheDetailViewModel);
    v70 = sub_264784174();
    v72 = v71;
    type metadata accessor for SafetyCacheMapViewModel(0);
    sub_264703CEC(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel);
    v73 = sub_264784174();
    v75 = v74;
    *&v176 = v70;
    *(&v176 + 1) = v72;
    *&v177 = v73;
    *(&v177 + 1) = v74;
    v76 = swift_allocObject();
    v77 = v192;
    v76[1] = v191;
    v76[2] = v77;
    v76[3] = v193;
    sub_2647040B0(&v191, &v182);
    sub_2647040E8();
    v78 = v152;
    sub_264784F14();

    sub_264785504();
    sub_2647840A4();
    v79 = (v78 + *(v48 + 36));
    v80 = v189;
    *v79 = v188;
    v79[1] = v80;
    v79[2] = v190;
    sub_26460E7E4(v78, v172, &qword_27FF780E8, &unk_26478F540);
    v69 = 0;
  }

  (v165[7])(v172, v69, 1, v48);
  v182 = v191;
  v183 = v192;
  v184 = v193;
  sub_2646FBD74(v171);
  v196[0] = v191;
  v81 = *(&v191 + 1);
  v82 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  swift_beginAccess();
  v83 = *&v81[v82];
  if (v83 <= 1)
  {
    v84 = v167;
    if (!v83)
    {
      goto LABEL_14;
    }

    if (v83 != 1)
    {
LABEL_16:
      swift_storeEnumTagMultiPayload();
      sub_2647039C0();
      sub_264784874();
      goto LABEL_26;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v90 = v81;
    v91 = v139;
    sub_264783ED4();

    sub_26460CD50(v196, &qword_27FF781D0, &qword_26478F638);
    v93 = v144;
    v92 = v145;
    v94 = v144[6];
    if (v94(v91, 1, v145) == 1)
    {
      sub_26460CD50(v91, &qword_27FF756B8, &qword_26478AC90);
    }

    else
    {
      v105 = v93[4];
      v105(v142, v91, v92);
      swift_getKeyPath();
      swift_getKeyPath();
      v106 = v90;
      v107 = v138;
      sub_264783ED4();
      v108 = v145;

      sub_26460CD50(v196, &qword_27FF781D0, &qword_26478F638);
      if (v94(v107, 1, v108) != 1)
      {
        v114 = v137;
        v115 = (v105)(v137, v107, v108);
        v165 = v136;
        MEMORY[0x28223BE20](v115);
        v116 = v142;
        v136[-2] = v142;
        v136[-1] = v114;
        sub_264785694();
        sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
        v117 = v108;
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v119 = [objc_opt_self() bundleForClass_];
        sub_264783B84();
        *&v182 = sub_264785754();
        *(&v182 + 1) = v120;
        sub_264613FC4();
        *&v182 = sub_264784E44();
        *(&v182 + 1) = v121;
        LOBYTE(v183) = v122 & 1;
        *(&v183 + 1) = v123;
        type metadata accessor for TimerInfoView();
        sub_264703CEC(&qword_27FF78160, type metadata accessor for TimerInfoView);
        v109 = v143;
        sub_264785444();
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78158, &qword_26478F5C0);
        (*(*(v124 - 8) + 56))(v109, 0, 1, v124);
        v125 = v144[1];
        v125(v114, v117);
        v125(v116, v117);
        goto LABEL_24;
      }

      sub_26460CD50(v107, &qword_27FF756B8, &qword_26478AC90);
      (v144[1])(v142, v108);
    }

    v109 = v143;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78158, &qword_26478F5C0);
    (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
LABEL_24:
    sub_26460CCE8(v109, v147, &qword_27FF780A0, &qword_26478F4F8);
    swift_storeEnumTagMultiPayload();
    sub_264703DEC(&qword_27FF78110, &qword_27FF780D0, &qword_26478F528, sub_264703B30);
    sub_264703DEC(&qword_27FF78148, &qword_27FF780A0, &qword_26478F4F8, sub_264703C24);
    v126 = v148;
    sub_264784874();
    sub_26460CCE8(v126, v159, &qword_27FF780C0, &qword_26478F518);
    swift_storeEnumTagMultiPayload();
    sub_264703A4C();
    sub_264703D34();
    v127 = v160;
    sub_264784874();
    sub_26460CD50(v126, &qword_27FF780C0, &qword_26478F518);
    sub_26460CCE8(v127, v164, &qword_27FF780C8, &qword_26478F520);
    swift_storeEnumTagMultiPayload();
    sub_2647039C0();
    sub_264784874();
    sub_26460CD50(v127, &qword_27FF780C8, &qword_26478F520);
    v102 = v109;
    v103 = &qword_27FF780A0;
    v104 = &qword_26478F4F8;
    goto LABEL_25;
  }

  v84 = v167;
  if (v83 == 4)
  {
    v182 = v191;
    v183 = v192;
    v184 = v193;
    v99 = v141;
    sub_2646FC51C(v141);
    sub_26460CCE8(v99, v155, &qword_27FF78098, &unk_26478F4E8);
    swift_storeEnumTagMultiPayload();
    sub_264703DEC(&qword_27FF78170, &qword_27FF78098, &unk_26478F4E8, sub_264703E68);
    v100 = v156;
    sub_264784874();
    sub_26460CCE8(v100, v159, &qword_27FF78090, &qword_26478F4E0);
    swift_storeEnumTagMultiPayload();
    sub_264703A4C();
    sub_264703D34();
    v101 = v160;
    sub_264784874();
    sub_26460CD50(v100, &qword_27FF78090, &qword_26478F4E0);
    sub_26460CCE8(v101, v164, &qword_27FF780C8, &qword_26478F520);
    swift_storeEnumTagMultiPayload();
    sub_2647039C0();
    sub_264784874();
    sub_26460CD50(v101, &qword_27FF780C8, &qword_26478F520);
    v102 = v99;
    v103 = &qword_27FF78098;
    v104 = &unk_26478F4E8;
LABEL_25:
    sub_26460CD50(v102, v103, v104);
    goto LABEL_26;
  }

  if (v83 != 3)
  {
    if (v83 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v85 = v81;
      sub_264783ED4();

      sub_26460CD50(v196, &qword_27FF781D0, &qword_26478F638);
      if (v183)
      {
        v86 = *(&v186 + 1);
        v87 = v187;
        v178 = v184;
        v179 = v185;
        v180 = v186;
        v181 = v187;
        v176 = v182;
        v177 = v183;
        sub_2646C6804(*(&v186 + 1), v187);
        sub_26460CD50(&v176, &qword_27FF756F8, &qword_264787DF0);
        v88 = v140;
        if (v87 >> 60 != 15)
        {
          sub_264655900(v86, v87);
          v173 = v191;
          v174 = v192;
          v175 = v193;
          sub_2646FC0F4(v88);
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78120, &qword_26478F5A8);
          (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
LABEL_22:
          sub_26460CCE8(v88, v147, &qword_27FF780D0, &qword_26478F528);
          swift_storeEnumTagMultiPayload();
          sub_264703DEC(&qword_27FF78110, &qword_27FF780D0, &qword_26478F528, sub_264703B30);
          sub_264703DEC(&qword_27FF78148, &qword_27FF780A0, &qword_26478F4F8, sub_264703C24);
          v112 = v148;
          sub_264784874();
          sub_26460CCE8(v112, v159, &qword_27FF780C0, &qword_26478F518);
          swift_storeEnumTagMultiPayload();
          sub_264703A4C();
          sub_264703D34();
          v113 = v160;
          sub_264784874();
          sub_26460CD50(v112, &qword_27FF780C0, &qword_26478F518);
          sub_26460CCE8(v113, v164, &qword_27FF780C8, &qword_26478F520);
          swift_storeEnumTagMultiPayload();
          sub_2647039C0();
          sub_264784874();
          sub_26460CD50(v113, &qword_27FF780C8, &qword_26478F520);
          sub_26460CD50(v88, &qword_27FF780D0, &qword_26478F528);
          goto LABEL_26;
        }
      }

      else
      {
        v178 = v184;
        v179 = v185;
        v180 = v186;
        v181 = v187;
        v176 = v182;
        v177 = v183;
        sub_26460CD50(&v176, &qword_27FF756F8, &qword_264787DF0);
        v88 = v140;
      }

      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78120, &qword_26478F5A8);
      (*(*(v111 - 8) + 56))(v88, 1, 1, v111);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

LABEL_14:
  swift_storeEnumTagMultiPayload();
  sub_264703DEC(&qword_27FF78170, &qword_27FF78098, &unk_26478F4E8, sub_264703E68);
  v95 = v84;
  v96 = v156;
  sub_264784874();
  sub_26460CCE8(v96, v159, &qword_27FF78090, &qword_26478F4E0);
  swift_storeEnumTagMultiPayload();
  sub_264703A4C();
  sub_264703D34();
  v97 = v160;
  sub_264784874();
  v98 = v96;
  v84 = v95;
  sub_26460CD50(v98, &qword_27FF78090, &qword_26478F4E0);
  sub_26460CCE8(v97, v164, &qword_27FF780C8, &qword_26478F520);
  swift_storeEnumTagMultiPayload();
  sub_2647039C0();
  sub_264784874();
  sub_26460CD50(v97, &qword_27FF780C8, &qword_26478F520);
LABEL_26:
  v128 = v166;
  sub_26460CCE8(v172, v166, &qword_27FF780F0, &qword_26478F550);
  v129 = v171;
  v130 = v168;
  sub_26460CCE8(v171, v168, &qword_27FF780E0, &qword_26478F538);
  v131 = v169;
  sub_26460CCE8(v84, v169, &qword_27FF780D8, &qword_26478F530);
  v132 = v84;
  v133 = v170;
  sub_26460CCE8(v128, v170, &qword_27FF780F0, &qword_26478F550);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF781C0, &qword_26478F5E8);
  sub_26460CCE8(v130, v133 + *(v134 + 48), &qword_27FF780E0, &qword_26478F538);
  sub_26460CCE8(v131, v133 + *(v134 + 64), &qword_27FF780D8, &qword_26478F530);
  sub_26460CD50(v132, &qword_27FF780D8, &qword_26478F530);
  sub_26460CD50(v129, &qword_27FF780E0, &qword_26478F538);
  sub_26460CD50(v172, &qword_27FF780F0, &qword_26478F550);
  sub_26460CD50(v131, &qword_27FF780D8, &qword_26478F530);
  sub_26460CD50(v130, &qword_27FF780E0, &qword_26478F538);
  return sub_26460CD50(v128, &qword_27FF780F0, &qword_26478F550);
}

uint64_t sub_2646FBA5C(uint64_t a1)
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22[-v9];
  v11 = *(a1 + 8);
  v12 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_26460CCE8(v10, v6, &qword_27FF766A8, &unk_26478AA80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v13 - 8) + 56))(v6, 0, 3, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_264783EC4();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_2647031F4(0, v17[2] + 1, 1, v17, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_2647031F4(v19 > 1, v20 + 1, 1, v17, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  sub_264706140(v6, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v14(v22, 0);

  return sub_26460CD50(v10, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_2646FBD74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783B94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_264785704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v1[1];
  v22[0] = *v1;
  v22[1] = v7;
  v22[2] = v1[2];
  v30 = v22[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *(&v22[0] + 1);
  sub_264783ED4();

  v9 = sub_26460CD50(&v30, &qword_27FF781D0, &qword_26478F638);
  v31[2] = v21[1];
  v31[3] = v21[2];
  v31[4] = v21[3];
  v31[5] = v21[4];
  v31[0] = v20;
  v31[1] = v21[0];
  if (*&v21[0])
  {
    v23 = v20;
    v24 = *&v21[0];
    v26 = *(&v21[1] + 8);
    v27 = *(&v21[2] + 8);
    v28 = *(&v21[3] + 8);
    v29 = *(&v21[4] + 1);
    v25 = *(v21 + 8);
    MEMORY[0x28223BE20](v9);
    *&v19[-16] = v22;
    *&v19[-8] = &v23;
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    *&v20 = sub_264785754();
    *(&v20 + 1) = v12;
    sub_264613FC4();
    *&v20 = sub_264784E44();
    *(&v20 + 1) = v13;
    LOBYTE(v21[0]) = v14 & 1;
    *(&v21[0] + 1) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783E8, &qword_26478FDD0);
    sub_26460CDF0(&qword_27FF783F0, &qword_27FF783E8, &qword_26478FDD0);
    sub_264785444();
    sub_26460CD50(v31, &qword_27FF756F8, &qword_264787DF0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783E0, &qword_26478FDC8);
  return (*(*(v17 - 8) + 56))(a1, v16, 1, v17);
}

uint64_t sub_2646FC0F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783B94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_264785704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v1[1];
  v27[0] = *v1;
  v27[1] = v7;
  v27[2] = v1[2];
  v28 = v27[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *(&v27[0] + 1);
  sub_264783ED4();
  sub_26460CD50(&v28, &qword_27FF781D0, &qword_26478F638);

  v9 = v23;
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v8;
    sub_264783ED4();
    sub_26460CD50(&v28, &qword_27FF781D0, &qword_26478F638);

    v12 = v23;
    MEMORY[0x28223BE20](v11);
    *&v22[-32] = v27;
    *&v22[-24] = v9;
    *&v22[-16] = v12;
    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v23 = sub_264785754();
    v24 = v15;
    sub_264613FC4();
    v23 = sub_264784E44();
    v24 = v16;
    v25 = v17 & 1;
    v26 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78140, &qword_26478F5B8);
    sub_26460CDF0(&qword_27FF78138, &qword_27FF78140, &qword_26478F5B8);
    sub_264785444();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78130, &qword_26478F5B0);
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_2646FC470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_264783AF4();
  v7 = *(*(v6 - 8) + 16);
  v7(a3, a1, v6);
  v8 = type metadata accessor for TimerInfoView();
  result = (v7)(a3 + *(v8 + 20), a2, v6);
  *(a3 + *(v8 + 24)) = 1;
  return result;
}

uint64_t sub_2646FC51C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264783B94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_264785704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  sub_264783ED4();

  if (v32)
  {
    v9 = *(&v36 + 1);
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;

    v10 = sub_26460CD50(&v25, &qword_27FF756F8, &qword_264787DF0);
    if (v9)
    {
      MEMORY[0x28223BE20](v10);
      *(&v20 - 2) = v9;
      sub_264785694();
      sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      v21 = sub_264785754();
      v22 = v13;
      sub_264613FC4();
      v21 = sub_264784E44();
      v22 = v14;
      v23 = v15 & 1;
      v24 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78190, &qword_26478F5D0);
      sub_264703F00();
      sub_264785444();

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78180, &qword_26478F5C8);
      return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    }
  }

  else
  {
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    sub_26460CD50(&v25, &qword_27FF756F8, &qword_264787DF0);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78180, &qword_26478F5C8);
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_2646FC8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783F8, &qword_26478FDD8);
  v136 = *(v5 - 8);
  v137 = v5;
  v6 = *(v136 + 64);
  MEMORY[0x28223BE20](v5);
  v122 = (&v120 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78400, &qword_26478FDE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v141 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v139 = &v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78408, &qword_26478FDE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v140 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v138 = &v120 - v17;
  v18 = sub_2647849E4();
  v126 = *(v18 - 8);
  v127 = v18;
  v19 = *(v126 + 64);
  MEMORY[0x28223BE20](v18);
  v125 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2647846B4();
  v149 = *(v21 - 8);
  v150 = v21;
  v22 = *(v149 + 64);
  MEMORY[0x28223BE20](v21);
  v148 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_264784AA4();
  v143 = *(v145 - 8);
  v24 = *(v143 + 64);
  MEMORY[0x28223BE20](v145);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78410, &qword_26478FDF0);
  v146 = *(v27 - 8);
  v147 = v27;
  v28 = *(v146 + 64);
  MEMORY[0x28223BE20](v27);
  v144 = &v120 - v29;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78418, &qword_26478FDF8);
  v134 = *(v151 - 8);
  v30 = *(v134 + 64);
  v31 = MEMORY[0x28223BE20](v151);
  v123 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v133 = &v120 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78420, &qword_26478FE00);
  v131 = *(v34 - 8);
  v132 = v34;
  v35 = *(v131 + 64);
  MEMORY[0x28223BE20](v34);
  v124 = &v120 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78428, &qword_26478FE08);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v135 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v153 = &v120 - v41;
  v128 = a1;
  v42 = *(a1 + 8);
  v43 = v42 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel;
  swift_beginAccess();
  v152 = v43;
  v44 = *(*(v43 + 8) + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v45 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  swift_beginAccess();
  v154 = v42;
  v130 = v45;
  v46 = *(v42 + v45);
  v47 = objc_allocWithZone(type metadata accessor for PhoneCacheInfoViewModel());
  v48 = *a2;
  v129 = v26;
  if (v48)
  {
    v49 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v47[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    v50 = v47;
    swift_beginAccess();
    *&v50[v49] = v44;
    v51 = &v50[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v52 = *(a2 + 16);
    *v51 = *a2;
    v51[1] = v52;
    v53 = *(a2 + 32);
    v54 = *(a2 + 48);
    v55 = *(a2 + 80);
    v51[4] = *(a2 + 64);
    v51[5] = v55;
    v51[2] = v53;
    v51[3] = v54;
    v50[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = v46;
    v56 = v44;
    sub_26467A834(a2, &v157);
    v57 = type metadata accessor for DeviceCacheInfoViewModel();
    v155.receiver = v50;
    v155.super_class = v57;
    v58 = objc_msgSendSuper2(&v155, sel_init);
    sub_264703CEC(&qword_27FF76538, type metadata accessor for DeviceCacheInfoViewModel);
    v121 = v58;
    v157 = sub_264784174();
    v158 = v59;
    sub_264784A94();
    v60 = sub_2647065EC();
    v61 = v144;
    sub_264784FF4();
    (*(v143 + 8))(v26, v145);

    v62 = v148;
    sub_2647846A4();
    v157 = &type metadata for DeviceCacheInfoView;
    v158 = v60;
    swift_getOpaqueTypeConformance2();
    v63 = v123;
    v64 = v147;
    sub_264785024();
    (*(v149 + 8))(v62, v150);
    (*(v146 + 8))(v61, v64);
    v65 = swift_allocObject();
    v66 = v128;
    v67 = v128[1];
    v65[1] = *v128;
    v65[2] = v67;
    v65[3] = v66[2];
    sub_2647040B0(v66, &v157);
    v68 = v125;
    sub_2647849D4();
    v69 = v133;
    v70 = v151;
    sub_264784234();

    (*(v126 + 8))(v68, v127);
    sub_26460CD50(v63, &qword_27FF78418, &qword_26478FDF8);
    v71 = swift_allocObject();
    v72 = v66[1];
    v71[1] = *v66;
    v71[2] = v72;
    v71[3] = v66[2];
    sub_2647040B0(v66, &v157);
    sub_2647066C4();
    v73 = v124;
    sub_264784F14();

    sub_26460CD50(v69, &qword_27FF78418, &qword_26478FDF8);
    v75 = v131;
    v74 = v132;
    v76 = v153;
    (*(v131 + 32))(v153, v73, v132);
    v77 = 0;
    v78 = v70;
    v79 = v74;
    v80 = v75;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v77 = 1;
    v76 = v153;
    v78 = v151;
    v79 = v132;
    v69 = v133;
    v80 = v131;
  }

  (*(v80 + 56))(v76, v77, 1, v79);
  v81 = *(*(v152 + 8) + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  v82 = *(v154 + v130);
  v83 = objc_allocWithZone(type metadata accessor for WatchCacheInfoViewModel());
  v84 = v139;
  if (*(a2 + 8))
  {
    v85 = OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact;
    *&v83[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_contact] = 0;
    v86 = v83;
    swift_beginAccess();
    *&v86[v85] = v81;
    v87 = &v86[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_safetyCache];
    v88 = *(a2 + 16);
    *v87 = *a2;
    v87[1] = v88;
    v89 = *(a2 + 32);
    v90 = *(a2 + 48);
    v91 = *(a2 + 80);
    v87[4] = *(a2 + 64);
    v87[5] = v91;
    v87[2] = v89;
    v87[3] = v90;
    v86[OBJC_IVAR____TtC15SafetyMonitorUI24DeviceCacheInfoViewModel_isTransparencyMode] = v82;
    sub_26467A834(a2, &v157);
    v92 = type metadata accessor for DeviceCacheInfoViewModel();
    v156.receiver = v86;
    v156.super_class = v92;
    v93 = v81;
    v94 = objc_msgSendSuper2(&v156, sel_init);
    sub_264703CEC(&qword_27FF76538, type metadata accessor for DeviceCacheInfoViewModel);
    v95 = v94;
    v157 = sub_264784174();
    v158 = v96;
    v97 = v129;
    sub_264784A94();
    v98 = sub_2647065EC();
    v99 = v144;
    sub_264784FF4();
    (*(v143 + 8))(v97, v145);

    v100 = v148;
    sub_2647846A4();
    v157 = &type metadata for DeviceCacheInfoView;
    v158 = v98;
    swift_getOpaqueTypeConformance2();
    v101 = v147;
    sub_264785024();

    v102 = v100;
    v78 = v151;
    (*(v149 + 8))(v102, v150);
    (*(v146 + 8))(v99, v101);
    v103 = v138;
    sub_26460E7E4(v69, v138, &qword_27FF78418, &qword_26478FDF8);
    v104 = 0;
  }

  else
  {
    swift_deallocPartialClassInstance();
    v104 = 1;
    v103 = v138;
  }

  (*(v134 + 56))(v103, v104, 1, v78);
  v105 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  v106 = v154;
  swift_beginAccess();
  sub_26460CCE8(v106 + v105, &v159, &qword_27FF75710, &qword_264787E40);
  if (!v160)
  {
    sub_26460CD50(&v159, &qword_27FF75710, &qword_264787E40);
LABEL_12:
    (*(v136 + 56))(v84, 1, 1, v137);
    goto LABEL_13;
  }

  sub_264689B0C(&v159, &v157);
  v107 = *(*(v152 + 8) + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact);
  if (!v107)
  {
    __swift_destroy_boxed_opaque_existential_0(&v157);
    goto LABEL_12;
  }

  v108 = v107;
  v109 = sub_2647845C4();
  v110 = v122;
  *v122 = v109;
  *(v110 + 8) = 0;
  *(v110 + 16) = 1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78438, &qword_26478FE18);
  sub_2646FDCDC(&v157, v108, v110 + *(v111 + 44));

  sub_26460E7E4(v110, v84, &qword_27FF783F8, &qword_26478FDD8);
  (*(v136 + 56))(v84, 0, 1, v137);
  __swift_destroy_boxed_opaque_existential_0(&v157);
LABEL_13:
  v112 = v84;
  v113 = v135;
  sub_26460CCE8(v76, v135, &qword_27FF78428, &qword_26478FE08);
  v114 = v140;
  sub_26460CCE8(v103, v140, &qword_27FF78408, &qword_26478FDE8);
  v115 = v103;
  v116 = v141;
  sub_26460CCE8(v84, v141, &qword_27FF78400, &qword_26478FDE0);
  v117 = v142;
  sub_26460CCE8(v113, v142, &qword_27FF78428, &qword_26478FE08);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78430, &qword_26478FE10);
  sub_26460CCE8(v114, v117 + *(v118 + 48), &qword_27FF78408, &qword_26478FDE8);
  sub_26460CCE8(v116, v117 + *(v118 + 64), &qword_27FF78400, &qword_26478FDE0);
  sub_26460CD50(v112, &qword_27FF78400, &qword_26478FDE0);
  sub_26460CD50(v115, &qword_27FF78408, &qword_26478FDE8);
  sub_26460CD50(v153, &qword_27FF78428, &qword_26478FE08);
  sub_26460CD50(v116, &qword_27FF78400, &qword_26478FDE0);
  sub_26460CD50(v114, &qword_27FF78408, &qword_26478FDE8);
  return sub_26460CD50(v113, &qword_27FF78428, &qword_26478FE08);
}

uint64_t sub_2646FD70C()
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = &v28 - v11;
  v28 = *(v0 + 8);
  v12 = &v28[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  v13 = *(v12 + 1);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v15 = v13;
  sub_264783ED4();

  v16 = v33;
  v17 = *(v33 + 2);
  if (!v17)
  {
LABEL_14:

    v17 = v32;
    (*(v5 + 56))(v32, 1, 1, v31);
    return sub_26460CD50(v17, &qword_27FF766A8, &unk_26478AA80);
  }

  v18 = 0;
  v19 = &v33[(*(v5 + 80) + 32) & ~*(v5 + 80)];
  v20 = 0x6F6C6E557473616CLL;
  while (1)
  {
    if (v18 >= *(v16 + 2))
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_264706858(v19 + *(v5 + 72) * v18, v8, type metadata accessor for SafetyCacheMapView.Annotation);
    v21 = v8[24];
    if (v21 <= 2)
    {
      break;
    }

    if (v21 == 3)
    {
      KeyPath = 0xEA0000000000746ELL;
    }

    else
    {
      KeyPath = 0xE700000000000000;
    }

LABEL_12:
    v1 = sub_264785E84();

    if (v1)
    {
      goto LABEL_16;
    }

    ++v18;
    sub_26470510C(v8, type metadata accessor for SafetyCacheMapView.Annotation);
    if (v17 == v18)
    {
      goto LABEL_14;
    }
  }

  if (!v8[24])
  {
    KeyPath = 0xEB000000006E6F69;
    goto LABEL_12;
  }

  if (v21 == 2)
  {
    KeyPath = 0xED00006E6F697461;
    goto LABEL_12;
  }

LABEL_16:

  v17 = v32;
  sub_264706140(v8, v32, type metadata accessor for SafetyCacheMapView.Annotation);
  (*(v5 + 56))(v17, 0, 1, v31);
  v19 = v29;
  sub_26460CCE8(v17, v29, &qword_27FF766A8, &unk_26478AA80);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v22 - 8) + 56))(v19, 0, 3, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v28;
  v20 = sub_264783EC4();
  KeyPath = v23;
  v1 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *KeyPath = v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_22:
  v1 = sub_2647031F4(0, *(v1 + 16) + 1, 1, v1, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
  *KeyPath = v1;
LABEL_17:
  v26 = *(v1 + 16);
  v25 = *(v1 + 24);
  if (v26 >= v25 >> 1)
  {
    v1 = sub_2647031F4(v25 > 1, v26 + 1, 1, v1, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *KeyPath = v1;
  }

  *(v1 + 16) = v26 + 1;
  sub_264706140(v19, v1 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, type metadata accessor for SafetyMonitorUINavigationPathItem);
  (v20)(&v33, 0);

  return sub_26460CD50(v17, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_2646FDCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78450, &qword_26478FE20);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v23[-v12];
  sub_264689A40(a1, v25);
  v14 = swift_allocObject();
  sub_264689B0C(v25, v14 + 16);
  v24 = a2;
  sub_264785334();
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_0(a1, v15);
  LOBYTE(a1) = (*(v16 + 8))(v15, v16);
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (a1 & 1) == 0;
  v19 = &v13[*(v7 + 44)];
  *v19 = KeyPath;
  v19[1] = sub_264664980;
  v19[2] = v18;
  sub_26460CCE8(v13, v11, &qword_27FF78450, &qword_26478FE20);
  *a3 = 0;
  *(a3 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78458, &qword_26478FE58);
  sub_26460CCE8(v11, a3 + *(v20 + 48), &qword_27FF78450, &qword_26478FE20);
  v21 = a3 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_26460CD50(v13, &qword_27FF78450, &qword_26478FE20);
  return sub_26460CD50(v11, &qword_27FF78450, &qword_26478FE20);
}

uint64_t sub_2646FDF24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2647856E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2647856D4();
  sub_2647856C4();
  sub_264785B14();
  sub_2647856B4();

  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  result = sub_264784E44();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_2646FE128()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77A00, &qword_26478FDC0);
  sub_264783B64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF781A0, &qword_26478F5D8);
  sub_26460CDF0(&qword_27FF783D0, &qword_27FF77A00, &qword_26478FDC0);
  sub_264703F84();
  sub_26470653C();
  return sub_264785434();
}

uint64_t sub_2646FE220@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *(swift_allocObject() + 16) = v3;
  type metadata accessor for SafetyCacheWorkoutEventRowViewModel();
  sub_264703CEC(&qword_27FF78250, type metadata accessor for SafetyCacheWorkoutEventRowViewModel);
  v4 = v3;
  v5 = sub_264784374();
  v7 = v6;

  v8 = sub_264783FA4();

  v9 = sub_264783E54();

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v8;
  return result;
}

uint64_t sub_2646FE368@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v63 = a2;
  v66 = a3;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78378, &qword_26478FCE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = v3 - 8;
  v61 = v3 - 8;
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78380, &qword_26478FCE8);
  v11 = *(v10 - 8);
  v62 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v57 = sub_2647845C4();
  LOBYTE(v70) = 1;
  sub_2646FEAE0(0, &v111);
  v93 = v119;
  v94 = v120;
  v95 = v121;
  v89 = v115;
  v90 = v116;
  v91 = v117;
  v92 = v118;
  v85 = v111;
  v86 = v112;
  v87 = v113;
  v88 = v114;
  v97[8] = v119;
  v97[9] = v120;
  v97[10] = v121;
  v97[4] = v115;
  v97[5] = v116;
  v97[6] = v117;
  v97[7] = v118;
  v97[0] = v111;
  v97[1] = v112;
  v96 = v122;
  v98 = v122;
  v97[2] = v113;
  v97[3] = v114;
  sub_26460CCE8(&v85, &v99, &qword_27FF78388, &qword_26478FCF0);
  sub_26460CD50(v97, &qword_27FF78388, &qword_26478FCF0);
  *(&v84[8] + 7) = v93;
  *(&v84[9] + 7) = v94;
  *(&v84[10] + 7) = v95;
  *(&v84[4] + 7) = v89;
  *(&v84[5] + 7) = v90;
  *(&v84[6] + 7) = v91;
  *(&v84[7] + 7) = v92;
  *(v84 + 7) = v85;
  *(&v84[1] + 7) = v86;
  *(&v84[2] + 7) = v87;
  *(&v84[11] + 7) = v96;
  *(&v84[3] + 7) = v88;
  v56 = v70;
  v17 = sub_264785504();
  v54 = v18;
  v55 = v17;
  v19 = &v16[*(v5 + 44)];
  v20 = sub_2647851A4();
  *&v99 = swift_getKeyPath();
  *(&v99 + 1) = v20;
  LOBYTE(v100) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = v67;
  v23 = v67[1];
  *(v21 + 24) = *v67;
  *(v21 + 40) = v23;
  *(v21 + 56) = *(v22 + 32);
  sub_2647040B0(v22, &v111);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78390, &qword_26478FCF8);
  v59 = sub_2647062A8();
  sub_264784F14();

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783B8, &qword_26478FD18);
  v24 = &v19[*(v58 + 36)];
  v25 = v54;
  *v24 = v55;
  v24[1] = v25;
  v26 = v84[2];
  *(v16 + 65) = v84[3];
  *(v16 + 49) = v26;
  v27 = v84[0];
  *(v16 + 33) = v84[1];
  *(v16 + 17) = v27;
  v28 = v84[6];
  *(v16 + 129) = v84[7];
  *(v16 + 113) = v28;
  v29 = v84[4];
  *(v16 + 97) = v84[5];
  *(v16 + 81) = v29;
  *(v16 + 12) = *(&v84[10] + 15);
  v30 = v84[9];
  *(v16 + 177) = v84[10];
  v31 = v84[8];
  *(v16 + 161) = v30;
  *v16 = v57;
  *(v16 + 1) = 0;
  v16[16] = v56;
  *(v16 + 145) = v31;
  v32 = swift_allocObject();
  v33 = v67;
  v34 = v67[1];
  *(v32 + 1) = *v67;
  *(v32 + 2) = v34;
  *(v32 + 3) = v33[2];
  v35 = &v16[*(v62 + 44)];
  *v35 = sub_264706470;
  v35[1] = v32;
  sub_2647040B0(v33, &v111);
  v62 = sub_2647845C4();
  v83 = 1;
  sub_2646FEAE0(1, &v70);
  v107 = v78;
  v108 = v79;
  v109 = v80;
  v103 = v74;
  v104 = v75;
  v105 = v76;
  v106 = v77;
  v99 = v70;
  v100 = v71;
  v101 = v72;
  v102 = v73;
  v119 = v78;
  v120 = v79;
  v121 = v80;
  v115 = v74;
  v116 = v75;
  v117 = v76;
  v118 = v77;
  v111 = v70;
  v112 = v71;
  v110 = v81;
  v122 = v81;
  v113 = v72;
  v114 = v73;
  sub_26460CCE8(&v99, v68, &qword_27FF78388, &qword_26478FCF0);
  sub_26460CD50(&v111, &qword_27FF78388, &qword_26478FCF0);
  *(&v82[8] + 7) = v107;
  *(&v82[9] + 7) = v108;
  *(&v82[10] + 7) = v109;
  *(&v82[4] + 7) = v103;
  *(&v82[5] + 7) = v104;
  *(&v82[6] + 7) = v105;
  *(&v82[7] + 7) = v106;
  *(v82 + 7) = v99;
  *(&v82[1] + 7) = v100;
  *(&v82[2] + 7) = v101;
  *(&v82[11] + 7) = v110;
  *(&v82[3] + 7) = v102;
  LOBYTE(v5) = v83;
  v63 = sub_264785504();
  v37 = v36;
  v38 = &v9[*(v61 + 44)];
  v39 = sub_2647851A4();
  v68[0] = swift_getKeyPath();
  v68[1] = v39;
  v69 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 1;
  v41 = v33[1];
  *(v40 + 24) = *v33;
  *(v40 + 40) = v41;
  *(v40 + 56) = v33[2];
  sub_2647040B0(v33, &v70);
  sub_264784F14();

  v42 = &v38[*(v58 + 36)];
  *v42 = v63;
  v42[1] = v37;
  v43 = v82[9];
  *(v9 + 145) = v82[8];
  *(v9 + 161) = v43;
  *(v9 + 177) = v82[10];
  *(v9 + 12) = *(&v82[10] + 15);
  v44 = v82[5];
  *(v9 + 81) = v82[4];
  *(v9 + 97) = v44;
  v45 = v82[7];
  *(v9 + 113) = v82[6];
  *(v9 + 129) = v45;
  v46 = v82[1];
  *(v9 + 17) = v82[0];
  *(v9 + 33) = v46;
  v47 = v82[3];
  *(v9 + 49) = v82[2];
  *v9 = v62;
  *(v9 + 1) = 0;
  v9[16] = v5;
  *(v9 + 65) = v47;
  v48 = v64;
  sub_26460CCE8(v16, v64, &qword_27FF78380, &qword_26478FCE8);
  v49 = v65;
  sub_26460CCE8(v9, v65, &qword_27FF78378, &qword_26478FCE0);
  v50 = v66;
  sub_26460CCE8(v48, v66, &qword_27FF78380, &qword_26478FCE8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF783C0, &qword_26478FD20);
  sub_26460CCE8(v49, v50 + *(v51 + 48), &qword_27FF78378, &qword_26478FCE0);
  sub_26460CD50(v9, &qword_27FF78378, &qword_26478FCE0);
  sub_26460CD50(v16, &qword_27FF78380, &qword_26478FCE8);
  sub_26460CD50(v49, &qword_27FF78378, &qword_26478FCE0);
  return sub_26460CD50(v48, &qword_27FF78380, &qword_26478FCE8);
}

uint64_t sub_2646FEAE0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_264785E84();

    if (v3)
    {
      v4 = sub_2647851B4();
    }

    else
    {
      v4 = sub_264785164();
    }
  }

  else
  {

    v4 = sub_2647851B4();
  }

  v5 = v4;
  v6 = sub_264785274();
  KeyPath = swift_getKeyPath();

  v8 = sub_264785504();
  v17 = v9;
  v18 = v8;
  v10 = sub_264784724();
  LOBYTE(v29[0]) = 1;
  sub_2646FEE34(v20);
  *&v19[7] = v20[0];
  *&v19[23] = v20[1];
  *&v19[39] = v20[2];
  *&v19[55] = v20[3];
  v11 = v29[0];
  v12 = sub_264785274();
  v13 = sub_264785214();
  v14 = swift_getKeyPath();
  v21 = v10;
  v22[0] = v11;
  *&v22[1] = *v19;
  *&v22[49] = *&v19[48];
  *&v22[33] = *&v19[32];
  *&v22[17] = *&v19[16];
  *&v22[64] = *&v19[63];
  v24 = *v22;
  v23 = v10;
  v28 = *&v19[63];
  v27 = *&v22[48];
  v26 = *&v22[32];
  v25 = *&v22[16];

  sub_26460CCE8(&v21, v29, &qword_27FF783C8, &qword_26478FD28);

  *a2 = v6;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 24) = sub_2646FEDF0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *(a2 + 48) = v17;
  *(a2 + 88) = v25;
  *(a2 + 104) = v26;
  *(a2 + 120) = v27;
  v15 = v28;
  *(a2 + 56) = v23;
  *(a2 + 72) = v24;
  *(a2 + 136) = v15;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  *(a2 + 160) = v12;
  *(a2 + 168) = v14;
  *(a2 + 176) = v13;

  v29[0] = v10;
  v29[1] = 0;
  v30 = v11;
  v32 = *&v19[16];
  v33 = *&v19[32];
  *v34 = *&v19[48];
  *&v34[15] = *&v19[63];
  v31 = *v19;
  sub_26460CD50(v29, &qword_27FF783C8, &qword_26478FD28);
}

uint64_t sub_2646FEDF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2647851A4();
  result = sub_2647840E4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  return result;
}

void sub_2646FEE34(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v2 = v39;
  if (!v39)
  {
    v31 = 0;
LABEL_8:
    v17 = 0;
    v3 = 0;
    goto LABEL_9;
  }

  v3 = [v39 name];

  if (!v3)
  {
    v31 = 0;
    v2 = 0;
    v17 = 0;
LABEL_9:
    v27 = 0;
    v30 = 0;
    v33 = 0;
    v32 = 0;
    goto LABEL_10;
  }

  sub_264785724();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v40)
  {

    v31 = 0;
    v2 = 0;
    goto LABEL_8;
  }

  sub_264613FC4();
  v4 = sub_264784E44();
  v6 = v5;
  v8 = v7;
  sub_264784CC4();
  v9 = sub_264784E24();
  v11 = v10;
  v13 = v12;

  sub_26460ECC4(v4, v6, v8 & 1);

  sub_264785204();
  v35 = sub_264784DE4();
  v2 = v14;
  v38 = v15;
  v17 = v16;

  sub_26460ECC4(v9, v11, v13 & 1);

  v18 = sub_264784E44();
  v20 = v19;
  v22 = v21;
  sub_264784D74();
  v23 = sub_264784E24();
  v37 = v24;
  v34 = v25;

  sub_26460ECC4(v18, v20, v22 & 1);

  sub_264785214();
  v3 = sub_264784DE4();
  v27 = v26;
  v36 = v28;
  v30 = v29;

  v31 = v35;
  sub_26460ECC4(v23, v37, v34 & 1);

  sub_26460C474(v35, v2, v38 & 1);

  sub_26460C474(v3, v27, v36 & 1);

  sub_26460ECC4(v3, v27, v36 & 1);

  sub_26460ECC4(v35, v2, v38 & 1);

  v32 = v38 & 1;
  v33 = v36 & 1;
LABEL_10:
  *a1 = v31;
  a1[1] = v2;
  a1[2] = v32;
  a1[3] = v17;
  a1[4] = v3;
  a1[5] = v27;
  a1[6] = v33;
  a1[7] = v30;
}

uint64_t sub_2646FF1C4(char a1, uint64_t a2)
{
  v4 = 0xEB000000006E6F69;
  v5 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v38);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v39 = &v36 - v16;
  v40 = v9;
  if (a1)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_264785E84();
  }

  v37 = *(a2 + 8);
  v18 = v37 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel;
  swift_beginAccess();
  v19 = *(v18 + 8);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v21 = v19;
  sub_264783ED4();

  v22 = v41[0];
  v23 = *(v41[0] + 16);
  if (v23)
  {
    v36 = v6;
    v24 = 0;
    v6 = v41[0] + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    if (v17)
    {
      v25 = 0x74616E6974736564;
    }

    else
    {
      v25 = 0x636F4C7472617473;
    }

    if (v17)
    {
      v26 = 0xEB000000006E6F69;
    }

    else
    {
      v26 = 0xED00006E6F697461;
    }

    while (1)
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      sub_264706858(v6 + *(v10 + 72) * v24, v13, type metadata accessor for SafetyCacheMapView.Annotation);
      v27 = v13[24];
      if (v27 > 2)
      {
        if (v27 == 3)
        {
          KeyPath = 0xEA0000000000746ELL;
        }

        else
        {
          KeyPath = 0xE700000000000000;
        }

        goto LABEL_23;
      }

      if (!v13[24])
      {
        break;
      }

      if (v27 == 1)
      {
        KeyPath = 0xEA00000000006B63;
        goto LABEL_23;
      }

      KeyPath = 0xED00006E6F697461;
      if (v25 == 0x636F4C7472617473)
      {
        goto LABEL_22;
      }

LABEL_23:
      v4 = sub_264785E84();

      if (v4)
      {
        goto LABEL_30;
      }

      ++v24;
      sub_26470510C(v13, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v23 == v24)
      {

        v28 = 1;
        v6 = v36;
        goto LABEL_27;
      }
    }

    KeyPath = 0xEB000000006E6F69;
    if (v25 != 0x74616E6974736564)
    {
      goto LABEL_23;
    }

LABEL_22:
    if (KeyPath == v26)
    {

LABEL_30:

      v29 = v13;
      v13 = v39;
      sub_264706140(v29, v39, type metadata accessor for SafetyCacheMapView.Annotation);
      v28 = 0;
      v6 = v36;
      v22 = v40;
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v28 = 1;
LABEL_27:
  v13 = v39;
  v22 = v40;
LABEL_31:
  (*(v10 + 56))(v13, v28, 1, v38);
  sub_26460CCE8(v13, v22, &qword_27FF766A8, &unk_26478AA80);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v30 - 8) + 56))(v22, 0, 3, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = sub_264783EC4();
  KeyPath = v31;
  v4 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *KeyPath = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_36:
    v4 = sub_2647031F4(0, *(v4 + 16) + 1, 1, v4, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *KeyPath = v4;
  }

  v34 = *(v4 + 16);
  v33 = *(v4 + 24);
  if (v34 >= v33 >> 1)
  {
    v4 = sub_2647031F4(v33 > 1, v34 + 1, 1, v4, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *KeyPath = v4;
  }

  *(v4 + 16) = v34 + 1;
  sub_264706140(v22, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v23(v41, 0);

  return sub_26460CD50(v13, &qword_27FF766A8, &unk_26478AA80);
}

void sub_2646FF870(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *sub_2646FF880(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  if (*(result + 16) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_2646FF8E4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = *&a1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent];
    v5 = a1;
    v6 = [v4 location];
    if (v6)
    {

      v7 = sub_264785274();
      v8 = OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_iconColor;
      swift_beginAccess();
      v9 = *&v5[v8];

      KeyPath = swift_getKeyPath();
    }

    else
    {

      v7 = 0;
      KeyPath = 0;
      v9 = 0;
    }

    v17 = sub_264784724();
    sub_2646FFCBC(a1, &v34);
    v27 = *&v35[112];
    v28 = *&v35[128];
    v23 = *&v35[48];
    v24 = *&v35[64];
    v25 = *&v35[80];
    v26 = *&v35[96];
    v19 = v34;
    v20 = *v35;
    v21 = *&v35[16];
    v22 = *&v35[32];
    v30[8] = *&v35[112];
    v30[9] = *&v35[128];
    v30[4] = *&v35[48];
    v30[5] = *&v35[64];
    v30[6] = *&v35[80];
    v30[7] = *&v35[96];
    v30[0] = v34;
    v30[1] = *v35;
    v29 = v35[144];
    v31 = v35[144];
    v30[2] = *&v35[16];
    v30[3] = *&v35[32];
    sub_26460CCE8(&v19, &v32, &qword_27FF78258, &qword_26478FA08);
    sub_26460CD50(v30, &qword_27FF78258, &qword_26478FA08);
    *&v18[119] = v26;
    *&v18[135] = v27;
    *&v18[151] = v28;
    *&v18[55] = v22;
    *&v18[71] = v23;
    v18[167] = v29;
    *&v18[87] = v24;
    *&v18[103] = v25;
    *&v18[7] = v19;
    *&v18[23] = v20;
    *&v18[39] = v21;
    *(&v33[7] + 1) = *&v18[112];
    *(&v33[8] + 1) = *&v18[128];
    *(&v33[9] + 1) = *&v18[144];
    *(&v33[3] + 1) = *&v18[48];
    *(&v33[4] + 1) = *&v18[64];
    *(&v33[5] + 1) = *&v18[80];
    *(&v33[6] + 1) = *&v18[96];
    *(v33 + 1) = *v18;
    *(&v33[1] + 1) = *&v18[16];
    v32 = v17;
    LOBYTE(v33[0]) = 1;
    *(&v33[10] + 1) = *&v18[160];
    *(&v33[2] + 1) = *&v18[32];
    sub_26466D2FC(v7);
    sub_26460CCE8(&v32, &v34, &qword_27FF78260, &qword_26478FA10);
    sub_26466D34C(v7);
    v11 = v33[8];
    *(a2 + 152) = v33[7];
    *(a2 + 168) = v11;
    *(a2 + 184) = v33[9];
    *(a2 + 193) = *(&v33[9] + 9);
    v12 = v33[4];
    *(a2 + 88) = v33[3];
    *(a2 + 104) = v12;
    v13 = v33[6];
    *(a2 + 120) = v33[5];
    *(a2 + 136) = v13;
    v14 = v33[0];
    *(a2 + 24) = v32;
    *(a2 + 40) = v14;
    v15 = v33[2];
    *(a2 + 56) = v33[1];
    *(a2 + 72) = v15;
    *&v35[113] = *&v18[112];
    *&v35[129] = *&v18[128];
    v36 = *&v18[144];
    *&v35[49] = *&v18[48];
    *&v35[65] = *&v18[64];
    *&v35[81] = *&v18[80];
    *&v35[97] = *&v18[96];
    *&v35[1] = *v18;
    *&v35[17] = *&v18[16];
    *a2 = v7;
    *(a2 + 8) = KeyPath;
    *(a2 + 16) = v9;
    v34 = v17;
    v35[0] = 1;
    v37 = *&v18[160];
    *&v35[33] = *&v18[32];
    sub_26460CD50(&v34, &qword_27FF78260, &qword_26478FA10);
    return sub_26466D34C(v7);
  }

  else
  {
    type metadata accessor for SafetyCacheWorkoutEventRowViewModel();
    sub_264703CEC(&qword_27FF78250, type metadata accessor for SafetyCacheWorkoutEventRowViewModel);
    result = sub_264784364();
    __break(1u);
  }

  return result;
}

uint64_t sub_2646FFCBC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = &a1[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_title];
    swift_beginAccess();
    if (*(v4 + 1))
    {
      v5 = *v4;
      v6 = *(v4 + 1);
    }

    v63 = a2;
    sub_264613FC4();
    v67 = a1;

    v7 = sub_264784E44();
    v9 = v8;
    v11 = v10;
    sub_264784CC4();
    v12 = sub_264784E24();
    v14 = v13;
    v16 = v15;

    sub_26460ECC4(v7, v9, v11 & 1);

    sub_264785204();
    v17 = sub_264784DE4();
    v72 = v18;
    v73 = v17;
    v66 = v19;
    v71 = v20;

    sub_26460ECC4(v12, v14, v16 & 1);

    KeyPath = swift_getKeyPath();
    v21 = &v67[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_timeString];
    swift_beginAccess();
    v23 = *v21;
    v22 = *(v21 + 1);

    v24 = sub_264784E44();
    v26 = v25;
    LOBYTE(v9) = v27;
    sub_264784D74();
    v28 = sub_264784E24();
    v30 = v29;
    LOBYTE(v7) = v31;

    sub_26460ECC4(v24, v26, v9 & 1);

    sub_264785214();
    v68 = sub_264784DE4();
    v69 = v32;
    v65 = v33;
    v35 = v34;

    sub_26460ECC4(v28, v30, v7 & 1);

    v64 = swift_getKeyPath();
    v36 = *&v67[OBJC_IVAR____TtC15SafetyMonitorUI35SafetyCacheWorkoutEventRowViewModel_workoutEvent];
    v37 = [v36 location];

    if (v37)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v38 = sub_264784E44();
      v40 = v39;
      v42 = v41;
      sub_264784D74();
      v43 = sub_264784E24();
      v45 = v44;
      v47 = v46;

      sub_26460ECC4(v38, v40, v42 & 1);

      sub_264785214();
      v48 = sub_264784DE4();
      v50 = v49;
      v52 = v51;
      v54 = v53;

      sub_26460ECC4(v43, v45, v47 & 1);

      v55 = swift_getKeyPath();
      v56 = v48;
      v57 = v50;
      v58 = v52 & 1;
      sub_26460C474(v48, v50, v52 & 1);
      v59 = v54;

      v60 = v55;

      v61 = 2;
    }

    else
    {

      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    sub_26460C474(v73, v72, v66 & 1);

    sub_26460C474(v68, v65, v35 & 1);

    sub_264704CC4(v56, v57, v58, v59);
    sub_264704D14(v56, v57, v58, v59);
    *v63 = v73;
    *(v63 + 8) = v72;
    *(v63 + 16) = v66 & 1;
    *(v63 + 24) = v71;
    *(v63 + 32) = KeyPath;
    *(v63 + 40) = 2;
    *(v63 + 48) = 0;
    *(v63 + 56) = v68;
    *(v63 + 64) = v65;
    *(v63 + 72) = v35 & 1;
    *(v63 + 80) = v69;
    *(v63 + 88) = v64;
    *(v63 + 96) = 1;
    *(v63 + 104) = 0;
    *(v63 + 112) = v56;
    *(v63 + 120) = v57;
    *(v63 + 128) = v58;
    *(v63 + 136) = v59;
    *(v63 + 144) = v60;
    *(v63 + 152) = v61;
    *(v63 + 160) = 0;
    sub_264704D14(v56, v57, v58, v59);
    sub_26460ECC4(v68, v65, v35 & 1);

    sub_26460ECC4(v73, v72, v66 & 1);
  }

  else
  {
    type metadata accessor for SafetyCacheWorkoutEventRowViewModel();
    sub_264703CEC(&qword_27FF78250, type metadata accessor for SafetyCacheWorkoutEventRowViewModel);
    result = sub_264784364();
    __break(1u);
  }

  return result;
}

double sub_2647002DC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = sub_2647845C4();
  v30 = 1;
  sub_2646FF8E4(v3, &v15);
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v31 = v15;
  v32 = v16;
  v45[10] = v25;
  v45[11] = v26;
  v45[12] = v27;
  v45[6] = v21;
  v45[7] = v22;
  v45[8] = v23;
  v45[9] = v24;
  v45[2] = v17;
  v45[3] = v18;
  v45[4] = v19;
  v45[5] = v20;
  v44 = v28;
  v46 = v28;
  v45[0] = v15;
  v45[1] = v16;
  sub_26460CCE8(&v31, &v14, &qword_27FF78248, &qword_26478FA00);
  sub_26460CD50(v45, &qword_27FF78248, &qword_26478FA00);
  *&v29[167] = v41;
  *&v29[183] = v42;
  *&v29[199] = v43;
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[39] = v33;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[7] = v31;
  *&v29[23] = v32;
  v6 = *&v29[176];
  *(a1 + 177) = *&v29[160];
  *(a1 + 193) = v6;
  *(a1 + 209) = *&v29[192];
  v7 = *&v29[112];
  *(a1 + 113) = *&v29[96];
  *(a1 + 129) = v7;
  v8 = *&v29[144];
  *(a1 + 145) = *&v29[128];
  *(a1 + 161) = v8;
  v9 = *&v29[48];
  *(a1 + 49) = *&v29[32];
  *(a1 + 65) = v9;
  v10 = *&v29[80];
  *(a1 + 81) = *&v29[64];
  *(a1 + 97) = v10;
  result = *v29;
  v12 = *&v29[16];
  *(a1 + 17) = *v29;
  v29[215] = v44;
  v13 = v30;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 225) = *&v29[208];
  *(a1 + 33) = v12;
  return result;
}

void sub_2647004BC(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32);
  v5 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48);
  v6 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache);
  v36 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16);
  v37 = v4;
  v7 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64);
  v8 = *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80);
  v38 = v5;
  v39 = v7;
  v40 = v8;
  v35 = v6;
  v9 = v36;
  v10 = 0uLL;
  v11 = 0.0;
  if (v36)
  {
    v12 = *(&v37 + 1);
    if (*(&v37 + 1))
    {
      v13 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
      swift_beginAccess();
      if (*(a1 + v13) == 1)
      {
        sub_26460CCE8(&v35, v34, &qword_27FF756F8, &qword_264787DF0);
        v15 = v12;
        Set<>.latitudeRange.getter(v9);
        v17 = v16 * 1.25 + 0.01;
        if (v17 > 0.01)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0.01;
        }

        Set<>.longitudeRange.getter(v9);
        v20 = v19 * 1.25 + 0.01;
        if (v20 <= 0.01)
        {
          v20 = 0.01;
        }

        v33 = v20;
        *&v21 = COERCE_DOUBLE(Set<>.middleLatitude.getter(v9));
        if (v22)
        {
          [v15 latitude];
        }

        else
        {
          v23 = *&v21;
        }

        v11 = v23 - v18 * 0.0714285714;
        v29 = Set<>.middleLongitude.getter(v9);
        if (v30)
        {
          [v15 longitude];
          v32 = v31;

          sub_26460CD50(&v35, &qword_27FF756F8, &qword_264787DF0);
          v24 = 0;
          *v10.i64 = v18 / 0.7;
          v9 = v32;
        }

        else
        {
          v9 = v29;

          sub_26460CD50(&v35, &qword_27FF756F8, &qword_264787DF0);
          v24 = 0;
          *v10.i64 = v18 / 0.7;
        }

        *&v10.i64[1] = v33;
      }

      else
      {
        sub_26460CCE8(&v35, v34, &qword_27FF756F8, &qword_264787DF0);
        v25 = v12;
        [v25 latitude];
        v11 = v26;
        [v25 longitude];
        v28 = v27;

        sub_26460CD50(&v35, &qword_27FF756F8, &qword_264787DF0);
        v24 = 0;
        v9 = v28;
        v10 = vdupq_n_s64(0x3F9999999999999AuLL);
      }
    }

    else
    {
      v9 = 0;
      v24 = 1;
    }
  }

  else
  {
    v24 = 1;
  }

  *a3 = v11;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 32) = v24;
}

uint64_t sub_264700748@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a3;
  v97 = a2;
  v92 = a1;
  v94 = a5;
  v81 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v95 = *(v81 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v12 = *(*(v93 - 1) + 64);
  v13 = MEMORY[0x28223BE20](v93);
  v86 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v74 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  v17 = *(*(v80 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v80);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v74 - v21;
  v23 = type metadata accessor for SafetyCacheMapView(0);
  v24 = *(*(v23 - 1) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v88 = &v74 - v28;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78280, &qword_26478FAC8);
  v29 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v91 = &v74 - v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v31 = v11;
  v32 = v81;

  v33 = v104;
  (*(v95 + 56))(v16, 1, 1, v32);
  sub_264785404();
  sub_26460CD50(v16, &qword_27FF766A8, &unk_26478AA80);
  v93 = a4;
  sub_2647004BC(v97, a4, &v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766B8, &qword_26478F190);
  sub_264785404();
  v34 = v110;
  v83 = v111;
  v84 = v113;
  v85 = v112;
  v82 = v114;
  *v27 = v33;
  v35 = v20;
  sub_26460CCE8(v22, v27 + v23[5], &qword_27FF766E8, &unk_26478F160);
  sub_264783DE4();
  sub_26460CCE8(v22, v20, &qword_27FF766E8, &unk_26478F160);
  v36 = sub_264783E14();
  v37 = sub_2647859F4();
  if (os_log_type_enabled(v36, v37))
  {
    v76 = v37;
    v77 = v34;
    v78 = v31;
    v38 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v104 = v75;
    *v38 = 136642819;
    v39 = v86;
    v40 = v80;
    v80 = v35;
    MEMORY[0x26673F100](v40);
    if ((*(v95 + 48))(v39, 1, v32))
    {
      sub_26460CD50(v86, &qword_27FF766A8, &unk_26478AA80);
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    else
    {
      v43 = v86;
      v44 = v79;
      sub_264706858(v86, v79, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_26460CD50(v43, &qword_27FF766A8, &unk_26478AA80);
      v41 = sub_2646E9D5C();
      v42 = v45;
      sub_26470510C(v44, type metadata accessor for SafetyCacheMapView.Annotation);
    }

    sub_26460CD50(v80, &qword_27FF766E8, &unk_26478F160);
    v46 = sub_2646DF234(v41, v42, &v104);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_264605000, v36, v76, "selected annotation is %{sensitive}s", v38, 0xCu);
    v47 = v75;
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x266740650](v47, -1, -1);
    MEMORY[0x266740650](v38, -1, -1);

    (*(v89 + 8))(v78, v90);
    sub_26460CD50(v22, &qword_27FF766E8, &unk_26478F160);
    v34 = v77;
  }

  else
  {

    sub_26460CD50(v35, &qword_27FF766E8, &unk_26478F160);
    (*(v89 + 8))(v31, v90);
    sub_26460CD50(v22, &qword_27FF766E8, &unk_26478F160);
  }

  v48 = v27 + v23[6];
  v49 = v83;
  *v48 = v34;
  *(v48 + 1) = v49;
  v50 = v84;
  *(v48 + 1) = v85;
  *(v48 + 2) = v50;
  v48[48] = v82;
  *(v27 + v23[7]) = 0;
  *(v27 + v23[8]) = 0;
  *(v27 + v23[9]) = 0;
  *(v27 + v23[10]) = 0;
  *(v27 + v23[11]) = 0;
  v51 = v88;
  sub_264706140(v27, v88, type metadata accessor for SafetyCacheMapView);
  v52 = sub_2647854F4();
  v54 = v53;
  v56 = v91;
  v55 = v92;
  v57 = &v91[*(v87 + 36)];
  v58 = v97;
  v59 = v93;
  sub_264700FB8(v92, v97, v96, v93, v57);
  v60 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78290, &unk_26478FAD0) + 36));
  *v60 = v52;
  v60[1] = v54;
  sub_264706140(v51, v56, type metadata accessor for SafetyCacheMapView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v106 = v100;
  v107 = v101;
  v108 = v102;
  v109 = v103;
  v104 = v98;
  v105 = v99;
  v61 = swift_allocObject();
  v61[2] = v55;
  v61[3] = v58;
  v61[4] = v96;
  v61[5] = v59;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78268, &qword_26478FAC0);
  v63 = v94;
  v64 = (v94 + *(v62 + 36));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782A0, &qword_264792120);
  v66 = *(v65 + 36);
  v67 = v58;
  v68 = v59;
  sub_2647858C4();
  v69 = (v64 + *(v65 + 40));
  v70 = v107;
  v69[2] = v106;
  v69[3] = v70;
  v71 = v109;
  v69[4] = v108;
  v69[5] = v71;
  v72 = v105;
  *v69 = v104;
  v69[1] = v72;
  *v64 = &unk_26478FB48;
  v64[1] = v61;
  return sub_26460E7E4(v56, v63, &qword_27FF78280, &qword_26478FAC8);
}

uint64_t sub_264700FB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a2;
  v90 = a3;
  v91 = a1;
  v94 = a5;
  v87 = sub_2647849E4();
  v86 = *(v87 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782B8, &qword_26478FB50);
  v8 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v88 = &v76 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782C0, &qword_26478FB58);
  v10 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v81 = &v76 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782C8, &qword_26478FB60);
  v12 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v76 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782D0, &qword_26478FB68);
  v14 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782D8, &qword_26478FB70);
  v92 = *(v17 - 8);
  v93 = v17;
  v18 = *(v92 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  v21 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v31 = *(v27 + 36);
  if ((*(v22 + 48))(&v30[v31], 1, v21))
  {
    v32 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo;
    v33 = v30;
  }

  else
  {
    v38 = v88;
    v76 = v20;
    v77 = v16;
    v78 = a4;
    v39 = v91;
    sub_264706858(&v30[v31], v25, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
    sub_26470510C(v30, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
    v40 = [v25[2] name];
    if (v40)
    {
      v41 = v40;
      sub_264785724();

      sub_26470510C(v25, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo);
      *v38 = sub_2647845C4();
      *(v38 + 8) = 0;
      *(v38 + 16) = 1;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782E0, &qword_26478FB78);
      sub_264701834(v39, v89, v90, v78, (v38 + *(v42 + 44)));

      v43 = sub_264784C24();
      v44 = v38 + *(v79 + 36);
      *v44 = v43;
      *(v44 + 8) = 0u;
      *(v44 + 24) = 0u;
      *(v44 + 40) = 1;
      sub_264785514();
      sub_264784314();
      v45 = v81;
      sub_26460E7E4(v38, v81, &qword_27FF782B8, &qword_26478FB50);
      v46 = (v45 + *(v80 + 36));
      v47 = v100;
      v46[4] = v99;
      v46[5] = v47;
      v46[6] = v101;
      v48 = v96;
      *v46 = v95;
      v46[1] = v48;
      v49 = v98;
      v46[2] = v97;
      v46[3] = v49;
      v50 = sub_264785504();
      v52 = v51;
      v53 = v83;
      v54 = &v83[*(v82 + 36)];
      v55 = sub_2647851C4();
      KeyPath = swift_getKeyPath();
      v57 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782E8, &unk_26478FB80) + 36);
      sub_2647854A4();
      v58 = sub_264784C34();
      v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782F0, &unk_2647912F0) + 36)] = v58;
      *v54 = KeyPath;
      v54[1] = v55;
      v54[2] = 0x3FA999999999999ALL;
      v59 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782F8, &qword_26478FB90) + 36));
      *v59 = v50;
      v59[1] = v52;
      sub_26460E7E4(v45, v53, &qword_27FF782C0, &qword_26478FB58);
      v60 = swift_allocObject();
      v61 = v90;
      v62 = v91;
      v63 = v89;
      v60[2] = v91;
      v60[3] = v63;
      v64 = v78;
      v60[4] = v61;
      v60[5] = v64;
      v65 = v63;
      v66 = v64;
      v67 = v85;
      sub_2647849D4();
      sub_264705174();
      v68 = v77;
      sub_264784FD4();

      (*(v86 + 8))(v67, v87);
      sub_26460CD50(v53, &qword_27FF782C8, &qword_26478FB60);
      v69 = swift_allocObject();
      v69[2] = v62;
      v69[3] = v65;
      v69[4] = v61;
      v69[5] = v66;
      sub_264705370();
      v70 = v65;
      v71 = v66;
      v72 = v76;
      sub_264784F14();

      sub_26460CD50(v68, &qword_27FF782D0, &qword_26478FB68);
      v37 = v92;
      v73 = v93;
      v74 = v94;
      (*(v92 + 32))(v94, v72, v93);
      v36 = v73;
      v35 = v74;
      v34 = 0;
      return (*(v37 + 56))(v35, v34, 1, v36);
    }

    v32 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo;
    v33 = v25;
  }

  sub_26470510C(v33, v32);
  v34 = 1;
  v36 = v93;
  v35 = v94;
  v37 = v92;
  return (*(v37 + 56))(v35, v34, 1, v36);
}

uint64_t sub_264701834@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X4>, char *a4@<X5>, uint64_t *a5@<X8>)
{
  v36 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78340, &qword_26478FBF8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v39 = sub_264785274();
  v38 = sub_264785174();
  KeyPath = swift_getKeyPath();
  *v15 = sub_264784724();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78348, &qword_26478FC00);
  sub_264701C08(a1, a2, a3, a4, &v15[*(v16 + 44)]);
  v17 = &a4[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v18 = *&a4[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 48];
  v49 = *&a4[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 32];
  v50 = v18;
  v19 = *&a4[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 80];
  v51 = *&a4[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 64];
  v52 = v19;
  v20 = *&a4[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache + 16];
  v48[0] = *&a4[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  v48[1] = v20;
  v21 = *(&v49 + 1);
  if (!v20)
  {
    v41 = *v17;
    v42 = 0;
    v43 = *(v17 + 24);
    v44 = *(&v49 + 1);
    v26 = *(v17 + 4);
    v45 = *(v17 + 3);
    v46 = v26;
    v47 = *(v17 + 5);
    sub_26460CCE8(v48, v40, &qword_27FF756F8, &qword_264787DF0);
    sub_26460CD50(&v41, &qword_27FF756F8, &qword_264787DF0);
    v21 = 0;
    goto LABEL_5;
  }

  v41 = *v17;
  v42 = v20;
  v43 = *(v17 + 24);
  v44 = *(&v49 + 1);
  v22 = *(v17 + 4);
  v45 = *(v17 + 3);
  v46 = v22;
  v47 = *(v17 + 5);
  sub_26460CCE8(v48, v40, &qword_27FF756F8, &qword_264787DF0);
  v23 = v21;
  sub_26460CD50(&v41, &qword_27FF756F8, &qword_264787DF0);
  if (!v21)
  {
LABEL_5:
    v25 = 0;
    v24 = 0;
    goto LABEL_6;
  }

  v21 = sub_264785274();
  v24 = sub_264785214();
  v25 = swift_getKeyPath();

LABEL_6:
  sub_26460CCE8(v15, v13, &qword_27FF78340, &qword_26478FBF8);
  v27 = v38;
  v35 = v15;
  v29 = v36;
  v28 = KeyPath;
  *v36 = v39;
  v29[1] = v28;
  v29[2] = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78350, &qword_26478FC08);
  sub_26460CCE8(v13, v29 + v30[12], &qword_27FF78340, &qword_26478FBF8);
  v31 = v29 + v30[16];
  *v31 = 0;
  v31[8] = 1;
  v32 = (v29 + v30[20]);

  sub_26466D2FC(v21);
  sub_26466D34C(v21);
  *v32 = v21;
  v32[1] = v25;
  v32[2] = v24;
  sub_26460CD50(v35, &qword_27FF78340, &qword_26478FBF8);
  sub_26466D34C(v21);
  sub_26460CD50(v13, &qword_27FF78340, &qword_26478FBF8);
}

uint64_t sub_264701C08@<X0>(uint64_t a1@<X2>, void *a2@<X3>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  v67 = a3;
  v68 = a4;
  v65 = a1;
  v66 = a2;
  v72 = a5;
  v5 = sub_264784AE4();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76588, &qword_26478A690);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v58 - v15;
  v16 = sub_264783B94();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_264785704();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_2647856E4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  sub_2647856D4();
  sub_2647856C4();
  sub_2647856B4();
  sub_2647856C4();
  sub_2647856F4();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v74 = sub_264785754();
  v75 = v24;
  sub_264613FC4();
  v25 = sub_264784E44();
  v27 = v26;
  v29 = v28;
  sub_264784CC4();
  v30 = sub_264784E24();
  v32 = v31;
  v34 = v33;

  sub_26460ECC4(v25, v27, v29 & 1);

  sub_264785204();
  v35 = sub_264784DE4();
  v59 = v36;
  v60 = v37;
  v61 = v38;

  sub_26460ECC4(v30, v32, v34 & 1);

  v39 = v10;
  sub_264784AD4();
  v40 = swift_allocObject();
  v41 = v66;
  v40[2] = v65;
  v40[3] = v41;
  v42 = v68;
  v40[4] = v67;
  v40[5] = v42;
  v43 = v63;
  v44 = v64;
  (*(v63 + 16))(v62, v10, v64);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_2647061A8;
  *(v45 + 24) = v40;
  v46 = v41;
  v47 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76590, &qword_26478A698);
  sub_264703CEC(&qword_27FF76598, MEMORY[0x277CE0818]);
  sub_26466D4BC();
  v48 = v73;
  sub_264784024();
  (*(v43 + 8))(v39, v44);
  v50 = v69;
  v49 = v70;
  v51 = *(v70 + 16);
  v52 = v71;
  v51(v69, v48, v71);
  v53 = v72;
  v54 = v59;
  *v72 = v35;
  v53[1] = v54;
  LOBYTE(v40) = v60 & 1;
  *(v53 + 16) = v60 & 1;
  v53[3] = v61;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78358, &unk_26478FC10);
  v51(v53 + *(v55 + 48), v50, v52);
  sub_26460C474(v35, v54, v40);
  v56 = *(v49 + 8);

  v56(v73, v52);
  v56(v50, v52);
  sub_26460ECC4(v35, v54, v40);
}

uint64_t sub_2647021FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40[0] = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264785704();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2647856E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_264783AF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v48 && *(&v49 + 1))
  {
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    v14 = *(&v49 + 1);
    sub_26460CD50(&v41, &qword_27FF756F8, &qword_264787DF0);
    v15 = [v14 date];

    sub_264783AC4();
    v16 = sub_264783A64();
    v17 = [v16 preciseFormattedTime];

    sub_264785724();
    (*(v10 + 8))(v13, v9);
    sub_2647856D4();
    sub_2647856C4();
    sub_2647856B4();

    sub_2647856C4();
    sub_2647856F4();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v40[3] = sub_264785754();
    v40[4] = v20;
    sub_264613FC4();
    v21 = sub_264784E44();
    v23 = v22;
    v25 = v24;
    sub_264784D74();
    v26 = sub_264784E24();
    v28 = v27;
    v30 = v29;

    sub_26460ECC4(v21, v23, v25 & 1);

    sub_264785214();
    v31 = sub_264784DE4();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_26460ECC4(v26, v28, v30 & 1);

    v39 = v35 & 1;
  }

  else
  {
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    v41 = v47;
    v42 = v48;
    result = sub_26460CD50(&v41, &qword_27FF756F8, &qword_264787DF0);
    v31 = 0;
    v33 = 0;
    v39 = 0;
    v37 = 0;
  }

  *a1 = v31;
  a1[1] = v33;
  a1[2] = v39;
  a1[3] = v37;
  return result;
}

uint64_t sub_2647026BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[58] = a3;
  v4[59] = a4;
  v4[56] = a1;
  v4[57] = a2;
  v5 = sub_264785594();
  v4[60] = v5;
  v6 = *(v5 - 8);
  v4[61] = v6;
  v7 = *(v6 + 64) + 15;
  v4[62] = swift_task_alloc();
  v8 = sub_2647855C4();
  v4[63] = v8;
  v9 = *(v8 - 8);
  v4[64] = v9;
  v10 = *(v9 + 64) + 15;
  v4[65] = swift_task_alloc();
  sub_2647858B4();
  v4[66] = sub_2647858A4();
  v12 = sub_264785874();

  return MEMORY[0x2822009F8](sub_264702810, v12, v11);
}

uint64_t sub_264702810()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 456);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v3 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v3;
  v4 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v4;
  v5 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v5;
  v6 = *(v0 + 32);
  if (v6)
  {
    v25 = *(v0 + 520);
    v29 = *(v0 + 512);
    v30 = *(v0 + 504);
    v27 = *(v0 + 496);
    v28 = *(v0 + 488);
    v7 = *(v0 + 472);
    v8 = *(v0 + 480);
    v10 = *(v0 + 456);
    v9 = *(v0 + 464);
    v11 = *(v0 + 448);
    *(v0 + 424) = *(v0 + 112);
    v12 = *(v0 + 152);
    v13 = *(v0 + 184);
    *(v0 + 336) = *(v0 + 168);
    *(v0 + 352) = v13;
    *(v0 + 368) = *(v0 + 200);
    *(v0 + 304) = *(v0 + 136);
    *(v0 + 320) = v12;
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v26 = sub_264785A44();
    v14 = swift_allocObject();
    *(v14 + 48) = *(v0 + 424);
    v15 = *(v0 + 304);
    *(v14 + 88) = *(v0 + 320);
    v16 = *(v0 + 352);
    *(v14 + 104) = *(v0 + 336);
    *(v14 + 120) = v16;
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    *(v14 + 32) = v9;
    *(v14 + 40) = v7;
    *(v14 + 64) = v6;
    *(v14 + 136) = *(v0 + 368);
    *(v14 + 72) = v15;
    *(v0 + 408) = sub_2647050B4;
    *(v0 + 416) = v14;
    *(v0 + 376) = MEMORY[0x277D85DD0];
    *(v0 + 384) = 1107296256;
    *(v0 + 392) = sub_264659F60;
    *(v0 + 400) = &block_descriptor_118_0;
    v17 = _Block_copy((v0 + 376));
    v18 = v10;
    v19 = v7;
    sub_26460CCE8(v0 + 16, v0 + 208, &qword_27FF756F8, &qword_264787DF0);
    sub_2647855B4();
    *(v0 + 440) = MEMORY[0x277D84F90];
    sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    sub_264785BD4();
    MEMORY[0x26673F780](0, v25, v27, v17);
    _Block_release(v17);

    sub_26460CD50(v0 + 16, &qword_27FF756F8, &qword_264787DF0);
    (*(v28 + 8))(v27, v8);
    (*(v29 + 8))(v25, v30);
    v20 = *(v0 + 416);
  }

  v21 = *(v0 + 520);
  v22 = *(v0 + 496);

  v23 = *(v0 + 8);

  return v23();
}

double sub_264702B84@<D0>(uint64_t a1@<X8>)
{
  v6 = *v1;
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78268, &qword_26478FAC0);
  sub_264704D78();
  sub_264785464();
  sub_2647851A4();
  v3 = sub_2647853C4();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782A8, &qword_26478FAE0) + 36)) = v3;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF782B0, &qword_26478FAE8) + 36);
  *(v4 + 32) = 0;
  result = 0.0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  return result;
}

void SMWorkoutEvent.id.getter()
{
  v1 = [v0 identifier];
  sub_264783B44();
}

void sub_264702CC8()
{
  v1 = [*v0 identifier];
  sub_264783B44();
}

uint64_t sub_264702D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_264702DA8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3;
  sub_264783EE4();
  return sub_2646BB6FC();
}

uint64_t sub_264702E2C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t sub_264702EA8(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_264706858(a1, &v14 - v9, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264706858(v10, v8, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v12 = v11;
  sub_264783EE4();
  return sub_26470510C(v10, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
}

double sub_264702FD0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_264703064(_OWORD *a1, void **a2)
{
  v3 = a1[3];
  v12[2] = a1[2];
  v12[3] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[3];
  v11[8] = a1[2];
  v11[9] = v7;
  v8 = a1[5];
  v11[10] = a1[4];
  v11[11] = v8;
  v9 = a1[1];
  v11[6] = *a1;
  v11[7] = v9;
  sub_26460CCE8(v12, v11, &qword_27FF756F8, &qword_264787DF0);
  v6;
  sub_264783EE4();
  return sub_2646F6B34();
}

uint64_t sub_264703134(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_264783EE4();
}

size_t sub_2647031F4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2647033D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78468, qword_26478FE80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2647034DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77020, &qword_26478FE70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2647035F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78460, &qword_26478FE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2647036FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78370, &qword_26478FCC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_264703800()
{
  sub_264655264(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264703864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2647038AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_2646F91D0(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for SafetyCacheDetailViewModel()
{
  result = qword_27FF78218;
  if (!qword_27FF78218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2647039C0()
{
  result = qword_27FF78100;
  if (!qword_27FF78100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF780C8, &qword_26478F520);
    sub_264703A4C();
    sub_264703D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78100);
  }

  return result;
}

unint64_t sub_264703A4C()
{
  result = qword_27FF78108;
  if (!qword_27FF78108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF780C0, &qword_26478F518);
    sub_264703DEC(&qword_27FF78110, &qword_27FF780D0, &qword_26478F528, sub_264703B30);
    sub_264703DEC(&qword_27FF78148, &qword_27FF780A0, &qword_26478F4F8, sub_264703C24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78108);
  }

  return result;
}

unint64_t sub_264703B60()
{
  result = qword_27FF78128;
  if (!qword_27FF78128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78130, &qword_26478F5B0);
    sub_26460CDF0(&qword_27FF78138, &qword_27FF78140, &qword_26478F5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78128);
  }

  return result;
}

unint64_t sub_264703C24()
{
  result = qword_27FF78150;
  if (!qword_27FF78150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78158, &qword_26478F5C0);
    sub_264703CEC(&qword_27FF78160, type metadata accessor for TimerInfoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78150);
  }

  return result;
}

uint64_t sub_264703CEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264703D34()
{
  result = qword_27FF78168;
  if (!qword_27FF78168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78090, &qword_26478F4E0);
    sub_264703DEC(&qword_27FF78170, &qword_27FF78098, &unk_26478F4E8, sub_264703E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78168);
  }

  return result;
}

uint64_t sub_264703DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264703E68()
{
  result = qword_27FF78178;
  if (!qword_27FF78178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78180, &qword_26478F5C8);
    sub_264703F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78178);
  }

  return result;
}

unint64_t sub_264703F00()
{
  result = qword_27FF78188;
  if (!qword_27FF78188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78190, &qword_26478F5D0);
    sub_264703F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78188);
  }

  return result;
}

unint64_t sub_264703F84()
{
  result = qword_27FF78198;
  if (!qword_27FF78198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF781A0, &qword_26478F5D8);
    sub_26470403C();
    sub_26460CDF0(&qword_27FF781B0, &qword_27FF781B8, &qword_26478F5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78198);
  }

  return result;
}

unint64_t sub_26470403C()
{
  result = qword_27FF781A8;
  if (!qword_27FF781A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF781A8);
  }

  return result;
}

unint64_t sub_2647040E8()
{
  result = qword_27FF781E8;
  if (!qword_27FF781E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF781E8);
  }

  return result;
}

__n128 sub_2647041A0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_2647041F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_264704250@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2647042A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2647042FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  return sub_26460CCE8(v3 + v4, a2, &qword_27FF75710, &qword_264787E40);
}

id sub_26470436C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2647043D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_264704430(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_26470448C()
{
  sub_264656F0C(319, &unk_27FF779A0, &qword_27FF756F8, &qword_264787DF0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_264656F0C(319, &qword_27FF78228, &qword_27FF756E0, &qword_264787DE0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_264656F0C(319, &qword_27FF78230, &qword_27FF756D8, &qword_26478F7B0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_264656F0C(319, &qword_27FF76660, &qword_27FF756B8, &qword_26478AC90);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_264704B00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_264704B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_264704BFC@<X0>(uint64_t a1@<X8>)
{
  result = sub_264784524();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264704C30@<X0>(uint64_t a1@<X8>)
{
  result = sub_264784524();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_264704C64(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_264784534();
}

uint64_t sub_264704C94(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_264784534();
}

uint64_t sub_264704CC4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26460C474(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_264704D14(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26460ECC4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_264704D78()
{
  result = qword_27FF78270;
  if (!qword_27FF78270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78268, &qword_26478FAC0);
    sub_264704E30();
    sub_26460CDF0(&qword_27FF78298, &qword_27FF782A0, &qword_264792120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78270);
  }

  return result;
}

unint64_t sub_264704E30()
{
  result = qword_27FF78278;
  if (!qword_27FF78278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78280, &qword_26478FAC8);
    sub_264703CEC(&qword_27FF77F70, type metadata accessor for SafetyCacheMapView);
    sub_26460CDF0(&qword_27FF78288, &qword_27FF78290, &unk_26478FAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78278);
  }

  return result;
}

uint64_t sub_264704F20()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264704F60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_264611390;

  return sub_2647026BC(v2, v3, v5, v4);
}

uint64_t sub_26470500C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 128);
  if (v2 >> 60 != 15)
  {
    sub_264655264(*(v0 + 120), v2);
  }

  v3 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2647050B4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 96);
  v7[2] = *(v0 + 80);
  v7[3] = v2;
  v3 = *(v0 + 128);
  v7[4] = *(v0 + 112);
  v7[5] = v3;
  v4 = *(v0 + 64);
  v7[0] = *(v0 + 48);
  v7[1] = v4;
  sub_26467A834(v0 + 48, &v6);
  return sub_2646BBAB4(v7);
}

uint64_t sub_26470510C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_264705174()
{
  result = qword_27FF78300;
  if (!qword_27FF78300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782C8, &qword_26478FB60);
    sub_26470522C();
    sub_26460CDF0(&qword_27FF78328, &qword_27FF782F8, &qword_26478FB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78300);
  }

  return result;
}

unint64_t sub_26470522C()
{
  result = qword_27FF78308;
  if (!qword_27FF78308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782C0, &qword_26478FB58);
    sub_2647052B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78308);
  }

  return result;
}

unint64_t sub_2647052B8()
{
  result = qword_27FF78310;
  if (!qword_27FF78310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782B8, &qword_26478FB50);
    sub_26460CDF0(&qword_27FF78318, &qword_27FF78320, &unk_26478FB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78310);
  }

  return result;
}

unint64_t sub_264705370()
{
  result = qword_27FF78330;
  if (!qword_27FF78330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782D0, &qword_26478FB68);
    sub_264705174();
    sub_264703CEC(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78330);
  }

  return result;
}

uint64_t sub_26470542C@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, char *)@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF767C0, &qword_26478AC80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78360, &qword_26478FC20);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(v15, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v15[1];
    *a3 = v15[0];
    a3[1] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264705580(void *a1, void *a2, uint64_t a3, char *a4, double a5, double a6)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v28 - v17;
  type metadata accessor for CLLocationCoordinate2D(0);
  v37[3] = v19;
  v37[4] = &protocol witness table for CLLocationCoordinate2D;
  *v37 = a5;
  *&v37[1] = a6;
  v20 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  sub_264783E94();
  (*(v15 + 32))(&a4[v20], v18, v14);
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  (*(v10 + 32))(&a4[v21], v13, v9);
  swift_beginAccess();
  v22 = *(v15 + 8);
  v23 = v29;
  v24 = v29;
  v22(&a4[v20], v14);
  v33 = v23;
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v10 + 8))(&a4[v21], v28);
  v33 = v30;
  v34 = v31;
  sub_264783E94();
  swift_endAccess();
  sub_264689A40(v37, &a4[OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider]);
  v25 = type metadata accessor for SafetyCacheRouteInfoCellViewModel();
  v32.receiver = a4;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v26;
}

id sub_264705884(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769D8, &unk_26478FE60);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v34[3] = sub_264659B70(0, &qword_27FF75E80, 0x277D4AB28);
  v34[4] = &protocol witness table for SMLocation;
  v34[0] = a4;
  v17 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__placemark;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76A08, &unk_26478B4A8);
  sub_264783E94();
  (*(v13 + 32))(&a5[v17], v16, v12);
  v18 = OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel__subtitle;
  v32 = 0;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  (*(v8 + 32))(&a5[v18], v11, v7);
  swift_beginAccess();
  v19 = *(v13 + 8);
  v20 = v26;
  v21 = v26;
  v19(&a5[v17], v12);
  v30 = v20;
  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  (*(v8 + 8))(&a5[v18], v25);
  v30 = v27;
  v31 = v28;
  sub_264783E94();
  swift_endAccess();
  sub_264689A40(v34, &a5[OBJC_IVAR____TtC15SafetyMonitorUI33SafetyCacheRouteInfoCellViewModel_coordinateProvider]);
  v22 = type metadata accessor for SafetyCacheRouteInfoCellViewModel();
  v29.receiver = a5;
  v29.super_class = v22;
  v23 = objc_msgSendSuper2(&v29, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v23;
}

uint64_t sub_264705B8C(uint64_t a1)
{
  v2 = type metadata accessor for SafetyMonitorUINavigationPathItem();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v5 = *(v30[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v30[0]);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v30[1] = a1;
  v31 = v30 - v11;
  v12 = a1 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel;
  swift_beginAccess();
  v13 = *(v12 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  sub_264783ED4();

  v15 = v34;
  v16 = v34[2];
  if (v16)
  {
    v17 = 0;
    v18 = v34 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = 0x636F4C7472617473;
    v20 = 0x6563655274736F6DLL;
    while (v17 < v15[2])
    {
      sub_264706858(v18 + *(v5 + 72) * v17, v8, type metadata accessor for SafetyCacheMapView.Annotation);
      v21 = v8[24];
      if (v21 > 2 && v21 != 4 && v21 != 5)
      {

LABEL_11:

        v18 = v31;
        sub_264706140(v8, v31, type metadata accessor for SafetyCacheMapView.Annotation);
        v23 = 0;
        v19 = v32;
        goto LABEL_12;
      }

      v22 = sub_264785E84();

      if (v22)
      {
        goto LABEL_11;
      }

      ++v17;
      sub_26470510C(v8, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v16 == v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:

  v23 = 1;
  v18 = v31;
  v19 = v32;
LABEL_12:
  (*(v5 + 56))(v18, v23, 1, v30[0]);
  sub_26460CCE8(v18, v19, &qword_27FF766A8, &unk_26478AA80);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762F8, &qword_264789EC0);
  (*(*(v24 - 8) + 56))(v19, 0, 3, v24);
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = sub_264783EC4();
  v15 = v25;
  v20 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    v20 = sub_2647031F4(0, *(v20 + 16) + 1, 1, v20, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v15 = v20;
  }

  v28 = *(v20 + 16);
  v27 = *(v20 + 24);
  if (v28 >= v27 >> 1)
  {
    v20 = sub_2647031F4(v27 > 1, v28 + 1, 1, v20, &qword_27FF78338, &qword_26478FBF0, type metadata accessor for SafetyMonitorUINavigationPathItem);
    *v15 = v20;
  }

  *(v20 + 16) = v28 + 1;
  sub_264706140(v19, v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, type metadata accessor for SafetyMonitorUINavigationPathItem);
  v16(&v34, 0);

  return sub_26460CD50(v18, &qword_27FF766A8, &unk_26478AA80);
}

uint64_t sub_264706140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2647061A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_2647021FC(a1);
}

uint64_t sub_2647061B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2647062A8()
{
  result = qword_27FF78398;
  if (!qword_27FF78398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78390, &qword_26478FCF8);
    sub_264706360();
    sub_26460CDF0(&qword_27FF76FB0, &qword_27FF76FB8, &qword_26478FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78398);
  }

  return result;
}

unint64_t sub_264706360()
{
  result = qword_27FF783A0;
  if (!qword_27FF783A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF783A8, &unk_26478FD00);
    sub_264706418();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF783A0);
  }

  return result;
}

unint64_t sub_264706418()
{
  result = qword_27FF783B0;
  if (!qword_27FF783B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF783B0);
  }

  return result;
}

uint64_t sub_264706470(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *a1;
  }

  if (*(a1 + 16))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = (*(v1 + 24) + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize);
  result = swift_beginAccess();
  *v6 = v4;
  v6[1] = v5;
  return result;
}

uint64_t objectdestroy_150Tm()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_26470653C()
{
  result = qword_27FF783D8;
  if (!qword_27FF783D8)
  {
    sub_264659B70(255, &qword_27FF77A10, 0x277D4AC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF783D8);
  }

  return result;
}

uint64_t sub_2647065A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2647065EC()
{
  result = qword_27FF78440;
  if (!qword_27FF78440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78440);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_264706688()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_2646FD70C();
}

unint64_t sub_2647066C4()
{
  result = qword_27FF78448;
  if (!qword_27FF78448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78418, &qword_26478FDF8);
    sub_2647065EC();
    swift_getOpaqueTypeConformance2();
    sub_264703CEC(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78448);
  }

  return result;
}

uint64_t sub_2647067AC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2647067E4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_264706858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2647068C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26470691C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264706964()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {

    v2 = *(v0 + 56);

    v3 = *(v0 + 120);
    if (v3 >> 60 != 15)
    {
      sub_264655264(*(v0 + 112), v3);
    }

    v4 = *(v0 + 128);
  }

  if (*(v0 + 152))
  {

    v5 = *(v0 + 152);

    v6 = *(v0 + 216);
    if (v6 >> 60 != 15)
    {
      sub_264655264(*(v0 + 208), v6);
    }

    v7 = *(v0 + 224);
  }

  return MEMORY[0x2821FE8E8](v0, 249, 7);
}

unint64_t sub_264706ACC()
{
  result = qword_27FF78480;
  if (!qword_27FF78480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782B0, &qword_26478FAE8);
    sub_264706B84();
    sub_26460CDF0(&qword_27FF76038, &qword_27FF76040, &unk_264789B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78480);
  }

  return result;
}

unint64_t sub_264706B84()
{
  result = qword_27FF78488;
  if (!qword_27FF78488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF782A8, &qword_26478FAE0);
    sub_264706C3C();
    sub_26460CDF0(&qword_27FF75AF0, &qword_27FF75AF8, &qword_264788928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78488);
  }

  return result;
}

unint64_t sub_264706C3C()
{
  result = qword_27FF78490;
  if (!qword_27FF78490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78498, &unk_26478FEA0);
    sub_264704D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78490);
  }

  return result;
}

uint64_t SessionInitializationInfo.init(initiatorEligibility:receiverEligibility:initiatorInvitationTokenMap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_264706D24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_264706D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t static ImageProvider.image(named:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_264785714();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (!v3)
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return sub_264785254();
}

id static ImageProvider.uiImage(named:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_264785714();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  v5 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v5 init];
}

id CheckInOnboardingViewController.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_264783B94();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264785704();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264783E24();
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_handlerManager] = 0;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_isInSettings] = a1;
  v48 = OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_sessionType;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_sessionType] = a2;
  v21 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_onboardingCompletionHandler];
  *v21 = a3;
  v21[1] = a4;
  v22 = v5;
  sub_264611394(a3);
  sub_264783DF4();
  v23 = v22;
  v24 = sub_264783E14();
  v25 = sub_2647859F4();
  v26 = os_log_type_enabled(v24, v25);
  v50 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v44 = v17;
    v28 = v27;
    v43 = swift_slowAlloc();
    v51[0] = v43;
    *v28 = 136315650;
    v53 = ObjectType;
    swift_getMetatypeMetadata();
    v29 = sub_264785764();
    v31 = sub_2646DF234(v29, v30, v51);
    v45 = v13;
    v32 = v31;
    v33 = v50;

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2646DF234(0xD00000000000003BLL, 0x80000002647994D0, v51);
    *(v28 + 22) = 2048;
    v34 = *&v5[v48];

    *(v28 + 24) = v34;
    _os_log_impl(&dword_264605000, v24, v25, "%s, %s: onboarding for session type %lu", v28, 0x20u);
    v35 = v43;
    swift_arrayDestroy();
    MEMORY[0x266740650](v35, -1, -1);
    MEMORY[0x266740650](v28, -1, -1);

    (*(v46 + 8))(v20, v44);
  }

  else
  {

    (*(v46 + 8))(v20, v17);
  }

  sub_264785694();
  sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = objc_opt_self();
  v38 = [v37 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264785694();
  [v37 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v39 = sub_264785714();

  v40 = sub_264785714();

  v52.receiver = v50;
  v52.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v52, sel_initWithTitle_detailText_symbolName_contentLayout_, v39, v40, 0, 1);
  sub_26460C9A0(a3);

  return v41;
}

Swift::Void __swiftcall CheckInOnboardingViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_264783B94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v1;
  v61.super_class = ObjectType;
  objc_msgSendSuper2(&v61, sel_viewDidLoad);
  v8 = objc_opt_self();
  v9 = sub_264785714();
  v10 = [v8 linkWithBundleIdentifier_];

  if (v10)
  {
    v11 = v10;
    sub_264783B84();
    sub_264783B74();
    (*(v4 + 8))(v7, v3);
    v12 = sub_264785714();

    [v11 setDisplayLanguage_];

    v13 = v11;
    v14 = [v1 view];
    if (!v14)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [v14 tintColor];

    [v13 setCustomTintColor_];
  }

  v17 = [v1 buttonTray];
  v58 = v10;
  [v17 setPrivacyLinkController_];

  v18 = [v1 navigationItem];
  v59 = 0u;
  v60 = 0u;
  v19 = sub_264785714();
  v20 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    v21 = __swift_project_boxed_opaque_existential_0(&v59, *(&v60 + 1));
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_264785E74();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(&v59);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v19 style:0 target:v26 action:0];

  swift_unknownObjectRelease();
  [v18 setBackBarButtonItem_];

  type metadata accessor for ImageProvider();
  sub_264707ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v30 = sub_264785714();
  v31 = [objc_opt_self() imageNamed:v30 inBundle:v29 withConfiguration:0];

  if (!v31)
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v33 = v32;
  [v33 setContentMode_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v1 view];
  if (!v34)
  {
    __break(1u);
    goto LABEL_16;
  }

  v35 = v34;
  [v34 addSubview_];

  v36 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26478E760;
  v38 = [v33 leftAnchor];
  v39 = [v1 contentView];
  v40 = [v39 leftAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v37 + 32) = v41;
  v42 = [v33 rightAnchor];
  v43 = [v1 contentView];
  v44 = [v43 rightAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v37 + 40) = v45;
  v46 = [v33 bottomAnchor];

  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v37 + 48) = v49;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v50 = sub_2647857E4();

  [v36 activateConstraints_];

  v51 = [objc_opt_self() boldButton];
  if (qword_27FF75038 != -1)
  {
    swift_once();
  }

  v52 = sub_264785714();
  [v51 setTitle:v52 forState:0];

  [v51 addTarget:v1 action:sel_continueButtonAction forControlEvents:64];
  v53 = [objc_opt_self() linkButton];
  if (qword_27FF75048 != -1)
  {
    swift_once();
  }

  v54 = sub_264785714();
  [v53 setTitle:v54 forState:0];

  [v53 addTarget:v1 action:sel_notNowButtonAction forControlEvents:64];
  v55 = [v1 buttonTray];
  [v55 addButton_];

  v56 = [v1 buttonTray];
  [v56 addButton_];
}

uint64_t sub_264707ED4()
{
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  if (v3 == 1)
  {
    MEMORY[0x26673F4D0](0x4C5452202D20, 0xE600000000000000);
  }

  return 0x6E49206B63656843;
}

void sub_264708018()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_isInSettings];
  v3 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_sessionType];
  v4 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_onboardingCompletionHandler];
  v5 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI31CheckInOnboardingViewController_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController2());
  sub_264611394(v4);
  v8 = CheckInOnboardingViewController2.init(isInSettings:sessionType:onboardingCompletionHandler:)(v2, v3, v4, v5);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v8 animated:1];
  }
}

id CheckInOnboardingViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264708510@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_264708590(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t UserSessionConfiguration.__allocating_init(sessionType:endLocation:destinationType:didDestinationChange:duration:workoutSessionID:workoutActivityType:workoutSessionType:)(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v130 = a6;
  v131 = a7;
  v128 = a2;
  v129 = a5;
  v127 = a4;
  v125 = a1;
  v126 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  MEMORY[0x28223BE20](v10);
  v122 = &v97 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v121 = *(v135 - 8);
  v13 = *(v121 + 64);
  MEMORY[0x28223BE20](v135);
  v120 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v16 = *(v15 - 8);
  v136 = v15;
  v137 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v134 = &v97 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v118 = *(v119 - 1);
  v19 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v97 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v115 = *(v116 - 8);
  v21 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v97 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v112 = *(v113 - 8);
  v23 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v97 - v24;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v109 = *(v110 - 8);
  v25 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v97 - v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v106 = *(v107 - 8);
  v27 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v97 - v28;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v103 = *(v104 - 8);
  v29 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v97 - v30;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v31 = *(*(v101 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v101);
  v133 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v132 = &v97 - v34;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v99 = *(v100 - 8);
  v35 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v97 - v36;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v37 = *(v97 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v97);
  v40 = &v97 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v97 - v44;
  v46 = *(v8 + 48);
  v47 = *(v8 + 52);
  v48 = swift_allocObject();
  *(v48 + 16) = [objc_opt_self() defaultManager];
  v49 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v50 = sub_264783B64();
  v51 = *(*(v50 - 8) + 56);
  v51(v48 + v49, 1, 1, v50);
  v52 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v138 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v42 + 32))(v48 + v52, v45, v41);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v138) = 0;
  sub_264783E94();
  (*(v37 + 32))(v48 + v53, v40, v97);
  v54 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v138 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v55 = v98;
  sub_264783E94();
  (*(v99 + 32))(v48 + v54, v55, v100);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v57 = v132;
  v51(v132, 1, 1, v50);
  sub_264720BE8(v57, v133);
  v58 = v102;
  sub_264783E94();
  sub_26460CD50(v57, &qword_27FF75CE8, &unk_264788B70);
  (*(v103 + 32))(v48 + v56, v58, v104);
  v59 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v138 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v60 = v105;
  sub_264783E94();
  (*(v106 + 32))(v48 + v59, v60, v107);
  v61 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v138 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v62 = v108;
  sub_264783E94();
  (*(v109 + 32))(v48 + v61, v62, v110);
  v63 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v138) = 0;
  v64 = v111;
  sub_264783E94();
  (*(v112 + 32))(v48 + v63, v64, v113);
  v65 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v138 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v66 = v114;
  sub_264783E94();
  (*(v115 + 32))(v48 + v65, v66, v116);
  v67 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v138) = 0;
  v68 = v117;
  sub_264783E94();
  (*(v118 + 32))(v48 + v67, v68, v119);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v138 = 0x40AC200000000000;
  v70 = v134;
  sub_264783E94();
  v71 = *(v137 + 32);
  v137 += 32;
  v119 = v71;
  v71(v48 + v69, v70, v136);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v138 = 0;
  v139 = 1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v74 = v120;
  sub_264783E94();
  v75 = *(v121 + 32);
  v76 = v135;
  v75(v48 + v72, v74, v135);
  v77 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v138 = 0;
  v139 = 1;
  v118 = v73;
  sub_264783E94();
  v75(v48 + v77, v74, v76);
  v78 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v138 = 0;
  v139 = 1;
  sub_264783E94();
  v75(v48 + v78, v74, v76);
  v79 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v138 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v80 = v122;
  sub_264783E94();
  v81 = v124;
  v82 = *(v123 + 32);
  v82(v48 + v79, v80, v124);
  v83 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v138 = 0;
  sub_264783E94();
  v82(v48 + v83, v80, v81);
  v84 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v138 = 0;
  sub_264783E94();
  v82(v48 + v84, v80, v81);
  v85 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v138 = 0;
  sub_264783E94();
  v82(v48 + v85, v80, v81);
  v86 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v138 = 0;
  v139 = 1;
  sub_264783E94();
  v87 = v135;
  v75(v48 + v86, v74, v135);
  v88 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v138 = 0;
  v139 = 1;
  sub_264783E94();
  v75(v48 + v88, v74, v87);
  v89 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v138 = 0;
  v139 = 1;
  sub_264783E94();
  v75(v48 + v89, v74, v87);
  v90 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v138 = 0;
  v139 = 1;
  sub_264783E94();
  v75(v48 + v90, v74, v87);
  v91 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v138 = 0x40AC200000000000;
  v92 = v134;
  sub_264783E94();
  v119(v48 + v91, v92, v136);
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = v125;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = v126;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v138) = v127;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = *&a8;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = v128;
  v93 = v128;

  sub_264783EE4();
  v94 = v129;
  v95 = v132;
  sub_264720BE8(v129, v132);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v95, v133);

  sub_264783EE4();
  sub_26460CD50(v95, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = v130;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v138 = v131;

  sub_264783EE4();
  sub_26460CD50(v94, &qword_27FF75CE8, &unk_264788B70);

  return v48;
}

uint64_t UserSessionConfiguration.init(sessionType:endLocation:destinationType:didDestinationChange:duration:workoutSessionID:workoutActivityType:workoutSessionType:)(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v127 = a6;
  v128 = a7;
  v125 = a2;
  v126 = a5;
  v124 = a4;
  v122 = a1;
  v123 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  v120 = *(v10 - 8);
  v121 = v10;
  v11 = *(v120 + 64);
  MEMORY[0x28223BE20](v10);
  v119 = &v94 - v12;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  v118 = *(v132 - 8);
  v13 = *(v118 + 64);
  MEMORY[0x28223BE20](v132);
  v117 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v16 = *(v15 - 8);
  v133 = v15;
  v134 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v131 = &v94 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  v115 = *(v116 - 1);
  v19 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v94 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  v112 = *(v113 - 8);
  v21 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v94 - v22;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  v109 = *(v110 - 8);
  v23 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v94 - v24;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  v106 = *(v107 - 8);
  v25 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v94 - v26;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  v103 = *(v104 - 8);
  v27 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v94 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  v100 = *(v101 - 8);
  v29 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v94 - v30;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v31 = *(*(v98 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v98);
  v130 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v129 = &v94 - v34;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v96 = *(v97 - 8);
  v35 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v94 - v36;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v37 = *(v94 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v94);
  v40 = &v94 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v94 - v44;
  *(v8 + 16) = [objc_opt_self() defaultManager];
  v46 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  v47 = sub_264783B64();
  v48 = *(*(v47 - 8) + 56);
  v48(v8 + v46, 1, 1, v47);
  v49 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v135 = 2;
  type metadata accessor for SMSessionType(0);
  sub_264783E94();
  (*(v42 + 32))(v8 + v49, v45, v41);
  v50 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  LOBYTE(v135) = 0;
  sub_264783E94();
  (*(v37 + 32))(v8 + v50, v40, v94);
  v51 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v135 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v52 = v95;
  sub_264783E94();
  (*(v96 + 32))(v8 + v51, v52, v97);
  v53 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v54 = v129;
  v48(v129, 1, 1, v47);
  sub_264720BE8(v54, v130);
  v55 = v99;
  sub_264783E94();
  sub_26460CD50(v54, &qword_27FF75CE8, &unk_264788B70);
  (*(v100 + 32))(v8 + v53, v55, v101);
  v56 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v135 = 3000;
  type metadata accessor for HKWorkoutActivityType(0);
  v57 = v102;
  sub_264783E94();
  (*(v103 + 32))(v8 + v56, v57, v104);
  v58 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v135 = 0;
  type metadata accessor for HKWorkoutSessionType(0);
  v59 = v105;
  sub_264783E94();
  (*(v106 + 32))(v8 + v58, v59, v107);
  v60 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  LOBYTE(v135) = 0;
  v61 = v108;
  sub_264783E94();
  (*(v109 + 32))(v8 + v60, v61, v110);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v135 = 4;
  type metadata accessor for SMSessionDestinationType(0);
  v63 = v111;
  sub_264783E94();
  (*(v112 + 32))(v8 + v62, v63, v113);
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  LOBYTE(v135) = 0;
  v65 = v114;
  sub_264783E94();
  (*(v115 + 32))(v8 + v64, v65, v116);
  v66 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v135 = 0x40AC200000000000;
  v67 = v131;
  sub_264783E94();
  v68 = *(v134 + 32);
  v134 += 32;
  v116 = v68;
  v68(v8 + v66, v67, v133);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v135 = 0;
  v136 = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v71 = v117;
  sub_264783E94();
  v72 = *(v118 + 32);
  v73 = v132;
  v72(v8 + v69, v71, v132);
  v74 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v135 = 0;
  v136 = 1;
  v115 = v70;
  sub_264783E94();
  v72(v8 + v74, v71, v73);
  v75 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v135 = 0;
  v136 = 1;
  sub_264783E94();
  v72(v8 + v75, v71, v73);
  v76 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v135 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78568, &qword_26478FF98);
  v77 = v119;
  sub_264783E94();
  v78 = v121;
  v79 = *(v120 + 32);
  v79(v8 + v76, v77, v121);
  v80 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v135 = 0;
  sub_264783E94();
  v79(v8 + v80, v77, v78);
  v81 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v135 = 0;
  sub_264783E94();
  v79(v8 + v81, v77, v78);
  v82 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v135 = 0;
  sub_264783E94();
  v79(v8 + v82, v77, v78);
  v83 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v135 = 0;
  v136 = 1;
  sub_264783E94();
  v84 = v132;
  v72(v8 + v83, v71, v132);
  v85 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v135 = 0;
  v136 = 1;
  sub_264783E94();
  v72(v8 + v85, v71, v84);
  v86 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v135 = 0;
  v136 = 1;
  sub_264783E94();
  v72(v8 + v86, v71, v84);
  v87 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v135 = 0;
  v136 = 1;
  sub_264783E94();
  v72(v8 + v87, v71, v84);
  v88 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__duration;
  v135 = 0x40AC200000000000;
  v89 = v131;
  sub_264783E94();
  v116(v8 + v88, v89, v133);
  swift_getKeyPath();
  swift_getKeyPath();
  v135 = v122;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v135 = v123;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v135) = v124;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v135 = *&a8;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v135 = v125;
  v90 = v125;

  sub_264783EE4();
  v91 = v126;
  v92 = v129;
  sub_264720BE8(v126, v129);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(v92, v130);

  sub_264783EE4();
  sub_26460CD50(v92, &qword_27FF75CE8, &unk_264788B70);
  swift_getKeyPath();
  swift_getKeyPath();
  v135 = v127;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v135 = v128;

  sub_264783EE4();
  sub_26460CD50(v91, &qword_27FF75CE8, &unk_264788B70);

  return v8;
}

uint64_t sub_26470A804()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_26470A89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264720BE8(a1, v5);

  sub_264783EE4();
  return sub_26460CD50(a1, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_26470A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a7;
  v12 = sub_264783E24();
  v7[10] = v12;
  v13 = *(v12 - 8);
  v7[11] = v13;
  v14 = *(v13 + 64) + 15;
  v7[12] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[13] = v15;
  *v15 = v7;
  v15[1] = sub_26470AAC8;

  return sub_26470B378((v7 + 2), a4, a5, a6, a7);
}

uint64_t sub_26470AAC8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26470ABC4, 0, 0);
}

uint64_t sub_26470ABC4()
{
  v31 = v0;
  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  *(v0 + 26) = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 72);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    sub_264783ED4();

    *(v0 + 120) = *(v0 + 48);
    sub_2647858B4();
    *(v0 + 128) = sub_2647858A4();
    v5 = sub_264785874();

    return MEMORY[0x2822009F8](sub_26470AF54, v5, v4);
  }

  else
  {
    v6 = *(v0 + 72);
    sub_26471A560();
    v7 = *(v0 + 96);
    v8 = *(v0 + 72);
    sub_264783DF4();

    v9 = sub_264783E14();
    v10 = sub_2647859F4();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 112);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);
    if (v11)
    {
      v16 = *(v0 + 72);
      v29 = *(v0 + 80);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v12;
      v19 = swift_slowAlloc();
      v30 = v19;
      *v17 = 136315651;
      *(v0 + 32) = v16;
      type metadata accessor for UserSessionConfiguration();

      v20 = sub_264785764();
      v27 = v13;
      v22 = sub_2646DF234(v20, v21, &v30);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x80000002647997E0, &v30);
      *(v17 + 22) = 2117;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v23 = *(v0 + 40);
      *(v17 + 24) = v23;
      *v18 = v23;
      _os_log_impl(&dword_264605000, v9, v10, "%s, %s: endLocation, %{sensitive}@", v17, 0x20u);
      sub_26460CD50(v18, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v19, -1, -1);
      MEMORY[0x266740650](v17, -1, -1);

      (*(v14 + 8))(v27, v29);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v24 = *(v0 + 96);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_26470AF54()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 26);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = v4;
  v6 = v4;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v2;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 25) = v3;

  sub_264783EE4();
  sub_26470BC6C();

  return MEMORY[0x2822009F8](sub_26470B0BC, 0, 0);
}

uint64_t sub_26470B0BC()
{
  v25 = v0;

  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_264783DF4();

  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = *(v0 + 112);
    v21 = *(v0 + 88);
    v5 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v0 + 32) = v5;
    v24 = v8;
    *v6 = 136315651;
    type metadata accessor for UserSessionConfiguration();

    v9 = sub_264785764();
    v11 = sub_2646DF234(v9, v10, &v24);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x80000002647997E0, &v24);
    *(v6 + 22) = 2117;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v12 = *(v0 + 40);
    *(v6 + 24) = v12;
    *v7 = v12;
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s: endLocation, %{sensitive}@", v6, 0x20u);
    sub_26460CD50(v7, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v8, -1, -1);
    MEMORY[0x266740650](v6, -1, -1);

    (*(v21 + 8))(v23, v22);
  }

  else
  {
    v13 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 96);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26470B378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_264783E24();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26470B44C, 0, 0);
}

uint64_t sub_26470B44C()
{
  v1 = v0[4];
  v2 = v0[5];
  if (v1 >> 60 == 15)
  {
    if (v2)
    {
      v3 = v0[9];
      v4 = v2;
      sub_264783DF4();
      v5 = v4;
      v6 = sub_264783E14();
      v7 = sub_2647859D4();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[5];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138739971;
        *(v9 + 4) = v5;
        *v10 = v8;
        v11 = v5;
        _os_log_impl(&dword_264605000, v6, v7, "#Initiator, UserSessionConfiguration, populateEndLocation - no map item, fallback to rev geo with coordinate %{sensitive}@", v9, 0xCu);
        sub_26460CD50(v10, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v10, -1, -1);
        MEMORY[0x266740650](v9, -1, -1);
      }

      v13 = v0[8];
      v12 = v0[9];
      v14 = v0[7];

      (*(v13 + 8))(v12, v14);
      v15 = swift_task_alloc();
      v0[18] = v15;
      *v15 = v0;
      v15[1] = sub_26470BB00;
      v16 = v0[6];
      v17 = v0[2];

      return sub_26471932C(v17, v5);
    }

    goto LABEL_12;
  }

  if (!v2)
  {
LABEL_12:
    v23 = v0[10];
    sub_264783DF4();
    v24 = sub_264783E14();
    v25 = sub_2647859E4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264605000, v24, v25, "#Initiator, UserSessionConfiguration, populateEndLocation - Unable to populateEndLocation, no map item, no coordintes", v26, 2u);
      MEMORY[0x266740650](v26, -1, -1);
    }

    v27 = v0[10];
    v28 = v0[7];
    v29 = v0[8];
    v30 = v0[2];

    (*(v29 + 8))(v27, v28);
    *v30 = 0;
    *(v30 + 8) = 0;
    v32 = v0[9];
    v31 = v0[10];

    v33 = v0[1];

    return v33();
  }

  v19 = v0[3];
  v0[11] = sub_2647858B4();
  sub_2646C6804(v19, v1);
  v20 = v2;
  v0[12] = sub_2647858A4();
  v22 = sub_264785874();
  v0[13] = v22;
  v0[14] = v21;

  return MEMORY[0x2822009F8](sub_26470B784, v22, v21);
}

uint64_t sub_26470B784()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v12 = *(v0 + 24);
  v4 = sub_2647858A4();
  *(v0 + 120) = v4;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78638, &qword_264790708);
  *v7 = v0;
  v7[1] = sub_26470B8B8;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v9, v4, v10, 0xD000000000000019, 0x8000000264799810, sub_264723964, v5, v8);
}

uint64_t sub_26470B8B8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_26470BA18, v6, v5);
}

uint64_t sub_26470BA18()
{
  v1 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_26470BA80, 0, 0);
}

uint64_t sub_26470BA80()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  sub_264655900(v2, v1);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26470BB00()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26470BBFC, 0, 0);
}

uint64_t sub_26470BBFC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26470BC6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v10)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v11)
    {
      goto LABEL_5;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if ((v11 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(), , result = , v11 == 1))
    {
LABEL_5:
      v5 = sub_2647858E4();
      (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
      v6 = swift_allocObject();
      swift_weakInit();
      sub_2647858B4();

      v7 = sub_2647858A4();
      v8 = swift_allocObject();
      v9 = MEMORY[0x277D85700];
      v8[2] = v7;
      v8[3] = v9;
      v8[4] = v6;

      sub_264635430(0, 0, v3, &unk_264790758, v8);
    }
  }

  return result;
}

uint64_t sub_26470BEF8(void *a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v5 = [a1 location];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if (!v13)
  {
LABEL_8:

LABEL_9:
    sub_264714708();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_264783EE4();
    goto LABEL_10;
  }

  v7 = [v13 location];
  if (!v7)
  {

LABEL_7:
    v6 = v13;
    goto LABEL_8;
  }

  v8 = v7;
  [v6 distanceFromLocation_];
  v10 = v9;

  if (v10 != 0.0)
  {
    goto LABEL_9;
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();

  v11 = a1;
  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_26470BC6C();
}

uint64_t sub_26470C1CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_264720BE8(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_264720C70(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_26470C28C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  return sub_264720BE8(v1 + v3, a1);
}

uint64_t sub_26470C2E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_264720C70(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t (*sub_26470C3B8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470C45C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B0, &qword_264790228);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470C5FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B0, &qword_264790228);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470C734(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B0, &qword_264790228);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__sessionType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784F0, &qword_26478FF90);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26470C8A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t (*sub_26470C918(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470C9BC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470CB5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470CC94(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__didDestinationChange;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470CE18(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470CEBC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470D05C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470D194(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__endLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26470D304()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t (*sub_26470D37C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_26470D420(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B8, &qword_264790230);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470D5C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B8, &qword_264790230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470D6F8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785B8, &qword_264790230);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E8, &unk_26478FF80);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t (*sub_26470D87C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470D920(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C0, &qword_264790238);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470DAC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C0, &qword_264790238);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470DBF8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C0, &qword_264790238);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutActivityType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784E0, &qword_26478FF78);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470DD7C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470DE20(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C8, &qword_264790240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470DFC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C8, &qword_264790240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470E0F8(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785C8, &qword_264790240);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__workoutSessionType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D8, &qword_26478FF70);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470E290(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470E334(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470E4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470E60C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77708, &qword_26478DC98);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__geofenceSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77628, &qword_26478D9E8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double sub_26470E77C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return dbl_2647907E0[v1];
}

uint64_t (*sub_26470E810(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470E8B4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470EA54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470EB8C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77700, &qword_26478DC90);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__destinationType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF776F8, &unk_26478FF60);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470ED24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470EDC8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D0, &qword_264790290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470EF68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D0, &qword_264790290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470F0A0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D0, &qword_264790290);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__etaType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784D0, &qword_26478FF58);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

double sub_26470F210@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_26470F290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_26470F334()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_26470F3A4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470F448(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470F5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470F720(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D38, &qword_2647902E0);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470F8E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470F984(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26470FB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26470FC5C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26470FE1C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_26470FEC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264710060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264710198(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264710358(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2647103FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26471059C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2647106D4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264710894(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264710938(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264710AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264710C10(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__customETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264710DD0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264710E74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264711014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26471114C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__automobileETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_26471130C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2647113B0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264711550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264711688(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__transitETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264711820(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_264783EE4();
}

uint64_t (*sub_2647118C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264711964(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264711B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264711C3C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E0, &qword_264790410);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__walkingETAError;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C0, &qword_26478FF40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264711DFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264711EA0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264712040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264712178(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseAutomobileETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264712338(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2647123DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_26471257C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2647126B4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseTransitETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_264712874(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264712918(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_264712AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264712BF0(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__coarseWalkingETA;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264712D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_264712E0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_264712EA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264712F24()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_264712FA4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_264713048(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2647131E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_264713320(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785D8, &qword_264790330);
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

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration__additionalTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF784C8, &qword_26478FF48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264713490()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v26 <= 1u || v26 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v5 = v24;
    if (v25)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v7 = v24;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v7 = v24;
    v5 = v24;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v6 = 0;
  if ((v25 & 1) == 0)
  {
    v5 = v7 + v24;
  }

LABEL_11:
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v21 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = *&v11;
    *v10 = 136315394;
    v22 = v0;
    if (v6)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
    }

    else
    {
      v13 = sub_264785914();
      v12 = v14;
    }

    v15 = sub_2646DF234(v13, v12, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v23 = v26;
    v16 = ETAType.labelName.getter();
    v18 = sub_2646DF234(v16, v17, &v24);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_264605000, v8, v9, "#Initiator,UserSessionConfiguration, selectedETA, %s, etaType, %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v21 + 8))(v4, v22);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return *&v5;
}

uint64_t sub_2647138C4()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v5 = v31;
  sub_264783DF4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v28 = v1;
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v8 = 136315394;
    v27 = v5;
    if (v5)
    {
      ErrorValue = swift_getErrorValue();
      v24 = &v24;
      v25 = v0;
      v10 = v30;
      v11 = *(v30 - 8);
      v12 = *(v11 + 64);
      MEMORY[0x28223BE20](ErrorValue);
      v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14);
      v15 = sub_264785EF4();
      v17 = v16;
      (*(v11 + 8))(v14, v10);
      v0 = v25;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_2646DF234(v15, v17, &v31);

    *(v8 + 4) = v18;
    *(v8 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v29 = v32;
    v19 = ETAType.labelName.getter();
    v21 = sub_2646DF234(v19, v20, &v31);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_264605000, v6, v7, "#Initiator,UserSessionConfiguration, _selectedETAError, %s, etaType, %s", v8, 0x16u);
    v22 = v26;
    swift_arrayDestroy();
    MEMORY[0x266740650](v22, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);

    (*(v28 + 8))(v4, v0);
    return v27;
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

uint64_t sub_264713D20()
{
  sub_264713490();
  if (v0)
  {
    result = sub_2647138C4();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_264713D4C()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v26 <= 1u || v26 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v5 = v24;
    if (v25)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v7 = v24;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v7 = v24;
    v5 = v24;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v6 = 0;
  if ((v25 & 1) == 0)
  {
    v5 = v7 + v24;
  }

LABEL_11:
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v21 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = *&v11;
    *v10 = 136315394;
    v22 = v0;
    if (v6)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
    }

    else
    {
      v13 = sub_264785914();
      v12 = v14;
    }

    v15 = sub_2646DF234(v13, v12, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v23 = v26;
    v16 = ETAType.labelName.getter();
    v18 = sub_2646DF234(v16, v17, &v24);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_264605000, v8, v9, "#Initiator, UserSessionConfiguration, selectedCoarseETA, %s, etaType, %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);

    (*(v21 + 8))(v4, v22);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return *&v5;
}

id sub_264714180()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v22 > 1u)
  {
    if (v22 != 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v5 = v23;
      v6 = 0xFFFFFFFLL;
      goto LABEL_12;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if ((v24 & 1) == 0)
    {
      v5 = v23;
      v6 = 4;
      goto LABEL_12;
    }

    return 0;
  }

  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if ((v24 & 1) == 0)
    {
      v5 = v23;
      v6 = 2;
      goto LABEL_12;
    }

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v24)
  {
    return 0;
  }

  v5 = v23;
  v6 = 1;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v24)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v23;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D4AB90]) initWithExpectedTravelTime:v6 additionalTravelTime:v5 transportType:v8];
  v9 = v7;
  sub_264783DF4();
  v10 = v9;
  v11 = sub_264783E14();
  v12 = sub_2647859F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v0;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = v7;
    v23 = *&v15;
    *v14 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF785E8, &unk_264790610);
    v16 = sub_264785B34();
    v18 = v17;

    v19 = sub_2646DF234(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_264605000, v11, v12, "#Initiator,UserSessionConfiguration, etaConfig, %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x266740650](v15, -1, -1);
    MEMORY[0x266740650](v14, -1, -1);

    (*(v1 + 8))(v4, v21);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return v7;
}

uint64_t sub_2647145BC(_BYTE *a1)
{
  if (*a1 <= 1u || *a1 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v1 = v3;
    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v1 = v3 + v3;
    }
  }

  else
  {
    v1 = 0.0;
  }

  return *&v1;
}

uint64_t sub_264714708()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_264714990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_2647858E4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2647858B4();

  v6 = sub_2647858A4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_264635430(0, 0, v3, &unk_264790628, v7);
}

uint64_t sub_264714AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[261] = a4;
  v5 = sub_264783E24();
  v4[262] = v5;
  v6 = *(v5 - 8);
  v4[263] = v6;
  v7 = *(v6 + 64) + 15;
  v4[264] = swift_task_alloc();
  sub_2647858B4();
  v4[265] = sub_2647858A4();
  v9 = sub_264785874();
  v4[266] = v9;
  v4[267] = v8;

  return MEMORY[0x2822009F8](sub_264714BD8, v9, v8);
}

uint64_t sub_264714BD8()
{
  v23 = v0;
  v1 = v0[261];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[268] = Strong;
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v4 = v0[255];
    v0[269] = v4;
    if (v4)
    {
      sub_264714708();
      v5 = swift_task_alloc();
      v0[270] = v5;
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      swift_asyncLet_begin();
      v6 = swift_task_alloc();
      v0[271] = v6;
      *(v6 + 16) = v3;
      *(v6 + 24) = v4;
      swift_asyncLet_begin();
      v7 = swift_task_alloc();
      v0[272] = v7;
      *(v7 + 16) = v3;
      *(v7 + 24) = v4;
      swift_asyncLet_begin();

      return MEMORY[0x282200920](v0 + 162);
    }

    v18 = v0[265];
  }

  else
  {
    v8 = v0[265];
    v9 = v0[264];

    sub_264783DF4();
    v10 = sub_264783E14();
    v11 = sub_2647859D4();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[264];
    v14 = v0[263];
    v15 = v0[262];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2646DF234(0xD000000000000010, 0x80000002647997C0, &v22);
      _os_log_impl(&dword_264605000, v10, v11, "#Initiator,UserSessionConfiguration, no reference to self in %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266740650](v17, -1, -1);
      MEMORY[0x266740650](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
  }

  v19 = v0[264];

  v20 = v0[1];

  return v20();
}

uint64_t sub_264714EF0()
{
  v1 = *(v0 + 2176);

  return MEMORY[0x282200920](v0 + 656);
}

uint64_t sub_264714F74()
{
  v1 = *(v0 + 2168);

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_264714FF8()
{
  v1 = v0[270];
  v2 = v0[269];
  v3 = v0[268];
  v4 = v0[265];

  v5 = v0[264];

  v6 = v0[1];

  return v6();
}

uint64_t sub_264715088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2646547BC;

  return sub_264715268(a3, 1);
}

uint64_t sub_264715128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_264724034;

  return sub_264715268(a3, 4);
}

uint64_t sub_2647151C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_264724034;

  return sub_264715268(a3, 2);
}

uint64_t sub_264715268(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = sub_264783E24();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = sub_2647858B4();
  v3[37] = sub_2647858A4();

  return MEMORY[0x2822009F8](sub_264715368, 0, 0);
}

uint64_t sub_264715368()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[39] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B00, &qword_264790720);
  v0[40] = v6;
  *v5 = v0;
  v5[1] = sub_264715474;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000012, 0x8000000264798970, sub_2646E2830, v3, v6);
}

uint64_t sub_264715474()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_264715AF0;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_264715590;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264715590()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  *(v0 + 336) = *(v0 + 40);
  v4 = sub_264785874();

  return MEMORY[0x2822009F8](sub_264715610, v4, v3);
}

uint64_t sub_264715610()
{
  v57 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 216);

  sub_264783DF4();
  v4 = v3;
  v5 = sub_264783E14();
  v6 = sub_2647859F4();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 320);
    v10 = *(v0 + 248);
    v54 = *(v0 + 240);
    v55 = *(v0 + 280);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v56 = v14;
    *v13 = 136315651;
    *(v0 + 56) = v8;
    *(v0 + 64) = v7;
    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v56);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2085;
    v18 = [v12 debugDescription];
    v19 = sub_264785724();
    v21 = v20;

    v22 = sub_2646DF234(v19, v21, &v56);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2080;
    *(v0 + 208) = v11;
    type metadata accessor for SMDirectionsTransportType(0);
    v23 = sub_264785764();
    v25 = sub_2646DF234(v23, v24, &v56);

    *(v13 + 24) = v25;
    _os_log_impl(&dword_264605000, v5, v6, "#Initiator,UserSessionConfiguration, estimatedTravelTime: %s, endLocation: %{sensitive}s, transportType: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v14, -1, -1);
    MEMORY[0x266740650](v13, -1, -1);

    v26 = *(v10 + 8);
    v26(v55, v54);
  }

  else
  {
    v27 = *(v0 + 280);
    v28 = *(v0 + 240);
    v29 = *(v0 + 248);

    v26 = *(v29 + 8);
    v26(v27, v28);
  }

  v30 = *(v0 + 224);
  switch(v30)
  {
    case 4:
      v38 = *(v0 + 336);
      v37 = *(v0 + 344);
      v39 = *(v0 + 232);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 104) = v38;
      *(v0 + 112) = 0;

      sub_264783EE4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 120) = v37;
      *(v0 + 128) = 0;

      goto LABEL_10;
    case 2:
      v35 = *(v0 + 336);
      v34 = *(v0 + 344);
      v36 = *(v0 + 232);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 72) = v35;
      *(v0 + 80) = 0;

      sub_264783EE4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 88) = v34;
      *(v0 + 96) = 0;

      goto LABEL_10;
    case 1:
      v32 = *(v0 + 336);
      v31 = *(v0 + 344);
      v33 = *(v0 + 232);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 136) = v32;
      *(v0 + 144) = 0;

      sub_264783EE4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 152) = v31;
      *(v0 + 160) = 0;

LABEL_10:
      sub_264783EE4();
      goto LABEL_14;
  }

  v40 = *(v0 + 264);
  sub_264783DF4();
  v41 = sub_264783E14();
  v42 = sub_2647859E4();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 264);
  v45 = *(v0 + 240);
  v46 = *(v0 + 248);
  if (v43)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_264605000, v41, v42, "#Initiator,UserSessionConfiguration, estimateEta, error for invalid transport type", v47, 2u);
    MEMORY[0x266740650](v47, -1, -1);
  }

  v26(v44, v45);
LABEL_14:
  v49 = *(v0 + 272);
  v48 = *(v0 + 280);
  v51 = *(v0 + 256);
  v50 = *(v0 + 264);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_264715AF0()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  v5 = sub_264785874();

  return MEMORY[0x2822009F8](sub_264715B74, v5, v4);
}

uint64_t sub_264715B74()
{
  v50 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[34];

  sub_264783DF4();
  v4 = v1;
  v5 = sub_264783E14();
  v6 = sub_2647859D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[41];
    v46 = v0[31];
    v47 = v0[30];
    v48 = v0[34];
    v8 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v0[24] = v8;
    v49 = v10;
    *v9 = 136315394;
    type metadata accessor for SMDirectionsTransportType(0);
    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, &v49);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v15 = v0[2];
    v14 = v0[3];
    v16 = v0[4];
    v17 = sub_264785EF4();
    v19 = sub_2646DF234(v17, v18, &v49);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_264605000, v5, v6, "#Initiator,UserSessionConfiguration, estimateEta, error fetching eta for transport type: %s: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    v20 = *(v46 + 8);
    v20(v48, v47);
  }

  else
  {
    v21 = v0[34];
    v22 = v0[30];
    v23 = v0[31];

    v20 = *(v23 + 8);
    v20(v21, v22);
  }

  v24 = v0[28];
  switch(v24)
  {
    case 4:
      v29 = v0[41];
      v30 = v0[29];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[22] = v29;

      break;
    case 2:
      v27 = v0[41];
      v28 = v0[29];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[21] = v27;

      break;
    case 1:
      v25 = v0[41];
      v26 = v0[29];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[23] = v25;

      break;
    default:
      v31 = v0[32];
      sub_264783DF4();
      v32 = sub_264783E14();
      v33 = sub_2647859E4();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[41];
      v37 = v0[31];
      v36 = v0[32];
      v38 = v0[30];
      if (v34)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_264605000, v32, v33, "#Initiator,UserSessionConfiguration, estimateEta, error for invalid transport type", v39, 2u);
        MEMORY[0x266740650](v39, -1, -1);
      }

      else
      {
      }

      v20(v36, v38);
      goto LABEL_15;
  }

  sub_264783EE4();
LABEL_15:
  v41 = v0[34];
  v40 = v0[35];
  v43 = v0[32];
  v42 = v0[33];

  v44 = v0[1];

  return v44();
}