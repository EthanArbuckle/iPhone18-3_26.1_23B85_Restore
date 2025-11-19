uint64_t sub_25F142DE8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_25F1435CC;
  }

  else
  {
    v3 = sub_25F142EFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F142EFC()
{
  v86 = v0;
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 144);
    sub_25F17885C();
    v2 = sub_25F17887C();
    v3 = sub_25F17953C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25F0B3000, v2, v3, "No pid provided when expected for JIT bootstrap method.", v4, 2u);
      MEMORY[0x25F8D6230](v4, -1, -1);
    }

    v5 = *(v0 + 144);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);

    (*(v7 + 8))(v5, v6);
    sub_25F14A40C();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    swift_willThrow();
    v9 = 0;
    goto LABEL_23;
  }

  v10 = *(v0 + 28);
  v11 = *(v0 + 168);
  *(v0 + 176) = v10;
  v12 = *(v0 + 152);
  v13 = *(v0 + 56);
  sub_25F14A470(v12);
  v14 = v12;
  v15 = *(sub_25F1773EC() + 16);

  if (!v15)
  {
    v41 = *(v0 + 120);
    sub_25F17885C();
    v42 = sub_25F17887C();
    v43 = sub_25F17953C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_25F0B3000, v42, v43, "No target descriptions provided in launch payload.", v44, 2u);
      MEMORY[0x25F8D6230](v44, -1, -1);
    }

    v9 = *(v0 + 152);
    v46 = *(v0 + 112);
    v45 = *(v0 + 120);
    v47 = *(v0 + 104);

    (*(v46 + 8))(v45, v47);
    sub_25F14A480();
    swift_allocError();
    *v48 = 0u;
    v48[1] = 0u;
    swift_willThrow();
    v49 = v10;
    v50 = v9 == 0;
    goto LABEL_22;
  }

  v83 = v11;
  v80 = v10;
  v16 = *(v0 + 136);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 72);
  v20 = *(v0 + 80);
  v21 = *(v0 + 56);
  sub_25F17885C();
  v22 = *(v20 + 16);
  v22(v17, v21, v19);
  v22(v18, v21, v19);
  v23 = sub_25F17887C();
  v24 = sub_25F17955C();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 136);
  v27 = *(v0 + 112);
  v81 = *(v0 + 104);
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);
  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  if (v25)
  {
    v32 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v85[0] = v78;
    *v32 = 134349314;
    v79 = v26;
    v33 = *(sub_25F1773EC() + 16);

    v77 = v24;
    v34 = *(v31 + 8);
    v34(v28, v30);
    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    v35 = *(sub_25F1773EC() + 16);

    v36 = v35 == 1;
    if (v35 == 1)
    {
      v37 = 0;
    }

    else
    {
      v37 = 115;
    }

    if (v36)
    {
      v38 = 0xE000000000000000;
    }

    else
    {
      v38 = 0xE100000000000000;
    }

    v34(v29, v30);
    v39 = sub_25F0BECF0(v37, v38, v85);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_25F0B3000, v23, v77, "Loading JIT symbols from %{public}ld target descriptions%s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x25F8D6230](v78, -1, -1);
    MEMORY[0x25F8D6230](v32, -1, -1);

    v40 = *(v27 + 8);
    v40(v79, v81);
  }

  else
  {
    v51 = *(v31 + 8);
    v51(*(v0 + 96), *(v0 + 72));

    v51(v29, v30);
    v40 = *(v27 + 8);
    v40(v26, v81);
  }

  if (qword_27FD46800 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 33);
  v53 = *(v0 + 27);
  *(v0 + 184) = sub_25F0F5498(*(v0 + 64));
  if (v83)
  {
    v49 = *(v0 + 176);
    v9 = *(v0 + 152);
    v50 = v9 == 0;
LABEL_22:
    sub_25F0F26EC(v49, v50);
LABEL_23:
    sub_25F14A460(v9);
    v55 = *(v0 + 136);
    v54 = *(v0 + 144);
    v57 = *(v0 + 120);
    v56 = *(v0 + 128);
    v59 = *(v0 + 88);
    v58 = *(v0 + 96);

    v60 = *(v0 + 8);

    return v60();
  }

  v62 = *(v0 + 128);
  v63 = *(v0 + 64);
  sub_25F17885C();

  v64 = sub_25F17887C();
  v65 = sub_25F17955C();

  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v0 + 128);
  v68 = *(v0 + 104);
  v69 = *(v0 + 112);
  if (v66)
  {
    v84 = *(v0 + 128);
    v70 = *(v0 + 64);
    v82 = *(v0 + 104);
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v85[0] = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_25F0BECF0(*(v70 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier), *(v70 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8), v85);
    _os_log_impl(&dword_25F0B3000, v64, v65, "JITManager: Initializing for %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x25F8D6230](v72, -1, -1);
    MEMORY[0x25F8D6230](v71, -1, -1);

    v74 = v82;
    v73 = v84;
  }

  else
  {

    v73 = v67;
    v74 = v68;
  }

  v40(v73, v74);
  v75 = *(v0 + 152) == 0;
  *(v0 + 16) = v80;
  *(v0 + 24) = v75;
  *(v0 + 25) = v53;
  *(v0 + 26) = v52;
  v76 = swift_task_alloc();
  *(v0 + 192) = v76;
  *v76 = v0;
  v76[1] = sub_25F143670;

  return sub_25F0F5848((v0 + 16), (v0 + 25));
}

uint64_t sub_25F1435CC()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F143670(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_25F143CC8;
  }

  else
  {
    v5 = sub_25F143784;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F143784()
{
  v1 = v0[7];
  v2 = sub_25F1773EC();
  v0[27] = v2;
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_25F143840;
  v4 = v0[25];

  return sub_25F13C224(v2);
}

uint64_t sub_25F143840()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 216);

  if (v0)
  {
    v6 = sub_25F143B60;
  }

  else
  {
    v6 = sub_25F143974;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F143974()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  sub_25F12279C();
  if (v1)
  {
    v3 = *(v0 + 200);

    v4 = *(v0 + 184);
    *(v0 + 40) = v4;
    type metadata accessor for PreviewsJITConfigurator();
    sub_25F148850(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
    sub_25F17800C();
    swift_willThrow();

    v5 = *(v0 + 152);
    sub_25F0F26EC(*(v0 + 176), v5 == 0);
    sub_25F14A460(v5);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
  }

  else
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);

    sub_25F0F26EC(v14, v16 == 0);
    sub_25F14A460(v16);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25F143B60()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);

  v3 = *(v0 + 184);
  *(v0 + 40) = v3;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F148850(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
  sub_25F17800C();
  swift_willThrow();

  v4 = *(v0 + 152);
  sub_25F0F26EC(*(v0 + 176), v4 == 0);
  sub_25F14A460(v4);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25F143CC8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  *(v0 + 40) = v2;
  type metadata accessor for PreviewsJITConfigurator();
  sub_25F148850(&qword_27FD47D08, type metadata accessor for PreviewsJITConfigurator);
  sub_25F17800C();
  swift_willThrow();

  v3 = *(v0 + 152);
  sub_25F0F26EC(*(v0 + 176), v3 == 0);
  sub_25F14A460(v3);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25F143E28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D60, &qword_25F1827E0) + 48);
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0BF3E4;

  return v10(a2, a2 + v6);
}

uint64_t sub_25F143F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-1] - v9;
  sub_25F0BEC1C(a3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher, v18);
  v11 = v19;
  v12 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  if (a4)
  {
    v13 = *(a4 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);
    sub_25F17861C();
  }

  else
  {
    v14 = type metadata accessor for Process(0);
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  v15 = sub_25F106F50(a1, v10, v11, v12);
  sub_25F0B7E94(v10, &qword_27FD48188, &qword_25F182550);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v15;
}

uint64_t sub_25F144094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D58, &qword_25F1827D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_25F0B7E2C(a1, &v9 - v6, &qword_27FD48D58, &qword_25F1827D8);
  return sub_25F149EDC(v7, a2, type metadata accessor for Process);
}

uint64_t sub_25F144154(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 16);

  sub_25F1787CC();
  v10 = 0;
  v11 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D48, &qword_25F1827D0);
  sub_25F0B7D00(&qword_27FD48D50, &qword_27FD48D48, &qword_25F1827D0);
  sub_25F17855C();
  (*(v4 + 8))(v7, v3);
}

__n128 sub_25F1442FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Process(0) + 24);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_25F144380(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v5 = sub_25F17888C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();
  v10 = sub_25F17887C();
  v11 = a2();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25F0B3000, v10, v11, a3, v12, 2u);
    MEMORY[0x25F8D6230](v12, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25F1444C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F1787BC();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();
  v13 = sub_25F17887C();
  v14 = sub_25F17952C();
  v15 = os_log_type_enabled(v13, v14);
  v28 = a1;
  if (v15)
  {
    v26 = a2;
    v27 = v4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136446210;
    if ((a1 & 0x100000000) != 0)
    {
      v18 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    else
    {
      v30 = a1;
      v19 = sub_25F17980C();
      v18 = v20;
    }

    v21 = sub_25F0BECF0(v19, v18, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_25F0B3000, v13, v14, "pid_t callback used: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x25F8D6230](v17, -1, -1);
    MEMORY[0x25F8D6230](v16, -1, -1);

    (*(v9 + 8))(v12, v8);
    a2 = v26;
    v4 = v27;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v31 = *(a2 + 16);

  v22 = sub_25F1787CC();
  MEMORY[0x28223BE20](v22);
  v23 = BYTE4(v28);
  *(&v25 - 4) = v28;
  *(&v25 - 12) = v23 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D48, &qword_25F1827D0);
  sub_25F0B7D00(&qword_27FD48D50, &qword_27FD48D48, &qword_25F1827D0);
  sub_25F17855C();
  (*(v29 + 8))(v7, v4);
}

uint64_t Agent.applyUpdateFor(payload:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F17788C();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v45 = sub_25F17888C();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v45);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v44 = sub_25F17787C();
  v20 = v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  if ((*(v20 + *(type metadata accessor for BatchIdentity(0) + 32)) & 1) == 0)
  {
    sub_25F17885C();
    v27 = sub_25F17887C();
    v28 = sub_25F17952C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67240192;
      *(v29 + 4) = v44;
      _os_log_impl(&dword_25F0B3000, v27, v28, "Full binary mode. Not looking for JIT products for pid: %{public}d", v29, 8u);
      MEMORY[0x25F8D6230](v29, -1, -1);
    }

    (*(v10 + 8))(v19, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD8, &qword_25F1825B8);
    v46 = 0;
    return sub_25F1786DC();
  }

  v21 = sub_25F17784C();
  if (!*(v21 + 16))
  {

    sub_25F17885C();
    v30 = sub_25F17887C();
    v31 = sub_25F17952C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      *(v32 + 4) = v44;
      _os_log_impl(&dword_25F0B3000, v30, v31, "Found no XOJIT loadable products, pid: %{public}d", v32, 8u);
      MEMORY[0x25F8D6230](v32, -1, -1);
    }

    (*(v10 + 8))(v14, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD8, &qword_25F1825B8);
    v47 = 0;
    return sub_25F1786DC();
  }

  sub_25F17885C();

  v22 = sub_25F17887C();
  v23 = sub_25F17952C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = v4;
    v25 = v24;
    *v24 = 134218240;
    *(v24 + 4) = *(v21 + 16);

    *(v25 + 12) = 1026;
    *(v25 + 14) = v44;
    _os_log_impl(&dword_25F0B3000, v22, v23, "Found %ld XOJIT loadable products, pid: %{public}d", v25, 0x12u);
    v26 = v25;
    v4 = v41;
    MEMORY[0x25F8D6230](v26, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v17, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48CD8, &qword_25F1825B8);
  v34 = sub_25F17932C();
  (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  *(v35 + 24) = v44;
  *(v35 + 32) = v21;

  v33 = sub_25F17870C();
  v37 = v42;
  v36 = v43;
  (*(v43 + 16))(v42, a1, v4);
  v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v39 = swift_allocObject();
  (*(v36 + 32))(v39 + v38, v37, v4);
  sub_25F17862C();

  return v33;
}

uint64_t sub_25F144ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 208) = a3;
  *(v4 + 24) = a1;
  v5 = sub_25F17767C();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 72) = swift_task_alloc();
  v7 = sub_25F17888C();
  *(v4 + 80) = v7;
  v8 = *(v7 - 8);
  *(v4 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F14501C, 0, 0);
}

uint64_t sub_25F14501C()
{
  if (qword_27FD46800 != -1)
  {
    swift_once();
  }

  v1 = sub_25F0F5498(v0[4]);
  v0[15] = *(v1 + OBJC_IVAR____TtC15PreviewShellKitP33_1C89A0595A9F44E3FEB21A13643147FF23PreviewsJITConfigurator_future);
  v2 = v1;

  v3 = *(MEMORY[0x277D40550] + 4);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_25F145190;

  return MEMORY[0x2821A0BA0](v0 + 2);
}

