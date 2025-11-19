uint64_t sub_231466BB0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_231477308();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = sub_231477348();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  sub_231477338();
  (*(v6 + 104))(v11, *MEMORY[0x277D0B738], v3);
  sub_231477318();
  return (*(v6 + 8))(v11, v3);
}

uint64_t sub_231466CE4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_231476E58();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D880, &qword_23147A208);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  v12 = sub_231477468();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v18 = sub_231476AF8();
    result = __swift_getEnumTagSinglePayload(a3, 1, v18);
    if (result != 1)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      sub_231477458();
      sub_231477538();
      if (v3)
      {
        (*(v13 + 8))(v17, v12);
        return sub_2313E937C(v22, &unk_27DD4D8A0, &unk_23147A220);
      }

      (*(v13 + 8))(v17, v12);
      sub_2313E937C(v22, &unk_27DD4D8A0, &unk_23147A220);
      v19 = v25;
      if (v25)
      {
        v20 = v24;
        v21 = v24 == 7102839 && v25 == 0xE300000000000000;
        if (v21 || (sub_2314787C8() & 1) != 0)
        {
        }
      }

      else
      {
        v20 = 7104878;
        v19 = 0xE300000000000000;
      }

      *&v22[0] = 0;
      *(&v22[0] + 1) = 0xE000000000000000;
      sub_2314784E8();
      MEMORY[0x23192E060](0xD000000000000037, 0x8000000231483ED0);
      MEMORY[0x23192E060](v20, v19);

      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
      sub_231476DE8();
      sub_231477048();
      sub_2313EB944(&qword_27DD4EBB8, MEMORY[0x277D0B6F8]);
      swift_allocError();
      sub_231477018();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_231467080(uint64_t a1)
{
  v3 = sub_231477008();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = *(v4 + 16);
  v11(v18 - v9, a1, v3);
  sub_231476FE8();
  v11(v8, v10, v3);
  v12 = sub_2314770A8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_231477068();
  if (qword_280C3C938 != -1)
  {
    swift_once();
  }

  v16 = sub_231477348();
  __swift_project_value_buffer(v16, qword_280C3D8D0);

  sub_231477328();
  if (v1)
  {
    (*(v4 + 8))(v10, v3);
  }

  else
  {

    if (qword_280C3C1A0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v16, qword_280C3D8E8);

    sub_231477328();

    if (sub_231476FD8())
    {
      sub_2314770F8();
    }

    (*(v4 + 8))(v10, v3);
  }

  return v15;
}

uint64_t sub_231467364()
{
  v0 = sub_231477468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231477458();
  sub_2314777E8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_231467460()
{

  v1 = sub_231478078();
  sub_231477F88();
  return v1;
}

void sub_2314674E0(uint64_t a1, unint64_t a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_231477E58();
  v6 = [v4 fileExistsAtPath_];

  if (v6)
  {
    v7 = sub_231477E58();
    v18[0] = 0;
    v8 = [v4 removeItemAtPath:v7 error:v18];

    if (v8)
    {
      v9 = qword_280C3CF50;
      v10 = v18[0];
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_231477B68();
      __swift_project_value_buffer(v11, qword_280C3D970);

      v12 = sub_231477B58();
      v13 = sub_2314782A8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_2313EB684(a1, a2, v18);
        _os_log_impl(&dword_2313E1000, v12, v13, "deleted file at %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x23192F1F0](v15, -1, -1);
        MEMORY[0x23192F1F0](v14, -1, -1);
      }
    }

    else
    {
      v16 = v18[0];
      sub_231476A68();

      swift_willThrow();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_231467720(uint64_t a1)
{
  v87 = a1;
  v1 = sub_231477688();
  v74 = *(v1 - 8);
  v75 = v1;
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v1);
  v73 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231476F78();
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v71 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = v68 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v77 = v68 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v78 = v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v79 = v68 - v16;
  MEMORY[0x28223BE20](v15);
  v80 = v68 - v17;
  v18 = sub_231476F98();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v72 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v68 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v68 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v83 = v68 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = v68 - v31;
  *&v88 = MEMORY[0x277D84F90];
  v33 = sub_2313EB944(&qword_280C3C8E8, MEMORY[0x277D0B6E8]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E200, &qword_23147D3C8);
  v35 = sub_2313FD260(&qword_280C3C148, &qword_27DD4E200, &qword_23147D3C8);
  v84 = v34;
  v85 = v33;
  sub_231478498();
  v36 = v86;
  sub_2314777D8();
  if (v36)
  {
    (*(v19 + 8))(v32, v18);
  }

  else
  {
    v86 = v28;
    v70 = v25;
    v37 = *(v19 + 8);
    v37(v32, v18);
    v38 = MEMORY[0x277D84F90];
    *&v88 = MEMORY[0x277D84F90];
    v39 = v83;
    sub_231478498();
    sub_2314777D8();
    v40 = v39;
    v41 = v18;
    v37(v40, v18);
    *&v88 = v38;
    v42 = v86;
    sub_231478498();
    sub_2314777D8();
    v68[2] = v35;
    v37(v42, v41);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v91 = v38;
    v43 = sub_2313EB944(&qword_280C3C8F0, MEMORY[0x277D0B6B8]);
    v69 = v37;
    v44 = v43;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EBA8, &qword_231480018);
    v46 = sub_2313FD260(&qword_280C3C150, &qword_27DD4EBA8, &qword_231480018);
    v47 = v80;
    v83 = v46;
    v48 = v19 + 8;
    v49 = v81;
    v86 = v44;
    sub_231478498();
    sub_2314777C8();
    v68[0] = v41;
    v68[1] = v48;
    v50 = v47;
    v51 = v45;
    v52 = v82 + 8;
    v53 = *(v82 + 8);
    v53(v50, v49);
    sub_2313E937C(&v88, &qword_27DD4E0C8, &qword_23147CD50);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v91 = MEMORY[0x277D84F90];
    v54 = v79;
    v55 = v51;
    sub_231478498();
    sub_2314777C8();
    v53(v54, v49);
    sub_2313E937C(&v88, &qword_27DD4E0C8, &qword_23147CD50);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v91 = MEMORY[0x277D84F90];
    v56 = v78;
    sub_231478498();
    sub_2314777C8();
    v53(v56, v49);
    sub_2313E937C(&v88, &qword_27DD4E0C8, &qword_23147CD50);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v91 = MEMORY[0x277D84F90];
    v57 = v77;
    sub_231478498();
    sub_2314777C8();
    v53(v57, v49);
    sub_2313E937C(&v88, &qword_27DD4E0C8, &qword_23147CD50);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v91 = MEMORY[0x277D84F90];
    v58 = v76;
    sub_231478498();
    sub_2314777C8();
    v80 = v55;
    v59 = v52;
    v53(v58, v49);
    sub_2313E937C(&v88, &qword_27DD4E0C8, &qword_23147CD50);
    *&v88 = MEMORY[0x277D84F90];
    v60 = v70;
    v61 = v68[0];
    sub_231478498();
    sub_2314777D8();
    v69(v60, v61);
    v62 = v73;
    sub_231477678();
    v63 = v75;
    sub_2314777B8();
    v82 = v59;
    (*(v74 + 8))(v62, v63);
    *&v88 = MEMORY[0x277D84F90];
    sub_231478498();
    sub_2314777D8();
    v69(v72, v61);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v91 = MEMORY[0x277D84F90];
    sub_231478498();
    sub_2314777C8();
    v53(v71, v81);
    sub_2313E937C(&v88, &qword_27DD4E0C8, &qword_23147CD50);
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v64 = sub_231477B68();
    __swift_project_value_buffer(v64, qword_280C3D970);
    v65 = sub_231477B58();
    v66 = sub_2314782A8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2313E1000, v65, v66, "finished createDB migration", v67, 2u);
      MEMORY[0x23192F1F0](v67, -1, -1);
    }
  }
}

uint64_t sub_23146855C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  sub_2314776C8();
  v8 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();
  sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
  v9 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_231477298();

  sub_2313E937C(v3, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();

  return sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
}

uint64_t sub_231468734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  sub_2314776C8();
  v8 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();
  sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
  v9 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_231477298();

  sub_2313E937C(v3, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477708();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_231477248();

  return sub_2313E937C(v7, &qword_27DD4E210, &qword_23147D3D8);
}

uint64_t sub_231468904(uint64_t a1)
{
  v27 = sub_231477758();
  v28 = *(v27 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = a1;
  sub_231477238();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  v15 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2314772B8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  v16 = v15;
  v26 = v15;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  v23 = v14;
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477748();
  sub_2314772C8();

  v25 = *(v28 + 8);
  v28 += 8;
  v17 = v27;
  v25(v4, v27);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477748();
  sub_2314772C8();

  v18 = v25;
  v25(v4, v17);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  v24 = v13;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477748();
  sub_2314772C8();

  v18(v4, v27);
  sub_2314776C8();
  v19 = v26;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v26);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477748();
  sub_2314772C8();

  v25(v4, v27);
  sub_2314776E8();
  v20 = v19;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  v21 = v24;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v24);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477708();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  sub_2314772D8();

  sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  sub_231477248();

  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  sub_2314776F8();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
  sub_231477248();
  sub_2313E937C(v8, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  sub_2314772D8();

  return sub_2313E937C(v12, &qword_27DD4E208, &qword_23147D3D0);
}

