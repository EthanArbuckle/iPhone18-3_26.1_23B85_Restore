uint64_t sub_26463F8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EE0, &qword_264789888);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_26463FA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v76 = a5;
  v77 = a6;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v7 = *a1;
  v8 = sub_264783B64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v70 = v12;
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v79 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v20 = sub_264783E24();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v78 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v65 - v25;
  sub_264783DF4();

  v27 = sub_264783E14();
  v28 = sub_2647859F4();

  v29 = os_log_type_enabled(v27, v28);
  v80 = v7;
  if (v29)
  {
    v66 = v28;
    v67 = v21;
    v65 = v20;
    v30 = v8;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315650;
    v82 = a1;

    v33 = sub_264785764();
    v35 = sub_2646DF234(v33, v34, aBlock);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v31 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v19);
    v36 = (*(v9 + 48))(v19, 1, v30);
    v68 = v9;
    v69 = v30;
    if (v36 == 1)
    {
      sub_26460CD50(v19, &qword_27FF75CE8, &unk_264788B70);
      v37 = 0xED00004449206E6FLL;
      v38 = 0x6973736553206F4ELL;
    }

    else
    {
      v38 = sub_264783B04();
      v37 = v40;
      (*(v9 + 8))(v19, v30);
    }

    v41 = sub_2646DF234(v38, v37, aBlock);

    *(v31 + 24) = v41;
    _os_log_impl(&dword_264605000, v27, v66, "%s, %s: Attempting to end session for sessionID, %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v32, -1, -1);
    MEMORY[0x266740650](v31, -1, -1);

    v39 = *(v67 + 8);
    v20 = v65;
    v39(v26, v65);
    v9 = v68;
    v8 = v69;
  }

  else
  {

    v39 = *(v21 + 8);
    v39(v26, v20);
  }

  v42 = v79;
  SessionViewModel.currentSessionID.getter(v79);
  if ((*(v9 + 48))(v42, 1, v8) == 1)
  {
    sub_26460CD50(v42, &qword_27FF75CE8, &unk_264788B70);
    v43 = v78;
    sub_264783DF4();

    v44 = sub_264783E14();
    v45 = sub_2647859D4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136315394;
      v82 = a1;

      v48 = sub_264785764();
      v50 = sub_2646DF234(v48, v49, aBlock);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
      _os_log_impl(&dword_264605000, v44, v45, "%s, %s: Error cannot end session without sessionID)", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v47, -1, -1);
      MEMORY[0x266740650](v46, -1, -1);

      v51 = v78;
    }

    else
    {

      v51 = v43;
    }

    v39(v51, v20);
    v63 = v77;
    v64 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
    v63();
  }

  else
  {
    v52 = *(v9 + 32);
    v53 = v75;
    v52(v75, v42, v8);
    v54 = v8;
    v80 = *(a1 + 16);
    v79 = sub_264783B14();
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = v71;
    (*(v9 + 16))(v71, v53, v54);
    v57 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v58 = (v70 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    v52((v59 + v57), v56, v54);
    v60 = (v59 + v58);
    *v60 = v73;
    v60[1] = 0;
    aBlock[4] = v74;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0B4;
    aBlock[3] = v76;
    v61 = _Block_copy(aBlock);

    v62 = v79;
    [v80 endSessionForSessionID:v79 reason:2 completion:v61];
    _Block_release(v61);

    (*(v9 + 8))(v53, v54);
  }
}

void SessionViewModel.endSession(with:)(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v78 = a1;
  v79 = a2;
  v4 = *v2;
  v5 = sub_264783B64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v72 = v9;
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v75 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = sub_264783E24();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v74 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  sub_264783DF4();

  v24 = sub_264783E14();
  v25 = sub_2647859F4();

  v26 = os_log_type_enabled(v24, v25);
  v76 = v4;
  if (v26)
  {
    v67 = v25;
    v68 = v18;
    v69 = v17;
    v27 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v27 = 136315650;
    v81 = v3;

    v28 = sub_264785764();
    v30 = v6;
    v31 = sub_2646DF234(v28, v29, aBlock);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v27 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v16);
    v32 = (*(v30 + 48))(v16, 1, v5);
    v70 = v30;
    v71 = v5;
    if (v32 == 1)
    {
      sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
      v33 = 0xED00004449206E6FLL;
      v34 = 0x6973736553206F4ELL;
    }

    else
    {
      v34 = sub_264783B04();
      v33 = v36;
      (*(v30 + 8))(v16, v5);
    }

    v37 = sub_2646DF234(v34, v33, aBlock);

    *(v27 + 24) = v37;
    _os_log_impl(&dword_264605000, v24, v67, "%s, %s: Attempting to end session for sessionID, %s", v27, 0x20u);
    v38 = v66;
    swift_arrayDestroy();
    MEMORY[0x266740650](v38, -1, -1);
    MEMORY[0x266740650](v27, -1, -1);

    v17 = v69;
    v35 = *(v68 + 8);
    v35(v23, v69);
    v6 = v70;
    v5 = v71;
  }

  else
  {

    v35 = *(v18 + 8);
    v35(v23, v17);
  }

  v39 = v75;
  SessionViewModel.currentSessionID.getter(v75);
  if ((*(v6 + 48))(v39, 1, v5) == 1)
  {
    sub_26460CD50(v39, &qword_27FF75CE8, &unk_264788B70);
    v40 = v74;
    sub_264783DF4();

    v41 = sub_264783E14();
    v42 = sub_2647859D4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136315394;
      v81 = v3;

      v45 = sub_264785764();
      v47 = v17;
      v48 = sub_2646DF234(v45, v46, aBlock);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
      _os_log_impl(&dword_264605000, v41, v42, "%s, %s: Error cannot end session without sessionID)", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v44, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);

      v49 = v40;
      v50 = v47;
    }

    else
    {

      v49 = v40;
      v50 = v17;
    }

    v35(v49, v50);
    v65 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
    v78();
  }

  else
  {
    v51 = *(v6 + 32);
    v52 = v77;
    v51(v77, v39, v5);
    v76 = v3[2];
    v53 = v5;
    v75 = sub_264783B14();
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = v73;
    (*(v6 + 16))(v73, v52, v53);
    v56 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v57 = (v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v79;
    v60 = v6;
    v61 = v58;
    *(v58 + 16) = v54;
    v51((v58 + v56), v55, v53);
    v62 = (v61 + v57);
    *v62 = v78;
    v62[1] = v59;
    aBlock[4] = sub_264655E88;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0B4;
    aBlock[3] = &block_descriptor_245;
    v63 = _Block_copy(aBlock);

    v64 = v75;
    [v76 endSessionForSessionID:v75 reason:2 completion:v63];
    _Block_release(v63);

    (*(v60 + 8))(v77, v53);
  }
}

uint64_t sub_264640A3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v72 = a5;
  v73 = a4;
  v70 = sub_264785594();
  v69 = *(v70 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2647855C4();
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783B64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264783E24();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v74 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  sub_264783DF4();
  (*(v12 + 16))(v15, a3, v11);

  v23 = a1;
  v24 = sub_264783E14();
  v25 = sub_2647859F4();

  v26 = os_log_type_enabled(v24, v25);
  v71 = a1;
  if (v26)
  {
    v62 = v25;
    v63 = v17;
    v64 = v16;
    v27 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v27 = 136315906;
    swift_beginAccess();
    v76[1] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v28 = sub_264785764();
    v30 = sub_2646DF234(v28, v29, aBlock);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v27 + 22) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v31 = sub_264785EF4();
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v35 = sub_2646DF234(v31, v33, aBlock);

    *(v27 + 24) = v35;
    *(v27 + 32) = 2080;
    sub_264655E3C(&qword_27FF75D80, MEMORY[0x277CC95F0]);
    v36 = sub_264785E44();
    v38 = v37;
    (*(v12 + 8))(v15, v11);
    v39 = sub_2646DF234(v36, v38, aBlock);

    *(v27 + 34) = v39;
    _os_log_impl(&dword_264605000, v24, v62, "%s, %s: error, %s, sessionID, %s", v27, 0x2Au);
    v40 = v61;
    swift_arrayDestroy();
    MEMORY[0x266740650](v40, -1, -1);
    MEMORY[0x266740650](v27, -1, -1);

    v34 = *(v63 + 8);
    v16 = v64;
    v34(v22, v64);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v34 = *(v17 + 8);
    v34(v22, v16);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v42 = v74;
  if (Strong)
  {
    v43 = Strong;
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v44 = sub_264785A44();
    aBlock[4] = sub_264658F3C;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_469;
    v45 = _Block_copy(aBlock);

    v46 = v65;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    v47 = v67;
    v48 = v70;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v46, v47, v45);
    _Block_release(v45);

    (*(v69 + 8))(v47, v48);
    (*(v66 + 8))(v46, v68);
    v73(v71);
  }

  else
  {
    sub_264783DF4();

    v50 = sub_264783E14();
    v51 = sub_2647859D4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v16;
      v54 = swift_slowAlloc();
      v76[0] = v54;
      *v52 = 136315650;
      swift_beginAccess();
      aBlock[6] = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v55 = sub_264785764();
      v57 = sub_2646DF234(v55, v56, v76);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, v76);
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, v76);
      _os_log_impl(&dword_264605000, v50, v51, "%s, %s: no reference to self in %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v54, -1, -1);
      MEMORY[0x266740650](v52, -1, -1);

      v58 = v42;
      v59 = v53;
    }

    else
    {

      v58 = v42;
      v59 = v16;
    }

    return (v34)(v58, v59);
  }
}

uint64_t sub_264641360(uint64_t a1)
{
  v2 = sub_264783B64();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v31[0] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v31 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v19 = v35;
  v20 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
  swift_beginAccess();
  sub_26460CCE8(v19 + v20, v18, &qword_27FF75CE8, &unk_264788B70);

  v31[1] = a1;
  v21 = v32;
  SessionViewModel.currentSessionID.getter(v16);
  v22 = *(v6 + 56);
  sub_26460CCE8(v18, v9, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CCE8(v16, &v9[v22], &qword_27FF75CE8, &unk_264788B70);
  v23 = *(v21 + 48);
  if (v23(v9, 1, v2) != 1)
  {
    sub_26460CCE8(v9, v33, &qword_27FF75CE8, &unk_264788B70);
    if (v23(&v9[v22], 1, v2) != 1)
    {
      v25 = &v9[v22];
      v26 = v31[0];
      (*(v21 + 32))(v31[0], v25, v2);
      sub_264655E3C(&qword_27FF78040, MEMORY[0x277CC95F0]);
      v27 = v33;
      v28 = sub_264785684();
      v29 = *(v21 + 8);
      v29(v26, v2);
      sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
      sub_26460CD50(v18, &qword_27FF75CE8, &unk_264788B70);
      v29(v27, v2);
      result = sub_26460CD50(v9, &qword_27FF75CE8, &unk_264788B70);
      if ((v28 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
    sub_26460CD50(v18, &qword_27FF75CE8, &unk_264788B70);
    (*(v21 + 8))(v33, v2);
    return sub_26460CD50(v9, &qword_27FF75ED8, &qword_264789880);
  }

  sub_26460CD50(v16, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v18, &qword_27FF75CE8, &unk_264788B70);
  if (v23(&v9[v22], 1, v2) != 1)
  {
    return sub_26460CD50(v9, &qword_27FF75ED8, &qword_264789880);
  }

  sub_26460CD50(v9, &qword_27FF75CE8, &unk_264788B70);
LABEL_8:
  v30 = sub_26471B978();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  sub_264783EE4();
  sub_264629270();
}

void SessionViewModel.safeResponseToTriggerPrompt(with:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v85 = a2;
  v80 = a1;
  v4 = *v2;
  v5 = sub_264783B64();
  v82 = *(v5 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v83 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - v12;
  v14 = sub_264783E24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v81 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v86 = &v76 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v76 - v21;
  sub_264783DF4();

  v23 = sub_264783E14();
  v24 = sub_2647859F4();

  v25 = os_log_type_enabled(v23, v24);
  v87 = v15;
  v79 = v5;
  v84 = v4;
  if (v25)
  {
    v77 = v14;
    v26 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock = v76;
    *v26 = 136315650;
    v94[0] = v2;

    v27 = sub_264785764();
    v29 = sub_2646DF234(v27, v28, &aBlock);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
    *(v26 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v13);
    v30 = v82;
    if ((*(v82 + 48))(v13, 1, v5) == 1)
    {
      sub_26460CD50(v13, &qword_27FF75CE8, &unk_264788B70);
      v31 = 0xED00004449206E6FLL;
      v32 = 0x6973736553206F4ELL;
    }

    else
    {
      v32 = sub_264783B04();
      v31 = v34;
      (*(v30 + 8))(v13, v5);
    }

    v35 = sub_2646DF234(v32, v31, &aBlock);

    *(v26 + 24) = v35;
    _os_log_impl(&dword_264605000, v23, v24, "%s, %s:Attempting to respond to trigger prompt for sessionID, %s", v26, 0x20u);
    v36 = v76;
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v26, -1, -1);

    v33 = *(v87 + 8);
    v14 = v77;
    v33(v22, v77);
  }

  else
  {

    v33 = *(v15 + 8);
    v33(v22, v14);
  }

  v37 = v85;
  v38 = v83;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v39 = aBlock;
  v40 = v86;
  if (aBlock && (v41 = [aBlock sessionState], v39, v41 <= 0xE) && ((1 << v41) & 0x4280) != 0)
  {
    SessionViewModel.currentSessionID.getter(v38);
    v42 = v82;
    v43 = v79;
    if ((*(v82 + 48))(v38, 1, v79) == 1)
    {
      sub_26460CD50(v38, &qword_27FF75CE8, &unk_264788B70);
      sub_264783DF4();

      v44 = sub_264783E14();
      v45 = sub_2647859D4();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock = v47;
        *v46 = 136315394;
        v94[0] = v3;

        v48 = sub_264785764();
        v50 = sub_2646DF234(v48, v49, &aBlock);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
        _os_log_impl(&dword_264605000, v44, v45, "%s, %s: Error cannot safeResponseToTriggerPrompt without sessionID)", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v47, -1, -1);
        MEMORY[0x266740650](v46, -1, -1);

        v51 = v86;
      }

      else
      {

        v51 = v40;
      }

      v33(v51, v14);
      v72 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
      v80();
    }

    else
    {
      v63 = v42;
      v64 = v78;
      v65 = v43;
      (*(v42 + 32))(v78, v38, v43);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      if ((aBlock & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock) = 1;

        sub_264783EE4();
        sub_264628950();
      }

      v66 = v3[2];
      v67 = sub_264783B14();
      v68 = swift_allocObject();
      swift_weakInit();
      v69 = swift_allocObject();
      v70 = v80;
      v69[2] = v68;
      v69[3] = v70;
      v69[4] = v37;
      v92 = sub_264655E8C;
      v93 = v69;
      aBlock = MEMORY[0x277D85DD0];
      v89 = 1107296256;
      v90 = sub_26465A0B4;
      v91 = &block_descriptor_252;
      v71 = _Block_copy(&aBlock);

      [v66 respondToTriggerPromptForSessionID:v67 response:2 handler:v71];
      _Block_release(v71);

      (*(v63 + 8))(v64, v65);
    }
  }

  else
  {
    v52 = v81;
    sub_264783DF4();

    v53 = sub_264783E14();
    v54 = sub_2647859D4();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v94[0] = v56;
      *v55 = 136315650;
      aBlock = v3;

      v57 = sub_264785764();
      v59 = sub_2646DF234(v57, v58, v94);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, v94);
      *(v55 + 22) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v60 = aBlock;
      if (aBlock)
      {
        v61 = [aBlock sessionState];
      }

      else
      {
        v61 = 0;
      }

      aBlock = v61;
      LOBYTE(v89) = v60 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D90, &qword_264789368);
      v73 = sub_264785764();
      v75 = sub_2646DF234(v73, v74, v94);

      *(v55 + 24) = v75;
      _os_log_impl(&dword_264605000, v53, v54, "%s, %s: Unable extend session from state: %s", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v56, -1, -1);
      MEMORY[0x266740650](v55, -1, -1);

      v62 = v81;
    }

    else
    {

      v62 = v52;
    }

    v33(v62, v14);
  }
}

uint64_t sub_264642338(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_264783DF4();

    v17 = a1;
    v18 = sub_264783E14();
    v19 = sub_2647859F4();

    if (os_log_type_enabled(v18, v19))
    {
      v37[1] = a4;
      v38 = a3;
      v39 = v7;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v41[0] = v21;
      *v20 = 136315650;
      v42 = v16;
      type metadata accessor for SessionViewModel(0);

      v22 = sub_264785764();
      v24 = sub_2646DF234(v22, v23, v41);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, v41);
      *(v20 + 22) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v25 = sub_264785EF4();
        v27 = v26;
      }

      else
      {
        v27 = 0xE300000000000000;
        v25 = 7104878;
      }

      v36 = sub_2646DF234(v25, v27, v41);

      *(v20 + 24) = v36;
      _os_log_impl(&dword_264605000, v18, v19, "%s, %s: error to trigger prompt, %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v21, -1, -1);
      MEMORY[0x266740650](v20, -1, -1);

      (*(v8 + 8))(v14, v39);
      a3 = v38;
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    a3(a1);
  }

  else
  {
    sub_264783DF4();

    v28 = sub_264783E14();
    v29 = sub_2647859D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136315650;
      swift_beginAccess();
      v40 = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v32 = sub_264785764();
      v34 = sub_2646DF234(v32, v33, &v42);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &v42);
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &v42);
      _os_log_impl(&dword_264605000, v28, v29, "%s, %s: no reference to self in %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v31, -1, -1);
      MEMORY[0x266740650](v30, -1, -1);
    }

    return (*(v8 + 8))(v12, v7);
  }
}

