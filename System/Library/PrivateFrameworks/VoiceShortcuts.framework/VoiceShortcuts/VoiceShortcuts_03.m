uint64_t sub_2310808A0()
{
  v1 = v0;
  v2 = sub_231158258();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v39[2] = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v39 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v39 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v39 - v17;
  v19 = *(**(v0 + 40) + 136);

  v21 = atomic_load(v19(v20));

  v22 = *MEMORY[0x277D7A4E8];
  if (v21)
  {
    v32 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v33 = sub_231158238();
    v34 = sub_2311592F8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_53();
      *v35 = 0;
      _os_log_impl(&dword_23103C000, v33, v34, "Scheduler: ToolKit indexing scheduler has already started", v35, 2u);
      OUTLINED_FUNCTION_16();
    }

    return (*(v5 + 8))(v13, v2);
  }

  else
  {
    v23 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v24 = sub_231158238();
    v25 = sub_2311592F8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_53();
      *v26 = 0;
      _os_log_impl(&dword_23103C000, v24, v25, "Scheduler: start()", v26, 2u);
      OUTLINED_FUNCTION_16();
    }

    v27 = *(v5 + 8);
    v27(v18, v2);
    v28 = *(v1 + 16);
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_10_6();
    if (VCDeviceHasBeenUnlocked())
    {
      sub_2311581C8();
      v29 = sub_231158238();
      v30 = sub_2311592F8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_53();
        *v31 = 0;
        _os_log_impl(&dword_23103C000, v29, v30, "Scheduler: device unlocked already, scheduling indexing.", v31, 2u);
        OUTLINED_FUNCTION_16();
      }

      v27(v16, v2);
      sub_231080E78();
      sub_231081360();
    }

    v37 = *(**(v1 + 40) + 136);

    atomic_store(1u, v37(v38));
  }
}

void sub_231080E78()
{
  v38 = sub_231158258();
  v1 = *(v38 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v38);
  v5 = &v33[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v33[-1] - v6;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  sub_2310548A0(*(off_280CCB3C0 + 11) + 16, v34);
  __swift_project_boxed_opaque_existential_0(v34, v34[3]);
  DynamicType = swift_getDynamicType();
  v9 = v34[4];

  __swift_destroy_boxed_opaque_existential_0(v34);
  v33[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v33[4] = sub_231086674();
  LOBYTE(v33[0]) = 2;
  (*(v9 + 40))(v35, v33, DynamicType, v9);
  __swift_destroy_boxed_opaque_existential_0(v33);
  v10 = v36;
  v11 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  LOBYTE(v34[0]) = 2;
  (*(v11 + 80))(v34, v10, v11);
  v12 = v36;
  v13 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  (*(v13 + 104))(v12, v13, 300.0);
  v14 = v36;
  v15 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  (*(v15 + 128))(&unk_2845D7770, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_231161B80;
  v17 = *MEMORY[0x277D7A338];
  *(v16 + 32) = sub_231158E58();
  *(v16 + 40) = v18;
  v19 = v36;
  v20 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  (*(v20 + 152))(v16, v19, v20);
  v21 = v36;
  v22 = v37;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v34[0] = 5;
  (*(v22 + 32))(v34, v21, v22);
  sub_2310ADC14(v35);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    v35[0] = v0;
    v23 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    if ((swift_dynamicCast() & 1) != 0 && (v34[0] & 1) == 0)
    {

      v28 = *MEMORY[0x277D7A4E8];
      sub_2311581C8();
      v29 = sub_231158238();
      v30 = sub_2311592F8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_23103C000, v29, v30, "deferred index: high priority delta task already scheduled", v31, 2u);
        MEMORY[0x2319267C0](v31, -1, -1);
      }

      (*(v1 + 8))(v5, v38);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    v24 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v25 = sub_231158238();
    v26 = sub_2311592F8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23103C000, v25, v26, "deferred index: scheduled high priority delta task", v27, 2u);
      MEMORY[0x2319267C0](v27, -1, -1);
    }

    (*(v1 + 8))(v7, v38);
  }
}

void sub_231081360()
{
  v1 = sub_231158258();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-1] - v7;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  sub_2310548A0(*(off_280CCB3C0 + 11) + 16, v32);
  __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  DynamicType = swift_getDynamicType();
  v10 = v32[4];

  __swift_destroy_boxed_opaque_existential_0(v32);
  v31[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v31[4] = sub_231086674();
  LOBYTE(v31[0]) = 3;
  (*(v10 + 40))(v33, v31, DynamicType, v10);
  __swift_destroy_boxed_opaque_existential_0(v31);
  v11 = v34;
  v12 = v35;
  __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  LOBYTE(v32[0]) = 0;
  (*(v12 + 80))(v32, v11, v12);
  v13 = v34;
  v14 = v35;
  __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  (*(v14 + 104))(v13, v14, 600.0);
  v15 = v34;
  v16 = v35;
  __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v32[0] = 5;
  (*(v16 + 32))(v32, v15, v16);
  v17 = v34;
  v18 = v35;
  __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  (*(v18 + 176))(1, v17, v18);
  v19 = v34;
  v20 = v35;
  __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  (*(v20 + 56))(1, v19, v20);
  sub_2310ADC14(v33);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    v33[0] = v0;
    v21 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
    if ((swift_dynamicCast() & 1) != 0 && (v32[0] & 1) == 0)
    {

      v26 = *MEMORY[0x277D7A4E8];
      sub_2311581C8();
      v27 = sub_231158238();
      v28 = sub_2311592F8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_23103C000, v27, v28, "deferred index: db maintenance task already scheduled", v29, 2u);
        MEMORY[0x2319267C0](v29, -1, -1);
      }

      (*(v2 + 8))(v6, v1);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v33);
    v22 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v23 = sub_231158238();
    v24 = sub_2311592F8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23103C000, v23, v24, "deferred index: scheduled db maintenance task", v25, 2u);
      MEMORY[0x2319267C0](v25, -1, -1);
    }

    (*(v2 + 8))(v8, v1);
  }
}

uint64_t sub_2310817FC()
{
  v1 = v0;
  v2 = sub_231158258();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v12 = sub_231158238();
  v13 = sub_2311592F8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_53();
    *v14 = 0;
    _os_log_impl(&dword_23103C000, v12, v13, "Scheduler: end()", v14, 2u);
    OUTLINED_FUNCTION_16();
  }

  (*(v5 + 8))(v10, v2);
  v15 = *(**(v1 + 40) + 136);

  atomic_store(0, v15(v16));

  if (qword_280CCBC80 != -1)
  {
    v17 = OUTLINED_FUNCTION_5_7();
  }

  return sub_2310D46FC(v17);
}

void sub_23108198C()
{
  v0 = sub_231157F18();
  v26 = *(v0 - 8);
  v1 = *(v26 + 64);
  MEMORY[0x28223BE20](v0);
  v25 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_231157E88();
  v20 = *(v23 - 8);
  v3 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v21 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_231157F28();
  v22 = *(v24 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v19[2] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231158258();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v14 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v15 = sub_231158238();
  v16 = sub_2311592F8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v19[1] = v14;
    v18 = v17;
    *v17 = 0;
    _os_log_impl(&dword_23103C000, v15, v16, "Scheduler: received link notification", v17, 2u);
    MEMORY[0x2319267C0](v18, -1, -1);
  }

  (*(v8 + 8))(v13, v7);
  sub_231080E78();
}

uint64_t sub_231081FA8()
{
  v69 = sub_231157E88();
  v67 = *(v69 - 8);
  v0 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v65 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_231157F28();
  v66 = *(v68 - 8);
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = sub_231157F18();
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v56 - v19);
  v21 = sub_231157808();
  if (!v21)
  {
    v73 = 0u;
    v74 = 0u;
    goto LABEL_7;
  }

  v22 = v21;
  v23 = *MEMORY[0x277CEBE68];
  *&v73 = sub_231158E58();
  *(&v73 + 1) = v24;
  sub_231159528();
  sub_23104ADA0(v72, v22, &v73);

  sub_231086718(v72);
  if (!*(&v74 + 1))
  {
LABEL_7:
    sub_231051B38(&v73, &unk_27DD3CE30, &qword_231166210);
    v25 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  if (swift_dynamicCast())
  {
    v25 = v72[0];
  }

  else
  {
    v25 = 0;
  }

LABEL_8:
  v26 = sub_231157808();
  if (!v26)
  {
    v73 = 0u;
    v74 = 0u;
    goto LABEL_18;
  }

  v27 = v26;
  v28 = *MEMORY[0x277CEBE70];
  v70 = sub_231158E58();
  v71 = v29;
  sub_231159528();
  sub_23104ADA0(v72, v27, &v73);

  sub_231086718(v72);
  if (!*(&v74 + 1))
  {
LABEL_18:
    sub_231051B38(&v73, &unk_27DD3CE30, &qword_231166210);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  if (swift_dynamicCast())
  {
    v30 = v72[0];
  }

  else
  {
    v30 = 0;
  }

  if (v25 && v30)
  {
    v61 = sub_2310BE194(v30);
    v60 = sub_2310BE194(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C340, &unk_231163830);
    v31 = sub_231157EB8();
    v32 = *(v31 - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_231161B80;
    (*(v32 + 104))(v35 + v34, *MEMORY[0x277D79C28], v31);
    sub_2310A0D38();
    v36 = v60;
    *v20 = v61;
    v20[1] = v36;
    v20[2] = v37;
    v38 = v62;
    (*(v62 + 104))(v20, *MEMORY[0x277D79C58], v12);
    v39 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v40 = *(v38 + 16);
    v61 = v38 + 16;
    v60 = v40;
    v40(v18, v20, v12);
    v41 = sub_231158238();
    v42 = sub_2311592F8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v57 = v43;
      v59 = swift_slowAlloc();
      v72[0] = v59;
      *v43 = 136315138;
      v58 = v42;
      v56 = sub_231157EC8();
      v45 = v44;
      v46 = *(v38 + 8);
      v46(v18, v12);
      v47 = sub_2310488F8(v56, v45, v72);

      v48 = v57;
      *(v57 + 1) = v47;
      _os_log_impl(&dword_23103C000, v41, v58, "Scheduler: received app protection notification: %s", v48, 0xCu);
      v49 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x2319267C0](v49, -1, -1);
      MEMORY[0x2319267C0](v48, -1, -1);
    }

    else
    {

      v46 = *(v38 + 8);
      v46(v18, v12);
    }

    (*(v5 + 8))(v11, v4);
    (*(v67 + 104))(v65, *MEMORY[0x277D79C18], v69);
    v60(v63, v20, v12);
    v55 = v64;
    sub_231157E98();
    sub_231041410(v55);
    (*(v66 + 8))(v55, v68);
    return (v46)(v20, v12);
  }

LABEL_19:

  v50 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v51 = sub_231158238();
  v52 = sub_2311592D8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_23103C000, v51, v52, "Received malformed notification for App Protection event.", v53, 2u);
    MEMORY[0x2319267C0](v53, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

void sub_231082808()
{
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v8 = sub_231158238();
  v9 = sub_2311592F8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23103C000, v8, v9, "Scheduler: received language change notification", v10, 2u);
    MEMORY[0x2319267C0](v10, -1, -1);
  }

  (*(v1 + 8))(v6, v0);
  sub_231082C10();
}

void sub_231082C10()
{
  v1 = sub_231158258();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v39[-1] - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-1] - v8;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  v10 = *(off_280CCB3C0 + 11);

  sub_231083C68();
  if (v0)
  {
  }

  else
  {
    v11 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v12 = sub_231158238();
    v13 = sub_2311592F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v44 = v7;
      v15 = v2;
      v16 = v1;
      v17 = v14;
      *v14 = 0;
      _os_log_impl(&dword_23103C000, v12, v13, "deferred index: cancelled low priority full task", v14, 2u);
      v18 = v17;
      v1 = v16;
      v2 = v15;
      v7 = v44;
      MEMORY[0x2319267C0](v18, -1, -1);
    }

    (*(v2 + 8))(v9, v1);
  }

  sub_2310548A0(v10 + 16, v40);
  __swift_project_boxed_opaque_existential_0(v40, v40[3]);
  DynamicType = swift_getDynamicType();
  v20 = v40[4];
  __swift_destroy_boxed_opaque_existential_0(v40);
  v39[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v39[4] = sub_231086674();
  LOBYTE(v39[0]) = 1;
  (*(v20 + 40))(v41, v39, DynamicType, v20);
  __swift_destroy_boxed_opaque_existential_0(v39);
  v21 = v42;
  v22 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  LOBYTE(v40[0]) = 2;
  (*(v22 + 80))(v40, v21, v22);
  v23 = v42;
  v24 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  (*(v24 + 104))(v23, v24, 600.0);
  v25 = v42;
  v26 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  (*(v26 + 128))(&unk_2845D77A0, v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_231161B80;
  v28 = *MEMORY[0x277D7A338];
  *(v27 + 32) = sub_231158E58();
  *(v27 + 40) = v29;
  v30 = v42;
  v31 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  (*(v31 + 152))(v27, v30, v31);
  v32 = v42;
  v33 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v40[0] = 5;
  (*(v33 + 32))(v40, v32, v33);
  sub_2310ADC14(v41);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v34 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v35 = sub_231158238();
  v36 = sub_2311592F8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_23103C000, v35, v36, "deferred index: scheduled high priority delta task", v37, 2u);
    MEMORY[0x2319267C0](v37, -1, -1);
  }

  (*(v2 + 8))(v7, v1);
}

uint64_t sub_231083218(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_231157818();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  sub_2311577E8();

  a4(v13);

  return (*(v8 + 8))(v13, v5);
}

void sub_2310832FC()
{
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v8 = sub_231158238();
  v9 = sub_2311592F8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23103C000, v8, v9, "Scheduler: received first unlock notification", v10, 2u);
    MEMORY[0x2319267C0](v10, -1, -1);
  }

  (*(v1 + 8))(v6, v0);
  sub_231080E78();
  sub_2310836F0();
}

void sub_2310836F0()
{
  v1 = sub_231158258();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39[-1] - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v39[-1] - v10;
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }

  v12 = *(off_280CCB3C0 + 11);

  if (sub_231083CF8())
  {
    v13 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v14 = sub_231158238();
    v15 = sub_2311592F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23103C000, v14, v15, "deferred index: low priority task wanted but a regular priority one is already scheduled", v16, 2u);
      MEMORY[0x2319267C0](v16, -1, -1);
    }

    (*(v2 + 8))(v9, v1);
  }

  else
  {
    sub_2310548A0(v12 + 16, v40);
    __swift_project_boxed_opaque_existential_0(v40, v40[3]);
    DynamicType = swift_getDynamicType();
    v18 = v40[4];
    __swift_destroy_boxed_opaque_existential_0(v40);
    v39[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
    v39[4] = sub_231086674();
    LOBYTE(v39[0]) = 0;
    (*(v18 + 40))(v41, v39, DynamicType, v18);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v19 = v42;
    v20 = v43;
    __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    LOBYTE(v40[0]) = 0;
    (*(v20 + 80))(v40, v19, v20);
    v21 = v42;
    v22 = v43;
    __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    (*(v22 + 104))(v21, v22, 600.0);
    v23 = v42;
    v24 = v43;
    __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    (*(v24 + 56))(1, v23, v24);
    v25 = v42;
    v26 = v43;
    __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    (*(v26 + 128))(&unk_2845D77D0, v25, v26);
    v27 = v42;
    v28 = v43;
    __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v40[0] = 5;
    (*(v28 + 32))(v40, v27, v28);
    sub_2310ADC14(v41);
    if (v0)
    {
      __swift_destroy_boxed_opaque_existential_0(v41);
      v41[0] = v0;
      v29 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
      if ((swift_dynamicCast() & 1) != 0 && (v40[0] & 1) == 0)
      {

        v34 = *MEMORY[0x277D7A4E8];
        sub_2311581C8();
        v35 = sub_231158238();
        v36 = sub_2311592F8();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_23103C000, v35, v36, "deferred index: low priority full task already scheduled", v37, 2u);
          MEMORY[0x2319267C0](v37, -1, -1);
        }

        (*(v2 + 8))(v6, v1);
      }

      else
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v41);
      v30 = *MEMORY[0x277D7A4E8];
      sub_2311581C8();
      v31 = sub_231158238();
      v32 = sub_2311592F8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_23103C000, v31, v32, "deferred index: scheduled low priority full task", v33, 2u);
        MEMORY[0x2319267C0](v33, -1, -1);
      }

      (*(v2 + 8))(v11, v1);
    }
  }
}

uint64_t sub_231083C68()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v4[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v4[4] = sub_231086674();
  LOBYTE(v4[0]) = 0;
  (*(v2 + 24))(v4, v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_231083CF8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v4[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v4[4] = sub_231086674();
  LOBYTE(v4[0]) = 1;
  LOBYTE(v1) = (*(v2 + 32))(v4, v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

uint64_t sub_231083D84()
{
  OUTLINED_FUNCTION_4_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_231157F28();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_231158258();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231083E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int8x16_t *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[4].i64[1];
  v29 = v24[2].i64[1];
  v28 = v24[3].i64[0];
  v30 = v24[2].i64[0];
  v31 = v24[1].i64[0];
  v32 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  (*(v29 + 16))(v28, v31, v30);
  v33 = sub_231158238();
  v34 = sub_2311592B8();
  v35 = os_log_type_enabled(v33, v34);
  v37 = v24[4].i64[0];
  v36 = v24[4].i64[1];
  v38 = v24[3].i64[0];
  v39 = v24[3].i64[1];
  v41 = v24[2].i64[0];
  v40 = v24[2].i64[1];
  if (v35)
  {
    OUTLINED_FUNCTION_45_1();
    HIDWORD(a9) = v34;
    v42 = OUTLINED_FUNCTION_22_3();
    a13 = v42;
    *v39 = 136315138;
    v43 = sub_231157E68();
    a10 = v36;
    v45 = v44;
    (*(v40 + 8))(v38, v41);
    v46 = sub_2310488F8(v43, v45, &a13);

    *(v39 + 4) = v46;
    _os_log_impl(&dword_23103C000, v33, BYTE4(a9), "Scheduler: submitting request %s into the debouncer", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_9_7();

    (*(v37 + 8))(a10, v39);
  }

  else
  {

    (*(v40 + 8))(v38, v41);
    (*(v37 + 8))(v36, v39);
  }

  sub_2311589E8();
  v59 = v24[1];
  sub_2311589D8();
  sub_2311589A8();

  v47 = swift_task_alloc();
  v24[5].i64[0] = v47;
  v47[1] = vextq_s8(v59, v59, 8uLL);
  v48 = *(MEMORY[0x277D85A40] + 4);
  v49 = swift_task_alloc();
  v24[5].i64[1] = v49;
  *v49 = v24;
  v49[1] = sub_231084114;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x2822008A0](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, v59.i64[0], v59.i64[1], a13, a14, a15, a16);
}

uint64_t sub_231084114()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v2 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v7 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23108421C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_231084284()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  OUTLINED_FUNCTION_1();
  v5 = v0[12];

  return v4();
}

uint64_t sub_2310842F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_231157F28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 32);
  sub_231157E68();
  v16 = sub_231158E28();

  (*(v11 + 16))(v14, a3, v10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  (*(*(v17 - 8) + 16))(v9, a1, v17);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v18 = type metadata accessor for ToolKitIndexingScheduler.DebouncedReason();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  sub_231080244(v14, v9);
  [v15 pokeWithReason:v16 userInfo:v21];
}

uint64_t sub_2310844E4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v41 = sub_231157F28();
  v39 = *(v41 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = *(**(v1 + 40) + 136);

  v14 = atomic_load(v12(v13));

  if ((v14 & 1) == 0)
  {
    sub_2310864B8();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  v17 = sub_2310861B8(a1);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = v17;
    v36 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    result = sub_23106FF58(v17);
    v20 = result;
    v21 = 0;
    v37 = v19 & 0xFFFFFFFFFFFFFF8;
    v38 = v19 & 0xC000000000000001;
    while (1)
    {
      if (v20 == v21)
      {

        v18 = v36;
        goto LABEL_23;
      }

      if (v38)
      {
        result = MEMORY[0x231925080](v21, v19);
      }

      else
      {
        if (v21 >= *(v37 + 16))
        {
          goto LABEL_35;
        }

        result = *(v19 + 8 * v21 + 32);
      }

      v22 = result;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      if ([result userInfo])
      {
        sub_231159468();
        swift_unknownObjectRelease();
      }

      else
      {

        v42 = 0u;
        v43 = 0u;
      }

      v44[0] = v42;
      v44[1] = v43;
      if (!*(&v43 + 1))
      {
        break;
      }

      type metadata accessor for ToolKitIndexingScheduler.DebouncedReason();
      result = swift_dynamicCast();
      if ((result & 1) != 0 && v45)
      {
        MEMORY[0x2319249F0]();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_231158F98();
        }

        result = sub_231158FE8();
        v36 = v46;
        ++v21;
      }

      else
      {
LABEL_20:
        ++v21;
      }
    }

    result = sub_231051B38(v44, &unk_27DD3CE30, &qword_231166210);
    goto LABEL_20;
  }

LABEL_23:
  v23 = sub_23106FF58(v18);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = v23;
    v36 = v18;
    *&v44[0] = MEMORY[0x277D84F90];
    result = sub_23104CD24(0, v23 & ~(v23 >> 63), 0);
    if (v25 < 0)
    {
      goto LABEL_36;
    }

    v35 = v11;
    v37 = v4;
    v38 = v3;
    v26 = 0;
    v24 = *&v44[0];
    v18 = v36;
    v27 = v36 & 0xC000000000000001;
    v28 = (v39 + 16);
    do
    {
      if (v27)
      {
        v29 = MEMORY[0x231925080](v26, v18);
        (*v28)(v40, v29 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason, v41);
        v18 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v28)(v40, *(v18 + 8 * v26 + 32) + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason, v41);
      }

      *&v44[0] = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_23104CD24(v30 > 1, v31 + 1, 1);
        v18 = v36;
        v24 = *&v44[0];
      }

      ++v26;
      *(v24 + 16) = v31 + 1;
      (*(v39 + 32))(v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31, v40, v41);
    }

    while (v25 != v26);
    v4 = v37;
    v11 = v35;
  }

  v32 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v4;
  v33[5] = v24;
  v33[6] = v18;

  sub_2310798FC();
}