uint64_t sub_25F145190()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = sub_25F1456B4;
  }

  else
  {
    v6 = sub_25F1452C4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F1452C4()
{
  v1 = *(v0 + 112);
  *(v0 + 144) = *(v0 + 16);
  sub_25F17885C();
  v2 = sub_25F17887C();
  v3 = sub_25F17952C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 208);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_25F0B3000, v2, v3, "Loading products from shell update payload for pid: %{public}d", v5, 8u);
    MEMORY[0x25F8D6230](v5, -1, -1);
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 40);

  v10 = *(v8 + 8);
  *(v0 + 152) = v10;
  *(v0 + 160) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  v11 = *(v9 + 16);
  *(v0 + 168) = v11;
  if (v11)
  {
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    *(v0 + 213) = 0;
    *(v0 + 176) = 0;
    v14 = *(v0 + 144);
    v15 = *(v0 + 72);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = *(sub_25F177B9C() - 8);
    v19 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v47 = sub_25F177B8C();
    v48 = v14[5];
    v46 = v14[4];
    v20 = v14[3];
    v21 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
    v22 = v21 + *(type metadata accessor for BatchIdentity(0) + 20);
    v23 = v14[6];
    (*(v12 + 16))(v15, v20 + v22, v17);
    v24 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v0 + 184) = v26;
    *(v26 + 16) = v14;
    (*(v12 + 32))(v26 + v24, v15, v17);
    *(v26 + v25) = v47;
    v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v46;
    v27[1] = v48;
    v28 = *(MEMORY[0x277D40608] + 4);

    v29 = swift_task_alloc();
    *(v0 + 192) = v29;
    *v29 = v0;
    v29[1] = sub_25F145740;
    v30 = MEMORY[0x277D839B0];

    return MEMORY[0x2821A0D70](v0 + 212, sub_25F12DFAC, v26, v30);
  }

  else
  {
    v31 = *(v0 + 96);
    sub_25F17885C();
    v32 = sub_25F17887C();
    v33 = sub_25F17952C();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 144);
    if (v34)
    {
      v36 = *(v0 + 208);
      v37 = swift_slowAlloc();
      *v37 = 67240192;
      *(v37 + 4) = v36;
      _os_log_impl(&dword_25F0B3000, v32, v33, "No products loaded from shell update payload for pid: %{public}d", v37, 8u);
      MEMORY[0x25F8D6230](v37, -1, -1);
    }

    else
    {
      v38 = *(v0 + 144);
    }

    v39 = *(v0 + 160);
    v41 = *(v0 + 104);
    v40 = *(v0 + 112);
    v42 = *(v0 + 72);
    v43 = *(v0 + 24);
    (*(v0 + 152))(*(v0 + 96), *(v0 + 80));
    *v43 = 0;

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_25F1456B4()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F145740()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);

  if (v0)
  {
    v6 = sub_25F145C54;
  }

  else
  {
    v6 = sub_25F145874;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F145874()
{
  v1 = *(v0 + 176) + 1;
  v2 = *(v0 + 212) | *(v0 + 213);
  if (v1 == *(v0 + 168))
  {
    if ((*(v0 + 212) | *(v0 + 213)))
    {
      v4 = (v0 + 104);
      v3 = *(v0 + 104);
      sub_25F17885C();
      v5 = sub_25F17887C();
      v6 = sub_25F17952C();
      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 144);
      if (v7)
      {
        v9 = *(v0 + 208);
        v10 = swift_slowAlloc();
        *v10 = 67240192;
        *(v10 + 4) = v9;
        v11 = "Finished loading products from shell update payload for pid: %{public}d";
LABEL_10:
        _os_log_impl(&dword_25F0B3000, v5, v6, v11, v10, 8u);
        MEMORY[0x25F8D6230](v10, -1, -1);

LABEL_12:
        v34 = *v4;
        v35 = *(v0 + 160);
        v36 = *(v0 + 104);
        v37 = *(v0 + 112);
        v38 = *(v0 + 96);
        v39 = *(v0 + 72);
        v40 = *(v0 + 24);
        (*(v0 + 152))(v34, *(v0 + 80));
        *v40 = v2 & 1;

        v41 = *(v0 + 8);

        return v41();
      }
    }

    else
    {
      v4 = (v0 + 96);
      v30 = *(v0 + 96);
      sub_25F17885C();
      v5 = sub_25F17887C();
      v6 = sub_25F17952C();
      v31 = os_log_type_enabled(v5, v6);
      v32 = *(v0 + 144);
      if (v31)
      {
        v33 = *(v0 + 208);
        v10 = swift_slowAlloc();
        *v10 = 67240192;
        *(v10 + 4) = v33;
        v11 = "No products loaded from shell update payload for pid: %{public}d";
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  *(v0 + 213) = v2 & 1;
  *(v0 + 176) = v1;
  v12 = *(v0 + 144);
  v13 = *(v0 + 72);
  v46 = *(v0 + 64);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(sub_25F177B9C() - 8);
  v18 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v1;
  v44 = sub_25F177B8C();
  v45 = v12[5];
  v43 = v12[4];
  v19 = v12[3];
  v20 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v21 = v20 + *(type metadata accessor for BatchIdentity(0) + 20);
  v22 = v12[6];
  (*(v15 + 16))(v13, v19 + v21, v14);
  v23 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v24 = (v46 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v0 + 184) = v25;
  *(v25 + 16) = v12;
  (*(v15 + 32))(v25 + v23, v13, v14);
  *(v25 + v24) = v44;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v43;
  v26[1] = v45;
  v27 = *(MEMORY[0x277D40608] + 4);

  v28 = swift_task_alloc();
  *(v0 + 192) = v28;
  *v28 = v0;
  v28[1] = sub_25F145740;
  v29 = MEMORY[0x277D839B0];

  return MEMORY[0x2821A0D70](v0 + 212, sub_25F12DFAC, v25, v29);
}

uint64_t sub_25F145C54()
{
  v1 = v0[18];

  v2 = v0[25];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F145CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F17788C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_25F17888C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (*(a1 + 8) == 1)
  {
    v20 = *a1;
    sub_25F17885C();
    (*(v5 + 16))(v9, a2, v4);
    v21 = v20;
    v22 = sub_25F17887C();
    v23 = sub_25F17953C();
    sub_25F0C0FA8(v20, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v12;
      v25 = v24;
      v35 = swift_slowAlloc();
      *v25 = 67240450;
      v26 = sub_25F17787C();
      (*(v5 + 8))(v9, v4);
      *(v25 + 4) = v26;
      *(v25 + 8) = 2114;
      v27 = v20;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 10) = v28;
      v29 = v35;
      *v35 = v28;
      _os_log_impl(&dword_25F0B3000, v22, v23, "JIT (pid: %{public}d) for shell update failed: %{public}@", v25, 0x12u);
      sub_25F0B7E94(v29, &qword_27FD473D0, &unk_25F17C540);
      MEMORY[0x25F8D6230](v29, -1, -1);
      v30 = v25;
      v12 = v36;
      MEMORY[0x25F8D6230](v30, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v9, v4);
    }

    v19 = v17;
  }

  else
  {
    sub_25F17885C();
    (*(v5 + 16))(v11, a2, v4);
    v22 = sub_25F17887C();
    v31 = sub_25F17952C();
    if (os_log_type_enabled(v22, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      v33 = sub_25F17787C();
      (*(v5 + 8))(v11, v4);
      *(v32 + 4) = v33;
      _os_log_impl(&dword_25F0B3000, v22, v31, "JIT (pid: %{public}d) for shell update succeeded", v32, 8u);
      MEMORY[0x25F8D6230](v32, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v11, v4);
    }
  }

  return (*(v13 + 8))(v19, v12);
}

uint64_t Agent.kill()()
{
  v1 = sub_25F177FFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);
  sub_25F177FDC();

  v7 = sub_25F17864C();

  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_25F146224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a3;
  v86 = a1;
  v5 = sub_25F177FFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v77 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_25F17776C();
  v84 = *(v76 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = v10;
  v83 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F1778EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = MEMORY[0x28223BE20](v11);
  v92 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = v73 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D40, &unk_25F1827C0);
  v17 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v19 = v73 - v18;
  v20 = type metadata accessor for Agent.Update(0);
  v97 = *(v20 - 8);
  v21 = *(v97 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v74 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v81 = v73 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v87 = v73 - v27;
  v73[1] = v28;
  MEMORY[0x28223BE20](v26);
  isUniquelyReferenced_nonNull_native = v73 - v29;
  v31 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  swift_beginAccess();
  v82 = v3;
  v80 = v31;
  v32 = *&v3[v31];
  v33 = *(v32 + 16);
  v85 = a2;
  v79 = v5;
  v78 = v6;
  if (v33 && (v34 = sub_25F0C8E04(a2), (v35 & 1) != 0))
  {
    v98 = *(*(v32 + 56) + 8 * v34);
  }

  else
  {
    v98 = MEMORY[0x277D84F90];
  }

  v36 = v93;
  swift_endAccess();
  v95 = *(v98 + 16);
  if (!v95)
  {
LABEL_16:

    v49 = v87;
    sub_25F0B7E2C(v96, v87 + *(v20 + 20), &qword_27FD48D08, &unk_25F183080);
    sub_25F177E7C();
    *(v49 + *(v20 + 24)) = v86;
    v11 = v81;
    sub_25F1488EC(v49, v81, type metadata accessor for Agent.Update);
    v12 = v82;
    v50 = v80;
    swift_beginAccess();

    v51 = *&v12[v50];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *&v12[v50];
    v32 = v99;
    *&v12[v50] = 0x8000000000000000;
    v52 = v85;
    v38 = sub_25F0C8E04(v85);
    v54 = *(v32 + 16);
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_29;
    }

    v57 = v53;
    if (*(v32 + 24) >= v56)
    {
      v19 = v76;
      if (isUniquelyReferenced_nonNull_native)
      {
        *&v12[v50] = v32;
        if (v53)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_25F170D34();
        v32 = v99;
        *&v12[v50] = v99;
        if (v57)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      sub_25F16CDA0(v56, isUniquelyReferenced_nonNull_native);
      v32 = v99;
      v58 = sub_25F0C8E04(v52);
      v19 = v76;
      if ((v57 & 1) != (v59 & 1))
      {
        result = sub_25F17985C();
        __break(1u);
        return result;
      }

      v38 = v58;
      *&v12[v50] = v32;
      if (v57)
      {
LABEL_24:
        isUniquelyReferenced_nonNull_native = *(v32 + 56);
        v32 = *(isUniquelyReferenced_nonNull_native + 8 * v38);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *(isUniquelyReferenced_nonNull_native + 8 * v38) = v32;
        if ((v61 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    v60 = v83;
    (*(v84 + 16))(v83, v52, v19);
    sub_25F16FAEC(v38, v60, MEMORY[0x277D84F90], v32);
    goto LABEL_24;
  }

  v37 = 0;
  v94 = v98 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v38 = (v12 + 48);
  v89 = v20;
  v90 = (v12 + 32);
  v88 = (v12 + 8);
  while (v37 < *(v98 + 16))
  {
    sub_25F1488EC(v94 + *(v97 + 72) * v37, isUniquelyReferenced_nonNull_native, type metadata accessor for Agent.Update);
    v40 = &v19[*(v36 + 48)];
    sub_25F0B7E2C(isUniquelyReferenced_nonNull_native + *(v20 + 20), v19, &qword_27FD48D08, &unk_25F183080);
    sub_25F0B7E2C(v96, v40, &qword_27FD48D08, &unk_25F183080);
    v12 = *v38;
    if ((*v38)(v19, 1, v11) == 1)
    {
      v39 = v40;
    }

    else
    {
      v41 = (v12)(v40, 1, v11);
      v39 = v19;
      if (v41 != 1)
      {
        v42 = v91;
        v43 = *v90;
        (*v90)(v91, v19, v11);
        v44 = v11;
        v45 = v92;
        v43(v92, v40, v44);
        v32 = sub_25F1778DC();
        v12 = *v88;
        v46 = v45;
        v11 = v44;
        v47 = v93;
        (*v88)(v46, v11);
        v48 = v42;
        v20 = v89;
        (v12)(v48, v11);
        v36 = v47;
        if ((v32 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    sub_25F0B7E94(v39, &qword_27FD48D08, &unk_25F183080);
LABEL_9:
    v32 = *(isUniquelyReferenced_nonNull_native + *(v20 + 24));
    sub_25F17866C();
LABEL_10:
    ++v37;
    sub_25F1489A4(isUniquelyReferenced_nonNull_native, type metadata accessor for Agent.Update);
    if (v95 == v37)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  v32 = sub_25F116274(0, *(v32 + 16) + 1, 1, v32);
  *(isUniquelyReferenced_nonNull_native + 8 * v38) = v32;
LABEL_25:
  v63 = *(v32 + 16);
  v62 = *(v32 + 24);
  if (v63 >= v62 >> 1)
  {
    v32 = sub_25F116274(v62 > 1, v63 + 1, 1, v32);
    *(isUniquelyReferenced_nonNull_native + 8 * v38) = v32;
  }

  *(v32 + 16) = v63 + 1;
  v64 = *(v97 + 80);
  sub_25F149EDC(v11, v32 + ((v64 + 32) & ~v64) + *(v97 + 72) * v63, type metadata accessor for Agent.Update);
  swift_endAccess();
  v65 = v77;
  sub_25F177FDC();
  v67 = v83;
  v66 = v84;
  (*(v84 + 16))(v83, v85, v19);
  v68 = v74;
  sub_25F1488EC(v87, v74, type metadata accessor for Agent.Update);
  v69 = (*(v66 + 80) + 24) & ~*(v66 + 80);
  v70 = (v75 + v64 + v69) & ~v64;
  v71 = swift_allocObject();
  *(v71 + 16) = v12;
  (*(v66 + 32))(v71 + v69, v67, v19);
  sub_25F149EDC(v68, v71 + v70, type metadata accessor for Agent.Update);

  sub_25F1785CC();

  (*(v78 + 8))(v65, v79);
  return sub_25F1489A4(v87, type metadata accessor for Agent.Update);
}

uint64_t sub_25F146BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v6 = sub_25F17776C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Agent.Update(0);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v44 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = v40 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v40 - v17;
  v19 = OBJC_IVAR____TtC15PreviewShellKit5Agent_updates;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (!*(v20 + 16) || (v21 = sub_25F0C8E04(a3), (v22 & 1) == 0))
  {
    v48 = 0;
    swift_endAccess();
LABEL_32:
    (*(v7 + 16))(v10, a3, v6);
    swift_beginAccess();

    sub_25F16A4F0(v39, v10);
    swift_endAccess();
  }

  v40[3] = v19;
  v41 = v7;
  v42 = v6;
  v43 = a3;
  v48 = *(*(v20 + 56) + 8 * v21);
  v23 = v48;
  v24 = swift_endAccess();
  v40[2] = v40;
  MEMORY[0x28223BE20](v24);
  v40[-2] = v47;

  result = sub_25F14818C(sub_25F14A210, &v40[-4], v23);
  if (v26)
  {
    v27 = v23[2];
    v28 = v27;
LABEL_24:
    if (!__OFADD__(v27, v28 - v27))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v23;
      if (!isUniquelyReferenced_nonNull_native || v28 > v23[3] >> 1)
      {
        if (v27 <= v28)
        {
          v38 = v28;
        }

        else
        {
          v38 = v27;
        }

        v23 = sub_25F116274(isUniquelyReferenced_nonNull_native, v38, 1, v23);
        v48 = v23;
      }

      sub_25F14A240(v28, v27, 0);
      v48 = v23;
      v6 = v42;
      a3 = v43;
      v7 = v41;
      goto LABEL_32;
    }
  }

  else
  {
    v28 = result;
    v40[0] = v10;
    v40[1] = a2;
    v27 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      goto LABEL_9;
    }

    while (1)
    {
      v29 = v23[2];
      if (v27 == v29)
      {
        break;
      }

      if (v27 >= v29)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v30 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v31 = v23 + v30;
      v32 = *(v46 + 72);
      v33 = v32 * v27;
      sub_25F1488EC(v23 + v30 + v32 * v27, v18, type metadata accessor for Agent.Update);
      v34 = sub_25F177E6C();
      result = sub_25F1489A4(v18, type metadata accessor for Agent.Update);
      if ((v34 & 1) == 0)
      {
        if (v27 != v28)
        {
          if (v28 < 0)
          {
            goto LABEL_34;
          }

          v35 = v23[2];
          if (v28 >= v35)
          {
            goto LABEL_35;
          }

          result = sub_25F1488EC(&v31[v32 * v28], v45, type metadata accessor for Agent.Update);
          if (v27 >= v35)
          {
            goto LABEL_36;
          }

          v36 = v44;
          sub_25F1488EC(&v31[v33], v44, type metadata accessor for Agent.Update);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_25F148570(v23);
          }

          result = sub_25F14A388(v36, v23 + v30 + v32 * v28, type metadata accessor for Agent.Update);
          if (v27 >= v23[2])
          {
            goto LABEL_37;
          }

          result = sub_25F14A388(v45, v23 + v30 + v33, type metadata accessor for Agent.Update);
        }

LABEL_9:
        ++v28;
      }

      ++v27;
    }

    if (v27 < v28)
    {
      goto LABEL_38;
    }

    v10 = v40[0];
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_39:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Agent.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15PreviewShellKit5Agent_identifier;
  v3 = sub_25F177E8C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher));
  sub_25F1489A4(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity, type metadata accessor for BatchIdentity);
  v4 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);

  v6 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer);
  v5 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapAgentServer + 8);

  v7 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);

  v8 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processPromise);

  v9 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit5Agent_updates);

  return v0;
}

uint64_t Agent.__deallocating_deinit()
{
  Agent.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25F1471FC(uint64_t a1)
{
  v2 = sub_25F14A988();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F147238(uint64_t a1)
{
  v2 = sub_25F14A988();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F147290(uint64_t a1)
{
  v2 = sub_25F14A9DC();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1472CC(uint64_t a1)
{
  v2 = sub_25F14A9DC();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F147308(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F1787BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = a2;
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D48, &qword_25F1827D0);
  sub_25F0B7D00(&qword_27FD48D50, &qword_27FD48D48, &qword_25F1827D0);
  sub_25F17855C();
  return (*(v4 + 8))(v7, v3);
}

void *sub_25F147494(void *result)
{
  v1 = result;
  if (*result)
  {
    sub_25F17876C();
  }

  *v1 = 0;
  return result;
}

uint64_t sub_25F1474F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_25F147534(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486E8, &unk_25F180708);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_25F1475B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD486F8, &qword_25F180718);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_25F14763C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25F14765C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25F14768C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F12F6EC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_25F1476F8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25F1476F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F1797FC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48700, &qword_25F180720);
        v5 = sub_25F17926C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25F1478D0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25F147800(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F147800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_25F17983C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F1478D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_25F12F5EC(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_25F147EB4((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_25F17983C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25F17983C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F116170(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_25F116170((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
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

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_25F147EB4((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_25F12F5EC(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_25F12F560(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_25F17983C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
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
  return result;
}

uint64_t sub_25F147EB4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_25F17983C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_25F17983C() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_25F1480DC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_25F14818C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Agent.Update(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_25F148278(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_25F148378(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_25F1484FC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_25F17983C() & 1;
    }
  }

  return result;
}

uint64_t _s15PreviewShellKit13BatchIdentityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25F17983C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = type metadata accessor for BatchIdentity(0);
  v6 = v5[5];
  if ((sub_25F17765C() & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = v5[6];
  sub_25F17773C();
  sub_25F148850(&qword_27FD48DA0, MEMORY[0x277D409D0]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v20 == v18 && v21 == v19)
  {
  }

  else
  {
    v8 = sub_25F17983C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = v5[7];
  sub_25F17722C();
  sub_25F148850(&qword_27FD48DA8, MEMORY[0x277D406E8]);
  sub_25F1791FC();
  sub_25F1791FC();
  if (v20 == v18 && v21 == v19)
  {
  }

  else
  {
    v10 = sub_25F17983C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v11 = v5[8];
  v17 = *(a1 + v11);
  v16 = *(a2 + v11);
  sub_25F14A700();
  sub_25F1791FC();
  sub_25F1791FC();
  if (v20 != v18 || v21 != v19)
  {
    v12 = sub_25F17983C();

    if (v12)
    {
      goto LABEL_19;
    }

LABEL_20:
    v14 = 0;
    return v14 & 1;
  }

LABEL_19:
  v13 = v5[9];
  v14 = sub_25F1771AC();
  return v14 & 1;
}

uint64_t sub_25F148850(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F148898()
{
  result = qword_27FD48C90;
  if (!qword_27FD48C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48C90);
  }

  return result;
}

uint64_t sub_25F1488EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1489A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F148A50()
{
  v1 = sub_25F17741C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F148B1C(uint64_t a1)
{
  v4 = *(sub_25F17741C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F1417FC(a1, v6, v7, v1 + v5);
}

uint64_t sub_25F148C0C()
{
  v1 = sub_25F17741C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 10, v3 | 7);
}

uint64_t sub_25F148CE4(uint64_t a1, uint64_t *a2)
{
  v6 = *(sub_25F17741C() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 9);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F1425B4(a1, a2, v8, v2 + v7, v10, v11, v12);
}

uint64_t sub_25F148E20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F148E58(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0BF3E4;

  return sub_25F143E28(a1, a2, v7);
}

uint64_t sub_25F148F20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F148F68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D60, &qword_25F1827E0);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_25F148FC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25F149004(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F144ED8(a1, v4, v5, v6);
}

uint64_t sub_25F1490BC()
{
  v1 = sub_25F17788C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F149144(uint64_t a1)
{
  v3 = *(sub_25F17788C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25F145CE8(a1, v4);
}

uint64_t *sub_25F1491B4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher);
  v4 = *(v1 + OBJC_IVAR____TtC15PreviewShellKit5Agent_launcher + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return sub_25F1066A4(a1, v4, v5);
}

uint64_t sub_25F149268(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_25F17767C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_25F17773C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_25F17722C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = sub_25F1771BC();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_25F149430(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_25F17767C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_25F17773C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_25F17722C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = sub_25F1771BC();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25F1495E4()
{
  result = sub_25F17767C();
  if (v1 <= 0x3F)
  {
    result = sub_25F17773C();
    if (v2 <= 0x3F)
    {
      result = sub_25F17722C();
      if (v3 <= 0x3F)
      {
        result = sub_25F1771BC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F1496B8()
{
  result = sub_25F177E8C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for BatchIdentity(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25F149808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177E8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D08, &unk_25F183080);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25F149934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D08, &unk_25F183080);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_25F149A68()
{
  sub_25F177E8C();
  if (v0 <= 0x3F)
  {
    sub_25F149B64(319, &qword_27FD48D20, MEMORY[0x277D40AD8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25F149B64(319, &qword_27FD48D28, MEMORY[0x277D40450], MEMORY[0x277D40558]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F149B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25F149BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177E8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_25F17767C();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 32);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_25F149CFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25F17767C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 32) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25F149E08()
{
  result = sub_25F177E8C();
  if (v1 <= 0x3F)
  {
    result = sub_25F17767C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F149EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F149F44()
{
  v1 = sub_25F17776C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Agent.Update(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = v0 + v8;
  v12 = sub_25F177E8C();
  (*(*(v12 - 8) + 8))(v0 + v8, v12);
  v13 = *(v6 + 20);
  v14 = sub_25F1778EC();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v8 + v13, 1, v14))
  {
    (*(v15 + 8))(v11 + v13, v14);
  }

  v16 = *(v11 + *(v6 + 24));

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_25F14A138(uint64_t a1)
{
  v3 = *(sub_25F17776C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Agent.Update(0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25F146BB0(a1, v7, v1 + v4, v8);
}

unint64_t sub_25F14A240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Agent.Update(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25F14A388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F14A40C()
{
  result = qword_27FD48D68;
  if (!qword_27FD48D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48D68);
  }

  return result;
}

void sub_25F14A460(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_25F14A470(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_25F14A480()
{
  result = qword_27FD48D70;
  if (!qword_27FD48D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48D70);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{
  v1 = sub_25F17767C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_25F14A5C8()
{
  v1 = *(sub_25F17767C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25F13C69C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void *sub_25F14A690(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 20);
  return sub_25F147494(a1);
}

uint64_t sub_25F14A6C4(uint64_t *a1)
{
  v3 = *a1;

  *a1 = v1;
}

unint64_t sub_25F14A700()
{
  result = qword_27FD48DB0;
  if (!qword_27FD48DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DB0);
  }

  return result;
}

uint64_t sub_25F14A764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_25F14A7C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25F14A828()
{
  result = qword_27FD48DB8;
  if (!qword_27FD48DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DB8);
  }

  return result;
}

unint64_t sub_25F14A880()
{
  result = qword_27FD48DC0;
  if (!qword_27FD48DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DC0);
  }

  return result;
}

unint64_t sub_25F14A8DC()
{
  result = qword_27FD48DC8;
  if (!qword_27FD48DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DC8);
  }

  return result;
}

unint64_t sub_25F14A934()
{
  result = qword_27FD48DD0;
  if (!qword_27FD48DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DD0);
  }

  return result;
}

unint64_t sub_25F14A988()
{
  result = qword_27FD48DD8;
  if (!qword_27FD48DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DD8);
  }

  return result;
}

unint64_t sub_25F14A9DC()
{
  result = qword_27FD48DE0;
  if (!qword_27FD48DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48DE0);
  }

  return result;
}

uint64_t ContentProvider.handleHostMessageStream(_:instance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = sub_25F17888C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v17 = *(v6 + 16);
  v17(v11, v4, a3);
  v18 = sub_25F17887C();
  v19 = sub_25F17953C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v12;
    v21 = v20;
    v29 = swift_slowAlloc();
    v30 = v13;
    v33 = v29;
    *v21 = 136446210;
    v17(v32, v11, a3);
    v22 = sub_25F1790BC();
    v24 = v23;
    (*(v6 + 8))(v11, a3);
    v25 = sub_25F0BECF0(v22, v24, &v33);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_25F0B3000, v18, v19, "Content provider received a host message stream but does not handle them: %{public}s", v21, 0xCu);
    v26 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x25F8D6230](v26, -1, -1);
    MEMORY[0x25F8D6230](v21, -1, -1);

    (*(v30 + 8))(v16, v31);
  }

  else
  {

    (*(v6 + 8))(v11, a3);
    (*(v13 + 8))(v16, v12);
  }

  return 0;
}

uint64_t static ContentProvider.supportedVariantGroups(for:)()
{
  v1 = v0;
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v7 = sub_25F17887C();
  v8 = sub_25F17953C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v1;
    v16 = v10;
    *v9 = 136446210;
    swift_getMetatypeMetadata();
    v11 = sub_25F1790BC();
    v13 = sub_25F0BECF0(v11, v12, &v16);

    *(v9 + 4) = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x25F8D6230](v10, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return MEMORY[0x277D84F90];
}

uint64_t static ContentProvider<>.decode(updatePayload:)(uint64_t a1)
{
  v2 = sub_25F177F8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  (*(v3 + 16))(v6, a1, v2);
  return sub_25F17850C();
}

Swift::Void __swiftcall PreviewShellServiceProtocol.activateServers()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v53 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v51 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v49 = &v38 - v9;
  v11 = type metadata accessor for ServerFarm.HostMessages();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = v3;
  v50 = v3;
  v17 = *(v3 + 16);
  v43 = v2;
  v18 = v4;
  v17(v54, v4, v16);
  v52 = v15;
  ServerFarm.activate()(v15);
  v55[4] = v54[4];
  v55[5] = v54[5];
  v55[6] = v54[6];
  v55[7] = v54[7];
  v55[0] = v54[0];
  v55[1] = v54[1];
  v55[2] = v54[2];
  v55[3] = v54[3];
  sub_25F0E263C(v55);
  v46 = sub_25F17932C();
  v19 = *(v46 - 8);
  v45 = *(v19 + 56);
  v47 = v19 + 56;
  v45(v10, 1, 1, v46);
  v44 = type metadata accessor for ServerFarm.HostMessages;
  v20 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1551B0(v15, v20, type metadata accessor for ServerFarm.HostMessages);
  v21 = v5;
  v42 = *(v5 + 16);
  v42(v51, v2, v18);
  v41 = sub_25F17930C();
  v22 = sub_25F1792FC();
  v23 = *(v48 + 80);
  v24 = *(v5 + 80);
  v25 = (v23 + 48) & ~v23;
  v40 = v25;
  v26 = (v12 + v24 + v25) & ~v24;
  v48 = v23 | v24;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 2) = v22;
  *(v27 + 3) = v28;
  v29 = v50;
  *(v27 + 4) = v18;
  *(v27 + 5) = v29;
  v39 = type metadata accessor for ServerFarm.HostMessages;
  sub_25F156CE4(v20, &v27[v25], type metadata accessor for ServerFarm.HostMessages);
  v30 = *(v21 + 32);
  v31 = v51;
  v32 = v18;
  v30(&v27[v26], v51, v18);
  v33 = v49;
  sub_25F0CD9E8(0, 0, v49, &unk_25F182BC0, v27);

  v45(v33, 1, 1, v46);
  sub_25F1551B0(v52, v20, v44);
  v34 = v32;
  v42(v31, v43, v32);
  v35 = sub_25F1792FC();
  v36 = swift_allocObject();
  *(v36 + 2) = v35;
  *(v36 + 3) = MEMORY[0x277D85700];
  *(v36 + 4) = v34;
  *(v36 + 5) = v50;
  sub_25F156CE4(v20, &v36[v40], v39);
  v30(&v36[v26], v31, v34);
  sub_25F0CD9E8(0, 0, v49, &unk_25F182BD0, v36);

  sub_25F176FCC();
  v37 = sub_25F176FBC();
  sub_25F176FAC();

  sub_25F1574D0(v52, type metadata accessor for ServerFarm.HostMessages);
}

uint64_t sub_25F14B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_25F17772C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_25F177BCC();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v14 = sub_25F17755C();
  v7[12] = v14;
  v15 = *(v14 - 8);
  v7[13] = v15;
  v16 = *(v15 + 64) + 15;
  v7[14] = swift_task_alloc();
  v17 = sub_25F17764C();
  v7[15] = v17;
  v18 = *(v17 - 8);
  v7[16] = v18;
  v19 = *(v18 + 64) + 15;
  v7[17] = swift_task_alloc();
  v20 = sub_25F1775FC();
  v7[18] = v20;
  v21 = *(v20 - 8);
  v7[19] = v21;
  v22 = *(v21 + 64) + 15;
  v7[20] = swift_task_alloc();
  v23 = sub_25F176E9C();
  v7[21] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47380, &unk_25F1830C0);
  v7[23] = v25;
  v26 = *(v25 - 8);
  v7[24] = v26;
  v27 = *(v26 + 64) + 15;
  v7[25] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47520, &qword_25F17BFF8) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47528, &qword_25F1830D0);
  v7[27] = v29;
  v30 = *(v29 - 8);
  v7[28] = v30;
  v31 = *(v30 + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = sub_25F17930C();
  v7[31] = sub_25F1792FC();
  v33 = sub_25F1792CC();
  v7[32] = v33;
  v7[33] = v32;

  return MEMORY[0x2822009F8](sub_25F14BA10, v33, v32);
}

uint64_t sub_25F14BA10()
{
  v1 = v0[29];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  sub_25F17935C();
  v3 = v0[30];
  v4 = sub_25F1792FC();
  v0[34] = v4;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_25F14BAEC;
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];
  v10 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v8, v4, v10, v9);
}

uint64_t sub_25F14BAEC()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v7 = *v0;

  v4 = *(v1 + 264);
  v5 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_25F14BC30, v5, v4);
}

uint64_t sub_25F14BC30()
{
  v1 = v0[26];
  if ((*(v0[24] + 48))(v1, 1, v0[23]) == 1)
  {
    v2 = v0[31];
    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[11];
    v53 = v0[8];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v9 = v0[1];

    return v9();
  }

  v12 = v0[21];
  v11 = v0[22];
  sub_25F0B7D50(v1, v0[25], &qword_27FD47380, &unk_25F1830C0);
  sub_25F17705C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[23];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v39 = v0[16];
      v38 = v0[17];
      v55 = v0[15];
      v40 = v0[7];
      v41 = v0[8];
      v42 = v0[6];
      v43 = v0[4];
      (*(v40 + 32))(v41, v15, v42);
      sub_25F17704C();
      sub_25F1572D0(v41, v38);
      (*(v39 + 8))(v38, v55);
      (*(v40 + 8))(v41, v42);
      goto LABEL_16;
    }

    v24 = v0[17];
    (*(v0[10] + 32))(v0[11], v15, v0[9]);
    sub_25F17704C();
    v25 = swift_task_alloc();
    v0[37] = v25;
    *v25 = v0;
    v25[1] = sub_25F14C354;
    v26 = v0[17];
    v27 = v0[11];
    v28 = v0[4];
    v29 = v0[5];
    v30 = v0[3];

    return sub_25F14E52C(v27, v26, v28, v29);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = v0[19];
      v17 = v0[20];
      v20 = v0[17];
      v19 = v0[18];
      v21 = v0[16];
      v22 = v0[4];
      v52 = v0[5];
      v54 = v0[15];
      v23 = v0[3];
      (*(v18 + 32))(v17, v15, v19);
      sub_25F17704C();
      sub_25F14C720(v17, v20, v22, v52);
      (*(v21 + 8))(v20, v54);
      (*(v18 + 8))(v17, v19);
LABEL_16:
      sub_25F0B7E94(v0[25], &qword_27FD47380, &unk_25F1830C0);
      v44 = v0[30];
      v45 = sub_25F1792FC();
      v0[34] = v45;
      v46 = *(MEMORY[0x277D85798] + 4);
      v47 = swift_task_alloc();
      v0[35] = v47;
      *v47 = v0;
      v47[1] = sub_25F14BAEC;
      v48 = v0[29];
      v49 = v0[26];
      v50 = v0[27];
      v51 = MEMORY[0x277D85700];

      return MEMORY[0x2822003E8](v49, v45, v51, v50);
    }

    v31 = v0[17];
    (*(v0[13] + 32))(v0[14], v15, v0[12]);
    sub_25F17704C();
    v32 = swift_task_alloc();
    v0[36] = v32;
    *v32 = v0;
    v32[1] = sub_25F14C0E8;
    v33 = v0[17];
    v34 = v0[14];
    v35 = v0[4];
    v36 = v0[5];
    v37 = v0[3];

    return sub_25F14D848(v34, v33, v35, v36);
  }
}

uint64_t sub_25F14C0E8()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 120);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 264);
  v7 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_25F14C26C, v7, v6);
}

uint64_t sub_25F14C26C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  sub_25F0B7E94(v0[25], &qword_27FD47380, &unk_25F1830C0);
  v1 = v0[30];
  v2 = sub_25F1792FC();
  v0[34] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_25F14BAEC;
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v6, v2, v8, v7);
}

uint64_t sub_25F14C354()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 120);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 264);
  v7 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_25F14C4D8, v7, v6);
}

uint64_t sub_25F14C4D8()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_25F0B7E94(v0[25], &qword_27FD47380, &unk_25F1830C0);
  v1 = v0[30];
  v2 = sub_25F1792FC();
  v0[34] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_25F14BAEC;
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v6, v2, v8, v7);
}

uint64_t sub_25F14C5C4(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for ServerFarm.HostMessages() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0C10CC;

  return sub_25F14B66C(a1, v10, v11, v1 + v8, v1 + v9, v6, v5);
}

uint64_t sub_25F14C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v112 = a3;
  v126 = a2;
  v5 = sub_25F17764C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v127 = v8;
  v128 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F177C4C();
  v118 = *(v9 - 8);
  v119 = v9;
  v10 = *(v118 + 64);
  MEMORY[0x28223BE20](v9);
  v117 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_25F177C7C();
  v110 = *(v111 - 8);
  v12 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_25F17724C();
  v107 = *(v108 - 8);
  v14 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_25F1778CC();
  v104 = *(v105 - 8);
  v16 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_25F17788C();
  v101 = *(v102 - 8);
  v18 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_25F17756C();
  v98 = *(v99 - 8);
  v20 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_25F177F8C();
  v96 = *(v97 - 8);
  v22 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v94 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_25F177B3C();
  v92 = *(v93 - 8);
  v24 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v88 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F1771BC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v89 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_25F17741C();
  v90 = *(v91 - 8);
  v29 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v129 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_25F1775DC();
  v31 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v130 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25F1775FC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v122 = v37;
  v123 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v85 - v38;
  v115 = sub_25F17888C();
  v114 = *(v115 - 8);
  v40 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v42 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25F1787BC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v85 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v44 + 8))(v47, v43);
  sub_25F17884C();
  v48 = *(v34 + 16);
  v125 = a1;
  v120 = v48;
  v121 = v34 + 16;
  v48(v39, a1, v33);
  v49 = sub_25F17887C();
  v50 = sub_25F17955C();
  v51 = os_log_type_enabled(v49, v50);
  v124 = v34;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v86 = v6;
    v53 = v52;
    v54 = swift_slowAlloc();
    v87 = v5;
    v55 = v54;
    *&v131 = v54;
    *v53 = 136446210;
    sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890]);
    v56 = sub_25F17980C();
    v58 = v57;
    (*(v34 + 8))(v39, v33);
    v59 = sub_25F0BECF0(v56, v58, &v131);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_25F0B3000, v49, v50, "PreviewShellService received %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v60 = v55;
    v5 = v87;
    MEMORY[0x25F8D6230](v60, -1, -1);
    v61 = v53;
    v6 = v86;
    MEMORY[0x25F8D6230](v61, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v39, v33);
  }

  (*(v114 + 8))(v42, v115);
  v62 = v33;
  v63 = v130;
  v64 = v125;
  sub_25F1775EC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v67 = v118;
  v66 = v119;
  v68 = v117;
  v69 = v124;
  v70 = v129;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E88, &qword_25F183078) + 48);
      v74 = v90;
      v75 = v91;
      (*(v90 + 32))(v70, v63, v91);
      v76 = v63 + v73;
      v77 = v89;
      sub_25F156CE4(v76, v89, MEMORY[0x277D406A0]);
      sub_25F14FE54(v70, v77, v112, v113);
      sub_25F1574D0(v77, MEMORY[0x277D406A0]);
      (*(v74 + 8))(v129, v75);
      goto LABEL_19;
    case 2:
      v67 = v92;
      v68 = v88;
      v66 = v93;
      (*(v92 + 32))(v88, v63, v93);
      sub_25F150CBC(v68, v112, v113);
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
      v71 = v94;
      _s15PreviewShellKit21CanvasContentProviderPAAyt12HostedOutputRtzrlE6encode06hostedH020PreviewsFoundationOS12PropertyListVyt_tFZ_0();
      sub_25F1786DC();
      (*(v96 + 8))(v71, v97);
      goto LABEL_19;
    case 4:
      v67 = v98;
      v68 = v95;
      v66 = v99;
      (*(v98 + 32))(v95, v63, v99);
      sub_25F156B84();
      goto LABEL_8;
    case 5:
      v67 = v101;
      v68 = v100;
      v66 = v102;
      (*(v101 + 32))(v100, v63, v102);
      sub_25F1515CC(v68, v112, v113);
      goto LABEL_8;
    case 6:
      v67 = v104;
      v68 = v103;
      v66 = v105;
      (*(v104 + 32))(v103, v63, v105);
      sub_25F151F9C(v68, v112, v113);
      goto LABEL_8;
    case 7:
      v72 = *(v63 + 16);
      v131 = *v63;
      v132 = v72;
      v133 = *(v63 + 32);
      sub_25F151308(&v131, v112, v113);
      goto LABEL_19;
    case 8:
      v78 = *(v63 + 16);
      v131 = *v63;
      v132 = v78;
      v133 = *(v63 + 32);
      sub_25F151180(&v131, v112, v113);
      goto LABEL_19;
    case 9:
      v67 = v107;
      v68 = v106;
      v66 = v108;
      (*(v107 + 32))(v106, v63, v108);
      sub_25F1522AC(v68, v112, v113);
      goto LABEL_8;
    case 10:
      v67 = v110;
      v68 = v109;
      v66 = v111;
      (*(v110 + 32))(v109, v63, v111);
      sub_25F152678(v68, v112, v113);
      goto LABEL_8;
    case 11:
      (*(v118 + 32))(v117, v63, v119);
      sub_25F152CC8(v68, v112, v113);