void sub_2646427CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void SessionViewModel.extendDurationSession(timeInterval:completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v121 = a1;
  v117 = *v2;
  v118 = a2;
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v119 = v4;
  v120 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v108 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v108 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v108 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v108 - v20;
  v22 = sub_264783B64();
  v112 = *(v22 - 8);
  v113 = v22;
  v23 = *(v112 + 64);
  MEMORY[0x28223BE20](v22);
  v114 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_264783AF4();
  v110 = *(v116 - 8);
  v25 = *(v110 + 64);
  v26 = MEMORY[0x28223BE20](v116);
  v111 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v108 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v108 - v32;
  MEMORY[0x28223BE20](v31);
  v115 = &v108 - v34;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v35 = aBlock[0];
  if (aBlock[0] && (v36 = [aBlock[0] isActiveState], v35, v36))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v37 = aBlock[0];
    if (aBlock[0])
    {
      v38 = [aBlock[0] configuration];

      if (v38)
      {
        v39 = [v38 time];
        if (v39)
        {
          v109 = v39;
          if ([v38 sessionType] == 1)
          {
            v108 = v38;
            swift_getKeyPath();
            swift_getKeyPath();
            sub_264783ED4();

            v40 = aBlock[0];
            if (aBlock[0])
            {
              v41 = [aBlock[0] sessionState];

              if (v41 == 2)
              {
                goto LABEL_11;
              }
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_264783ED4();

            v42 = aBlock[0];
            if (!aBlock[0])
            {
              goto LABEL_29;
            }

            v43 = [aBlock[0] sessionState];

            if (v43 == 9)
            {
LABEL_11:
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4();

              v44 = aBlock[0];
              if (aBlock[0] && (v45 = [aBlock[0] sessionState], v44, v45 == 2))
              {
                v46 = [v109 timeBound];
                v47 = v115;
                sub_264783AC4();
              }

              else
              {
                v47 = v115;
                sub_264783AD4();
              }

              v78 = v116;
              v79 = v110;
              v80 = v111;
              (*(v110 + 16))(v30, v47, v116);
              v81 = v79;
              sub_264783A24();
              v82 = objc_allocWithZone(MEMORY[0x277D4AC08]);
              v83 = sub_264783A64();
              v84 = [v82 initWithTimeBound_];

              v85 = *(v81 + 8);
              v119 = v81 + 8;
              v120 = v85;
              (v85)(v33, v78);
              v86 = v108;
              v117 = [v108 conversation];
              v87 = [v86 sessionID];
              sub_264783B44();

              v88 = [v86 sessionStartDate];
              if (v88)
              {
                v89 = v88;
                sub_264783AC4();

                v90 = *(v81 + 32);
                v90(v21, v33, v78);
                (*(v81 + 56))(v21, 0, 1, v78);
                v90(v80, v21, v78);
                v86 = v108;
                v91 = v80;
              }

              else
              {
                (*(v81 + 56))(v21, 1, 1, v78);
                sub_264783AE4();
                v91 = v80;
                if ((*(v81 + 48))(v21, 1, v78) != 1)
                {
                  sub_26460CD50(v21, &qword_27FF756B8, &qword_26478AC90);
                }
              }

              v92 = [objc_opt_self() zelkovaHandoffEnabled];
              v93 = [v86 sosReceivers];
              v94 = objc_allocWithZone(MEMORY[0x277D4AB78]);
              v95 = v84;
              v96 = v114;
              v97 = sub_264783B14();
              v98 = sub_264783A64();
              v99 = v117;
              v100 = [v94 initTimeBoundSessionConfigurationWithConversation:v117 sessionID:v97 time:v95 sessionStartDate:v98 sessionSupportsHandoff:v92 sosReceivers:v93];

              (v120)(v91, v116);
              (*(v112 + 8))(v96, v113);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4();

              if ((aBlock[0] & 1) == 0)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                LOBYTE(aBlock[0]) = 1;

                sub_264783EE4();
                sub_264628950();
              }

              v101 = v3[2];
              v102 = swift_allocObject();
              swift_weakInit();
              v103 = swift_allocObject();
              v103[2] = v102;
              v103[3] = v100;
              v104 = v121;
              v105 = v118;
              v103[4] = v121;
              v103[5] = v105;
              aBlock[4] = sub_264655EE8;
              aBlock[5] = v103;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_26465A0B4;
              aBlock[3] = &block_descriptor_259;
              v106 = _Block_copy(aBlock);
              v107 = v100;
              sub_26460FA4C(v104);

              [v101 modifySessionWithConfiguration:v107 handler:v106];

              _Block_release(v106);
              (v120)(v115, v116);
            }

            else
            {
LABEL_29:
              sub_264783DF4();

              v70 = sub_264783E14();
              v71 = sub_2647859D4();

              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                v73 = swift_slowAlloc();
                aBlock[0] = v73;
                *v72 = 136315394;
                v123 = v3;

                v74 = sub_264785764();
                v76 = sub_2646DF234(v74, v75, aBlock);

                *(v72 + 4) = v76;
                *(v72 + 12) = 2080;
                *(v72 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
                _os_log_impl(&dword_264605000, v70, v71, "%s, %s: not in a valid state for extension", v72, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266740650](v73, -1, -1);
                MEMORY[0x266740650](v72, -1, -1);
              }

              v120[1](v17, v119);
              v77 = v108;
              if (v121)
              {
                v121(0);
              }
            }
          }

          else
          {
            sub_264783DF4();

            v62 = sub_264783E14();
            v63 = sub_2647859D4();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              aBlock[0] = v65;
              *v64 = 136315394;
              v123 = v3;

              v66 = sub_264785764();
              v68 = v38;
              v69 = sub_2646DF234(v66, v67, aBlock);

              *(v64 + 4) = v69;
              v38 = v68;
              *(v64 + 12) = 2080;
              *(v64 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
              _os_log_impl(&dword_264605000, v62, v63, "%s, %s: not in a duration based session", v64, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266740650](v65, -1, -1);
              MEMORY[0x266740650](v64, -1, -1);
            }

            v120[1](v15, v119);
            if (v121)
            {
              v121(0);
            }
          }

          return;
        }
      }
    }

    sub_264783DF4();

    v55 = sub_264783E14();
    v56 = sub_2647859D4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock[0] = v58;
      *v57 = 136315394;
      v123 = v3;

      v59 = sub_264785764();
      v61 = sub_2646DF234(v59, v60, aBlock);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
      _os_log_impl(&dword_264605000, v55, v56, "%s, %s: invalid current configuration", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v58, -1, -1);
      MEMORY[0x266740650](v57, -1, -1);
    }

    v120[1](v12, v119);
  }

  else
  {
    sub_264783DF4();

    v48 = sub_264783E14();
    v49 = sub_2647859D4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136315394;
      v123 = v3;

      v52 = sub_264785764();
      v54 = sub_2646DF234(v52, v53, aBlock);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
      _os_log_impl(&dword_264605000, v48, v49, "%s, %s: not in an active state", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v51, -1, -1);
      MEMORY[0x266740650](v50, -1, -1);
    }

    v120[1](v9, v119);
  }

  if (v121)
  {
    v121(0);
  }
}

uint64_t sub_2646437D4(void *a1, uint64_t a2, void *a3, void (*a4)(BOOL), uint64_t a5)
{
  v65 = a3;
  v66 = a1;
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v58 - v13;
  v14 = sub_264785594();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2647855C4();
  v62 = *(v18 - 8);
  v63 = v18;
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v58 = a5;
    v59 = a4;
    v60 = v8;
    v61 = v7;
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v24 = sub_264785A44();
    aBlock[4] = sub_264658F34;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_466;
    v25 = _Block_copy(aBlock);

    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    sub_264785BD4();
    MEMORY[0x26673F780](0, v21, v17, v25);
    _Block_release(v25);

    (*(v64 + 8))(v17, v14);
    (*(v62 + 8))(v21, v63);
    v26 = v67;
    sub_264783DF4();

    v27 = v65;
    v28 = v66;
    v29 = v66;
    v30 = sub_264783E14();
    v31 = sub_2647859F4();

    v32 = v23;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315907;
      v69 = v32;
      type metadata accessor for SessionViewModel(0);
      v65 = v32;

      v35 = sub_264785764();
      v37 = sub_2646DF234(v35, v36, aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, aBlock);
      *(v33 + 22) = 2085;
      v38 = [v27 debugDescription];
      v39 = sub_264785724();
      v41 = v40;

      v42 = sub_2646DF234(v39, v41, aBlock);

      *(v33 + 24) = v42;
      *(v33 + 32) = 2080;
      v43 = v60;
      if (v28)
      {
        swift_getErrorValue();
        v44 = sub_264785EF4();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0xE000000000000000;
      }

      v56 = v59;
      v57 = sub_2646DF234(v44, v46, aBlock);

      *(v33 + 34) = v57;
      _os_log_impl(&dword_264605000, v30, v31, "%s, %s: modifySession with updatedConfiguration, %{sensitive}s, error: %s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v34, -1, -1);
      MEMORY[0x266740650](v33, -1, -1);

      (*(v43 + 8))(v67, v61);
      if (!v56)
      {
      }
    }

    else
    {

      (*(v60 + 8))(v26, v61);
      v56 = v59;
      if (!v59)
      {
      }
    }

    v56(v28 == 0);
  }

  sub_264783DF4();

  v47 = sub_264783E14();
  v48 = sub_2647859D4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v8;
    v51 = swift_slowAlloc();
    v69 = v51;
    *v49 = 136315650;
    swift_beginAccess();
    aBlock[6] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v52 = sub_264785764();
    v54 = sub_2646DF234(v52, v53, &v69);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, &v69);
    *(v49 + 22) = 2080;
    *(v49 + 24) = sub_2646DF234(0xD00000000000002FLL, 0x8000000264793A70, &v69);
    _os_log_impl(&dword_264605000, v47, v48, "%s, %s: no reference to self in %s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v51, -1, -1);
    MEMORY[0x266740650](v49, -1, -1);

    return (*(v50 + 8))(v12, v7);
  }

  else
  {

    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_264643FE4(uint64_t *a1)
{
  v1 = *a1;
  sub_264655E3C(&qword_27FF75DC0, type metadata accessor for SessionViewModel);
  sub_264783E64();
  sub_264783E74();
}

void sub_264644088(char *a1@<X8>)
{
  if ([objc_opt_self() hasUserCompletedOnboarding])
  {
    SessionViewModel.clearSuggestedSessionConfiguration()();
    v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = 0;

    sub_26461D7C8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v7 && (v5 = [v7 isActiveState], v7, v5) && (SessionViewModel.isActiveSessionForRecipient.getter() & 1) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 3;
  }

  *a1 = v6;
}

uint64_t SessionViewModel.deinit()
{
  v1 = *(v0 + 40);

  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID, &qword_27FF75CE8, &unk_264788B70);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_lastSuggestionConversionEventTime, &qword_27FF756B8, &qword_26478AC90);

  v2 = *(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration);

  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__localSessionState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionState;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__recipientHandles;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__groupID;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionInitializationInfo;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isInitializing;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v15(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingEligibility, v14);
  v15(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingInitiatorEligibility, v14);
  v15(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingReceiverEligibility, v14);
  v15(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__showContactPicker, v14);
  v16 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__endLocation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__candidateSessionDestinations;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__mostLikelyReceiverHandles;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__expectedTravelTime;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__deviceClass;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D40, &qword_264789250);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v15(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isActiveDevice, v14);
  v15(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isProcessingRemoteCommand, v14);
  v26 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__userSessionConfiguration;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v15(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__fetchedMostLikelySessionDestinations, v14);
  return v0;
}

uint64_t SessionViewModel.__deallocating_deinit()
{
  SessionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264644774@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t sub_2646447C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

void sub_264644840(uint64_t *a1)
{
  v2 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &aBlock[-1] - v5;
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v12 = sub_264783E14();
  v13 = sub_2647859F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315394;
    aBlock[6] = a1;

    v17 = sub_264785764();
    v19 = sub_2646DF234(v17, v18, aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, aBlock);
    _os_log_impl(&dword_264605000, v12, v13, "%s, %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v16, -1, -1);
    MEMORY[0x266740650](v15, -1, -1);

    (*(v8 + 8))(v11, v26);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = MEMORY[0x277D84FA0];

  sub_264783EE4();
  sub_264625C28();
  v20 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
  swift_beginAccess();
  *(a1 + v20) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  sub_264783EE4();
  sub_26462A724();
  sub_264783B54();
  v21 = sub_264783B64();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
  swift_beginAccess();
  sub_264659660(v6, a1 + v22, &qword_27FF75CE8, &unk_264788B70);
  swift_endAccess();
  v23 = a1[2];
  v24 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2646596C8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264647434;
  aBlock[3] = &block_descriptor_577;
  v25 = _Block_copy(aBlock);

  [v23 fetchMostLikelySessionDestinationsWithHandler_];
  _Block_release(v25);
}

uint64_t sub_264644CBC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_264785594();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2647855C4();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v25 = sub_264785A44();
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a2;
  aBlock[4] = sub_264659720;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_583;
  v19 = _Block_copy(aBlock);

  v20 = a1;

  v21 = a4;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  v22 = v25;
  MEMORY[0x26673F780](0, v17, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v26);
}

uint64_t sub_264644FE0(uint64_t a1, NSObject *a2, void *a3, void *a4, uint64_t a5)
{
  v160 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v167 = v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v162 = v155 - v13;
  v14 = sub_264783AF4();
  v173 = *(v14 - 8);
  v15 = *(v173 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v159 = v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v164 = v155 - v19;
  MEMORY[0x28223BE20](v18);
  v158 = v155 - v20;
  v21 = sub_264783E24();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v166 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v170 = (v155 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v161 = v155 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v157 = v155 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v163 = v155 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = v155 - v34;
  sub_264783DF4();

  v171 = a2;
  v36 = a2;

  v37 = a4;
  v38 = sub_264783E14();
  v39 = sub_2647859F4();
  v172 = a3;
  v40 = v38;

  v165 = v36;

  v41 = a4;

  LODWORD(v174) = v39;
  if (os_log_type_enabled(v38, v39))
  {
    v156 = v22;
    v168 = v21;
    v169 = v14;
    v42 = swift_slowAlloc();
    v155[0] = swift_slowAlloc();
    v179 = v155[0];
    *v42 = 136316163;
    swift_beginAccess();
    v155[1] = a1;
    Strong = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v43 = sub_264785764();
    v45 = sub_2646DF234(v43, v44, &v179);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v179);
    *(v42 + 22) = 2085;
    if (v171)
    {
      v46 = [v165 debugDescription];
      v47 = sub_264785724();
      v49 = v48;
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v51 = v172;
    v52 = sub_2646DF234(v47, v49, &v179);

    *(v42 + 24) = v52;
    *(v42 + 32) = 2085;
    Strong = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F38, &qword_2647898D0);
    v53 = sub_264785B34();
    v55 = sub_2646DF234(v53, v54, &v179);

    *(v42 + 34) = v55;
    *(v42 + 42) = 2080;
    if (v41)
    {
      swift_getErrorValue();
      v56 = sub_264785EF4();
      v58 = v57;
      v50 = v173;
      v21 = v168;
    }

    else
    {
      v58 = 0xE300000000000000;
      v50 = v173;
      v21 = v168;
      v56 = 7104878;
    }

    v59 = sub_2646DF234(v56, v58, &v179);

    *(v42 + 44) = v59;
    _os_log_impl(&dword_264605000, v40, v174, "%s, %s: mostLikelySessionDestination, %{sensitive}s, candidateSessionPlaceInferences, %{sensitive}s, error, %s", v42, 0x34u);
    v60 = v155[0];
    swift_arrayDestroy();
    MEMORY[0x266740650](v60, -1, -1);
    MEMORY[0x266740650](v42, -1, -1);

    v174 = *(v156 + 8);
    v174(v35, v21);
    v14 = v169;
  }

  else
  {

    v174 = *(v22 + 8);
    v174(v35, v21);
    v50 = v173;
    v51 = v172;
  }

  swift_beginAccess();
  v61 = swift_weakLoadStrong();
  if (v61)
  {
    v62 = v61;
    if (v41)
    {
      v63 = v170;
      sub_264783DF4();
      v64 = v41;

      v65 = sub_264783E14();
      v66 = sub_2647859D4();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v169 = v14;
        v68 = v67;
        v69 = swift_slowAlloc();
        Strong = v69;
        *v68 = 136315650;
        v177 = v62;
        type metadata accessor for SessionViewModel(0);

        v70 = sub_264785764();
        v72 = sub_2646DF234(v70, v71, &Strong);
        v168 = v21;
        v73 = v50;
        v74 = v72;

        *(v68 + 4) = v74;
        v50 = v73;
        *(v68 + 12) = 2080;
        *(v68 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &Strong);
        *(v68 + 22) = 2080;
        swift_getErrorValue();
        v75 = sub_264785EF4();
        v77 = sub_2646DF234(v75, v76, &Strong);

        *(v68 + 24) = v77;
        _os_log_impl(&dword_264605000, v65, v66, "%s, %s: returning early because of error, %s", v68, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v69, -1, -1);
        v78 = v68;
        v14 = v169;
        MEMORY[0x266740650](v78, -1, -1);

        v79 = v170;
        v80 = v168;
      }

      else
      {

        v79 = v63;
        v80 = v21;
      }

      v174(v79, v80);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(Strong) = 1;

      sub_264783EE4();
      sub_26462A724();
      v62[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus] = 3;
      v92 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
      swift_beginAccess();
      v93 = &v62[v92];
      v94 = v167;
      sub_26460CCE8(v93, v167, &qword_27FF756B8, &qword_26478AC90);
      if ((*(v50 + 48))(v94, 1, v14) == 1)
      {

        return sub_26460CD50(v94, &qword_27FF756B8, &qword_26478AC90);
      }

      v95 = v159;
      (*(v50 + 32))(v159, v94, v14);
      v96 = [objc_opt_self() now];
      v97 = v164;
      sub_264783AC4();

      sub_264783A44();
      v99 = v98;
      v100 = *(v50 + 8);
      v100(v97, v14);
      v100(v95, v14);
      v101 = &v62[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency];
      *v101 = v99;
      v101[8] = 0;
    }

    v90 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
    swift_beginAccess();
    *&v62[v90] = v160;
    v91 = v163;
    if (v51)
    {
      if (v51 >> 62)
      {
        if (sub_264785C14())
        {
          goto LABEL_20;
        }
      }

      else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_20:
        sub_264646520(v51);
        goto LABEL_30;
      }
    }

    sub_264783DF4();

    v102 = sub_264783E14();
    v103 = sub_2647859B4();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v169 = v14;
      v106 = v105;
      v177 = v105;
      *v104 = 136315394;
      v176 = v62;
      type metadata accessor for SessionViewModel(0);

      v107 = sub_264785764();
      v109 = sub_2646DF234(v107, v108, &v177);

      *(v104 + 4) = v109;
      *(v104 + 12) = 2080;
      *(v104 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v177);
      _os_log_impl(&dword_264605000, v102, v103, "%s, %s: candidateSessionPlaceInferences nil or empty", v104, 0x16u);
      swift_arrayDestroy();
      v110 = v106;
      v14 = v169;
      MEMORY[0x266740650](v110, -1, -1);
      MEMORY[0x266740650](v104, -1, -1);

      v111 = v163;
    }

    else
    {

      v111 = v91;
    }

    v174(v111, v21);
LABEL_30:
    v112 = v161;
    if (!v171)
    {
      sub_264783DF4();

      v118 = v112;
      v119 = sub_264783E14();
      v120 = sub_2647859B4();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v171 = v119;
        v122 = v121;
        v170 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v177 = v172;
        *v122 = 136315650;
        v176 = v62;
        type metadata accessor for SessionViewModel(0);

        v123 = sub_264785764();
        v125 = v14;
        v126 = v50;
        v127 = sub_2646DF234(v123, v124, &v177);

        *(v122 + 4) = v127;
        v50 = v126;
        v14 = v125;
        *(v122 + 12) = 2080;
        *(v122 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v177);
        *(v122 + 22) = 2112;
        *(v122 + 24) = 0;
        v128 = v170;
        *v170 = 0;
        v129 = v120;
        v130 = v171;
        _os_log_impl(&dword_264605000, v171, v129, "%s, %s: mostLikelySessionDestination not set,%@", v122, 0x20u);
        sub_26460CD50(v128, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v128, -1, -1);
        v131 = v172;
        swift_arrayDestroy();
        MEMORY[0x266740650](v131, -1, -1);
        MEMORY[0x266740650](v122, -1, -1);
      }

      else
      {
      }

      v174(v118, v21);
      goto LABEL_40;
    }

    v113 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
    swift_beginAccess();
    if (*&v62[v113])
    {
LABEL_40:
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v177) = 1;

      sub_264783EE4();
      sub_26462A724();
      v132 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime;
      swift_beginAccess();
      v133 = &v62[v132];
      v134 = v162;
      sub_26460CCE8(v133, v162, &qword_27FF756B8, &qword_26478AC90);
      if ((*(v50 + 48))(v134, 1, v14) == 1)
      {
        sub_26460CD50(v134, &qword_27FF756B8, &qword_26478AC90);
      }

      else
      {
        v135 = v158;
        (*(v50 + 32))(v158, v134, v14);
        v136 = [objc_opt_self() now];
        v137 = v164;
        sub_264783AC4();

        sub_264783A44();
        v139 = v138;
        v140 = *(v50 + 8);
        v140(v137, v14);
        v140(v135, v14);
        v141 = &v62[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency];
        *v141 = v139;
        v141[8] = 0;
      }

      v62[OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus] = 2;
    }

    v114 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v115 = v165;
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v177 == 4)
    {
      goto LABEL_35;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v116 = v177;
    if (v177)
    {
      v117 = [v177 isActiveState];

      if (v117)
      {
LABEL_35:

        goto LABEL_40;
      }
    }

    v142 = v157;
    sub_264783DF4();
    swift_retain_n();
    v143 = sub_264783E14();
    v144 = sub_2647859F4();

    if (!os_log_type_enabled(v143, v144))
    {

      v174(v142, v21);
LABEL_53:
      v153 = v115;
      v154 = _s15SafetyMonitorUI24UserSessionConfigurationC4withACSo16RTPlaceInferenceC_tcfC_0(v153);
      swift_getKeyPath();
      swift_getKeyPath();
      v177 = v154;

      sub_264783EE4();
      sub_264629270();

      v14 = v114;
      goto LABEL_40;
    }

    v145 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v177 = v172;
    *v145 = 136315650;
    v175 = v62;
    type metadata accessor for SessionViewModel(0);

    v146 = sub_264785764();
    v148 = sub_2646DF234(v146, v147, &v177);

    *(v145 + 4) = v148;
    *(v145 + 12) = 2080;
    *(v145 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v177);
    *(v145 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v149 = v175;
    if (v175)
    {
      v150 = [v175 isActiveState];

      if (v150)
      {
        v151 = 1;
LABEL_52:
        *(v145 + 24) = v151;

        _os_log_impl(&dword_264605000, v143, v144, "%s, %s: - Setting initial configuration since hasActiveSession is, %{BOOL}d.", v145, 0x1Cu);
        v152 = v172;
        swift_arrayDestroy();
        MEMORY[0x266740650](v152, -1, -1);
        MEMORY[0x266740650](v145, -1, -1);

        v174(v157, v21);
        v50 = v173;
        goto LABEL_53;
      }
    }

    else
    {
    }

    v151 = 0;
    goto LABEL_52;
  }

  v81 = v166;
  sub_264783DF4();

  v82 = sub_264783E14();
  v83 = sub_2647859D4();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v177 = v85;
    *v84 = 136315650;
    swift_beginAccess();
    v176 = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v86 = sub_264785764();
    v88 = sub_2646DF234(v86, v87, &v177);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;
    *(v84 + 14) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v177);
    *(v84 + 22) = 2080;
    *(v84 + 24) = sub_2646DF234(0xD000000000000024, 0x80000002647946F0, &v177);
    _os_log_impl(&dword_264605000, v82, v83, "%s, %s: no reference to self in %s", v84, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v85, -1, -1);
    MEMORY[0x266740650](v84, -1, -1);
  }

  return (v174)(v81, v21);
}