uint64_t sub_2310849C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_231084A60;

  return sub_231084D34(a5);
}

uint64_t sub_231084A60()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231084B60()
{
  result = sub_23106FF58(*(v0 + 16));
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = *(v0 + 16);
    v5 = v4 & 0xC000000000000001;
    v6 = v4 + 32;
    do
    {
      if (v5)
      {
        MEMORY[0x231925080](v3, *(v0 + 16));
      }

      else
      {
        v7 = *(v6 + 8 * v3);
      }

      ++v3;
      sub_231080378();
    }

    while (v2 != v3);
  }

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_231084C34()
{
  result = sub_23106FF58(*(v0 + 16));
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = v5 & 0xC000000000000001;
    v7 = v5 + 32;
    do
    {
      if (v6)
      {
        MEMORY[0x231925080](v3, *(v0 + 16));
      }

      else
      {
        v8 = *(v7 + 8 * v3);
      }

      v9 = *(v0 + 32);
      ++v3;
      v10 = v9;
      sub_231080378();
    }

    while (v2 != v3);
  }

  OUTLINED_FUNCTION_1();

  return v11();
}

uint64_t sub_231084D34(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_231158258();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231084E18, 0, 0);
}

uint64_t sub_231084E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  v28 = v24[8];
  v29 = v24[2];
  v30 = os_transaction_create();
  v31 = *MEMORY[0x277D7A4E8];
  v24[9] = v30;
  v24[10] = v31;
  sub_2311581C8();

  v32 = sub_231158238();
  sub_2311592B8();

  v33 = OUTLINED_FUNCTION_26_4();
  v34 = v24[8];
  v36 = v24[3];
  v35 = v24[4];
  if (v33)
  {
    v69 = v24[8];
    v37 = v24[2];
    OUTLINED_FUNCTION_45_1();
    v38 = OUTLINED_FUNCTION_22_3();
    a13 = v38;
    *v25 = 136315138;
    v39 = sub_231157F28();
    v40 = MEMORY[0x231924A30](v37, v39);
    v42 = sub_2310488F8(v40, v41, &a13);

    *(v25 + 4) = v42;
    OUTLINED_FUNCTION_69(&dword_23103C000, v43, v44, "Scheduler: Debouncer settled on with reasons: %s");
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_9_7();

    v45 = *(v35 + 8);
    (v45)(v69, v36);
  }

  else
  {

    v45 = *(v35 + 8);
    (v45)(v34, v36);
  }

  v24[11] = v45;
  v46 = v24[7];
  v47 = v24[2];
  sub_231158018();

  v48 = sub_231157FC8();
  v24[12] = v48;
  sub_2311581C8();
  v49 = v48;
  v50 = sub_231158238();
  sub_2311592F8();

  v51 = OUTLINED_FUNCTION_26_4();
  v52 = v24[7];
  v54 = v24[3];
  v53 = v24[4];
  if (v51)
  {
    OUTLINED_FUNCTION_45_1();
    v68 = v54;
    v55 = OUTLINED_FUNCTION_22_3();
    a13 = v55;
    *v45 = 136315138;
    v56 = [v49 debugDescription];
    v57 = sub_231158E58();
    v67 = v52;
    v59 = v58;

    v60 = sub_2310488F8(v57, v59, &a13);

    *(v45 + 4) = v60;
    OUTLINED_FUNCTION_69(&dword_23103C000, v61, v62, "Scheduler: Submitting reindex for merged request: %s");
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_9_7();

    (v45)(v67, v68);
  }

  else
  {

    (v45)(v52, v54);
  }

  if (qword_280CCBC80 != -1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  v63 = swift_task_alloc();
  v24[13] = v63;
  *v63 = v24;
  OUTLINED_FUNCTION_19_3(v63);
  OUTLINED_FUNCTION_23_0();

  return sub_2310D08E8(v64);
}

uint64_t sub_23108511C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = *(v2 + 104);
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23108521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  v17 = v16[12];
  v18 = v16[10];
  v19 = v16[6];
  sub_2311581C8();
  v20 = v17;
  v21 = sub_231158238();
  v22 = sub_2311592F8();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v16[11];
  v25 = v16[12];
  v26 = v16[9];
  v27 = v16[6];
  v28 = v16[3];
  v29 = v16[4];
  if (v23)
  {
    a12 = v16[3];
    v30 = OUTLINED_FUNCTION_45_1();
    a11 = v29;
    a13 = swift_slowAlloc();
    *v30 = 136315138;
    v31 = [v25 debugDescription];
    sub_231158E58();
    a9 = v27;
    a10 = v24;

    v32 = OUTLINED_FUNCTION_17();
    v35 = sub_2310488F8(v32, v33, v34);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_23103C000, v21, v22, "Scheduler: Reindex complete for request: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
    swift_unknownObjectRelease();

    a10(v27, a12);
  }

  else
  {

    swift_unknownObjectRelease();
    v24(v27, v28);
  }

  v37 = v16[7];
  v36 = v16[8];
  v39 = v16[5];
  v38 = v16[6];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310853FC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  sub_2311581C8();
  v5 = v2;
  v6 = v1;
  v7 = sub_231158238();
  v8 = sub_2311592D8();

  if (OUTLINED_FUNCTION_26_4())
  {
    v9 = v0[14];
    v10 = v0[12];
    v37 = v0[5];
    v38 = v0[11];
    v35 = v0[4];
    v36 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v11 = 136315394;
    v13 = [v10 debugDescription];
    sub_231158E58();

    v14 = OUTLINED_FUNCTION_17();
    v17 = sub_2310488F8(v14, v15, v16);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v12 = v19;
    _os_log_impl(&dword_23103C000, v7, v8, "Scheduler: Request (%s) failed with error: %@", v11, 0x16u);
    sub_231051B38(v12, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_16();

    v38(v37, v36);
  }

  else
  {
    v20 = v0[11];
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];

    v24 = OUTLINED_FUNCTION_17();
    v20(v24);
  }

  v25 = v0[14];
  v26 = v0[12];
  v27 = v0[8];
  v28 = v0[9];
  v30 = v0[6];
  v29 = v0[7];
  v31 = v0[5];
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();
  v33 = v0[14];

  return v32();
}