uint64_t sub_231469374()
{
  v0 = sub_231477758();
  v17 = *(v0 - 8);
  v18 = v0;
  v1 = *(v17 + 64);
  MEMORY[0x28223BE20](v0);
  v16 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_231477238();

  sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  v12 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_231477248();
  sub_2313E937C(v6, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2314772D8();

  sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_231477248();
  sub_2313E937C(v6, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2314772D8();

  sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
  v13 = v16;
  sub_231477748();
  sub_2314772C8();

  (*(v17 + 8))(v13, v18);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_231477248();
  sub_2313E937C(v6, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2314772D8();

  sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_231477248();
  sub_2313E937C(v6, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2314772D8();

  sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477708();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_231477248();
  sub_2313E937C(v6, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2314772D8();

  sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
  sub_231477708();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_231477248();
  sub_2313E937C(v6, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2314772D8();

  sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_231477258();
  return sub_2313E937C(v10, &qword_27DD4E208, &qword_23147D3D0);
}

uint64_t sub_231469910(uint64_t *a1)
{
  v1 = *a1;
  sub_231477488();
  sub_231477498();
}

uint64_t sub_231469974(uint64_t a1)
{
  v31 = a1;
  v1 = sub_231477758();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EBB0, &qword_231480020);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  sub_2314776F8();
  v30 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v30);
  sub_231477248();
  sub_2313E937C(v18, &qword_27DD4E210, &qword_23147D3D8);
  v35 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v35);
  sub_2314772D8();

  sub_2313E937C(v14, &qword_27DD4E208, &qword_23147D3D0);
  v28 = *MEMORY[0x277D0B800];
  v19 = v28;
  v20 = sub_231477778();
  v21 = *(v20 - 8);
  v27 = *(v21 + 104);
  v29 = v21 + 104;
  v27(v10, v19, v20);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
  sub_2314772A8();

  sub_2313E937C(v8, &qword_27DD4EBB0, &qword_231480020);
  sub_2313E937C(v10, &qword_27DD4EBB0, &qword_231480020);
  sub_2314776F8();
  v22 = v30;
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v30);
  sub_231477248();
  sub_2313E937C(v18, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v35);
  sub_2314772D8();

  sub_2313E937C(v14, &qword_27DD4E208, &qword_23147D3D0);
  v27(v10, v28, v20);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v20);
  sub_2314772A8();

  sub_2313E937C(v8, &qword_27DD4EBB0, &qword_231480020);
  sub_2313E937C(v10, &qword_27DD4EBB0, &qword_231480020);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v22);
  sub_231477248();
  sub_2313E937C(v18, &qword_27DD4E210, &qword_23147D3D8);
  v23 = v35;
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v35);
  sub_2314772D8();

  sub_2313E937C(v14, &qword_27DD4E208, &qword_23147D3D0);
  v24 = v32;
  sub_231477748();
  sub_2314772C8();

  (*(v33 + 8))(v24, v34);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v23);
  sub_231477228();
  return sub_2313E937C(v14, &qword_27DD4E208, &qword_23147D3D0);
}

void sub_231469F7C()
{
  v1 = sub_231476F78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_2314777A8();
  if (!v0)
  {
    v23 = v6;
    v26 = "connect(url:readonly:queue:)";
    v27 = v2;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v31 = MEMORY[0x277D84F90];
    v12 = sub_2313EB944(&qword_280C3C8F0, MEMORY[0x277D0B6B8]);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EBA8, &qword_231480018);
    sub_2313FD260(&qword_280C3C150, &qword_27DD4EBA8, &qword_231480018);
    v24 = v13;
    v25 = v12;
    sub_231478498();
    sub_2314777C8();
    v14 = *(v27 + 8);
    v15 = v11;
    v27 += 8;
    v16 = v14;
    v14(v15, v1);
    sub_2313E937C(&v28, &qword_27DD4E0C8, &qword_23147CD50);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v31 = MEMORY[0x277D84F90];
    sub_231478498();
    sub_2314777C8();
    v16(v9, v1);
    sub_2313E937C(&v28, &qword_27DD4E0C8, &qword_23147CD50);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v31 = MEMORY[0x277D84F90];
    v17 = v23;
    sub_231478498();
    sub_2314777C8();
    v16(v17, v1);
    sub_2313E937C(&v28, &qword_27DD4E0C8, &qword_23147CD50);
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v18 = sub_231477B68();
    __swift_project_value_buffer(v18, qword_280C3D970);
    v19 = sub_231477B58();
    v20 = sub_2314782A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2313E1000, v19, v20, "finished createDB migration for device sync", v21, 2u);
      MEMORY[0x23192F1F0](v21, -1, -1);
    }
  }
}

uint64_t sub_23146A4A8()
{
  v0 = sub_231477758();
  v16 = *(v0 - 8);
  v17 = v0;
  v1 = *(v16 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E208, &qword_23147D3D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E210, &qword_23147D3D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_2314776E8();
  v12 = sub_231477728();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_231477218();
  sub_2313E937C(v11, &qword_27DD4E210, &qword_23147D3D8);
  v13 = sub_231477798();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v7, &qword_27DD4E208, &qword_23147D3D0);
  v19 = MEMORY[0x277D839B0];
  v20 = MEMORY[0x277D0B850];
  LOBYTE(v18[0]) = 1;
  sub_2314772E8();

  __swift_destroy_boxed_opaque_existential_0(v18);
  sub_2314776F8();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_231477218();
  sub_2313E937C(v11, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v7, &qword_27DD4E208, &qword_23147D3D0);
  v19 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277D0B868];
  v18[0] = 0;
  sub_2314772E8();

  __swift_destroy_boxed_opaque_existential_0(v18);
  sub_2314776C8();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_231477218();
  sub_2313E937C(v11, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v7, &qword_27DD4E208, &qword_23147D3D0);
  v19 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D0B840];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_2314772E8();

  __swift_destroy_boxed_opaque_existential_0(v18);
  sub_231477748();
  sub_2314772C8();

  (*(v16 + 8))(v3, v17);
  sub_2314776F8();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_231477218();
  sub_2313E937C(v11, &qword_27DD4E210, &qword_23147D3D8);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  sub_2314772D8();

  sub_2313E937C(v7, &qword_27DD4E208, &qword_23147D3D0);
  v20 = MEMORY[0x277D0B868];
  v19 = MEMORY[0x277D83B88];
  v18[0] = 0;
  sub_2314772E8();

  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_23146A9A8()
{
  v1 = sub_231476E58();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_231477048();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = type metadata accessor for DBOpenError();
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v25 = (v24 - v23);
  sub_23144724C(v0, v24 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D8D0, &qword_231479558);
    return sub_231477EB8();
  }

  else
  {
    (*(v13 + 32))(v18, v25, v10);
    sub_231477038();
    v26 = sub_231476DD8();
    (*(v4 + 8))(v9, v1);
    (*(v13 + 8))(v18, v10);
  }

  return v26;
}