void sub_264646520(unint64_t a1)
{
  v2 = v1;
  v130 = *v1;
  v118 = sub_264785594();
  v4 = *(v118 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2647855C4();
  v7 = *(v116 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2647855A4();
  v10 = *(v114 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v112 = *(v13 - 8);
  v14 = *(v112 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v111 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v124 = &v103 - v16;
  v136 = sub_264783E24();
  v17 = *(v136 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v136);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v120 = &v103 - v23;
  MEMORY[0x28223BE20](v22);
  v128 = &v103 - v24;
  if (a1 >> 62)
  {
    v25 = sub_264785C14();
    if (!v25)
    {
      return;
    }
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      return;
    }
  }

  if (v25 >= 1)
  {
    v134 = a1 & 0xC000000000000001;
    v110 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
    swift_beginAccess();
    v26 = 0;
    v135 = (v17 + 8);
    v129 = "essionDestinations()";
    v109 = *MEMORY[0x277D851B8];
    v108 = (v10 + 104);
    v107 = (v10 + 8);
    v106 = v14 + 7;
    v105 = v138;
    v104 = (v4 + 8);
    v103 = (v7 + 8);
    *&v27 = 136315651;
    v126 = v27;
    *&v27 = 136315650;
    v119 = v27;
    v133 = v2;
    v125 = a1;
    v131 = v25;
    v132 = v21;
    while (1)
    {
      if (v134)
      {
        v28 = MEMORY[0x26673FA30](v26, a1);
      }

      else
      {
        v28 = *(a1 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 mapItem];
      if (!v30 || (v31 = v30, v32 = [v30 geoMapItemHandle], v31, !v32))
      {
        sub_264783DF4();

        v51 = v29;
        v52 = sub_264783E14();
        v53 = sub_2647859E4();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          aBlock[0] = v56;
          *v54 = v126;
          v139 = v2;

          v57 = sub_264785764();
          v59 = sub_2646DF234(v57, v58, aBlock);

          *(v54 + 4) = v59;
          v25 = v131;
          *(v54 + 12) = 2080;
          *(v54 + 14) = sub_2646DF234(0xD00000000000002DLL, v129 | 0x8000000000000000, aBlock);
          *(v54 + 22) = 2117;
          *(v54 + 24) = v51;
          *v55 = v51;
          v60 = v51;
          _os_log_impl(&dword_264605000, v52, v53, "%s, %s: Map item handle unavailable, placeInference %{sensitive}@", v54, 0x20u);
          sub_26460CD50(v55, &qword_27FF779D0, &qword_26478A9A0);
          v61 = v55;
          v21 = v132;
          MEMORY[0x266740650](v61, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v56, -1, -1);
          MEMORY[0x266740650](v54, -1, -1);

          v2 = v133;
        }

        else
        {
        }

        (*v135)(v21, v136);
        goto LABEL_7;
      }

      v33 = sub_264783A14();
      v35 = v34;

      v36 = v128;
      sub_264783DF4();

      sub_26465944C(v33, v35);
      v37 = sub_264783E14();
      v38 = sub_2647859B4();

      sub_264655264(v33, v35);
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v33;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = v119;
        v139 = v2;

        v42 = sub_264785764();
        v44 = sub_2646DF234(v42, v43, aBlock);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_2646DF234(0xD00000000000002DLL, v129 | 0x8000000000000000, aBlock);
        *(v40 + 22) = 2080;
        sub_26465944C(v39, v35);
        v45 = sub_2647839E4();
        v47 = v46;
        sub_264655264(v39, v35);
        v48 = sub_2646DF234(v45, v47, aBlock);

        *(v40 + 24) = v48;
        v2 = v133;
        _os_log_impl(&dword_264605000, v37, v38, "%s, %s: resolving map item handle, mapItemHandle %s", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v41, -1, -1);
        v49 = v40;
        v33 = v39;
        MEMORY[0x266740650](v49, -1, -1);

        v50 = *v135;
        (*v135)(v128, v136);
      }

      else
      {

        v50 = *v135;
        (*v135)(v36, v136);
      }

      v62 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        if (v62 == 2 && *(v33 + 16) != *(v33 + 24))
        {
LABEL_24:
          v63 = [objc_opt_self() convertPlaceTypeToDestinationType_];
          v64 = [v29 referenceLocation];
          [v64 horizontalUncertainty];
          v66 = v65;

          v122 = v63;
          if (v66 == 100.0)
          {
            v67 = v33;
            v68 = v35;
            v121 = 0;
          }

          else
          {
            v67 = v33;
            v68 = v35;
            if (v66 == 250.0)
            {
              v83 = 1;
            }

            else
            {
              v83 = 2 * (v66 == 375.0);
            }

            v121 = v83;
          }

          v84 = v124;
          sub_26460CCE8(v110, v124, &qword_27FF75CE8, &unk_264788B70);
          sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
          v85 = v113;
          v86 = v114;
          (*v108)(v113, v109, v114);
          v123 = sub_264785A64();
          (*v107)(v85, v86);
          v87 = v84;
          v88 = v111;
          sub_26460CCE8(v87, v111, &qword_27FF75CE8, &unk_264788B70);
          v89 = (*(v112 + 80) + 40) & ~*(v112 + 80);
          v90 = (v106 + v89) & 0xFFFFFFFFFFFFFFF8;
          v91 = swift_allocObject();
          v92 = v67;
          v91[2] = v67;
          v91[3] = v68;
          v127 = v67;
          v93 = v68;
          v94 = v133;
          v91[4] = v133;
          sub_26460E7E4(v88, v91 + v89, &qword_27FF75CE8, &unk_264788B70);
          v95 = v91 + v90;
          *v95 = v122;
          v95[8] = v121;
          v138[2] = sub_26465986C;
          v138[3] = v91;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v138[0] = sub_264659F60;
          v138[1] = &block_descriptor_589;
          v96 = _Block_copy(aBlock);

          v97 = v92;
          v98 = v93;
          sub_26465944C(v97, v93);
          v99 = v115;
          sub_2647855B4();
          v139 = MEMORY[0x277D84F90];
          sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
          sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
          v100 = v117;
          v101 = v118;
          v2 = v94;
          sub_264785BD4();
          v102 = v123;
          MEMORY[0x26673F780](0, v99, v100, v96);
          _Block_release(v96);

          (*v104)(v100, v101);
          (*v103)(v99, v116);
          sub_26460CD50(v124, &qword_27FF75CE8, &unk_264788B70);

          sub_264655264(v127, v98);

          goto LABEL_35;
        }
      }

      else if (v62)
      {
        if (v33 != v33 >> 32)
        {
          goto LABEL_24;
        }
      }

      else if ((v35 & 0xFF000000000000) != 0)
      {
        goto LABEL_24;
      }

      v69 = v120;
      sub_264783DF4();

      v70 = v29;
      v71 = sub_264783E14();
      v72 = sub_2647859E4();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v123 = v50;
        v75 = v74;
        v76 = swift_slowAlloc();
        v127 = v33;
        v77 = v76;
        aBlock[0] = v76;
        *v73 = v126;
        v139 = v2;

        v78 = sub_264785764();
        v80 = sub_2646DF234(v78, v79, aBlock);
        v122 = v35;
        v81 = v80;
        v2 = v133;

        *(v73 + 4) = v81;
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_2646DF234(0xD00000000000002DLL, v129 | 0x8000000000000000, aBlock);
        *(v73 + 22) = 2117;
        *(v73 + 24) = v70;
        *v75 = v70;
        v82 = v70;
        _os_log_impl(&dword_264605000, v71, v72, "%s, %s: Map item handle is empty (0 bytes), placeInference %{sensitive}@", v73, 0x20u);
        sub_26460CD50(v75, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v75, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266740650](v77, -1, -1);
        MEMORY[0x266740650](v73, -1, -1);

        sub_264655264(v127, v122);
        v123(v69, v136);
      }

      else
      {
        sub_264655264(v33, v35);

        v50(v69, v136);
      }

LABEL_35:
      a1 = v125;
      v25 = v131;
      v21 = v132;
LABEL_7:
      if (v25 == ++v26)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_264647434(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a4)
  {
    sub_264659B70(0, &qword_27FF75F30, 0x277D011D8);
    v6 = sub_2647857F4();
  }

  v11 = a2;
  v12 = a5;
  v10(a2, a3, v6, a5);
}

void sub_2646474FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v23 = a6;
  v22 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v21 - v12;
  v24 = objc_opt_self();
  v14 = sub_264783A04();
  v15 = swift_allocObject();
  swift_weakInit();
  sub_26460CCE8(a4, v13, &qword_27FF75CE8, &unk_264788B70);
  v16 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_26460E7E4(v13, v17 + v16, &qword_27FF75CE8, &unk_264788B70);
  v18 = v17 + ((v16 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = v22;
  *(v18 + 8) = v23;
  v19 = (v17 + ((v16 + v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a1;
  v19[1] = a2;
  aBlock[4] = sub_264659A4C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26464CCBC;
  aBlock[3] = &block_descriptor_596;
  v20 = _Block_copy(aBlock);
  sub_26465944C(a1, a2);

  [v24 _mapItemFromHandle_completionHandler_];
  _Block_release(v20);
}

uint64_t sub_264647744(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  v121 = a8;
  v120 = a7;
  v123 = a6;
  v130 = a5;
  v134 = a4;
  v132 = a1;
  v129 = sub_264785594();
  v128 = *(v129 - 8);
  v9 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v126 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2647855C4();
  v125 = *(v127 - 8);
  v11 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v124 = v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264783B64();
  v135 = *(v13 - 8);
  v14 = *(v135 + 64);
  MEMORY[0x28223BE20](v13);
  v131 = v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v133 = v117 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v117 - v23;
  v25 = sub_264783E24();
  v26 = *(v25 - 8);
  v136 = v25;
  v137 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v117 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v122 = v117 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = v117 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v117 - v40;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_264783DF4();
    v56 = sub_264783E14();
    v57 = sub_2647859D4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
      _os_log_impl(&dword_264605000, v56, v57, "#Initiator,UserSessionConfiguration, no reference to self in %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x266740650](v59, -1, -1);
      MEMORY[0x266740650](v58, -1, -1);
    }

    v60 = *(v137 + 8);
    v61 = v30;
    return v60(v61, v136);
  }

  v43 = Strong;
  if (a2)
  {
    v44 = a2;
    sub_264783DF4();
    v45 = a2;

    v46 = sub_264783E14();
    v47 = sub_2647859E4();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v48 = 136315650;
      v140 = v43;
      type metadata accessor for SessionViewModel(0);

      v51 = sub_264785764();
      v53 = sub_2646DF234(v51, v52, aBlock);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
      *(v48 + 22) = 2112;
      v54 = a2;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 24) = v55;
      *v49 = v55;
      _os_log_impl(&dword_264605000, v46, v47, "%s, %s: Error hydrating map item from map data handle, error, %@", v48, 0x20u);
      sub_26460CD50(v49, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v49, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v48, -1, -1);
    }

    else
    {
    }

    v60 = *(v137 + 8);
    v61 = v37;
    return v60(v61, v136);
  }

  v62 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
  swift_beginAccess();
  v63 = *(v38 + 48);
  sub_26460CCE8(v134, v41, &qword_27FF75CE8, &unk_264788B70);
  v118 = v62;
  sub_26460CCE8(v43 + v62, &v41[v63], &qword_27FF75CE8, &unk_264788B70);
  v65 = v135 + 48;
  v64 = *(v135 + 48);
  if (v64(v41, 1, v13) != 1)
  {
    sub_26460CCE8(v41, v24, &qword_27FF75CE8, &unk_264788B70);
    if (v64(&v41[v63], 1, v13) != 1)
    {
      v119 = v64;
      v76 = v135;
      v77 = *(v135 + 32);
      v117[1] = v65;
      v78 = v131;
      v77(v131, &v41[v63], v13);
      sub_264655E3C(&qword_27FF78040, MEMORY[0x277CC95F0]);
      v79 = sub_264785684();
      v80 = *(v76 + 8);
      v80(v78, v13);
      v80(v24, v13);
      sub_26460CD50(v41, &qword_27FF75CE8, &unk_264788B70);
      v66 = v33;
      if (v79)
      {
        goto LABEL_21;
      }

LABEL_16:
      sub_264783DF4();
      v67 = v133;
      sub_26460CCE8(v134, v133, &qword_27FF75CE8, &unk_264788B70);

      v68 = sub_264783E14();
      v69 = sub_2647859D4();

      if (os_log_type_enabled(v68, v69))
      {
        LODWORD(v134) = v69;
        v70 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        aBlock[0] = v132;
        *v70 = 136315906;
        v139 = v43;
        type metadata accessor for SessionViewModel(0);

        v71 = sub_264785764();
        v73 = sub_2646DF234(v71, v72, aBlock);

        *(v70 + 4) = v73;
        *(v70 + 12) = 2080;
        *(v70 + 14) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
        *(v70 + 22) = 2080;
        sub_26460CCE8(v67, v20, &qword_27FF75CE8, &unk_264788B70);
        if (v119(v20, 1, v13) == 1)
        {
          sub_26460CD50(v20, &qword_27FF75CE8, &unk_264788B70);
          v74 = 0xE300000000000000;
          v75 = 7104878;
        }

        else
        {
          v75 = sub_264783B04();
          v74 = v92;
          (*(v135 + 8))(v20, v13);
        }

        sub_26460CD50(v67, &qword_27FF75CE8, &unk_264788B70);
        v93 = sub_2646DF234(v75, v74, aBlock);

        *(v70 + 24) = v93;
        *(v70 + 32) = 2080;
        v94 = v118;
        if (v119((v43 + v118), 1, v13))
        {
          v95 = 0xE300000000000000;
          v96 = 7104878;
        }

        else
        {
          v111 = v135;
          v112 = v131;
          (*(v135 + 16))(v131, v43 + v94, v13);
          v113 = sub_264783B04();
          v95 = v114;
          (*(v111 + 8))(v112, v13);
          v96 = v113;
        }

        v115 = sub_2646DF234(v96, v95, aBlock);

        *(v70 + 34) = v115;
        _os_log_impl(&dword_264605000, v68, v134, "%s, %s: previous hydration attempt no longer relevant, previousID %s, currentID %s", v70, 0x2Au);
        v116 = v132;
        swift_arrayDestroy();
        MEMORY[0x266740650](v116, -1, -1);
        MEMORY[0x266740650](v70, -1, -1);
      }

      else
      {

        sub_26460CD50(v67, &qword_27FF75CE8, &unk_264788B70);
      }

      v60 = *(v137 + 8);
      v61 = v66;
      return v60(v61, v136);
    }

    (*(v135 + 8))(v24, v13);
    v66 = v33;
LABEL_15:
    v119 = v64;
    sub_26460CD50(v41, &qword_27FF75ED8, &qword_264789880);
    goto LABEL_16;
  }

  v66 = v33;
  if (v64(&v41[v63], 1, v13) != 1)
  {
    goto LABEL_15;
  }

  sub_26460CD50(v41, &qword_27FF75CE8, &unk_264788B70);
LABEL_21:
  v81 = v132;
  if (v132)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v82 = v81;
    v83 = sub_264785A44();
    v84 = swift_allocObject();
    v85 = v130;
    *(v84 + 16) = v82;
    *(v84 + 24) = v85;
    *(v84 + 32) = v123;
    *(v84 + 40) = v43;
    aBlock[4] = sub_264659B60;
    aBlock[5] = v84;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_602;
    v86 = _Block_copy(aBlock);

    v87 = v82;

    v88 = v124;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    v89 = v126;
    v90 = v129;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v88, v89, v86);
    _Block_release(v86);

    (*(v128 + 8))(v89, v90);
    return (*(v125 + 8))(v88, v127);
  }

  v97 = v122;
  sub_264783DF4();

  v98 = v120;
  v99 = v121;
  sub_26465944C(v120, v121);
  v100 = sub_264783E14();
  v101 = sub_2647859D4();

  sub_264655264(v98, v99);
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock[0] = v104;
    *v102 = 136316162;
    v139 = v43;
    type metadata accessor for SessionViewModel(0);

    v105 = sub_264785764();
    v107 = sub_2646DF234(v105, v106, aBlock);

    *(v102 + 4) = v107;
    *(v102 + 12) = 2080;
    *(v102 + 14) = sub_2646DF234(0xD000000000000041, 0x8000000264794750, aBlock);
    *(v102 + 22) = 2112;
    *(v102 + 24) = 0;
    *v103 = 0;
    *(v102 + 32) = 2080;
    v108 = sub_2647839E4();
    v110 = sub_2646DF234(v108, v109, aBlock);

    *(v102 + 34) = v110;
    *(v102 + 42) = 2048;
    *(v102 + 44) = v130;
    _os_log_impl(&dword_264605000, v100, v101, "%s, %s: Error hydrating,mapItem,%@,mapItemHandle,%s,destinationType,%lu", v102, 0x34u);
    sub_26460CD50(v103, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v103, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v104, -1, -1);
    MEMORY[0x266740650](v102, -1, -1);

    v60 = *(v137 + 8);
    v61 = v122;
  }

  else
  {

    v60 = *(v137 + 8);
    v61 = v97;
  }

  return v60(v61, v136);
}