LABEL_8:
      (*(v67 + 8))(v68, v66);
      goto LABEL_19;
    case 12:
      sub_25F1565EC();
LABEL_19:

      break;
    default:
      sub_25F14FC10(v112, v113);

      sub_25F1574D0(v130, MEMORY[0x277D40888]);
      break;
  }

  v79 = v123;
  v120(v123, v64, v62);
  v80 = v128;
  (*(v6 + 16))(v128, v126, v5);
  v81 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v82 = (v122 + *(v6 + 80) + v81) & ~*(v6 + 80);
  v83 = swift_allocObject();
  (*(v69 + 32))(v83 + v81, v79, v62);
  (*(v6 + 32))(v83 + v82, v80, v5);
  sub_25F1785DC();
}

uint64_t sub_25F14D848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_25F176FDC();
  v5[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v12 = sub_25F17769C();
  v5[29] = v12;
  v13 = *(v12 - 8);
  v5[30] = v13;
  v14 = *(v13 + 64) + 15;
  v5[31] = swift_task_alloc();
  v15 = sub_25F1787BC();
  v5[32] = v15;
  v16 = *(v15 - 8);
  v5[33] = v16;
  v17 = *(v16 + 64) + 15;
  v5[34] = swift_task_alloc();
  sub_25F17930C();
  v5[35] = sub_25F1792FC();
  v19 = sub_25F1792CC();
  v5[36] = v19;
  v5[37] = v18;

  return MEMORY[0x2822009F8](sub_25F14DA70, v19, v18);
}

uint64_t sub_25F14DA70()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);
  sub_25F1787CC();
  sub_25F1780CC();
  v9 = (*(v2 + 8))(v1, v3);
  MEMORY[0x25F8D34C0](v9);
  v10 = (*(v6 + 112))(v4, v7, v6);
  v11 = *(v0 + 224);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  v12 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);
  sub_25F17861C();
  v13 = type metadata accessor for Process(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    v14 = *(v0 + 280);
    v15 = *(v0 + 224);
    v16 = *(v0 + 144);

    sub_25F0B7E94(v15, &qword_27FD48188, &qword_25F182550);
    type metadata accessor for AgentLocatingError(0);
    sub_25F155438(&qword_27FD48E00, type metadata accessor for AgentLocatingError);
    v17 = swift_allocError();
    MEMORY[0x25F8D34C0]();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v18 = *(v0 + 152);
    sub_25F17761C();

    v19 = *(v0 + 272);
    v20 = *(v0 + 248);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v23 = *(v0 + 192);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 224);
    v28 = *(v0 + 168);
    v27 = *(v0 + 176);
    v29 = *(v0 + 160);
    v30 = v26 + *(v13 + 24);
    v31 = *(v30 + 32);
    v32 = *(v30 + 16);
    *(v0 + 368) = *v30;
    *(v0 + 384) = v32;
    *(v0 + 400) = v31;
    v33 = sub_25F177CDC();

    sub_25F1574D0(v26, type metadata accessor for Process);
    (*(v28 + 16))(v29, v28);
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    *(v0 + 304) = v35;
    *(v0 + 312) = v34;

    sub_25F0E263C(v0 + 16);
    v36 = swift_task_alloc();
    *(v0 + 320) = v36;
    *v36 = v0;
    v36[1] = sub_25F14DE70;

    return sub_25F0EFE30(v33, v35, v34);
  }
}

uint64_t sub_25F14DE70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_25F14E1DC;
  }

  else
  {
    v5 = sub_25F14DF84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F14DF84()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F155438(&qword_27FD47538, MEMORY[0x277D40DF8]);
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_25F14E09C;
  v5 = v0[41];
  v6 = v0[27];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F14E09C()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v11 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_25F14E3C8;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[41];
    v9 = v2[38];
    v8 = v2[39];

    v5 = v2[36];
    v6 = v2[37];
    v4 = sub_25F14E250;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25F14E1DC()
{
  v0[45] = v0[42];
  v1 = v0[38];
  v2 = v0[39];

  v3 = v0[36];
  v4 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14E444, v3, v4);
}