unint64_t sub_23146AC34()
{
  result = sub_231477048();
  if (v1 <= 0x3F)
  {
    result = sub_23146ACA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23146ACA8()
{
  result = qword_280C3D6E8;
  if (!qword_280C3D6E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280C3D6E8);
  }

  return result;
}

uint64_t sub_23146AD04(uint64_t a1)
{
  result = sub_2313EB944(&qword_27DD4EBC0, type metadata accessor for DBOpenError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23146ADB4()
{
  result = type metadata accessor for _Entity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DonorStream(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_23146AF80()
{
  sub_231476CA8();
  if (v0 <= 0x3F)
  {
    sub_2314050B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23146B0E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
              if (v11 || (sub_2314787C8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_2314787C8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
                  if (v13 || (sub_2314787C8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                    if (v14 || (sub_2314787C8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                      if (v15 || (sub_2314787C8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
                        if (v16 || (sub_2314787C8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361;
                          if (v17 || (sub_2314787C8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                            if (v18 || (sub_2314787C8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                              if (v19 || (sub_2314787C8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_2314787C8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

uint64_t sub_23146B5C4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x656369766564;
      goto LABEL_6;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      v3 = 0x656C646E7562;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 5:
      result = 0x727453726F6E6F64;
      break;
    case 6:
      result = 0x6574616E6F447369;
      break;
    case 7:
      result = 0x6F69746365726964;
      break;
    case 8:
      result = 0x676E696C646E6168;
      break;
    case 9:
      result = 0x7461447472617473;
      break;
    case 10:
      result = 0x6E6F697461727564;
      break;
    case 11:
      result = 0x73646C656966;
      break;
    case 12:
      result = 0x48746E65746E6F63;
      break;
    case 13:
      result = 0x6C61636F4C7369;
      break;
    case 14:
      result = 0x6C50656369766564;
      break;
    case 15:
      result = 0x616E6F4472657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23146B7A0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC98, &qword_231480A00);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_29_5();
  sub_231471598();
  OUTLINED_FUNCTION_42_1();
  v9 = *v0;
  v10 = v0[1];
  sub_231478718();
  if (!v1)
  {
    v11 = v0[2];
    v12 = v0[3];
    OUTLINED_FUNCTION_2_23(1);
    sub_231478718();
    v13 = v0[4];
    v14 = v0[5];
    OUTLINED_FUNCTION_2_23(2);
    sub_231478718();
    v15 = v0[6];
    v16 = v0[7];
    OUTLINED_FUNCTION_2_23(3);
    sub_231478718();
    v17 = v0[8];
    v18 = v0[9];
    OUTLINED_FUNCTION_2_23(4);
    sub_231478718();
    v35 = *(v0 + 80);
    sub_23141EE68();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    v19 = *(v0 + 81);
    OUTLINED_FUNCTION_1_24(6);
    sub_231478728();
    v20 = v0[11];
    OUTLINED_FUNCTION_1_24(7);
    sub_231478738();
    v21 = v0[12];
    OUTLINED_FUNCTION_1_24(8);
    sub_231478738();
    v22 = type metadata accessor for _NewInteraction(0);
    v23 = v22[13];
    sub_231476CA8();
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v24, v25);
    OUTLINED_FUNCTION_40_1();
    v26 = *(v0 + v22[14]);
    OUTLINED_FUNCTION_1_24(10);
    sub_231478738();
    v27 = (v0 + v22[15]);
    v28 = *v27;
    v29 = v27[1];
    OUTLINED_FUNCTION_2_23(11);
    sub_231478708();
    v30 = *(v0 + v22[16]);
    OUTLINED_FUNCTION_1_24(12);
    sub_231478738();
    v31 = *(v0 + v22[17]);
    OUTLINED_FUNCTION_1_24(13);
    sub_231478728();
    v32 = *(v0 + v22[18]);
    OUTLINED_FUNCTION_1_24(14);
    sub_231478738();
    v33 = *(v0 + v22[19]);
    OUTLINED_FUNCTION_1_24(15);
    sub_231478738();
  }

  return (*(v5 + 8))(v2, v3);
}

void sub_23146BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_64();
  v16 = v15;
  v18 = v17;
  v55 = sub_231476CA8();
  v19 = OUTLINED_FUNCTION_4(v55);
  v53 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC90, &qword_2314809F8);
  OUTLINED_FUNCTION_4(v52);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_32_3();
  v54 = type metadata accessor for _NewInteraction(v29);
  v30 = OUTLINED_FUNCTION_3(v54);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2();
  v56 = v34 - v33;
  v35 = v16[3];
  v36 = v16[4];
  OUTLINED_FUNCTION_43_3(v16, v35);
  sub_231471598();
  OUTLINED_FUNCTION_53_2();
  if (v14)
  {
    OUTLINED_FUNCTION_25_6();
    __swift_destroy_boxed_opaque_existential_0(v16);
    if (v36)
    {
      v37 = *(v56 + 56);

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v13)
    {
LABEL_5:
      if (!v35)
      {
LABEL_7:

        goto LABEL_8;
      }

LABEL_6:
      (*(v53 + 8))(v56 + v54[13], v55);
      goto LABEL_7;
    }

    v38 = *(v56 + 72);

    if ((v35 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_41_3();
  *v56 = sub_231478688();
  *(v56 + 8) = v39;
  OUTLINED_FUNCTION_4_16(1);
  *(v56 + 16) = sub_231478688();
  *(v56 + 24) = v40;
  OUTLINED_FUNCTION_4_16(2);
  *(v56 + 32) = sub_231478688();
  *(v56 + 40) = v41;
  OUTLINED_FUNCTION_4_16(3);
  *(v56 + 48) = sub_231478688();
  *(v56 + 56) = v42;
  OUTLINED_FUNCTION_4_16(4);
  *(v56 + 64) = sub_231478688();
  *(v56 + 72) = v43;
  sub_23141F114();
  OUTLINED_FUNCTION_47_2();
  sub_2314786B8();
  *(v56 + 80) = a13;
  OUTLINED_FUNCTION_4_16(6);
  *(v56 + 81) = sub_231478698() & 1;
  OUTLINED_FUNCTION_4_16(7);
  *(v56 + 88) = sub_2314786A8();
  OUTLINED_FUNCTION_4_16(8);
  *(v56 + 96) = sub_2314786A8();
  OUTLINED_FUNCTION_0_21();
  sub_23146C478(v44, v45);
  OUTLINED_FUNCTION_47_2();
  sub_2314786B8();
  (*(v53 + 32))(v56 + v54[13], v25, v55);
  OUTLINED_FUNCTION_5_20(10);
  *(v56 + v54[14]) = sub_2314786A8();
  OUTLINED_FUNCTION_5_20(11);
  v46 = sub_231478668();
  v47 = (v56 + v54[15]);
  *v47 = v46;
  v47[1] = v48;
  OUTLINED_FUNCTION_5_20(12);
  *(v56 + v54[16]) = sub_2314786A8();
  OUTLINED_FUNCTION_5_20(13);
  *(v56 + v54[17]) = sub_231478698() & 1;
  OUTLINED_FUNCTION_5_20(14);
  *(v56 + v54[18]) = sub_2314786A8();
  OUTLINED_FUNCTION_5_20(15);
  v49 = sub_2314786A8();
  v50 = OUTLINED_FUNCTION_31_2();
  v51(v50);
  *(v56 + v54[19]) = v49;
  sub_231401610(v56, v18, type metadata accessor for _NewInteraction);
  __swift_destroy_boxed_opaque_existential_0(v16);
  sub_2314016C4(v56, type metadata accessor for _NewInteraction);
LABEL_8:
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23146C0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146B0E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23146C0E0(uint64_t a1)
{
  v2 = sub_231471598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23146C11C(uint64_t a1)
{
  v2 = sub_231471598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23146C188()
{
  sub_23146C478(&qword_280C3C588, type metadata accessor for _NewInteraction);

  return sub_231477428();
}

uint64_t sub_23146C30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_280C3C570, type metadata accessor for _NewInteraction);

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_23146C478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23146C558()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECA0, &unk_231480A08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECB0, &unk_231480A20);
  __swift_allocate_value_buffer(v4, qword_27DD5AC68);
  __swift_project_value_buffer(v4, qword_27DD5AC68);
  type metadata accessor for _Interaction(0);
  v5 = sub_231476D98();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  sub_23146C478(&qword_280C3C5E0, type metadata accessor for _Interaction);
  sub_231444824();
  sub_231476F18();
  return sub_2314715EC(v3);
}

uint64_t sub_23146C6A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E130, &qword_23147CDC0);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECB0, &unk_231480A20);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E148, &qword_23147CDE8);
  __swift_allocate_value_buffer(v15, qword_27DD5AC80);
  v19[1] = __swift_project_value_buffer(v15, qword_27DD5AC80);
  type metadata accessor for _Interaction(0);
  type metadata accessor for _Entity(0);
  if (qword_27DD4D250 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_27DD5AC68);
  (*(v11 + 16))(v0, v16, v9);
  if (qword_280C3BD18 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_280C3D850);
  (*(v3 + 16))(v8, v17, v1);
  sub_23146C478(&qword_280C3C5E0, type metadata accessor for _Interaction);
  sub_2313ED944(&qword_27DD4ECB8, &qword_27DD4ECB0, &unk_231480A20);
  sub_2313ED944(&qword_280C3C0E0, &qword_27DD4E130, &qword_23147CDC0);
  sub_231476F28();
  (*(v3 + 8))(v8, v1);
  return (*(v11 + 8))(v0, v9);
}

uint64_t sub_23146C9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656369766564 && a2 == 0xE800000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
            if (v10 || (sub_2314787C8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
              if (v11 || (sub_2314787C8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
                if (v12 || (sub_2314787C8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                  if (v13 || (sub_2314787C8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
                    if (v14 || (sub_2314787C8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                      if (v15 || (sub_2314787C8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                        if (v16 || (sub_2314787C8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
                          if (v17 || (sub_2314787C8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361;
                            if (v18 || (sub_2314787C8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                              if (v19 || (sub_2314787C8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                                if (v20 || (sub_2314787C8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x7355646572616873 && a2 == 0xEC00000064497265;
                                  if (v21 || (sub_2314787C8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_2314787C8();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
}

uint64_t sub_23146CF4C(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      v3 = 0x656369766564;
      goto LABEL_15;
    case 3:
      result = 0x6E69616D6F64;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      v3 = 0x656C646E7562;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 6:
      result = 0x6574616E6F447369;
      break;
    case 7:
      result = 0x727453726F6E6F64;
      break;
    case 8:
      result = 0x6F69746365726964;
      break;
    case 9:
      result = 0x676E696C646E6168;
      break;
    case 10:
      result = 0x7461447472617473;
      break;
    case 11:
      result = 0x6E6F697461727564;
      break;
    case 12:
      result = 0x73646C656966;
      break;
    case 13:
      result = 0x48746E65746E6F63;
      break;
    case 14:
      result = 0x6C61636F4C7369;
      break;
    case 15:
      result = 0x6C50656369766564;
      break;
    case 16:
      result = 0x7355646572616873;
      break;
    case 17:
      result = 0x616E6F4472657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23146D15C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC48, &qword_2314809E0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_29_5();
  sub_2314714F0();
  OUTLINED_FUNCTION_42_1();
  v9 = *v0;
  OUTLINED_FUNCTION_7_6();
  sub_231478768();
  if (!v1)
  {
    v10 = v0[1];
    v11 = v0[2];
    OUTLINED_FUNCTION_2_23(1);
    sub_231478718();
    v12 = v0[3];
    v13 = v0[4];
    OUTLINED_FUNCTION_2_23(2);
    sub_231478718();
    v14 = v0[5];
    v15 = v0[6];
    OUTLINED_FUNCTION_2_23(3);
    sub_231478718();
    v16 = v0[7];
    v17 = v0[8];
    OUTLINED_FUNCTION_2_23(4);
    sub_231478718();
    v18 = v0[9];
    v19 = v0[10];
    OUTLINED_FUNCTION_2_23(5);
    sub_231478718();
    v20 = *(v0 + 88);
    OUTLINED_FUNCTION_1_24(6);
    sub_231478728();
    v39 = *(v0 + 89);
    sub_23141EE68();
    OUTLINED_FUNCTION_7_6();
    sub_231478748();
    v21 = v0[12];
    OUTLINED_FUNCTION_1_24(8);
    sub_231478738();
    v22 = v0[13];
    OUTLINED_FUNCTION_1_24(9);
    sub_231478738();
    v23 = type metadata accessor for _Interaction(0);
    v24 = v23[14];
    sub_231476CA8();
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v25, v26);
    OUTLINED_FUNCTION_40_1();
    v27 = *(v0 + v23[15]);
    OUTLINED_FUNCTION_1_24(11);
    sub_231478738();
    v28 = (v0 + v23[16]);
    v29 = *v28;
    v30 = v28[1];
    OUTLINED_FUNCTION_2_23(12);
    sub_231478708();
    v31 = *(v0 + v23[17]);
    OUTLINED_FUNCTION_1_24(13);
    sub_231478738();
    v32 = *(v0 + v23[18]);
    OUTLINED_FUNCTION_1_24(14);
    sub_231478728();
    v33 = *(v0 + v23[19]);
    OUTLINED_FUNCTION_1_24(15);
    sub_231478738();
    v34 = (v0 + v23[20]);
    v35 = *v34;
    v36 = v34[1];
    OUTLINED_FUNCTION_2_23(16);
    sub_231478718();
    v37 = *(v0 + v23[21]);
    OUTLINED_FUNCTION_1_24(17);
    sub_231478738();
  }

  return (*(v5 + 8))(v2, v3);
}

void sub_23146D474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_64();
  v16 = v15;
  v17 = sub_231476CA8();
  v18 = OUTLINED_FUNCTION_4(v17);
  v50 = v19;
  v51 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC40, &qword_2314809D8);
  OUTLINED_FUNCTION_4(v49);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v27);
  v28 = OUTLINED_FUNCTION_32_3();
  v53 = type metadata accessor for _Interaction(v28);
  v29 = OUTLINED_FUNCTION_3(v53);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_57_2();
  v32 = v16[4];
  v52 = v16;
  OUTLINED_FUNCTION_43_3(v16, v16[3]);
  sub_2314714F0();
  OUTLINED_FUNCTION_53_2();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    OUTLINED_FUNCTION_41_3();
    *v14 = sub_2314786C8();
    OUTLINED_FUNCTION_4_16(1);
    *(v14 + 8) = sub_231478688();
    *(v14 + 16) = v33;
    OUTLINED_FUNCTION_4_16(2);
    *(v14 + 24) = sub_231478688();
    *(v14 + 32) = v34;
    OUTLINED_FUNCTION_4_16(3);
    *(v14 + 40) = sub_231478688();
    *(v14 + 48) = v35;
    OUTLINED_FUNCTION_4_16(4);
    *(v14 + 56) = sub_231478688();
    *(v14 + 64) = v36;
    OUTLINED_FUNCTION_4_16(5);
    *(v14 + 72) = sub_231478688();
    *(v14 + 80) = v37;
    OUTLINED_FUNCTION_4_16(6);
    *(v14 + 88) = sub_231478698() & 1;
    sub_23141F114();
    OUTLINED_FUNCTION_47_2();
    sub_2314786B8();
    *(v14 + 89) = a13;
    OUTLINED_FUNCTION_4_16(8);
    *(v14 + 96) = sub_2314786A8();
    OUTLINED_FUNCTION_4_16(9);
    *(v14 + 104) = sub_2314786A8();
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v38, v39);
    sub_2314786B8();
    (*(v50 + 32))(v14 + v53[14], v24, v51);
    OUTLINED_FUNCTION_8_21(11);
    *(v14 + v53[15]) = sub_2314786A8();
    OUTLINED_FUNCTION_8_21(12);
    v40 = sub_231478668();
    v41 = (v14 + v53[16]);
    *v41 = v40;
    v41[1] = v42;
    *(v14 + v53[17]) = sub_2314786A8();
    OUTLINED_FUNCTION_8_21(14);
    *(v14 + v53[18]) = sub_231478698() & 1;
    OUTLINED_FUNCTION_8_21(15);
    *(v14 + v53[19]) = sub_2314786A8();
    OUTLINED_FUNCTION_8_21(16);
    v43 = sub_231478688();
    v44 = (v14 + v53[20]);
    *v44 = v43;
    v44[1] = v45;
    OUTLINED_FUNCTION_8_21(17);
    v46 = sub_2314786A8();
    v47 = OUTLINED_FUNCTION_21_9();
    v48(v47);
    *(v14 + v53[21]) = v46;
    sub_231401610(v14, 0, type metadata accessor for _Interaction);
    __swift_destroy_boxed_opaque_existential_0(v52);
    sub_2314016C4(v14, type metadata accessor for _Interaction);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_23146DB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146C9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23146DB40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23146CF44();
  *a1 = result;
  return result;
}

uint64_t sub_23146DB68(uint64_t a1)
{
  v2 = sub_2314714F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23146DBA4(uint64_t a1)
{
  v2 = sub_2314714F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23146DC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&unk_280C3BE68, type metadata accessor for _Interaction);

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_23146DCDC()
{
  sub_23146C478(&qword_27DD4EC50, type metadata accessor for _Interaction);

  return sub_231477428();
}

uint64_t sub_23146DE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_27DD4EC58, type metadata accessor for _Interaction);

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_23146DF44(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (sub_2314787C8() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for _NewEntity(0);
  v9 = *(v8 + 32);
  if ((sub_231476C68() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v8 + 36);

  return sub_231476C68();
}

uint64_t sub_23146E044(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F5473646C656966 && a2 == 0xEC000000736E656BLL;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
          {

            return 5;
          }

          else
          {
            v11 = sub_2314787C8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23146E23C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x73646C656966;
      break;
    case 3:
      result = 0x6F5473646C656966;
      break;
    case 4:
      v3 = 1634038371;
      goto LABEL_7;
    case 5:
      v3 = 1633972341;
LABEL_7:
      result = v3 | 0x4164657400000000;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23146E2D8()
{
  OUTLINED_FUNCTION_64();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC70, &qword_2314809F0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_29_5();
  sub_231471544();
  OUTLINED_FUNCTION_42_1();
  v10 = *v0;
  v11 = v0[1];
  OUTLINED_FUNCTION_37_3();
  sub_231478718();
  if (!v1)
  {
    v12 = v0[2];
    v13 = v0[3];
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    v14 = v0[4];
    v15 = v0[5];
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    v16 = v0[6];
    v17 = v0[7];
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    v18 = type metadata accessor for _NewEntity(0);
    OUTLINED_FUNCTION_54_2(v18);
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v19, v20);
    OUTLINED_FUNCTION_19_11();
    sub_231478748();
    v21 = *(v3 + 36);
    OUTLINED_FUNCTION_19_11();
    sub_231478748();
  }

  (*(v6 + 8))(v2, v4);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23146E4B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_231477F38();
  v4 = v0[2];
  v5 = v0[3];
  sub_231477F38();
  v6 = v0[4];
  v7 = v0[5];
  sub_231477F38();
  v8 = v0[6];
  v9 = v0[7];
  sub_231477F38();
  v10 = type metadata accessor for _NewEntity(0);
  v11 = *(v10 + 32);
  sub_231476CA8();
  OUTLINED_FUNCTION_0_21();
  sub_23146C478(v12, v13);
  sub_231477DF8();
  v14 = v1 + *(v10 + 36);
  return sub_231477DF8();
}

uint64_t sub_23146E584()
{
  sub_2314788E8();
  sub_23146E4B4();
  return sub_231478918();
}

void sub_23146E5C4()
{
  OUTLINED_FUNCTION_64();
  v3 = OUTLINED_FUNCTION_59_2(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v44 = v5;
  v45 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC60, &qword_2314809E8);
  OUTLINED_FUNCTION_4(v46);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_55_2();
  v47 = type metadata accessor for _NewEntity(v18);
  v19 = OUTLINED_FUNCTION_3(v47);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v24 = (v23 - v22);
  v25 = v0[3];
  v26 = v0[4];
  v48 = v0;
  OUTLINED_FUNCTION_43_3(v0, v25);
  sub_231471544();
  sub_231478948();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
    v40[1] = v10;
    v41 = v12;
    v42 = v14;
    OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_9_20();
    *v24 = sub_231478688();
    v24[1] = v27;
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_9_20();
    v24[2] = sub_231478688();
    v24[3] = v28;
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_9_20();
    v24[4] = sub_231478688();
    v24[5] = v29;
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_9_20();
    v24[6] = sub_231478688();
    v24[7] = v30;
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v31, v32);
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_27_6();
    sub_2314786B8();
    v33 = *(v44 + 32);
    v34 = OUTLINED_FUNCTION_45_2(*(v47 + 32));
    v41 = v35;
    v40[0] = v36;
    v36(v34);
    OUTLINED_FUNCTION_50_2();
    OUTLINED_FUNCTION_27_6();
    sub_2314786B8();
    v37 = OUTLINED_FUNCTION_17_8();
    v38(v37);
    v39 = OUTLINED_FUNCTION_45_2(*(v47 + 36));
    (v40[0])(v39);
    sub_231401610(v24, v43, type metadata accessor for _NewEntity);
    __swift_destroy_boxed_opaque_existential_0(v48);
    sub_2314016C4(v24, type metadata accessor for _NewEntity);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_23146EA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146E044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23146EA30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23146E234();
  *a1 = result;
  return result;
}

uint64_t sub_23146EA58(uint64_t a1)
{
  v2 = sub_231471544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23146EA94(uint64_t a1)
{
  v2 = sub_231471544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23146EB08()
{
  sub_2314788E8();
  sub_23146E4B4();
  return sub_231478918();
}

uint64_t sub_23146EB44()
{
  sub_23146C478(&qword_27DD4EC80, type metadata accessor for _NewEntity);

  return sub_231477428();
}

uint64_t sub_23146ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_27DD4EC88, type metadata accessor for _NewEntity);

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_23146EFE8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_23146F074()
{
  v0 = sub_231476E98();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_231476E88();
  qword_280C3D848 = result;
  return result;
}

uint64_t sub_23146F0C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_2314787C8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
        if (v8 || (sub_2314787C8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
          if (v9 || (sub_2314787C8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
          {

            return 5;
          }

          else
          {
            v11 = sub_2314787C8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23146F2B0(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    case 4:
      v3 = 1634038371;
      goto LABEL_7;
    case 5:
      v3 = 1633972341;
LABEL_7:
      result = v3 | 0x4164657400000000;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23146F340()
{
  OUTLINED_FUNCTION_64();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC20, &qword_2314809D0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_29_5();
  sub_231471448();
  OUTLINED_FUNCTION_42_1();
  v10 = *v0;
  sub_231478768();
  if (!v1)
  {
    v11 = v0[1];
    v12 = v0[2];
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    v13 = v0[3];
    v14 = v0[4];
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    v15 = v0[5];
    v16 = v0[6];
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_37_3();
    sub_231478718();
    v17 = type metadata accessor for _Entity(0);
    OUTLINED_FUNCTION_54_2(v17);
    OUTLINED_FUNCTION_0_21();
    sub_23146C478(v18, v19);
    OUTLINED_FUNCTION_19_11();
    sub_231478748();
    v20 = *(v3 + 36);
    OUTLINED_FUNCTION_19_11();
    sub_231478748();
  }

  (*(v6 + 8))(v2, v4);
  OUTLINED_FUNCTION_62();
}

void sub_23146F520()
{
  OUTLINED_FUNCTION_64();
  v3 = OUTLINED_FUNCTION_59_2(v2);
  v4 = OUTLINED_FUNCTION_4(v3);
  v46 = v5;
  v47 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC18, &qword_2314809C8);
  OUTLINED_FUNCTION_4(v45);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_55_2();
  v49 = type metadata accessor for _Entity(v16);
  v17 = OUTLINED_FUNCTION_3(v49);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v22 = (v21 - v20);
  v23 = v0[3];
  v24 = v0[4];
  v48 = v0;
  OUTLINED_FUNCTION_43_3(v0, v23);
  sub_231471448();
  sub_231478948();
  if (v1)
  {
    OUTLINED_FUNCTION_25_6();
    __swift_destroy_boxed_opaque_existential_0(v48);
    if (v23)
    {
      v25 = v22[2];

      if (v0)
      {
        goto LABEL_5;
      }
    }

    else if (v0)
    {
LABEL_5:
      v26 = v22[4];

      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (!v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    v27 = v22[6];

    goto LABEL_10;
  }

  v42 = v10;
  v43 = v12;
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_9_20();
  *v22 = sub_2314786C8();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_9_20();
  v22[1] = sub_231478688();
  v22[2] = v28;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_9_20();
  v22[3] = sub_231478688();
  v22[4] = v29;
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_9_20();
  v22[5] = sub_231478688();
  v22[6] = v30;
  OUTLINED_FUNCTION_0_21();
  sub_23146C478(v31, v32);
  v33 = v43;
  OUTLINED_FUNCTION_27_6();
  sub_2314786B8();
  v34 = *(v49 + 32);
  v35 = *(v46 + 32);
  v41 = v22;
  v43 = v35;
  (v35)(v22 + v34, v33, v47);
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_27_6();
  sub_2314786B8();
  v36 = OUTLINED_FUNCTION_48_2();
  v37(v36);
  v38 = v41;
  v39 = OUTLINED_FUNCTION_45_2(*(v49 + 36));
  v43(v39);
  sub_231401610(v38, v44, type metadata accessor for _Entity);
  __swift_destroy_boxed_opaque_existential_0(v48);
  sub_2314016C4(v38, type metadata accessor for _Entity);
LABEL_10:
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23146F974()
{
  v0 = sub_2314770D8();
  __swift_allocate_value_buffer(v0, qword_27DD5ACC8);
  v1 = OUTLINED_FUNCTION_17();
  __swift_project_value_buffer(v1, v2);
  if (qword_280C3BC68 != -1)
  {
    OUTLINED_FUNCTION_34_2();
  }

  v4[3] = sub_2314776A8();
  v4[4] = MEMORY[0x277D0B7F8];
  __swift_allocate_boxed_opaque_existential_1(v4);

  sub_231477698();
  sub_231476EA8();

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_23146FA68(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2314770D8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_280C3BC68 != -1)
  {
    OUTLINED_FUNCTION_34_2();
  }

  v5[3] = sub_2314776A8();
  v5[4] = MEMORY[0x277D0B7F8];
  __swift_allocate_boxed_opaque_existential_1(v5);

  sub_2314776B8();
  sub_231476EA8();

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_23146FB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146F0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23146FB7C(uint64_t a1)
{
  v2 = sub_231471448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23146FBB8(uint64_t a1)
{
  v2 = sub_231471448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23146FC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_280C3BC40, type metadata accessor for _Entity);

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_23146FCF0()
{
  sub_23146C478(&qword_27DD4EC28, type metadata accessor for _Entity);

  return sub_231477428();
}

uint64_t sub_23146FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_27DD4EC30, type metadata accessor for _Entity);

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_23146FF30@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_23146FFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000231481FB0 == a2;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F52797469746E65 && a2 == 0xEB00000000646977;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2314700F8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6F52797469746E65;
  }

  return 0x6574656D61726170;
}

void sub_231470160()
{
  OUTLINED_FUNCTION_64();
  v14[0] = v2;
  v14[1] = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED00, &qword_231481160);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  v13 = v4[4];
  OUTLINED_FUNCTION_43_3(v4, v4[3]);
  sub_231472004();
  sub_231478968();
  sub_231478768();
  if (!v0)
  {
    sub_231478768();
    OUTLINED_FUNCTION_36_3();
    sub_231478718();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_62();
}

void sub_2314702DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECF8, &qword_231481158);
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = v24[4];
  OUTLINED_FUNCTION_43_3(v24, v24[3]);
  sub_231472004();
  sub_231478948();
  if (!v20)
  {
    OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_49_2();
    sub_2314786C8();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_49_2();
    sub_2314786C8();
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_49_2();
    sub_231478688();
    (*(v27 + 8))(v32, v25);
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_23147046C()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECA0, &unk_231480A08) - 8) + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E130, &qword_23147CDC0);
  __swift_allocate_value_buffer(v4, qword_280C3D850);
  __swift_project_value_buffer(v4, qword_280C3D850);
  type metadata accessor for _Entity(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECA8, &qword_231480A18);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231479580;
  if (qword_280C3BD28 != -1)
  {
    swift_once();
  }

  v6 = sub_2314776A8();
  v7 = __swift_project_value_buffer(v6, qword_280C3D880);
  v8 = MEMORY[0x277D0B7E0];
  *(v5 + 56) = v6;
  *(v5 + 64) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  sub_231476DA8();
  v10 = sub_231476D98();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  sub_231444824();
  OUTLINED_FUNCTION_28_7();
  sub_23146C478(v11, v12);
  sub_231476F38();
  return sub_2314715EC(v3);
}

uint64_t sub_231470678()
{
  v0 = sub_2314776A8();
  __swift_allocate_value_buffer(v0, qword_280C3D868);
  v1 = OUTLINED_FUNCTION_17();
  __swift_project_value_buffer(v1, v2);
  return sub_2314776B8();
}

uint64_t sub_2314706D8()
{
  v0 = sub_2314776A8();
  __swift_allocate_value_buffer(v0, qword_280C3D880);
  v1 = OUTLINED_FUNCTION_17();
  __swift_project_value_buffer(v1, v2);
  return sub_2314776B8();
}

uint64_t sub_231470748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23146FFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231470770(uint64_t a1)
{
  v2 = sub_231472004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314707AC(uint64_t a1)
{
  v2 = sub_231472004();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_231470818()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_231470160();
}

uint64_t sub_231470838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231472058();

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_23147089C()
{
  sub_23141F970();

  return sub_231477428();
}

uint64_t sub_231470990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2314720AC();

  return MEMORY[0x282162828](a1, a2, a3, v6);
}

uint64_t sub_2314709E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000231481FB0 == a2;
  if (v3 || (sub_2314787C8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_2314787C8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2314787C8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_231470B04(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0x797469746E65;
}

void sub_231470B60()
{
  OUTLINED_FUNCTION_64();
  v3 = v2;
  v25 = v4;
  v26 = type metadata accessor for _Entity(0);
  v5 = OUTLINED_FUNCTION_3(v26);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_57_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EC10, &qword_2314809C0);
  OUTLINED_FUNCTION_4(v27);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_32_3();
  v12 = type metadata accessor for _InteractionWithEntity(v11);
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v18 = (v17 - v16);
  v19 = v3[4];
  OUTLINED_FUNCTION_43_3(v3, v3[3]);
  sub_231471390();
  sub_231478948();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    OUTLINED_FUNCTION_41_3();
    *v18 = sub_2314786C8();
    OUTLINED_FUNCTION_33_3();
    v18[1] = sub_231478688();
    v18[2] = v20;
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_28_7();
    sub_23146C478(v21, v22);
    sub_2314786B8();
    v23 = OUTLINED_FUNCTION_46_2();
    v24(v23);
    sub_2314713E4(v1, v18 + *(v12 + 24));
    sub_231401610(v18, v25, type metadata accessor for _InteractionWithEntity);
    __swift_destroy_boxed_opaque_existential_0(v3);
    sub_2314016C4(v18, type metadata accessor for _InteractionWithEntity);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_231470E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314709E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231470E6C(uint64_t a1)
{
  v2 = sub_231471390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231470EA8(uint64_t a1)
{
  v2 = sub_231471390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231470EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23146C478(&qword_280C3BCB8, type metadata accessor for _InteractionWithEntity);

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_231470FAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23146B0B0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_231471028(uint64_t a1, uint64_t a2)
{
  v4 = sub_23141EE68();
  v5 = sub_2313F89D8();
  v6 = MEMORY[0x277D0B868];

  return MEMORY[0x282162A58](a1, a2, v4, v5, v6);
}

uint64_t sub_231471098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23141F114();
  v7 = sub_2313F89D8();
  v8 = MEMORY[0x277D0B868];

  return MEMORY[0x282162A60](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_231471110(uint64_t a1)
{
  v2 = sub_23147149C();

  return MEMORY[0x282162A40](a1, v2);
}

uint64_t sub_23147115C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23147149C();

  return MEMORY[0x282162A50](a1, a2, a3, v6);
}

unint64_t sub_2314711B4()
{
  result = qword_280C3C648[0];
  if (!qword_280C3C648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3C648);
  }

  return result;
}

unint64_t sub_23147120C()
{
  result = qword_280C3C640;
  if (!qword_280C3C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C640);
  }

  return result;
}

unint64_t sub_231471264()
{
  result = qword_27DD4EBF8;
  if (!qword_27DD4EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EBF8);
  }

  return result;
}

unint64_t sub_231471390()
{
  result = qword_280C3BCD8;
  if (!qword_280C3BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCD8);
  }

  return result;
}

uint64_t sub_2314713E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Entity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231471448()
{
  result = qword_280C3BC80;
  if (!qword_280C3BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC80);
  }

  return result;
}

unint64_t sub_23147149C()
{
  result = qword_27DD4EC38;
  if (!qword_27DD4EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EC38);
  }

  return result;
}

unint64_t sub_2314714F0()
{
  result = qword_280C3BE90;
  if (!qword_280C3BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BE90);
  }

  return result;
}

unint64_t sub_231471544()
{
  result = qword_27DD4EC68;
  if (!qword_27DD4EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EC68);
  }

  return result;
}

unint64_t sub_231471598()
{
  result = qword_280C3C5B0;
  if (!qword_280C3C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5B0);
  }

  return result;
}

uint64_t sub_2314715EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ECA0, &unk_231480A08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for _NewInteraction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _Interaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _Interaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2314718B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_23147193C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231471A2C()
{
  result = qword_27DD4ECC0;
  if (!qword_27DD4ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECC0);
  }

  return result;
}

unint64_t sub_231471A84()
{
  result = qword_27DD4ECC8;
  if (!qword_27DD4ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECC8);
  }

  return result;
}

unint64_t sub_231471ADC()
{
  result = qword_27DD4ECD0;
  if (!qword_27DD4ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECD0);
  }

  return result;
}

unint64_t sub_231471B34()
{
  result = qword_27DD4ECD8;
  if (!qword_27DD4ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECD8);
  }

  return result;
}

unint64_t sub_231471B8C()
{
  result = qword_27DD4ECE0;
  if (!qword_27DD4ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECE0);
  }

  return result;
}

unint64_t sub_231471BE4()
{
  result = qword_280C3C478;
  if (!qword_280C3C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C478);
  }

  return result;
}

unint64_t sub_231471C40()
{
  result = qword_280C3C460;
  if (!qword_280C3C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C460);
  }

  return result;
}

unint64_t sub_231471C98()
{
  result = qword_280C3C5A0;
  if (!qword_280C3C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5A0);
  }

  return result;
}

unint64_t sub_231471CF0()
{
  result = qword_280C3C5A8;
  if (!qword_280C3C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5A8);
  }

  return result;
}

unint64_t sub_231471D48()
{
  result = qword_27DD4ECE8;
  if (!qword_27DD4ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECE8);
  }

  return result;
}

unint64_t sub_231471DA0()
{
  result = qword_27DD4ECF0;
  if (!qword_27DD4ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ECF0);
  }

  return result;
}

unint64_t sub_231471DF8()
{
  result = qword_280C3BE80;
  if (!qword_280C3BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BE80);
  }

  return result;
}

unint64_t sub_231471E50()
{
  result = qword_280C3BE88;
  if (!qword_280C3BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BE88);
  }

  return result;
}

unint64_t sub_231471EA8()
{
  result = qword_280C3BC70;
  if (!qword_280C3BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC70);
  }

  return result;
}

unint64_t sub_231471F00()
{
  result = qword_280C3BC78;
  if (!qword_280C3BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BC78);
  }

  return result;
}

unint64_t sub_231471F58()
{
  result = qword_280C3BCC8;
  if (!qword_280C3BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCC8);
  }

  return result;
}

unint64_t sub_231471FB0()
{
  result = qword_280C3BCD0;
  if (!qword_280C3BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3BCD0);
  }

  return result;
}

unint64_t sub_231472004()
{
  result = qword_280C3C498;
  if (!qword_280C3C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C498);
  }

  return result;
}

unint64_t sub_231472058()
{
  result = qword_27DD4ED08;
  if (!qword_27DD4ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED08);
  }

  return result;
}

unint64_t sub_2314720AC()
{
  result = qword_280C3C458;
  if (!qword_280C3C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C458);
  }

  return result;
}

_BYTE *sub_231472100(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2314721E0()
{
  result = qword_27DD4ED10;
  if (!qword_27DD4ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED10);
  }

  return result;
}

unint64_t sub_231472238()
{
  result = qword_280C3C488;
  if (!qword_280C3C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C488);
  }

  return result;
}

unint64_t sub_231472290()
{
  result = qword_280C3C490;
  if (!qword_280C3C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C490);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_2()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_231478748();
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  *(v1 - 69) = 4;

  return sub_231476CA8();
}

uint64_t sub_2314724A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F98];
  v4 = a1 + *(type metadata accessor for Entity() + 28);
  sub_231476C98();
  v5 = sub_231414BC8(v2, &selRef_identifier);
  if (!v6)
  {
    sub_2313F17E0();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    return sub_2313F09B4(a1);
  }

  v7 = v5;
  v8 = v6;
  v39 = a1;
  sub_2314784E8();

  MEMORY[0x23192E060](v7, v8);

  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x8000000231483F30;
  strcpy((a1 + 16), "GetSuggestions");
  *(a1 + 31) = -18;
  result = sub_2314728A4(v2);
  if (result)
  {
    v10 = result;
    v37 = sub_231477DC8();
    v42 = sub_2313F3038(v10);
    for (i = 0; ; ++i)
    {
      while (1)
      {
        if (v42 == i)
        {

          v34 = *(v39 + 32);
          swift_isUniquelyReferenced_nonNull_native();
          v41 = *(v39 + 32);
          result = sub_2313F1184(v37, 0, 5, 0x6574656D61726170, 0xEA00000000007372);
          *(v39 + 32) = v41;
          return result;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23192E5D0](i, v10);
        }

        else
        {
          if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v10 + 8 * i + 32);
        }

        v13 = v12;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          result = sub_231478888();
          __break(1u);
          return result;
        }

        v14 = sub_231414BC8(v12, &selRef_key);
        if (v15)
        {
          break;
        }

LABEL_12:

        ++i;
      }

      v16 = v14;
      v17 = v15;
      v18 = sub_231414BC8(v13, &selRef_value);
      if (!v19)
      {

        goto LABEL_12;
      }

      v20 = v18;
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v40 = v37;
      v36 = sub_2313F0604();
      v22 = *(v37 + 16);
      v38 = v23;
      if (__OFADD__(v22, (v23 & 1) == 0))
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD80, &qword_23147BB30);
      if (sub_2314785F8())
      {
        v36 = sub_2313F0604();
        if ((v38 & 1) != (v24 & 1))
        {
          goto LABEL_30;
        }

        if (v38)
        {
LABEL_17:

          v37 = v40;
          v25 = v40[7] + 24 * v36;
          v26 = *v25;
          v27 = *(v25 + 8);
          *v25 = v20;
          *(v25 + 8) = v21;
          v28 = *(v25 + 16);
          *(v25 + 16) = 3;
          sub_231403090(v26, v27, v28);

          continue;
        }
      }

      else if (v38)
      {
        goto LABEL_17;
      }

      v40[(v36 >> 6) + 8] |= 1 << v36;
      v29 = (v40[6] + 16 * v36);
      *v29 = v16;
      v29[1] = v17;
      v30 = v40[7] + 24 * v36;
      *v30 = v20;
      *(v30 + 8) = v21;
      *(v30 + 16) = 3;

      v31 = v40[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_29;
      }

      v37 = v40;
      v40[2] = v33;
    }
  }

  return result;
}

uint64_t sub_2314728A4(void *a1)
{
  v1 = [a1 parameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231477AE8();
  v3 = sub_231478128();

  return v3;
}

void UserDonator.type.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = v2 >= 3;
  v4 = 0x30200u >> (8 * v2);
  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  *a1 = v4;
}

uint64_t static UserDonator.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (!v5)
    {
      sub_2313EADE8(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        sub_2313EADE8(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_18:
        sub_2313EADE8(v6, v7);
        return 1;
      }
    }

    else if (v5 >= 3)
    {
      v17 = *a1;
      if (v2 != v4 || v3 != v5)
      {
        v19 = sub_2314787C8();
        v20 = OUTLINED_FUNCTION_6_16();
        sub_2313E6C34(v20, v21);
        v22 = OUTLINED_FUNCTION_4_17();
        sub_2313E6C34(v22, v23);
        v24 = OUTLINED_FUNCTION_4_17();
        sub_2313EADE8(v24, v25);
        v26 = OUTLINED_FUNCTION_6_16();
        sub_2313EADE8(v26, v27);
        return v19 & 1;
      }

      sub_2313E6C34(v17, v3);
      v29 = OUTLINED_FUNCTION_4_17();
      sub_2313E6C34(v29, v30);
      v31 = OUTLINED_FUNCTION_4_17();
      sub_2313EADE8(v31, v32);
      v6 = OUTLINED_FUNCTION_4_17();
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v5 != 1)
  {
LABEL_11:
    v9 = OUTLINED_FUNCTION_6_16();
    sub_2313E6C34(v9, v10);
    v11 = OUTLINED_FUNCTION_4_17();
    sub_2313E6C34(v11, v12);
    v13 = OUTLINED_FUNCTION_4_17();
    sub_2313EADE8(v13, v14);
    v15 = OUTLINED_FUNCTION_6_16();
    sub_2313EADE8(v15, v16);
    return 0;
  }

  v8 = 1;
  sub_2313EADE8(*a1, 1uLL);
  sub_2313EADE8(v4, 1uLL);
  return v8;
}

SiriRemembers::UserDonatorType_optional __swiftcall UserDonatorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_231472A94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7355646572616873 && a2 == 0xEC00000064497265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2314787C8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231472B30(uint64_t a1)
{
  v2 = sub_2313F8AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472B6C(uint64_t a1)
{
  v2 = sub_2313F8AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472BA8(uint64_t a1)
{
  v2 = sub_2313F8E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472BE4(uint64_t a1)
{
  v2 = sub_2313F8E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231472A94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231472C50(uint64_t a1)
{
  v2 = sub_231473224();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472C8C(uint64_t a1)
{
  v2 = sub_231473224();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472CC8(uint64_t a1)
{
  v2 = sub_231473278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472D04(uint64_t a1)
{
  v2 = sub_231473278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231472D40(uint64_t a1)
{
  v2 = sub_2314731D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231472D7C(uint64_t a1)
{
  v2 = sub_2314731D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserDonator.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED18, &qword_231481280);
  v5 = OUTLINED_FUNCTION_4(v4);
  v57 = v6;
  v58 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  v56 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED20, &qword_231481288);
  v12 = OUTLINED_FUNCTION_4(v11);
  v54 = v13;
  v55 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13();
  v51 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED28, &qword_231481290);
  v19 = OUTLINED_FUNCTION_4(v18);
  v52 = v20;
  v53 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED30, &qword_231481298);
  OUTLINED_FUNCTION_4(v26);
  v50 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v30);
  v32 = &v49 - v31;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4ED38, &qword_2314812A0);
  OUTLINED_FUNCTION_4(v59);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v37);
  v39 = &v49 - v38;
  v40 = *v2;
  v41 = v2[1];
  v49 = v40;
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313F8AC4();
  sub_231478968();
  switch(v41)
  {
    case 0:
      v60 = 0;
      sub_231473278();
      OUTLINED_FUNCTION_5_21();
      (*(v50 + 8))(v32, v26);
      return (*(v34 + 8))(v39, v41);
    case 1:
      v62 = 2;
      sub_2314731D0();
      v43 = v51;
      OUTLINED_FUNCTION_5_21();
      v45 = v54;
      v44 = v55;
      goto LABEL_6;
    case 2:
      v63 = 3;
      sub_2313F8E2C();
      v43 = v56;
      OUTLINED_FUNCTION_5_21();
      v45 = v57;
      v44 = v58;
LABEL_6:
      (*(v45 + 8))(v43, v44);
      return (*(v34 + 8))(v39, v41);
  }

  v61 = 1;
  sub_231473224();
  v47 = v59;
  sub_2314786F8();
  v48 = v53;
  sub_231478718();
  (*(v52 + 8))(v25, v48);
  return (*(v34 + 8))(v39, v47);
}

unint64_t sub_2314731D0()
{
  result = qword_27DD4ED50;
  if (!qword_27DD4ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED50);
  }

  return result;
}

unint64_t sub_231473224()
{
  result = qword_27DD4ED58;
  if (!qword_27DD4ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED58);
  }

  return result;
}

unint64_t sub_231473278()
{
  result = qword_27DD4ED60;
  if (!qword_27DD4ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED60);
  }

  return result;
}

uint64_t sub_2314732F0@<X0>(uint64_t *a1@<X8>)
{
  result = UserDonatorType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2314733CC()
{
  result = qword_27DD4ED90;
  if (!qword_27DD4ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED90);
  }

  return result;
}

uint64_t sub_231473420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23147347C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserDonator.RecognizedUserCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2314735BC()
{
  result = qword_27DD4ED98;
  if (!qword_27DD4ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED98);
  }

  return result;
}

unint64_t sub_231473614()
{
  result = qword_27DD4EDA0;
  if (!qword_27DD4EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDA0);
  }

  return result;
}

unint64_t sub_23147366C()
{
  result = qword_27DD4EDA8;
  if (!qword_27DD4EDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDA8);
  }

  return result;
}

unint64_t sub_2314736C4()
{
  result = qword_27DD4EDB0;
  if (!qword_27DD4EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDB0);
  }

  return result;
}

unint64_t sub_23147371C()
{
  result = qword_27DD4EDB8;
  if (!qword_27DD4EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDB8);
  }

  return result;
}

unint64_t sub_231473774()
{
  result = qword_27DD4EDC0;
  if (!qword_27DD4EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDC0);
  }

  return result;
}

unint64_t sub_2314737CC()
{
  result = qword_27DD4EDC8;
  if (!qword_27DD4EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDC8);
  }

  return result;
}

unint64_t sub_231473824()
{
  result = qword_27DD4EDD0;
  if (!qword_27DD4EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDD0);
  }

  return result;
}