uint64_t sub_2310856F4()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_23108572C()
{
  sub_2310856F4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for ToolKitIndexingScheduler.DebouncedReason()
{
  result = qword_280CCB830;
  if (!qword_280CCB830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2310857D8()
{
  sub_2310858B4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_231157F28();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2310858B4()
{
  if (!qword_280CCAFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C280, &unk_231163680);
    v0 = sub_231159448();
    if (!v1)
    {
      atomic_store(v0, &qword_280CCAFA0);
    }
  }
}

uint64_t sub_231085918()
{
  OUTLINED_FUNCTION_26_1();
  v1 = swift_allocObject();
  *(v1 + 16) = 0x74616E696D726554;
  *(v1 + 24) = 0xEB000000006E6F69;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_231086280;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_2311637B8;
  *(v3 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x80000002311691D0;
  *(inited + 48) = sub_231086288;
  *(inited + 56) = v2;
  *(inited + 64) = 2;
  *(inited + 72) = &unk_2311637C0;
  *(inited + 80) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_231161B80;
  *(v5 + 32) = inited;

  v6 = static TaskBuilder.buildBlock(_:)(v5);
  swift_setDeallocating();
  sub_2310639FC();
  return v6;
}

uint64_t sub_231085AA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_231158258();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231085B60, 0, 0);
}

uint64_t sub_231085B60()
{
  v1 = v0[5];
  v2 = *MEMORY[0x277D7A490];
  sub_2311581C8();
  v3 = sub_231158238();
  v4 = sub_2311592F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_53();
    *v5 = 0;
    _os_log_impl(&dword_23103C000, v3, v4, "Received stop()", v5, 2u);
    OUTLINED_FUNCTION_16();
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_17();
  v12(v11);
  sub_2310817FC();

  OUTLINED_FUNCTION_1();

  return v13();
}

uint64_t sub_231085C88()
{
  OUTLINED_FUNCTION_4_1();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_19_3(v2);

  return sub_231085AA0(v3, v0);
}

double sub_231085DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  v10 = a6(a2, a3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v11 = swift_allocObject();
  *&result = 1;
  *(v11 + 16) = xmmword_231161E80;
  *(v11 + 32) = v10;
  return result;
}

id sub_231085E8C(void *a1, uint64_t *a2, char a3, double a4, double a5)
{
  v10 = a2[3];
  if (v10)
  {
    v12 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v13 = *(v10 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_2311597F8();
    (*(v13 + 8))(v16, v10);
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v5 initWithDelay:a1 maximumDelay:v17 queue:a3 & 1 userInfo:a4 unboundedFiringReasons:a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_231086078(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_23108614C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

unint64_t sub_231086194(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = OUTLINED_FUNCTION_13_8(a1, a2, a3, a4);
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v6;
  }

  return result;
}

uint64_t sub_2310861B8(void *a1)
{
  v1 = [a1 firingReasons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231054A0C(0, &qword_280CCAED8, 0x277D79F08);
  v3 = sub_231158F48();

  return v3;
}

uint64_t sub_231086290()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_19_3(v4);

  return sub_231063508(v5, v3, v2);
}

uint64_t sub_231086424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2310864B8()
{
  result = qword_27DD3C2B0;
  if (!qword_27DD3C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2B0);
  }

  return result;
}

uint64_t sub_23108650C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_23108657C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_231086594(result, a2 & 1);
  }

  return result;
}

id sub_231086594(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2310865A0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2310865AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23105FDEC;

  return sub_2310849C0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_231086674()
{
  result = qword_280CCB3D0;
  if (!qword_280CCB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3D0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2310867AC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingScheduler.IndexingSchedulingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2310868DC()
{
  result = qword_27DD3C2B8;
  if (!qword_27DD3C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_7()
{

  JUMPOUT(0x2319267C0);
}

id OUTLINED_FUNCTION_10_6()
{

  return [v0 (v2 + 717)];
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_23107FCB4(v9, v8, a3, v10, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_231086A14(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = a3;
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v10 = *(v3 + 56);
  *(v3 + 56) = a3;
  sub_23108C884(a1, a2, a3);
  sub_231060330(v8, v9, v10);
  sub_231086F60(a1, a2, a3);
  if (v7 == 3 && !(a2 | a1))
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
LABEL_17:

    return sub_2310602F0(v11);
  }

  if (!*(v3 + 16))
  {
    result = os_transaction_create();
    if (result)
    {
      v18 = *(v3 + 16);
      v17 = *(v3 + 24);
      v19 = *(v3 + 32);
      *(v3 + 16) = result;
      *(v3 + 24) = 0xD00000000000001BLL;
      *(v3 + 32) = 0x8000000231169430;
      v11 = v18;
      goto LABEL_17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (*(v3 + 24) != 0xD00000000000001BLL || *(v3 + 32) != 0x8000000231169430)
  {
    v15 = *(v3 + 32);
    if ((sub_231159818() & 1) == 0)
    {
      swift_unknownObjectRetain();

      result = os_transaction_create();
      if (result)
      {
        v20 = result;

        swift_unknownObjectRelease();
        v11 = *(v3 + 16);
        v21 = *(v3 + 24);
        v22 = *(v3 + 32);
        *(v3 + 16) = v20;
        *(v3 + 24) = 0xD00000000000001BLL;
        *(v3 + 32) = 0x8000000231169430;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  swift_unknownObjectRetain();

  os_transaction_needs_more_time();

  return swift_unknownObjectRelease();
}

uint64_t sub_231086BD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(a1 + 16);
  *(v2 + 40) = *a1;
  *(v2 + 56) = v8;
  v9 = *(v2 + 72);
  *(v2 + 72) = *(a1 + 32);
  sub_23108C774(a1, v29);
  sub_23108C7AC(v4, v5, v6, v7, v9);
  sub_231086D98(a1);
  v10 = sub_2310871F4();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = *(v2 + 16);
    if (v14)
    {
      if (*(v2 + 24) == v10 && *(v2 + 32) == v11)
      {
        v18 = *(v2 + 16);
        goto LABEL_13;
      }

      v16 = *(v2 + 24);
      v17 = *(v2 + 32);
      if (sub_231159818())
      {
        v18 = v14;
LABEL_13:
        sub_23108C814(v18);

        os_transaction_needs_more_time();

        return swift_unknownObjectRelease();
      }

      sub_231158E88();
      swift_unknownObjectRetain();

      v26 = os_transaction_create();

      if (v26)
      {

        swift_unknownObjectRelease();
        v19 = *(v2 + 16);
        v27 = *(v2 + 24);
        v28 = *(v2 + 32);
        *(v2 + 16) = v26;
        goto LABEL_16;
      }
    }

    else
    {
      sub_231158E88();
      v22 = os_transaction_create();

      if (v22)
      {
        v19 = *(v2 + 16);
        v24 = *(v2 + 24);
        v25 = *(v2 + 32);
        *(v2 + 16) = v22;
LABEL_16:
        *(v2 + 24) = v12;
        *(v2 + 32) = v13;
        return sub_2310602F0(v19);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = *(v2 + 32);
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 0;
  return sub_2310602F0(v19);
}

uint64_t sub_231086D98(uint64_t a1)
{
  v2 = sub_231158258();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  sub_23108C774(a1, v17);
  v8 = sub_231158238();
  v9 = sub_2311592F8();
  sub_23108C854(a1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315138;
    v12 = sub_231087320();
    v14 = sub_2310488F8(v12, v13, v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_23103C000, v8, v9, "transitioned into %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x2319267C0](v11, -1, -1);
    MEMORY[0x2319267C0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_231086F60(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_231158258();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  sub_23108C884(a1, a2, a3);
  v12 = sub_231158238();
  v13 = sub_2311592F8();
  sub_231060330(a1, a2, a3);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = sub_231058294(a1, a2, a3);
    v18 = sub_2310488F8(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23103C000, v12, v13, "transitioned into %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319267C0](v15, -1, -1);
    MEMORY[0x2319267C0](v14, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_231087168()
{
  sub_231159918();
  MEMORY[0x2319253F0](0);
  return sub_231159948();
}

uint64_t sub_2310871B4()
{
  sub_231159918();
  MEMORY[0x2319253F0](0);
  return sub_231159948();
}

uint64_t sub_2310871F4()
{
  v2 = *v0;
  v1 = v0[1];
  result = 0;
  switch(*(v0 + 32))
  {
    case 1:
      v6 = v0[2];
      v5 = v0[3];

      sub_231159588();

      OUTLINED_FUNCTION_8_7();
      v11 = v7 + 4;
      if (v5)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      if (!v5)
      {
        v5 = 0xE000000000000000;
      }

      MEMORY[0x231924980](v8, v5);

      MEMORY[0x231924980](46, 0xE100000000000000);
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_8_7();
      v4 = v9 + 7;
      goto LABEL_10;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_8_7();
LABEL_10:
      v11 = v4;
LABEL_11:
      v10 = OUTLINED_FUNCTION_6_8();
      MEMORY[0x231924980](v10);
      return v11;
  }
}

uint64_t sub_231087320()
{
  v2 = *v0;
  v1 = v0[1];
  result = 1701602409;
  switch(*(v0 + 32))
  {
    case 1:
      v6 = v0[2];
      v5 = v0[3];

      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      v13 = 0xD000000000000015;
      v7 = OUTLINED_FUNCTION_6_8();
      MEMORY[0x231924980](v7);
      MEMORY[0x231924980](0x6469206874697720, 0xEA00000000002720);
      OUTLINED_FUNCTION_14_6();
      if (v5)
      {
        v9 = v6;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = v8;
      }

      MEMORY[0x231924980](v9, v10);

      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      v13 = 0xD000000000000017;
      v11 = OUTLINED_FUNCTION_6_8();
      goto LABEL_12;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_14_6();
      v13 = 0xD000000000000026;
      v4 = OUTLINED_FUNCTION_6_8();
      MEMORY[0x231924980](v4);
LABEL_10:
      v11 = 39;
      v12 = 0xE100000000000000;
LABEL_12:
      MEMORY[0x231924980](v11, v12);
      return v13;
  }
}

uint64_t sub_2310874A8(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  switch(*(a1 + 32))
  {
    case 1:
      if (a2[2].i8[0] != 1)
      {
        return 0;
      }

      v12 = a2[1].i64[0];
      v11 = a2[1].i64[1];
      v13 = v4 == a2->i64[0] && v5 == a2->i64[1];
      if (v13 || (v14 = sub_231159818(), result = 0, (v14 & 1) != 0))
      {
        if (!v7)
        {
          return !v11;
        }

        if (!v11)
        {
          return 0;
        }

        v15 = v6 == v12 && v7 == v11;
        return v15 || (sub_231159818() & 1) != 0;
      }

      return result;
    case 2:
      if (a2[2].i8[0] != 2)
      {
        return 0;
      }

      goto LABEL_5;
    case 3:
      if (a2[2].i8[0] == 3)
      {
        v10 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)))
        {
          return 1;
        }
      }

      return 0;
    default:
      if (a2[2].i8[0])
      {
        return 0;
      }

LABEL_5:
      if (v4 == a2->i64[0] && v5 == a2->i64[1])
      {
        return 1;
      }

      return sub_231159818();
  }
}

uint64_t *sub_2310875F4(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = sub_231157988();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v3[8] = 0;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 72) = 3;
  v11 = a1;
  sub_2311586E8();
  v12 = objc_allocWithZone(MEMORY[0x277CF94F0]);
  v13 = sub_23108C010(0xD000000000000017, 0x8000000231169410, v10, 3);

  if (v2)
  {

    v14 = v3[3];
    v15 = v3[4];
    sub_2310602F0(v3[2]);
    sub_23108C7AC(v3[5], v3[6], v3[7], v3[8], *(v3 + 72));
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[10] = v11;
    v3[11] = v13;
  }

  return v3;
}

void sub_23108778C(uint64_t a1)
{
  v2 = v1;
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277D7A4F0];
  v10 = *(v2 + 80);
  sub_2311581C8();
  v11 = sub_231158238();
  v12 = sub_2311592F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v2;
    v14 = a1;
    v15 = v13;
    *v13 = 0;
    _os_log_impl(&dword_23103C000, v11, v12, "pull: storing new bookmark", v13, 2u);
    v16 = v15;
    a1 = v14;
    v2 = v22;
    MEMORY[0x2319267C0](v16, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v17 = *(v2 + 88);
  v23[0] = 0;
  if ([v17 updateBookmark:a1 forSet:v10 error:v23])
  {
    v18 = v23[0];
  }

  else
  {
    v19 = v23[0];
    sub_231157938();

    swift_willThrow();
  }

  v20 = *MEMORY[0x277D85DE8];
}

id sub_2310879A0()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  v5[0] = 0;
  if ([v1 commitAllBookmarkUpdates_])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_231157938();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_231087A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C340, &unk_231163830);
    v6 = sub_231157EB8();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_231161B80;
    (*(v7 + 104))(v10 + v9, *MEMORY[0x277D79C20], v6);
    sub_2310A0D38();
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v11;
    v12 = *MEMORY[0x277D79C58];
    v13 = sub_231157F18();
    (*(*(v13 - 8) + 104))(a3, v12, v13);
  }

  else
  {
    v15 = *MEMORY[0x277D79C50];
    v16 = sub_231157F18();
    v17 = *(*(v16 - 8) + 104);

    return v17(a3, v15, v16);
  }
}

uint64_t sub_231087C30()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 56) = v0;
  *(v1 + 49) = v2;
  v3 = sub_231158258();
  *(v1 + 64) = v3;
  OUTLINED_FUNCTION_5(v3);
  *(v1 + 72) = v4;
  v6 = *(v5 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231087CFC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();

  v4 = sub_231158238();
  v5 = sub_2311592F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = *(v0 + 49);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(v6 + 80);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v7;
    v11 = v10;
    _os_log_impl(&dword_23103C000, v4, v5, "pull: starting for set %@, from bookmark: %{BOOL}d", v8, 0x12u);
    sub_231051B38(v9, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
    OUTLINED_FUNCTION_40();
    MEMORY[0x2319267C0]();
  }

  v12 = *(v0 + 96);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 56);

  v16 = *(v14 + 8);
  v16(v12, v13);
  *(v0 + 16) = xmmword_231163940;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  sub_231086BD4(v0 + 16);
  sub_231158888();
  *(v0 + 104) = sub_231158868();
  if (*(v0 + 49) == 1 && (v17 = *(v0 + 56), (v18 = sub_231087750()) != 0))
  {
    v20 = (v0 + 88);
    v19 = *(v0 + 88);
    sub_2311581C8();
    v21 = sub_231158238();
    v22 = sub_2311592F8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23103C000, v21, v22, "pull: enumerating from bookmark", v23, 2u);
LABEL_9:
      v28 = *v20;
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
      goto LABEL_12;
    }
  }

  else
  {
    v20 = (v0 + 80);
    v24 = *(v0 + 80);
    sub_2311581C8();
    v21 = sub_231158238();
    v25 = sub_2311592F8();
    if (os_log_type_enabled(v21, v25))
    {
      v26 = *(v0 + 49);
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = (v26 & 1) == 0;
      _os_log_impl(&dword_23103C000, v21, v25, "pull: not enumerating from bookmark (forced: %{BOOL}d)", v27, 8u);
      v18 = 0;
      goto LABEL_9;
    }

    v18 = 0;
  }

  v28 = *v20;
LABEL_12:
  *(v0 + 112) = v18;
  v30 = *(v0 + 56);
  v29 = *(v0 + 64);

  v16(v28, v29);
  v31 = swift_allocObject();
  *(v0 + 120) = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v18;
  v32 = *(MEMORY[0x277D72730] + 4);

  swift_unknownObjectRetain();
  v33 = swift_task_alloc();
  *(v0 + 128) = v33;
  *v33 = v0;
  v33[1] = sub_231088120;

  return MEMORY[0x2821DAC48]();
}

uint64_t sub_231088120()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(*v1 + 128);
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v2;
  *(v2 + 136) = v0;

  if (!v0)
  {
    v5 = *(v2 + 120);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23108822C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_2310882B8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  swift_unknownObjectRelease();
  v4 = v0[17];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_23108834C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_231088370, 0, 0);
}

uint64_t sub_231088370()
{
  v6 = *(v0 + 32);
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D0, &qword_231163AE8);
  *v4 = v0;
  v4[1] = sub_231088484;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_231088484()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(*v1 + 56);
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v4 = v2;
  *(v2 + 64) = v0;

  if (!v0)
  {
    v5 = *(v2 + 48);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231088590()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[8];
  v2 = v0[4];
  sub_23108778C(v0[2]);
  if (!v1)
  {
    v3 = v0[4];
    sub_2310879A0();
    v6 = v0[3];
    sub_231158658();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_23108865C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_1();

  return v3();
}

void sub_2310886B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v40 = a3;
  v38 = sub_231158668();
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = v7;
  v32[0] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v32 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84FA0];
  v39 = v14;
  *(v14 + 16) = MEMORY[0x277D84FA0];
  v16 = a2;
  v17 = *(a2 + 80);
  if (qword_280CCB9B8 != -1)
  {
    swift_once();
  }

  v34 = [v17 changePublisherWithUseCase_];
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v13;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = v39;
  *(v20 + v19) = v39;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v45 = sub_23108C320;
  v46 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v32[1] = &v43;
  v43 = sub_231089144;
  v44 = &block_descriptor_8;
  v33 = _Block_copy(&aBlock);

  v22 = v36;
  v23 = v32[0];
  v24 = v38;
  (*(v36 + 16))(v32[0], v37, v38);
  v25 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v26 = (v35 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  (*(v22 + 32))(v27 + v25, v23, v24);
  *(v27 + v26) = v21;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
  v45 = sub_23108C3D8;
  v46 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_23108BDB0;
  v44 = &block_descriptor_30;
  v28 = _Block_copy(&aBlock);

  v30 = v33;
  v29 = v34;
  v31 = [v34 drivableSinkWithBookmark:v40 completion:v33 shouldContinue:v28];
  _Block_release(v28);
  _Block_release(v30);
}

uint64_t sub_231088B24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a6;
  v58 = a4;
  v53 = sub_2311586B8();
  v52 = *(v53 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231157F18();
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12);
  v56 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_231158258();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();

  v21 = sub_231158238();
  v22 = sub_2311592F8();
  v57 = a3;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v50 = v12;
    v24 = v23;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v57[10];
    *(v24 + 4) = v26;
    *v25 = v26;
    v27 = v26;
    _os_log_impl(&dword_23103C000, v21, v22, "pull: completed processing %@", v24, 0xCu);
    sub_231051B38(v25, &unk_27DD3CC40, &qword_231162750);
    MEMORY[0x2319267C0](v25, -1, -1);
    v28 = v24;
    v12 = v50;
    MEMORY[0x2319267C0](v28, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  v29 = v58;
  swift_beginAccess();
  v30 = v29[2];
  if (v30)
  {
    v61 = v29[2];
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
    return sub_231159058();
  }

  else
  {
    v33 = v54;
    swift_beginAccess();
    v34 = *(v33 + 16);

    v36 = v56;
    sub_231087A48(v35, a7, v56);

    if ((sub_231157F08() & 1) == 0)
    {
      v37 = sub_231157EF8();
      v39 = v38;
      if (v38 >> 60 != 15)
      {
        v40 = v37;
        v58 = [objc_opt_self() defaultCenter];
        v57 = sub_231159368();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C338, &unk_231163B40);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_231163950;
        v59 = 0x657365676E616863;
        v60 = 0xE900000000000074;
        sub_231159528();
        *(inited + 96) = MEMORY[0x277CC9318];
        *(inited + 72) = v40;
        *(inited + 80) = v39;
        v59 = 0x656372756F73;
        v60 = 0xE600000000000000;
        sub_2310601EC(v40, v39);
        sub_231159528();
        v42 = v52;
        v43 = v51;
        v44 = v53;
        (*(v52 + 104))(v51, *MEMORY[0x277D72740], v53);
        v45 = sub_2311586A8();
        (*(v42 + 8))(v43, v44);
        *(inited + 168) = MEMORY[0x277D83B88];
        *(inited + 144) = v45;
        v36 = v56;
        v46 = sub_231158DB8();
        v47 = v57;
        v48 = v58;
        sub_23108C4A8(v57, 0, v46, v58);

        sub_231054A4C(v40, v39);
      }
    }

    v59 = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
    sub_231159068();
    return (*(v55 + 8))(v36, v12);
  }
}

void sub_231089144(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

void sub_2310891CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80[4] = a5;
  v84 = a2;
  v85 = a3;
  v7 = sub_231157BC8();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v80[6] = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231158258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v83 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v80[5] = v80 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v80[3] = v80 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v80[2] = v80 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v80 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v80 - v24;
  v86 = *MEMORY[0x277D7A4F0];
  sub_2311581C8();
  v26 = a1;
  v27 = sub_231158238();
  v28 = sub_2311592F8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = v23;
    v31 = a4;
    v32 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v32 = v26;
    v33 = v26;
    _os_log_impl(&dword_23103C000, v27, v28, "pull: received input: %@", v29, 0xCu);
    sub_231051B38(v32, &unk_27DD3CC40, &qword_231162750);
    v34 = v32;
    a4 = v31;
    v23 = v30;
    MEMORY[0x2319267C0](v34, -1, -1);
    MEMORY[0x2319267C0](v29, -1, -1);
  }

  v37 = *(v11 + 8);
  v36 = v11 + 8;
  v35 = v37;
  v87 = v10;
  v37(v25, v10);
  v38 = [v26 sharedItem];
  v39 = [v38 content];

  if (!v39)
  {
LABEL_6:
    if ([v26 sharedItemChangeType] == 2)
    {
      v40 = [v26 removedDevices];
      sub_231054A0C(0, &qword_27DD3C2E0, 0x277CF94B0);
      v41 = sub_231158F48();

      v42 = sub_23106FF58(v41);
      v43 = 0;
      while (1)
      {
        if (v42 == v43)
        {

          v57 = [v26 sharedItem];
          v58 = [v57 sharedIdentifier];

          v59 = [v58 stringValue];
          v60 = sub_231158E58();
          v62 = v61;

          v88 = v60;
          v89 = v62;
          v90 = 0;
          v91 = 0;
          v92 = 2;
          sub_231086BD4(&v88);

          MEMORY[0x28223BE20](v63);
          v80[-2] = v26;
          sub_231158658();
          return;
        }

        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x231925080](v43, v41);
        }

        else
        {
          if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v46 = [v44 isLocal];

        ++v43;
        if (v46)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      sub_2311581C8();
      v47 = sub_231158238();
      v48 = sub_2311592D8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_23103C000, v47, v48, "pull: Received unexpected change.", v49, 2u);
        MEMORY[0x2319267C0](v49, -1, -1);
      }

      v35(v23, v87);
    }

    return;
  }

  if ([v26 sharedItemChangeType])
  {

    goto LABEL_6;
  }

  v83 = (a4 + 16);
  v50 = [v26 addedDevices];
  sub_231054A0C(0, &qword_27DD3C2E0, 0x277CF94B0);
  v51 = sub_231158F48();

  v52 = sub_23106FF58(v51);
  v53 = 0;
  do
  {
    if (v52 == v53)
    {

      v64 = [v39 data];
      v65 = sub_2311579A8();
      v67 = v66;

      v68 = objc_allocWithZone(MEMORY[0x277D21150]);
      v69 = sub_23105F240(v65, v67);
      v70 = [v26 sharedItem];
      v71 = [v70 sharedIdentifier];

      v72 = [v71 stringValue];
      v73 = sub_231158E58();
      v75 = v74;

      v76 = [v39 toolDefinition];
      if (v76)
      {
        v76 = sub_23108C5B4(v76, &selRef_id);
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }

      v88 = v73;
      v89 = v75;
      v90 = v76;
      v91 = v78;
      v92 = 1;
      sub_231086BD4(&v88);

      MEMORY[0x28223BE20](v79);
      v80[-4] = v69;
      v80[-3] = v26;
      v80[-2] = v83;
      sub_231158658();

      return;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x231925080](v53, v51);
    }

    else
    {
      if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v54 = *(v51 + 8 * v53 + 32);
    }

    v55 = v54;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_37;
    }

    v56 = [v54 isLocal];

    ++v53;
  }

  while (!v56);

LABEL_30:
}

void sub_23108A0A8(uint64_t a1, void *a2, id a3)
{
  v6 = [a3 sharedItem];
  v7 = [v6 sharedIdentifier];

  v8 = [v7 stringValue];
  v9 = sub_231158E58();
  v11 = v10;

  sub_23108A220(a1, v9, v11);
  if (v3)
  {
    goto LABEL_2;
  }

  v12 = [a2 toolDefinition];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 sourceContainer];

    if (v14)
    {
      v15 = sub_23108C5B4(v14, &selRef_containerId);
      if (v16)
      {
        v17 = v15;
        v18 = v16;
        swift_beginAccess();
        sub_2310DF3EC(&v19, v17, v18);
        swift_endAccess();
LABEL_2:
      }
    }
  }
}

void sub_23108A220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v181 = a3;
  v180 = a2;
  v209 = a1;
  v4 = sub_231158AE8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v185 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v10);
  v184 = sub_231158A28();
  v11 = OUTLINED_FUNCTION_4(v184);
  v203 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_9(v16 - v15);
  v198 = sub_231158A78();
  v17 = OUTLINED_FUNCTION_4(v198);
  v190 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v22);
  v206 = sub_231158A68();
  v23 = OUTLINED_FUNCTION_4(v206);
  v189 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v28);
  v202 = sub_231158908();
  v29 = OUTLINED_FUNCTION_13_0(v202);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  v201 = v33 - v32;
  v204 = sub_231158A58();
  v34 = OUTLINED_FUNCTION_4(v204);
  v188 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15_6();
  v212 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2E8, &qword_231163AF8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  OUTLINED_FUNCTION_3_9(&v172 - v42);
  v43 = sub_231157A38();
  v210 = OUTLINED_FUNCTION_4(v43);
  v211 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_1_9();
  v205 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v51);
  v207 = sub_231158B08();
  v52 = OUTLINED_FUNCTION_4(v207);
  v195 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_3_9(v60);
  v61 = sub_231158258();
  v62 = OUTLINED_FUNCTION_4(v61);
  v213 = v63;
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v62);
  v68 = &v172 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_16_5();
  v208 = v69;
  MEMORY[0x28223BE20](v70);
  v72 = &v172 - v71;
  v73 = sub_231158218();
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v75);
  v76 = sub_231158928();
  v77 = OUTLINED_FUNCTION_13_0(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_5_0();
  v200 = sub_231158418();
  v80 = OUTLINED_FUNCTION_4(v200);
  v199 = v81;
  v83 = *(v82 + 64);
  v84 = MEMORY[0x28223BE20](v80);
  v86 = &v172 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_15_6();
  v214 = v87;
  v191 = v3;
  v88 = [v3 toolDefinition];
  if (v88)
  {
    v179 = v61;
    v178 = v4;
    v89 = v88;
    v90 = [v88 data];
    v91 = sub_2311579A8();
    v93 = v92;

    v218 = v91;
    v219 = v93;
    v217 = 0;
    v215 = 0u;
    v216 = 0u;
    sub_231158208();
    sub_23108C674(&qword_27DD3BEB8, MEMORY[0x277D72898]);
    v94 = v221;
    sub_231158228();
    if (v94)
    {
    }

    else
    {
      v221 = v89;
      v100 = v214;
      sub_231158408();
      v177 = *MEMORY[0x277D7A4F0];
      sub_2311581C8();
      OUTLINED_FUNCTION_31_2(&v223);
      (*(v101 + 16))(v86, v100, v200);
      v102 = sub_231158238();
      v103 = sub_2311592F8();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v175 = v104;
        v176 = swift_slowAlloc();
        *&v215 = v176;
        *v104 = 136315138;
        v105 = sub_2311583E8();
        v107 = v106;
        v108 = OUTLINED_FUNCTION_22_4();
        v109(v108);
        v110 = sub_2310488F8(v105, v107, &v215);

        v111 = v175;
        *(v175 + 1) = v110;
        _os_log_impl(&dword_23103C000, v102, v103, "pull: ingesting tool %s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v176);
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
        OUTLINED_FUNCTION_40();
        MEMORY[0x2319267C0]();
      }

      else
      {

        v112 = OUTLINED_FUNCTION_22_4();
        v113(v112);
      }

      v176 = *(v213 + 1);
      (v176)(v72, v179);
      v114 = v193;
      sub_2311583A8();
      OUTLINED_FUNCTION_24_2(v220);
      sub_231157A28();
      sub_231158828();
      v115 = v207;
      v116 = v195;
      v117 = *(v211 + 8);
      v211 += 8;
      v175 = v117;
      (v117)(v72, v210);
      v119 = v116 + 1;
      v118 = v116[1];
      v118(v114, v115);
      v120 = v116;
      OUTLINED_FUNCTION_24_2(&v217);
      sub_2311583D8();
      v121 = v72;
      if (__swift_getEnumTagSinglePayload(v72, 1, v115) == 1)
      {
        v186 = v118;
        sub_231051B38(v72, &qword_27DD3C2E8, &qword_231163AF8);
      }

      else
      {
        v122 = v186;
        (v120[4])(v186, v121, v115);
        OUTLINED_FUNCTION_24_2(&v214);
        sub_231157A28();
        OUTLINED_FUNCTION_25_4();
        sub_231158828();
        OUTLINED_FUNCTION_4_7();
        v123();
        v186 = v118;
        v118(v122, v115);
      }

      v124 = sub_23108C544(v191);
      if (v124)
      {
        v125 = v124;
      }

      else
      {
        v125 = MEMORY[0x277D84F90];
      }

      v192 = sub_23106FF58(v125);
      v126 = 0;
      v191 = (v125 & 0xC000000000000001);
      v193 = v125;
      v187 = v125 & 0xFFFFFFFFFFFFFF8;
      v173 = (v188 + 16);
      v195 = (v188 + 8);
      v188 = v213 + 8;
      v190 += 8;
      ++v189;
      *&v127 = 136315138;
      v172 = v127;
      v128 = v204;
      v129 = v203;
      v174 = v119;
      while (1)
      {
        if (v192 == v126)
        {

          sub_231157A28();
          OUTLINED_FUNCTION_31_2(&v210);
          v155 = sub_2311583A8();
          MEMORY[0x2319245C0](v155);
          v156 = v128;
          v157 = v186;
          v186(v156, v115);
          v158 = sub_231158AC8();
          v160 = v159;
          v186 = v157;
          v161 = OUTLINED_FUNCTION_27_4();
          v213 = v162;
          (v162)(v161);
          v163 = v183;
          *v183 = v158;
          v163[1] = v160;
          v164 = v184;
          v165 = (*(v129 + 104))(v163, *MEMORY[0x277D72B40], v184);
          MEMORY[0x2319242B0](v165);
          OUTLINED_FUNCTION_25_4();
          v212 = sub_2311587D8();
          OUTLINED_FUNCTION_11_6();
          OUTLINED_FUNCTION_30_2();
          v166();
          (*(v129 + 8))(v163, v164);
          OUTLINED_FUNCTION_4_7();
          v167();
          v168 = v182;
          sub_2311583A8();
          OUTLINED_FUNCTION_31_2(&v206);
          MEMORY[0x2319245C0]();
          v186(v168, v207);
          sub_231158AC8();
          v169 = OUTLINED_FUNCTION_28_3();
          v170(v169);
          OUTLINED_FUNCTION_25_4();
          sub_231158728();
          OUTLINED_FUNCTION_5_8();
          OUTLINED_FUNCTION_10_7();
          v171();

          return;
        }

        if (v191)
        {
          v132 = MEMORY[0x231925080](v126, v193);
          v130 = v208;
          v131 = &selRef_initAndAllowRunRequests_;
        }

        else
        {
          v130 = v208;
          v131 = &selRef_initAndAllowRunRequests_;
          if (v126 >= *(v187 + 16))
          {
            goto LABEL_29;
          }

          v132 = *(v193 + 8 * v126 + 32);
        }

        if (__OFADD__(v126, 1))
        {
          break;
        }

        v133 = [v132 v131[410]];
        v134 = sub_2311579A8();
        v136 = v135;

        v218 = v134;
        v219 = v136;
        v217 = 0;
        v215 = 0u;
        v216 = 0u;
        sub_231158208();
        sub_23108C674(&unk_27DD3C300, MEMORY[0x277D72818]);
        sub_231158228();
        v137 = v212;
        sub_231158A48();
        sub_2311581C8();
        v138 = v197;
        (*v173)(v197, v137, v128);
        v139 = sub_231158238();
        v140 = sub_2311592C8();
        v141 = os_log_type_enabled(v139, v140);
        v213 = v132;
        if (v141)
        {
          v142 = swift_slowAlloc();
          v143 = v138;
          v144 = swift_slowAlloc();
          *&v215 = v144;
          *v142 = v172;
          OUTLINED_FUNCTION_24_2(&v218);
          sub_231158A38();
          v145 = sub_231158E68();
          v146 = v128;
          v128 = v147;
          v194 = *v195;
          v194(v143, v146);
          v148 = sub_2310488F8(v145, v128, &v215);

          *(v142 + 4) = v148;
          _os_log_impl(&dword_23103C000, v139, v140, "pull: ingesting type %s", v142, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v144);
          OUTLINED_FUNCTION_40();
          MEMORY[0x2319267C0]();
          OUTLINED_FUNCTION_40();
          MEMORY[0x2319267C0]();

          v149 = v208;
        }

        else
        {

          v194 = *v195;
          v194(v138, v128);
          v149 = v130;
        }

        (v176)(v149, v179);
        v150 = v196;
        sub_2311583A8();
        v151 = sub_231157A28();
        MEMORY[0x2319242E0](v151);
        OUTLINED_FUNCTION_31_2(&v222);
        OUTLINED_FUNCTION_25_4();
        sub_2311587F8();
        v115 = v207;

        OUTLINED_FUNCTION_11_6();
        OUTLINED_FUNCTION_30_2();
        v152();
        OUTLINED_FUNCTION_4_7();
        v153();
        v186(v150, v115);
        (*v189)(v128, v206);
        v128 = v204;
        OUTLINED_FUNCTION_32_2();
        v154();
        ++v126;
        v129 = v203;
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }
  }

  else
  {
    v95 = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    v96 = sub_231158238();
    v97 = sub_2311592D8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_23103C000, v96, v97, "no tool definition on the closure, malformed data", v98, 2u);
      OUTLINED_FUNCTION_40();
      MEMORY[0x2319267C0]();
    }

    (*(v213 + 1))(v68, v61);
    sub_23108C620();
    swift_allocError();
    *v99 = 1;
    swift_willThrow();
  }
}