uint64_t sub_25F14E250()
{
  v1 = v0[35];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[18];
  v8 = v0[19];

  sub_25F17754C();
  swift_storeEnumTagMultiPayload();
  sub_25F15747C(&qword_27FD48EE0, &qword_27FD47530, &unk_25F17F570);
  sub_25F155438(&qword_27FD48EE8, MEMORY[0x277D40DD8]);
  sub_25F177A5C();
  sub_25F1574D0(v5, MEMORY[0x277D40DD8]);
  (*(v3 + 8))(v2, v4);
  v9 = v0[34];
  v10 = v0[31];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[24];

  v14 = v0[1];

  return v14();
}

uint64_t sub_25F14E3C8()
{
  v1 = v0[41];

  v0[45] = v0[44];
  v2 = v0[38];
  v3 = v0[39];

  v4 = v0[36];
  v5 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14E444, v4, v5);
}

uint64_t sub_25F14E444()
{
  v1 = v0[35];

  v2 = v0[45];
  v3 = v0[19];
  sub_25F17761C();

  v4 = v0[34];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F14E52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_25F176FDC();
  v5[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48188, &qword_25F182550) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v12 = sub_25F17769C();
  v5[29] = v12;
  v13 = *(v12 - 8);
  v5[30] = v13;
  v14 = *(v13 + 64) + 15;
  v5[31] = swift_task_alloc();
  v15 = sub_25F1787BC();
  v5[32] = v15;
  v16 = *(v15 - 8);
  v5[33] = v16;
  v17 = *(v16 + 64) + 15;
  v5[34] = swift_task_alloc();
  sub_25F17930C();
  v5[35] = sub_25F1792FC();
  v19 = sub_25F1792CC();
  v5[36] = v19;
  v5[37] = v18;

  return MEMORY[0x2822009F8](sub_25F14E754, v19, v18);
}

uint64_t sub_25F14E754()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);
  sub_25F1787CC();
  sub_25F1780CC();
  v9 = (*(v2 + 8))(v1, v3);
  MEMORY[0x25F8D3B30](v9);
  v10 = (*(v6 + 112))(v4, v7, v6);
  v11 = *(v0 + 224);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  v12 = *(v10 + OBJC_IVAR____TtC15PreviewShellKit5Agent_processFuture);
  sub_25F17861C();
  v13 = type metadata accessor for Process(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    v14 = *(v0 + 280);
    v15 = *(v0 + 224);
    v16 = *(v0 + 144);

    sub_25F0B7E94(v15, &qword_27FD48188, &qword_25F182550);
    type metadata accessor for AgentLocatingError(0);
    sub_25F155438(&qword_27FD48E00, type metadata accessor for AgentLocatingError);
    v17 = swift_allocError();
    MEMORY[0x25F8D3B30]();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v18 = *(v0 + 152);
    sub_25F17761C();

    v19 = *(v0 + 272);
    v20 = *(v0 + 248);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v23 = *(v0 + 192);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 224);
    v28 = *(v0 + 168);
    v27 = *(v0 + 176);
    v29 = *(v0 + 160);
    v30 = v26 + *(v13 + 24);
    v31 = *(v30 + 32);
    v32 = *(v30 + 16);
    *(v0 + 368) = *v30;
    *(v0 + 384) = v32;
    *(v0 + 400) = v31;
    v33 = sub_25F177CDC();

    sub_25F1574D0(v26, type metadata accessor for Process);
    (*(v28 + 16))(v29, v28);
    v35 = *(v0 + 48);
    v34 = *(v0 + 56);
    *(v0 + 304) = v35;
    *(v0 + 312) = v34;

    sub_25F0E263C(v0 + 16);
    v36 = swift_task_alloc();
    *(v0 + 320) = v36;
    *v36 = v0;
    v36[1] = sub_25F14EB54;

    return sub_25F0EFE30(v33, v35, v34);
  }
}

uint64_t sub_25F14EB54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v7 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v5 = sub_25F14EEC0;
  }

  else
  {
    v5 = sub_25F14EC68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F14EC68()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F155438(&qword_27FD47538, MEMORY[0x277D40DF8]);
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_25F14ED80;
  v5 = v0[41];
  v6 = v0[27];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F14ED80()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v11 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_25F14F0AC;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[41];
    v9 = v2[38];
    v8 = v2[39];

    v5 = v2[36];
    v6 = v2[37];
    v4 = sub_25F14EF34;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_25F14EEC0()
{
  v0[45] = v0[42];
  v1 = v0[38];
  v2 = v0[39];

  v3 = v0[36];
  v4 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14F128, v3, v4);
}

uint64_t sub_25F14EF34()
{
  v1 = v0[35];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[18];
  v8 = v0[19];

  sub_25F17754C();
  swift_storeEnumTagMultiPayload();
  sub_25F15747C(&qword_27FD48EE0, &qword_27FD47530, &unk_25F17F570);
  sub_25F155438(&qword_27FD48EE8, MEMORY[0x277D40DD8]);
  sub_25F177A5C();
  sub_25F1574D0(v5, MEMORY[0x277D40DD8]);
  (*(v3 + 8))(v2, v4);
  v9 = v0[34];
  v10 = v0[31];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[24];

  v14 = v0[1];

  return v14();
}

uint64_t sub_25F14F0AC()
{
  v1 = v0[41];

  v0[45] = v0[44];
  v2 = v0[38];
  v3 = v0[39];

  v4 = v0[36];
  v5 = v0[37];

  return MEMORY[0x2822009F8](sub_25F14F128, v4, v5);
}

uint64_t sub_25F14F128()
{
  v1 = v0[35];

  v2 = v0[45];
  v3 = v0[19];
  sub_25F17761C();

  v4 = v0[34];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[24];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F14F210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_25F17764C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = sub_25F1775FC();
  v7[9] = v11;
  v12 = *(v11 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47390, &qword_25F17BD68);
  v7[12] = v14;
  v15 = *(v14 - 8);
  v7[13] = v15;
  v16 = *(v15 + 64) + 15;
  v7[14] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474D8, "Bk") - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474E0, &qword_25F17BFA0);
  v7[16] = v18;
  v19 = *(v18 - 8);
  v7[17] = v19;
  v20 = *(v19 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = sub_25F17930C();
  v7[20] = sub_25F1792FC();
  v22 = sub_25F1792CC();
  v7[21] = v22;
  v7[22] = v21;

  return MEMORY[0x2822009F8](sub_25F14F470, v22, v21);
}

uint64_t sub_25F14F470()
{
  v1 = v0[18];
  v2 = v0[2];
  v3 = *(type metadata accessor for ServerFarm.HostMessages() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  sub_25F17935C();
  v4 = v0[19];
  v5 = sub_25F1792FC();
  v0[23] = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_25F14F564;
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v9, v5, v11, v10);
}

uint64_t sub_25F14F564()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_25F14F6A8, v5, v4);
}

uint64_t sub_25F14F6A8()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = v0[20];
    v3 = v0[14];
    v4 = v0[11];
    v5 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[14];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v12 = v0[7];
    v24 = v0[6];
    v25 = v0[9];
    v13 = v0[4];
    v23 = v0[5];
    v14 = v0[3];
    sub_25F0B7D50(v1, v8, &qword_27FD47390, &qword_25F17BD68);
    sub_25F17705C();
    sub_25F17704C();
    sub_25F14C720(v9, v11, v13, v23);
    (*(v12 + 8))(v11, v24);
    (*(v10 + 8))(v9, v25);
    sub_25F0B7E94(v8, &qword_27FD47390, &qword_25F17BD68);
    v15 = v0[19];
    v16 = sub_25F1792FC();
    v0[23] = v16;
    v17 = *(MEMORY[0x277D85798] + 4);
    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v18[1] = sub_25F14F564;
    v19 = v0[18];
    v20 = v0[15];
    v21 = v0[16];
    v22 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v20, v16, v22, v21);
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for ServerFarm.HostMessages() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = v0 + v4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = v2[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_25F14FAB4(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for ServerFarm.HostMessages() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0BF3E4;

  return sub_25F14F210(a1, v10, v11, v1 + v8, v1 + v9, v6, v5);
}

uint64_t sub_25F14FC10(uint64_t a1, uint64_t a2)
{
  v16 = sub_25F177F8C();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17758C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  (*(a2 + 80))(a1, a2);
  sub_25F155438(&qword_27FD48EA0, MEMORY[0x277D40830]);
  sub_25F1784FC();
  (*(v9 + 8))(v12, v8);
  v13 = sub_25F1786DC();
  (*(v4 + 8))(v7, v16);
  return v13;
}

uint64_t sub_25F14FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v147 = a4;
  v146 = a3;
  v6 = sub_25F177FFC();
  v149 = *(v6 - 8);
  v150 = v6;
  v7 = *(v149 + 64);
  MEMORY[0x28223BE20](v6);
  v148 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_25F176E0C();
  v136 = *(v137 - 8);
  v9 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v134 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_25F176E6C();
  v133 = *(v135 - 8);
  v11 = *(v133 + 64);
  MEMORY[0x28223BE20](v135);
  v132 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F177A3C();
  v152 = *(v13 - 8);
  v153 = v13;
  v14 = *(v152 + 64);
  MEMORY[0x28223BE20](v13);
  v151 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_25F17769C();
  v144 = *(v128 - 8);
  v16 = *(v144 + 64);
  MEMORY[0x28223BE20](v128);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_25F1771BC();
  v19 = *(*(v130 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v130);
  v143 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v129 = &v124 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v124 - v24;
  v26 = sub_25F17741C();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v157 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v124 - v31;
  v141 = sub_25F17888C();
  v140 = *(v141 - 8);
  v33 = *(v140 + 64);
  v34 = MEMORY[0x28223BE20](v141);
  v131 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v124 - v36;
  sub_25F17884C();
  v38 = v27[2];
  v142 = a1;
  v139 = v38;
  v38(v32, a1, v26);
  v155 = a2;
  v138 = v25;
  sub_25F1551B0(a2, v25, MEMORY[0x277D406A0]);
  v39 = sub_25F17887C();
  v40 = sub_25F17955C();
  v41 = os_log_type_enabled(v39, v40);
  v154 = v26;
  v145 = v27;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v158 = v127;
    *v42 = 136315394;
    v126 = v40;
    sub_25F1773CC();
    sub_25F155438(&qword_27FD48DE8, MEMORY[0x277D408B8]);
    v43 = v128;
    v44 = sub_25F17980C();
    v125 = v39;
    v46 = v45;
    (*(v144 + 8))(v18, v43);
    v144 = v27[1];
    (v144)(v32, v154);
    v47 = sub_25F0BECF0(v44, v46, &v158);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    v48 = v138;
    sub_25F1551B0(v138, v129, MEMORY[0x277D406A0]);
    v49 = sub_25F1790BC();
    v51 = v50;
    sub_25F1574D0(v48, MEMORY[0x277D406A0]);
    v52 = sub_25F0BECF0(v49, v51, &v158);

    *(v42 + 14) = v52;
    v53 = v125;
    _os_log_impl(&dword_25F0B3000, v125, v126, "Preparing to launch %s, device: %{public}s", v42, 0x16u);
    v54 = v127;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v54, -1, -1);
    v55 = v42;
    v26 = v154;
    MEMORY[0x25F8D6230](v55, -1, -1);
  }

  else
  {

    sub_25F1574D0(v138, MEMORY[0x277D406A0]);
    v144 = v27[1];
    (v144)(v32, v26);
  }

  v56 = *(v140 + 8);
  v57 = v141;
  v56(v37, v141);
  v139(v157, v142, v26);
  if (sub_25F1785AC())
  {
    v58 = v131;
    sub_25F17884C();
    v59 = sub_25F17887C();
    v60 = sub_25F17955C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_25F0B3000, v59, v60, "Propagating XTP env value to Agent", v61, 2u);
      MEMORY[0x25F8D6230](v61, -1, -1);
    }

    v56(v58, v57);
    v62 = sub_25F1784EC();
    v64 = v63;
    v65 = sub_25F17738C();
    v67 = v66;
    v68 = *v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v67;
    *v67 = 0x8000000000000000;
    sub_25F16F150(1702195828, 0xE400000000000000, v62, v64, isUniquelyReferenced_nonNull_native);

    *v67 = v160;
    v65(&v158, 0);
  }

  v70 = sub_25F17739C();
  if (*(v70 + 16) && (v71 = sub_25F0C8D24(0xD000000000000015, 0x800000025F187490), (v72 & 1) != 0))
  {
    v73 = (*(v70 + 56) + 16 * v71);
    v75 = *v73;
    v74 = v73[1];

    v158 = v75;
    v159 = v74;

    MEMORY[0x25F8D50D0](58, 0xE100000000000000);

    v76 = v158;
    v77 = v159;
  }

  else
  {

    v76 = 0;
    v77 = 0xE000000000000000;
  }

  v158 = v76;
  v159 = v77;

  MEMORY[0x25F8D50D0](0xD00000000000004FLL, 0x800000025F183FC0);

  v78 = v158;
  v79 = v159;
  v80 = sub_25F17738C();
  v82 = v81;
  v83 = *v81;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v82;
  *v82 = 0x8000000000000000;
  sub_25F16F150(v78, v79, 0xD000000000000015, 0x800000025F187490, v84);
  *v82 = v160;
  v85 = v157;
  v80(&v158, 0);
  if (sub_25F1773DC())
  {
    v86 = sub_25F17738C();
    v88 = v87;
    v89 = *v87;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v88;
    *v88 = 0x8000000000000000;
    sub_25F16F150(49, 0xE100000000000000, 0xD000000000000013, 0x800000025F1874B0, v90);
    *v88 = v160;
    v86(&v158, 0);
  }

  v91 = v143;
  sub_25F1551B0(v155, v143, MEMORY[0x277D406A0]);
  v92 = v152;
  v93 = v153;
  if ((*(v152 + 48))(v91, 1, v153) == 1)
  {
    sub_25F1574D0(v91, MEMORY[0x277D406A0]);
    v94 = v154;
    v95 = v85;
LABEL_18:
    v118 = v146;
    v119 = v147;
    (*(v147 + 96))(v95, v146, v147);
    (*(v119 + 32))(v95, v155, v118, v119);
    v120 = v148;
    sub_25F177FCC();
    sub_25F177F8C();
    v121 = sub_25F1785BC();

    (*(v149 + 8))(v120, v150);
    (v144)(v95, v94);
    return v121;
  }

  (*(v92 + 32))(v151, v91, v93);
  v96 = sub_25F177A2C();
  v97 = sub_25F17738C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v99;
  *v99 = 0x8000000000000000;
  v102 = v156;
  sub_25F1568BC(v96, sub_25F1565A4, 0, v101, &v160);
  v156 = v102;
  if (!v102)
  {

    v103 = *v99;
    *v99 = v160;

    v97(&v158, 0);
    v104 = v133;
    v105 = v132;
    v106 = v135;
    (*(v133 + 104))(v132, *MEMORY[0x277D40D18], v135);
    v107 = v136;
    v108 = v134;
    v109 = v137;
    (*(v136 + 104))(v134, *MEMORY[0x277D40F58], v137);
    v110 = sub_25F176E5C();
    v112 = v111;
    (*(v107 + 8))(v108, v109);
    (*(v104 + 8))(v105, v106);
    v113 = sub_25F17738C();
    v95 = v85;
    v115 = v114;
    v116 = *v114;
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v160 = *v115;
    *v115 = 0x8000000000000000;
    sub_25F16F150(v110, v112, 0xD000000000000025, 0x800000025F1874F0, v117);
    *v115 = v160;
    v113(&v158, 0);
    (*(v152 + 8))(v151, v153);
    v94 = v154;
    goto LABEL_18;
  }

  v123 = *v99;
  *v99 = v160;

  __break(1u);
  return result;
}

uint64_t sub_25F150CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v46 = a2;
  v4 = sub_25F177FFC();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F17769C();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F177B3C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F17888C();
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v21 = *(v13 + 16);
  v45 = a1;
  v21(v16, a1, v12);
  v22 = sub_25F17887C();
  v23 = sub_25F17951C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = v24;
    v39 = swift_slowAlloc();
    v50 = v39;
    *v24 = 136315138;
    v38 = v23;
    sub_25F177B2C();
    sub_25F155438(&qword_27FD48DE8, MEMORY[0x277D408B8]);
    v25 = v41;
    v26 = sub_25F17980C();
    v40 = v4;
    v28 = v27;
    (*(v42 + 8))(v11, v25);
    (*(v13 + 8))(v16, v12);
    v29 = sub_25F0BECF0(v26, v28, &v50);
    v4 = v40;

    v30 = v37;
    *(v37 + 1) = v29;
    v31 = v30;
    _os_log_impl(&dword_25F0B3000, v22, v38, "Preparing to relaunch %s", v30, 0xCu);
    v32 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x25F8D6230](v32, -1, -1);
    MEMORY[0x25F8D6230](v31, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  (*(v43 + 8))(v20, v44);
  (*(v47 + 40))(v45, v46);
  v33 = v48;
  sub_25F177FCC();
  sub_25F177F8C();
  v34 = sub_25F1785BC();

  (*(v49 + 8))(v33, v4);
  return v34;
}

uint64_t sub_25F151180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25F177FFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a1, a2, a3);
  if (!v3)
  {
    sub_25F177FCC();
    sub_25F177F8C();
    v4 = sub_25F1785BC();

    (*(v9 + 8))(v12, v8);
  }

  return v4;
}

char *sub_25F151308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v28 = a1;
  v3 = sub_25F177FFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17888C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v13 = sub_25F17887C();
  v14 = sub_25F17951C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v7;
    v16 = v4;
    v17 = v3;
    v18 = v15;
    *v15 = 67240192;
    *(v15 + 1) = sub_25F177CDC();
    _os_log_impl(&dword_25F0B3000, v13, v14, "Preparing to stop %{public}d", v18, 8u);
    v19 = v18;
    v3 = v17;
    v4 = v16;
    v7 = v24;
    MEMORY[0x25F8D6230](v19, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v20 = sub_25F177CDC();
  v21 = v26;
  (*(v27 + 56))(v20, v25);
  if (!v21)
  {
    sub_25F177FCC();
    sub_25F177F8C();
    v12 = sub_25F1785BC();

    (*(v4 + 8))(v7, v3);
  }

  return v12;
}