void sub_264648774(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v10 = qword_27FF75090;
      v7 = a1;
      if (v10 != -1)
      {
        swift_once();
      }

      v8 = &qword_27FF78CE0;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_9;
      }

      v11 = qword_27FF75098;
      v7 = a1;
      if (v11 != -1)
      {
        swift_once();
      }

      v8 = &qword_27FF78CF0;
    }

LABEL_16:
    v12 = *v8;
    v13 = v8[1];
    v14 = sub_264785714();
    [v7 setName_];

    goto LABEL_17;
  }

  if (a2 == 1)
  {
    v6 = qword_27FF75088;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = &qword_27FF78CD0;
    goto LABEL_16;
  }

LABEL_9:
  v9 = a1;
LABEL_17:
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a1;
  sub_264783ED4();

  sub_2646D8C80(v16, v15, a2, a3);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_264625C28();
}

Swift::Bool __swiftcall SessionViewModel.receiverEligiblityNeedsRefresh(for:)(Swift::OpaquePointer a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CA0, &qword_264788A88);
  sub_26460CDF0(&qword_27FF75D98, &qword_27FF75CA0, &qword_264788A88);
  v1 = sub_2647859A4();

  return (v1 & 1) == 0;
}

Swift::Void __swiftcall SessionViewModel.refreshInitiatorEligibility()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v25 - v5;
  v7 = sub_264783E24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v12 = sub_264783E14();
  v13 = sub_2647859F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[0] = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25[1] = v1;
    aBlock[0] = v16;
    *v15 = 136315394;

    v17 = sub_264785764();
    v19 = sub_2646DF234(v17, v18, aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264793AC0, aBlock);
    _os_log_impl(&dword_264605000, v12, v13, "%s, %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v16, -1, -1);
    MEMORY[0x266740650](v15, -1, -1);

    (*(v8 + 8))(v11, v25[0]);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v20 = [objc_opt_self() now];
  sub_264783AC4();

  v21 = sub_264783AF4();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime;
  swift_beginAccess();
  sub_264659660(v6, v1 + v22, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;

  sub_264783EE4();
  v23 = *(v1 + 16);
  aBlock[4] = sub_264655EF4;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264649774;
  aBlock[3] = &block_descriptor_262;
  v24 = _Block_copy(aBlock);

  [v23 checkInitiatorEligibilityWithHandler_];
  _Block_release(v24);
}

uint64_t sub_264648ECC(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_264785594();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2647855C4();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_264783E24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v44 = v6;
    v20 = a2;
    sub_264783DF4();
    v21 = a2;

    v22 = sub_264783E14();
    v23 = sub_2647859D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = a1;
      v25 = v24;
      v42 = swift_slowAlloc();
      v49 = a3;
      aBlock[0] = v42;
      *v25 = 136315650;

      v26 = sub_264785764();
      v41 = v23;
      v28 = sub_2646DF234(v26, v27, aBlock);
      v44 = v15;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264793AC0, aBlock);
      *(v25 + 22) = 2080;
      swift_getErrorValue();
      v30 = sub_264785EF4();
      v32 = sub_2646DF234(v30, v31, aBlock);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_264605000, v22, v41, "%s, %s: %s", v25, 0x20u);
      v33 = v42;
      swift_arrayDestroy();
      MEMORY[0x266740650](v33, -1, -1);
      v34 = v25;
      a1 = v43;
      MEMORY[0x266740650](v34, -1, -1);

      (*(v16 + 8))(v19, v44);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v35 = sub_264785A44();
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  *(v36 + 24) = a1;
  aBlock[4] = sub_264658F2C;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_463;
  v37 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  v38 = v48;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v14, v10, v37);
  _Block_release(v37);

  (*(v47 + 8))(v10, v38);
  return (*(v45 + 8))(v14, v46);
}

uint64_t sub_264649440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_264783AF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v24 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v15 = v26;

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = a2;
  v26 = v15;
  v27 = 0;

  sub_264783EE4();
  sub_264621B20();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v25) = 0;

  sub_264783EE4();
  v16 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime;
  swift_beginAccess();
  sub_26460CCE8(a1 + v16, v7, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_26460CD50(v7, &qword_27FF756B8, &qword_26478AC90);
  }

  (*(v9 + 32))(v14, v7, v8);
  v18 = [objc_opt_self() now];
  v19 = v24;
  sub_264783AC4();

  sub_264783A44();
  v21 = v20;
  v22 = *(v9 + 8);
  v22(v19, v8);
  result = (v22)(v14, v8);
  v23 = a1 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityLatency;
  *v23 = v21;
  *(v23 + 8) = 0;
  return result;
}

Swift::Void __swiftcall SessionViewModel.refreshReceiverEligibility()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-v9];
  sub_264783DF4();

  v11 = sub_264783E14();
  v12 = sub_2647859F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v12;
    v14 = v13;
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v14 = 136315394;
    v43 = v1;

    v15 = sub_264785764();
    v17 = v3;
    v18 = v8;
    v19 = v4;
    v20 = sub_2646DF234(v15, v16, &aBlock);

    *(v14 + 4) = v20;
    v4 = v19;
    v8 = v18;
    v3 = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793AE0, &aBlock);
    _os_log_impl(&dword_264605000, v11, v36, "%s, %s", v14, 0x16u);
    v21 = v37;
    swift_arrayDestroy();
    MEMORY[0x266740650](v21, -1, -1);
    MEMORY[0x266740650](v14, -1, -1);
  }

  v22 = *(v4 + 8);
  v22(v10, v3);
  v23 = sub_26462B210();
  if (v23)
  {
    v24 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;

    sub_264783EE4();
    v25 = v1[2];
    v41 = sub_264655EFC;
    v42 = v1;
    aBlock = MEMORY[0x277D85DD0];
    *&v39 = 1107296256;
    *(&v39 + 1) = sub_26464A36C;
    v40 = &block_descriptor_265;
    v26 = _Block_copy(&aBlock);

    [v25 checkConversationEligibility:v24 handler:v26];
    _Block_release(v26);
  }

  else
  {
    sub_264783DF4();

    v27 = sub_264783E14();
    v28 = sub_2647859D4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136315394;
      v43 = v1;

      v31 = sub_264785764();
      v37 = v4;
      v33 = sub_2646DF234(v31, v32, &aBlock);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793AE0, &aBlock);
      _os_log_impl(&dword_264605000, v27, v28, "%s, %s: no valid conversation", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v30, -1, -1);
      MEMORY[0x266740650](v29, -1, -1);
    }

    v22(v8, v3);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v34 = aBlock;

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v34;
    v39 = xmmword_2647889D0;

    sub_264783EE4();
    sub_264621B20();
  }
}

uint64_t sub_264649CE4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_264785594();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2647855C4();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_264783E24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v44 = v6;
    v20 = a2;
    sub_264783DF4();
    v21 = a2;

    v22 = sub_264783E14();
    v23 = sub_2647859D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = a1;
      v25 = v24;
      v42 = swift_slowAlloc();
      v49 = a3;
      aBlock[0] = v42;
      *v25 = 136315650;

      v26 = sub_264785764();
      v41 = v23;
      v28 = sub_2646DF234(v26, v27, aBlock);
      v44 = v15;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793AE0, aBlock);
      *(v25 + 22) = 2080;
      swift_getErrorValue();
      v30 = sub_264785EF4();
      v32 = sub_2646DF234(v30, v31, aBlock);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_264605000, v22, v41, "%s, %s: %s", v25, 0x20u);
      v33 = v42;
      swift_arrayDestroy();
      MEMORY[0x266740650](v33, -1, -1);
      v34 = v25;
      a1 = v43;
      MEMORY[0x266740650](v34, -1, -1);

      (*(v16 + 8))(v19, v44);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v35 = sub_264785A44();
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  *(v36 + 24) = a1;
  aBlock[4] = sub_264658F24;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_457;
  v37 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  v38 = v48;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v14, v10, v37);
  _Block_release(v37);

  (*(v47 + 8))(v10, v38);
  return (*(v45 + 8))(v14, v46);
}

uint64_t sub_26464A258()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  sub_264621B20();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

Swift::Void __swiftcall SessionViewModel.refreshEligibility()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264785594();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647855C4();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783E24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v58 - v15;
  sub_264783DF4();

  v17 = sub_264783E14();
  v18 = sub_2647859F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    LODWORD(v62) = v18;
    v20 = v19;
    v69 = swift_slowAlloc();
    aBlock = v69;
    *v20 = 136315394;
    v76 = v1;

    v21 = sub_264785764();
    v23 = v9;
    v24 = v14;
    v25 = v10;
    v26 = sub_2646DF234(v21, v22, &aBlock);

    *(v20 + 4) = v26;
    v27 = v25;
    v14 = v24;
    v9 = v23;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, &aBlock);
    _os_log_impl(&dword_264605000, v17, v62, "%s, %s", v20, 0x16u);
    v28 = v69;
    swift_arrayDestroy();
    MEMORY[0x266740650](v28, -1, -1);
    MEMORY[0x266740650](v20, -1, -1);

    v29 = *(v27 + 8);
    v29(v16, v23);
  }

  else
  {

    v29 = *(v10 + 8);
    v29(v16, v9);
  }

  v30 = sub_26462B210();
  if (v30)
  {
    v31 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0;
    v71 = 0;
    v72 = 0;

    sub_264783EE4();
    sub_264621B20();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 1;

    sub_264783EE4();
    v34 = dispatch_group_create();
    dispatch_group_enter(v34);
    v35 = v1[2];
    v36 = swift_allocObject();
    v36[2] = v1;
    v36[3] = v32;
    v36[4] = v34;
    v74 = sub_264655F2C;
    v75 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v71 = 1107296256;
    v72 = sub_264649774;
    v73 = &block_descriptor_275;
    v37 = _Block_copy(&aBlock);

    v38 = v34;

    [v35 checkInitiatorEligibilityWithHandler_];
    _Block_release(v37);
    dispatch_group_enter(v38);
    v39 = swift_allocObject();
    v39[2] = v1;
    v39[3] = v33;
    v39[4] = v38;
    v74 = sub_264659FB4;
    v75 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v71 = 1107296256;
    v58[4] = &v72;
    v72 = sub_26464A36C;
    v73 = &block_descriptor_281;
    v40 = _Block_copy(&aBlock);

    v69 = v38;

    [v35 checkConversationEligibility:v31 handler:v40];
    _Block_release(v40);
    v60 = sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v41 = sub_264785A44();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = v32;
    v61 = v33;
    v62 = v32;
    v43[4] = v33;
    v74 = sub_264655F94;
    v75 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v71 = 1107296256;
    v72 = sub_264659F60;
    v73 = &block_descriptor_288;
    v44 = _Block_copy(&aBlock);

    v45 = v63;
    sub_2647855B4();
    v76 = MEMORY[0x277D84F90];
    v58[2] = sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
    v59 = v31;
    v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    v58[3] = sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    v46 = v66;
    v47 = v68;
    sub_264785BD4();
    sub_264785A14();
    _Block_release(v44);

    v67 = *(v67 + 8);
    (v67)(v46, v47);
    v48 = v65;
    v64 = *(v64 + 8);
    (v64)(v45, v65);

    v49 = sub_264785A44();
    v74 = sub_264655FA0;
    v75 = v1;
    aBlock = MEMORY[0x277D85DD0];
    v71 = 1107296256;
    v72 = sub_264659F60;
    v73 = &block_descriptor_291;
    v50 = _Block_copy(&aBlock);

    sub_2647855B4();
    aBlock = MEMORY[0x277D84F90];
    sub_264785BD4();
    MEMORY[0x26673F780](0, v45, v46, v50);
    _Block_release(v50);

    (v67)(v46, v47);
    (v64)(v45, v48);
  }

  else
  {
    sub_264783DF4();

    v51 = sub_264783E14();
    v52 = sub_2647859D4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v53 = 136315394;
      v76 = v1;

      v55 = sub_264785764();
      v57 = sub_2646DF234(v55, v56, &aBlock);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, &aBlock);
      _os_log_impl(&dword_264605000, v51, v52, "%s, %s: no valid conversation", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v54, -1, -1);
      MEMORY[0x266740650](v53, -1, -1);
    }

    v29(v14, v9);
  }
}

void sub_26464AE1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v32 = a1;
    v15 = a2;
    sub_264783DF4();
    v16 = a2;

    v17 = sub_264783E14();
    v18 = sub_2647859D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = a5;
      v20 = v19;
      v30 = swift_slowAlloc();
      v33 = a3;
      v34[0] = v30;
      *v20 = 136315650;
      type metadata accessor for SessionViewModel(0);

      v21 = sub_264785764();
      v23 = sub_2646DF234(v21, v22, v34);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, v34);
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v24 = sub_264785EF4();
      v26 = sub_2646DF234(v24, v25, v34);

      *(v20 + 24) = v26;
      _os_log_impl(&dword_264605000, v17, v18, "%s, %s: %s", v20, 0x20u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x266740650](v27, -1, -1);
      v28 = v20;
      a5 = v31;
      MEMORY[0x266740650](v28, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
    a1 = v32;
  }

  swift_beginAccess();
  *(a4 + 16) = a1;
  dispatch_group_leave(a5);
}

uint64_t sub_26464B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v10 = *(a2 + 16);
    swift_beginAccess();
    v11 = *(a3 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = 0;

    sub_264783EE4();
    sub_264621B20();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v20[0]) = 0;
    return sub_264783EE4();
  }

  else
  {
    sub_264783DF4();

    v13 = sub_264783E14();
    v14 = sub_2647859D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136315394;
      swift_beginAccess();
      v20[0] = swift_weakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
      v17 = sub_264785764();
      v19 = sub_2646DF234(v17, v18, v21);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, v21);
      _os_log_impl(&dword_264605000, v13, v14, "%s, %s: unexpectedly missing self)", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v16, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

void sub_26464B3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_264658E74;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26464BA40;
  v4[3] = &block_descriptor_445;
  v3 = _Block_copy(v4);

  [v1 checkHasSimWithHandler_];
  _Block_release(v3);
}

uint64_t sub_26464B4C4(char a1, void *a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264785594();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2647855C4();
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a2)
    {
      v37 = v5;
      v19 = a2;
      sub_264783DF4();

      v20 = a2;
      v21 = sub_264783E14();
      v22 = sub_2647859D4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v38 = v18;
        aBlock[0] = v24;
        *v23 = 136315650;
        type metadata accessor for SessionViewModel(0);

        v25 = sub_264785764();
        v27 = sub_2646DF234(v25, v26, aBlock);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264793B00, aBlock);
        *(v23 + 22) = 2080;
        swift_getErrorValue();
        v28 = sub_264785EF4();
        v30 = sub_2646DF234(v28, v29, aBlock);

        *(v23 + 24) = v30;
        _os_log_impl(&dword_264605000, v21, v22, "%s, %s: checkHasSim, error, %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v24, -1, -1);
        MEMORY[0x266740650](v23, -1, -1);
      }

      else
      {
      }

      return (*(v37 + 8))(v8, v4);
    }

    else
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v35 = sub_264785A44();
      v31 = swift_allocObject();
      *(v31 + 16) = v18;
      *(v31 + 24) = a1 & 1;
      aBlock[4] = sub_264658EB4;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_451;
      v32 = _Block_copy(aBlock);

      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      sub_264785BD4();
      v33 = v35;
      MEMORY[0x26673F780](0, v16, v12, v32);
      _Block_release(v32);

      (*(v37 + 8))(v12, v9);
      return (*(v36 + 8))(v16, v13);
    }
  }

  return result;
}

void sub_26464BA40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void SessionViewModel.checkInitiatorEligibility(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_264655FE0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_264649774;
  v8[3] = &block_descriptor_297;
  v7 = _Block_copy(v8);

  [v5 checkInitiatorEligibilityWithHandler_];
  _Block_release(v7);
}

uint64_t sub_26464BB9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_264785594();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2647855C4();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v16 = sub_264785A44();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  v17[5] = a2;
  aBlock[4] = sub_264658E44;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_441;
  v18 = _Block_copy(aBlock);

  v19 = a2;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v15, v11, v18);
  _Block_release(v18);

  (*(v22 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v21);
}

Swift::Void __swiftcall SessionViewModel.initializeWatchConfiguration()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v1;
    v17 = v11;
    *v10 = 136315394;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD00000000000001ELL, 0x8000000264793B20, &v17);
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  SessionViewModel.prepareForConfigurationPresentation()();
  sub_2646366D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v17 && (v15 = *(v17 + 16), , v15))
  {
    SessionViewModel.refreshEligibility()();
  }

  else
  {
    SessionViewModel.refreshInitiatorEligibility()();
  }
}

uint64_t sub_26464C148(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_264785594();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2647855C4();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v26);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v25 = sub_264785A44();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a1;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_264659CC0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_623;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  v21 = a1;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  v22 = v25;
  MEMORY[0x26673F780](0, v17, v13, v19);
  _Block_release(v19);

  (*(v27 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v26);
}