uint64_t sub_23108B66C(uint64_t a1, void *a2)
{
  v62 = a1;
  v3 = sub_231158258();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231157A38();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  v9 = *(v59 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v59);
  v12 = (&v51 - v11);
  v13 = sub_231158538();
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v58 = &v51 - v21;
  v22 = sub_231158418();
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v22);
  v51 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311584F8();
  swift_getKeyPath();
  v25 = swift_allocObject();
  v26 = [a2 sharedItem];
  v27 = [v26 sharedIdentifier];

  v28 = [v27 stringValue];
  v29 = sub_231158E58();
  v31 = v30;

  *(v25 + 16) = v29;
  *(v25 + 24) = v31;
  *v12 = v25;
  v32 = v59;
  (*(v9 + 104))(v12, *MEMORY[0x277D721C8], v59);
  sub_23108C674(&qword_27DD3C320, MEMORY[0x277D724B8]);
  sub_23108C6BC();
  v33 = v57;
  sub_2311588F8();
  v34 = v60;

  (*(v9 + 8))(v12, v32);
  v35 = v61;
  v36 = *(v34 + 8);
  v37 = v17;
  v38 = v33;
  v36(v37, v13);
  sub_231157A28();
  v39 = v58;
  v40 = v65;
  sub_231158798();
  if (v40)
  {
    (*(v63 + 8))(v35, v64);
    return (v36)(v38, v13);
  }

  else
  {
    v42 = v55;
    (*(v63 + 8))(v35, v64);
    v36(v38, v13);
    v43 = v39;
    v44 = v56;
    if (__swift_getEnumTagSinglePayload(v39, 1, v56) == 1)
    {
      sub_231051B38(v39, &qword_27DD3BCE0, &qword_231161D10);
      v45 = *MEMORY[0x277D7A4F0];
      v46 = v52;
      sub_2311581C8();
      v47 = sub_231158238();
      v48 = sub_2311592D8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_23103C000, v47, v48, "pull: cascade told us to delete already removed tool", v49, 2u);
        MEMORY[0x2319267C0](v49, -1, -1);
      }

      (*(v53 + 8))(v46, v54);
      sub_23108C720();
      swift_allocError();
      return swift_willThrow();
    }

    else
    {
      v50 = v51;
      (*(v42 + 32))(v51, v43, v44);
      sub_2311587B8();
      return (*(v42 + 8))(v50, v44);
    }
  }
}

uint64_t sub_23108BCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_2311584E8();
}

uint64_t sub_23108BDB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_23108BE2C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2310602F0(*(v0 + 16));
  sub_23108C7AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t sub_23108BE70()
{
  sub_23108BE2C();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts24ToolKitCascadeSyncEngineC16PullStateMachineC011TransactionI0O(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23108BEF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23108BF38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23108BF80(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_23108BFB0()
{
  result = qword_27DD3C2C8;
  if (!qword_27DD3C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2C8);
  }

  return result;
}

id sub_23108C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = sub_231158E28();

  v9 = sub_231157958();
  v19[0] = 0;
  v10 = [v5 initWithFilename:v8 directory:v9 protectionClass:a4 error:v19];

  v11 = v19[0];
  if (v10)
  {
    v12 = sub_231157988();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a3, v12);
  }

  else
  {
    v15 = v19[0];
    sub_231157938();

    swift_willThrow();
    v16 = sub_231157988();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_23108C180()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23108C230;

  return sub_23108834C(v5, v3, v7, v6);
}

uint64_t sub_23108C230()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_23108C320(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
  OUTLINED_FUNCTION_5(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  OUTLINED_FUNCTION_21_6();
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v16 = *(v2 + v15);
  v18 = *(v2 + v17);

  return sub_231088B24(a1, a2, v13, v14, v2 + v12, v16, v18);
}

void sub_23108C3D8(void *a1)
{
  v3 = sub_231158668();
  OUTLINED_FUNCTION_5(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  OUTLINED_FUNCTION_21_6();
  v12 = *(v1 + v11);
  v14 = *(v1 + v13);
  v15 = *(v1 + 16);

  sub_2310891CC(a1, v15, v1 + v10, v12, v14);
}

void sub_23108C4A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_231158D88();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

uint64_t sub_23108C544(void *a1)
{
  v1 = [a1 typeDefinitions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231054A0C(0, &qword_27DD3BED0, 0x277D21170);
  v3 = sub_231158F48();

  return v3;
}

uint64_t sub_23108C5B4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231158E58();

  return v4;
}

unint64_t sub_23108C620()
{
  result = qword_27DD3C2F0;
  if (!qword_27DD3C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C2F0);
  }

  return result;
}

uint64_t sub_23108C674(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23108C6BC()
{
  result = qword_27DD3BCE8;
  if (!qword_27DD3BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C310, &unk_231163B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BCE8);
  }

  return result;
}

unint64_t sub_23108C720()
{
  result = qword_27DD3C330;
  if (!qword_27DD3C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C330);
  }

  return result;
}

uint64_t sub_23108C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 && a5 != 2)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_23108C814(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_23108C884(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

_BYTE *_s16PullStateMachineC12RemovalErrorOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s16PullStateMachineC5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23108CA28()
{
  result = qword_27DD3C348;
  if (!qword_27DD3C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C348);
  }

  return result;
}

unint64_t sub_23108CA80()
{
  result = qword_27DD3C350;
  if (!qword_27DD3C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C350);
  }

  return result;
}

void OUTLINED_FUNCTION_4_7()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 176);
  v3 = *(v0 - 536);
}

uint64_t OUTLINED_FUNCTION_20_5()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_22_4()
{
  result = v0;
  *(v2 - 560) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_4()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 512);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_3()
{
  result = v0;
  v3 = *(v1 - 512);
  v4 = *(v1 - 160);
  return result;
}

uint64_t static EventNodeBuilder.buildBlock(_:)()
{
  sub_231159038();
  sub_231159038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_231158F08();
}

_BYTE *sub_23108CD40(_BYTE *result, int a2, int a3)
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

uint64_t EventNode.erased()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_2310643C8();
  v5 = EventNode.map<A>(_:)(OUTLINED_FUNCTION_34_3, v4, a1, &type metadata for EmptyEvent, a2);

  return v5;
}

VoiceShortcuts::EmptyEventDescriptor __swiftcall EmptyEventDescriptor.init()()
{
  *v0 = 0x7974706D45;
  v0[1] = 0xE500000000000000;
  return result;
}

uint64_t EventNode.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for EventMap();

  swift_unknownObjectRetain();
  return sub_23108CF50(a1, a2, v5, a3, a5);
}

uint64_t sub_23108CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0_4();
  v10 = swift_allocObject();
  sub_23108D170(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_23108CFDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = *a1;
  result = sub_23108D104();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v8;
    *(result + 40) = v9;
    v10 = sub_231067678;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t sub_23108D068(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_231067650;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  sub_231042684(v5);
  return sub_23108D11C(v9, v8);
}

void *sub_23108D170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = 0;
  v5[5] = 0;
  v5[2] = a3;
  v5[3] = a5;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = v5;
  v10[5] = a1;
  v10[6] = a2;
  v11 = *(a5 + 32);
  swift_unknownObjectRetain();

  v11(sub_23108DB38, v10, a4, a5);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_23108D248(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(*a2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - v8;
  result = sub_23108D104();
  if (result)
  {
    v11 = result;
    a3(a1);
    v11(v9);
    sub_231046164(v11);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t EventMap.__deallocating_deinit()
{
  EventMap.deinit();
  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*sub_23108D3B8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_23108D134();
  return sub_231056514;
}

uint64_t EmptyEvent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static EmptyEventDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t EmptyEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t EmptyEventDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_23108D4D8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_23108D104();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_231066790;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_23108D548(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_231066768;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_231042684(v3);
  return sub_23108D11C(v6, v5);
}

uint64_t sub_23108D5D8(void (*a1)(uint64_t, void))
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  a1(v3, *(v1 + 40));
  return v3;
}

uint64_t sub_23108D638(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  return a3(v7, v8);
}

void *sub_23108D6E8(void (*a1)(void, void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  a1(v1[4], v1[5]);
  return v1;
}

uint64_t ErasedEvent.__deallocating_deinit()
{
  ErasedEvent.deinit();
  v0 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_23108D754(uint64_t a1)
{
  result = sub_23108D77C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108D77C()
{
  result = qword_27DD3C440;
  if (!qword_27DD3C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C440);
  }

  return result;
}

unint64_t sub_23108D7D0(uint64_t a1)
{
  result = sub_23108D7F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108D7F8()
{
  result = qword_27DD3C448;
  if (!qword_27DD3C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C448);
  }

  return result;
}

unint64_t sub_23108D850()
{
  result = qword_27DD3C450[0];
  if (!qword_27DD3C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD3C450);
  }

  return result;
}

uint64_t sub_23108D8C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  return sub_23108D11C(a1, a2);
}

void (*sub_23108D8D0(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v3[3] = v4;
  v3[4] = v5;
  return sub_23108D950;
}

void sub_23108D950(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  swift_endAccess();

  free(v1);
}

uint64_t sub_23108DB38(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_23108D248(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_beginAccess();
}

uint64_t static DiskArbitrationEventDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t DiskArbitrationEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t DiskArbitrationEventDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCDiskArbitrationNotificationEventStream.descriptor(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231158148();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23108DC2C(uint64_t a1)
{
  result = sub_23108DC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108DC54()
{
  result = qword_27DD3C4D8;
  if (!qword_27DD3C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4D8);
  }

  return result;
}

unint64_t sub_23108DCAC()
{
  result = qword_27DD3C4E0;
  if (!qword_27DD3C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4E0);
  }

  return result;
}

uint64_t sub_23108DD00(uint64_t a1)
{
  result = sub_23108DE4C(&qword_27DD3C4E8, MEMORY[0x277D79D38]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23108DD5C()
{
  result = qword_27DD3C4F0;
  if (!qword_27DD3C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4F0);
  }

  return result;
}

uint64_t sub_23108DDC8(uint64_t a1)
{
  v2 = MEMORY[0x277D79D58];
  *(a1 + 8) = sub_23108DE4C(&unk_280CCB0A0, MEMORY[0x277D79D58]);
  result = sub_23108DE4C(&unk_280CCB0B0, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23108DE4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23108DEA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_48();
    }

    else
    {
      OUTLINED_FUNCTION_7_8();
      sub_231159588();

      OUTLINED_FUNCTION_48();
      v3 = v5 + 6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_8();
    sub_231159588();

    OUTLINED_FUNCTION_48();
    v3 = v4 + 2;
  }

  v8 = v3;
  v6 = OUTLINED_FUNCTION_16_0();
  MEMORY[0x231924980](v6);
  return v8;
}

unint64_t sub_23108DF88()
{
  OUTLINED_FUNCTION_7_8();
  sub_231159588();

  v0 = OUTLINED_FUNCTION_16_0();
  MEMORY[0x231924980](v0);
  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_23108E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t sub_23108E02C()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_23108E07C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_23108E0AC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23108DF88();
}

uint64_t sub_23108E0B4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23108E02C();
}

uint64_t sub_23108E0D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_231158A88();
  v3[5] = v4;
  OUTLINED_FUNCTION_5(v4);
  v3[6] = v5;
  v7 = *(v6 + 64);
  v3[7] = OUTLINED_FUNCTION_21_0();
  v8 = sub_231158AA8();
  v3[8] = v8;
  OUTLINED_FUNCTION_5(v8);
  v3[9] = v9;
  v11 = *(v10 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v12 = sub_2311584A8();
  v3[12] = v12;
  OUTLINED_FUNCTION_5(v12);
  v3[13] = v13;
  v15 = *(v14 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v16 = sub_231157A38();
  v3[16] = v16;
  OUTLINED_FUNCTION_5(v16);
  v3[17] = v17;
  v19 = *(v18 + 64);
  v3[18] = OUTLINED_FUNCTION_21_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  v3[19] = v20;
  OUTLINED_FUNCTION_5(v20);
  v3[20] = v21;
  v23 = *(v22 + 64);
  v3[21] = OUTLINED_FUNCTION_21_0();
  v24 = sub_231158538();
  v3[22] = v24;
  OUTLINED_FUNCTION_5(v24);
  v3[23] = v25;
  v27 = *(v26 + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10) - 8) + 64);
  v3[26] = OUTLINED_FUNCTION_21_0();
  v29 = sub_231158418();
  v3[27] = v29;
  OUTLINED_FUNCTION_5(v29);
  v3[28] = v30;
  v32 = *(v31 + 64);
  v3[29] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23108E3CC, 0, 0);
}

uint64_t sub_23108E3CC()
{
  v1 = v0[24];
  v68 = v0[25];
  v70 = v0[23];
  v2 = v0[21];
  v71 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[3];
  v7 = v0[2];
  v73 = *(v0[4] + 16);
  v76 = v0[26];
  sub_231158508();
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *v2 = v8;
  (*(v3 + 104))(v2, *MEMORY[0x277D721C8], v4);
  sub_23108FC88(&qword_27DD3C320, MEMORY[0x277D724B8]);
  sub_23108C6BC();
  swift_bridgeObjectRetain_n();
  sub_2311588F8();

  (*(v3 + 8))(v2, v4);
  v9 = *(v70 + 8);
  v9(v1, v71);
  sub_231157A28();
  sub_2311586D8();
  v10 = v0[26];
  v11 = v0[27];
  v12 = v0[25];
  v13 = v0[22];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v9(v12, v13);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v14 = v0[2];
    v15 = v0[3];
    sub_23108FBCC(v0[26]);
    sub_23108FC34();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();
LABEL_16:
    v53 = v0[29];
    v55 = v0[25];
    v54 = v0[26];
    OUTLINED_FUNCTION_1_11();
    v56 = v0[10];
    v57 = v0[11];
    v75 = v0[7];

    OUTLINED_FUNCTION_1();

    return v58();
  }

  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[12];
  v24 = v0[13];
  v25 = v0[3];

  (*(v18 + 32))(v17, v20, v19);
  sub_2311583B8();
  sub_231158498();
  sub_23108FC88(&qword_27DD3C520, MEMORY[0x277D72418]);
  LOBYTE(v19) = sub_231159478();
  v26 = *(v24 + 8);
  v26(v22, v23);
  v26(v21, v23);
  v27 = v0[29];
  if ((v19 & 1) == 0)
  {
    v48 = v0[27];
    v47 = v0[28];
    v49 = sub_2311583E8();
    v51 = v50;
    sub_23108FC34();
    swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v51;
    *(v52 + 16) = 1;
    swift_willThrow();
    (*(v47 + 8))(v27, v48);
    goto LABEL_16;
  }

  result = sub_231158398();
  v74 = *(result + 16);
  v77 = result;
  if (v74)
  {
    v29 = 0;
    v30 = v0[9];
    v31 = v0[6];
    v72 = result + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v69 = *MEMORY[0x277D72FC8];
    v32 = (v30 + 8);
    v67 = (v31 + 32);
    v33 = (v31 + 8);
    while (v29 < *(v77 + 16))
    {
      v35 = v0[10];
      v34 = v0[11];
      v36 = v0[8];
      v37 = *(v30 + 16);
      v37(v34, v72 + *(v30 + 72) * v29, v36);
      v37(v35, v34, v36);
      if ((*(v30 + 88))(v35, v36) == v69)
      {
        v38 = v0[10];
        v39 = v0[7];
        v40 = v0[5];
        (*(v30 + 96))(v38, v0[8]);
        (*v67)(v39, v38, v40);
        sub_231157B38();
        LOBYTE(v38) = sub_231157B18();
        (*v33)(v39, v40);
        if ((v38 & 1) == 0)
        {
          v60 = v0[28];
          v59 = v0[29];
          v61 = v0[27];
          v62 = v0[11];
          v63 = v0[8];

          v78 = sub_2311583E8();
          v79 = v64;
          MEMORY[0x231924980](8250, 0xE200000000000000);
          v65 = sub_231158A98();
          MEMORY[0x231924980](v65);

          sub_23108FC34();
          swift_allocError();
          *v66 = v78;
          *(v66 + 8) = v79;
          *(v66 + 16) = 2;
          swift_willThrow();
          (*v32)(v62, v63);
          (*(v60 + 8))(v59, v61);
          goto LABEL_16;
        }

        result = (*v32)(v0[11], v0[8]);
      }

      else
      {
        v41 = v0[10];
        v42 = v0[8];
        v43 = *v32;
        (*v32)(v0[11], v42);
        result = (v43)(v41, v42);
      }

      if (v74 == ++v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v44 = swift_task_alloc();
    v0[30] = v44;
    *v44 = v0;
    v44[1] = sub_23108EAF4;
    v45 = v0[29];
    v46 = v0[4];

    return sub_23108F1D4(v45);
  }

  return result;
}

uint64_t sub_23108EAF4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v7 = *(v6 + 240);
  v8 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v9 = v8;
  *(v4 + 248) = v0;

  if (!v0)
  {
    *(v4 + 256) = v1;
  }

  OUTLINED_FUNCTION_10_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23108EBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  if (v15[32])
  {
    OUTLINED_FUNCTION_8_8();
    v40 = v15[11];
    v41 = v15[10];
    v42 = v15[7];
    (*(v16 + 8))(v14);

    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_10();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, v40, v41, v42, a12, a13, a14);
  }

  else
  {
    v26 = v15[4];
    v28 = *(v26 + 24);
    v27 = *(v26 + 32);
    v29 = *(MEMORY[0x277D72210] + 4);
    v30 = swift_task_alloc();
    v15[33] = v30;
    *v30 = v15;
    v30[1] = sub_23108ED5C;
    v31 = v15[29];
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_10();

    return MEMORY[0x2821DA708](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23108ED5C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v7 = *(v6 + 264);
  v8 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v9 = v8;
  *(v4 + 272) = v0;

  if (!v0)
  {
    *(v4 + 280) = v1;
  }

  OUTLINED_FUNCTION_10_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23108EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  v16 = v15[35];
  OUTLINED_FUNCTION_8_8();
  v17 = v15[11];
  v29 = v15[10];
  v30 = v15[7];
  v31 = v18;
  (*(v19 + 8))(v14);

  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_23108EF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  (*(v14[28] + 8))(v14[29], v14[27]);
  v15 = v14[31];
  v16 = v14[29];
  v18 = v14[25];
  v17 = v14[26];
  OUTLINED_FUNCTION_1_11();
  v19 = v14[10];
  v20 = v14[11];
  v31 = v14[7];
  v32 = v21;

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_23108F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_2();
  (*(v14[28] + 8))(v14[29], v14[27]);
  v15 = v14[34];
  v16 = v14[29];
  v18 = v14[25];
  v17 = v14[26];
  OUTLINED_FUNCTION_1_11();
  v19 = v14[10];
  v20 = v14[11];
  v31 = v14[7];
  v32 = v21;

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

void *sub_23108F10C()
{
  if (v0[3])
  {
    v1 = v0[4];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_231158548();
    swift_unknownObjectRelease();
  }

  v2 = v0[2];

  v3 = v0[3];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23108F17C()
{
  sub_23108F10C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23108F1D4(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB0, &qword_231164120) - 8) + 64);
  v2[15] = OUTLINED_FUNCTION_21_0();
  v4 = sub_231158418();
  v2[16] = v4;
  OUTLINED_FUNCTION_5(v4);
  v2[17] = v5;
  v7 = *(v6 + 64);
  v2[18] = OUTLINED_FUNCTION_21_0();
  v8 = sub_231158488();
  v2[19] = v8;
  OUTLINED_FUNCTION_5(v8);
  v2[20] = v9;
  v11 = *(v10 + 64);
  v2[21] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23108F300, 0, 0);
}

uint64_t sub_23108F300()
{
  v1 = v0[13];
  if (sub_2311583E8() == 0xD00000000000001ALL && 0x80000002311694F0 == v2)
  {
  }

  else
  {
    v4 = sub_231159818();

    if ((v4 & 1) == 0)
    {
      v5 = v0[21];
      v6 = v0[18];
      v7 = v0[15];

      OUTLINED_FUNCTION_14_7();

      return v8(0);
    }
  }

  v10 = v0[21];
  v11 = v0[15];
  (*(v0[17] + 16))(v0[18], v0[13], v0[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000231169510;
  v13 = sub_231158968();
  v14 = swift_allocBox();
  *v15 = 0x6974616D6F747541;
  v15[1] = 0xE900000000000063;
  (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D729B8], v13);
  v16 = sub_231158978();
  v17 = MEMORY[0x277D72A68];
  *(inited + 72) = v16;
  *(inited + 80) = v17;
  *__swift_allocate_boxed_opaque_existential_1((inited + 48)) = v14;
  v18 = *MEMORY[0x277D72A58];
  (*(*(v16 - 8) + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
  sub_231158DB8();
  v19 = sub_2311585A8();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  sub_231158448();
  v20 = v0[14];
  v22 = *(v20 + 24);
  v21 = *(v20 + 32);
  v23 = *(MEMORY[0x277D72270] + 4);
  v24 = swift_task_alloc();
  v0[22] = v24;
  *v24 = v0;
  v24[1] = sub_23108F670;
  v25 = v0[21];
  v26 = OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2821DA7E8](v26);
}

uint64_t sub_23108F670()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_8();
  v4 = v3;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v2;
  OUTLINED_FUNCTION_3_2();
  *v9 = v8;
  *(v4 + 184) = v0;

  if (!v0)
  {
    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_10_8();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23108F774()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];

  OUTLINED_FUNCTION_14_7();

  return v5(v1);
}

uint64_t sub_23108F810()
{
  OUTLINED_FUNCTION_21();
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];

  OUTLINED_FUNCTION_1();

  return v5();
}

unint64_t sub_23108F8A8()
{
  result = qword_27DD3C4F8;
  if (!qword_27DD3C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C4F8);
  }

  return result;
}

uint64_t sub_23108F8FC()
{
  OUTLINED_FUNCTION_21();
  *(v1 + 16) = v2;
  v4 = *v3;
  v5 = v3[1];
  v6 = *v0;
  v7 = swift_task_alloc();
  *(v1 + 24) = v7;
  *v7 = v1;
  v7[1] = sub_23108F9A0;

  return sub_23108E0D8(v4, v5);
}

uint64_t sub_23108F9A0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_4();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v9 = v8;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v10 = *(v8 + 8);

  return v10();
}

unint64_t sub_23108FA9C(uint64_t a1)
{
  *(a1 + 8) = sub_23108FACC();
  result = sub_23108FB20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23108FACC()
{
  result = qword_27DD3C500;
  if (!qword_27DD3C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C500);
  }

  return result;
}

unint64_t sub_23108FB20()
{
  result = qword_27DD3C508;
  if (!qword_27DD3C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C508);
  }

  return result;
}