unint64_t sub_23147387C()
{
  result = qword_27DD4EDD8;
  if (!qword_27DD4EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDD8);
  }

  return result;
}

unint64_t sub_2314738D4()
{
  result = qword_27DD4EDE0;
  if (!qword_27DD4EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDE0);
  }

  return result;
}

unint64_t sub_23147392C()
{
  result = qword_27DD4EDE8;
  if (!qword_27DD4EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDE8);
  }

  return result;
}

unint64_t sub_231473984()
{
  result = qword_27DD4EDF0;
  if (!qword_27DD4EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDF0);
  }

  return result;
}

unint64_t sub_2314739D8()
{
  result = qword_27DD4EDF8;
  if (!qword_27DD4EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EDF8);
  }

  return result;
}

uint64_t sub_231473A2C()
{
  type metadata accessor for SiriRemembersDonationFromAppIntentsListener();
  swift_allocObject();
  result = sub_231473A68();
  qword_280C3C038 = result;
  return result;
}

uint64_t sub_231473A68()
{
  v1 = v0;
  v16[0] = sub_231478308();
  v2 = *(v16[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2314782F8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_231477D08();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v11 = [v10 Intents];
  swift_unknownObjectRelease();
  v12 = [v11 Transcript];
  swift_unknownObjectRelease();
  *(v0 + 16) = v12;
  sub_23145C018();
  sub_231477CC8();
  v16[1] = MEMORY[0x277D84F90];
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v16[0]);
  v13 = sub_231478338();
  v14 = objc_allocWithZone(MEMORY[0x277CF1918]);
  *(v1 + 24) = sub_2314747E4(0xD00000000000002DLL, 0x8000000231483FD0, v13);
  return v1;
}

void sub_231473D1C()
{
  v1 = v0;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);
  v3 = sub_231477B58();
  v4 = sub_2314782A8();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_102() = 0;
    OUTLINED_FUNCTION_8(&dword_2313E1000, v5, v6, "SiriRemembersDonationFromAppIntentsListener: listening on stream");
    OUTLINED_FUNCTION_16_2();
  }

  v7 = [*(v1 + 16) DSLPublisher];
  v8 = [v7 subscribeOn_];

  v16 = sub_231474A44;
  v17 = v1;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_23145EC44;
  v15 = &block_descriptor_8;
  v9 = _Block_copy(&v12);

  v16 = sub_231474A5C;
  v17 = v1;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2314620E8;
  v15 = &block_descriptor_11;
  v10 = _Block_copy(&v12);

  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);
}