uint64_t sub_25F1515CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v114 = a3;
  v115 = a2;
  v98 = *(a2 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](a1);
  v96 = v5;
  v97 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F177FFC();
  v99 = *(v6 - 8);
  v100 = v6;
  v7 = *(v99 + 64);
  MEMORY[0x28223BE20](v6);
  v102 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48D08, &unk_25F183080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v83 - v11;
  v95 = sub_25F17776C();
  v93 = *(v95 - 8);
  v12 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD480F8, &qword_25F17F060);
  v14 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v83 - v15;
  v16 = sub_25F1776AC();
  v104 = *(v16 - 8);
  v105 = v16;
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v16);
  v103 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F17788C();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v101 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v83 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v83 - v28;
  v90 = v30;
  MEMORY[0x28223BE20](v27);
  v32 = &v83 - v31;
  v33 = sub_25F17888C();
  v109 = *(v33 - 8);
  v110 = v33;
  v34 = *(v109 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v37 = v20[2];
  v37(v32, a1, v19);
  v37(v29, a1, v19);
  v113 = a1;
  v89 = v20 + 2;
  v88 = v37;
  v37(v26, a1, v19);
  v108 = v36;
  v38 = sub_25F17887C();
  v39 = sub_25F17951C();
  v40 = os_log_type_enabled(v38, v39);
  v92 = v20;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v116 = v87;
    *v41 = 67240706;
    v42 = sub_25F17787C();
    v84 = v26;
    v43 = v20[1];
    v43(v32, v19);
    *(v41 + 4) = v42;
    *(v41 + 8) = 2082;
    v86 = v39;
    v44 = v103;
    sub_25F17785C();
    sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0]);
    v85 = v38;
    v45 = v105;
    v46 = sub_25F17980C();
    v48 = v47;
    (*(v104 + 8))(v44, v45);
    v43(v29, v19);
    v49 = sub_25F0BECF0(v46, v48, &v116);

    *(v41 + 10) = v49;
    *(v41 + 18) = 2082;
    v50 = v106;
    v51 = v84;
    sub_25F17782C();
    v52 = sub_25F1795FC();
    v54 = v53;
    sub_25F0B7E94(v50, &qword_27FD480F8, &qword_25F17F060);
    v43(v51, v19);
    v55 = sub_25F0BECF0(v52, v54, &v116);

    *(v41 + 20) = v55;
    v56 = v85;
    _os_log_impl(&dword_25F0B3000, v85, v86, "Handling update: pid=%{public}d, category=%{public}s, seed = %{public}s", v41, 0x1Cu);
    v57 = v87;
    swift_arrayDestroy();
    MEMORY[0x25F8D6230](v57, -1, -1);
    v58 = v41;
    v59 = v114;
    MEMORY[0x25F8D6230](v58, -1, -1);

    (*(v109 + 8))(v108, v110);
    v60 = v19;
  }

  else
  {
    v61 = v20[1];
    v61(v32, v19);

    v61(v26, v19);
    v61(v29, v19);
    (*(v109 + 8))(v108, v110);
    v60 = v19;
    v59 = v114;
  }

  v62 = v113;
  v63 = sub_25F17787C();
  v64 = v111;
  v65 = v112;
  v66 = (*(v59 + 120))(v63, v115, v59);
  if (!v64)
  {
    v67 = v66;
    v68 = (*(v59 + 48))(v62, v115, v59);
    v111 = 0;
    v19 = v68;
    v70 = v91;
    sub_25F17786C();
    v71 = v94;
    sub_25F17783C();
    v110 = v67;
    sub_25F146224(v19, v70, v71);
    sub_25F0B7E94(v71, &qword_27FD48D08, &unk_25F183080);
    (*(v93 + 8))(v70, v95);
    sub_25F177FDC();
    v72 = v60;
    v83 = v60;
    v73 = v97;
    v74 = v98;
    v75 = v115;
    (*(v98 + 16))(v97, v65, v115);
    v88(v101, v62, v72);
    v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v77 = (v96 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = v92;
    v79 = (*(v92 + 80) + v77 + 8) & ~*(v92 + 80);
    v80 = swift_allocObject();
    v81 = v114;
    *(v80 + 16) = v75;
    *(v80 + 24) = v81;
    (*(v74 + 32))(v80 + v76, v73, v75);
    *(v80 + v77) = v110;
    (v78[4])(v80 + v79, v101, v83);

    v82 = v102;
    sub_25F1785FC();

    (*(v99 + 8))(v82, v100);
  }

  return v19;
}

uint64_t sub_25F151F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a3;
  v25 = a1;
  v26 = a2;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F1778CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v15 = sub_25F17932C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v10, v25, v7);
  v16 = v4;
  v17 = v26;
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v26);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = (v9 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  (*(v8 + 32))(v20 + v18, v10, v7);
  (*(v5 + 32))(v20 + v19, v24, v17);
  return sub_25F17870C();
}

uint64_t sub_25F1522AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = a2;
  v5 = sub_25F177F8C();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F17724C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F17888C();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v17 = *(v9 + 16);
  v37 = a1;
  v17(v12, a1, v8);
  v18 = sub_25F17887C();
  v19 = sub_25F17951C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v5;
    v21 = v20;
    v32 = swift_slowAlloc();
    v42 = v32;
    *v21 = 136446210;
    v22 = sub_25F17723C();
    v34 = v3;
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    v25 = sub_25F0BECF0(v22, v24, &v42);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_25F0B3000, v18, v19, "Purging %{public}s", v21, 0xCu);
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x25F8D6230](v26, -1, -1);
    v27 = v21;
    v5 = v33;
    MEMORY[0x25F8D6230](v27, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v35 + 8))(v16, v36);
  (*(v39 + 72))(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v28 = v40;
  _s15PreviewShellKit21CanvasContentProviderPAAyt12HostedOutputRtzrlE6encode06hostedH020PreviewsFoundationOS12PropertyListVyt_tFZ_0();
  v29 = sub_25F1786DC();
  (*(v41 + 8))(v28, v5);
  return v29;
}

uint64_t sub_25F152678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v5 = sub_25F177F8C();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F177A1C();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ContentKey();
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v61 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F1776AC();
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F177C7C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25F17888C();
  v53 = *(v23 - 8);
  v54 = v23;
  v24 = *(v53 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v27 = *(v19 + 16);
  v56 = a1;
  v27(v22, a1, v18);
  v28 = sub_25F17887C();
  v29 = sub_25F17951C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v47 = v30;
    v49 = swift_slowAlloc();
    v65 = v49;
    *v30 = 136446210;
    v48 = v29;
    sub_25F177C5C();
    sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0]);
    v31 = v51;
    v32 = sub_25F17980C();
    v50 = a3;
    v34 = v33;
    (*(v52 + 8))(v17, v31);
    (*(v19 + 8))(v22, v18);
    v35 = sub_25F0BECF0(v32, v34, &v65);
    a3 = v50;

    v36 = v47;
    *(v47 + 1) = v35;
    v37 = v36;
    _os_log_impl(&dword_25F0B3000, v28, v48, "Providing variants for content category %{public}s", v36, 0xCu);
    v38 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x25F8D6230](v38, -1, -1);
    MEMORY[0x25F8D6230](v37, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
  }

  (*(v53 + 8))(v26, v54);
  v39 = v61;
  sub_25F177C5C();
  v40 = v39 + *(v55 + 20);
  sub_25F177C6C();
  (*(a3 + 8))(&v65, v57, a3);
  ContentProviderRegistry.variantGroups(for:)(v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v41 = v58;
  sub_25F177A0C();
  sub_25F155438(&qword_27FD48EC0, MEMORY[0x277D40B68]);
  v42 = v62;
  v43 = v60;
  sub_25F1784FC();
  (*(v59 + 8))(v41, v43);
  v44 = sub_25F1786DC();
  (*(v63 + 8))(v42, v64);
  sub_25F1574D0(v39, type metadata accessor for ContentKey);
  return v44;
}

uint64_t sub_25F152CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v54 = a2;
  v4 = sub_25F177F8C();
  v62 = *(v4 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F1779FC();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47110, &qword_25F17B780);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v55 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v47 - v14;
  v15 = sub_25F1776AC();
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15);
  v63 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F177C4C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25F17888C();
  v53 = *(v23 - 8);
  v24 = *(v53 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  (*(v19 + 16))(v22, a1, v18);
  v27 = sub_25F17887C();
  v28 = sub_25F17951C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = v4;
    v30 = v29;
    v47 = v29;
    v49 = swift_slowAlloc();
    v66 = v49;
    *v30 = 136446210;
    v50 = v23;
    v31 = v63;
    v48 = v28;
    sub_25F177C2C();
    sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0]);
    v32 = v65;
    v33 = sub_25F17980C();
    v51 = a1;
    v35 = v34;
    (*(v64 + 8))(v31, v32);
    (*(v19 + 8))(v22, v18);
    v36 = sub_25F0BECF0(v33, v35, &v66);

    v37 = v47;
    *(v47 + 4) = v36;
    _os_log_impl(&dword_25F0B3000, v27, v48, "Providing content override for %{public}s)", v37, 0xCu);
    v38 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x25F8D6230](v38, -1, -1);
    v4 = v52;
    MEMORY[0x25F8D6230](v37, -1, -1);

    (*(v53 + 8))(v26, v50);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
    (*(v53 + 8))(v26, v23);
  }

  (*(v56 + 8))(&v66, v54);
  v39 = v63;
  sub_25F177C2C();
  v40 = sub_25F177C3C();
  MEMORY[0x28223BE20](v40);
  v41 = v58;
  sub_25F0C7E84(sub_25F0C9EF8, v40, v58);

  (*(v64 + 8))(v39, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  sub_25F0B7E2C(v41, v55, &qword_27FD47110, &qword_25F17B780);
  v42 = v57;
  sub_25F1779EC();
  sub_25F155438(&qword_27FD48ED8, MEMORY[0x277D40B58]);
  v44 = v60;
  v43 = v61;
  sub_25F1784FC();
  (*(v59 + 8))(v42, v44);
  v45 = sub_25F1786DC();
  (*(v62 + 8))(v43, v4);
  sub_25F0B7E94(v41, &qword_27FD47110, &qword_25F17B780);
  return v45;
}

uint64_t sub_25F1533D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EC8, &qword_25F1830B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v79 - v7;
  v8 = sub_25F1775FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v81 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = sub_25F17888C();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v82 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v79 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = &v79 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48ED0, &qword_25F1830B8);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v79 - v30);
  v32 = *(v28 + 16);
  v86 = a1;
  v33 = a1;
  v35 = v34;
  v32(&v79 - v30, v33, v34);
  v36 = (*(v28 + 88))(v31, v35);
  if (v36 == *MEMORY[0x277D40498])
  {
    sub_25F17884C();
    (*(v9 + 16))(v17, a2, v8);
    v37 = sub_25F17887C();
    v38 = sub_25F17955C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v81 = v39;
      v82 = swift_slowAlloc();
      v88 = v82;
      *v39 = 136446210;
      sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890]);
      v40 = sub_25F17980C();
      v41 = v8;
      v42 = v35;
      v44 = v43;
      (*(v9 + 8))(v17, v41);
      v45 = sub_25F0BECF0(v40, v44, &v88);
      v35 = v42;

      v46 = v81;
      *(v81 + 4) = v45;
      v47 = v46;
      _os_log_impl(&dword_25F0B3000, v37, v38, "PreviewShellService sending reply for %{public}s: Success", v46, 0xCu);
      v48 = v82;
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x25F8D6230](v48, -1, -1);
      MEMORY[0x25F8D6230](v47, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v17, v8);
    }

    (*(v83 + 8))(v26, v84);
LABEL_9:
    (*(v28 + 8))(v31, v35);
    goto LABEL_14;
  }

  v49 = v9;
  if (v36 != *MEMORY[0x277D40488])
  {
    if (v36 == *MEMORY[0x277D40490])
    {
      v67 = v82;
      sub_25F17884C();
      v68 = v81;
      (*(v9 + 16))(v81, a2, v8);
      v69 = sub_25F17887C();
      v70 = sub_25F17955C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v88 = v79;
        *v71 = 136446210;
        sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890]);
        v72 = sub_25F17980C();
        v80 = v35;
        v74 = v73;
        (*(v9 + 8))(v68, v8);
        v75 = sub_25F0BECF0(v72, v74, &v88);
        v35 = v80;

        *(v71 + 4) = v75;
        _os_log_impl(&dword_25F0B3000, v69, v70, "PreviewShellService sending reply for %{public}s: Cancelled", v71, 0xCu);
        v76 = v79;
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x25F8D6230](v76, -1, -1);
        MEMORY[0x25F8D6230](v71, -1, -1);

        (*(v83 + 8))(v82, v84);
      }

      else
      {

        (*(v9 + 8))(v68, v8);
        (*(v83 + 8))(v67, v84);
      }
    }

    goto LABEL_9;
  }

  (*(v28 + 96))(v31, v35);
  v50 = *v31;
  sub_25F17884C();
  v51 = v49;
  v52 = a2;
  v53 = v8;
  (*(v49 + 16))(v15, v52, v8);
  v54 = v50;
  v55 = sub_25F17887C();
  v56 = sub_25F17955C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v82 = v24;
    v58 = v57;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v88 = v81;
    *v58 = 136446466;
    sub_25F155438(&qword_27FD48E90, MEMORY[0x277D40890]);
    v59 = sub_25F17980C();
    v61 = v60;
    (*(v51 + 8))(v15, v53);
    v62 = sub_25F0BECF0(v59, v61, &v88);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2114;
    v63 = v50;
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 14) = v64;
    v65 = v80;
    *v80 = v64;
    _os_log_impl(&dword_25F0B3000, v55, v56, "PreviewShellService sending reply for %{public}s: Failure - %{public}@", v58, 0x16u);
    sub_25F0B7E94(v65, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v65, -1, -1);
    v66 = v81;
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    MEMORY[0x25F8D6230](v66, -1, -1);
    MEMORY[0x25F8D6230](v58, -1, -1);

    (*(v83 + 8))(v82, v84);
  }

  else
  {

    (*(v51 + 8))(v15, v53);
    (*(v83 + 8))(v24, v84);
  }

LABEL_14:
  v77 = v87;
  sub_25F17810C();
  sub_25F177F8C();
  sub_25F17762C();
  return sub_25F0B7E94(v77, &qword_27FD48EC8, &qword_25F1830B0);
}

uint64_t sub_25F153D08(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v2 = sub_25F177EAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EF0, &qword_25F1830E8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EF8, &qword_25F1830F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v22 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48F00, &qword_25F1830F8);
  sub_25F17810C();
  sub_25F0B7E2C(v16, v14, &qword_27FD48EF0, &qword_25F1830E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25F0B7E94(v16, &qword_27FD48EF0, &qword_25F1830E8);
    *v20 = *v14;
  }

  else
  {
    (*(v3 + 32))(v9, v14, v2);
    (*(v3 + 16))(v7, v9, v2);
    sub_25F17777C();
    (*(v3 + 8))(v9, v2);
    sub_25F0B7E94(v16, &qword_27FD48EF0, &qword_25F1830E8);
  }

  swift_storeEnumTagMultiPayload();
  sub_25F17778C();
  sub_25F155438(&qword_27FD48F08, MEMORY[0x277D40A30]);
  sub_25F17762C();
  return sub_25F0B7E94(v20, &qword_27FD48EF8, &qword_25F1830F0);
}

uint64_t sub_25F154054(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32);
  sub_25F156D4C();
  return sub_25F1784FC();
}

uint64_t sub_25F1540AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = *(*(sub_25F177DDC() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v7 = sub_25F17776C();
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = type metadata accessor for PreviewNonUIAgentProxy();
  v5[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = type metadata accessor for PreviewAgentConnector();
  v5[15] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v14 = sub_25F17757C();
  v5[17] = v14;
  v15 = *(v14 - 8);
  v5[18] = v15;
  v16 = *(v15 + 64) + 15;
  v5[19] = swift_task_alloc();
  v17 = sub_25F1778CC();
  v5[20] = v17;
  v18 = *(v17 - 8);
  v5[21] = v18;
  v19 = *(v18 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v20 = sub_25F17888C();
  v5[24] = v20;
  v21 = *(v20 - 8);
  v5[25] = v21;
  v22 = *(v21 + 64) + 15;
  v5[26] = swift_task_alloc();
  sub_25F17930C();
  v5[27] = sub_25F1792FC();
  v24 = sub_25F1792CC();
  v5[28] = v24;
  v5[29] = v23;

  return MEMORY[0x2822009F8](sub_25F154354, v24, v23);
}

uint64_t sub_25F154354()
{
  v42 = v0;
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[5];
  sub_25F17884C();
  v7 = *(v5 + 16);
  v7(v2, v6, v4);
  v7(v3, v6, v4);
  v8 = sub_25F17887C();
  v9 = sub_25F17951C();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[25];
  v12 = v0[26];
  v13 = v0[23];
  v14 = v0[24];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[20];
  if (v10)
  {
    v37 = v9;
    v40 = v0[25];
    v19 = v0[18];
    v18 = v0[19];
    v35 = v0[17];
    v39 = v0[24];
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v20 = 67240450;
    v38 = v12;
    v21 = sub_25F1778BC();
    v22 = *(v16 + 8);
    v22(v13, v17);
    *(v20 + 4) = v21;
    *(v20 + 8) = 2082;
    sub_25F17789C();
    sub_25F155438(&qword_27FD48BC8, MEMORY[0x277D40810]);
    v23 = sub_25F17980C();
    v25 = v24;
    (*(v19 + 8))(v18, v35);
    v22(v15, v17);
    v26 = sub_25F0BECF0(v23, v25, &v41);

    *(v20 + 10) = v26;
    _os_log_impl(&dword_25F0B3000, v8, v37, "Handling cancel update: pid=%{public}d, seed = %{public}s", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x25F8D6230](v36, -1, -1);
    MEMORY[0x25F8D6230](v20, -1, -1);

    (*(v40 + 8))(v38, v39);
  }

  else
  {
    v27 = *(v16 + 8);
    v27(v0[23], v0[20]);

    v27(v15, v17);
    (*(v11 + 8))(v12, v14);
  }

  v28 = v0[16];
  v30 = v0[7];
  v29 = v0[8];
  v31 = v0[5];
  v32 = v0[6];
  v33 = sub_25F1778BC();
  PreviewShellServiceProtocol.previewAgentConnector(for:)(v33, v30, v29, v28);

  return MEMORY[0x2822009F8](sub_25F154704, 0, 0);
}

uint64_t sub_25F154704()
{
  v1 = v0[16];
  v2 = v1 + *(v0[15] + 24);
  v3 = *(v2 + 7);
  v0[2] = *(v2 + 6);
  v0[3] = v3;
  v4 = *v1;

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_25F1547D8;
  v6 = v0[14];

  return SharedAgentServer<>.requestPreviewNonUIAgent(for:)(v6, v4);
}

uint64_t sub_25F1547D8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[2];
  v6 = v2[3];

  if (v0)
  {
    v7 = sub_25F154BBC;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = v2[28];
    v9 = v2[29];
    v7 = sub_25F154928;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_25F154928()
{
  v1 = v0[27];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[12];
  v15 = v0[14];
  v8 = v0[10];
  v13 = v0[9];
  v9 = v0[5];
  v16 = v0[4];
  v17 = v0[16];

  sub_25F1778AC();
  sub_25F17789C();
  v14 = *(v5 + 24);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48EB0, &unk_25F1830A0) + 48);
  (*(v6 + 16))(v13, v7, v8);
  (*(v2 + 16))(v13 + v10, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD485E8, &qword_25F180220);
  sub_25F15747C(&qword_27FD485F0, &qword_27FD485E8, &qword_25F180220);
  sub_25F155438(&qword_27FD48EB8, MEMORY[0x277D40EB8]);
  sub_25F177A4C();
  sub_25F1574D0(v13, MEMORY[0x277D40EB8]);
  (*(v2 + 8))(v3, v4);
  (*(v6 + 8))(v7, v8);
  _s15PreviewShellKit21CanvasContentProviderPAAyt12HostedOutputRtzrlE6encode06hostedH020PreviewsFoundationOS12PropertyListVyt_tFZ_0();
  sub_25F1574D0(v15, type metadata accessor for PreviewNonUIAgentProxy);
  sub_25F1574D0(v17, type metadata accessor for PreviewAgentConnector);

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F154BD4()
{
  v1 = v0[27];
  v2 = v0[16];

  sub_25F1574D0(v2, type metadata accessor for PreviewAgentConnector);
  v3 = v0[31];
  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

double PreviewShellServiceProtocol.previewAgentConnector(for:)@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = (*(a3 + 120))();
  if (!v4)
  {
    v20 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
    v11 = v9 + *(type metadata accessor for BatchIdentity(0) + 20);
    v12 = type metadata accessor for PreviewAgentConnector();
    v13 = v12[5];
    v14 = sub_25F17767C();
    (*(*(v14 - 8) + 16))(&a4[v13], v11 + v20, v14);

    (*(a3 + 16))(v22, a2, a3);
    (*(a3 + 24))(&v21, a2, a3);
    *a4 = a1;
    v15 = &a4[v12[6]];
    v16 = v22[3];
    *(v15 + 2) = v22[2];
    *(v15 + 3) = v16;
    v17 = v22[1];
    *v15 = v22[0];
    *(v15 + 1) = v17;
    v18 = v22[7];
    *(v15 + 6) = v22[6];
    *(v15 + 7) = v18;
    v19 = v22[5];
    *(v15 + 4) = v22[4];
    *(v15 + 5) = v19;
    result = *&v21;
    *&a4[v12[7]] = v21;
  }

  return result;
}

unint64_t AgentLocatingError.additionalInfo.getter()
{
  v1 = v0;
  v2 = sub_25F17769C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AgentLocatingError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F1551B0(v1, v10, type metadata accessor for AgentLocatingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v6, v10, v2);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_25F1796DC();

      v22 = 0xD000000000000023;
      v23 = 0x800000025F187230;
      sub_25F155438(&qword_27FD48DE8, MEMORY[0x277D408B8]);
      v16 = sub_25F17980C();
      MEMORY[0x25F8D50D0](v16);

      MEMORY[0x25F8D50D0](39, 0xE100000000000000);
      v17 = v22;
      (*(v3 + 8))(v6, v2);
      return v17;
    }

    v19 = *v10;
    v20 = v10[1];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD000000000000031, 0x800000025F1871F0);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v19 = *v10;
    v20 = v10[1];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_25F1796DC();

    v22 = 0xD000000000000021;
    v23 = 0x800000025F187260;
LABEL_8:
    MEMORY[0x25F8D50D0](v19, v20);

    v14 = 39;
    v15 = 0xE100000000000000;
    goto LABEL_9;
  }

  v12 = *v10;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_25F1796DC();

  v22 = 0xD000000000000014;
  v23 = 0x800000025F187290;
  v21[3] = v12;
  v13 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v13);

  v14 = 0xD000000000000015;
  v15 = 0x800000025F1872B0;