unint64_t sub_23108FB78()
{
  result = qword_27DD3C510;
  if (!qword_27DD3C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C510);
  }

  return result;
}

uint64_t sub_23108FBCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23108FC34()
{
  result = qword_27DD3C518;
  if (!qword_27DD3C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C518);
  }

  return result;
}

uint64_t sub_23108FC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23108FCDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23108FD1C(uint64_t result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_1_11()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
}

void OUTLINED_FUNCTION_8_8()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[21];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
}

uint64_t sub_23108FDF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2311590F8();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_231157BE8();
    if (v6 <= 0x3F)
    {
      sub_2311590E8();
      result = sub_231159448();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t static AppProtectionEventDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t AppProtectionEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t AppProtectionEventDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCAppProtectionEventStream.Event.description.getter()
{
  sub_231159588();
  MEMORY[0x231924980](0xD000000000000015, 0x8000000231169590);
  v0 = sub_231158068();
  MEMORY[0x231924980](v0);

  MEMORY[0x231924980](0x506E656464696820, 0xEF3D64616F6C7961);
  sub_231158048();
  v1 = MEMORY[0x231924A30]();
  v3 = v2;

  MEMORY[0x231924980](v1, v3);

  MEMORY[0x231924980](0xD000000000000011, 0x80000002311695B0);
  sub_231158058();
  v4 = MEMORY[0x231924A30]();
  v6 = v5;

  MEMORY[0x231924980](v4, v6);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0;
}

uint64_t XPCAppProtectionEventStream.descriptor(for:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231158068();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23109011C(uint64_t a1)
{
  result = sub_231090144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231090144()
{
  result = qword_27DD3C528;
  if (!qword_27DD3C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C528);
  }

  return result;
}

unint64_t sub_23109019C()
{
  result = qword_27DD3C530;
  if (!qword_27DD3C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C530);
  }

  return result;
}

uint64_t sub_2310901F0(uint64_t a1)
{
  result = sub_23109033C(&qword_27DD3C538, MEMORY[0x277D79CC0]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23109024C()
{
  result = qword_27DD3C540;
  if (!qword_27DD3C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C540);
  }

  return result;
}

uint64_t sub_2310902B8(uint64_t a1)
{
  v2 = MEMORY[0x277D79CD8];
  *(a1 + 8) = sub_23109033C(&unk_280CCB128, MEMORY[0x277D79CD8]);
  result = sub_23109033C(&qword_280CCB138, v2);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23109033C(unint64_t *a1, void (*a2)(uint64_t))
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

void *SpotlightIndexDiffer.__allocating_init(index:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_9();
  result = swift_allocObject();
  result[5] = &type metadata for SpotlightIndexDiffer.DataSource;
  result[6] = &off_2845DAE28;
  result[2] = a1;
  return result;
}

void sub_2310903D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

BOOL sub_231090444(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 16))(a2, a3);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  if (v8 & 1) != 0 || (v12)
  {
    return 0;
  }

  v14 = v11;
  v15 = (*(a3 + 8))(a2, a3);
  v17 = v16;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v18);
  if (v15 == (*(v19 + 8))(v18, v19) && v17 == v20)
  {
  }

  else
  {
    v22 = sub_231159818();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  return v6 == v14;
}

uint64_t sub_2310905AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2310905D0, 0, 0);
}

uint64_t sub_2310905D0()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F0, &qword_2311645D0);
  *v5 = v0;
  v5[1] = sub_2310906DC;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2310906DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v2 + 56);
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v7 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231090800()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_231090860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
  v40 = *(v45 - 8);
  v42 = *(v40 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v36 - v7;
  v8 = sub_231158368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  aBlock = 0;
  v47 = 0xE000000000000000;
  sub_231159588();

  aBlock = 0xD00000000000001ALL;
  v47 = 0x8000000231169640;
  MEMORY[0x231924980](a2, a3);
  MEMORY[0x231924980](34, 0xE100000000000000);
  v14 = aBlock;
  v37 = v47;
  v15 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_231161B80;
  *(v16 + 32) = sub_231158C98();
  *(v16 + 40) = v17;
  sub_231092F10(v16, v15);
  v18 = *(v9 + 16);
  v41 = a4;
  v18(v13, a4, v8);
  v19 = (*(v9 + 88))(v13, v8);
  if (v19 == *MEMORY[0x277D721F8])
  {
    v20 = v14;
LABEL_5:
    v21 = sub_231158F38();

    [v15 setFetchAttributes_];

    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
    *(v22 + 16) = sub_231158DB8();
    v23 = objc_allocWithZone(MEMORY[0x277CC3498]);
    v38 = v15;
    v24 = sub_231092B74(v20, v37, v15);
    v25 = v39;
    v18(v39, v41, v8);
    v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v27 = swift_allocObject();
    (*(v9 + 32))(v27 + v26, v25, v8);
    *(v27 + ((v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v50 = sub_2310935B8;
    v51 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2310915C4;
    v49 = &block_descriptor_9;
    v28 = _Block_copy(&aBlock);

    [v24 setFoundItemsHandler_];
    _Block_release(v28);
    v29 = v40;
    v30 = v43;
    v31 = v45;
    (*(v40 + 16))(v43, v44, v45);
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v29 + 32))(v34 + v32, v30, v31);
    *(v34 + v33) = v22;
    v50 = sub_231093640;
    v51 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2310903D8;
    v49 = &block_descriptor_20;
    v35 = _Block_copy(&aBlock);

    [v24 setCompletionHandler_];
    _Block_release(v35);
    [v24 start];

    return;
  }

  if (v19 == *MEMORY[0x277D72200])
  {
    v20 = v14;
    goto LABEL_5;
  }

  sub_231159808();
  __break(1u);
}

void sub_231090E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v63 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C610, &unk_2311645E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v57 - v6;
  v7 = sub_231158368();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v67 = sub_23106FF58(a1);
  v14 = 0;
  v66 = a1 & 0xC000000000000001;
  v65 = a1;
  v64 = a1 & 0xFFFFFFFFFFFFFF8;
  v69 = *MEMORY[0x277D721F8];
  v68 = (v8 + 104);
  v70 = (v8 + 8);
  v60 = (v8 + 32);
  v62 = v7;
  v61 = v13;
  while (v67 != v14)
  {
    if (v66)
    {
      v15 = MEMORY[0x231925080](v14, v65);
    }

    else
    {
      if (v14 >= *(v64 + 16))
      {
        goto LABEL_34;
      }

      v15 = *(v65 + 8 * v14 + 32);
    }

    v16 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      sub_231159888();
      __break(1u);
      return;
    }

    v17 = *v68;
    (*v68)(v13, v69, v7);
    v18 = [v16 attributeSet];
    v19 = sub_231158438();
    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = v19;
    v21 = [v18 valueForCustomKey_];

    if (v21)
    {
      v77[0] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C620, &qword_2311645F8);
      if (swift_dynamicCast())
      {
        v22 = v59;
        sub_231158348();
        (*v70)(v13, v7);
        if (__swift_getEnumTagSinglePayload(v22, 1, v7) == 1)
        {
          v23 = v58;
          v17(v58, v69, v7);
          if (__swift_getEnumTagSinglePayload(v22, 1, v7) != 1)
          {
            sub_231093B90(v22, &qword_27DD3C610, &unk_2311645E8);
          }
        }

        else
        {
          v23 = v58;
          (*v60)(v58, v22, v7);
        }

        (*v60)(v13, v23, v7);
      }
    }

    sub_2310936CC();
    sub_231158F18();
    sub_231158F18();
    if (v79 == v77[0] && *(&v79 + 1) == v77[1])
    {
    }

    else
    {
      v25 = sub_231159818();

      if ((v25 & 1) == 0)
      {
        (*v70)(v13, v7);

        goto LABEL_30;
      }
    }

    v71 = v14;
    v26 = [v16 uniqueIdentifier];
    v27 = sub_231158E58();
    v29 = v28;

    v30 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
    v80 = v30;
    v81 = &protocol witness table for CSSearchableItem;
    *&v79 = v16;
    v31 = v72;
    swift_beginAccess();
    sub_23104613C(&v79, v77);
    v32 = v78;
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v34 = *(*(v32 - 8) + 64);
    MEMORY[0x28223BE20](v33);
    v36 = (&v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36);
    v38 = *v36;
    v39 = v16;
    v40 = *(v31 + 16);
    swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v31 + 16);
    *(v31 + 16) = 0x8000000000000000;
    v75 = &protocol witness table for CSSearchableItem;
    v76 = v41;
    v74 = v30;
    *&v73 = v38;
    v42 = sub_23105FECC(v27, v29);
    if (__OFADD__(v41[2], (v43 & 1) == 0))
    {
      goto LABEL_35;
    }

    v44 = v42;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
    if (sub_231159698())
    {
      v46 = sub_23105FECC(v27, v29);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_37;
      }

      v44 = v46;
    }

    v48 = v76;
    if (v45)
    {
      v49 = (v76[7] + 40 * v44);
      __swift_destroy_boxed_opaque_existential_0(v49);
      sub_23104613C(&v73, v49);
    }

    else
    {
      v50 = v74;
      v51 = __swift_mutable_project_boxed_opaque_existential_1(&v73, v74);
      v52 = *(*(v50 - 8) + 64);
      MEMORY[0x28223BE20](v51);
      v54 = (&v57 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v55 + 16))(v54);
      sub_231093AD0(v44, v27, v29, *v54, v48);
      __swift_destroy_boxed_opaque_existential_0(&v73);
    }

    v56 = *(v72 + 16);
    *(v72 + 16) = v48;

    __swift_destroy_boxed_opaque_existential_0(v77);
    swift_endAccess();

    v13 = v61;
    v7 = v62;
    (*v70)(v61, v62);
    v14 = v71;
LABEL_30:
    ++v14;
  }
}

uint64_t sub_2310915C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v3 = sub_231158F48();

  v2(v3);
}

uint64_t sub_231091648(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
    return sub_231159058();
  }

  else
  {
    swift_beginAccess();
    v6 = *(a3 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
    return sub_231159068();
  }
}

uint64_t sub_2310916E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231091798;

  return sub_2310905AC(a1, a2, a3);
}

uint64_t sub_231091798()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void *SpotlightIndexDiffer.init(index:)(uint64_t a1)
{
  v1[5] = &type metadata for SpotlightIndexDiffer.DataSource;
  v1[6] = &off_2845DAE28;
  v1[2] = a1;
  return v1;
}

uint64_t SpotlightIndexDiffer.__allocating_init(dataSource:)(__int128 *a1)
{
  OUTLINED_FUNCTION_5_9();
  v2 = swift_allocObject();
  sub_23104613C(a1, v2 + 16);
  return v2;
}