void sub_231473F38()
{
  v1 = v0;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);
  v3 = sub_231477B58();
  v4 = sub_2314782A8();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_102() = 0;
    OUTLINED_FUNCTION_8(&dword_2313E1000, v5, v6, "SiriRemembersDonationFromAppIntentsListener: no longer listening");
    OUTLINED_FUNCTION_16_2();
  }

  v7 = [*(v1 + 16) DSLPublisher];
  v8 = [v7 subscribeOn_];

  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_23145EC44;
  v15 = &block_descriptor_7;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2314620E8;
  v15 = &block_descriptor_5;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);
  [v11 cancel];
}

void sub_231474134(void *a1)
{
  if ([a1 state])
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v1 = sub_231477B68();
    __swift_project_value_buffer(v1, qword_280C3D970);
    oslog = sub_231477B58();
    v2 = sub_2314782A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_102();
      *v3 = 0;
      v4 = "SiriRemembersDonationFromAppIntentsListener: failed";
LABEL_10:
      _os_log_impl(&dword_2313E1000, oslog, v2, v4, v3, 2u);
      OUTLINED_FUNCTION_16_2();
    }
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v5 = sub_231477B68();
    __swift_project_value_buffer(v5, qword_280C3D970);
    oslog = sub_231477B58();
    v2 = sub_2314782A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_102();
      *v3 = 0;
      v4 = "SiriRemembersDonationFromAppIntentsListener: successfully finished";
      goto LABEL_10;
    }
  }
}