LABEL_9:
  MEMORY[0x25F8D50D0](v14, v15);
  return v22;
}

uint64_t sub_25F1551B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F15524C(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E78, type metadata accessor for AgentLocatingError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1552B8(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E78, type metadata accessor for AgentLocatingError);

  return MEMORY[0x2821A07F0](a1, v2);
}

unint64_t UnknownContentCategory.additionalInfo.getter()
{
  sub_25F1796DC();

  sub_25F1776AC();
  sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](39, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_25F155438(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F1554B0()
{
  sub_25F1796DC();

  sub_25F1776AC();
  sub_25F155438(&qword_27FD47118, MEMORY[0x277D408E0]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](39, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_25F155590(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E70, type metadata accessor for UnknownContentCategory);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F1555FC(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E70, type metadata accessor for UnknownContentCategory);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F155680@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

unint64_t UnknownProcessType.highValueTitle.getter()
{
  v1 = v0;
  v2 = sub_25F17722C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D406E0])
  {
    return 0xD000000000000032;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t UnknownProcessType.additionalInfo.getter()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000033, 0x800000025F187370);
  sub_25F17722C();
  sub_25F17976C();
  MEMORY[0x25F8D50D0](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_25F155B70()
{
  v1 = v0;
  v2 = sub_25F17722C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D406E0])
  {
    return 0xD000000000000032;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_25F155CBC()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000033, 0x800000025F187370);
  sub_25F17722C();
  sub_25F17976C();
  MEMORY[0x25F8D50D0](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25F155DA4(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E68, type metadata accessor for UnknownProcessType);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F155E10(uint64_t a1)
{
  v2 = sub_25F155438(&qword_27FD48E68, type metadata accessor for UnknownProcessType);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t dispatch thunk of PreviewShellServiceProtocol.performKill(payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t dispatch thunk of PreviewShellServiceProtocol.agent(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 112))();
}

{
  return (*(a3 + 120))();
}

uint64_t sub_25F156028()
{
  result = sub_25F17769C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25F156268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1562D8()
{
  v1 = sub_25F1775FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25F17764C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F156420(uint64_t a1)
{
  v3 = *(sub_25F1775FC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_25F17764C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_25F1533D4(a1, v1 + v4, v7);
}

uint64_t sub_25F15652C(uint64_t a1)
{
  v2 = sub_25F1576FC();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F156568(uint64_t a1)
{
  v2 = sub_25F1576FC();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F1565A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_25F1565EC()
{
  v0 = sub_25F177F8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F17888C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v10 = sub_25F17887C();
  v11 = sub_25F17951C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = v4;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_25F0B3000, v10, v11, "Received 'ping' message", v12, 2u);
    v4 = v20;
    MEMORY[0x25F8D6230](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = [objc_opt_self() processInfo];
  v15 = [v14 processIdentifier];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD48E80, &qword_25F183070);
  v18[1] = v15;
  memset(&v18[2], 0, 24);
  v19 = 1;
  sub_25F156D4C();
  sub_25F1784FC();
  v16 = sub_25F1786DC();
  (*(v1 + 8))(v4, v0);
  return v16;
}

uint64_t sub_25F1568BC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v48 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v50 = a5;
  v51 = v7;
  v49 = v11;
  while (v10)
  {
    v60 = a4;
    v19 = v12;
LABEL_14:
    v21 = (v19 << 10) | (16 * __clz(__rbit64(v10)));
    v22 = (*(a1 + 48) + v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(a1 + 56) + v21);
    v26 = *v25;
    v27 = v25[1];
    v59[0] = v23;
    v59[1] = v24;
    v59[2] = v26;
    v59[3] = v27;

    a2(&v55, v59);

    v29 = v55;
    v28 = v56;
    v30 = v58;
    v54 = v57;
    v31 = *a5;
    v33 = sub_25F0C8D24(v55, v56);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_25;
    }

    v37 = v32;
    if (v31[3] >= v36)
    {
      if ((v60 & 1) == 0)
      {
        sub_25F170BBC();
      }
    }

    else
    {
      sub_25F16CAE0(v36, v60 & 1);
      v38 = *a5;
      v39 = sub_25F0C8D24(v29, v28);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_27;
      }

      v33 = v39;
    }

    v10 &= v10 - 1;
    v41 = *a5;
    if (v37)
    {
      v13 = 16 * v33;
      v14 = (v41[7] + 16 * v33);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v41[7] + v13);
      v18 = v17[1];
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v41[(v33 >> 6) + 8] |= 1 << v33;
      v42 = (v41[6] + 16 * v33);
      *v42 = v29;
      v42[1] = v28;
      v43 = (v41[7] + 16 * v33);
      *v43 = v54;
      v43[1] = v30;
      v44 = v41[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_26;
      }

      v41[2] = v46;
    }

    a4 = 1;
    v12 = v19;
    a5 = v50;
    v7 = v51;
    v11 = v49;
  }

  v20 = v12;
  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v11)
    {
      sub_25F0C03C0();
    }

    v10 = *(v7 + 8 * v19);
    ++v20;
    if (v10)
    {
      v60 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_25F17985C();
  __break(1u);
  return result;
}

uint64_t sub_25F156B84()
{
  v0 = sub_25F17888C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17884C();
  v5 = sub_25F17887C();
  v6 = sub_25F17953C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25F0B3000, v5, v6, "Received unsupported 'ForwardPayload' style message from host.", v7, 2u);
    MEMORY[0x25F8D6230](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_25F156DA0();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_25F156CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F156D4C()
{
  result = qword_27FD48E98;
  if (!qword_27FD48E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48E98);
  }

  return result;
}

unint64_t sub_25F156DA0()
{
  result = qword_27FD48EA8;
  if (!qword_27FD48EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48EA8);
  }

  return result;
}

uint64_t sub_25F156DF4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_25F17788C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F156F48()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 64) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_25F17788C() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v1 + v4);
  v8 = OBJC_IVAR____TtC15PreviewShellKit5Agent_batchIdentity;
  v9 = v8 + *(type metadata accessor for BatchIdentity(0) + 20);
  (*(v3 + 88))(v7 + v9, v2, v3);
  return (*(v3 + 104))(v1 + v6, v7 + v9, v2, v3);
}