uint64_t sub_26464C46C(void *a1, uint64_t a2, void *a3, void (*a4)(void, void, void, void), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v82 = &v76 - v12;
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v76 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  v83 = v20;
  if (a1)
  {
    v23 = a1;
    sub_264783DF4();
    v24 = a1;

    v25 = sub_264783E14();
    v26 = sub_2647859D4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v79 = a4;
      v28 = v27;
      v29 = swift_slowAlloc();
      v77 = v14;
      v30 = v29;
      v84 = a2;
      v85 = v29;
      *v28 = 136315650;
      type metadata accessor for SessionViewModel(0);

      v31 = sub_264785764();
      v33 = sub_2646DF234(v31, v32, &v85);
      v78 = a5;
      v34 = v33;

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2646DF234(0xD000000000000026, 0x8000000264794800, &v85);
      *(v28 + 22) = 2080;
      swift_getErrorValue();
      v35 = sub_264785EF4();
      v37 = sub_2646DF234(v35, v36, &v85);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_264605000, v25, v26, "%s, %s: workout snapshot - error: %s", v28, 0x20u);
      swift_arrayDestroy();
      v38 = v30;
      v14 = v77;
      MEMORY[0x266740650](v38, -1, -1);
      v39 = v28;
      a4 = v79;
      MEMORY[0x266740650](v39, -1, -1);
    }

    else
    {
    }

    v13 = v83;
    (*(v14 + 8))(v22, v83);
  }

  if (a3)
  {
    v40 = v14;
    v41 = a3;
    v42 = v81;
    sub_264783DF4();
    v43 = v41;

    v44 = v43;
    v45 = sub_264783E14();
    v46 = sub_2647859F4();

    v47 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = swift_slowAlloc();
      v49 = a4;
      v50 = swift_slowAlloc();
      v84 = a2;
      v85 = v50;
      *v48 = 136316162;
      type metadata accessor for SessionViewModel(0);

      v51 = sub_264785764();
      v53 = sub_2646DF234(v51, v52, &v85);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_2646DF234(0xD000000000000026, 0x8000000264794800, &v85);
      *(v48 + 22) = 1024;
      v54 = [v44 isWorkoutOngoing];

      *(v48 + 24) = v54;
      *(v48 + 28) = 2048;
      v55 = [v44 activityType];

      *(v48 + 30) = v55;
      *(v48 + 38) = 2048;
      v56 = [v44 sessionType];

      *(v48 + 40) = v56;
      _os_log_impl(&dword_264605000, v45, v46, "%s, %s: isWorkoutOngoing, %{BOOL}d, activity, %lu, sessionType, %ld", v48, 0x30u);
      swift_arrayDestroy();
      v57 = v50;
      a4 = v49;
      MEMORY[0x266740650](v57, -1, -1);
      v58 = v48;
      v47 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
      MEMORY[0x266740650](v58, -1, -1);

      (*(v40 + 8))(v81, v83);
    }

    else
    {

      (*(v40 + 8))(v42, v13);
    }

    v70 = [v44 v47[140]];
    v71 = [v44 sessionIdentifier];
    v72 = v82;
    sub_264783B44();

    v73 = sub_264783B64();
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    a4(v70, v72, [v44 activityType], objc_msgSend(v44, sel_sessionType));
  }

  else
  {
    v59 = v80;
    sub_264783DF4();

    v60 = sub_264783E14();
    v61 = sub_2647859F4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v14;
      v64 = a4;
      v65 = swift_slowAlloc();
      v84 = a2;
      v85 = v65;
      *v62 = 136315394;
      type metadata accessor for SessionViewModel(0);

      v66 = sub_264785764();
      v68 = sub_2646DF234(v66, v67, &v85);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_2646DF234(0xD000000000000026, 0x8000000264794800, &v85);
      _os_log_impl(&dword_264605000, v60, v61, "%s, %s: workout snapshot is nil", v62, 0x16u);
      swift_arrayDestroy();
      v69 = v65;
      a4 = v64;
      MEMORY[0x266740650](v69, -1, -1);
      MEMORY[0x266740650](v62, -1, -1);

      (*(v63 + 8))(v59, v83);
    }

    else
    {

      (*(v14 + 8))(v59, v13);
    }

    v74 = sub_264783B64();
    v72 = v82;
    (*(*(v74 - 8) + 56))(v82, 1, 1, v74);
    a4(0, v72, 3000, 0);
  }

  return sub_26460CD50(v72, &qword_27FF75CE8, &unk_264788B70);
}

void sub_26464CCBC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t SessionViewModel.InitiatorViewType.hashValue.getter()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

SafetyMonitorUI::SessionViewModel::InitiatorViewType __swiftcall SessionViewModel.viewType(for:withPayloadID:)(Swift::OpaquePointer a1, Swift::String withPayloadID)
{
  v4 = v3;
  object = withPayloadID._object;
  countAndFlagsBits = withPayloadID._countAndFlagsBits;
  v8 = v2;
  v147 = *v3;
  v149 = sub_264783E24();
  v9 = *(v149 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v149);
  v13 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v143 = &v137 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v137 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v142 = &v137 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v141 = &v137 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v144 = &v137 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v145 = &v137 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v137 - v27;

  v29 = sub_264785E14();

  v148 = v8;
  if (v29 > 3)
  {
    sub_264783DF4();

    v51 = sub_264783E14();
    v52 = sub_2647859D4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v9;
      v55 = swift_slowAlloc();
      v154[0] = v55;
      *v53 = 136315906;
      v155[0] = v4;

      v56 = sub_264785764();
      v58 = sub_2646DF234(v56, v57, v154);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
      *(v53 + 22) = 2080;
      *(v53 + 24) = sub_2646DF234(countAndFlagsBits, object, v154);
      *(v53 + 32) = 2080;
      *(v53 + 34) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
      _os_log_impl(&dword_264605000, v51, v52, "%s, %s: Unable to handle payload type - Unknown payloadID %s passed to %s", v53, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v55, -1, -1);
      MEMORY[0x266740650](v53, -1, -1);

      result = (*(v54 + 8))(v13, v149);
    }

    else
    {

      result = (*(v9 + 8))(v13, v149);
    }

    *v148 = 0;
  }

  else
  {
    v138 = v18;
    sub_264783DF4();

    v30 = sub_264783E14();
    v31 = sub_2647859F4();

    v32 = os_log_type_enabled(v30, v31);
    rawValue = a1._rawValue;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v140 = v4;
      v34 = v33;
      v35 = swift_slowAlloc();
      v154[0] = v35;
      *v34 = 136315906;
      v155[0] = v140;

      v36 = sub_264785764();
      v139 = v9;
      v38 = sub_2646DF234(v36, v37, v154);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
      *(v34 + 22) = 2080;
      *(v34 + 24) = sub_2646DF234(countAndFlagsBits, object, v154);
      *(v34 + 32) = 2080;
      v39 = sub_264785624();
      v41 = sub_2646DF234(v39, v40, v154);

      *(v34 + 34) = v41;
      v9 = v139;
      _os_log_impl(&dword_264605000, v30, v31, "%s, %s: Valid payloadID %s passed, Payload, %s", v34, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266740650](v35, -1, -1);
      v42 = v34;
      v4 = v140;
      MEMORY[0x266740650](v42, -1, -1);
    }

    v43 = *(v9 + 8);
    v43(v28, v149);
    v44 = v145;
    v45 = v148;
    if (qword_27FF74FD8 != -1)
    {
      swift_once();
    }

    v150 = qword_27FF76490;
    v151 = *algn_27FF76498;

    sub_264785C84();
    v46 = rawValue;
    if (rawValue[2] && (v47 = sub_26465492C(v154), (v48 & 1) != 0))
    {
      sub_264655DB8(v46[7] + 32 * v47, v155);
      sub_264655FE8(v154);
      if (swift_dynamicCast())
      {
        v49 = v150;
        v50 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
        swift_beginAccess();
        *&v4[v50] = v49;
        v46 = rawValue;
        sub_264614A6C();
      }
    }

    else
    {
      sub_264655FE8(v154);
    }

    if (v29 - 2 < 2)
    {
      sub_264783DF4();

      v60 = sub_264783E14();
      v61 = sub_2647859F4();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = v4;
        v64 = swift_slowAlloc();
        v154[0] = v64;
        *v62 = 136315394;
        v155[0] = v63;

        v65 = sub_264785764();
        v67 = sub_2646DF234(v65, v66, v154);

        *(v62 + 4) = v67;
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
        _os_log_impl(&dword_264605000, v60, v61, "%s, %s: Workouts payload type", v62, 0x16u);
        swift_arrayDestroy();
        v68 = v64;
        v4 = v63;
        v45 = v148;
        MEMORY[0x266740650](v68, -1, -1);
        MEMORY[0x266740650](v62, -1, -1);
      }

      v43(v44, v149);
      v78 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
      swift_beginAccess();
      v79 = *&v4[v78];
      *&v4[v78] = 0;

      sub_26461D7C8();
      SessionViewModel.clearSuggestedSessionConfiguration()();
      sub_26464E628(rawValue);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v80 = v155[0];
      if (v155[0])
      {
        v81 = [v155[0] isActiveState];

        if (v81)
        {
          result = SessionViewModel.isActiveSessionForRecipient.getter();
          if (result)
          {
LABEL_24:
            *v45 = 2;
            return result;
          }
        }
      }

      goto LABEL_51;
    }

    if (!v29)
    {
      v69 = v144;
      sub_264783DF4();

      v70 = sub_264783E14();
      v71 = sub_2647859F4();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v139 = v9;
        v74 = v73;
        v154[0] = v73;
        *v72 = 136315394;
        v155[0] = v4;

        v75 = sub_264785764();
        v77 = sub_2646DF234(v75, v76, v154);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2080;
        *(v72 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
        _os_log_impl(&dword_264605000, v70, v71, "%s, %s: New message payload type", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v74, -1, -1);
        MEMORY[0x266740650](v72, -1, -1);

        v43(v69, v149);
LABEL_36:
        sub_264644088(v45);
        return result;
      }

      v88 = v69;
LABEL_35:
      v43(v88, v149);
      goto LABEL_36;
    }

    v82 = *MEMORY[0x277D4ACB8];
    v152 = sub_264785724();
    v153 = v83;
    sub_264785C84();
    if (!v46[2] || (v84 = sub_26465492C(v154), (v85 & 1) == 0))
    {
      result = sub_264655FE8(v154);
      *v45 = 0;
      return result;
    }

    sub_264655DB8(v46[7] + 32 * v84, v155);
    sub_264655FE8(v154);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      goto LABEL_41;
    }

    v86 = v152;
    if (v152 <= 1)
    {
      v87 = v143;
      if (v152)
      {
        if (v152 == 1)
        {
          v89 = v141;
          sub_264783DF4();

          v90 = sub_264783E14();
          v91 = sub_2647859F4();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v154[0] = v93;
            *v92 = 136315394;
            v155[0] = v4;

            v94 = sub_264785764();
            v96 = sub_2646DF234(v94, v95, v154);

            *(v92 + 4) = v96;
            *(v92 + 12) = 2080;
            *(v92 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
            _os_log_impl(&dword_264605000, v90, v91, "%s, %s: Details view payload type", v92, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v93, -1, -1);
            MEMORY[0x266740650](v92, -1, -1);
          }

          result = v43(v89, v149);
          goto LABEL_24;
        }

LABEL_44:
        sub_264783DF4();

        v109 = sub_264783E14();
        v110 = sub_2647859D4();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v139 = v9;
          v113 = v112;
          v154[0] = v112;
          *v111 = 136315650;
          v155[0] = v4;

          v114 = sub_264785764();
          v116 = sub_2646DF234(v114, v115, v154);

          *(v111 + 4) = v116;
          *(v111 + 12) = 2080;
          *(v111 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
          *(v111 + 22) = 2048;
          *(v111 + 24) = v86;
          _os_log_impl(&dword_264605000, v109, v110, "%s, %s: - unknown SMDeepLinkURLPayloadType: %ld", v111, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v113, -1, -1);
          MEMORY[0x266740650](v111, -1, -1);

          v117 = v143;
        }

        else
        {

          v117 = v87;
        }

        result = v43(v117, v149);
        *v45 = 0;
        return result;
      }

LABEL_41:
      *v45 = 0;
      return result;
    }

    v87 = v143;
    if ((v152 - 2) >= 2)
    {
      if (v152 == 4)
      {
        v122 = v138;
        sub_264783DF4();
        swift_retain_n();
        v123 = sub_264783E14();
        v124 = sub_2647859F4();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v139 = v9;
          v127 = v126;
          v155[0] = v126;
          *v125 = 136315906;
          v154[0] = v4;

          v128 = sub_264785764();
          v130 = sub_2646DF234(v128, v129, v155);
          v147 = v43;
          v131 = v45;
          v132 = v4;
          v133 = v130;

          *(v125 + 4) = v133;
          v134 = v132;
          v45 = v131;
          *(v125 + 12) = 2080;
          *(v125 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v155);
          *(v125 + 22) = 2048;
          *(v125 + 24) = 4;
          *(v125 + 32) = 2048;
          v135 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
          swift_beginAccess();
          v136 = *&v134[v135];

          *(v125 + 34) = v136;

          _os_log_impl(&dword_264605000, v123, v124, "%s, %s: AppIntent payload type, session entry type %ld, %lu", v125, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x266740650](v127, -1, -1);
          MEMORY[0x266740650](v125, -1, -1);

          v147(v122, v149);
          goto LABEL_36;
        }

        v88 = v122;
        goto LABEL_35;
      }

      if (v152 != 5)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v97 = v142;
    sub_264783DF4();

    v98 = sub_264783E14();
    v99 = sub_2647859F4();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v139 = v9;
      v102 = v101;
      v154[0] = v101;
      *v100 = 136315650;
      v155[0] = v4;

      v103 = sub_264785764();
      v105 = sub_2646DF234(v103, v104, v154);
      v147 = v43;
      v106 = v45;
      v107 = v4;
      v108 = v105;

      *(v100 + 4) = v108;
      v4 = v107;
      v45 = v106;
      *(v100 + 12) = 2080;
      *(v100 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264793B40, v154);
      *(v100 + 22) = 2048;
      *(v100 + 24) = v86;
      _os_log_impl(&dword_264605000, v98, v99, "%s, %s: Suggestions payload type, %ld", v100, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v102, -1, -1);
      MEMORY[0x266740650](v100, -1, -1);

      v147(v97, v149);
    }

    else
    {

      v43(v97, v149);
    }

    SessionViewModel.clearSuggestedSessionConfiguration()();
    v118 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
    swift_beginAccess();
    v119 = *&v4[v118];
    *&v4[v118] = 0;

    sub_26461D7C8();
    sub_26464E07C(rawValue);
    v120 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    if (v86 == 2)
    {
      v121 = 2;
    }

    else
    {
      v121 = 8;
    }

    swift_beginAccess();
    *&v4[v120] = v121;
    sub_264614A6C();
    result = [objc_opt_self() hasUserCompletedOnboarding];
    if (result)
    {
LABEL_51:
      *v45 = 1;
      return result;
    }

    *v45 = 3;
  }

  return result;
}

uint64_t sub_26464E07C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v47 = sub_264783E24();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  sub_264783DF4();

  v12 = sub_264783E14();
  v13 = sub_2647859F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v46 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v50[0] = v16;
    *v15 = 136315650;
    v51 = v2;

    v17 = sub_264785764();
    v45 = v9;
    v19 = sub_2646DF234(v17, v18, v50);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794280, v50);
    *(v15 + 22) = 2080;
    v20 = sub_264785624();
    v22 = sub_2646DF234(v20, v21, v50);

    *(v15 + 24) = v22;
    v9 = v45;
    _os_log_impl(&dword_264605000, v12, v13, "%s, %s: payload, %s", v15, 0x20u);
    v23 = v47;
    swift_arrayDestroy();
    MEMORY[0x266740650](v16, -1, -1);
    v24 = v15;
    v25 = v46;
    MEMORY[0x266740650](v24, -1, -1);

    v26 = *(v25 + 8);
    v26(v11, v23);
  }

  else
  {

    v26 = *(v5 + 8);
    v26(v11, v47);
  }

  if (qword_27FF74FD0 != -1)
  {
    swift_once();
  }

  v48 = qword_27FF76480;
  v49 = *algn_27FF76488;

  sub_264785C84();
  if (*(a1 + 16) && (v27 = sub_26465492C(v50), (v28 & 1) != 0))
  {
    sub_264655DB8(*(a1 + 56) + 32 * v27, &v51);
    sub_264655FE8(v50);
    if (swift_dynamicCast())
    {
      v29 = sub_2647839F4();
      v31 = v30;

      if (v31 >> 60 != 15)
      {
        sub_264659B70(0, &qword_27FF75EB0, 0x277CCAAC8);
        sub_264659B70(0, &qword_27FF75EB8, 0x277D4AB78);
        v32 = sub_264785A04();
        if (v32)
        {
          v43 = v32;
          SessionViewModel.setSuggestedSessionConfiguration(_:)(v32);

          return sub_264655900(v29, v31);
        }

        sub_264655900(v29, v31);
      }
    }
  }

  else
  {
    sub_264655FE8(v50);
  }

  sub_264783DF4();

  v33 = sub_264783E14();
  v34 = sub_2647859F4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50[0] = v36;
    *v35 = 136315394;
    v51 = v2;

    v37 = sub_264785764();
    v39 = v9;
    v40 = sub_2646DF234(v37, v38, v50);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794280, v50);
    _os_log_impl(&dword_264605000, v33, v34, "%s, %s: unable to decode payload data", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v35, -1, -1);

    v41 = v39;
  }

  else
  {

    v41 = v9;
  }

  return (v26)(v41, v47);
}

void sub_26464E628(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v43 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v8 = v47[0];
  if (v47[0])
  {
    v9 = [v47[0] isActiveState];

    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v10 = v47[0];
      if (v47[0])
      {
        v11 = [v47[0] configuration];

        if (v11)
        {
          v12 = [v11 conversation];

          if (v12)
          {
            v13 = [v12 receiverHandles];
            sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
            v14 = sub_2647857F4();

            if (v14 >> 62)
            {
              v15 = sub_264785C14();
              if (v15)
              {
                goto LABEL_8;
              }
            }

            else
            {
              v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v15)
              {
LABEL_8:
                v43[1] = v2;
                v44 = v12;
                v47[0] = MEMORY[0x277D84F90];
                sub_2646F2074(0, v15 & ~(v15 >> 63), 0);
                if (v15 < 0)
                {
                  __break(1u);
                  return;
                }

                v16 = 0;
                v17 = v47[0];
                v18 = v14;
                v19 = v14 & 0xC000000000000001;
                v20 = v14;
                v21 = v15;
                do
                {
                  if (v19)
                  {
                    v22 = MEMORY[0x26673FA30](v16, v18);
                  }

                  else
                  {
                    v22 = *(v18 + 8 * v16 + 32);
                  }

                  v23 = v22;
                  v24 = [v22 primaryHandle];
                  v25 = sub_264785724();
                  v27 = v26;

                  v47[0] = v17;
                  v29 = v17[2];
                  v28 = v17[3];
                  if (v29 >= v28 >> 1)
                  {
                    sub_2646F2074((v28 > 1), v29 + 1, 1);
                    v17 = v47[0];
                  }

                  ++v16;
                  v17[2] = v29 + 1;
                  v30 = &v17[2 * v29];
                  v30[4] = v25;
                  v30[5] = v27;
                  v18 = v20;
                }

                while (v21 != v16);

                v12 = v44;
                goto LABEL_28;
              }
            }

            v17 = MEMORY[0x277D84F90];
LABEL_28:
            swift_getKeyPath();
            swift_getKeyPath();
            v47[0] = v17;

            sub_264783EE4();
            sub_264620548();
            v38 = [v12 identifier];
            if (v38)
            {
              v39 = v38;
              v40 = sub_264785724();
              v42 = v41;
            }

            else
            {
              v40 = 0;
              v42 = 0;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v47[0] = v40;
            v47[1] = v42;

            sub_264783EE4();
            sub_264621058();

            return;
          }
        }
      }
    }
  }

  if ([objc_opt_self() zelkovaWorkoutEnabled])
  {
    v45 = 0xD000000000000013;
    v46 = 0x80000002647941E0;
    sub_264785C84();
    if (*(a1 + 16) && (v31 = sub_26465492C(v47), (v32 & 1) != 0))
    {
      sub_264655DB8(*(a1 + 56) + 32 * v31, v48);
      sub_264655FE8(v47);
      if (swift_dynamicCast())
      {
        v33 = v45;
        v34 = sub_264783B64();
        (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
        v35 = _s15SafetyMonitorUI24UserSessionConfigurationC07workoutE2ID0G12ActivityType0geJ0AC10Foundation4UUIDVSg_So09HKWorkoutiJ0VSo0meJ0VtcfC_0(v7, v33, 0);
        v36 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
        swift_beginAccess();
        v37 = *(v2 + v36);
        *(v2 + v36) = v35;

        sub_26461D7C8();
      }
    }

    else
    {
      sub_264655FE8(v47);
    }
  }

  if (!SessionViewModel.isStartingAndSending.getter())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v48[0] = 0;

    sub_264783EE4();
    sub_264620548();
    swift_getKeyPath();
    swift_getKeyPath();
    v48[0] = 0;
    v48[1] = 0;

    sub_264783EE4();
    sub_264621058();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v48[0]) = 0;

    sub_264783EE4();
    sub_2646240F4();
    sub_26464EC40();
  }
}