void sub_231474278()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD40, &qword_23147B8C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  swift_unknownObjectRetain();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11 && (v12 = [v11 eventBody]) != 0)
  {
    v13 = v12;
    sub_23142CD10();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_231474848(v3);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v14 = sub_231477B68();
      __swift_project_value_buffer(v14, qword_280C3D970);
      v15 = v13;
      v16 = sub_231477B58();
      v17 = sub_2314782A8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v36 = v19;
        *v18 = 136315138;
        v20 = [v15 resolvedAction];
        if (v20 && (v21 = sub_2314748B0(v20), v22))
        {
          v23 = v22;
        }

        else
        {

          v23 = 0xE700000000000000;
          v21 = 0x6E776F6E6B6E75;
        }

        v34 = sub_2313EB684(v21, v23, &v36);

        *(v18 + 4) = v34;
        _os_log_impl(&dword_2313E1000, v16, v17, "SiriRemembersDonationFromAppIntentsListener: ignored event: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_231474920(v3, v10);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v24 = sub_231477B68();
      __swift_project_value_buffer(v24, qword_280C3D970);
      sub_231474984(v10, v8);
      v25 = sub_231477B58();
      v26 = sub_2314782A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v36 = v28;
        *v27 = 136315138;
        sub_23142C86C();
        v30 = v29;
        v32 = v31;
        sub_2314749E8(v8);
        v33 = sub_2313EB684(v30, v32, &v36);

        *(v27 + 4) = v33;
        _os_log_impl(&dword_2313E1000, v25, v26, "SiriRemembersDonationFromAppIntentsListener: received event: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_2314749E8(v8);
      }

      sub_2314749E8(v10);
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2314746EC(uint64_t (*a1)(void))
{
  if (qword_280C3C030 != -1)
  {
    swift_once();
  }

  return a1();
}

uint64_t SiriRemembersDonationFromAppIntentsListener.__deallocating_deinit()
{
  SiriRemembersDonationFromAppIntentsListener.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_2314747E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231477E58();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

uint64_t sub_231474848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD40, &qword_23147B8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314748B0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231477E68();

  return v3;
}

uint64_t sub_231474920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231474984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314749E8(uint64_t a1)
{
  v2 = type metadata accessor for SiriRemembersDonationFromAppIntentsTranscript();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for UnwrapError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_231474B38(uint64_t a1)
{
  result = sub_23141F91C();
  *(a1 + 8) = result;
  return result;
}

BOOL sub_231474B60()
{
  v0 = sub_231478638();

  return v0 != 0;
}

BOOL sub_231474BB8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231474B60();
  *a2 = result;
  return result;
}

void sub_231474BEC(uint64_t a1@<X8>)
{
  strcpy(a1, "unwrappedNil");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_231474C14()
{
  result = qword_27DD4EE08;
  if (!qword_27DD4EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EE08);
  }

  return result;
}

uint64_t sub_231474C68()
{
  result = sub_231477F48();
  if (!result)
  {
    goto LABEL_4;
  }

  v1 = result;
  v2 = sub_231474DD4(result, 0);
  v3 = sub_231474D08(&v4, v2 + 4, v1, 0xD000000000000010, 0x8000000231484000);

  if (v3 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x277D84F90];
  }

  off_280C3BEA0 = v2;
  return result;
}

uint64_t sub_231474D08(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_231477FE8();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_231474DD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EE10, &unk_231481AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void sub_231474E50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v8 = sub_231477B68();
  __swift_project_value_buffer(v8, qword_280C3D970);
  v9 = sub_231477B58();
  v10 = sub_231478298();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2313E1000, v9, v10, "Report unknown error to viewService", v11, 2u);
    OUTLINED_FUNCTION_16_2();
  }

  if (qword_280C3D380 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  os_unfair_lock_lock(dword_280C3D998);
  v12 = sub_2314779F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);

  sub_231460178();
  os_unfair_lock_unlock(dword_280C3D998);
  sub_231477AC8();
  v13 = sub_231477A98();
  OUTLINED_FUNCTION_2_24();
  sub_231477AB8();

  if (a1)
  {
    v14 = a1;
    v15 = sub_231477B58();
    v16 = sub_2314782B8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_16_4();
      v18 = OUTLINED_FUNCTION_14_13();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      OUTLINED_FUNCTION_12_19(&dword_2313E1000, v21, v22, "Fail to report unknown error: %@");
      sub_2313E937C(v18, &qword_27DD4EAF0, &qword_23147B980);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }
  }
}