uint64_t sub_231091904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 352) = a4;
  *(v5 + 360) = v4;
  *(v5 + 336) = a2;
  *(v5 + 344) = a3;
  v8 = sub_231158C58();
  *(v5 + 368) = v8;
  OUTLINED_FUNCTION_5(v8);
  *(v5 + 376) = v9;
  v11 = *(v10 + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  v12 = *(a3 - 8);
  *(v5 + 392) = v12;
  *(v5 + 400) = *(v12 + 64);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = *a1;
  *(v5 + 496) = *(a1 + 16);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231091A64()
{
  v1 = v0[45];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = sub_231158CA8();
  v6 = v5;
  v0[58] = v5;
  v7 = *(v3 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[59] = v9;
  *v9 = v0;
  v9[1] = sub_231091BB0;
  v10 = v0[42];

  return v12(v4, v6, v10, v2, v3);
}

uint64_t sub_231091BB0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = v2[59];
  v11 = *v1;
  v3[60] = v5;
  v3[61] = v0;

  if (!v0)
  {
    v6 = v3[58];
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231091CC0()
{
  v1 = (v0 + 344);
  v2 = *(v0 + 496);
  v3 = *(v0 + 448);
  v4 = *(v0 + 344);
  v136 = sub_231158FB8();
  v137 = sub_231158FB8();
  sub_231158FB8();
  v131 = (v0 + 344);
  if ((v2 & 1) == 0)
  {
    v8 = *v1;

    v9 = sub_231158F58();
    v138 = v9;
    if (v9 == sub_231158FF8())
    {
      sub_231092F7C(*(v0 + 448), *(v0 + 456), 0);
      v10 = *(v0 + 480);
      goto LABEL_33;
    }

    v128 = *(*(v0 + 352) + 8);
    v37 = *(v0 + 392);
    v113 = *(v0 + 400);
    v134 = (v37 + 16);
    v123 = (v37 + 32);
    v118 = v37;
    v120 = (v37 + 8);
    v38 = *(v0 + 480);
    while (1)
    {
      v39 = *v1;
      v40 = sub_231158FD8();
      sub_231158F88();
      if (v40)
      {
        v41 = *(v118 + 16);
        v41(*(v0 + 440), v3 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v9, *(v0 + 344));
      }

      else
      {
        v89 = *v131;
        result = sub_2311595A8();
        if (v113 != 8)
        {
          goto LABEL_38;
        }

        v90 = result;
        v91 = *(v0 + 440);
        v92 = *(v0 + 344);
        *(v0 + 328) = v90;
        v41 = *v134;
        (*v134)(v91, v0 + 328, v92);
        swift_unknownObjectRelease();
      }

      v43 = *(v0 + 432);
      v42 = *(v0 + 440);
      v45 = *(v0 + 344);
      v44 = *(v0 + 352);
      sub_231159028();
      (*v123)(v43, v42, v45);
      v46 = v128(v45, v44);
      if (v38[2])
      {
        v48 = sub_23105FECC(v46, v47);
        v50 = v49;

        if (v50)
        {
          v125 = v38;
          v52 = *(v0 + 424);
          v51 = *(v0 + 432);
          v54 = *(v0 + 344);
          v53 = *(v0 + 352);
          v116 = v53;
          sub_2310548A0(v125[7] + 40 * v48, v0 + 176);
          sub_23104613C((v0 + 176), v0 + 136);
          v55 = *(v0 + 160);
          v56 = *(v0 + 168);
          __swift_project_boxed_opaque_existential_0((v0 + 136), v55);
          *(v0 + 240) = v54;
          *(v0 + 248) = v53;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
          v41(boxed_opaque_existential_1, v51, v54);
          sub_231090444((v0 + 216), v55, v56);
          __swift_destroy_boxed_opaque_existential_0((v0 + 216));
          v41(v52, v51, v54);
          sub_231159038();
          v38 = v125;
          sub_231159008();
          v58 = v128(v54, v53);
          v60 = sub_23105FECC(v58, v59);
          LOBYTE(v55) = v61;

          v70 = *(v0 + 432);
          v71 = *(v0 + 344);
          if (v55)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v72 = v125[3];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C558, &qword_231164430);
            sub_231159698();
            v73 = *(v125[6] + 16 * v60 + 8);

            sub_23104613C((v125[7] + 40 * v60), v0 + 256);
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD3C560, &qword_231164438);
            v74 = sub_2311596B8();
            v82 = OUTLINED_FUNCTION_11_7(v74, v75, v76, v77, v78, v79, v80, v81, v107, v108, v110, v113, v116, v118, v120);
            v83(v82);
          }

          else
          {
            v86 = OUTLINED_FUNCTION_11_7(v62, v63, v64, v65, v66, v67, v68, v69, v107, v108, v110, v113, v116, v118, v120);
            v87(v86);
            *(v0 + 288) = 0;
            *(v0 + 256) = 0u;
            *(v0 + 272) = 0u;
          }

          sub_231093B90(v0 + 256, &qword_27DD3C550, &qword_231164428);
          __swift_destroy_boxed_opaque_existential_0((v0 + 136));
          goto LABEL_29;
        }
      }

      else
      {
      }

      v84 = *(v0 + 432);
      v85 = *(v0 + 344);
      v41(*(v0 + 424), v84, v85);
      sub_231159038();
      sub_231159008();
      (*v120)(v84, v85);
LABEL_29:
      v1 = (v0 + 344);
      v88 = *v131;
      v9 = v138;
      if (v138 == sub_231158FF8())
      {
        sub_231092F7C(*(v0 + 448), *(v0 + 456), 0);
LABEL_33:

        v114 = 0xE400000000000000;
        v115 = sub_2310927B4(v94);
        v93 = 1819047270;
LABEL_34:
        v112 = v93;
        v121 = *(v0 + 440);
        v124 = *(v0 + 432);
        v130 = *(v0 + 424);
        v132 = *(v0 + 416);
        v135 = *(v0 + 408);
        v96 = *(v0 + 376);
        v95 = *(v0 + 384);
        v109 = *(v0 + 368);
        v97 = *(v0 + 344);
        sub_231158B68();
        sub_231158B58();
        *(v0 + 304) = sub_231158FF8();
        v98 = sub_2311597C8();
        v100 = v99;
        *(v0 + 312) = sub_231158FF8();
        v101 = sub_2311597C8();
        v103 = v102;
        *(v0 + 320) = *(v115 + 16);
        v104 = sub_2311597C8();
        *v95 = v112;
        v95[1] = v114;
        v95[2] = v98;
        v95[3] = v100;
        v95[4] = v101;
        v95[5] = v103;
        v95[6] = v104;
        v95[7] = v105;
        (*(v96 + 104))(v95, *MEMORY[0x277D73270], v109);
        sub_231158B48();

        (*(v96 + 8))(v95, v109);

        v106 = *(v0 + 8);

        return v106(v136, v137, v115);
      }
    }
  }

  v5 = *(v0 + 456);
  v6 = *(v0 + 344);

  v7 = sub_231158F58();
  v139 = v7;
  v115 = v5;
  if (v7 == sub_231158FF8())
  {
LABEL_3:

    v126 = *(v0 + 480);

    v114 = 0xE700000000000000;
    v93 = 0x6C616974726170;
    goto LABEL_34;
  }

  v11 = *(v0 + 392);
  v133 = (v11 + 16);
  v127 = *(*(v0 + 352) + 8);
  v129 = *(v0 + 480);
  v122 = (v11 + 8);
  v111 = *(v0 + 400);
  while (1)
  {
    v12 = *v1;
    v13 = sub_231158FD8();
    sub_231158F88();
    if (v13)
    {
      v14 = *(v11 + 16);
      v14(*(v0 + 416), v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, *(v0 + 344));
      goto LABEL_9;
    }

    v32 = *v1;
    result = sub_2311595A8();
    if (v111 != 8)
    {
      break;
    }

    v34 = result;
    v35 = *(v0 + 416);
    v36 = *(v0 + 344);
    *(v0 + 296) = v34;
    v14 = *v133;
    (*v133)(v35, v0 + 296, v36);
    swift_unknownObjectRelease();
LABEL_9:
    v16 = *(v0 + 408);
    v15 = *(v0 + 416);
    v18 = *(v0 + 344);
    v17 = *(v0 + 352);
    sub_231159028();
    (*(v11 + 32))(v16, v15, v18);
    v19 = v127(v18, v17);
    if (!*(v129 + 16))
    {

LABEL_13:
      v29 = *(v0 + 408);
      v30 = *(v0 + 344);
      v14(*(v0 + 424), v29, v30);
      sub_231159038();
      sub_231159008();
      (*v122)(v29, v30);
      goto LABEL_14;
    }

    v21 = *(v0 + 480);
    v22 = sub_23105FECC(v19, v20);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

    v117 = *(v0 + 424);
    v25 = *(v0 + 408);
    v119 = *v1;
    sub_2310548A0(*(v129 + 56) + 40 * v22, v0 + 56);
    sub_23104613C((v0 + 56), v0 + 16);
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v26);
    *(v0 + 120) = v119;
    v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v14(v28, v25, v119);
    v1 = (v0 + 344);
    sub_231090444((v0 + 96), v26, v27);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v14(v117, v25, v119);
    sub_231159038();
    sub_231159008();
    (*v122)(v25, v119);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_14:
    v31 = *v1;
    v7 = v139;
    if (v139 == sub_231158FF8())
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_231092700()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];
  v7 = v0[48];

  v8 = v0[1];
  v9 = v0[61];

  return v8();
}

uint64_t sub_2310927B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_2310CC9AC(*(a1 + 16), 0);
  OUTLINED_FUNCTION_9_9();
  v7 = sub_231093724(v3, v4, v5, v6);
  sub_231043ED0();
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_231092834(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_2310CC9AC(*(a1 + 16), 0);
  OUTLINED_FUNCTION_9_9();
  v7 = sub_231093974(v3, v4, v5, v6);
  sub_231043ED0();
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t SpotlightIndexDiffer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OUTLINED_FUNCTION_5_9();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t CSSearchableItem.diffingIdentifier.getter()
{
  v1 = [v0 uniqueIdentifier];
  v2 = sub_231158E58();

  return v2;
}

id CSSearchableItem.diffingHash.getter()
{
  sub_231054A0C(0, &qword_27DD3C8E0, 0x277CC33B0);
  v1 = sub_231092AD0(0xD000000000000021, 0x80000002311673A0, 0, 0, 1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v0 attributeSet];
  v4 = [v3 valueForCustomKey_];

  if (!v4)
  {

    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v5 longLongValue];

  swift_unknownObjectRelease();
  return v6;
}

id sub_231092AD0(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_231158E28();

  v12 = [v10 initWithKeyName:v11 searchable:a3 & 1 searchableByDefault:a4 & 1 unique:a5 & 1 multiValued:a6 & 1];

  return v12;
}

id sub_231092B74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231158E28();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

unint64_t sub_231092BD8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_231158E58();
  sub_231159918();
  sub_231158EA8();
  v4 = sub_231159948();

  return sub_231092CF4(a1, v4);
}

unint64_t sub_231092C6C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_231159508();

  return sub_231092DEC(a1, v5);
}

unint64_t sub_231092CB0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_231159908();

  return sub_231092EB0(a1, v4);
}

unint64_t sub_231092CF4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_231158E58();
    v8 = v7;
    if (v6 == sub_231158E58() && v8 == v9)
    {

      return i;
    }

    v11 = sub_231159818();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_231092DEC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_231093BE4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x231924FE0](v8, a1);
    sub_231086718(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231092EB0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_231092F10(uint64_t a1, void *a2)
{
  v3 = sub_231158F38();

  [a2 setBundleIDs_];
}

uint64_t sub_231092F7C(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t dispatch thunk of SpotlightDifferDataSource.getIndexItemIdentifiers(for:type:)()
{
  OUTLINED_FUNCTION_7_9();
  v2 = *(v1 + 8);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_2_10(v4);

  return v6(v5);
}

uint64_t sub_2310930DC()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t dispatch thunk of SpotlightIndexDiffer.calculateDifference<A>(withChangeset:toolType:)()
{
  OUTLINED_FUNCTION_7_9();
  v2 = *(*v0 + 104);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_2_10(v4);

  return v6(v5);
}

uint64_t sub_231093398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26();
  v8 = *(v7 + 16);
  v9 = *v3;
  OUTLINED_FUNCTION_3_2();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(a1, a2, a3);
}

uint64_t sub_2310934A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2310934F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231093534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_2310935B8()
{
  v0 = sub_231158368();
  OUTLINED_FUNCTION_5(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_3_10(v5);

  sub_231090E00(v7, v8, v9);
}

uint64_t sub_231093640()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
  OUTLINED_FUNCTION_5(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  v7 = OUTLINED_FUNCTION_3_10(v5);

  return sub_231091648(v7, v8, v9);
}

unint64_t sub_2310936CC()
{
  result = qword_27DD3C618;
  if (!qword_27DD3C618)
  {
    sub_231158368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C618);
  }

  return result;
}

uint64_t sub_231093724(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231093880(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 40 * v6 + 25); ; i -= 40)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(i - 25);
      v14 = *(i - 17);
      v15 = *(i - 9);
      v16 = *(i - 1);
      v17 = *i;
      *v8 = *(i - 33);
      *(v8 + 8) = v13;
      *(v8 + 16) = v14;
      *(v8 + 24) = v15;
      *(v8 + 32) = v16;
      *(v8 + 33) = v17;
      if (!(v10 + v9))
      {
        sub_231079464();
        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 40;
      result = sub_231079464();
      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_231093974(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231093AD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_231054A0C(0, &qword_280CCAF38, 0x277CC34B0);
  v17 = &protocol witness table for CSSearchableItem;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_23104613C(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_231093B90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_231093D08(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return sub_231093D4C(v3, a2);
}

unint64_t VCDaemonXPCServer.DaemonError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (!*(v0 + 16))
  {

    sub_231159588();

    OUTLINED_FUNCTION_51_2();
    v11 = v9 | 2;
    v12 = v8;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_35_1();
      v7 = 0;
      goto LABEL_7;
    }

LABEL_8:
    MEMORY[0x231924980](v2, v1);

    return v11;
  }

  if (*(v0 + 16) == 1)
  {

    sub_231159588();

    OUTLINED_FUNCTION_51_2();
    v11 = v4 | 1;
    v12 = v3;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_35_1();
      v7 = 1;
LABEL_7:
      sub_231093EB0(v5, v6, v7);
      v1 = 0xEE002E6465696669;
      v2 = &v11;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v2 | v1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_231093EB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_231093ECC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for TriggerService();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v1 + 24) = 1;
    *(v0 + 64) = v1;
    v3 = v2;
  }

  return v1;
}

id sub_231093F3C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    if (qword_280CCBC80 == -1)
    {
      v3 = 0;
    }

    else
    {
      swift_once();
      v3 = *(v0 + 72);
    }

    v4 = qword_280CCDFA0;
    *(v0 + 72) = qword_280CCDFA0;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_231093FD0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = sub_231158288();
  v13 = OUTLINED_FUNCTION_19(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v16 = sub_2311593C8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v24 = v23 - v22;
  v6[8] = 0;
  v6[9] = 0;
  v6[2] = 0;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  (*(v19 + 104))(v23 - v22, *MEMORY[0x277D79D78], v16);
  v25 = a5;
  v33 = a1;

  v32 = a3;

  sub_2311593B8();
  (*(v19 + 8))(v24, v16);

  sub_231158278();
  v26 = sub_2311582B8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_2311582A8();

  v30 = v6[2];
  v6[2] = v29;

  return v6;
}

uint64_t sub_231094204()
{

  sub_231158298();
}

double sub_231094288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231158308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v7 + 32))(&v15[v14], &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_23105ED1C(0, 0, v12, &unk_2311647E0, v15);

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_23109445C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2310721C0;

  return sub_2310947EC();
}

uint64_t sub_2310944F8(uint64_t a1)
{
  v2 = sub_2311582C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231158258();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277D7A4F8];
  sub_2311581C8();
  v13 = *(v3 + 16);
  v13(v6, a1, v2);
  v14 = sub_231158238();
  v15 = sub_2311592F8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v7;
    v17 = v16;
    v24 = swift_slowAlloc();
    *v17 = 138412290;
    sub_23109997C(&qword_27DD3C6A8, MEMORY[0x277D855E8]);
    swift_allocError();
    v25 = v8;
    v13(v18, v6, v2);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v17 + 4) = v19;
    v20 = v24;
    *v24 = v19;
    v8 = v25;
    _os_log_impl(&dword_23103C000, v14, v15, "Cancellation handler called %@", v17, 0xCu);
    sub_231064568(v20, &unk_27DD3CC40, &qword_231162750);
    MEMORY[0x2319267C0](v20, -1, -1);
    v21 = v17;
    v7 = v26;
    MEMORY[0x2319267C0](v21, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2310947EC()
{
  OUTLINED_FUNCTION_4_1();
  v1[50] = v2;
  v1[51] = v0;
  v3 = sub_231157C48();
  v1[52] = v3;
  OUTLINED_FUNCTION_5(v3);
  v1[53] = v4;
  v6 = *(v5 + 64);
  v1[54] = OUTLINED_FUNCTION_48_2();
  v1[55] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C638, &qword_2311647A0);
  v1[56] = v7;
  OUTLINED_FUNCTION_5(v7);
  v1[57] = v8;
  v10 = *(v9 + 64);
  v1[58] = OUTLINED_FUNCTION_21_0();
  v11 = sub_231157C18();
  v1[59] = v11;
  OUTLINED_FUNCTION_5(v11);
  v1[60] = v12;
  v14 = *(v13 + 64);
  v1[61] = OUTLINED_FUNCTION_21_0();
  v15 = sub_231157F18();
  v1[62] = v15;
  OUTLINED_FUNCTION_5(v15);
  v1[63] = v16;
  v18 = *(v17 + 64);
  v1[64] = OUTLINED_FUNCTION_21_0();
  v19 = sub_231157C28();
  v1[65] = v19;
  OUTLINED_FUNCTION_5(v19);
  v1[66] = v20;
  v22 = *(v21 + 64);
  v1[67] = OUTLINED_FUNCTION_48_2();
  v1[68] = swift_task_alloc();
  v23 = sub_231157C38();
  v1[69] = v23;
  OUTLINED_FUNCTION_5(v23);
  v1[70] = v24;
  v26 = *(v25 + 64);
  v1[71] = OUTLINED_FUNCTION_48_2();
  v1[72] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C640, &qword_2311647A8);
  v1[73] = v27;
  OUTLINED_FUNCTION_5(v27);
  v1[74] = v28;
  v30 = *(v29 + 64);
  v1[75] = OUTLINED_FUNCTION_21_0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C648, &qword_2311647B0);
  OUTLINED_FUNCTION_19(v31);
  v33 = *(v32 + 64);
  v1[76] = OUTLINED_FUNCTION_21_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C650, &qword_2311647B8);
  v1[77] = v34;
  OUTLINED_FUNCTION_5(v34);
  v1[78] = v35;
  v37 = *(v36 + 64);
  v1[79] = OUTLINED_FUNCTION_21_0();
  v38 = sub_231157BF8();
  v1[80] = v38;
  OUTLINED_FUNCTION_5(v38);
  v1[81] = v39;
  v41 = *(v40 + 64);
  v1[82] = OUTLINED_FUNCTION_21_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C658, &qword_2311647C0);
  v1[83] = v42;
  OUTLINED_FUNCTION_5(v42);
  v1[84] = v43;
  v45 = *(v44 + 64);
  v1[85] = OUTLINED_FUNCTION_21_0();
  v46 = sub_231157DA8();
  v1[86] = v46;
  OUTLINED_FUNCTION_5(v46);
  v1[87] = v47;
  v49 = *(v48 + 64);
  v1[88] = OUTLINED_FUNCTION_21_0();
  v50 = sub_231157E38();
  v1[89] = v50;
  OUTLINED_FUNCTION_5(v50);
  v1[90] = v51;
  v53 = *(v52 + 64);
  v1[91] = OUTLINED_FUNCTION_21_0();
  v54 = sub_231157C78();
  v1[92] = v54;
  OUTLINED_FUNCTION_5(v54);
  v1[93] = v55;
  v57 = *(v56 + 64);
  v1[94] = OUTLINED_FUNCTION_21_0();
  v58 = sub_231157C08();
  v1[95] = v58;
  OUTLINED_FUNCTION_5(v58);
  v1[96] = v59;
  v61 = *(v60 + 64);
  v1[97] = OUTLINED_FUNCTION_48_2();
  v1[98] = swift_task_alloc();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C660, &qword_2311647C8);
  OUTLINED_FUNCTION_19(v62);
  v64 = *(v63 + 64);
  v1[99] = OUTLINED_FUNCTION_21_0();
  v65 = sub_231157C58();
  v1[100] = v65;
  OUTLINED_FUNCTION_5(v65);
  v1[101] = v66;
  v68 = *(v67 + 64);
  v1[102] = OUTLINED_FUNCTION_48_2();
  v1[103] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v69, v70, v71);
}