uint64_t sub_26464EC40()
{
  v1 = v0;
  v26 = sub_264785594();
  v29 = *(v26 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2647855C4();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = sub_2647858E4();
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;
  v16[5] = v13;

  v17 = v13;
  sub_264635430(0, 0, v12, &unk_264789828, v16);

  dispatch_group_enter(v17);
  v15(v12, 1, 1, v14);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v1;
  v18[5] = v17;

  v19 = v17;
  sub_264635430(0, 0, v12, &unk_264789838, v18);

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v20 = sub_264785A44();
  v21 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_264658A74;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_413;
  v22 = _Block_copy(aBlock);

  sub_2647855B4();
  v30 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  v23 = v26;
  sub_264785BD4();
  sub_264785A14();
  _Block_release(v22);

  (*(v29 + 8))(v4, v23);
  (*(v27 + 8))(v8, v28);
}

uint64_t sub_26464F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_264785594();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = sub_2647855C4();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26464F21C, 0, 0);
}

uint64_t sub_26464F21C()
{
  v1 = v0[20];
  v2 = v0[12];
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) = 1;
  v3 = [objc_opt_self() now];
  sub_264783AC4();

  v4 = sub_264783AF4();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_264659660(v1, v2 + v5, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_26464F37C;
  v7 = v0[12];

  return sub_26464F704();
}

uint64_t sub_26464F37C(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_26464F47C, 0, 0);
}

uint64_t sub_26464F47C()
{
  v1 = v0[22];
  v2 = v0[19];
  v17 = v0[17];
  v18 = v0[20];
  v3 = v0[16];
  v15 = v0[15];
  v16 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v14 = sub_264785A44();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v5;
  v0[6] = sub_264658D9C;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264659F60;
  v0[5] = &block_descriptor_433;
  v8 = _Block_copy(v0 + 2);
  v13 = v1;

  v9 = v5;
  sub_2647855B4();
  v0[11] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v2, v3, v8);
  _Block_release(v8);

  (*(v15 + 8))(v3, v4);
  (*(v16 + 8))(v2, v17);
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26464F704()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = sub_264783E24();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26464F7EC, 0, 0);
}

uint64_t sub_26464F7EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4AB18]) initWithRequireEligibility:1 requireContact:1 requireNonBlockedContact:1 requireOnlyFavoritedHandles:1 requireOnlyPastSessionRecipients:1 firstResultOnly:1];
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_26464F8B8;
  v3 = v0[3];

  return sub_264650F74(v1);
}

uint64_t sub_26464F8B8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_26464F9B8, 0, 0);
}

uint64_t sub_26464F9B8()
{
  v34 = v0;
  v1 = v0;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[3];
  sub_264783DF4();

  v5 = sub_264783E14();
  v6 = sub_2647859C4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[10];
    v8 = v0[6];
    v9 = v0[4];
    v31 = v0[5];
    v32 = v0[7];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315650;
    v0[2] = v10;

    v13 = sub_264785764();
    v15 = sub_2646DF234(v13, v14, &v33);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264794260, &v33);
    *(v11 + 22) = 2080;
    v16 = sub_264659B70(0, &qword_27FF75E98, 0x277D4AAE8);
    v17 = MEMORY[0x26673F530](v7, v16);
    v19 = sub_2646DF234(v17, v18, &v33);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264605000, v5, v6, "%s, %s: fetched handles: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v12, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v8 + 8))(v32, v31);
  }

  else
  {
    v20 = v0[6];
    v21 = v0[7];
    v22 = v1[5];

    (*(v20 + 8))(v21, v22);
  }

  v23 = v1[10];
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v26 = v1[10];
    }

    result = sub_264785C14();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:
    v27 = v1[10];

    v25 = 0;
    goto LABEL_14;
  }

  result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x26673FA30](0, v1[10]);
    v30 = v1[10];
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v1[10] + 32);
  }

LABEL_14:
  v28 = v1[7];

  v29 = v1[1];

  return v29(v25);
}

void sub_26464FCAC(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_264783AF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  if (a1)
  {
    v18 = [a1 primaryHandle];
    v19 = sub_264785724();
    v31 = a3;
    v20 = v19;
    v22 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78060, &qword_264789860);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2647889E0;
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v23;

    sub_264783EE4();
    sub_264620548();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v24 = v32;

    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v24;
    v33 = xmmword_2647889F0;

    a3 = v31;
    sub_264783EE4();
    sub_264621B20();
    *(a2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) = 2;
  }

  v25 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_26460CCE8(a2 + v25, v9, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26460CD50(v9, &qword_27FF756B8, &qword_26478AC90);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    v26 = [objc_opt_self() now];
    sub_264783AC4();

    sub_264783A44();
    v28 = v27;
    v29 = *(v11 + 8);
    v29(v15, v10);
    v29(v17, v10);
    v30 = a2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesLatency;
    *v30 = v28;
    *(v30 + 8) = 0;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_264650074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = sub_264785594();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = sub_2647855C4();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646501C8, 0, 0);
}

uint64_t sub_2646501C8()
{
  v1 = v0[20];
  v2 = v0[12];
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) = 1;
  v3 = [objc_opt_self() now];
  sub_264783AC4();

  v4 = sub_264783AF4();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_264659660(v1, v2 + v5, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  v6 = [objc_allocWithZone(MEMORY[0x277D4AB18]) initWithRequireEligibility:1 requireContact:1 requireNonBlockedContact:1 requireOnlyFavoritedHandles:1 requireOnlyPastSessionRecipients:0];
  v0[21] = v6;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_264650360;
  v8 = v0[12];

  return sub_264650F74(v6);
}

uint64_t sub_264650360(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_264650460, 0, 0);
}

uint64_t sub_264650460()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[16];
  v16 = v0[17];
  v17 = v0[20];
  v4 = v0[14];
  v14 = v0[15];
  v15 = v0[18];
  v6 = v0[12];
  v5 = v0[13];

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v13 = sub_264785A44();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v1;
  v7[4] = v5;
  v0[6] = sub_264658AEC;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264659F60;
  v0[5] = &block_descriptor_419;
  v8 = _Block_copy(v0 + 2);

  v9 = v5;
  sub_2647855B4();
  v0[11] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v2, v3, v8);
  _Block_release(v8);

  (*(v14 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

void sub_2646506DC(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v51 - v8;
  v10 = sub_264783AF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v51 - v15;
  v16 = sub_264783E24();
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v55 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v19 = sub_264785C14();
  }

  else
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  v59 = v11;
  v60 = v10;
  v58 = v9;
  if (v19)
  {
    v62[0] = MEMORY[0x277D84F90];
    sub_2646F2074(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return;
    }

    v51 = a1;
    v52 = a3;
    v21 = 0;
    v20 = v62[0];
    v22 = v19;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26673FA30](v21, a2);
      }

      else
      {
        v23 = *(a2 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v23 primaryHandle];
      v26 = sub_264785724();
      v28 = v27;

      v62[0] = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2646F2074((v29 > 1), v30 + 1, 1);
        v20 = v62[0];
      }

      ++v21;
      *(v20 + 16) = v30 + 1;
      v31 = v20 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    while (v22 != v21);
    v19 = v22;
    a1 = v51;
    a3 = v52;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v62[0] = v20;

  sub_264783EE4();
  sub_2646265F0();
  v32 = v55;
  sub_264783DF4();

  v33 = sub_264783E14();
  v34 = sub_2647859F4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v61 = a1;
    v62[0] = v36;
    *v35 = 136315394;
    type metadata accessor for SessionViewModel(0);

    v37 = sub_264785764();
    v39 = sub_2646DF234(v37, v38, v62);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264794200, v62);
    _os_log_impl(&dword_264605000, v33, v34, "%s, %s: got likely recipients", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v35, -1, -1);
  }

  (*(v56 + 8))(v32, v57);
  v41 = v59;
  v40 = v60;
  v42 = v58;
  if (v19 >= 1)
  {
    *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) = 2;
  }

  v43 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime;
  swift_beginAccess();
  sub_26460CCE8(a1 + v43, v42, &qword_27FF756B8, &qword_26478AC90);
  if ((*(v41 + 48))(v42, 1, v40) == 1)
  {
    sub_26460CD50(v42, &qword_27FF756B8, &qword_26478AC90);
  }

  else
  {
    v44 = v53;
    (*(v41 + 32))(v53, v42, v40);
    v45 = [objc_opt_self() now];
    v46 = v54;
    sub_264783AC4();

    sub_264783A44();
    v48 = v47;
    v49 = *(v41 + 8);
    v49(v46, v40);
    v49(v44, v40);
    v50 = a1 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesLatency;
    *v50 = v48;
    *(v50 + 8) = 0;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_264650C90()
{
  v0 = sub_264783E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v17)
    {
      v7 = v17;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = *(v7 + 16);

    if (!v8)
    {
      sub_264783DF4();

      v9 = sub_264783E14();
      v10 = sub_2647859F4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16[1] = v6;
        v17 = v12;
        *v11 = 136315394;
        type metadata accessor for SessionViewModel(0);

        v13 = sub_264785764();
        v15 = sub_2646DF234(v13, v14, &v17);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264794200, &v17);
        _os_log_impl(&dword_264605000, v9, v10, "%s, %s: no prestaged handle, got likely recipients, showing contact picker", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v12, -1, -1);
        MEMORY[0x266740650](v11, -1, -1);
      }

      (*(v1 + 8))(v4, v0);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v17) = 1;

      sub_264783EE4();
      sub_2646240F4();
    }
  }

  return result;
}

uint64_t sub_264650F74(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = sub_264783AF4();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_264783E24();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2646510B8, 0, 0);
}

uint64_t sub_2646510B8()
{
  v27 = v0;
  v1 = v0[6].i64[0];
  v2 = v0[2].i64[1];
  sub_264783DF4();

  v3 = sub_264783E14();
  v4 = sub_2647859F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5].i64[1];
    v24 = v0[6].i64[0];
    v6 = v0[5].i64[0];
    v8 = v0[2].i64[1];
    v7 = v0[3].i64[0];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    v0[1].i64[1] = v8;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264794220, &v26);
    _os_log_impl(&dword_264605000, v3, v4, "%s, %s: fetchMostLikelyReceiverHandles, called from UI", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    (*(v5 + 8))(v24, v6);
  }

  else
  {
    v15 = v0[5].i64[1];
    v14 = v0[6].i64[0];
    v16 = v0[5].i64[0];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[4].i64[1];
  v25 = v0[2];
  v18 = [objc_opt_self() now];
  sub_264783AC4();

  v19 = swift_task_alloc();
  v0[6].i64[1] = v19;
  v19[1] = vextq_s8(v25, v25, 8uLL);
  v19[2].i64[0] = v17;
  v20 = *(MEMORY[0x277D859E0] + 4);
  v21 = swift_task_alloc();
  v0[7].i64[0] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA0, &qword_264789848);
  *v21 = v0;
  v21[1] = sub_2646513A8;

  return MEMORY[0x2822007B8](&v0[1], 0, 0, 0xD00000000000001CLL, 0x8000000264794220, sub_264658AF8, v19, v22);
}

uint64_t sub_2646513A8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2646514C0, 0, 0);
}

uint64_t sub_2646514C0()
{
  v1 = v0[12];
  v2 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];

  return v3(v2);
}

void sub_264651558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v32 = a3;
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_264783AF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_264783E24();
  v31 = *(v33 - 1);
  v14 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    v29 = a2;
    v33 = *(a2 + 16);
    (*(v11 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v10);
    (*(v6 + 16))(v9, v34, v5);
    v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v18 = (v12 + *(v6 + 80) + v17) & ~*(v6 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v29;
    (*(v11 + 32))(v19 + v17, v13, v10);
    (*(v6 + 32))(v19 + v18, v9, v5);
    aBlock[4] = sub_264658C60;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264651D70;
    aBlock[3] = &block_descriptor_427;
    v20 = _Block_copy(aBlock);

    [v33 fetchMostLikelyReceiverHandlesWithOptions:v32 handler:v20];
    _Block_release(v20);
  }

  else
  {
    sub_264783DF4();

    v21 = sub_264783E14();
    v22 = sub_2647859F4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315394;
      aBlock[6] = a2;
      type metadata accessor for SessionViewModel(0);

      v25 = sub_264785764();
      v27 = sub_2646DF234(v25, v26, aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264794220, aBlock);
      _os_log_impl(&dword_264605000, v21, v22, "%s, %s: contacts access not authorized", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v24, -1, -1);
      MEMORY[0x266740650](v23, -1, -1);
    }

    (*(v31 + 8))(v16, v33);
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264785894();
  }
}

uint64_t sub_264651A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v8 = sub_264783AF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_264783E24();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v30);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  (*(v9 + 16))(v12, a4, v8);

  v17 = sub_264783E14();
  v18 = sub_2647859F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29[1] = a5;
    v20 = v19;
    v29[0] = swift_slowAlloc();
    v32 = a3;
    v33 = v29[0];
    *v20 = 136315650;
    type metadata accessor for SessionViewModel(0);

    v21 = sub_264785764();
    v23 = sub_2646DF234(v21, v22, &v33);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2646DF234(0xD00000000000001CLL, 0x8000000264794220, &v33);
    *(v20 + 22) = 2048;
    sub_264783AA4();
    v25 = v24;
    (*(v9 + 8))(v12, v8);
    *(v20 + 24) = -v25;
    _os_log_impl(&dword_264605000, v17, v18, "%s, %s: fetchMostLikelyReceiverHandles, UI latency: %f", v20, 0x20u);
    v26 = v29[0];
    swift_arrayDestroy();
    MEMORY[0x266740650](v26, -1, -1);
    MEMORY[0x266740650](v20, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v13 + 8))(v16, v30);
  v27 = MEMORY[0x277D84F90];
  if (v31)
  {
    v27 = v31;
  }

  v33 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850);
  return sub_264785894();
}

Swift::String_optional __swiftcall SessionViewModel.badgeImageName()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v8 || (v0 = [v8 sessionState], v8, v0 != 4))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (!v8 || (v1 = [v8 unsupportedDeviceSeparationState], v8, !v1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      if (v8)
      {
        v4 = [v8 separatedLPMConnectivityWarningState];

        if (v4)
        {
          goto LABEL_10;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      if (v8)
      {
        v5 = [v8 userDisabledConnectivity];

        if (v5)
        {
LABEL_10:
          v3 = 0x8000000264793B80;
          v2 = 0xD000000000000033;
          goto LABEL_22;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      if (!v8)
      {
        v2 = 0;
        v3 = 0;
        goto LABEL_22;
      }

      v6 = [v8 sessionState];

      v2 = 0;
      if (v6 > 0xE)
      {
        v3 = 0;
        goto LABEL_22;
      }

      if (((1 << v6) & 0x4380) != 0)
      {
        v3 = 0xEA00000000006C6CLL;
        v2 = 0x69662E6B636F6C63;
        goto LABEL_22;
      }

      if (((1 << v6) & 0x1004) != 0)
      {
        v3 = 0x8000000264793640;
        v2 = 0xD000000000000015;
        goto LABEL_22;
      }

      v3 = 0;
      if (v6 != 4)
      {
        goto LABEL_22;
      }
    }
  }

  v2 = 0xD00000000000001BLL;
  v3 = 0x8000000264793B60;
LABEL_22:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t SessionViewModel.badgeImageColor()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v5)
  {
    v0 = [v5 sessionState];

    if (v0 == 4)
    {
      return sub_264785164();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v5)
  {
    v1 = [v5 unsupportedDeviceSeparationState];

    if (v1)
    {
      return sub_264785164();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v5 || (v2 = [v5 userDisabledConnectivity], v5, !v2))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v5)
    {
      v3 = [v5 sessionState];

      if (v3 != 4)
      {
        if (v3 == 12)
        {
          return sub_264785184();
        }

        goto LABEL_12;
      }

      return sub_264785164();
    }
  }

LABEL_12:
  if (qword_27FF75398 != -1)
  {
    swift_once();
  }
}

uint64_t _s15SafetyMonitorUI8UserTypeO2idSivg_0()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

uint64_t sub_2646522F4()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

unint64_t sub_264652338@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2646586D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_264652370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_264785594();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2647855C4();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v15 = sub_264785A44();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  aBlock[4] = sub_2646592EC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_534;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v14, v10, v17);
  _Block_release(v17);

  (*(v21 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v20);
}

void sub_264652680(void *a1, uint64_t a2, void *a3)
{
  v68 = *a3;
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v63[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v63[-v15];
  if (a1)
  {
    v17 = a1;
    LODWORD(v67) = [v17 isFirstPartyWorkout];
    v18 = sub_264785864();
    swift_beginAccess();
    v19 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v18, 0xD000000000000013, 0x8000000264794600, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v69;
    swift_endAccess();
    sub_264783DF4();

    v21 = sub_264783E14();
    v22 = sub_2647859C4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v66 = v17;
      v24 = v23;
      v65 = swift_slowAlloc();
      v70[0] = v65;
      *v24 = 136315650;
      v69 = a3;

      v25 = sub_264785764();
      v27 = sub_2646DF234(v25, v26, v70);
      v64 = v22;
      v28 = v7;
      v29 = v27;

      *(v24 + 4) = v29;
      v7 = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2646DF234(0xD00000000000004FLL, 0x80000002647945B0, v70);
      *(v24 + 22) = 1024;
      *(v24 + 24) = v67;
      _os_log_impl(&dword_264605000, v21, v64, "%s, %s: value of isFirstPartyWorkout, %{BOOL}d", v24, 0x1Cu);
      v30 = v65;
      swift_arrayDestroy();
      MEMORY[0x266740650](v30, -1, -1);
      MEMORY[0x266740650](v24, -1, -1);
    }

    else
    {
    }

    v40 = *(v7 + 8);
    v40(v16, v6);
  }

  else
  {
    sub_264783DF4();

    v31 = sub_264783E14();
    v32 = sub_2647859F4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70[0] = v67;
      *v33 = 136315394;
      v69 = a3;

      v34 = sub_264785764();
      v36 = sub_2646DF234(v34, v35, v70);
      LODWORD(v66) = v32;
      v37 = v7;
      v38 = v36;

      *(v33 + 4) = v38;
      v7 = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2646DF234(0xD00000000000004FLL, 0x80000002647945B0, v70);
      _os_log_impl(&dword_264605000, v31, v66, "%s, %s: workout snapshot is nil", v33, 0x16u);
      v39 = v67;
      swift_arrayDestroy();
      MEMORY[0x266740650](v39, -1, -1);
      MEMORY[0x266740650](v33, -1, -1);
    }

    v40 = *(v7 + 8);
    v40(v14, v6);
  }

  sub_264783DF4();

  v41 = sub_264783E14();
  v42 = sub_2647859F4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v67 = v7;
    v44 = v43;
    v45 = swift_slowAlloc();
    v66 = v11;
    v46 = v45;
    v70[0] = v45;
    *v44 = 136315650;
    v69 = a3;

    v47 = sub_264785764();
    v49 = sub_2646DF234(v47, v48, v70);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_2646DF234(0xD00000000000004FLL, 0x80000002647945B0, v70);
    *(v44 + 22) = 2080;
    swift_beginAccess();
    v50 = *(a2 + 16);
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);

    v51 = sub_264785624();
    v52 = v6;
    v54 = v53;

    v55 = sub_2646DF234(v51, v54, v70);

    *(v44 + 24) = v55;
    _os_log_impl(&dword_264605000, v41, v42, "%s, %s, sending analytics event SessionStartEntryType, %s", v44, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v46, -1, -1);
    MEMORY[0x266740650](v44, -1, -1);

    v56 = v66;
    v57 = v52;
  }

  else
  {

    v56 = v11;
    v57 = v6;
  }

  v40(v56, v57);
  v58 = *MEMORY[0x277D4AE38];
  swift_beginAccess();
  v59 = *(a2 + 16);
  v60 = v58;

  sub_264692AAC(v61);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v62 = sub_264785604();

  AnalyticsSendEvent();
}