void sub_2314750CC(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v10 = sub_231476CA8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v73 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v73 - v27;
  if (qword_280C3D380 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  os_unfair_lock_lock(dword_280C3D998);
  v74 = a1;
  sub_2314760F0(&dword_280C3D998[2], MEMORY[0x277D1F268], v28);
  os_unfair_lock_unlock(dword_280C3D998);
  v29 = sub_2314779F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
  sub_2313E937C(v28, &qword_27DD4E1A8, &unk_23147FD20);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_280C3CE68 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(dword_280C3D988);
    sub_2314760F0(&dword_280C3D988[2], MEMORY[0x277CC9578], v9);
    os_unfair_lock_unlock(dword_280C3D988);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2313E937C(v9, &qword_27DD4DEC0, &qword_23147F580);
      goto LABEL_30;
    }

    v42 = v73;
    (*(v73 + 32))(v19, v9, v10);
    sub_231476C98();
    v43 = sub_231476C08();
    v45 = *(v42 + 8);
    v44 = v42 + 8;
    v46 = v17;
    v47 = v45;
    v45(v46, v10);
    if ((v43 & 1) == 0)
    {
      v47(v19, v10);
LABEL_30:
      sub_231477AC8();
      v60 = sub_231477A98();
      os_unfair_lock_lock(dword_280C3D998);
      sub_231477A08();
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);

      sub_231460178();
      os_unfair_lock_unlock(dword_280C3D998);
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_5();
      }

      v61 = sub_231477B68();
      OUTLINED_FUNCTION_11_18(v61, qword_280C3D970);
      v62 = sub_231477B58();
      v63 = sub_231478298();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_16_4();
        v65 = OUTLINED_FUNCTION_23_3();
        v75[0] = v65;
        *v64 = 136315138;
        OUTLINED_FUNCTION_8_23();
        v69 = v68 | 0x6C0000u;
        if (v66)
        {
          v70 = v69;
        }

        else
        {
          v70 = v67;
        }

        if (v66)
        {
          v71 = 0xE300000000000000;
        }

        else
        {
          v71 = a2;
        }

        v72 = sub_2313EB684(v70, v71, v75);

        *(v64 + 4) = v72;
        _os_log_impl(&dword_2313E1000, v62, v63, "Succeed to get siriRemembersView for accountId: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_16_2();
      }

      return;
    }

    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v48 = sub_231477B68();
    OUTLINED_FUNCTION_11_18(v48, qword_280C3D970);
    v49 = sub_231477B58();
    v50 = sub_231478298();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_16_4();
      v52 = OUTLINED_FUNCTION_23_3();
      v75[0] = v52;
      *v51 = 136315138;
      OUTLINED_FUNCTION_8_23();
      v55 = v54 | 0x6C0000u;
      v73 = v44;
      v56 = v47;
      if (v53)
      {
        v57 = v55;
      }

      else
      {
        v57 = v74;
      }

      if (v53)
      {
        v58 = 0xE300000000000000;
      }

      else
      {
        v58 = a2;
      }

      v59 = sub_2313EB684(v57, v58, v75);

      *(v51 + 4) = v59;
      _os_log_impl(&dword_2313E1000, v49, v50, "Skip to get siriRemembersView for %s since it is too close to request", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();

      v56(v19, v10);
    }

    else
    {

      v47(v19, v10);
    }
  }

  else
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v31 = sub_231477B68();
    OUTLINED_FUNCTION_11_18(v31, qword_280C3D970);
    v32 = sub_231477B58();
    v33 = sub_231478298();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_16_4();
      v35 = OUTLINED_FUNCTION_23_3();
      v75[0] = v35;
      *v34 = 136315138;
      OUTLINED_FUNCTION_8_23();
      v38 = v37 | 0x6C0000u;
      if (v36)
      {
        v39 = v38;
      }

      else
      {
        v39 = v74;
      }

      if (v36)
      {
        v40 = 0xE300000000000000;
      }

      else
      {
        v40 = a2;
      }

      v41 = sub_2313EB684(v39, v40, v75);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_2313E1000, v32, v33, "Skip to get siriRemembersView for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }
  }
}