uint64_t sub_231094D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24;
  v26 = v24[100];
  v27 = v24[99];
  v28 = v25[50];
  sub_23109997C(&qword_27DD3C668, MEMORY[0x277D79AF0]);
  sub_2311582F8();
  v29 = v25[103];
  v30 = v25[101];
  __swift_storeEnumTagSinglePayload(v25[99], 0, 1, v25[100]);
  v31 = *(v30 + 32);
  v32 = OUTLINED_FUNCTION_51();
  v33(v32);
  v34 = sub_2310991E0();
  v36 = v35;
  LOBYTE(v27) = v37;
  v38 = v25[50];

  sub_231099504(v34, v36, v27 & 1);
  v61 = v25[103];
  v62 = v25[102];
  v63 = v25[101];
  v64 = v25[100];

  v65 = *(v63 + 16);
  v66 = OUTLINED_FUNCTION_36_3();
  v67(v66);
  v68 = (*(v63 + 88))(v62, v64);
  if (v68 == *MEMORY[0x277D79A90])
  {
    v69 = v25[102];
    v70 = v25[101];
    v71 = v25[100];
    v72 = v25[98];
    v73 = v25[97];
    v74 = v25[96];
    v75 = v25[95];

    v76 = *(v70 + 96);
    v77 = OUTLINED_FUNCTION_34_4();
    v78(v77);
    (*(v74 + 32))(v72, v69, v75);
    (*(v74 + 16))(v73, v72, v75);
    v79 = *(v74 + 88);
    v80 = OUTLINED_FUNCTION_31();
    v82 = v81(v80);
    if (v82 == *MEMORY[0x277D79A70])
    {
      v83 = v25[97];
      OUTLINED_FUNCTION_45_2();
      v84 = v25[94];
      v85 = v25[93];
      v86 = v25[92];
      v87 = v25[91];
      v88 = v25[90];
      v89 = v25[89];
      v90 = v25[51];
      (*(v91 + 96))(v83);
      v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C690, &qword_2311647D0) + 48);
      v93 = *(v85 + 32);
      v94 = OUTLINED_FUNCTION_46_2();
      v95(v94);
      (*(v88 + 32))(v87, v83 + v92, v89);
      v25[104] = sub_231093ECC();
      v96 = swift_task_alloc();
      v25[105] = v96;
      *v96 = v25;
      v96[1] = sub_231096780;
      v97 = v25[94];
      v98 = v25[91];
      v99 = v25[88];
      OUTLINED_FUNCTION_28();

      return sub_2310522A0();
    }

    if (v82 == *MEMORY[0x277D79A78])
    {
      v122 = v25[97];
      OUTLINED_FUNCTION_45_2();
      v124 = OUTLINED_FUNCTION_40_2(v123);
      v125(v124);
      v126 = *v122;
      v25[107] = v122[1];
      v25[108] = sub_231093ECC();
      v127 = swift_task_alloc();
      v25[109] = v127;
      *v127 = v25;
      OUTLINED_FUNCTION_49_0(v127);
      OUTLINED_FUNCTION_28();

      return sub_231053EFC(v128, v129);
    }

    if (v82 == *MEMORY[0x277D79A80])
    {
      v177 = v25[97];
      OUTLINED_FUNCTION_45_2();
      v178 = v25[76];
      v180 = OUTLINED_FUNCTION_40_2(v179);
      v181(v180);
      v183 = *v177;
      v182 = v177[1];
      sub_231093ECC();
      sub_23105463C(v178);
      v307 = v25[103];
      v308 = v25[101];
      OUTLINED_FUNCTION_47_2();
      v309 = v25[96];
      a17 = v25[95];
      a18 = v25[98];
      v310 = v25[76];
      v311 = v25[75];
      v312 = v25[74];
      v313 = v25[73];
      v314 = v25[50];

      v315 = OUTLINED_FUNCTION_51_1();
      sub_2310998A8(v315, v316);
      v317 = *MEMORY[0x277D79A40];
      v318 = OUTLINED_FUNCTION_42_2(v312);
      v319(v318);
      sub_231099918(&qword_27DD3C680, &qword_27DD3C640, &qword_2311647A8);
      OUTLINED_FUNCTION_37_2();
      sub_2311582E8();
      v320 = *(v312 + 8);
      v321 = OUTLINED_FUNCTION_37_2();
      v322(v321);
      sub_231064568(v310, &qword_27DD3C648, &qword_2311647B0);
      (*(v309 + 8))(a18, a17);
      v323 = *(v308 + 8);
      v325 = a19;
      v324 = a20;
LABEL_48:
      v323(v324, v325);
      goto LABEL_2;
    }

    if (v82 == *MEMORY[0x277D79A88])
    {
      v232 = v25[51];
      sub_231093ECC();
      v346 = sub_23105427C();
      v347 = v25[103];
      v214 = v25[101];
      OUTLINED_FUNCTION_47_2();
      a18 = v25[98];
      v348 = v25[96];
      v349 = v25[95];
      v350 = v25[79];
      v351 = v25[78];
      v352 = v25[77];
      v353 = v25[50];

      *v350 = v346;
      v354 = *MEMORY[0x277D79A40];
      v355 = OUTLINED_FUNCTION_31_3(v351);
      v356(v355);
      sub_231099918(&qword_27DD3C688, &qword_27DD3C650, &qword_2311647B8);
      OUTLINED_FUNCTION_51_1();
      sub_2311582E8();
      v357 = *(v351 + 8);
      v358 = OUTLINED_FUNCTION_51_1();
      v359(v358);
      (*(v348 + 8))(a18, v349);
      goto LABEL_62;
    }

    v256 = v25[101];
    v257 = v25[100];
    v258 = v25[98];
    a19 = v25[103];
    a20 = v25[97];
    v259 = v25[96];
    v187 = v25[95];
    v260 = v25[82];
    v261 = v25[81];
    v262 = v25[80];
    v263 = v25[50];
    sub_2310997CC();
    OUTLINED_FUNCTION_28_4();
    v264 = swift_allocError();
    OUTLINED_FUNCTION_23_5(v264, v265);
    sub_231157C88();
    v266 = *MEMORY[0x277D79A50];
    v267 = OUTLINED_FUNCTION_42_2(v261);
    v268(v267);
    OUTLINED_FUNCTION_1_12();
    sub_23109997C(v269, v270);
    OUTLINED_FUNCTION_37_2();
    sub_2311582E8();
    v271 = *(v261 + 8);
    v272 = OUTLINED_FUNCTION_37_2();
    v273(v272);
    v202 = *(v259 + 8);
    v274 = OUTLINED_FUNCTION_38_1();
    v202(v274);
    (*(v256 + 8))(a19, v257);
    v203 = a20;
    goto LABEL_33;
  }

  if (v68 == *MEMORY[0x277D79AC0])
  {
    v101 = v25[102];
    v102 = v25[101];
    v103 = v25[100];
    v104 = v25[72];
    v105 = v25[71];
    v106 = v25[70];
    v107 = v25[69];

    v108 = *(v102 + 96);
    v109 = OUTLINED_FUNCTION_34_4();
    v110(v109);
    (*(v106 + 32))(v104, v101, v107);
    (*(v106 + 16))(v105, v104, v107);
    v111 = *(v106 + 88);
    v112 = OUTLINED_FUNCTION_21_2();
    v114 = v113(v112);
    if (v114 == *MEMORY[0x277D79AB8])
    {
      v115 = v25[71];
      v116 = v25[69];
      v117 = OUTLINED_FUNCTION_40_2(v25[70]);
      v118(v117);
      v25[111] = *v115;
      v25[112] = sub_231093F3C();
      v119 = swift_task_alloc();
      v25[113] = v119;
      *v119 = v25;
      OUTLINED_FUNCTION_49_0(v119);
      OUTLINED_FUNCTION_28();

      return sub_2310D08E8(v120);
    }

    else
    {
      if (v114 != *MEMORY[0x277D79AB0])
      {
        v214 = v25[101];
        v215 = v25[100];
        a19 = v215;
        a20 = v25[103];
        if (v114 == *MEMORY[0x277D79A98])
        {
          v216 = v25[71];
          v217 = v25[70];
          a17 = v25[69];
          a18 = v25[72];
          v218 = v25[60];
          v219 = v25[61];
          v221 = v25[58];
          v220 = v25[59];
          v222 = v25;
          v225 = v25 + 56;
          v224 = v25[56];
          v223 = v225[1];
          a16 = v222[50];
          v226 = OUTLINED_FUNCTION_50_2(v217);
          v227(v226);
          (*(v218 + 32))(v219, v216, v220);
          sub_231157B38();
          *v221 = sub_231157B28() & 1;
          (*(v223 + 104))(v221, *MEMORY[0x277D79A40], v224);
          sub_231099918(&qword_27DD3C678, &qword_27DD3C638, &qword_2311647A0);
          sub_2311582E8();
          v228 = v224;
          v25 = v222;
          (*(v223 + 8))(v221, v228);
          v229 = *(v218 + 8);
          v230 = OUTLINED_FUNCTION_51_1();
          v231(v230);
          (*(v217 + 8))(a18, a17);
LABEL_62:
          (*(v214 + 8))(a20, a19);
          goto LABEL_2;
        }

        v236 = v25[82];
        v237 = v25[81];
        v238 = v25[80];
        v239 = v25[72];
        v240 = v25[71];
        v241 = v25[70];
        v242 = v25[69];
        v243 = v25[50];
        sub_2310997CC();
        OUTLINED_FUNCTION_28_4();
        v244 = swift_allocError();
        OUTLINED_FUNCTION_23_5(v244, v245);
        sub_231157C88();
        v246 = *MEMORY[0x277D79A50];
        v247 = OUTLINED_FUNCTION_42_2(v237);
        v248(v247);
        OUTLINED_FUNCTION_1_12();
        sub_23109997C(v249, v250);
        OUTLINED_FUNCTION_37_2();
        sub_2311582E8();
        v251 = *(v237 + 8);
        v252 = OUTLINED_FUNCTION_37_2();
        v253(v252);
        v254 = *(v241 + 8);
        v254(v239, v242);
        (*(v214 + 8))(a20, a19);
        v255 = OUTLINED_FUNCTION_46_2();
        (v254)(v255);
LABEL_2:
        v39 = v25[103];
        v40 = v25[102];
        v41 = v25[99];
        v42 = v25[98];
        v43 = v25[97];
        v44 = v25[94];
        v45 = v25[91];
        v46 = v25[88];
        v47 = v25[85];
        v48 = v25;
        v49 = v25[82];
        v50 = v48[79];
        v51 = v48[76];
        OUTLINED_FUNCTION_7_10();

        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_28();

        return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
      }

      v154 = v25[71];
      v155 = v25[69];
      v156 = v25[68];
      v157 = v25[66];
      v158 = v25[65];
      v159 = v25[51];
      v160 = OUTLINED_FUNCTION_50_2(v25[70]);
      v161(v160);
      v162 = *(v157 + 32);
      v163 = OUTLINED_FUNCTION_36_3();
      v164(v163);
      v165 = *(v159 + 32);
      v25[115] = v165;
      if (!v165)
      {
        v294 = v25[103];
        v295 = v25[101];
        OUTLINED_FUNCTION_47_2();
        v296 = v25[82];
        v297 = v25[81];
        v298 = v25[80];
        v299 = v25[70];
        a17 = v25[69];
        a18 = v25[72];
        v300 = v25[68];
        v301 = v25[66];
        v302 = v25[65];
        v303 = v25[50];
        sub_2310997CC();
        OUTLINED_FUNCTION_28_4();
        swift_allocError();
        *v304 = 0;
        *(v304 + 8) = 0;
        *(v304 + 16) = 0;
        sub_231157C88();
        (*(v297 + 104))(v296, *MEMORY[0x277D79A50], v298);
        OUTLINED_FUNCTION_1_12();
        sub_23109997C(v305, v306);
        sub_2311582E8();
        (*(v297 + 8))(v296, v298);
        (*(v301 + 8))(v300, v302);
        (*(v299 + 8))(a18, a17);
        (*(v295 + 8))(a20, a19);
        goto LABEL_2;
      }

      v166 = v25[66];
      (*(v166 + 16))(v25[67], v25[68], v25[65]);
      v167 = *(v166 + 88);
      v168 = OUTLINED_FUNCTION_34_4();
      v170 = v169(v168);
      if (v170 == *MEMORY[0x277D79AA0])
      {
        v171 = v25[67];
        (*(v25[66] + 96))(v171, v25[65]);
        v172 = *(v171 + 8);
        v173 = *(v171 + 16);
        v174 = *(v171 + 17);

        if (v172)
        {

          v175 = swift_task_alloc();
          v25[116] = v175;
          *v175 = v25;
          v176 = sub_2310970F0;
        }

        else
        {
          v175 = swift_task_alloc();
          v25[118] = v175;
          *v175 = v25;
          v176 = sub_231097394;
        }

        v175[1] = v176;
        OUTLINED_FUNCTION_28();

        return sub_2310D5C80();
      }

      else
      {
        if (v170 != *MEMORY[0x277D79AA8])
        {
          v360 = v25[103];
          v361 = v25[101];
          OUTLINED_FUNCTION_47_2();
          v362 = v25[82];
          v363 = v25[81];
          v364 = v25[80];
          v365 = v25[70];
          a16 = v25[69];
          a17 = v25[72];
          a18 = v25[67];
          v366 = v25[66];
          a14 = v25[65];
          a15 = v25[68];
          v367 = v25[50];
          sub_2310997CC();
          OUTLINED_FUNCTION_28_4();
          v368 = swift_allocError();
          OUTLINED_FUNCTION_23_5(v368, v369);

          sub_231157C88();
          v370 = *MEMORY[0x277D79A50];
          v371 = OUTLINED_FUNCTION_43_1(v363);
          v372(v371);
          OUTLINED_FUNCTION_1_12();
          sub_23109997C(v373, v374);
          OUTLINED_FUNCTION_45();
          sub_2311582E8();

          v375 = OUTLINED_FUNCTION_22_5();
          v376(v375);
          v377 = *(v366 + 8);
          v377(a15, a14);
          (*(v365 + 8))(a17, a16);
          (*(v361 + 8))(a20, a19);
          v377(a18, a14);
          goto LABEL_2;
        }

        v326 = v25[67];
        v327 = v25[65];
        v329 = v25[63];
        v328 = v25[64];
        v330 = v25[62];
        v331 = OUTLINED_FUNCTION_50_2(v25[66]);
        v332(v331);
        v333 = *v326;
        (*(v329 + 104))(v328, *MEMORY[0x277D79C48], v330);

        v334 = swift_task_alloc();
        v25[120] = v334;
        *v334 = v25;
        v334[1] = sub_231097830;
        v335 = v25[64];
        OUTLINED_FUNCTION_28();

        return sub_2310D645C();
      }
    }
  }

  else
  {
    if (v68 != *MEMORY[0x277D79AE8])
    {
      v184 = v25[103];
      v185 = v25[102];
      v186 = v25[101];
      v187 = v25[100];
      v188 = v25[82];
      v189 = v25[81];
      v190 = v25[80];
      v191 = v25[50];

      sub_2310997CC();
      OUTLINED_FUNCTION_28_4();
      v192 = swift_allocError();
      OUTLINED_FUNCTION_23_5(v192, v193);
      sub_231157C88();
      v194 = *MEMORY[0x277D79A50];
      v195 = OUTLINED_FUNCTION_31_3(v189);
      v196(v195);
      OUTLINED_FUNCTION_1_12();
      sub_23109997C(v197, v198);
      OUTLINED_FUNCTION_51_1();
      sub_2311582E8();
      v199 = *(v189 + 8);
      v200 = OUTLINED_FUNCTION_51_1();
      v201(v200);
      v202 = *(v186 + 8);
      (v202)(v184, v187);
      v203 = v185;
LABEL_33:
      (v202)(v203, v187);
      goto LABEL_2;
    }

    v131 = v25[102];
    v132 = v25[100];
    v133 = v25[54];
    v134 = v25[55];
    v135 = v25[52];
    v136 = v25[53];
    v137 = OUTLINED_FUNCTION_50_2(v25[101]);
    v138(v137);
    v139 = *(v136 + 32);
    v140 = OUTLINED_FUNCTION_36_3();
    v141(v140);
    (*(v136 + 16))(v133, v134, v135);
    v142 = *(v136 + 88);
    v143 = OUTLINED_FUNCTION_45();
    v145 = v144(v143);
    if (v145 != *MEMORY[0x277D79AD8])
    {
      if (v145 == *MEMORY[0x277D79AC8])
      {
        v205 = v25[53];
        v204 = v25[54];
        v206 = v25[52];

        v207 = *(v205 + 96);
        v208 = OUTLINED_FUNCTION_34_4();
        v209(v208);
        if (*(v204 + 8))
        {
          v210 = *v25[54];
          sub_231158C98();
          v211 = objc_allocWithZone(MEMORY[0x277CC34A8]);
          OUTLINED_FUNCTION_36_3();
          v212 = sub_2310C0D80();
          v25[127] = v212;
          v25[18] = v25;
          v25[19] = sub_231097EBC;
          v213 = swift_continuation_init();
          v25[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
          v25[42] = MEMORY[0x277D85DD0];
          v25[43] = 1107296256;
          v25[44] = sub_23106FF5C;
          v25[45] = &block_descriptor_15;
          v25[46] = v213;
          [v212 deleteAllSearchableItemsWithCompletionHandler_];
        }

        else
        {
          sub_231158CB8();
          sub_231158C98();
          v340 = objc_allocWithZone(MEMORY[0x277CC34A8]);
          OUTLINED_FUNCTION_34_4();
          v341 = sub_2310C0D80();
          v25[129] = v341;
          sub_231158C98();
          v342 = sub_231158E28();
          v25[130] = v342;

          v25[10] = v25;
          v25[11] = sub_23109815C;
          v343 = swift_continuation_init();
          v25[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
          v25[34] = MEMORY[0x277D85DD0];
          v25[35] = 1107296256;
          v25[36] = sub_23106FF5C;
          v25[37] = &block_descriptor_12_0;
          v25[38] = v343;
          [v341 deleteAllSearchableItemsForBundleID:v342 completionHandler:v25 + 34];
        }
      }

      else
      {
        if (v145 != *MEMORY[0x277D79AE0])
        {
          if (v145 == *MEMORY[0x277D79AD0])
          {
            v337 = v25[51];

            if (!*(v337 + 40))
            {
              a20 = v25[103];
              v385 = v25[101];
              v386 = v25[100];
              v387 = v25[82];
              v388 = v25[81];
              v389 = v25[80];
              v390 = v25[55];
              v392 = v25[52];
              v391 = v25[53];
              v393 = v25[50];
              v394 = *MEMORY[0x277D79A58];
              v395 = OUTLINED_FUNCTION_43_1(v388);
              v396(v395);
              OUTLINED_FUNCTION_1_12();
              sub_23109997C(v397, v398);
              OUTLINED_FUNCTION_45();
              sub_2311582E8();
              v399 = *(v388 + 8);
              v400 = OUTLINED_FUNCTION_45();
              v401(v400);
              v402 = *(v391 + 8);
              v403 = OUTLINED_FUNCTION_31();
              v404(v403);
              (*(v385 + 8))(a20, v386);
              goto LABEL_2;
            }

            v338 = swift_task_alloc();
            v25[126] = v338;
            *v338 = v25;
            OUTLINED_FUNCTION_49_0(v338);
            OUTLINED_FUNCTION_28();

            return sub_2310AAEC8();
          }

          else
          {
            v378 = v25[52];
            OUTLINED_FUNCTION_28();

            return sub_231159808();
          }
        }

        v233 = v25[51];

        v234 = *(v233 + 56);
        if (!v234)
        {
          v381 = v25[103];
          v382 = v25[101];
          v383 = v25[100];
          (*(v25[53] + 8))(v25[55], v25[52]);
          v384 = *(v382 + 8);
          v324 = OUTLINED_FUNCTION_34_4();
          goto LABEL_48;
        }

        v25[2] = v25;
        v25[7] = v25 + 132;
        v25[3] = sub_231098404;
        v235 = swift_continuation_init();
        v25[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
        v25[26] = MEMORY[0x277D85DD0];
        v25[27] = 1107296256;
        v25[28] = sub_231093D08;
        v25[29] = &block_descriptor_10;
        v25[30] = v235;
        [v234 reindexAllSearchableItemsWithCompletion_];
      }

      OUTLINED_FUNCTION_28();

      return MEMORY[0x282200938](v344);
    }

    v147 = v25[53];
    v146 = v25[54];
    v149 = v25[51];
    v148 = v25[52];

    v25[122] = *(v147 + 8);
    v25[123] = (v147 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v150 = OUTLINED_FUNCTION_34_4();
    v151(v150);
    if (!*(v149 + 48))
    {
      v275 = v25[123];
      v276 = v25[122];
      v277 = v25[103];
      v278 = v25[101];
      OUTLINED_FUNCTION_47_2();
      v279 = v25[82];
      v280 = v25[81];
      v281 = v25[80];
      v282 = v25[55];
      v283 = v25[52];
      v284 = v25[50];
      v285 = *MEMORY[0x277D79A58];
      v286 = OUTLINED_FUNCTION_43_1(v280);
      v287(v286);
      OUTLINED_FUNCTION_1_12();
      sub_23109997C(v288, v289);
      OUTLINED_FUNCTION_45();
      sub_2311582E8();
      v290 = *(v280 + 8);
      v291 = OUTLINED_FUNCTION_45();
      v292(v291);
      v293 = OUTLINED_FUNCTION_31();
      v276(v293);
      (*(v278 + 8))(a20, a19);
      goto LABEL_2;
    }

    v152 = swift_task_alloc();
    v25[124] = v152;
    *v152 = v25;
    OUTLINED_FUNCTION_49_0(v152);
    OUTLINED_FUNCTION_28();

    return sub_2310676E8();
  }
}

uint64_t sub_231096780()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *(v2 + 840);
  *v4 = *v1;
  *(v3 + 848) = v0;

  v6 = *(v2 + 832);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310968A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v57 = v24[103];
  v55 = v24[101];
  v56 = v24[100];
  v53 = v24[95];
  v54 = v24[98];
  v51 = v24[94];
  v52 = v24[96];
  v25 = v24[93];
  v49 = v24[91];
  v50 = v24[92];
  v26 = v24[90];
  v48 = v24[89];
  v27 = v24[88];
  v28 = v24[87];
  v29 = v24[86];
  v30 = v24[84];
  v31 = v24[83];
  v32 = v24[50];
  (*(v28 + 16))(v24[85], v27, v29);
  v33 = *MEMORY[0x277D79A40];
  v34 = OUTLINED_FUNCTION_13_9(v30);
  v35(v34);
  sub_231099918(&qword_27DD3C698, &qword_27DD3C658, &qword_2311647C0);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v36 = *(v30 + 8);
  v37 = OUTLINED_FUNCTION_21_2();
  v38(v37);
  (*(v28 + 8))(v27, v29);
  (*(v26 + 8))(v49, v48);
  (*(v25 + 8))(v51, v50);
  (*(v52 + 8))(v54, v53);
  (*(v55 + 8))(v57, v56);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, a22, a23, a24);
}

uint64_t sub_231096AFC()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = v2[109];
  *v4 = *v1;
  *(v3 + 880) = v0;

  v6 = v2[108];
  v7 = v2[107];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231096C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_32_3();
  v25 = v24[100];
  v26 = v24[98];
  v27 = v24[96];
  v28 = v24[95];
  v29 = v24[82];
  v30 = v24[81];
  v31 = v24[80];
  v32 = v24[50];
  v33 = *MEMORY[0x277D79A58];
  v34 = OUTLINED_FUNCTION_31_3(v30);
  v35(v34);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v36, v37);
  OUTLINED_FUNCTION_51_1();
  sub_2311582E8();
  v38 = *(v30 + 8);
  v39 = OUTLINED_FUNCTION_51_1();
  v40(v39);
  v41 = *(v27 + 8);
  v42 = OUTLINED_FUNCTION_21_2();
  v43(v42);
  v44 = OUTLINED_FUNCTION_30_3();
  v45(v44);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231096E04()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *(v2 + 904);
  *v4 = *v1;
  *(v3 + 912) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231096F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v26 = v24[111];
  OUTLINED_FUNCTION_32_3();
  v54 = v24[100];
  v27 = v24[82];
  v28 = v24[81];
  v29 = v24[80];
  v30 = v24[72];
  v31 = v24[70];
  v32 = v24[69];
  v33 = v24[50];
  v34 = *MEMORY[0x277D79A58];
  v35 = OUTLINED_FUNCTION_13_9(v28);
  v36(v35);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v37, v38);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();

  v39 = *(v28 + 8);
  v40 = OUTLINED_FUNCTION_21_2();
  v41(v40);
  v42 = *(v31 + 8);
  v43 = OUTLINED_FUNCTION_51_1();
  v44(v43);
  (*(v25 + 8))(a21, v54);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v54, a21, a22, a23, a24);
}