uint64_t sub_25F157084()
{
  v1 = *(v0 + 16);
  v2 = sub_25F1778CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F157188(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(sub_25F1778CC() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F0BF3E4;

  return sub_25F1540AC(a1, v1 + v8, v1 + v9, v5, v6);
}

uint64_t sub_25F1572D0(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v2 = sub_25F17764C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_25F176FCC();
  v5 = sub_25F176FBC();
  v6 = sub_25F17770C();
  v8 = v7;
  v10 = v9;
  sub_25F17771C();
  sub_25F176F9C();
  sub_25F157530(v6, v8, v10 & 1);

  (*(v3 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_25F1785DC();
}

uint64_t sub_25F15747C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F1574D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F157530(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25F157540()
{
  v1 = sub_25F17764C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F1575C8(uint64_t a1)
{
  v3 = *(sub_25F17764C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25F153D08(a1, v4);
}

unint64_t sub_25F157650()
{
  result = qword_27FD48F10;
  if (!qword_27FD48F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F10);
  }

  return result;
}

unint64_t sub_25F1576A8()
{
  result = qword_27FD48F18;
  if (!qword_27FD48F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F18);
  }

  return result;
}

unint64_t sub_25F1576FC()
{
  result = qword_27FD48F20;
  if (!qword_27FD48F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F20);
  }

  return result;
}

uint64_t PreviewSnapshot.makeRenderPayload()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F17775C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = *v1;
  v30 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = CGImageGetDataProvider(v11);
  if (v14 && (v15 = v14, v16 = CGDataProviderCopyData(v14), v15, v16))
  {
    if (CGImageGetAlphaInfo(v11) == kCGImageAlphaNoneSkipFirst)
    {
      AlphaInfo = kCGImageAlphaPremultipliedFirst;
    }

    else
    {
      AlphaInfo = CGImageGetAlphaInfo(v11);
    }

    v29 = a1;
    ByteOrderInfo = CGImageGetByteOrderInfo(v11);
    v18 = v16;
    v19 = MEMORY[0x25F8D2D50]();
    v26[6] = v20;
    v26[7] = v19;

    v26[5] = CGImageGetWidth(v11);
    v26[4] = CGImageGetHeight(v11);
    v26[3] = CGImageGetBytesPerRow(v11);
    v26[2] = CGImageGetBitsPerComponent(v11);
    v26[1] = CGImageGetBitsPerPixel(v11);
    v21 = CGImageGetColorSpace(v11);
    if (v21 && (v22 = v18, v23 = v21, v24 = CGColorSpaceCopyName(v21), v23, v18 = v22, v24))
    {
      sub_25F17908C();
    }

    else
    {
      v25 = *MEMORY[0x277CBF4B8];
      sub_25F17908C();
    }

    sub_25F17774C();
    (*(v4 + 16))(v8, v10, v3);

    sub_25F17751C();

    return (*(v4 + 8))(v10, v3);
  }

  else
  {
    sub_25F157A18();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_25F157A18()
{
  result = qword_27FD48F28;
  if (!qword_27FD48F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F28);
  }

  return result;
}

uint64_t PreviewSnapshot.init(image:selectableRegions:cornerRadius:scaleFactor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

uint64_t sub_25F157AB4(uint64_t a1)
{
  v2 = sub_25F157C88();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F157AF0(uint64_t a1)
{
  v2 = sub_25F157C88();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F157B2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F157B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F157BDC()
{
  result = qword_27FD48F30;
  if (!qword_27FD48F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F30);
  }

  return result;
}

unint64_t sub_25F157C34()
{
  result = qword_27FD48F38;
  if (!qword_27FD48F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD48F38);
  }

  return result;
}

unint64_t sub_25F157C88()
{
  result = qword_27FD48F40[0];
  if (!qword_27FD48F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD48F40);
  }

  return result;
}

void static CanvasControlConfiguration<A>.empty.getter(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = nullsub_1;
  a1[2] = 0;
  a1[3] = sub_25F157D78;
  a1[4] = 0;
  a1[5] = sub_25F157D84;
  a1[6] = 0;
}

double CanvasControlConfiguration.init(build:)@<D0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v6);
  v3 = v8;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_25F157D84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49258, &unk_25F1836B0);
  sub_25F16376C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_25F157DE0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = type metadata accessor for CanvasControl();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = v34 - v10;
  v12 = v11;
  MEMORY[0x28223BE20](v9);
  v14 = v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v15 = sub_25F177B1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v37 = v19;
  *(v19 + 16) = xmmword_25F17C9B0;
  v20 = *(v16 + 16);
  v42 = a1;
  v20(v19 + v18, a1, v15);
  v35 = *(v5 + 16);
  v35(v14, a1, v4);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v34[1] = v12;
  v22 = swift_allocObject();
  v36 = v22;
  v23 = v39;
  *(v22 + 16) = v39;
  v24 = *(v5 + 32);
  v24(v22 + v21, v14, v4);
  v25 = v38;
  v26 = v4;
  v35(v38, v42, v4);
  v27 = swift_allocObject();
  v28 = v23;
  *(v27 + 16) = v23;
  v24(v27 + v21, v25, v4);
  v29 = v40;
  v24(v40, v42, v26);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  result = (v24)(v30 + v21, v29, v26);
  v32 = v41;
  v33 = v36;
  *v41 = v37;
  v32[1] = sub_25F1633BC;
  v32[2] = v33;
  v32[3] = sub_25F163444;
  v32[4] = v27;
  v32[5] = sub_25F1636CC;
  v32[6] = v30;
  return result;
}

uint64_t sub_25F15811C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = a2 + *(type metadata accessor for CanvasControl() + 28);
    v5 = *v3;
    v4 = *(v3 + 8);
    v6 = *(sub_25F1774FC() - 8);
    return v5(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  }

  else
  {
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_25F15821C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  v4 = *(sub_25F1774FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25F17C9B0;
  v8 = a2 + *(type metadata accessor for CanvasControl() + 32);
  v9 = *(v8 + 8);
  (*v8)(a1);
  return v7;
}

uint64_t sub_25F15830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v7 = sub_25F1774FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25F1777DC())
  {
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v13 = sub_25F1777EC();
    v16[1] = v4;
    v14 = v13;
    sub_25F1777FC();
    v15 = type metadata accessor for CanvasControl();
    sub_25F113CAC(v14 & 1, v11, a3, a4, v17, v15);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_25F1584A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v59 = a5;
  v7 = type metadata accessor for CanvasControl();
  v67 = *(v7 - 8);
  v68 = v7;
  v69 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v53 = &v49 - v8;
  v56 = type metadata accessor for CanvasControl();
  v10 = *(v56 - 8);
  v62 = *(v10 + 64);
  MEMORY[0x28223BE20](v56);
  v12 = &v49 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v13 = sub_25F177B1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v58 = v17;
  *(v17 + 16) = xmmword_25F17BB70;
  v18 = v17 + v16;
  v19 = *(v14 + 16);
  v64 = a1;
  v19(v18, a1, v13);
  v63 = a2;
  v19(v18 + v15, a2, v13);
  v55 = *(v10 + 16);
  v20 = v12;
  v60 = v12;
  v21 = v12;
  v22 = v56;
  v55(v21, a1, v56);
  v23 = v67;
  v54 = *(v67 + 16);
  v54(v9, a2, v68);
  v24 = *(v10 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = *(v23 + 80);
  v49 = (v62 + v26 + v25) & ~v26;
  v61 = v25;
  v62 = v24 | v26;
  v27 = swift_allocObject();
  v28 = v65;
  v29 = v66;
  *(v27 + 16) = v65;
  *(v27 + 24) = v29;
  v51 = *(v10 + 32);
  v52 = v10 + 32;
  v30 = v27 + v25;
  v31 = v27;
  v57 = v27;
  v32 = v22;
  v51(v30, v20, v22);
  v50 = *(v23 + 32);
  v67 = v23 + 32;
  v33 = v49;
  v34 = v31 + v49;
  v35 = v53;
  v36 = v68;
  v50(v34, v53, v68);
  v37 = v60;
  v55(v60, v64, v32);
  v54(v35, v63, v36);
  v38 = swift_allocObject();
  *(v38 + 16) = v28;
  *(v38 + 24) = v29;
  v39 = v51;
  v51(v38 + v61, v37, v32);
  v40 = v35;
  v41 = v35;
  v42 = v68;
  v43 = v50;
  v50(v38 + v33, v40, v68);
  v39(v37, v64, v32);
  v43(v41, v63, v42);
  v44 = v43;
  v45 = swift_allocObject();
  v46 = v66;
  *(v45 + 16) = v65;
  *(v45 + 24) = v46;
  v39((v45 + v61), v60, v32);
  result = v44(v45 + v33, v41, v42);
  v48 = v59;
  *v59 = v58;
  v48[1] = sub_25F162CE4;
  v48[2] = v57;
  v48[3] = sub_25F162DE0;
  v48[4] = v38;
  v48[5] = sub_25F1632A4;
  v48[6] = v45;
  return result;
}

uint64_t sub_25F158958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 16) == 2)
  {
    v8 = a2 + *(type metadata accessor for CanvasControl() + 28);
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(sub_25F1774FC() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    result = v10(v12);
    if (!v4)
    {
      v14 = a3 + *(type metadata accessor for CanvasControl() + 28);
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = a4 + *(swift_getTupleTypeMetadata2() + 48);
      return v16(v12 + *(v11 + 72));
    }
  }

  else
  {
    swift_getTupleTypeMetadata2();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F158B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  v6 = *(sub_25F1774FC() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25F17BB70;
  v10 = a2 + *(type metadata accessor for CanvasControl() + 32);
  v11 = *(v10 + 8);
  (*v10)(a1);
  v12 = a3 + *(type metadata accessor for CanvasControl() + 32);
  v14 = *v12;
  v13 = *(v12 + 8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14(a1 + *(TupleTypeMetadata2 + 48));
  return v9;
}

uint64_t sub_25F158C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = a6;
  v23[2] = a5;
  v24 = a2;
  v8 = sub_25F1774FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v16 = sub_25F1777DC();
  if (v16 == 1)
  {
    v21 = sub_25F1777EC();
    sub_25F1777FC();
    v22 = type metadata accessor for CanvasControl();
    sub_25F113CAC(v21 & 1, v13, a3, a4, v24, v22);
  }

  else
  {
    if (v16)
    {
      swift_getTupleTypeMetadata2();
      type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }

    v17 = sub_25F1777EC();
    sub_25F1777FC();
    v18 = type metadata accessor for CanvasControl();
    v19 = v25;
    sub_25F113CAC(v17 & 1, v15, a3, a4, v24, v18);
    if (v19)
    {
      return (*(v9 + 8))(v15, v8);
    }

    v13 = v15;
  }

  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_25F158E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v94 = a6;
  v89 = a5;
  v96 = a4;
  v92 = a3;
  v81 = a7;
  v97 = type metadata accessor for CanvasControl();
  v93 = *(v97 - 8);
  v98 = *(v93 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v68 - v9;
  v91 = type metadata accessor for CanvasControl();
  v100 = *(v91 - 8);
  v87 = v100[8];
  MEMORY[0x28223BE20](v91);
  v99 = &v68 - v10;
  v83 = type metadata accessor for CanvasControl();
  v11 = *(v83 - 8);
  v85 = *(v11 + 64);
  MEMORY[0x28223BE20](v83);
  v13 = &v68 - v12;
  v90 = &v68 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v14 = sub_25F177B1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v80 = v18;
  *(v18 + 16) = xmmword_25F17BB80;
  v19 = v18 + v17;
  v20 = *(v15 + 16);
  v88 = a1;
  v20(v19, a1, v14);
  v84 = a2;
  v20(v19 + v16, a2, v14);
  v21 = v19 + 2 * v16;
  v22 = v92;
  v20(v21, v92, v14);
  v23 = v11;
  v24 = *(v11 + 16);
  v77 = v11 + 16;
  v78 = v24;
  v25 = v83;
  v24(v13, a1, v83);
  v26 = v100;
  v27 = v100[2];
  v74 = v100 + 2;
  v76 = v27;
  v28 = a2;
  v29 = v91;
  v27(v99, v28, v91);
  v30 = v93;
  v31 = *(v93 + 16);
  v73 = v93 + 16;
  v75 = v31;
  v31(v95, v22, v97);
  v32 = *(v11 + 80);
  v33 = *(v26 + 80);
  v34 = (v32 + 40) & ~v32;
  v86 = v34;
  v35 = *(v30 + 80);
  v36 = v30;
  v85 = (v85 + v33 + v34) & ~v33;
  v37 = v85;
  v38 = (v87 + v35 + v85) & ~v35;
  v87 = v32 | v33 | v35;
  v39 = swift_allocObject();
  v40 = v89;
  v39[2] = v96;
  v39[3] = v40;
  v39[4] = v94;
  v72 = *(v23 + 32);
  v82 = v23 + 32;
  v41 = v39;
  v79 = v39;
  v42 = v90;
  v72(v39 + v34, v90, v25);
  v43 = v100[4];
  v100 += 4;
  v71 = v43;
  v44 = v41 + v37;
  v45 = v99;
  v43(v44, v99, v29);
  v46 = *(v36 + 32);
  v93 = v36 + 32;
  v70 = v46;
  v47 = v41 + v38;
  v48 = v95;
  v49 = v97;
  v46(v47, v95, v97);
  v78(v42, v88, v25);
  v50 = v45;
  v51 = v91;
  v76(v50, v84, v91);
  v75(v48, v92, v49);
  v52 = v38;
  v69 = v38;
  v53 = swift_allocObject();
  *(v53 + 2) = v96;
  *(v53 + 3) = v40;
  *(v53 + 4) = v94;
  v54 = v72;
  v72(&v53[v86], v42, v25);
  v55 = v99;
  v56 = v51;
  v57 = v71;
  v71(&v53[v85], v99, v56);
  v58 = v70;
  v70(&v53[v52], v48, v49);
  v59 = v83;
  v54(v90, v88, v83);
  v60 = v91;
  v57(v55, v84, v91);
  v61 = v97;
  v58(v48, v92, v97);
  v62 = v69;
  v63 = swift_allocObject();
  v65 = v89;
  v64 = v90;
  *(v63 + 2) = v96;
  *(v63 + 3) = v65;
  *(v63 + 4) = v94;
  v54(&v63[v86], v64, v59);
  v57(&v63[v85], v99, v60);
  result = (v58)(&v63[v62], v95, v61);
  v67 = v81;
  *v81 = v80;
  v67[1] = sub_25F162304;
  v67[2] = v79;
  v67[3] = sub_25F162470;
  v67[4] = v53;
  v67[5] = sub_25F162B70;
  v67[6] = v63;
  return result;
}

uint64_t sub_25F159594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + 16) == 3)
  {
    v8 = a2 + *(type metadata accessor for CanvasControl() + 28);
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(sub_25F1774FC() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    result = v10(v12);
    if (!v5)
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v14 = *(TupleTypeMetadata3 + 48);
      v15 = a3 + *(type metadata accessor for CanvasControl() + 28);
      v16 = *(v15 + 8);
      v17 = *(v11 + 72);
      (*v15)(v12 + v17);
      v18 = a4 + *(type metadata accessor for CanvasControl() + 28);
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = a5 + *(TupleTypeMetadata3 + 64);
      return v19(v12 + 2 * v17);
    }
  }

  else
  {
    swift_getTupleTypeMetadata3();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F1597F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  v7 = *(sub_25F1774FC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25F17BB80;
  v11 = a2 + *(type metadata accessor for CanvasControl() + 32);
  v12 = *(v11 + 8);
  (*v11)(a1);
  v13 = a3 + *(type metadata accessor for CanvasControl() + 32);
  v15 = *v13;
  v14 = *(v13 + 8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15(a1 + *(TupleTypeMetadata3 + 48));
  v17 = a4 + *(type metadata accessor for CanvasControl() + 32);
  v18 = *(v17 + 8);
  (*v17)(a1 + *(TupleTypeMetadata3 + 64));
  return v10;
}

uint64_t sub_25F159994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = a6;
  v27[2] = a5;
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v6 = sub_25F1774FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = sub_25F1777DC();
  if (v17 == 2)
  {
    v25 = sub_25F1777EC();
    sub_25F1777FC();
    v26 = type metadata accessor for CanvasControl();
    sub_25F113CAC(v25 & 1, v11, v28, v29, v30, v26);
  }

  else if (v17 == 1)
  {
    v22 = sub_25F1777EC();
    sub_25F1777FC();
    v23 = type metadata accessor for CanvasControl();
    v24 = v31;
    sub_25F113CAC(v22 & 1, v14, v28, v29, v30, v23);
    if (v24)
    {
      return (*(v7 + 8))(v14, v6);
    }

    v11 = v14;
  }

  else
  {
    if (v17)
    {
      swift_getTupleTypeMetadata3();
      type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }

    v18 = sub_25F1777EC();
    sub_25F1777FC();
    v19 = type metadata accessor for CanvasControl();
    v20 = v31;
    sub_25F113CAC(v18 & 1, v16, v28, v29, v30, v19);
    if (v20)
    {
      return (*(v7 + 8))(v16, v6);
    }

    v11 = v16;
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_25F159C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v114 = a5;
  v115 = a8;
  v108 = a7;
  v111 = a6;
  v94 = a9;
  v121 = type metadata accessor for CanvasControl();
  v123 = *(v121 - 8);
  v113 = v123[8];
  MEMORY[0x28223BE20](v121);
  v120 = v84 - v13;
  v119 = type metadata accessor for CanvasControl();
  v117 = *(v119 - 8);
  v103 = *(v117 + 64);
  MEMORY[0x28223BE20](v119);
  v110 = v84 - v14;
  v112 = type metadata accessor for CanvasControl();
  v122 = *(v112 - 8);
  v100 = v122[8];
  MEMORY[0x28223BE20](v112);
  v118 = v84 - v15;
  v109 = type metadata accessor for CanvasControl();
  v116 = *(v109 - 8);
  v101 = *(v116 + 64);
  MEMORY[0x28223BE20](v109);
  v99 = v84 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49248, &qword_25F1836A0);
  v17 = sub_25F177B1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v93 = v21;
  *(v21 + 16) = xmmword_25F183430;
  v22 = v21 + v20;
  v23 = *(v18 + 16);
  v107 = a1;
  v23(v22, a1, v17);
  v106 = a2;
  v23(v22 + v19, a2, v17);
  v105 = a3;
  v23(v22 + 2 * v19, a3, v17);
  v104 = a4;
  v23(v22 + 3 * v19, a4, v17);
  v24 = v116;
  v25 = *(v116 + 16);
  v90 = v116 + 16;
  v91 = v25;
  v26 = v99;
  v27 = a1;
  v28 = v109;
  v25(v99, v27, v109);
  v29 = v122;
  v30 = v122[2];
  v88 = v122 + 2;
  v89 = v30;
  v30(v118, a2, v112);
  v31 = v117;
  v32 = *(v117 + 16);
  v86 = v117 + 16;
  v87 = v32;
  v33 = v110;
  v32(v110, a3, v119);
  v34 = v123;
  v35 = v123[2];
  v84[1] = v123 + 2;
  v85 = v35;
  v35(v120, a4, v121);
  v36 = *(v24 + 80);
  v37 = v24;
  v38 = (v36 + 48) & ~v36;
  v39 = *(v29 + 80);
  v102 = v38;
  v41 = *(v31 + 80);
  v42 = v31;
  v101 = (v101 + v39 + v38) & ~v39;
  v40 = v101;
  v43 = (v100 + v41 + v101) & ~v41;
  v44 = *(v34 + 80);
  v96 = v43;
  v95 = (v103 + v44 + v43) & ~v44;
  v103 = v36 | v39 | v41 | v44;
  v45 = swift_allocObject();
  v46 = v111;
  *(v45 + 2) = v114;
  *(v45 + 3) = v46;
  v47 = v108;
  v48 = v115;
  *(v45 + 4) = v108;
  *(v45 + 5) = v48;
  v49 = *(v37 + 32);
  v116 = v37 + 32;
  v98 = v49;
  v50 = &v45[v38];
  v51 = v45;
  v52 = v26;
  v49(v50, v26, v28);
  v53 = v122[4];
  v122 += 4;
  v97 = v53;
  v54 = v118;
  v55 = v112;
  v53(&v51[v40], v118, v112);
  v100 = *(v42 + 32);
  v117 = v42 + 32;
  v92 = v51;
  v56 = &v51[v43];
  v57 = v33;
  v58 = v119;
  v100(v56, v33, v119);
  v84[0] = v123[4];
  v123 += 4;
  v59 = v95;
  v61 = v120;
  v60 = v121;
  (v84[0])(&v51[v95], v120, v121);
  v62 = v109;
  v91(v52, v107, v109);
  v89(v54, v106, v55);
  v87(v57, v105, v58);
  v85(v61, v104, v60);
  v63 = swift_allocObject();
  v64 = v111;
  *(v63 + 2) = v114;
  *(v63 + 3) = v64;
  v65 = v115;
  *(v63 + 4) = v47;
  *(v63 + 5) = v65;
  v66 = v98;
  v98(&v63[v102], v52, v62);
  v67 = v55;
  v68 = v97;
  v97(&v63[v101], v54, v67);
  v69 = v110;
  v70 = v119;
  v100(&v63[v96], v110, v119);
  v71 = &v63[v59];
  v72 = v84[0];
  (v84[0])(v71, v120, v121);
  v66(v52, v107, v62);
  v73 = v112;
  v68(v118, v106, v112);
  v74 = v100;
  v100(v69, v105, v70);
  v75 = v120;
  v76 = v121;
  v72(v120, v104, v121);
  v77 = v95;
  v78 = swift_allocObject();
  v79 = v111;
  *(v78 + 2) = v114;
  *(v78 + 3) = v79;
  v80 = v109;
  v81 = v115;
  *(v78 + 4) = v108;
  *(v78 + 5) = v81;
  v98(&v78[v102], v99, v80);
  v97(&v78[v101], v118, v73);
  v74(&v78[v96], v110, v119);
  result = (v72)(&v78[v77], v75, v76);
  v83 = v94;
  *v94 = v93;
  v83[1] = sub_25F161648;
  v83[2] = v92;
  v83[3] = sub_25F161810;
  v83[4] = v63;
  v83[5] = sub_25F162120;
  v83[6] = v78;
  return result;
}

uint64_t sub_25F15A574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 16) == 4)
  {
    v9 = a2 + *(type metadata accessor for CanvasControl() + 28);
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(sub_25F1774FC() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    result = v11(v13);
    if (!v6)
    {
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v15 = TupleTypeMetadata[12];
      v16 = a3 + *(type metadata accessor for CanvasControl() + 28);
      v17 = *(v16 + 8);
      v18 = *(v12 + 72);
      (*v16)(v13 + v18);
      v19 = TupleTypeMetadata[16];
      v20 = a4 + *(type metadata accessor for CanvasControl() + 28);
      v21 = *(v20 + 8);
      (*v20)(v13 + 2 * v18);
      v22 = a5 + *(type metadata accessor for CanvasControl() + 28);
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = a6 + TupleTypeMetadata[20];
      return v23(v13 + 3 * v18);
    }
  }

  else
  {
    swift_getTupleTypeMetadata();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F15A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD49250, &qword_25F1836A8);
  v8 = *(sub_25F1774FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F183430;
  v12 = a2 + *(type metadata accessor for CanvasControl() + 32);
  v13 = *(v12 + 8);
  (*v12)(a1);
  v14 = a3 + *(type metadata accessor for CanvasControl() + 32);
  v16 = *v14;
  v15 = *(v14 + 8);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16(a1 + TupleTypeMetadata[12]);
  v18 = a4 + *(type metadata accessor for CanvasControl() + 32);
  v19 = *(v18 + 8);
  (*v18)(a1 + TupleTypeMetadata[16]);
  v20 = a5 + *(type metadata accessor for CanvasControl() + 32);
  v21 = *(v20 + 8);
  (*v20)(a1 + TupleTypeMetadata[20]);
  return v11;
}

uint64_t sub_25F15AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38[3] = a6;
  v38[4] = a8;
  v38[1] = a5;
  v38[2] = a7;
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v39 = a12;
  v40 = sub_25F1774FC();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v40);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v38 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v38 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v38 - v23;
  v25 = sub_25F1777DC();
  if (v25 <= 1)
  {
    if (!v25)
    {
      v32 = sub_25F1777EC();
      sub_25F1777FC();
      v33 = type metadata accessor for CanvasControl();
      v34 = v48;
      sub_25F113CAC(v32 & 1, v24, v41, v42, v43, v33);
      if (v34)
      {
        return (*(v12 + 8))(v24, v40);
      }

      v16 = v24;
      return (*(v12 + 8))(v16, v40);
    }

    if (v25 == 1)
    {
      v26 = sub_25F1777EC();
      sub_25F1777FC();
      v27 = type metadata accessor for CanvasControl();
      v28 = v48;
      sub_25F113CAC(v26 & 1, v22, v41, v42, v43, v27);
      if (v28)
      {
        return (*(v12 + 8))(v22, v40);
      }

      v16 = v22;
      return (*(v12 + 8))(v16, v40);
    }

LABEL_9:
    v44 = a9;
    v45 = a10;
    v46 = a11;
    v47 = v39;
    swift_getTupleTypeMetadata();
    type metadata accessor for CanvasControlConfiguration.IndexOutOfBounds();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  if (v25 == 2)
  {
    v35 = sub_25F1777EC();
    sub_25F1777FC();
    v36 = type metadata accessor for CanvasControl();
    v37 = v48;
    sub_25F113CAC(v35 & 1, v19, v41, v42, v43, v36);
    if (v37)
    {
      return (*(v12 + 8))(v19, v40);
    }

    v16 = v19;
  }

  else
  {
    if (v25 != 3)
    {
      goto LABEL_9;
    }

    v30 = sub_25F1777EC();
    sub_25F1777FC();
    v31 = type metadata accessor for CanvasControl();
    sub_25F113CAC(v30 & 1, v16, v41, v42, v43, v31);
  }

  return (*(v12 + 8))(v16, v40);
}

uint64_t CanvasControlConfigurationBuilder.One.control.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for CanvasControl();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t CanvasControlConfigurationBuilder.One.optional.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for CanvasControl();
  v7 = sub_25F17960C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = *(v6 - 8);
  (*(v11 + 16))(&v13 - v9, v2, v6);
  (*(v11 + 56))(v10, 0, 1, v6);
  return sub_25F15AF28(v10, v5, *(a1 + 24), a2);
}

uint64_t sub_25F15AF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F17960C();
  sub_25F112F78(a1, v8, a2, a3, a4);
  type metadata accessor for CanvasControl();
  v9 = sub_25F17960C();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

uint64_t CanvasControlConfigurationBuilder.One.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for CanvasControl();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2);
  return sub_25F157DE0(v8, v4, a2);
}

uint64_t CanvasControlConfigurationBuilder.One.Optional.control.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_25F17960C();
  v5 = type metadata accessor for CanvasControl();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t _s15PreviewShellKit33CanvasControlConfigurationBuilderV3OneV4noneAE8OptionalVy_x_GvgZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CanvasControl();
  v7 = sub_25F17960C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  (*(*(v6 - 8) + 56))(&v12 - v9, 1, 1, v6);
  return sub_25F15AF28(v10, a1, a2, a3);
}

uint64_t CanvasControlConfigurationBuilder.One.Optional.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_25F17960C();
  v6 = type metadata accessor for CanvasControl();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v2);
  return sub_25F157DE0(v9, v5, a2);
}

uint64_t sub_25F15B308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CanvasControl();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25F15B398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t CanvasControlConfigurationBuilder.Two.optional.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v19 = *(a1 + 24);
  v20 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v18 - v8;
  v10 = *(*(a1 + 32) + 8);
  v11 = *(a1 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v10 + 24))(v11, v10);
  v16 = v2 + *(a1 + 52);
  (*(v5 + 24))(v19, v5);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_25F15B398(v15, v9, v12, AssociatedTypeWitness, v21);
}

uint64_t static CanvasControlConfigurationBuilder.Two.none.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v20 = a5;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v19 - v11;
  v13 = *(a3 + 8);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  (*(v13 + 32))(a1, v13);
  (*(v8 + 32))(a2, v8);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_25F15B398(v17, v12, v14, AssociatedTypeWitness, v20);
}

uint64_t CanvasControlConfigurationBuilder.Two.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for CanvasControl();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  v14 = *(a1 + 16);
  v15 = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for CanvasControl();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v22 - v18;
  (*(v12 + 24))(v14, v12);
  v20 = v2 + *(a1 + 52);
  (*(v4 + 24))(v6, v4);
  return sub_25F1584A0(v19, v11, v15, AssociatedTypeWitness, v23);
}

uint64_t sub_25F15B978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v12 = type metadata accessor for CanvasControlConfigurationBuilder.Three();
  (*(*(a5 - 8) + 32))(a7 + *(v12 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + *(v12 + 72), a3, a6);
}