void sub_264652DD0(uint64_t a1, uint64_t a2, int a3, dispatch_group_t group)
{
  if (!a1)
  {
    v6 = sub_264785B54();
    swift_beginAccess();
    v7 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v6, 0xD000000000000018, 0x8000000264794550, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v9;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_264652E88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_264652F08(uint64_t a1, uint64_t a2, int a3, dispatch_group_t group)
{
  if (!a1)
  {
    v6 = sub_264785B54();
    swift_beginAccess();
    v7 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v6, 0xD000000000000018, 0x8000000264794530, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v9;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

uint64_t sub_264652FB8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v26 = a1;
  v10 = sub_264785594();
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2647855C4();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v29);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v18 = sub_264785A44();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v20 = v27;
  v19[4] = v26;
  v19[5] = a4;
  aBlock[4] = v20;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = v28;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  v23 = a4;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v17, v13, v21);
  _Block_release(v21);

  (*(v30 + 8))(v13, v10);
  return (*(v14 + 8))(v17, v29);
}

void sub_2646532C0(uint64_t a1, uint64_t a2, int a3, dispatch_group_t group)
{
  if (!a1)
  {
    v6 = sub_264785B54();
    swift_beginAccess();
    v7 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_2646933E4(v6, 0xD00000000000001BLL, 0x8000000264794510, isUniquelyReferenced_nonNull_native);
    *(a2 + 16) = v9;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_264653370(uint64_t a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v9 = sub_264783E14();
  v10 = sub_2647859F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315650;
    v29 = a1;
    type metadata accessor for SessionViewModel(0);

    v14 = sub_264785764();
    v16 = sub_2646DF234(v14, v15, v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2646DF234(0xD00000000000003ELL, 0x80000002647944D0, v30);
    *(v12 + 22) = 2080;
    swift_beginAccess();
    v17 = *(a2 + 16);
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);

    v18 = sub_264785624();
    v20 = v19;

    v21 = sub_2646DF234(v18, v20, v30);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_264605000, v9, v10, "%s, %s, sending analytics event perSessionUserDetails, %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v12, -1, -1);

    (*(v5 + 8))(v8, v28);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v22 = *MEMORY[0x277D4AE10];
  swift_beginAccess();
  v23 = *(a2 + 16);
  v24 = v22;

  sub_264692AAC(v25);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v26 = sub_264785604();

  AnalyticsSendEvent();
}

void sub_2646536C8(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v90 = a4;
  v10 = sub_264783854();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_264783E24();
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = *(v91 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v88 - v20;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (sub_264785C14())
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_264783DF4();
    (*(v11 + 16))(v14, a6, v10);

    v77 = sub_264783E14();
    v78 = sub_2647859F4();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v94[0] = v80;
      *v79 = 136315650;
      v93 = a5;
      type metadata accessor for SessionViewModel(0);

      v81 = sub_264785764();
      v83 = sub_2646DF234(v81, v82, v94);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2080;
      *(v79 + 14) = sub_2646DF234(0xD000000000000037, 0x80000002647942D0, v94);
      *(v79 + 22) = 2080;
      sub_264655E3C(&qword_27FF75EF0, MEMORY[0x277CC88A8]);
      v84 = sub_264785E44();
      v86 = v85;
      (*(v11 + 8))(v14, v10);
      v87 = sub_2646DF234(v84, v86, v94);

      *(v79 + 24) = v87;
      _os_log_impl(&dword_264605000, v77, v78, "%s, %s, no suggestions found in date interval %s", v79, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v80, -1, -1);
      MEMORY[0x266740650](v79, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    (*(v91 + 8))(v19, v92);
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x26673FA30](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v22 = *(a1 + 32);
  }

  v23 = v22;
  v24 = *MEMORY[0x277D4AE48];
  v25 = sub_264785724();
  v27 = v26;
  v28 = sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);
  v29 = sub_264785AB4();
  swift_beginAccess();
  v30 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v29, v25, v27, isUniquelyReferenced_nonNull_native);

  *(a3 + 16) = v93;
  swift_endAccess();
  v32 = *MEMORY[0x277D4AE50];
  v33 = sub_264785724();
  v35 = v34;
  v88[1] = v28;
  v36 = sub_264785AB4();
  swift_beginAccess();
  v37 = *(a3 + 16);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v36, v33, v35, v38);

  *(a3 + 16) = v93;
  swift_endAccess();
  v39 = *MEMORY[0x277D4AE68];
  v40 = sub_264785724();
  v42 = v41;
  [v23 suggestionTrigger];
  v43 = sub_264785B54();
  swift_beginAccess();
  v44 = *(a3 + 16);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v43, v40, v42, v45);

  *(a3 + 16) = v93;
  swift_endAccess();
  v46 = *MEMORY[0x277D4AE70];
  v47 = sub_264785724();
  v49 = v48;
  v89 = v23;
  [v23 suggestionUserType];
  v50 = sub_264785B54();
  swift_beginAccess();
  v51 = *(a3 + 16);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v50, v47, v49, v52);

  *(a3 + 16) = v93;
  swift_endAccess();
  v53 = *MEMORY[0x277D4AE58];
  v54 = sub_264785724();
  v56 = v55;
  v57 = sub_264785864();
  swift_beginAccess();
  v58 = *(a3 + 16);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_2646933E4(v57, v54, v56, v59);

  *(a3 + 16) = v93;
  swift_endAccess();
  sub_264783DF4();

  v60 = sub_264783E14();
  v61 = sub_2647859F4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v94[0] = v63;
    *v62 = 136315650;
    v93 = a5;
    type metadata accessor for SessionViewModel(0);

    v64 = sub_264785764();
    v66 = sub_2646DF234(v64, v65, v94);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    *(v62 + 14) = sub_2646DF234(0xD000000000000037, 0x80000002647942D0, v94);
    *(v62 + 22) = 2080;
    swift_beginAccess();
    v67 = *(a3 + 16);

    v68 = sub_264785624();
    v70 = v69;

    v71 = sub_2646DF234(v68, v70, v94);

    *(v62 + 24) = v71;
    _os_log_impl(&dword_264605000, v60, v61, "%s, %s, sending analytics event StagingPerformance, %s", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v63, -1, -1);
    MEMORY[0x266740650](v62, -1, -1);
  }

  (*(v91 + 8))(v21, v92);
  v72 = *MEMORY[0x277D4AE40];
  swift_beginAccess();
  v73 = *(a3 + 16);
  v74 = v72;

  sub_264692AAC(v75);

  sub_264659B70(0, &qword_27FF75F00, 0x277D82BB8);
  v76 = sub_264785604();

  AnalyticsSendEvent();
}

uint64_t sub_264653FCC(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_264659B70(0, a4, a5);
    v6 = sub_2647857F4();
  }

  v9 = a3;
  v8(v6, a3);
}

double sub_26465407C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2646540F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646541B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_264654240(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646542C4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_264783EE4();
}

uint64_t sub_26465433C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t sub_2646543B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_26460CCE8(a1, &v13 - v9, &qword_27FF75CE8, &unk_264788B70);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460CCE8(v10, v8, &qword_27FF75CE8, &unk_264788B70);

  sub_264783EE4();
  return sub_26460CD50(v10, &qword_27FF75CE8, &unk_264788B70);
}

uint64_t sub_264654538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_2646545B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_264654654(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646546C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2646547BC;

  return v7(a1);
}

uint64_t sub_2646547BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2646548B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_264785F44();
  sub_264785794();
  v6 = sub_264785F94();

  return sub_2646549DC(a1, a2, v6);
}

unint64_t sub_26465492C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_264785C64();

  return sub_264654A94(a1, v5);
}

unint64_t sub_264654970(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_264785F44();
  MEMORY[0x26673FC80](a1);
  v4 = sub_264785F94();

  return sub_264654B5C(a1, v4);
}

unint64_t sub_2646549DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264785E84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_264654A94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264658DA8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26673F9A0](v9, a1);
      sub_264655FE8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_264654B5C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_264654BC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_264785C14())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_264785C54();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_264654CC8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_264654DBC;

  return v6(v2 + 32);
}

uint64_t sub_264654DBC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_264654ED0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264654F28()
{
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264654FEC(void *a1, int a2, void *a3)
{
  v7 = *(sub_264783AF4() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_2646191A0(a1, a2, a3, v8, v9);
}

uint64_t sub_264655264(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2646552E4(uint64_t a1)
{
  v40 = a1;
  v41 = sub_264783AF4();
  v39 = *(v41 - 8);
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264783BE4();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647838C4();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783BB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F70, &qword_264789908);
  v12 = sub_264783BC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  v36 = xmmword_2647889C0;
  *(v16 + 16) = xmmword_2647889C0;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x277CC9980], v12);
  v18(v17 + v14, *MEMORY[0x277CC99A0], v12);
  v18(v17 + 2 * v14, *MEMORY[0x277CC99A8], v12);
  sub_26476DDF8(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_264783AD4();
  sub_264783BA4();

  (*(v39 + 8))(v3, v41);
  (*(v37 + 8))(v7, v38);
  v19 = sub_264783894();
  v21 = v20;
  v22 = sub_2647838A4();
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22 & ~(v22 >> 63);
  }

  v25 = sub_2647838B4();
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25 & ~(v25 >> 63);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F78, &unk_264789910);
  if ((v21 & 1) != 0 || v19 <= 0)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2647889B0;
    v32 = MEMORY[0x277D83B88];
    v33 = MEMORY[0x277D83C10];
    *(v31 + 56) = MEMORY[0x277D83B88];
    *(v31 + 64) = v33;
    *(v31 + 32) = v24;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 72) = v27;
  }

  else
  {
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D83B88];
    *(v28 + 16) = v36;
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v19;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v24;
    *(v28 + 136) = v29;
    *(v28 + 144) = v30;
    *(v28 + 112) = v27;
  }

  v34 = sub_264785734();
  (*(v42 + 8))(v11, v43);
  return v34;
}

uint64_t sub_264655868(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26673F6A0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2646D8B30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_264655900(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264655264(a1, a2);
  }

  return a1;
}

unint64_t sub_264655958(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E68, &qword_2647897F8);
    v3 = sub_264785DE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26460CCE8(v4, &v13, &qword_27FF75E70, &qword_264789800);
      v5 = v13;
      v6 = v14;
      result = sub_2646548B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26465735C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_264655A9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_264785DE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2646548B4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

void *sub_264655B98(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75E78, &qword_264789808);
  v3 = sub_264785DE4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_264654970(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_264654970(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_264655CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_26463396C(a1, v4, v5, v6, v7);
}

uint64_t sub_264655DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_264655E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264655E98()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264655F4C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264655FA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_264656040()
{
  result = qword_27FF75DA0;
  if (!qword_27FF75DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DA0);
  }

  return result;
}

unint64_t sub_264656098()
{
  result = qword_27FF75DA8;
  if (!qword_27FF75DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DA8);
  }

  return result;
}

unint64_t sub_2646560F0()
{
  result = qword_27FF75DB0;
  if (!qword_27FF75DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DB0);
  }

  return result;
}

unint64_t sub_264656148()
{
  result = qword_27FF75DB8;
  if (!qword_27FF75DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DB8);
  }

  return result;
}