uint64_t sub_2310970F0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 928);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 936) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310971EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_18_4();
  v25 = OUTLINED_FUNCTION_22_5();
  v26(v25);
  v27 = OUTLINED_FUNCTION_21_7();
  v28(v27);
  v29 = *(v24 + 936);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = *MEMORY[0x277D79A50];
  v31 = OUTLINED_FUNCTION_4_8();
  v32(v31);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v33, v34);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v35 = OUTLINED_FUNCTION_9_10();
  v36(v35);
  v37 = OUTLINED_FUNCTION_8_9();
  v38(v37);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231097394()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 944);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 952) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231097490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24[115];
  v55 = v24[103];
  v26 = v24[101];
  v27 = v24[82];
  v28 = v24[81];
  v29 = v24[80];
  v53 = v24[72];
  v54 = v24[100];
  v30 = v24[70];
  v51 = v24[68];
  v52 = v24[69];
  v31 = v24[66];
  v32 = v24[65];
  v33 = v24[50];
  v34 = *MEMORY[0x277D79A58];
  v35 = OUTLINED_FUNCTION_31_3(v28);
  v36(v35);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v37, v38);
  OUTLINED_FUNCTION_51_1();
  sub_2311582E8();

  v39 = *(v28 + 8);
  v40 = OUTLINED_FUNCTION_51_1();
  v41(v40);
  (*(v31 + 8))(v51, v32);
  (*(v30 + 8))(v53, v52);
  (*(v26 + 8))(v55, v54);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, v51, v52, v53, v54, v55, a22, a23, a24);
}

uint64_t sub_231097688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_18_4();
  v25 = OUTLINED_FUNCTION_22_5();
  v26(v25);
  v27 = OUTLINED_FUNCTION_21_7();
  v28(v27);
  v29 = *(v24 + 952);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = *MEMORY[0x277D79A50];
  v31 = OUTLINED_FUNCTION_4_8();
  v32(v31);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v33, v34);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v35 = OUTLINED_FUNCTION_9_10();
  v36(v35);
  v37 = OUTLINED_FUNCTION_8_9();
  v38(v37);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231097830()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = v2[120];
  *v4 = *v1;
  *(v3 + 968) = v0;

  (*(v2[63] + 8))(v2[64], v2[62]);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23109798C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 992);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 1000) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231097A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v26 = v24[123];
  v27 = v24[122];
  OUTLINED_FUNCTION_32_3();
  v52 = v24[100];
  v28 = v24[82];
  v29 = v24[81];
  v30 = v24[80];
  v31 = v24[55];
  v32 = v24[52];
  v33 = v24[50];
  v34 = *MEMORY[0x277D79A58];
  v35 = OUTLINED_FUNCTION_13_9(v29);
  v36(v35);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v37, v38);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v39 = *(v29 + 8);
  v40 = OUTLINED_FUNCTION_21_2();
  v41(v40);
  v42 = OUTLINED_FUNCTION_51_1();
  v27(v42);
  (*(v25 + 8))(a21, v52);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v52, a21, a22, a23, a24);
}

uint64_t sub_231097C3C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 1008);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231097D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v49 = *(v25 + 824);
  OUTLINED_FUNCTION_10_10();
  v27 = *MEMORY[0x277D79A58];
  v28 = OUTLINED_FUNCTION_13_9(v26);
  v29(v28);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v30, v31);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v32 = *(v26 + 8);
  v33 = OUTLINED_FUNCTION_21_2();
  v34(v33);
  v35 = *(v24 + 8);
  v36 = OUTLINED_FUNCTION_51_1();
  v37(v36);
  v38 = OUTLINED_FUNCTION_30_3();
  v39(v38);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v49, a22, a23, a24);
}

uint64_t sub_231097EBC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1024) = *(v3 + 176);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231097FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v27 = *(v25 + 1016);
  v51 = *(v25 + 824);
  OUTLINED_FUNCTION_10_10();

  v29 = *MEMORY[0x277D79A58];
  v30 = OUTLINED_FUNCTION_13_9(v26);
  v31(v30);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v32, v33);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_21_2();
  v36(v35);
  v37 = *(v24 + 8);
  v38 = OUTLINED_FUNCTION_51_1();
  v39(v38);
  v40 = OUTLINED_FUNCTION_30_3();
  v41(v40);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v51, a22, a23, a24);
}

uint64_t sub_23109815C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1048) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23109825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();

  v27 = *(v25 + 1032);
  v51 = *(v25 + 824);
  OUTLINED_FUNCTION_10_10();

  v29 = *MEMORY[0x277D79A58];
  v30 = OUTLINED_FUNCTION_13_9(v26);
  v31(v30);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v32, v33);
  OUTLINED_FUNCTION_21_2();
  sub_2311582E8();
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_21_2();
  v36(v35);
  v37 = *(v24 + 8);
  v38 = OUTLINED_FUNCTION_51_1();
  v39(v38);
  v40 = OUTLINED_FUNCTION_30_3();
  v41(v40);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v51, a22, a23, a24);
}

uint64_t sub_231098404()
{
  OUTLINED_FUNCTION_4_1();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310984D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24[103];
  v26 = v24[101];
  v27 = v24[100];
  (*(v24[53] + 8))(v24[55], v24[52]);
  v28 = *(v26 + 8);
  v29 = OUTLINED_FUNCTION_51();
  v30(v29);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24[98];
  v26 = v24[96];
  v27 = v24[95];
  v28 = v24[94];
  v29 = v24[93];
  v30 = v24[92];
  (*(v24[90] + 8))(v24[91], v24[89]);
  v31 = OUTLINED_FUNCTION_22_5();
  v32(v31);
  v33 = OUTLINED_FUNCTION_21_7();
  v34(v33);
  v35 = v24[106];
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v36 = *MEMORY[0x277D79A50];
  v37 = OUTLINED_FUNCTION_4_8();
  v38(v37);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v39, v40);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v41 = OUTLINED_FUNCTION_9_10();
  v42(v41);
  v43 = OUTLINED_FUNCTION_8_9();
  v44(v43);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2310987E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  (*(v24[96] + 8))(v24[98], v24[95]);
  v25 = v24[110];
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v26 = *MEMORY[0x277D79A50];
  v27 = OUTLINED_FUNCTION_4_8();
  v28(v27);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v29, v30);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v31 = OUTLINED_FUNCTION_9_10();
  v32(v31);
  v33 = OUTLINED_FUNCTION_8_9();
  v34(v33);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = *(v24 + 576);
  v26 = *(v24 + 560);
  v27 = *(v24 + 552);

  v28 = *(v26 + 8);
  v29 = OUTLINED_FUNCTION_51();
  v30(v29);
  v31 = *(v24 + 912);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v32 = *MEMORY[0x277D79A50];
  v33 = OUTLINED_FUNCTION_4_8();
  v34(v33);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v35, v36);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v37 = OUTLINED_FUNCTION_9_10();
  v38(v37);
  v39 = OUTLINED_FUNCTION_8_9();
  v40(v39);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  OUTLINED_FUNCTION_18_4();
  v25 = OUTLINED_FUNCTION_22_5();
  v26(v25);
  v27 = OUTLINED_FUNCTION_21_7();
  v28(v27);
  v29 = *(v24 + 968);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v30 = *MEMORY[0x277D79A50];
  v31 = OUTLINED_FUNCTION_4_8();
  v32(v31);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v33, v34);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v35 = OUTLINED_FUNCTION_9_10();
  v36(v35);
  v37 = OUTLINED_FUNCTION_8_9();
  v38(v37);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = *(v24 + 984);
  (*(v24 + 976))(*(v24 + 440), *(v24 + 416));
  v26 = *(v24 + 1000);
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v27 = *MEMORY[0x277D79A50];
  v28 = OUTLINED_FUNCTION_4_8();
  v29(v28);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v30, v31);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v32 = OUTLINED_FUNCTION_9_10();
  v33(v32);
  v34 = OUTLINED_FUNCTION_8_9();
  v35(v34);
  OUTLINED_FUNCTION_0_14();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231098E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24[128];
  v26 = v24[127];
  v27 = v24[55];
  v28 = v24[52];
  v29 = v24[53];
  swift_willThrow();

  v30 = OUTLINED_FUNCTION_21_7();
  v31(v30);
  v32 = v24[128];
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v33 = *MEMORY[0x277D79A50];
  v34 = OUTLINED_FUNCTION_4_8();
  v35(v34);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v36, v37);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v38 = OUTLINED_FUNCTION_9_10();
  v39(v38);
  v40 = OUTLINED_FUNCTION_8_9();
  v41(v40);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_7_10();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_231099024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_17_6();
  v25 = v24[131];
  v26 = v24[130];
  v27 = v24[129];
  v28 = v24[55];
  v29 = v24[52];
  v30 = v24[53];
  swift_willThrow();

  v31 = *(v30 + 8);
  v32 = OUTLINED_FUNCTION_51();
  v33(v32);

  v34 = v24[131];
  OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_41_3();
  v35 = *MEMORY[0x277D79A50];
  v36 = OUTLINED_FUNCTION_4_8();
  v37(v36);
  OUTLINED_FUNCTION_1_12();
  sub_23109997C(v38, v39);
  OUTLINED_FUNCTION_31();
  sub_2311582E8();

  v40 = OUTLINED_FUNCTION_9_10();
  v41(v40);
  v42 = OUTLINED_FUNCTION_8_9();
  v43(v42);
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_7_10();

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_28();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2310991E0()
{
  v0 = sub_231157C38();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = sub_231157C58();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v15 = v12[2];
  v16 = OUTLINED_FUNCTION_51_1();
  v17(v16);
  v18 = v12[11];
  v19 = OUTLINED_FUNCTION_38_1();
  v21 = v20(v19);
  if (v21 == *MEMORY[0x277D79A90])
  {
    v22 = v12[1];
    v23 = OUTLINED_FUNCTION_38_1();
    v24(v23);
    return 0xD000000000000023;
  }

  else if (v21 == *MEMORY[0x277D79AC0])
  {
    v26 = v12[12];
    v27 = OUTLINED_FUNCTION_38_1();
    v28(v27);
    v29 = v3[4];
    v30 = OUTLINED_FUNCTION_31();
    v31(v30);
    v32 = v3[2];
    v33 = OUTLINED_FUNCTION_46_2();
    v34(v33);
    v35 = v3[11];
    v36 = OUTLINED_FUNCTION_36_3();
    v38 = v37(v36);
    v39 = *MEMORY[0x277D79A98];
    v40 = v3[1];
    v40(v8, v0);
    v41 = OUTLINED_FUNCTION_36_3();
    (v40)(v41);
    if (v38 == v39)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD000000000000027;
    }
  }

  else if (v21 == *MEMORY[0x277D79AE8])
  {
    v42 = v12[1];
    v43 = OUTLINED_FUNCTION_38_1();
    v44(v43);
    return 0xD000000000000025;
  }

  else
  {
    sub_2310997CC();
    OUTLINED_FUNCTION_28_4();
    v45 = swift_allocError();
    OUTLINED_FUNCTION_23_5(v45, v46);
    swift_willThrow();
    v47 = v12[1];
    v48 = OUTLINED_FUNCTION_38_1();
    return v49(v48);
  }
}

void sub_231099504(uint64_t a1, uint64_t a2, char a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    sub_2310997CC();
    OUTLINED_FUNCTION_28_4();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 1;
    swift_willThrow();
LABEL_12:
    v20 = *MEMORY[0x277D85DE8];
    return;
  }

  *token.val = sub_2311582D8();
  token.val[2] = v6;
  token.val[3] = v7;
  token.val[4] = v8;
  token.val[5] = v9;
  token.val[6] = v10;
  token.val[7] = v11;
  v12 = SecTaskCreateWithAuditToken(0, &token);
  if (v12)
  {
    v13 = v12;
    *token.val = 0;

    v14 = sub_231158E28();

    v15 = SecTaskCopyValueForEntitlement(v13, v14, &token);

    v16 = *token.val;
    if (*token.val)
    {

      type metadata accessor for CFError(0);
      sub_23109997C(&qword_27DD3C6A0, type metadata accessor for CFError);
      OUTLINED_FUNCTION_28_4();
      swift_allocError();
      *v17 = v16;
    }

    else
    {
      if (v15)
      {
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) != 0 && v21 == (a3 & 1))
        {
          swift_unknownObjectRelease();

          goto LABEL_11;
        }
      }

      sub_2310997CC();
      OUTLINED_FUNCTION_28_4();
      swift_allocError();
      *v19 = a1;
      *(v19 + 8) = a2;
      *(v19 + 16) = 1;
    }

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t VCDaemonXPCServer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return v0;
}

uint64_t VCDaemonXPCServer.__deallocating_deinit()
{
  VCDaemonXPCServer.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

unint64_t sub_2310997CC()
{
  result = qword_27DD3C630;
  if (!qword_27DD3C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts17VCDaemonXPCServerC11DaemonErrorO(uint64_t a1)
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

uint64_t sub_231099878(uint64_t result, unsigned int a2)
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

uint64_t sub_2310998A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C648, &qword_2311647B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231099918(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23109997C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2310999C4()
{
  v2 = sub_231158308();
  OUTLINED_FUNCTION_19(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2310721C0;

  return sub_23109445C();
}

uint64_t OUTLINED_FUNCTION_0_14()
{
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[94];
  v9 = v0[91];
  v10 = v0[88];
  v11 = v0[85];
  v12 = v0[82];
  v14 = v0[79];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[68];
  v20 = v0[67];
  v21 = v0[64];
  v22 = v0[61];
  v23 = v0[58];
  v24 = v0[55];
  *(v1 - 80) = v0[54];
}