uint64_t CanvasControlConfigurationBuilder.Three.optional.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v31 = *(a1 + 56);
  v5 = *(a1 + 32);
  v27 = *(v31 + 8);
  v28 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = &v23 - v7;
  v29 = *(a1 + 48);
  v8 = *(v29 + 8);
  v24 = *(a1 + 24);
  v26 = swift_getAssociatedTypeWitness();
  v9 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v23 = &v23 - v10;
  v11 = *(*(a1 + 40) + 8);
  v12 = *(a1 + 16);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  (*(v11 + 24))(v12, v11);
  v17 = v2 + *(a1 + 68);
  (*(v8 + 24))(v24, v8);
  v18 = v3 + *(a1 + 72);
  v19 = v25;
  (*(v27 + 24))(v28);
  swift_getAssociatedConformanceWitness();
  v20 = v26;
  swift_getAssociatedConformanceWitness();
  v21 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  return sub_25F15B978(v16, v23, v19, v13, v20, v21, v32);
}

uint64_t static CanvasControlConfigurationBuilder.Three.none.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v34 = a7;
  v31 = a5;
  v28[1] = a4;
  v12 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = v28 - v14;
  v15 = *(a5 + 8);
  v30 = swift_getAssociatedTypeWitness();
  v16 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v18 = v28 - v17;
  v19 = *(a4 + 8);
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v28 - v22;
  (*(v19 + 32))(a1, v19);
  (*(v15 + 32))(a2, v15);
  v24 = v29;
  (*(v12 + 32))(a3, v12);
  swift_getAssociatedConformanceWitness();
  v25 = v30;
  swift_getAssociatedConformanceWitness();
  v26 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  return sub_25F15B978(v23, v18, v24, v20, v25, v26, v34);
}

uint64_t CanvasControlConfigurationBuilder.Three.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v31 = *(a1 + 56);
  v5 = *(v31 + 8);
  v29 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for CanvasControl();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = *(a1 + 48);
  v11 = *(v10 + 8);
  v27 = *(a1 + 24);
  v28 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for CanvasControl();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;
  v16 = *(a1 + 40);
  v17 = *(v16 + 8);
  v18 = *(a1 + 16);
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for CanvasControl();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v27 - v22;
  (*(v16 + 24))(v18, v16);
  v24 = v2 + *(a1 + 68);
  (*(v10 + 24))(v27, v10);
  v25 = v3 + *(a1 + 72);
  (*(v31 + 24))(v29);
  return sub_25F158E94(v23, v15, v9, v19, v28, AssociatedTypeWitness, v32);
}

uint64_t sub_25F15C1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v16 = type metadata accessor for CanvasControlConfigurationBuilder.Four();
  (*(*(a6 - 8) + 32))(a9 + v16[21], a2, a6);
  (*(*(a7 - 8) + 32))(a9 + v16[22], a3, a7);
  return (*(*(a8 - 8) + 32))(a9 + v16[23], a4, a8);
}

uint64_t CanvasControlConfigurationBuilder.Four.optional.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = *(a1 + 72);
  v4 = *(a1 + 40);
  AssociatedConformanceWitness = *(v41 + 8);
  v37 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = &v28 - v6;
  v39 = *(a1 + 64);
  v7 = *(v39 + 8);
  v32 = *(a1 + 32);
  v38 = swift_getAssociatedTypeWitness();
  v8 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v43 = &v28 - v9;
  v34 = *(a1 + 56);
  v10 = *(v34 + 8);
  v29 = *(a1 + 24);
  v33 = swift_getAssociatedTypeWitness();
  v11 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v28 - v12;
  v13 = *(*(a1 + 48) + 8);
  v14 = *(a1 + 16);
  v30 = swift_getAssociatedTypeWitness();
  v15 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v17 = &v28 - v16;
  v18 = v2;
  (*(v13 + 24))(v14, v13);
  v19 = v2 + *(a1 + 84);
  (*(v10 + 24))(v29, v10);
  v20 = v18 + *(a1 + 88);
  (*(v7 + 24))(v32, v7);
  v21 = v35;
  v22 = v18 + *(a1 + 92);
  (*(AssociatedConformanceWitness + 24))(v37);
  v23 = v30;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = v33;
  swift_getAssociatedConformanceWitness();
  v25 = v38;
  swift_getAssociatedConformanceWitness();
  v26 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  return sub_25F15C1F4(v17, v31, v43, v21, v23, v24, v25, v26, v42);
}

uint64_t static CanvasControlConfigurationBuilder.Four.none.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v46 = a9;
  v43 = a7;
  v38 = a6;
  v32 = a2;
  v33 = a5;
  v36 = a3;
  v40 = *(a8 + 8);
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v31 - v14;
  v15 = *(a7 + 8);
  v42 = swift_getAssociatedTypeWitness();
  v16 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v34 = &v31 - v17;
  v18 = *(a6 + 8);
  v37 = swift_getAssociatedTypeWitness();
  v19 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v31 - v20;
  v21 = *(a5 + 8);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v31 - v24;
  (*(v21 + 32))(a1, v21);
  (*(v18 + 32))(v32, v18);
  (*(v15 + 32))(v36, v15);
  v26 = v39;
  (*(v40 + 32))(v41);
  swift_getAssociatedConformanceWitness();
  v27 = v37;
  swift_getAssociatedConformanceWitness();
  v28 = v42;
  swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  return sub_25F15C1F4(v25, v35, v34, v26, v22, v27, v28, v29, v46);
}

uint64_t CanvasControlConfigurationBuilder.Four.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v42 = *(a1 + 72);
  v5 = *(v42 + 8);
  v40 = *(a1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for CanvasControl();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v34 - v8;
  v9 = *(a1 + 64);
  v10 = *(v9 + 8);
  v36 = *(a1 + 32);
  v37 = v9;
  v38 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for CanvasControl();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = *(a1 + 56);
  v16 = *(v15 + 8);
  v34 = *(a1 + 24);
  v35 = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for CanvasControl();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v34 - v19;
  v21 = *(a1 + 48);
  v22 = *(v21 + 8);
  v23 = *(a1 + 16);
  v24 = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for CanvasControl();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v34 - v27;
  (*(v21 + 24))(v23, v21);
  v29 = v2 + *(a1 + 84);
  (*(v15 + 24))(v34, v15);
  v30 = v3 + *(a1 + 88);
  (*(v37 + 24))(v36);
  v31 = v3 + *(a1 + 92);
  v32 = v39;
  (*(v42 + 24))(v40);
  return sub_25F159C44(v28, v20, v14, v32, v24, v35, v38, AssociatedTypeWitness, v43);
}

uint64_t static CanvasControlConfigurationBuilder.buildExpression<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for CanvasControl();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  (*(a2 + 16))(a1, a2);
  return (*(v7 + 32))(a3, v10, v6);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  (*(v9 + 16))(v13, a2, a4);
  return sub_25F15B398(v17, v13, a3, a4, a5);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a7;
  v33 = a8;
  v30 = a3;
  v31 = a9;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v15);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  (*(v19 + 16))(v23, a2, a5);
  (*(v13 + 16))(v17, v30, a6);
  return sub_25F15B978(v27, v23, v17, a4, a5, a6, v31);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a7;
  v34 = a9;
  v35 = a6;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v16);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  (*(v20 + 16))(v24, a2, a4);
  v36 = a4;
  v37 = a5;
  v38 = v33;
  v39 = a8;
  v30 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  (*(v14 + 16))(v18, a2 + *(v30 + 52), a5);
  return sub_25F15B978(v28, v24, v18, a3, a4, a5, v34);
}

{
  v36 = a9;
  v37 = a8;
  v33 = a7;
  v34 = a5;
  v35 = a2;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v15);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v27 = &v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, a1);
  v38 = a3;
  v39 = a4;
  v40 = a6;
  v41 = v33;
  v29 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  (*(v19 + 16))(v23, a1 + *(v29 + 52), a4);
  v30 = v34;
  (*(v13 + 16))(v17, v35, v34);
  return sub_25F15B978(v27, v23, v17, a3, a4, v30, v36);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v41 = a8;
  v42 = a4;
  v40 = a3;
  v39[0] = a2;
  v44 = a9;
  v43 = a10;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  v39[1] = a12;
  v39[2] = a11;
  v17 = MEMORY[0x28223BE20](a1);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v17);
  v25 = v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v23);
  v31 = v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v35 = v39 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  (*(v27 + 16))(v31, v39[0], a6);
  (*(v21 + 16))(v25, v40, a7);
  v37 = v41;
  (*(v15 + 16))(v19, v42, v41);
  return sub_25F15C1F4(v35, v31, v25, v19, a5, a6, a7, v37, v44);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = a8;
  v49 = a7;
  v46 = a11;
  v15 = *(a6 - 8);
  v44 = a3;
  v45 = v15;
  v16 = *(v15 + 64);
  v47 = a9;
  v43 = a10;
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v17);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v23);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v32;
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v35 = &v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  v37 = a2;
  v38 = a4;
  (*(v27 + 16))(v31, v37, a4);
  v39 = v44;
  (*(v21 + 16))(v25, v44, a5);
  v50 = a5;
  v51 = a6;
  v52 = v43;
  v53 = v46;
  v40 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  (*(v45 + 16))(v19, v39 + *(v40 + 52), a6);
  return sub_25F15C1F4(v35, v31, v25, v19, v42, v38, a5, a6, v48);
}

{
  v46 = a8;
  v47 = a7;
  v43 = a6;
  v44 = a3;
  v45 = a11;
  v42 = *(a6 - 8);
  v14 = *(v42 + 64);
  v40 = a10;
  v15 = MEMORY[0x28223BE20](a1);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v20);
  v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v32 = &v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  (*(v24 + 16))(v28, a2, a4);
  v48 = a4;
  v49 = a5;
  v50 = a9;
  v51 = v40;
  v34 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  (*(v18 + 16))(v22, a2 + *(v34 + 52), a5);
  v35 = v41;
  v36 = v43;
  (*(v42 + 16))(v41, v44, v43);
  return sub_25F15C1F4(v32, v28, v22, v35, v39, a4, a5, v36, v46);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v47 = a8;
  v48 = a6;
  v46 = *(a5 - 8);
  v15 = *(v46 + 64);
  v44 = a10;
  v16 = MEMORY[0x28223BE20](a1);
  v45 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v43 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v21);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v32 = &v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  v34 = *(v24 + 16);
  v41 = a3;
  v34(v28, a2, a3);
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a7;
  v53 = a9;
  v54 = v44;
  v35 = type metadata accessor for CanvasControlConfigurationBuilder.Three();
  v36 = *(v19 + 16);
  v37 = v43;
  v36(v43, a2 + *(v35 + 68), a4);
  v38 = *(v35 + 72);
  v39 = v45;
  (*(v46 + 16))(v45, a2 + v38, a5);
  return sub_25F15C1F4(v32, v28, v37, v39, v42, v41, a4, a5, v47);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a7;
  v49 = a3;
  v43 = a6;
  v47 = a2;
  v51 = a9;
  v50 = a12;
  v45 = *(a7 - 8);
  v16 = *(v45 + 64);
  v46 = a11;
  v17 = MEMORY[0x28223BE20](a1);
  v44 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v22);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, a1, v36);
  v52 = a4;
  v53 = a5;
  v54 = a8;
  v55 = a10;
  v37 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  (*(v26 + 16))(v30, a1 + *(v37 + 52), a5);
  v38 = v43;
  (*(v20 + 16))(v24, v47, v43);
  v39 = v44;
  v40 = v48;
  (*(v45 + 16))(v44, v49, v48);
  return sub_25F15C1F4(v34, v30, v24, v39, a4, a5, v38, v40, v51);
}

uint64_t static CanvasControlConfigurationBuilder.buildBlock<A, B, C, D>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v45 = a6;
  v47 = a2;
  v51 = a9;
  v50 = *(a6 - 8);
  v16 = *(v50 + 64);
  v48 = a11;
  v46 = a10;
  v17 = MEMORY[0x28223BE20](a1);
  v49 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v22);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, a1);
  v52 = a3;
  v53 = a4;
  v42 = a4;
  v54 = a7;
  v55 = v44;
  v36 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  (*(v26 + 16))(v30, a1 + *(v36 + 52), a4);
  v37 = v47;
  (*(v20 + 16))(v24, v47, a5);
  v38 = v45;
  v52 = a5;
  v53 = v45;
  v54 = v46;
  v55 = v48;
  v39 = v37 + *(type metadata accessor for CanvasControlConfigurationBuilder.Two() + 52);
  v40 = v49;
  (*(v50 + 16))(v49, v39, v38);
  return sub_25F15C1F4(v34, v30, v24, v40, v43, v42, a5, v38, v51);
}

{
  v41 = a7;
  v48 = a6;
  v49 = a2;
  v50 = a9;
  v46 = *(a6 - 8);
  v17 = *(v46 + 64);
  v47 = a11;
  v44 = a10;
  v18 = MEMORY[0x28223BE20](a1);
  v45 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v43 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v34 = &v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, a1);
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a7;
  v55 = a8;
  v56 = v44;
  v36 = type metadata accessor for CanvasControlConfigurationBuilder.Three();
  (*(v26 + 16))(v30, a1 + *(v36 + 68), a4);
  v37 = v43;
  (*(v21 + 16))(v43, a1 + *(v36 + 72), a5);
  v38 = v45;
  v39 = v48;
  (*(v46 + 16))(v45, v49, v48);
  return sub_25F15C1F4(v34, v30, v37, v38, v42, a4, a5, v39, v50);
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v8 = sub_25F17960C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v14 = sub_25F17960C();
  v22 = *(v14 - 8);
  v15 = *(v22 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  (*(v9 + 16))(v12, a1, v8);
  v18 = *(v7 - 8);
  if ((*(v18 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v19 = *(v13 - 8);
    (*(v19 + 56))(v17, 1, 1, v13);
    static CanvasControlConfigurationBuilder.One.none.getter(a2, a3);
    result = (*(v19 + 48))(v17, 1, v13);
    if (result != 1)
    {
      return (*(v22 + 8))(v17, v14);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.One.optional.getter(v7, v17);
    (*(v18 + 8))(v12, v7);
    v21 = *(v13 - 8);
    (*(v21 + 56))(v17, 0, 1, v13);
    return (*(v21 + 32))(v23, v17, v13);
  }

  return result;
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v3 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  WitnessTable = swift_getWitnessTable();
  v30 = v2;
  v31 = v3;
  v26 = swift_getWitnessTable();
  v27 = WitnessTable;
  v32 = WitnessTable;
  v33 = v26;
  v5 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  v6 = sub_25F17960C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v12 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v15 = type metadata accessor for CanvasControlConfigurationBuilder.Two();
  v16 = sub_25F17960C();
  v25 = *(v16 - 8);
  v17 = *(v25 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  (*(v7 + 16))(v10, v28, v6);
  v20 = *(v5 - 8);
  if ((*(v20 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v21 = *(v15 - 8);
    (*(v21 + 56))(v19, 1, 1, v15);
    static CanvasControlConfigurationBuilder.Two.none.getter(v2, v3, v27, v26, v29);
    result = (*(v21 + 48))(v19, 1, v15);
    if (result != 1)
    {
      return (*(v25 + 8))(v19, v16);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.Two.optional.getter(v5, v19);
    (*(v20 + 8))(v10, v5);
    v23 = *(v15 - 8);
    (*(v23 + 56))(v19, 0, 1, v15);
    return (*(v23 + 32))(v29, v19, v15);
  }

  return result;
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A, B, C>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v39 = a1;
  v40 = a4;
  v4 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v5 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v6 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  WitnessTable = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v35 = v5;
  v36 = v4;
  v41 = v4;
  v42 = v5;
  v33 = WitnessTable;
  v34 = v6;
  v43 = v6;
  v44 = WitnessTable;
  v31 = swift_getWitnessTable();
  v32 = v8;
  v45 = v8;
  v46 = v31;
  v9 = type metadata accessor for CanvasControlConfigurationBuilder.Three();
  v10 = sub_25F17960C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v16 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v17 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v21 = type metadata accessor for CanvasControlConfigurationBuilder.Three();
  v22 = sub_25F17960C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v31 - v25;
  (*(v11 + 16))(v14, v39, v10);
  v27 = *(v9 - 8);
  if ((*(v27 + 48))(v14, 1, v9) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v28 = *(v21 - 8);
    (*(v28 + 56))(v26, 1, 1, v21);
    static CanvasControlConfigurationBuilder.Three.none.getter(v36, v35, v34, v33, v32, v31, v40);
    result = (*(v28 + 48))(v26, 1, v21);
    if (result != 1)
    {
      return (*(v23 + 8))(v26, v22);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.Three.optional.getter(v9, v26);
    (*(v27 + 8))(v14, v9);
    v30 = *(v21 - 8);
    (*(v30 + 56))(v26, 0, 1, v21);
    return (*(v30 + 32))(v40, v26, v21);
  }

  return result;
}

uint64_t static CanvasControlConfigurationBuilder.buildOptional<A, B, C, D>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v49 = a6;
  v50 = a4;
  v46 = a5;
  v47 = a3;
  v45 = a2;
  v51 = a1;
  v52 = a7;
  v48 = a8;
  v8 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v41 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v42 = v8;
  v53 = v8;
  v54 = v41;
  v40 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v55 = v40;
  v56 = type metadata accessor for CanvasControlConfigurationBuilder.One();
  v39 = v56;
  WitnessTable = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = swift_getWitnessTable();
  v37 = v58;
  v36 = swift_getWitnessTable();
  v59 = v36;
  v60 = swift_getWitnessTable();
  v35 = v60;
  v44 = type metadata accessor for CanvasControlConfigurationBuilder.Four();
  v9 = sub_25F17960C();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v14 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v15 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v16 = type metadata accessor for CanvasControlConfigurationBuilder.One.Optional();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v53 = v13;
  v54 = v14;
  v55 = v15;
  v56 = v16;
  v21 = v9;
  v57 = v17;
  v58 = v18;
  v23 = v43;
  v22 = v44;
  v59 = v19;
  v60 = v20;
  v24 = type metadata accessor for CanvasControlConfigurationBuilder.Four();
  v25 = sub_25F17960C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v34 - v28;
  (*(v23 + 16))(v12, v51, v21);
  v30 = *(v22 - 8);
  if ((*(v30 + 48))(v12, 1, v22) == 1)
  {
    (*(v23 + 8))(v12, v21);
    v31 = *(v24 - 8);
    (*(v31 + 56))(v29, 1, 1, v24);
    static CanvasControlConfigurationBuilder.Four.none.getter(v42, v41, v40, v39, WitnessTable, v37, v36, v35, v52);
    result = (*(v31 + 48))(v29, 1, v24);
    if (result != 1)
    {
      return (*(v26 + 8))(v29, v25);
    }
  }

  else
  {
    CanvasControlConfigurationBuilder.Four.optional.getter(v22, v29);
    (*(v30 + 8))(v12, v22);
    v33 = *(v24 - 8);
    (*(v33 + 56))(v29, 0, 1, v24);
    return (*(v33 + 32))(v52, v29, v24);
  }

  return result;
}

uint64_t sub_25F15FCA4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F15FCE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F15FD1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F15FD58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25F15FDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F15FE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for CanvasControl();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F15FEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for CanvasControl();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_25F15FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = type metadata accessor for CanvasControl();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25F15FFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_25F17960C();
  result = type metadata accessor for CanvasControl();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F160070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_25F17960C();
  v6 = type metadata accessor for CanvasControl();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_25F160100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  sub_25F17960C();
  v7 = type metadata accessor for CanvasControl();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_25F160188(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F160214(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}