uint64_t sub_26465619C(uint64_t a1)
{
  result = sub_264655E3C(&qword_27FF75DC0, type metadata accessor for SessionViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264656214(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_264656250()
{
  result = qword_27FF75DC8;
  if (!qword_27FF75DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75DC8);
  }

  return result;
}

uint64_t sub_2646562A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2646562FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_264614A6C();
}

id sub_264656354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2646563C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_264656630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_264656688(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_2646249AC();
}

uint64_t getEnumTagSinglePayload for StagedMessageWarnings(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StagedMessageWarnings(uint64_t result, int a2, int a3)
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

void sub_264656920()
{
  sub_264656FAC(319, &qword_27FF75DE0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v29 = *(v0 - 8) + 64;
    sub_264656FAC(319, &qword_27FF75DE8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v30 = *(v2 - 8) + 64;
      sub_264656F0C(319, &qword_27FF75DF0, &qword_27FF75C10, &qword_264788A58);
      if (v5 <= 0x3F)
      {
        v31 = *(v4 - 8) + 64;
        sub_264656F0C(319, &qword_27FF75DF8, &qword_27FF75C20, &qword_264788A60);
        if (v7 <= 0x3F)
        {
          v32 = *(v6 - 8) + 64;
          sub_264656F0C(319, &qword_27FF75E00, &qword_27FF75C30, &qword_264788A68);
          if (v9 <= 0x3F)
          {
            v33 = *(v8 - 8) + 64;
            sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
            if (v11 <= 0x3F)
            {
              v34 = *(v10 - 8) + 64;
              sub_264656F60(319, &qword_27FF75E10);
              if (v13 <= 0x3F)
              {
                v35 = *(v12 - 8) + 64;
                sub_264656F60(319, &qword_27FF75E18);
                if (v15 <= 0x3F)
                {
                  v16 = *(v14 - 8) + 64;
                  sub_264656F0C(319, &qword_27FF75E20, &qword_27FF75C80, &qword_264788A78);
                  if (v18 <= 0x3F)
                  {
                    v36 = *(v17 - 8) + 64;
                    sub_264656F0C(319, &qword_27FF75E28, &qword_27FF75C90, &qword_264788A80);
                    if (v20 <= 0x3F)
                    {
                      v37 = *(v19 - 8) + 64;
                      sub_264656F0C(319, &qword_27FF75E30, &qword_27FF75CA0, &qword_264788A88);
                      if (v22 <= 0x3F)
                      {
                        v38 = *(v21 - 8) + 64;
                        sub_264656F60(319, &qword_27FF75E38);
                        if (v24 <= 0x3F)
                        {
                          v39 = *(v23 - 8) + 64;
                          sub_264656FAC(319, &qword_27FF75E40, type metadata accessor for UIUserInterfaceIdiom, MEMORY[0x277CBCED0]);
                          if (v26 <= 0x3F)
                          {
                            v40 = *(v25 - 8) + 64;
                            sub_264656FAC(319, &qword_27FF75E48, type metadata accessor for UserSessionConfiguration, MEMORY[0x277CBCED0]);
                            if (v28 <= 0x3F)
                            {
                              v41 = *(v27 - 8) + 64;
                              swift_updateClassMetadata2();
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

void sub_264656F0C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264783EF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_264656F60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_264783EF4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_264656FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_264657024(uint64_t a1, uint64_t a2)
{
  v4 = sub_264783C74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2646570A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_264783C74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264657114()
{
  result = sub_264783C74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ETAType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ETAType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264657308()
{
  result = qword_27FF75E60;
  if (!qword_27FF75E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75E60);
  }

  return result;
}

_OWORD *sub_26465735C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_26465736C(uint64_t a1, void *a2)
{
  v4 = sub_264783B64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v75 = v8;
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - v14;
  v16 = sub_264783E24();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v79 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  v77 = a2;
  sub_264783DF4();

  v24 = sub_264783E14();
  v25 = sub_2647859F4();

  v26 = os_log_type_enabled(v24, v25);
  v81 = v5;
  if (v26)
  {
    v70 = v25;
    v71 = v24;
    v69 = v16;
    v74 = v23;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315650;
    v83 = a1;
    type metadata accessor for SessionViewModel(0);

    v29 = sub_264785764();
    v31 = v4;
    v32 = sub_2646DF234(v29, v30, aBlock);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
    *(v27 + 22) = 2080;
    v72 = a1;
    SessionViewModel.currentSessionID.getter(v15);
    v33 = (*(v5 + 48))(v15, 1, v31);
    v73 = v31;
    if (v33 == 1)
    {
      sub_26460CD50(v15, &qword_27FF75CE8, &unk_264788B70);
      v34 = 0xED00004449206E6FLL;
      v35 = 0x6973736553206F4ELL;
    }

    else
    {
      v35 = sub_264783B04();
      v34 = v37;
      (*(v5 + 8))(v15, v31);
    }

    v38 = sub_2646DF234(v35, v34, aBlock);

    *(v27 + 24) = v38;
    v39 = v71;
    _os_log_impl(&dword_264605000, v71, v70, "%s, %s: Attempting to end session for sessionID, %s", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v28, -1, -1);
    MEMORY[0x266740650](v27, -1, -1);

    v36 = *(v17 + 8);
    v16 = v69;
    v36(v22, v69);
    v4 = v73;
    v23 = v74;
    a1 = v72;
  }

  else
  {

    v36 = *(v17 + 8);
    v36(v22, v16);
  }

  v40 = v80;
  SessionViewModel.currentSessionID.getter(v80);
  v41 = v81;
  if ((*(v81 + 48))(v40, 1, v4) == 1)
  {
    sub_26460CD50(v40, &qword_27FF75CE8, &unk_264788B70);
    v42 = v79;
    sub_264783DF4();

    v43 = sub_264783E14();
    v44 = sub_2647859D4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136315394;
      v83 = a1;
      type metadata accessor for SessionViewModel(0);

      v47 = sub_264785764();
      v49 = sub_2646DF234(v47, v48, aBlock);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264793A20, aBlock);
      _os_log_impl(&dword_264605000, v43, v44, "%s, %s: Error cannot end session without sessionID)", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v45, -1, -1);

      v50 = v79;
    }

    else
    {

      v50 = v42;
    }

    v36(v50, v16);
    v67 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
    sub_264682C78(v67, v77);
  }

  else
  {
    v51 = *(v41 + 32);
    v52 = v40;
    v53 = v78;
    v51(v78, v52, v4);
    v80 = *(a1 + 16);
    v79 = sub_264783B14();
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = v23;
    v56 = v76;
    (*(v41 + 16))(v76, v53, v4);
    v57 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v58 = (v75 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v4;
    v61 = v59;
    *(v59 + 16) = v54;
    v62 = v59 + v57;
    v63 = v60;
    (v51)(v62, v56);
    v64 = (v61 + v58);
    *v64 = sub_264658720;
    v64[1] = v55;
    aBlock[4] = sub_26465A0B8;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26465A0B4;
    aBlock[3] = &block_descriptor_385;
    v65 = _Block_copy(aBlock);

    v66 = v79;
    [v80 endSessionForSessionID:v79 reason:2 completion:v65];
    _Block_release(v65);

    (*(v41 + 8))(v53, v63);
  }
}

void sub_264657BA8(void *a1, void *a2)
{
  v4 = sub_264783B64();
  v81 = *(v4 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v76 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v73 = a2;
  sub_264783DF4();

  v23 = sub_264783E14();
  v24 = sub_2647859F4();

  if (os_log_type_enabled(v23, v24))
  {
    v75 = v14;
    v78 = v13;
    v79 = v22;
    v25 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock = v72;
    *v25 = 136315650;
    v88 = a1;
    type metadata accessor for SessionViewModel(0);

    v26 = sub_264785764();
    v28 = sub_2646DF234(v26, v27, &aBlock);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
    *(v25 + 22) = 2080;
    SessionViewModel.currentSessionID.getter(v12);
    v29 = v81;
    if ((*(v81 + 48))(v12, 1, v4) == 1)
    {
      sub_26460CD50(v12, &qword_27FF75CE8, &unk_264788B70);
      v30 = 0xED00004449206E6FLL;
      v31 = 0x6973736553206F4ELL;
    }

    else
    {
      v31 = sub_264783B04();
      v30 = v34;
      (*(v29 + 8))(v12, v4);
    }

    v33 = v4;
    v35 = sub_2646DF234(v31, v30, &aBlock);

    *(v25 + 24) = v35;
    _os_log_impl(&dword_264605000, v23, v24, "%s, %s:Attempting to respond to trigger prompt for sessionID, %s", v25, 0x20u);
    v36 = v72;
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v25, -1, -1);

    v14 = v75;
    v32 = *(v75 + 8);
    v13 = v78;
    v32(v21, v78);
    v22 = v79;
  }

  else
  {

    v32 = *(v14 + 8);
    v32(v21, v13);
    v33 = v4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v37 = aBlock;
  if (!aBlock || (v38 = [aBlock sessionState], v37, v38 > 0xE) || ((1 << v38) & 0x4280) == 0)
  {
    v51 = v80;
    sub_264783DF4();

    v52 = sub_264783E14();
    v53 = sub_2647859D4();

    if (os_log_type_enabled(v52, v53))
    {
      v78 = v13;
      v79 = v22;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v88 = v55;
      *v54 = 136315650;
      aBlock = a1;
      type metadata accessor for SessionViewModel(0);

      v56 = sub_264785764();
      v58 = sub_2646DF234(v56, v57, &v88);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &v88);
      *(v54 + 22) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v59 = aBlock;
      if (aBlock)
      {
        v60 = [aBlock sessionState];
      }

      else
      {
        v60 = 0;
      }

      aBlock = v60;
      LOBYTE(v83) = v59 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D90, &qword_264789368);
      v68 = sub_264785764();
      v70 = sub_2646DF234(v68, v69, &v88);

      *(v54 + 24) = v70;
      _os_log_impl(&dword_264605000, v52, v53, "%s, %s: Unable extend session from state: %s", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v55, -1, -1);
      MEMORY[0x266740650](v54, -1, -1);

      v32(v80, v78);
    }

    else
    {

      v32(v51, v13);
    }

LABEL_24:

    return;
  }

  v39 = v77;
  SessionViewModel.currentSessionID.getter(v77);
  v40 = v81;
  if ((*(v81 + 48))(v39, 1, v33) != 1)
  {
    v61 = v74;
    (*(v40 + 32))(v74, v39, v33);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if ((aBlock & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;

      sub_264783EE4();
      sub_264628950();
    }

    v62 = a1[2];
    v63 = sub_264783B14();
    v64 = swift_allocObject();
    swift_weakInit();
    v65 = swift_allocObject();
    v65[2] = v64;
    v65[3] = sub_264658718;
    v65[4] = v22;
    v86 = sub_264659FC4;
    v87 = v65;
    aBlock = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = sub_26465A0B4;
    v85 = &block_descriptor_374;
    v66 = _Block_copy(&aBlock);

    [v62 respondToTriggerPromptForSessionID:v63 response:2 handler:v66];
    _Block_release(v66);

    (*(v40 + 8))(v61, v33);
    goto LABEL_24;
  }

  v41 = v13;
  sub_26460CD50(v39, &qword_27FF75CE8, &unk_264788B70);
  v42 = v76;
  sub_264783DF4();

  v43 = sub_264783E14();
  v44 = sub_2647859D4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v45 = 136315394;
    v88 = a1;
    type metadata accessor for SessionViewModel(0);
    v75 = v14;

    v47 = sub_264785764();
    v49 = sub_2646DF234(v47, v48, &aBlock);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_2646DF234(0xD000000000000022, 0x8000000264793A40, &aBlock);
    _os_log_impl(&dword_264605000, v43, v44, "%s, %s: Error cannot safeResponseToTriggerPrompt without sessionID)", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v46, -1, -1);
    MEMORY[0x266740650](v45, -1, -1);

    v50 = v76;
  }

  else
  {

    v50 = v42;
  }

  v32(v50, v41);
  v67 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D4ACD0] code:7 userInfo:0];
  sub_264683190(v67, v73);
}

unint64_t sub_2646586D0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2646586E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_241Tm()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_264658804(void *a1)
{
  v3 = *(sub_264783B64() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_264640A3C(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_2646588AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264611390;

  return sub_26464F0C8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_403Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2646589B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26460F764;

  return sub_264650074(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_271Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_264658B04()
{
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264658C60(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_264783AF4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EA8, &qword_264789850) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_264651A18(a1, a2, v9, v2 + v6, v10);
}

uint64_t sub_264658D54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264658E04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264658E7C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_264658EEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264658F24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26464A258();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_264658F88()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264658FC0()
{
  v1 = sub_264783854();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26465908C(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_264783854() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_2646536C8(a1, a2, v6, v7, v8, v9);
}

uint64_t objectdestroy_505Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_499Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646592A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_199Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_26465934C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264611390;

  return sub_264636AC4(a1);
}

uint64_t sub_264659400()
{
  sub_264655264(v0[2], v0[3]);
  v1 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_264659440()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_2646393C0();
}

uint64_t sub_26465944C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2646594E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264611390;

  return sub_264654CC8(a1, v5);
}

uint64_t sub_2646595A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26460F764;

  return sub_264654CC8(a1, v5);
}

uint64_t sub_264659660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2646596D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264659738()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  sub_264655264(*(v0 + 2), *(v0 + 3));
  v5 = *(v0 + 4);

  v6 = sub_264783B64();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(&v0[v3], 1, v6))
  {
    (*(v7 + 8))(&v0[v3], v6);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

void sub_26465986C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v6[8];

  sub_2646474FC(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_264659914()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_264783B64();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_264655264(*(v0 + v8), *(v0 + v8 + 8));

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | 7);
}

uint64_t sub_264659A4C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = v2 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = (v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v9 + 8);

  return sub_264647744(a1, a2, v8, v2 + v6, v10, v14, v12, v13);
}

uint64_t sub_264659B20()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264659B70(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_264659BB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264611390;

  return sub_2646546C4(a1, v5);
}

uint64_t sub_264659C70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_264659D00()
{
  result = qword_27FF75F60;
  if (!qword_27FF75F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75F60);
  }

  return result;
}

void sub_264659D9C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_264617568(v1, v2);
}

uint64_t objectdestroy_481Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26465A0E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_26465A13C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_26465A1AC()
{
  result = qword_27FF75F80;
  if (!qword_27FF75F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75F80);
  }

  return result;
}

id sub_26465A200()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F90, &unk_264789A60);
  sub_2647852F4();
  if (v24)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBDBE8]) init];
    v7 = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
    sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
    v8 = sub_2647857E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_264788990;
    *(v9 + 32) = [v6 descriptorForRequiredKeys];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FB0, &unk_26478F3C0);
    v10 = sub_2647857E4();

    v11 = [v7 fetchAdditionalInfoFor:v8 keysToFetch:v10];

    if (!v11)
    {
      v11 = sub_2647857E4();
    }

    [v6 setContacts_];

    v26 = v0[1];
    v27 = *(v0 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FB8, &unk_264789A70);
    sub_2647852F4();
    v12 = v25;
    if (v25)
    {
      v13 = v24;
      v14 = [v6 contacts];
      v15 = sub_2647857F4();

      v16 = sub_26465A804(v15, v13, v12);

      if (v16)
      {
        v17 = [v6 updateViewWithGroupIdentity_];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_264783DE4();
    v18 = sub_264783E14();
    v19 = sub_2647859D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_264605000, v18, v19, "Empty contact passed to AvatarView", v20, 2u);
      MEMORY[0x266740650](v20, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v21 = sub_264785714();
    v22 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    sub_264659B70(0, &qword_27FF75F98, 0x277D75348);
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v7 = sub_264785AA4();
    [v6 setTintColor_];
  }

  return v6;
}

uint64_t sub_26465A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26465A7B0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26465A724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26465A7B0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26465A788()
{
  sub_26465A7B0();
  sub_264784834();
  __break(1u);
}

unint64_t sub_26465A7B0()
{
  result = qword_27FF75F88;
  if (!qword_27FF75F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75F88);
  }

  return result;
}

id sub_26465A804(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t (*)(void)))
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SafetyMonitorUIUtilities();
  v10 = static SafetyMonitorUIUtilities.fetchChatGroupPhoto(with:)(a2, a3);
  if (v11 >> 60 == 15)
  {
    sub_264783DF4();

    v12 = sub_264783E14();
    v13 = sub_2647859B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2646DF234(a2, a3, &v24);
      _os_log_impl(&dword_264605000, v12, v13, "No group photo found for groupID %s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266740650](v15, -1, -1);
      MEMORY[0x266740650](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  else
  {
    v17 = v10;
    v18 = v11;
    v19 = objc_allocWithZone(MEMORY[0x277CBDC50]);
    v20 = sub_264783A04();
    sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
    v21 = sub_2647857E4();
    v22 = [v19 initGroupWithName:0 photo:v20 contacts:v21];

    sub_264655900(v17, v18);
    return v22;
  }
}

uint64_t LocationSelectionGroup.body.getter@<X0>(char *a1@<X8>)
{
  v2 = v1[1];
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = v1[2];
  return sub_26465AAA0(v4, a1);
}

uint64_t sub_26465AAA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE0, &unk_264789B48);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v64 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = v58 - v7;
  v8 = sub_264783B94();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_264785704();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v58[2] = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FE8, &qword_264789B58);
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v62 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v58 - v20;
  v66 = a1;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v67 = sub_264785754();
  v68 = v24;
  sub_264613FC4();
  v25 = sub_264784E44();
  v27 = v26;
  v67 = v25;
  v68 = v26;
  v29 = v28 & 1;
  v69 = v28 & 1;
  v70 = v30;
  sub_264785034();
  sub_26460ECC4(v25, v27, v29);

  sub_26465B410(a1, &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FF0, &qword_264789B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FF8, &qword_264789B68);
  sub_26465D02C();
  sub_26465D65C(&qword_27FF76010, &qword_27FF75FF0, &qword_264789B60, sub_26465D0E8);
  sub_26465D1CC();
  v61 = v21;
  sub_264785454();
  v31 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v67)
  {

    v58[1] = v58;
    MEMORY[0x28223BE20](v32);
    v58[0] = &v58[-4];
    if (qword_27FF752B8 != -1)
    {
      swift_once();
    }

    v67 = qword_27FF79128;
    v68 = unk_27FF79130;

    v33 = sub_264784E44();
    v35 = v34;
    v67 = v33;
    v68 = v34;
    v37 = v36 & 1;
    v69 = v36 & 1;
    v70 = v38;
    sub_264785034();
    sub_26460ECC4(v33, v35, v37);

    if (qword_27FF752C0 != -1)
    {
      swift_once();
    }

    v67 = qword_27FF79138;
    v68 = unk_27FF79140;

    v39 = sub_264784E44();
    v41 = v40;
    v67 = v39;
    v68 = v40;
    v43 = v42 & 1;
    v69 = v42 & 1;
    v70 = v44;
    sub_264785034();
    sub_26460ECC4(v39, v41, v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76070, &qword_264789BE8);
    sub_26460CDF0(&qword_27FF76078, &qword_27FF76070, &qword_264789BE8);
    v45 = v63;
    sub_264785454();
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = v63;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76060, &qword_264789BD8);
  (*(*(v47 - 8) + 56))(v45, v46, 1, v47);
  v48 = v59;
  v49 = v60;
  v50 = *(v59 + 16);
  v51 = v61;
  v52 = v62;
  v50(v62, v61, v60);
  v53 = v64;
  sub_26465D2D4(v45, v64);
  v54 = v65;
  v50(v65, v52, v49);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76068, &qword_264789BE0);
  sub_26465D2D4(v53, &v54[*(v55 + 48)]);
  sub_26465D344(v45);
  v56 = *(v48 + 8);
  v56(v51, v49);
  sub_26465D344(v53);
  return (v56)(v52, v49);
}

uint64_t sub_26465B2AC(uint64_t a1)
{
  v10 = *(a1 + 8);
  v13 = *(a1 + 24);
  *&v14 = *(a1 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76188, &qword_264789D48);
  sub_2647853F4();
  sub_26476E118(v2, v4, v5, v11);
  sub_26460CD50(&v10, &qword_27FF76118, &unk_264789CB8);
  v7 = v11[2];
  v8 = v11[3];
  *&v9[0] = v12;
  v3 = v11[0];
  v6 = v11[1];
  memset(v9 + 8, 0, 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76020, &qword_264789B70);
  sub_26465D0E8();
  sub_264785034();
  v17 = v9[0];
  v18[0] = v9[1];
  *(v18 + 9) = *(&v9[1] + 9);
  v13 = v3;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return sub_26460CD50(&v13, &qword_27FF76020, &qword_264789B70);
}

void sub_26465B410(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v9)
  {

    v5 = 0uLL;
    v6 = -1;
    v7 = 0uLL;
  }

  else
  {
    v8 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (qword_27FF751F0 != -1)
    {
      swift_once();
    }

    v10 = xmmword_27FF78F98;
    sub_264613FC4();

    sub_264784E44();
    sub_264784874();
    v7 = v11;
    v5 = v10;
    v6 = v12;
  }

  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
}

uint64_t sub_26465B638@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76080, &qword_264789BF0);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v51 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76088, &qword_264789BF8);
  v5 = *(*(v62 - 1) + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76090, &qword_264789C00);
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v63 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v51 - v11;
  v55 = sub_264784594();
  v54 = *(v55 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76098, &qword_264789C08);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760A0, &qword_264789C10);
  v52 = *(v53 - 8);
  v19 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v21 = &v51 - v20;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760A8, &qword_264789C18);
  v57 = *(v58 - 8);
  v22 = *(v57 + 64);
  v23 = MEMORY[0x28223BE20](v58);
  v56 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v67 = &v51 - v25;
  if (qword_27FF752B8 != -1)
  {
    swift_once();
  }

  v74 = qword_27FF79128;
  v75 = unk_27FF79130;
  v27 = *(a1 + 1);
  v26 = *(a1 + 2);
  type metadata accessor for UserSessionConfiguration();
  sub_26465D3B4(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration);

  sub_264784184();
  swift_getKeyPath();
  sub_264784194();

  v72 = v69;
  v73 = v70;
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760B0, &qword_264789C48);
  sub_26465D40C();
  sub_26465D460();
  sub_264613FC4();
  sub_2647853B4();
  sub_264784584();
  v29 = sub_26460CDF0(&qword_27FF760D0, &qword_27FF76098, &qword_264789C08);
  v30 = MEMORY[0x277CDDDA0];
  v31 = v55;
  sub_264784EF4();
  (*(v54 + 8))(v14, v31);
  (*(v51 + 8))(v18, v15);
  *&v69 = v15;
  *(&v69 + 1) = v31;
  *&v70 = v29;
  *(&v70 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v67;
  v33 = v53;
  sub_264784F04();
  (*(v52 + 8))(v21, v33);
  v34 = a1[1];
  v69 = *a1;
  v70 = v34;
  v71 = a1[2];
  v35 = v59;
  sub_26465C008(v59);
  sub_26465D578();
  v36 = v61;
  sub_264785034();
  sub_26460CD50(v35, &qword_27FF76080, &qword_264789BF0);
  sub_264784044();
  sub_26465D65C(&qword_27FF76100, &qword_27FF76088, &qword_264789BF8, sub_26465D578);
  v37 = v68;
  sub_264784F64();
  sub_26460CD50(v36, &qword_27FF76088, &qword_264789BF8);
  v38 = v57;
  v39 = *(v57 + 16);
  v40 = v56;
  v41 = v58;
  v39(v56, v32, v58);
  v43 = v63;
  v42 = v64;
  v62 = *(v64 + 16);
  v44 = v37;
  v45 = v65;
  v62(v63, v44, v65);
  v46 = v66;
  v39(v66, v40, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76108, &qword_264789C60);
  v62(&v46[*(v47 + 48)], v43, v45);
  v48 = *(v42 + 8);
  v48(v68, v45);
  v49 = *(v38 + 8);
  v49(v67, v41);
  v48(v43, v45);
  return (v49)(v40, v41);
}

uint64_t sub_26465BE9C(_OWORD *a1)
{
  v7[6] = &unk_2876146B8;
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  sub_26465D7D4(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76168, &qword_264789CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76170, &qword_264789CF8);
  sub_26460CDF0(&qword_27FF76178, &qword_27FF76168, &qword_264789CF0);
  v4 = sub_26465D524();
  v5 = sub_26465D40C();
  v7[0] = &type metadata for ETAOptionRow;
  v7[1] = &type metadata for ETAType;
  v7[2] = v4;
  v7[3] = v5;
  swift_getOpaqueTypeConformance2();
  sub_26465D9AC();
  return sub_264785434();
}

uint64_t sub_26465C008@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760F8, &qword_264789C58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76110, &qword_264789C68);
  v7 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v23 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF760E8, &qword_264789C50);
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - v12;
  v14 = v1[1];
  v15 = v1[2];
  v29 = *v1;
  v30 = v14;
  v16 = *(v1 + 8);
  v31 = v15;
  v32 = v16;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();
  sub_26460CD50(&v32, &qword_27FF76118, &unk_264789CB8);

  if (v28)
  {
    v23 = &v23;
    MEMORY[0x28223BE20](v17);
    *(&v23 - 2) = &v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA0, &qword_2647888F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76120, &qword_264789CC8);
    sub_26465D720();
    sub_26460CDF0(&qword_27FF76130, &qword_27FF76120, &qword_264789CC8);
    sub_264784DC4();
    (*(v3 + 16))(v9, v6, v2);
    swift_storeEnumTagMultiPayload();
    sub_26460CDF0(&qword_27FF760E0, &qword_27FF760E8, &qword_264789C50);
    sub_26460CDF0(&qword_27FF760F0, &qword_27FF760F8, &qword_264789C58);
    sub_264784874();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v19 = v27;
    v20 = swift_allocObject();
    v21 = v30;
    v20[1] = v29;
    v20[2] = v21;
    v20[3] = v31;
    MEMORY[0x28223BE20](v20);
    *(&v23 - 2) = v19;
    sub_26465D7D4(&v29, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA0, &qword_2647888F0);
    sub_26465D720();
    sub_264785334();
    v22 = v24;
    (*(v10 + 16))(v9, v13, v24);
    swift_storeEnumTagMultiPayload();
    sub_26460CDF0(&qword_27FF760E0, &qword_27FF760E8, &qword_264789C50);
    sub_26460CDF0(&qword_27FF760F0, &qword_27FF760F8, &qword_264789C58);
    sub_264784874();
    return (*(v10 + 8))(v13, v22);
  }
}