void sub_23147596C(int a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E1A8, &unk_23147FD20);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v11 = sub_231477B68();
  __swift_project_value_buffer(v11, qword_280C3D970);
  v12 = sub_231477B58();
  v13 = sub_231478298();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_14_13();
    *v14 = 67109120;
    *(v14 + 4) = a1;
    _os_log_impl(&dword_2313E1000, v12, v13, "Report SQLite error to viewService with %d", v14, 8u);
    OUTLINED_FUNCTION_16_2();
  }

  if (qword_280C3D380 != -1)
  {
    OUTLINED_FUNCTION_1_26();
  }

  os_unfair_lock_lock(dword_280C3D998);
  v15 = sub_2314779F8();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);

  sub_231460178();
  os_unfair_lock_unlock(dword_280C3D998);
  sub_231477AC8();
  v16 = sub_231477A98();
  OUTLINED_FUNCTION_2_24();
  sub_231477AA8();

  if (a3)
  {
    v17 = a3;
    v18 = sub_231477B58();
    v19 = sub_2314782B8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_16_4();
      v21 = OUTLINED_FUNCTION_14_13();
      *v20 = 138412290;
      v22 = a3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      OUTLINED_FUNCTION_12_19(&dword_2313E1000, v24, v25, "Fail to report SQLite error: %@");
      sub_2313E937C(v21, &qword_27DD4EAF0, &qword_23147B980);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_2();
    }

    else
    {
    }
  }
}

uint64_t sub_231475BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = sub_2314779E8();
  v4 = OUTLINED_FUNCTION_4(v31);
  v28 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EE18, &qword_231481B48);
  OUTLINED_FUNCTION_4(v32);
  v30 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for IPInteractionWithEntity();
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231476428();
  sub_231478948();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = a1;
  v21 = v31;
  v35 = 0;
  *v19 = sub_2314786C8();
  v34 = 1;
  v19[1] = sub_231478688();
  v19[2] = v22;
  v26[1] = v22;
  v33 = 2;
  sub_23147647C(&qword_280C3C188, MEMORY[0x277D1F258]);
  sub_2314786B8();
  v23 = OUTLINED_FUNCTION_15_6();
  v24(v23);
  (*(v28 + 32))(v19 + *(v14 + 24), v9, v21);
  sub_2314764C4(v19, v29);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return sub_231476528(v19);
}

uint64_t sub_231475F08(uint64_t a1)
{
  v2 = sub_231476428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231475F44(uint64_t a1)
{
  v2 = sub_231476428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231475F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23147647C(&qword_280C3C398, type metadata accessor for IPInteractionWithEntity);

  return MEMORY[0x282162858](a1, a2, a3, v6);
}

uint64_t sub_231476074(uint64_t a1, void (*a2)(void), _DWORD *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D640, &qword_23147FD10);
  a2(0);
  sub_2314613EC();
  result = sub_231477DC8();
  *a3 = 0;
  *a4 = result;
  return result;
}

uint64_t sub_2314760F0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_2313E7C04(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = a2(0);
    OUTLINED_FUNCTION_3(v10);
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    v12 = a3;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = a2(0);
    v12 = a3;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_2314761C4()
{
  v0 = sub_231476CA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - v7;

  sub_231476C98();
  sub_231476BE8();
  (*(v1 + 8))(v4, v0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v0);
  return sub_2314602E4();
}

uint64_t type metadata accessor for IPInteractionWithEntity()
{
  result = qword_280C3C388;
  if (!qword_280C3C388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314763A4()
{
  result = sub_2314779E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_231476428()
{
  result = qword_280C3C3B8[0];
  if (!qword_280C3C3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C3C3B8);
  }

  return result;
}

uint64_t sub_23147647C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2314764C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPInteractionWithEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231476528(uint64_t a1)
{
  v2 = type metadata accessor for IPInteractionWithEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for IPInteractionWithEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231476664()
{
  result = qword_27DD4EE20;
  if (!qword_27DD4EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4EE20);
  }

  return result;
}

unint64_t sub_2314766BC()
{
  result = qword_280C3C3A8;
  if (!qword_280C3C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C3A8);
  }

  return result;
}

unint64_t sub_231476714()
{
  result = qword_280C3C3B0;
  if (!qword_280C3C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C3B0);
  }

  return result;
}