uint64_t sub_2612A0780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2612A07A4);
}

uint64_t sub_2612A07A4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(9);
  v4 = sub_26139F0FC();
  sub_2612FDFF8(12, v4, v5);

  sub_2612FDFF8(5, v3[4], v3[5]);

  sub_2612FDFF8(3, v3[8], v3[9]);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v2;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2612A0900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A09A0);
}

uint64_t sub_2612A09A0()
{
  v1 = v0[12];
  v2 = v0[10];
  type metadata accessor for SafMonitorEventBuilder();
  sub_2612BAC20(10);
  sub_26125A870(v2, v1, &qword_27FE9F280, &unk_2613A42B0);
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[12];
  if (v5 == 1)
  {
    sub_26124C718(v0[12], &qword_27FE9F280, &unk_2613A42B0);
    v7 = sub_2613A0CFC();
    v9 = v8;
  }

  else
  {
    v10 = v0[12];
    v7 = sub_26139F0FC();
    v9 = v11;
    (*(v4 + 8))(v6, v3);
  }

  v13 = v0[11];
  v12 = v0[12];
  v15 = v0[8];
  v14 = v0[9];
  sub_2612FDFF8(12, v7, v9);

  sub_2612FDFF8(5, v15[4], v15[5]);

  sub_2612FDFF8(3, v15[8], v15[9]);

  v16 = [v13 description];
  v17 = sub_2613A18CC();
  v19 = v18;

  sub_2612FDFF8(10, v17, v19);

  sub_2612FE0B4((v0 + 2));
  *(swift_task_alloc() + 16) = v14;
  sub_26129E57C(sub_2612A0EA4);

  sub_26124C718((v0 + 2), &qword_27FE9F8D0, &unk_2613AC6E0);

  v20 = v0[1];

  return v20();
}

char *sub_2612A0C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E0, &unk_2613A7300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2612A0D58(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 120))(a1, v4, v5);
}

unint64_t sub_2612A0DC8()
{
  result = qword_27FE9F8D8;
  if (!qword_27FE9F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F8D8);
  }

  return result;
}

uint64_t sub_2612A0EBC()
{
  type metadata accessor for SAFCoreDataStore();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F8E8, &qword_2613A7310);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_27FEAEDE8 = v0;
  return result;
}

uint64_t *sub_2612A0F20()
{
  if (qword_27FEA5DC0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEDE8;
}

id sub_2612A0F70()
{
  v1 = sub_26139EF7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  os_unfair_lock_lock(v6 + 4);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_26124BD6C();
  (*(v2 + 16))(v5, v8, v1);
  sub_26139EF4C();
  (*(v2 + 8))(v5, v1);
  v9 = sub_2613A189C();

  v10 = [v7 fileExistsAtPath_];

  os_unfair_lock_unlock(v6 + 4);
  return v10;
}

void sub_2612A10E0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_2612A1210(&v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2612A115C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
LABEL_3:
    *a1 = v3;
  }

  v5 = a1;
  result = sub_2612A131C();
  if (!v2)
  {
    v3 = result;
    v6 = *(v1 + 16);
    *(v1 + 16) = result;

    a1 = v5;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2612A11D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_2612A1210@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2612A1284(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2612A12A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281451980)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281451980);
    }
  }
}

uint64_t sub_2612A131C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v69 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v68 = &v67 - v5;
  MEMORY[0x28223BE20](v4);
  v70 = &v67 - v6;
  v71 = type metadata accessor for LocalCoreDataConfiguration();
  v7 = *(*(v71 - 1) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26139EF7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  type metadata accessor for Daemon();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_2613A189C();
  v23 = sub_2613A189C();
  v24 = [v21 URLForResource:v22 withExtension:v23];

  if (v24)
  {
    sub_26139EF3C();

    v25 = sub_26124BD6C();
    v26 = v10;
    v27 = *(v10 + 16);
    v27(v17, v25, v9);
    v27(v14, v19, v9);
    v28 = v73;
    sub_2612E3DF8(0x646E4165726F7453, 0xEF64726177726F46, v17, v14, 0, 0, v73);
    type metadata accessor for CoreDataStore();
    v74[3] = v71;
    v74[4] = &off_2873BB370;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v74);
    sub_2612A1B70(v28, boxed_opaque_existential_0);
    v30 = v72;
    v31 = sub_2612E2D64(v74);
    v32 = v9;
    v33 = v26;
    v34 = v19;
    if (v30)
    {
      v74[0] = v30;
      v35 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      sub_2612A1BD4();
      if (swift_dynamicCast())
      {

        v36 = v74[6];
        v37 = sub_26129B8EC();
        v38 = v69;
        sub_26124AA44(v37, v69);
        v39 = sub_2613A124C();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v38, 1, v39) == 1)
        {
          sub_26124C718(v38, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v70 = v32;
          v71 = v31;
          v49 = v36;
          v50 = sub_2613A122C();
          v51 = sub_2613A1D8C();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v72 = v34;
            v54 = v53;
            *v52 = 138412290;
            *(v52 + 4) = v49;
            *v53 = v49;
            v55 = v49;
            _os_log_impl(&dword_261243000, v50, v51, "Error opening database: [%@]", v52, 0xCu);
            sub_26124C718(v54, &qword_27FEA0410, &qword_2613AA780);
            v56 = v54;
            v34 = v72;
            MEMORY[0x266701350](v56, -1, -1);
            v57 = v52;
            v38 = v69;
            MEMORY[0x266701350](v57, -1, -1);
          }

          (*(v40 + 8))(v38, v39);
          v32 = v70;
          v31 = v71;
        }

        swift_willThrow();
        v28 = v73;
      }

      sub_2612A1C20(v28);
      (*(v33 + 8))(v34, v32);
    }

    else
    {
      v72 = v19;
      v41 = sub_26129B8EC();
      v42 = v70;
      sub_26124AA44(v41, v70);
      v43 = sub_2613A124C();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) == 1)
      {
        sub_2612A1C20(v28);
        (*(v33 + 8))(v72, v32);
        sub_26124C718(v42, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v71 = v31;
        v45 = sub_2613A122C();
        v46 = sub_2613A1D9C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_261243000, v45, v46, "SAF DB opened successfully", v47, 2u);
          v48 = v47;
          v42 = v70;
          MEMORY[0x266701350](v48, -1, -1);
        }

        sub_2612A1C20(v28);
        (*(v33 + 8))(v72, v32);
        (*(v44 + 8))(v42, v43);
        return v71;
      }
    }

    return v31;
  }

  else
  {
    v59 = sub_26129B8EC();
    v60 = v68;
    sub_26124AA44(v59, v68);
    v61 = sub_2613A124C();
    v62 = *(v61 - 8);
    v63 = v60;
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      sub_26124C718(v60, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v64 = sub_2613A122C();
      v65 = sub_2613A1D8C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_261243000, v64, v65, "Could not generate model URL", v66, 2u);
        MEMORY[0x266701350](v66, -1, -1);
      }

      (*(v62 + 8))(v63, v61);
    }

    result = sub_2613A220C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2612A1B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalCoreDataConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2612A1BD4()
{
  result = qword_27FE9F8F0;
  if (!qword_27FE9F8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9F8F0);
  }

  return result;
}

uint64_t sub_2612A1C20(uint64_t a1)
{
  v2 = type metadata accessor for LocalCoreDataConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2612A1C7C()
{
  type metadata accessor for SecureChannel();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  [v1 setTimeoutIntervalForResource_];
  [v1 setTLSMinimumSupportedProtocolVersion_];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  *(v0 + 16) = v2;
  result = sub_2612A1F34();
  *(v0 + 24) = result;
  qword_27FEAEDF0 = v0;
  return result;
}

uint64_t sub_2612A1D44()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  [v1 setTimeoutIntervalForResource_];
  [v1 setTLSMinimumSupportedProtocolVersion_];
  v2 = [objc_opt_self() sessionWithConfiguration_];

  *(v0 + 16) = v2;
  *(v0 + 24) = sub_2612A1F34();
  return v0;
}

uint64_t *sub_2612A1E08()
{
  if (qword_27FEA5DD0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEDF0;
}

id sub_2612A1E58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_2612A1E9C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id sub_2612A1F34()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  [v0 setTimeoutIntervalForResource_];
  [v0 setTLSMinimumSupportedProtocolVersion_];
  v1 = objc_allocWithZone(MEMORY[0x277CF0188]);
  v2 = sub_2613A189C();
  v3 = [v1 initWithIdentifier_];

  [v0 set:v3 appleIDContext:?];
  v4 = [objc_opt_self() sessionWithConfiguration_];

  return v4;
}

id sub_2612A203C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_2612A2080(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_2612A2118(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = v6;
  *(v7 + 96) = a6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 160) = a3;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 104) = sub_26129DF9C();
  v8 = sub_2613A25DC();
  *(v7 + 112) = v8;
  v9 = *(v8 - 8);
  *(v7 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A220C);
}

uint64_t sub_2612A220C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 160);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = *(v0 + 72);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_2612A231C;
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000017, 0x80000002613B9DB0, sub_2612A3CF4, v4, v8);
}

uint64_t sub_2612A231C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2612A2434);
}

uint64_t sub_2612A2434()
{
  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 136), *(v0 + 112));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = *(v0 + 120);
    v16 = *(v0 + 112);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *v1;
    v7 = *(v1 + 1);
    v8 = *(v1 + 2);
    v10 = *(v1 + 3);
    v9 = *(v1 + 4);
    *(v0 + 16) = *v1;
    *(v0 + 24) = v7;
    *(v0 + 32) = v8;
    *(v0 + 40) = v10;
    *(v0 + 48) = v9;
    swift_willThrowTypedImpl();
    (*(v3 + 8))(v2, v16);

    *v5 = v6;
    *(v5 + 8) = v7;
    *(v5 + 16) = v8;
    *(v5 + 24) = v10;
    *(v5 + 32) = v9;
  }

  else
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    (*(*(v13 - 8) + 32))(v14, v12, v13);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2612A25C8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  sub_26129DF9C();
  sub_2613A25DC();
  v11 = sub_2613A1BEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  (*(v12 + 16))(&v19[-v14], a1, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v12 + 32))(v17 + v16, v15, v11);
  (*(*a2 + 152))(a3, v20, sub_2612A441C, v17, a5, a6);
}

uint64_t sub_2612A2788(uint64_t a1)
{
  sub_26129DF9C();
  v2 = sub_2613A25DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2);
  sub_2613A1BEC();
  return sub_2613A1BDC();
}

uint64_t sub_2612A2888(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a3;
  v23 = a4;
  v24 = a2;
  v21 = a1;
  v9 = sub_26139EC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v15 = v14 + v11;
  v16 = swift_allocObject();
  *(v16 + 2) = a5;
  *(v16 + 3) = a6;
  v17 = a6;
  v18 = v23;
  *(v16 + 4) = v22;
  *(v16 + 5) = v18;
  *(v16 + 6) = v13;
  (*(v10 + 32))(&v16[v14], v12, v9);
  LODWORD(v10) = v24;
  v16[v15] = v24;

  sub_2612A2C20(v21, v10, 0, 0, sub_2612A3D04, v16, a5, v17);
}

uint64_t sub_2612A2A48(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  sub_26129DF9C();
  v14 = sub_2613A25DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  (*(v15 + 16))(&v23 - v17, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v18 + 2);
    v20 = *(v18 + 4);
    v21 = sub_26129428C(*v18, 2);

    if (v21)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_2612A2C20(a5, a6 & 1, 0, 1, a2, a3, a7, v23);
      }
    }

    else
    {
      return a2(a1);
    }
  }

  else
  {
    a2(a1);
    return (*(v15 + 8))(v18, v14);
  }

  return result;
}

uint64_t sub_2612A2C20(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v54 = a5;
  v45 = a4;
  v51 = a3;
  v46 = a2;
  sub_26129DF9C();
  v49 = a7;
  v11 = sub_2613A25DC();
  v52 = *(v11 - 1);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = &v40 - v17;
  v18 = sub_26139EC4C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  type metadata accessor for SPRUtils();
  sub_2612A3DD4();
  sub_2612C61EC(sub_2612A35A8);
  v48 = a1;
  v41 = v19;
  v42 = a6;
  v25 = aBlock[0];
  MEMORY[0x28223BE20](v26);
  *(&v40 - 4) = v25;
  *(&v40 - 3) = a1;
  *(&v40 - 16) = v45 & 1;
  sub_2612C61EC(sub_2612A4240);
  v53 = v25;
  v27 = *v47;
  if (v46)
  {
    v28 = (*(v27 + 120))();
  }

  else
  {
    v28 = (*(v27 + 96))();
  }

  v29 = v28;
  v30 = v42;
  v31 = v48;
  v32 = v41;
  type metadata accessor for APIServiceHelper();
  sub_26129429C(v24);
  v33 = sub_26139EBCC();
  (*(v32 + 16))(v22, v31, v18);
  v34 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v36 = v50;
  *(v35 + 2) = v49;
  *(v35 + 3) = v36;
  *(v35 + 4) = v54;
  *(v35 + 5) = v30;
  (*(v32 + 32))(&v35[v34], v22, v18);
  aBlock[4] = sub_2612A4304;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2612A3BEC;
  aBlock[3] = &block_descriptor_2;
  v37 = _Block_copy(aBlock);

  v38 = [v29 dataTaskWithRequest:v33 completionHandler:v37];
  _Block_release(v37);

  [v38 resume];
  return (*(v32 + 8))(v24, v18);
}

id sub_2612A35A8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D64040]) init];
  *a1 = result;
  return result;
}

uint64_t sub_2612A35EC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a7;
  v79 = a3;
  v80 = a5;
  v81 = a6;
  v76 = a1;
  v77 = a2;
  v10 = sub_2613A1F8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v69 - v14;
  v16 = *(a8 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26129DF9C();
  v20 = sub_2613A25DC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  if (a4)
  {
    v25 = sub_261294274();
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    *v24 = *v25;
    *(v24 + 1) = v26;
    *(v24 + 2) = v27;
    *(v24 + 3) = v28;
    *(v24 + 4) = v29;
    swift_storeEnumTagMultiPayload();

    v80(v24);
    return (*(v21 + 8))(v24, v20);
  }

  v72 = v19;
  v73 = v15;
  v70 = v11;
  v71 = v10;
  v74 = v16;
  v75 = v21;
  v31 = v79;
  v32 = v80;
  v34 = v77;
  v33 = v78;
  if (!v79 || (objc_opt_self(), (v35 = swift_dynamicCastObjCClass()) == 0) || v34 >> 60 == 15)
  {
    v47 = sub_261294250();
    v48 = v47[1];
    v49 = v47[2];
    v50 = v47[3];
    v51 = v47[4];
    *v24 = *v47;
    *(v24 + 1) = v48;
    *(v24 + 2) = v49;
    *(v24 + 3) = v50;
    *(v24 + 4) = v51;
    swift_storeEnumTagMultiPayload();

    v32(v24);
    return (*(v75 + 8))(v24, v20);
  }

  v36 = v35;
  type metadata accessor for APIServiceHelper();
  v79 = v31;
  v37 = v76;
  sub_26125C348(v76, v34);
  sub_2612947FC(v33, v37, v34, v36);
  v38 = [v36 statusCode];
  v39 = v20;
  if (v38 - 300 >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v52 = v73;
    sub_26124B218(a8, a8, v73);
    v53 = v74;
    v54 = (*(v74 + 48))(v52, 1, a8);
    v40 = v75;
    v55 = v37;
    if (v54 != 1)
    {
      v61 = v72;
      (*(v53 + 32))(v72, v52, a8);
      (*(v53 + 16))(v24, v61, a8);
      swift_storeEnumTagMultiPayload();
      v32(v24);

      sub_26124A168(v55, v34);
      (*(v40 + 8))(v24, v39);
      return (*(v53 + 8))(v61, a8);
    }

    (*(v70 + 8))(v52, v71);
    v56 = sub_26129425C();
    v57 = v56[1];
    v58 = v56[2];
    v59 = v56[3];
    v60 = v56[4];
    *v24 = *v56;
    *(v24 + 1) = v57;
    *(v24 + 2) = v58;
    *(v24 + 3) = v59;
    *(v24 + 4) = v60;
    swift_storeEnumTagMultiPayload();

    v32(v24);

    v46 = v37;
  }

  else
  {
    v40 = v75;
    if ((v38 | 2) == 0x193)
    {
      v41 = sub_261294268();
      v42 = v41[1];
      v43 = v41[2];
      v44 = v41[3];
      v45 = v41[4];
      *v24 = *v41;
      *(v24 + 1) = v42;
      *(v24 + 2) = v43;
      *(v24 + 3) = v44;
      *(v24 + 4) = v45;
      swift_storeEnumTagMultiPayload();

      v32(v24);

      v46 = v76;
    }

    else
    {
      sub_2612A43C8();
      v62 = v76;
      sub_26124B218(&type metadata for APIErrorResponse, &type metadata for APIErrorResponse, &v82);
      if (*(&v82 + 1))
      {
        sub_261294240(4, v82, *(&v82 + 1), v83, *(&v83 + 1), &v82);
        v63 = v83;
        *v24 = v82;
        *(v24 + 1) = v63;
        *(v24 + 4) = v84;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v64 = sub_26129425C();
        v65 = v64[1];
        v66 = v64[2];
        v67 = v64[3];
        v68 = v64[4];
        *v24 = *v64;
        *(v24 + 1) = v65;
        *(v24 + 2) = v66;
        *(v24 + 3) = v67;
        *(v24 + 4) = v68;
        swift_storeEnumTagMultiPayload();
      }

      v32(v24);

      v46 = v62;
    }
  }

  sub_26124A168(v46, v34);
  return (*(v40 + 8))(v24, v39);
}

uint64_t sub_2612A3BEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_26139F01C();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_26124A168(v6, v11);
}

uint64_t sub_2612A3CB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612A3D04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_26139EC4C() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));
  v10 = *(v9 + *(v5 + 64));

  return sub_2612A2A48(a1, v6, v7, v8, v9, v10, v3, v4);
}

unint64_t sub_2612A3DD4()
{
  result = qword_27FE9F8F8;
  if (!qword_27FE9F8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9F8F8);
  }

  return result;
}

uint64_t sub_2612A3E34(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612A3EA0(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612A3F0C(void *a1, uint64_t a2)
{
  v4 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612A3F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612A4018()
{
  v2 = *v0;
  sub_2613A256C();
  sub_2613A183C();
  return sub_2613A25CC();
}

uint64_t sub_2612A4078(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F928, type metadata accessor for SecureChannelError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612A40E4(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F928, type metadata accessor for SecureChannelError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612A4150(uint64_t a1)
{
  v2 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612A41BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612A4514(&qword_27FE9F920, type metadata accessor for SecureChannelError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

void sub_2612A4240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = sub_26139EBCC();
  v9 = 0;
  v5 = [v1 securingRequest:v4 force:v2 error:&v9];

  v6 = v9;
  if (v5)
  {
    sub_26139EBEC();
    v7 = v6;
  }

  else
  {
    v8 = v9;
    sub_26139EE7C();

    swift_willThrow();
  }
}

uint64_t sub_2612A4304(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(sub_26139EC4C() - 8);
  return sub_2612A35EC(a1, a2, a3, a4, *(v4 + 32), *(v4 + 40), v4 + ((*(v11 + 80) + 48) & ~*(v11 + 80)), v9);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2612A43C8()
{
  result = qword_27FE9F908;
  if (!qword_27FE9F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F908);
  }

  return result;
}

uint64_t sub_2612A441C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_26129DF9C();
  sub_2613A25DC();
  v4 = *(*(sub_2613A1BEC() - 8) + 80);

  return sub_2612A2788(a1);
}

uint64_t sub_2612A4514(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2612A45B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2612A4770()
{
  result = qword_27FE9F948;
  if (!qword_27FE9F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F948);
  }

  return result;
}

uint64_t sub_2612A4858()
{
  v0 = sub_2613A1DDC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_2613A175C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2613A1E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26127BBE0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  sub_2613A173C();
  v10[1] = MEMORY[0x277D84F90];
  sub_2612A4DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_2612A4E08();
  sub_2613A203C();
  result = sub_2613A1E2C();
  qword_281451F30 = result;
  return result;
}

uint64_t *sub_2612A4A58()
{
  if (qword_281451F28 != -1)
  {
    swift_once();
  }

  return &qword_281451F30;
}

uint64_t sub_2612A4ACC()
{
  v0 = sub_2613A1DDC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_2613A175C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2613A1E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26127BBE0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  sub_2613A173C();
  v10[1] = MEMORY[0x277D84F90];
  sub_2612A4DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_2612A4E08();
  sub_2613A203C();
  result = sub_2613A1E2C();
  qword_281451F40 = result;
  return result;
}

uint64_t *sub_2612A4CCC()
{
  if (qword_281451F38 != -1)
  {
    swift_once();
  }

  return &qword_281451F40;
}

id sub_2612A4D40(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

unint64_t sub_2612A4DB0()
{
  result = qword_281451970;
  if (!qword_281451970)
  {
    sub_2613A1DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281451970);
  }

  return result;
}

unint64_t sub_2612A4E08()
{
  result = qword_281451988[0];
  if (!qword_281451988[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE9F460, qword_2613A4D60);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281451988);
  }

  return result;
}

uint64_t sub_2612A4E8C()
{
  v1 = 1702125924;
  *v0;
  if (*v0)
  {
    v1 = 0x6E6F69676572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x74736566696E616DLL;
  }
}

uint64_t sub_2612A4F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612A6B50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612A4F30(uint64_t a1)
{
  v2 = sub_2612A51E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612A4F6C(uint64_t a1)
{
  v2 = sub_2612A51E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612A4FA8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F968, &qword_2613A76D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612A51E0();
  sub_2613A262C();
  LOBYTE(v23) = 0;
  sub_26139F0BC();
  sub_2612A56C0(&qword_27FE9F970, MEMORY[0x277CC9578]);
  sub_2613A23CC();
  if (!v2)
  {
    v11 = type metadata accessor for DiscoveryCacheContent(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v23) = 1;
    sub_2613A238C();
    v15 = (v3 + v11[6]);
    v17 = *v15;
    v16 = v15[1];
    v23 = v17;
    v24 = v16;
    v22[15] = 2;
    sub_2612A5234();
    sub_2613A23CC();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v23) = 3;
    sub_2613A238C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2612A51E0()
{
  result = qword_27FEA6260;
  if (!qword_27FEA6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA6260);
  }

  return result;
}

unint64_t sub_2612A5234()
{
  result = qword_27FE9F978;
  if (!qword_27FE9F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F978);
  }

  return result;
}

uint64_t sub_2612A5288@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_26139F0BC();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F980, &qword_2613A76D8);
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = &v27 - v8;
  v10 = type metadata accessor for DiscoveryCacheContent(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612A51E0();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = v13;
  v16 = v29;
  LOBYTE(v33) = 0;
  sub_2612A56C0(&qword_27FE9F988, MEMORY[0x277CC9578]);
  sub_2613A231C();
  (*(v16 + 32))(v13, v31, v4);
  LOBYTE(v33) = 1;
  v17 = sub_2613A22DC();
  v18 = &v13[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  v35 = 2;
  sub_2612A5708();
  sub_2613A231C();
  v20 = v34;
  v21 = &v13[v10[6]];
  *v21 = v33;
  *(v21 + 1) = v20;
  LOBYTE(v33) = 3;
  v22 = sub_2613A22DC();
  v24 = v23;
  (*(v30 + 8))(v9, v32);
  v25 = (v15 + v10[7]);
  *v25 = v22;
  v25[1] = v24;
  sub_2612A575C(v15, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_2612A57C0(v15);
}

uint64_t sub_2612A56C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2612A5708()
{
  result = qword_27FE9F990;
  if (!qword_27FE9F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F990);
  }

  return result;
}

uint64_t sub_2612A575C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A57C0(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2612A584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - v15;
  v17 = type metadata accessor for DiscoveryCacheContent(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26139F0BC();
  (*(*(v22 - 8) + 16))(v21, a1, v22);
  v23 = &v21[v17[5]];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = &v21[v17[6]];
  *v24 = a4;
  *(v24 + 1) = a5;
  v25 = &v21[v17[7]];
  *v25 = v30;
  *(v25 + 1) = a7;
  sub_2612A575C(v21, v16);
  (*(v18 + 56))(v16, 0, 1, v17);
  v26 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  v27 = v31;
  swift_beginAccess();

  sub_2612A5A5C(v16, v27 + v26);
  swift_endAccess();
  sub_2612A6CB8();
  return sub_2612A57C0(v21);
}

uint64_t sub_2612A5A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A5ACC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  swift_beginAccess();
  sub_2612A5A5C(v8, v0 + v10);
  swift_endAccess();
  sub_2612A70F4();
  v11 = sub_26129B97C();
  sub_26125A870(v11, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    return sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v15 = sub_2613A122C();
  v16 = sub_2613A1D7C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_261243000, v15, v16, "Discovery cache released", v17, 2u);
    MEMORY[0x266701350](v17, -1, -1);
  }

  return (*(v13 + 8))(v4, v12);
}

uint64_t sub_2612A5D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = type metadata accessor for DiscoveryCacheContent(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v47 - v26;
  v28 = sub_2612A624C();
  if (v28)
  {
    goto LABEL_14;
  }

  v49 = v7;
  v50 = v25;
  v51 = v14;
  v29 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  swift_beginAccess();
  v52 = v29;
  sub_26125A870(v2 + v29, v17, &qword_27FE9F998, &qword_2613A76E0);
  v48 = v21;
  v30 = *(v21 + 48);
  LODWORD(v29) = v30(v17, 1, v20);
  sub_26124C718(v17, &qword_27FE9F998, &qword_2613A76E0);
  if (v29 == 1 && (sub_2612A64B4() & 1) == 0)
  {
LABEL_12:
    (*(v48 + 56))(v19, 1, 1, v20);
    goto LABEL_13;
  }

  sub_26125A870(v2 + v52, v19, &qword_27FE9F998, &qword_2613A76E0);
  if (v30(v19, 1, v20) == 1)
  {
LABEL_13:
    v28 = sub_26124C718(v19, &qword_27FE9F998, &qword_2613A76E0);
    goto LABEL_14;
  }

  v47 = v30;
  sub_2612A7488(v19, v27);
  v31 = &v27[v20[5]];
  v32 = *(v31 + 1);
  v58 = *v31;
  v59 = v32;
  v56 = v54;
  v57 = v55;
  v33 = sub_26139F1CC();
  v34 = v49;
  (*(*(v33 - 8) + 56))(v49, 1, 1, v33);
  sub_26124C7CC();

  v35 = sub_2613A200C();
  sub_26124C718(v34, &qword_27FE9F338, &unk_2613A4630);
  sub_2612A57C0(v27);

  v37 = v50;
  v36 = v51;
  if (!v35)
  {
    v38 = v53;
    sub_26125A870(v3 + v52, v53, &qword_27FE9F998, &qword_2613A76E0);
    v39 = v47(v38, 1, v20);
    sub_26124C718(v38, &qword_27FE9F998, &qword_2613A76E0);
    if (v39 != 1 || (sub_2612A64B4() & 1) != 0)
    {
      sub_26125A870(v3 + v52, v36, &qword_27FE9F998, &qword_2613A76E0);
      if (v47(v36, 1, v20) != 1)
      {
        sub_2612A7488(v36, v37);
        v40 = v20[7];
        v41 = (v37 + v20[6]);
        v43 = *v41;
        v42 = v41[1];
        v45 = *(v37 + v40);
        v44 = *(v37 + v40 + 8);

        sub_2612A57C0(v37);
        return v43;
      }

      v19 = v36;
      goto LABEL_13;
    }

    v19 = v36;
    goto LABEL_12;
  }

LABEL_14:
  (*(*v3 + 136))(v28);
  return 0;
}

BOOL sub_2612A624C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for DiscoveryCacheContent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v21 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  swift_beginAccess();
  sub_26125A870(v0 + v12, v5, &qword_27FE9F998, &qword_2613A76E0);
  v20 = v9;
  v13 = *(v9 + 48);
  v14 = v13(v5, 1, v8);
  sub_26124C718(v5, &qword_27FE9F998, &qword_2613A76E0);
  if (v14 == 1 && (sub_2612A64B4() & 1) == 0)
  {
    (*(v20 + 56))(v7, 1, 1, v8);
  }

  else
  {
    sub_26125A870(v0 + v12, v7, &qword_27FE9F998, &qword_2613A76E0);
    if (v13(v7, 1, v8) != 1)
    {
      v15 = v21;
      sub_2612A7488(v7, v21);
      sub_26139F06C();
      v17 = fabs(v16);
      sub_2612A57C0(v15);
      return v17 > 3600.0;
    }
  }

  sub_26124C718(v7, &qword_27FE9F998, &qword_2613A76E0);
  return 1;
}

uint64_t sub_2612A64B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F998, &qword_2613A76E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - v6;
  v35 = type metadata accessor for DiscoveryCacheContent(0);
  v37 = *(v35 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26139EF7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26139F87C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F86C();
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_2613A211C();

  sub_2613A121C();
  v38 = sub_2613A11AC();
  v39 = v20;
  MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9F10);
  sub_26139EECC();

  v21 = sub_26139F82C();
  v23 = v22;
  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
  v24 = sub_2612A56C0(&qword_27FE9F9A8, type metadata accessor for DiscoveryCacheContent);
  v25 = v35;
  nullsub_1(v35, v24);
  v26 = v36;
  sub_26124B218(v25, v25, v36);
  sub_26124C6C4(v21, v23);
  v27 = v37;
  if ((*(v37 + 48))(v26, 1, v25) == 1)
  {
    sub_26124C718(v26, &qword_27FE9F998, &qword_2613A76E0);
    return 0;
  }

  else
  {
    sub_2612A7488(v26, v9);
    v29 = v33;
    sub_2612A7488(v9, v33);
    (*(v27 + 56))(v29, 0, 1, v25);
    v30 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
    v31 = v34;
    swift_beginAccess();
    sub_2612A5A5C(v29, v31 + v30);
    swift_endAccess();
    return 1;
  }
}

uint64_t sub_2612A6A74()
{
  sub_26124C718(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache, &qword_27FE9F998, &qword_2613A76E0);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_2612A6AC4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0x40AC200000000000;
  v4 = OBJC_IVAR____TtC21ProximityReaderDaemon14DiscoveryCache_cache;
  v5 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t sub_2612A6B50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEE006E6F69676552)
  {

    return 3;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2612A6CB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v20 - v2;
  v4 = sub_26139EF7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26139F87C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DiscoveryCacheContent(0);
  sub_2612A56C0(&qword_27FE9F9B0, type metadata accessor for DiscoveryCacheContent);
  result = sub_26124A620(v14);
  if (v16 >> 60 != 15)
  {
    v17 = result;
    v18 = v16;
    v20[2] = v3;
    sub_26139F86C();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_2613A211C();

    sub_2613A121C();
    v21 = sub_2613A11AC();
    v22 = v19;
    MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9F10);
    sub_26139EECC();

    sub_26139F83C();
    sub_26124A168(v17, v18);
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_2612A70F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_26139EF7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_26139F87C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26139F86C();
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2613A211C();

  sub_2613A121C();
  v15 = sub_2613A11AC();
  v16 = v12;
  MEMORY[0x2666FFEA0](0xD000000000000013, 0x80000002613B9F10);
  sub_26139EECC();

  sub_26139F84C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2612A7488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryCacheContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A7514()
{
  result = sub_26139F0BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2612A75BC()
{
  sub_2612A7664();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2612A7664()
{
  if (!qword_27FE9F9A0)
  {
    type metadata accessor for DiscoveryCacheContent(255);
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9F9A0);
    }
  }
}

unint64_t sub_2612A76D0()
{
  result = qword_27FEA6510[0];
  if (!qword_27FEA6510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA6510);
  }

  return result;
}

unint64_t sub_2612A7728()
{
  result = qword_27FEA6620;
  if (!qword_27FEA6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA6620);
  }

  return result;
}

unint64_t sub_2612A7780()
{
  result = qword_27FEA6628[0];
  if (!qword_27FEA6628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA6628);
  }

  return result;
}

uint64_t sub_2612A77D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_2612A77F8(char a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 16) = a2;
  return result;
}

uint64_t sub_2612A783C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v56 = a3;
  v7 = sub_26139F0BC();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_26129B780();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_26124D0CC(v13);
  }

  else
  {

    v17 = sub_2613A122C();
    v18 = sub_2613A1D7C();

    v53 = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v59 = v51;
      *v19 = 136380675;
      v20 = sub_2613A0F7C();
      v52 = a1;
      v22 = sub_26124C11C(v20, v21, &v59);
      a1 = v52;

      *(v19 + 4) = v22;
      v23 = v17;
      v24 = v17;
      v25 = v19;
      _os_log_impl(&dword_261243000, v23, v53, "status: %{private}s", v19, 0xCu);
      v26 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x266701350](v26, -1, -1);
      MEMORY[0x266701350](v25, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v13, v15);
  }

  v27 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v27 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    sub_2613A0F9C();
    if (BYTE8(v59))
    {
      LODWORD(v27) = 0;
    }

    else
    {
      v28 = *&v59;
      v29 = v55;
      sub_26139F0AC();
      sub_26139F07C();
      v31 = v30;
      (*(v54 + 8))(v29, v7);
      LODWORD(v27) = v31 <= v28;
    }
  }

  v32 = qword_2613A7A08[*(v4 + 24)];
  v33 = *(v4 + 16);
  if (v27)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  v34 = (*(*v33 + 216))(a1, a2, v32);

  type metadata accessor for Mock();
  v35 = sub_26129B0F4(39);
  v36 = MEMORY[0x277D839B0];
  if (v35)
  {
    v37 = *MEMORY[0x277D640D0];
    v38 = sub_2613A18CC();
    v40 = v39;
    *(&v60 + 1) = v36;
    LOBYTE(v59) = 1;
    sub_26125A7B0(&v59, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v34;
    sub_261258F20(v58, v38, v40, isUniquelyReferenced_nonNull_native);

    v34 = v57;
  }

  if (sub_26129B0F4(38))
  {
    v42 = *MEMORY[0x277D640D8];
    v43 = sub_2613A18CC();
    v45 = v44;
    *(&v60 + 1) = v36;
    LOBYTE(v59) = 0;
    sub_26125A7B0(&v59, v58);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v34;
    sub_261258F20(v58, v43, v45, v46);

    v34 = v57;
  }

  result = sub_2612A7DE4(v34, &v59);
  v48 = v60;
  v49 = v61;
  v50 = v56;
  *v56 = v59;
  v50[1] = v48;
  *(v50 + 4) = v49;
  return result;
}

double sub_2612A7D1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2612A7DE4(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_2612A7D78()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2612A7DB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 19) = a6;
  *(a9 + 20) = a7;
  *(a9 + 21) = a8;
  *(a9 + 24) = a10;
  *(a9 + 32) = a11;
  return result;
}

uint64_t sub_2612A7DE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v78 - v5;
  v7 = sub_26129B780();
  sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_26124D0CC(v6);
  }

  else
  {

    v10 = sub_2613A122C();
    v11 = sub_2613A1D7C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v84[0] = v13;
      *v12 = 136380675;
      v14 = sub_2613A180C();
      v16 = sub_26124C11C(v14, v15, v84);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_261243000, v10, v11, "status result: %{private}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v6, v8);
  }

  v17 = *MEMORY[0x277D64100];
  v18 = sub_2613A18CC();
  if (!*(a1 + 16))
  {

    goto LABEL_16;
  }

  v20 = sub_26124E5EC(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_16:
    v79 = 0;
    v80 = 0;
    goto LABEL_17;
  }

  sub_26124C994(*(a1 + 56) + 32 * v20, v84);
  v23 = swift_dynamicCast();
  if (v23)
  {
    v24 = v82;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v83;
  }

  else
  {
    v25 = 0;
  }

  v79 = v25;
  v80 = v24;
LABEL_17:
  v26 = *MEMORY[0x277D640E0];
  v27 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v29 = sub_26124E5EC(v27, v28);
    v31 = v30;

    if (v31)
    {
      sub_26124C994(*(a1 + 56) + 32 * v29, v84);
      if (swift_dynamicCast())
      {
        v32 = v82;
        goto LABEL_23;
      }
    }
  }

  else
  {
  }

  v32 = 1;
LABEL_23:
  v33 = *MEMORY[0x277D640D8];
  v34 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v36 = sub_26124E5EC(v34, v35);
    v38 = v37;

    if (v38)
    {
      sub_26124C994(*(a1 + 56) + 32 * v36, v84);
      if (swift_dynamicCast())
      {
        v39 = v82;
        goto LABEL_29;
      }
    }
  }

  else
  {
  }

  v39 = 1;
LABEL_29:
  v40 = *MEMORY[0x277D640D0];
  v41 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v43 = sub_26124E5EC(v41, v42);
    v45 = v44;

    if (v45)
    {
      sub_26124C994(*(a1 + 56) + 32 * v43, v84);
      if (swift_dynamicCast())
      {
        v46 = v82;
        goto LABEL_35;
      }
    }
  }

  else
  {
  }

  v46 = 0;
LABEL_35:
  v47 = *MEMORY[0x277D640E8];
  v48 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v50 = sub_26124E5EC(v48, v49);
    v52 = v51;

    if (v52)
    {
      sub_26124C994(*(a1 + 56) + 32 * v50, v84);
      if (swift_dynamicCast())
      {
        v53 = v82;
        goto LABEL_41;
      }
    }
  }

  else
  {
  }

  v53 = 0;
LABEL_41:
  v54 = *MEMORY[0x277D640C8];
  v55 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v57 = sub_26124E5EC(v55, v56);
    v59 = v58;

    if (v59)
    {
      sub_26124C994(*(a1 + 56) + 32 * v57, v84);
      if (swift_dynamicCast())
      {
        v60 = v82;
        goto LABEL_47;
      }
    }
  }

  else
  {
  }

  v60 = 0;
LABEL_47:
  v61 = *MEMORY[0x277D640F0];
  v62 = sub_2613A18CC();
  if (*(a1 + 16))
  {
    v64 = sub_26124E5EC(v62, v63);
    v66 = v65;

    if (v66)
    {
      sub_26124C994(*(a1 + 56) + 32 * v64, v84);
      if (swift_dynamicCast())
      {
        v67 = v82;
        goto LABEL_53;
      }
    }
  }

  else
  {
  }

  v67 = 0;
LABEL_53:
  v68 = *MEMORY[0x277D640F8];
  v69 = sub_2613A18CC();
  if (!*(a1 + 16))
  {

    goto LABEL_58;
  }

  v71 = sub_26124E5EC(v69, v70);
  v73 = v72;

  if ((v73 & 1) == 0)
  {
LABEL_58:

    v75 = 0;
    v76 = 0;
    goto LABEL_59;
  }

  sub_26124C994(*(a1 + 56) + 32 * v71, v84);

  result = swift_dynamicCast();
  v75 = v82;
  v76 = v83;
  if (!result)
  {
    v75 = 0;
    v76 = 0;
  }

LABEL_59:
  v77 = v81;
  *v81 = v80;
  v77[1] = v79;
  *(v77 + 16) = v32;
  *(v77 + 17) = v39;
  *(v77 + 18) = v46;
  *(v77 + 19) = v53;
  *(v77 + 20) = v60;
  *(v77 + 21) = v67;
  v77[3] = v75;
  v77[4] = v76;
  return result;
}

unint64_t sub_2612A848C()
{
  result = qword_27FE9F9B8;
  if (!qword_27FE9F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F9B8);
  }

  return result;
}

uint64_t sub_2612A8514(uint64_t a1, unsigned int a2)
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

uint64_t sub_2612A8570(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for StoreAndForwardReadResult()
{
  result = qword_27FEA67B0;
  if (!qword_27FEA67B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2612A8628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612A868C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v15 = type metadata accessor for StoreAndForwardReadResult();
  result = sub_26125D080(a5, a9 + *(v15 + 24));
  v17 = (a9 + *(v15 + 28));
  *v17 = a6;
  v17[1] = a7;
  v17[2] = a8;
  v17[3] = a10;
  return result;
}

uint64_t sub_2612A8734()
{
  result = type metadata accessor for TransactionData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2612A87C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;

  sub_2612B1EE0(0, v5, a1, a2, a3);
  v14 = v13;
  if (v4)
  {

    v15 = sub_26129B780();
    sub_26124AA44(v15, v12);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v18 = v4;
      v19 = sub_2613A122C();
      v20 = sub_2613A1D8C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31 = v20;
        v22 = v21;
        v30 = swift_slowAlloc();
        v33 = v30;
        *v22 = 136315138;
        v32 = v4;
        v23 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v24 = sub_2613A195C();
        v26 = sub_26124C11C(v24, v25, &v33);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_261243000, v19, v31, "Status error: [ %s ]", v22, 0xCu);
        v27 = v30;
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x266701350](v27, -1, -1);
        MEMORY[0x266701350](v22, -1, -1);
      }

      (*(v17 + 8))(v12, v16);
    }

    swift_willThrow();
  }

  else
  {
  }

  return v14;
}

void sub_2612A8A58(void *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v27 = a1;
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v25 - v8;
  v10 = sub_26129B780();
  sub_26124AA44(v10, v9);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v25[1] = v3;
    v26 = a3;
    v13 = sub_2613A122C();
    v14 = sub_2613A1D9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = a2;
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "Requesting status", v16, 2u);
      v17 = v16;
      a2 = v15;
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
    a3 = v26;
  }

  v18 = sub_2613A189C();
  v28[0] = 0;
  v19 = [v27 statusWithToken:v18 options:a2 error:v28];

  v20 = v28[0];
  if (v19)
  {
    v21 = sub_2613A17FC();
    v22 = v20;

    *a3 = v21;
  }

  else
  {
    v23 = v28[0];
    sub_26139EE7C();

    swift_willThrow();
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2612A8CE8(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, objc_class *a6)
{
  v8 = v6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v34 - v17;

  v19 = sub_2612B24E0(0, v8, a4, a1, a2, a3, a5, a6);
  if (v7)
  {

    v20 = sub_26129B780();
    sub_26124AA44(v20, v18);
    v21 = sub_2613A124C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v18, 1, v21) == 1)
    {
      sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = v7;
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v34[0] = swift_slowAlloc();
        v34[1] = v7;
        v35 = v34[0];
        *v28 = 136315138;
        v29 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v30 = sub_2613A195C();
        v32 = sub_26124C11C(v30, v31, &v35);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_261243000, v26, v27, "Prepare error: [ %s ]", v28, 0xCu);
        v33 = v34[0];
        __swift_destroy_boxed_opaque_existential_0Tm(v34[0]);
        MEMORY[0x266701350](v33, -1, -1);
        MEMORY[0x266701350](v28, -1, -1);
      }

      (*(v22 + 8))(v18, v21);
    }

    return swift_willThrow();
  }

  else
  {
    v23 = v19;

    return v23;
  }
}

uint64_t sub_2612A8FB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 96) = a3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612A9060);
}

uint64_t sub_2612A9060()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2612A9128;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 96);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);

  return sub_2612B2FA4(0, v5, v10, v11, v9, v7, v8, v6);
}

uint64_t sub_2612A9128(uint64_t a1)
{
  v4 = *(*v2 + 80);
  v5 = *v2;
  v5[11] = v1;

  if (v1)
  {
    v7 = v5[6];
    v6 = v5[7];
    v8 = v5[4];

    return MEMORY[0x2822009F8](sub_2612A92B8);
  }

  else
  {
    v9 = v5[9];
    v11 = v5[6];
    v10 = v5[7];
    v12 = v5[4];

    v13 = v5[1];

    return v13(a1);
  }
}

uint64_t sub_2612A92B8()
{
  v23 = v0;
  v1 = v0[9];
  v2 = sub_26129B780();
  sub_26124AA44(v2, v1);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[9], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[9];
    v7 = v5;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[11];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v0[2] = v10;
      v13 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v14 = sub_2613A195C();
      v16 = sub_26124C11C(v14, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_261243000, v8, v9, "Install error: [ %s ]", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v4 + 8))(v0[9], v3);
  }

  v17 = v0[11];
  v18 = v0[9];
  swift_willThrow();

  v19 = v0[1];
  v20 = v0[11];

  return v19();
}

uint64_t sub_2612A94EC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2612A95C4(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  return sub_2612AFAA0(0, v1, a1) & 1;
}

id sub_2612A982C@<X0>(void *a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_26129B780();
  sub_26124AA44(v10, v9);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = sub_2613A122C();
    v14 = sub_2613A1D9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261243000, v13, v14, "Requesting enable diagnostics", v15, 2u);
      MEMORY[0x266701350](v15, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  result = [a1 enableDiagnosticModeWithEnable_];
  *a3 = result;
  return result;
}

void sub_2612A9A2C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_26129B780();
  sub_26124AA44(v9, v8);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Requesting to validate read preconditions", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(24))
  {
    sub_2612B48D8();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 64;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for SPRUtils();
    v16 = sub_2612C70E4(a2);
    v18 = v17;
    v24 = v16;
    v19 = (v17 >> 8) & 1;
    v25 = v17 & 0x1FF;
    MEMORY[0x28223BE20](v16);
    *(&v24 - 2) = a1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FA00, &qword_2613A7AD0);
    sub_26124A238(sub_2612B484C, (&v24 - 4), v20, &v26);
    sub_2612B48CC(v16, v18, v19);
    if (!v2)
    {
      v21 = v26;
      v22 = HIBYTE(v27);
      v23 = v27;
      v24 = v26;
      v25 = v27;
      sub_26124A42C(sub_2612A9D44, 0, v20, &v28);
      sub_2612B48CC(v21, v23, v22);
      sub_2612B48CC(v28, v29, v30);
    }
  }
}

uint64_t sub_2612A9D44(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = sub_26129B780();
  sub_26124AA44(v8, v5);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v11 = sub_2613A122C();
    v12 = sub_2613A1D8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_2612B48D8();
      swift_allocError();
      *v15 = v6;
      *(v15 + 8) = v7;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v11, v12, "Error validating read preconditions [ %@ ]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    (*(v10 + 8))(v5, v9);
  }

  sub_2612B48D8();
  swift_allocError();
  *v17 = v6;
  *(v17 + 8) = v7;
  return swift_willThrow();
}

void sub_2612A9F88(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;

  sub_2612ADDB0(v6, v5, a2, v3);
}

void sub_2612AA040(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  if (a2)
  {
    _s3__C4CodeOMa_1(0);
    v22[1] = 14001;
    v12 = a2;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    if (sub_26139EDAC())
    {
      v13 = *(a3 + 24);
      *(a3 + 24) = 0;
    }

    (*(*a4 + 184))(a2, a1);
  }

  else if (a1)
  {
    v14 = *(*a4 + 152);
    v22[0] = a1;
    v14();
    v15 = v22[0];
  }

  else
  {
    v16 = sub_26129B780();
    sub_26124AA44(v16, v11);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11, 1, v17) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v19 = sub_2613A122C();
      v20 = sub_2613A1D8C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "readCard did not return any error or transactionData", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      (*(v18 + 8))(v11, v17);
    }
  }
}

void sub_2612AA2EC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_2612AA378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2612AE36C(0, v0);
}

id sub_2612AA5D0(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  v6 = sub_26129B780();
  sub_26124AA44(v6, v5);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Cancelling current readCard", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v15[0] = 0;
  if ([a1 cancelReadAndReturnError_])
  {
    result = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_26139EE7C();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2612AA7E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  sub_26124C778(a1, a2);
  sub_26125C348(a3, a4);
  sub_2612AE8CC(0, v6, a1, a2, a3, a4, v31);
  if (!v5)
  {
    return v31[0];
  }

  v15 = sub_26129B780();
  sub_26124AA44(v15, v14);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {

    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v19 = v5;
    v20 = sub_2613A122C();
    v21 = sub_2613A1D8C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = v21;
      v23 = v22;
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v23 = 136315138;
      v31[3] = v5;
      v24 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v25 = sub_2613A195C();
      v27 = sub_26124C11C(v25, v26, v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_261243000, v20, v30, "Secure reader blob error: [ %s ]", v23, 0xCu);
      v28 = v29;
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x266701350](v28, -1, -1);
      MEMORY[0x266701350](v23, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v14, v16);
  }

  return 0;
}

void sub_2612AAAA8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v33 = a2;
  v34[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v31 - v12;
  v14 = sub_26129B780();
  sub_26124AA44(v14, v13);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v31[0] = a3;
    v31[1] = v5;
    v32 = a5;
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a1;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "Requesting secure reader blob", v20, 2u);
      v21 = v20;
      a1 = v19;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
    a5 = v32;
  }

  type metadata accessor for Mock();
  if (sub_26129B0F4(37))
  {
    [objc_opt_self() sleepForTimeInterval_];
  }

  v22 = sub_26139EFFC();
  if (a4 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_26139EFFC();
  }

  v34[0] = 0;
  v24 = [a1 generateSecureReaderBlobDataWithTrxBlob:v22 pinBlob:v23 error:v34];

  v25 = v34[0];
  if (v24)
  {
    v26 = sub_26139F01C();
    v28 = v27;

    *a5 = v26;
    a5[1] = v28;
  }

  else
  {
    v29 = v25;
    sub_26139EE7C();

    swift_willThrow();
  }

  v30 = *MEMORY[0x277D85DE8];
}

double sub_2612AAD88(uint64_t a1, uint64_t a2)
{

  sub_2612B3E84(0, v2, a1, a2);
  v6 = v5;

  return v6;
}

void sub_2612AADF0(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v41 = a2;
  v39 = a3;
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = sub_26129B780();
  sub_26124AA44(v12, v11);
  v13 = sub_2613A124C();
  v40 = *(v13 - 8);
  v14 = *(v40 + 48);
  if (v14(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v37 = a1;
    v38 = v9;
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = v3;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "Retrieving SAF session time remaining", v17, 2u);
      MEMORY[0x266701350](v18, -1, -1);
    }

    (*(v40 + 8))(v11, v13);
    a1 = v37;
    v9 = v38;
  }

  v19 = sub_2613A189C();
  v42[0] = 0;
  v20 = [a1 getSAFSessionTimeRemainingWithToken:v19 error:v42];

  if (v20)
  {
    v21 = v42[0];
    sub_2613A1D1C();
    v23 = v22;

    *v39 = v23;
  }

  else
  {
    v24 = v42[0];
    v25 = sub_26139EE7C();

    swift_willThrow();
    sub_26124AA44(v12, v9);
    if (v14(v9, 1, v13) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = v25;
      v27 = v9;
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = v25;
        v32 = swift_slowAlloc();
        *v30 = 138412290;
        v33 = v31;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v34;
        *v32 = v34;
        _os_log_impl(&dword_261243000, v28, v29, "Error happened retrieving SAF session duration [%@]", v30, 0xCu);
        sub_26124C718(v32, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v32, -1, -1);
        MEMORY[0x266701350](v30, -1, -1);
      }

      (*(v40 + 8))(v27, v13);
    }

    swift_willThrow();
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2612AB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - v16;
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v18 = v33;
  sub_2612AEF0C(v34, 0, v42);
  if (!v18)
  {
    return v42[0];
  }

  v19 = sub_26129B780();
  sub_26124AA44(v19, v17);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v23 = v18;
    v24 = sub_2613A122C();
    v25 = sub_2613A1D8C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v26 = 136315138;
      v42[5] = v18;
      v27 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v28 = sub_2613A195C();
      v30 = sub_26124C11C(v28, v29, v42);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_261243000, v24, v25, "Transaction signature error: [ %s ]", v26, 0xCu);
      v31 = v33;
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x266701350](v31, -1, -1);
      MEMORY[0x266701350](v26, -1, -1);
    }

    (*(v21 + 8))(v17, v20);
  }

  return swift_willThrow();
}

void sub_2612AB480(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v56 = a8;
  v60 = a6;
  v61 = a7;
  v58 = a3;
  v59 = a5;
  v62[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v55 = sub_26129B780();
  sub_26124AA44(v55, v17);
  v18 = sub_2613A124C();
  v57 = *(v18 - 8);
  v19 = *(v57 + 48);
  if (v19(v17, 1, v18) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v53 = a2;
    v54 = a4;
    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v52 = a1;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "Requesting to sign SAF transaction", v22, 2u);
      v24 = v23;
      a1 = v52;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v57 + 8))(v17, v18);
  }

  v25 = sub_26139EFFC();
  v26 = sub_26139EFFC();
  v27 = sub_26139F10C();
  v28 = sub_2613A189C();
  v62[0] = 0;
  v29 = [a1 signTransactionWithPaymentCardData:v25 generalCardData:v26 transactionUUID:v27 vtid:v28 error:v62];

  v30 = v62[0];
  if (v29)
  {
    sub_26124AA44(v55, v15);
    v31 = v19(v15, 1, v18);
    v32 = v30;
    if (v31 == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D9C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "Transaction was signed successfully", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v57 + 8))(v15, v18);
    }

    v37 = [v29 signature];
    v38 = sub_26139F01C();
    v40 = v39;

    v41 = [v29 keyId];
    sub_26139F01C();

    v42 = nullsub_1(v38, v40);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = v56;
    *v56 = v42;
    v49[1] = v44;
    v49[2] = v46;
    v49[3] = v48;
  }

  else
  {
    v33 = v62[0];
    sub_26139EE7C();

    swift_willThrow();
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_2612AB8B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  sub_2612AF4AC(v32, 0, v37);
  if (v5)
  {
    v15 = sub_26129B780();
    sub_26124AA44(v15, v14);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v14, 1, v16) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = v5;
      v22 = sub_2613A122C();
      v23 = sub_2613A1D8C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v37[0] = v31;
        *v24 = 136315138;
        v39 = v5;
        v25 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v26 = sub_2613A195C();
        v28 = sub_26124C11C(v26, v27, v37);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_261243000, v22, v23, "Batch signature error: [ %s ]", v24, 0xCu);
        v29 = v31;
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        MEMORY[0x266701350](v29, -1, -1);
        MEMORY[0x266701350](v24, -1, -1);
      }

      (*(v17 + 8))(v14, v16);
    }

    swift_willThrow();
  }

  else
  {
    v19 = v37[1];
    v18 = v37[2];
    v20 = v38;
    *a5 = v37[0];
    *(a5 + 16) = v19;
    *(a5 + 32) = v18;
    *(a5 + 48) = v20;
  }
}

void sub_2612ABB48(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v57 = a3;
  v58 = a4;
  v56 = a5;
  v62 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v55 = sub_26129B780();
  sub_26124AA44(v55, v13);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v53 = a1;
    v54 = a2;
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v52 = v15;
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "Requesting to sign SAF batch", v19, 2u);
      v21 = v20;
      v15 = v52;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v15 + 8))(v13, v14);
    a1 = v53;
    a2 = v54;
  }

  v22 = sub_26139F10C();
  v23 = sub_2613A189C();
  v59 = 0;
  v24 = [a1 signBatchWithBatchId:v22 count:a2 vtid:v23 error:&v59];

  v25 = v59;
  if (v24)
  {
    sub_26124AA44(v55, v11);
    v26 = v16(v11, 1, v14);
    v27 = v25;
    if (v26 == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D9C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "Batch signed successfully", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v15 + 8))(v11, v14);
    }

    v32 = [v24 batchSignature];
    v33 = [v32 signature];

    v34 = sub_26139F01C();
    v36 = v35;

    v37 = [v24 batchSignature];
    v38 = [v37 keyId];

    v39 = sub_26139F01C();
    v41 = v40;

    v42 = [v24 intermediateCertificates];
    v43 = sub_2613A1B7C();

    v44 = [v24 leafCertificate];
    v45 = sub_2613A18CC();
    v47 = v46;

    sub_2612CCBD8(v34, v36, v39, v41, v43, v45, v47, v60);
    v48 = v60[1];
    v49 = v56;
    *v56 = v60[0];
    v49[1] = v48;
    v49[2] = v60[2];
    *(v49 + 6) = v61;
  }

  else
  {
    v28 = v59;
    sub_26139EE7C();

    swift_willThrow();
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2612ABFEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2613A171C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2613A175C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + 8), v14);
  result = sub_26124AAB4(v14);
  if (result)
  {
    v16 = result;
    v27 = *(v2 + 16);
    v17 = swift_allocObject();
    v26 = v8;
    v18 = v17;
    swift_weakInit();
    sub_2612B44CC(a1, v30);
    v19 = swift_allocObject();
    v20 = v30[1];
    *(v19 + 24) = v30[0];
    *(v19 + 16) = v18;
    v25 = v18;
    *(v19 + 40) = v20;
    *(v19 + 56) = v30[2];
    *(v19 + 72) = v16;
    aBlock[4] = sub_2612B4528;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261276D54;
    aBlock[3] = &block_descriptor_3;
    v21 = _Block_copy(aBlock);

    sub_2613A173C();
    v28 = MEMORY[0x277D84F90];
    sub_2612B4550(&qword_27FE9F4B0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
    v24 = v9;
    sub_26127DF9C(&qword_27FE9F4B8, &unk_27FE9F640, &unk_2613AA600);
    v22 = v26;
    sub_2613A203C();
    MEMORY[0x266700290](0, v13, v22, v21);
    _Block_release(v21);
    (*(v5 + 8))(v22, v4);
    (*(v10 + 8))(v13, v24);
  }

  return result;
}

uint64_t sub_2612AC358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = sub_26129B780();
    sub_26124AA44(v11, v9);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    v35 = *(v13 + 48);
    if (v35(v9, 1, v12) == 1)
    {
      v14 = sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = v11;
      sub_2612B44CC(a2, v37);

      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v33 = v13;
        v18 = v17;
        v31 = swift_slowAlloc();
        v38[0] = v31;
        *v18 = 136315394;
        v36 = v37[0];
        v19 = sub_2613A195C();
        v30 = v16;
        v20 = v19;
        v32 = a2;
        v22 = v21;
        sub_2612A0E50(v37);
        v23 = sub_26124C11C(v20, v22, v38);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2080;
        v24 = sub_2613A180C();
        v26 = sub_26124C11C(v24, v25, v38);

        *(v18 + 14) = v26;
        a2 = v32;
        _os_log_impl(&dword_261243000, v15, v30, "Monitor Event Type: [%s] Details: %s", v18, 0x16u);
        v27 = v31;
        swift_arrayDestroy();
        MEMORY[0x266701350](v27, -1, -1);
        v28 = v18;
        v13 = v33;
        MEMORY[0x266701350](v28, -1, -1);
      }

      else
      {

        sub_2612A0E50(v37);
      }

      v14 = (*(v13 + 8))(v9, v12);
    }

    MEMORY[0x28223BE20](v14);
    *&v29[-16] = a2;
    *&v29[-8] = a3;
    sub_2612B0670(&v29[-32], 0);
  }

  return result;
}

uint64_t sub_2612AC860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  isEscapingClosureAtFileLocation = v28 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_2612B44CC(v7, &aBlock);
      v9 = v31;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v10 = sub_26124AAB4(v9);
      if (v10)
      {
        v11 = v10;
        v12 = aBlock;
        sub_2612A0E50(&aBlock);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2612B1DAC(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_2612B1DAC((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        *(v15 + 32) = v12;
        v15[5] = v11;
      }

      else
      {
        sub_2612A0E50(&aBlock);
      }

      v7 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (v8[2])
  {
    v16 = *(v28[1] + 16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_2612B4598;
    *(v19 + 24) = v18;
    v31 = sub_2612B45A0;
    v32 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v30[0] = 1107296256;
    v30[1] = sub_2612AD448;
    v30[2] = &block_descriptor_15;
    v20 = _Block_copy(&aBlock);

    dispatch_sync(v16, v20);
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v22 = sub_26129B780();
  sub_26124AA44(v22, isEscapingClosureAtFileLocation);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(isEscapingClosureAtFileLocation, 1, v23) == 1)
  {
    return sub_26124C718(isEscapingClosureAtFileLocation, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v25 = sub_2613A122C();
  v26 = sub_2613A1D8C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_261243000, v25, v26, "Could not generate the list of monitor events", v27, 2u);
    MEMORY[0x266701350](v27, -1, -1);
  }

  return (*(v24 + 8))(isEscapingClosureAtFileLocation, v23);
}

uint64_t sub_2612ACC48(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;

    sub_2612B0084(0, v6, a2);
  }

  return result;
}

id sub_2612ACEFC(uint64_t a1, void *a2)
{
  v52 = a2;
  v55[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  LOBYTE(v55[0]) = *a1;
  v12 = sub_2613A195C();
  v14 = v13;
  v50 = sub_26129B780();
  sub_26124AA44(v50, v9);
  v15 = sub_2613A124C();
  v51 = *(v15 - 8);
  v16 = *(v51 + 48);
  v53 = v15;
  v49 = v16;
  if ((v16)(v9, 1) == 1)
  {

    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v48 = v7;
      v20 = v19;
      v47 = swift_slowAlloc();
      v55[0] = v47;
      *v20 = 136315394;
      v21 = sub_26124C11C(v12, v14, v55);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      v22 = sub_2613A180C();
      v24 = sub_26124C11C(v22, v23, v55);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_261243000, v17, v18, "Monitor Event Type: [%s] Details: %s", v20, 0x16u);
      v25 = v47;
      swift_arrayDestroy();
      MEMORY[0x266701350](v25, -1, -1);
      v26 = v20;
      v7 = v48;
      MEMORY[0x266701350](v26, -1, -1);
    }

    else
    {
    }

    (*(v51 + 8))(v9, v53);
  }

  v27 = sub_2612B5D04(v10);
  v28 = sub_2613A0C9C();
  v29 = sub_2613A0C3C();
  v30 = sub_2613A17EC();
  v55[0] = 0;
  v31 = [v52 signalWithEvent:v27 component:v28 origin:v29 details:v30 error:v55];

  if (v31)
  {
    result = v55[0];
    v33 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v34 = v55[0];
    v35 = sub_26139EE7C();

    swift_willThrow();
    sub_26124AA44(v50, v7);
    if (v49(v7, 1, v53) == 1)
    {

      result = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = v35;
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v54 = v35;
        v55[0] = v40;
        *v39 = 136315138;
        v41 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v42 = sub_2613A195C();
        v44 = sub_26124C11C(v42, v43, v55);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_261243000, v37, v38, "Could not report monitor event! Error: [%s]", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x266701350](v40, -1, -1);
        MEMORY[0x266701350](v39, -1, -1);
      }

      else
      {
      }

      result = (*(v51 + 8))(v7, v53);
    }

    v45 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_2612AD4B0(void *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v26 - v4;
  v6 = sub_2613A189C();
  v26[0] = 0;
  v7 = [a1 verifyWithPINToken:v6 error:v26];

  if (v7)
  {
    v8 = v26[0];
  }

  else
  {
    v9 = v26[0];
    v10 = sub_26139EE7C();

    swift_willThrow();
    v11 = sub_26129B780();
    sub_26124AA44(v11, v5);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = v10;
      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v10;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_261243000, v15, v16, "PIN token validation failed | error: %@", v17, 0xCu);
        sub_26124C718(v18, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v18, -1, -1);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v13 + 8))(v5, v12);
    }

    _s3__C4CodeOMa_0(0);
    v26[0] = 11004;
    v21 = v10;
    sub_2612B4550(&qword_27FE9F9D0, _s3__C4CodeOMa_0);
    v22 = sub_26139EDAC();

    sub_2612B45EC();
    swift_allocError();
    v24 = 28;
    if (v22)
    {
      v24 = 31;
    }

    *v23 = v24;
    swift_willThrow();
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2612AD800(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  if (*(a2 + 24))
  {
    sub_2612B3E28(a3, v53);
  }

  else
  {
    type metadata accessor for SPRUtils();
    sub_2612B3E28(a3, v53);
    sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
    sub_2612C61EC(sub_2612AFA4C);
    if (v3)
    {
      v52 = a1;
      v4 = 0;
      v22 = sub_26129B780();
      sub_26124AA44(v22, v12);
      v23 = sub_2613A124C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v12, 1, v23) == 1)
      {

        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
        a1 = v52;
      }

      else
      {
        v51 = v23;
        v27 = v3;
        v28 = sub_2613A122C();
        v29 = sub_2613A1D8C();

        v50 = v29;
        v30 = v29;
        v31 = v28;
        if (os_log_type_enabled(v28, v30))
        {
          v32 = swift_slowAlloc();
          v48 = v32;
          v49 = swift_slowAlloc();
          v53[0] = v49;
          *v32 = 136315138;
          v54 = v3;
          v33 = v3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v34 = sub_2613A195C();
          v47 = v31;
          v46 = sub_26124C11C(v34, v35, v53);

          v36 = v48;
          *(v48 + 1) = v46;
          v37 = v36;
          _os_log_impl(&dword_261243000, v31, v50, "Could not make Reader module! Error: [ %s ]", v36, 0xCu);
          v38 = v49;
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          MEMORY[0x266701350](v38, -1, -1);
          MEMORY[0x266701350](v37, -1, -1);
        }

        else
        {
        }

        (*(v24 + 8))(v12, v51);
        a1 = v52;
      }
    }

    else
    {
      v26 = *(a2 + 24);
      *(a2 + 24) = v54;

      v4 = 0;
    }
  }

  v15 = *(a2 + 24);
  if (v15)
  {
    v16 = v15;
    sub_2612A9A2C(v16, a3);
    if (v4)
    {
      _s3__C4CodeOMa_1(0);
      v53[0] = 14001;
      v17 = v4;
      sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
      v18 = sub_26139EDAC();

      if (v18)
      {

        v19 = sub_26129B780();
        sub_26124AA44(v19, v14);
        v20 = sub_2613A124C();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v14, 1, v20) == 1)
        {
          sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v52 = a1;
          v39 = sub_2613A122C();
          v40 = sub_2613A1D8C();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_261243000, v39, v40, "XPC service disconnected, let's try one more time", v41, 2u);
            MEMORY[0x266701350](v41, -1, -1);
          }

          (*(v21 + 8))(v14, v20);
          LOBYTE(a1) = v52;
        }

        v42 = *(a2 + 24);
        *(a2 + 24) = 0;

        if (a1)
        {
          sub_2612B4668();
          swift_allocError();
          *v43 = 1;
          swift_willThrow();
        }

        else
        {
          sub_2612B3E28(a3, v53);
          sub_2612AD800(1, a2, a3);
        }
      }
    }
  }

  else
  {
    sub_2612B4668();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
  }

  sub_2612B47F8(a3);
  return sub_2612B47F8(a3);
}

void sub_2612ADDB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  if (*(a1 + 24))
  {
    v15 = a2;
  }

  else
  {
    type metadata accessor for SPRUtils();
    sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
    v22 = a2;

    v23 = v57;
    sub_2612C61EC(sub_2612AFA4C);
    if (v23)
    {
      v57 = 0;
      v24 = sub_26129B780();
      sub_26124AA44(v24, v12);
      v25 = sub_2613A124C();
      v55 = *(v25 - 8);
      if ((*(v55 + 48))(v12, 1, v25) == 1)
      {

        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v53 = v25;
        v35 = v23;
        v36 = sub_2613A122C();
        v37 = sub_2613A1D8C();
        v54 = v23;

        v52 = v37;
        v38 = v37;
        v39 = v36;
        if (os_log_type_enabled(v36, v38))
        {
          v40 = swift_slowAlloc();
          v50 = v40;
          v51 = swift_slowAlloc();
          aBlock[0] = v51;
          *v40 = 136315138;
          aBlock[7] = v54;
          v41 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v42 = sub_2613A195C();
          v56 = a2;
          v44 = sub_26124C11C(v42, v43, aBlock);
          a2 = v56;

          v45 = v50;
          *(v50 + 1) = v44;
          v46 = v39;
          v47 = v39;
          v48 = v45;
          _os_log_impl(&dword_261243000, v46, v52, "Could not make Reader module! Error: [ %s ]", v45, 0xCu);
          v49 = v51;
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          MEMORY[0x266701350](v49, -1, -1);
          MEMORY[0x266701350](v48, -1, -1);
        }

        else
        {
        }

        (*(v55 + 8))(v12, v53);
      }
    }

    else
    {
      v34 = *(a1 + 24);
      *(a1 + 24) = aBlock[0];

      v57 = 0;
    }
  }

  v16 = *(a1 + 24);
  if (v16)
  {
    v56 = a2;
    v17 = a4;
    v18 = v16;
    v19 = sub_26129B780();
    sub_26124AA44(v19, v14);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = sub_2613A122C();
      v29 = sub_2613A1D9C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_261243000, v28, v29, "Requesting readCard", v30, 2u);
        MEMORY[0x266701350](v30, -1, -1);
      }

      (*(v21 + 8))(v14, v20);
    }

    v31 = swift_allocObject();
    *(v31 + 16) = v17;
    *(v31 + 24) = a3;
    aBlock[4] = sub_2612B47F0;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2612AA2EC;
    aBlock[3] = &block_descriptor_37;
    v32 = _Block_copy(aBlock);

    v33 = v56;
    [v18 readCardWithParameter:v56 delegate:a3 completion:v32];
    _Block_release(v32);
  }

  else
  {
    sub_2612B4668();
    v26 = swift_allocError();
    *v27 = 1;
    v57 = v26;
    swift_willThrow();
  }
}

void sub_2612AE36C(int a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = *(a2 + 24);
  if (v12)
  {
    goto LABEL_2;
  }

  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
  sub_2612C61EC(sub_2612AFA4C);
  if (v2)
  {
    v3 = 0;
    v19 = sub_26129B780();
    sub_26124AA44(v19, v9);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v9, 1, v20) != 1)
    {
      v28 = v2;
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();

      v44 = v30;
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v42 = v31;
        v43 = swift_slowAlloc();
        v47 = v43;
        *v31 = 136315138;
        v46 = v2;
        v32 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v33 = sub_2613A195C();
        v40 = sub_26124C11C(v33, v34, &v47);
        v41 = v29;

        v35 = v42;
        *(v42 + 1) = v40;
        v36 = v29;
        v37 = v35;
        _os_log_impl(&dword_261243000, v36, v44, "Could not make Reader module! Error: [ %s ]", v35, 0xCu);
        v38 = v43;
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x266701350](v38, -1, -1);
        MEMORY[0x266701350](v37, -1, -1);
      }

      else
      {
      }

      (*(v21 + 8))(v9, v20);
      v12 = *(a2 + 24);
      if (v12)
      {
        goto LABEL_2;
      }

LABEL_23:
      sub_2612B4668();
      swift_allocError();
      *v39 = 1;
      swift_willThrow();
      return;
    }

    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = *(a2 + 24);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v22 = *(a2 + 24);
    *(a2 + 24) = v47;

    v3 = 0;
    v12 = *(a2 + 24);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

LABEL_2:
  v13 = v12;
  sub_2612AA5D0(v13);
  if (v3)
  {
    _s3__C4CodeOMa_1(0);
    v47 = 14001;
    v14 = v3;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v15 = sub_26139EDAC();

    if (v15)
    {

      v16 = sub_26129B780();
      sub_26124AA44(v16, v11);
      v17 = sub_2613A124C();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v11, 1, v17) == 1)
      {
        sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v23 = sub_2613A122C();
        v24 = sub_2613A1D8C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_261243000, v23, v24, "XPC service disconnected, let's try one more time", v25, 2u);
          MEMORY[0x266701350](v25, -1, -1);
        }

        (*(v18 + 8))(v11, v17);
      }

      v26 = *(a2 + 24);
      *(a2 + 24) = 0;

      if (v45)
      {
        sub_2612B4668();
        swift_allocError();
        *v27 = 1;
        swift_willThrow();

        return;
      }

      sub_2612AE36C(1, a2);
    }
  }
}

uint64_t sub_2612AE8CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v58 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v59 = &v50 - v20;
  if (*(a2 + 24))
  {
    sub_26124C778(a3, a4);
    sub_26125C348(a5, a6);
  }

  else
  {
    v60 = a7;
    type metadata accessor for SPRUtils();
    sub_26124C778(a3, a4);
    sub_26125C348(a5, a6);
    sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
    sub_2612C61EC(sub_2612AFA4C);
    if (v7)
    {
      v8 = 0;
      v29 = sub_26129B780();
      sub_26124AA44(v29, v19);
      v30 = sub_2613A124C();
      v57 = *(v30 - 8);
      if ((v57[6].isa)(v19, 1, v30) == 1)
      {

        sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
        a7 = v60;
      }

      else
      {
        v55 = a2;
        v56 = v30;
        v33 = v7;
        v34 = sub_2613A122C();
        v35 = sub_2613A1D8C();

        v54 = v35;
        v36 = v35;
        v37 = v34;
        if (os_log_type_enabled(v34, v36))
        {
          v38 = swift_slowAlloc();
          v52 = v38;
          v53 = swift_slowAlloc();
          v62 = v53;
          *v38 = 136315138;
          v61 = v7;
          v39 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v40 = sub_2613A195C();
          v51 = v37;
          v50 = sub_26124C11C(v40, v41, &v62);

          v42 = v52;
          *(v52 + 1) = v50;
          v43 = v42;
          _os_log_impl(&dword_261243000, v37, v54, "Could not make Reader module! Error: [ %s ]", v42, 0xCu);
          v44 = v53;
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          MEMORY[0x266701350](v44, -1, -1);
          MEMORY[0x266701350](v43, -1, -1);
        }

        else
        {
        }

        a7 = v60;
        a2 = v55;
        (v57[1].isa)(v19, v56);
      }
    }

    else
    {
      v32 = *(a2 + 24);
      *(a2 + 24) = v62;

      v8 = 0;
      a7 = v60;
    }
  }

  v21 = *(a2 + 24);
  if (v21)
  {
    v22 = v21;
    sub_2612AAAA8(v22, a3, a4, a6, a7);
    if (v8)
    {
      v60 = a7;
      _s3__C4CodeOMa_1(0);
      v62 = 14001;
      v23 = v8;
      sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
      v24 = sub_26139EDAC();

      if (v24)
      {

        v25 = sub_26129B780();
        v26 = v59;
        sub_26124AA44(v25, v59);
        v27 = sub_2613A124C();
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(v26, 1, v27) == 1)
        {
          sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v45 = sub_2613A122C();
          LODWORD(v56) = sub_2613A1D8C();
          v57 = v45;
          if (os_log_type_enabled(v45, v56))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_261243000, v57, v56, "XPC service disconnected, let's try one more time", v46, 2u);
            MEMORY[0x266701350](v46, -1, -1);
          }

          (*(v28 + 8))(v59, v27);
        }

        v47 = *(a2 + 24);
        *(a2 + 24) = 0;

        if (v58)
        {
          sub_2612B4668();
          swift_allocError();
          *v48 = 1;
          swift_willThrow();
        }

        else
        {
          sub_26124C778(a3, a4);
          sub_26125C348(a5, a6);
          sub_2612AE8CC(1, a2, a3, a4, a5, a6);
        }
      }
    }
  }

  else
  {
    sub_2612B4668();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
  }

  sub_26124C6C4(a3, a4);
  sub_26124A168(a5, a6);
  sub_26124C6C4(a3, a4);
  return sub_26124A168(a5, a6);
}

void sub_2612AEF0C(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = *(v3 + 24);
  if (v17)
  {
    goto LABEL_2;
  }

  v55 = a1;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
  sub_2612C61EC(sub_2612AFA4C);
  if (v4)
  {
    v56 = a2;
    v5 = 0;
    v24 = sub_26129B780();
    sub_26124AA44(v24, v14);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v14, 1, v25) == 1)
    {

      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = a3;
      v35 = v4;
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();

      v53 = v37;
      v38 = v37;
      v39 = v36;
      if (os_log_type_enabled(v36, v38))
      {
        v40 = swift_slowAlloc();
        v51 = v40;
        v52 = swift_slowAlloc();
        v58 = v52;
        *v40 = 136315138;
        v57 = v4;
        v41 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v42 = sub_2613A195C();
        v50 = v39;
        v49 = sub_26124C11C(v42, v43, &v58);

        v44 = v51;
        *(v51 + 1) = v49;
        v45 = v44;
        _os_log_impl(&dword_261243000, v39, v53, "Could not make Reader module! Error: [ %s ]", v44, 0xCu);
        v46 = v52;
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x266701350](v46, -1, -1);
        MEMORY[0x266701350](v45, -1, -1);
      }

      else
      {
      }

      a3 = v54;
      (*(v26 + 8))(v14, v25);
    }

    a1 = v55;
    a2 = v56;
    v17 = *(v6 + 24);
    if (v17)
    {
      goto LABEL_2;
    }

LABEL_23:
    sub_2612B4668();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();
    return;
  }

  v27 = *(v3 + 24);
  *(v3 + 24) = v58;

  v5 = 0;
  a1 = v55;
  v17 = *(v3 + 24);
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_2:
  v18 = v17;
  sub_2612B4484(v18, a3);
  if (v5)
  {
    _s3__C4CodeOMa_1(0);
    v58 = 14001;
    v19 = v5;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v20 = sub_26139EDAC();

    if (v20)
    {
      v56 = a2;

      v21 = sub_26129B780();
      sub_26124AA44(v21, v16);
      v22 = sub_2613A124C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v16, 1, v22) == 1)
      {
        sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v28 = sub_2613A122C();
        v29 = sub_2613A1D8C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v55 = a1;
          v31 = v30;
          *v30 = 0;
          _os_log_impl(&dword_261243000, v28, v29, "XPC service disconnected, let's try one more time", v30, 2u);
          v32 = v31;
          a1 = v55;
          MEMORY[0x266701350](v32, -1, -1);
        }

        (*(v23 + 8))(v16, v22);
      }

      v33 = *(v6 + 24);
      *(v6 + 24) = 0;

      if (v56)
      {
        sub_2612B4668();
        swift_allocError();
        *v34 = 1;
        swift_willThrow();
      }

      else
      {
        sub_2612AEF0C(a1, 1);
      }
    }
  }
}

void sub_2612AF4AC(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = *(v3 + 24);
  if (v17)
  {
    goto LABEL_2;
  }

  v55 = a1;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);
  sub_2612C61EC(sub_2612AFA4C);
  if (v4)
  {
    v56 = a2;
    v5 = 0;
    v24 = sub_26129B780();
    sub_26124AA44(v24, v14);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v14, 1, v25) == 1)
    {

      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = a3;
      v35 = v4;
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();

      v53 = v37;
      v38 = v37;
      v39 = v36;
      if (os_log_type_enabled(v36, v38))
      {
        v40 = swift_slowAlloc();
        v51 = v40;
        v52 = swift_slowAlloc();
        v58 = v52;
        *v40 = 136315138;
        v57 = v4;
        v41 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v42 = sub_2613A195C();
        v50 = v39;
        v49 = sub_26124C11C(v42, v43, &v58);

        v44 = v51;
        *(v51 + 1) = v49;
        v45 = v44;
        _os_log_impl(&dword_261243000, v39, v53, "Could not make Reader module! Error: [ %s ]", v44, 0xCu);
        v46 = v52;
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x266701350](v46, -1, -1);
        MEMORY[0x266701350](v45, -1, -1);
      }

      else
      {
      }

      a3 = v54;
      (*(v26 + 8))(v14, v25);
    }

    a1 = v55;
    a2 = v56;
    v17 = *(v6 + 24);
    if (v17)
    {
      goto LABEL_2;
    }

LABEL_23:
    sub_2612B4668();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();
    return;
  }

  v27 = *(v3 + 24);
  *(v3 + 24) = v58;

  v5 = 0;
  a1 = v55;
  v17 = *(v3 + 24);
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_2:
  v18 = v17;
  sub_2612B44AC(v18, a3);
  if (v5)
  {
    _s3__C4CodeOMa_1(0);
    v58 = 14001;
    v19 = v5;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v20 = sub_26139EDAC();

    if (v20)
    {
      v56 = a2;

      v21 = sub_26129B780();
      sub_26124AA44(v21, v16);
      v22 = sub_2613A124C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v16, 1, v22) == 1)
      {
        sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v28 = sub_2613A122C();
        v29 = sub_2613A1D8C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v55 = a1;
          v31 = v30;
          *v30 = 0;
          _os_log_impl(&dword_261243000, v28, v29, "XPC service disconnected, let's try one more time", v30, 2u);
          v32 = v31;
          a1 = v55;
          MEMORY[0x266701350](v32, -1, -1);
        }

        (*(v23 + 8))(v16, v22);
      }

      v33 = *(v6 + 24);
      *(v6 + 24) = 0;

      if (v56)
      {
        sub_2612B4668();
        swift_allocError();
        *v34 = 1;
        swift_willThrow();
      }

      else
      {
        sub_2612AF4AC(a1, 1);
      }
    }
  }
}

id sub_2612AFA4C@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2612B126C(&selRef_makeReaderAndReturnError_, a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2612AFAA0(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = *(a2 + 32);
  if (v15)
  {
    goto LABEL_2;
  }

  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000);
  sub_2612C61EC(sub_2612B0030);
  if (!v3)
  {
    v25 = *(a2 + 32);
    *(a2 + 32) = v51;

    v4 = 0;
    v15 = *(a2 + 32);
    if (v15)
    {
      goto LABEL_2;
    }

LABEL_24:
    sub_2612B4668();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();
    return a2 & 1;
  }

  v52 = a1;
  v4 = 0;
  v22 = sub_26129B780();
  sub_26124AA44(v22, v12);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v12, 1, v23) == 1)
  {

    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v49 = a3;
    v31 = v3;
    v32 = sub_2613A122C();
    v33 = sub_2613A1D8C();

    v48 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v46 = v34;
      v47 = swift_slowAlloc();
      v50 = v3;
      v51 = v47;
      *v34 = 136315138;
      v35 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v36 = sub_2613A195C();
      v45 = v32;
      v44 = sub_26124C11C(v36, v37, &v51);

      v38 = v46;
      *(v46 + 1) = v44;
      v39 = v38;
      _os_log_impl(&dword_261243000, v32, v48, "Could not make Configurator module! Error: [ %s ]", v38, 0xCu);
      v40 = v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x266701350](v40, -1, -1);
      MEMORY[0x266701350](v39, -1, -1);
    }

    else
    {
    }

    LOBYTE(a3) = v49;
    (*(v24 + 8))(v12, v23);
  }

  a1 = v52;
  v15 = *(a2 + 32);
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_2:
  v16 = v15;
  sub_2612A982C(v16, a3 & 1, &v53);
  if (v4)
  {
    _s3__C4CodeOMa_1(0);
    v51 = 14001;
    v17 = v4;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v18 = sub_26139EDAC();

    if (v18)
    {

      v19 = sub_26129B780();
      sub_26124AA44(v19, v14);
      v20 = sub_2613A124C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v14, 1, v20) == 1)
      {
        sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v52 = a1;
        v26 = sub_2613A122C();
        v27 = sub_2613A1D8C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_261243000, v26, v27, "XPC service disconnected, let's try one more time", v28, 2u);
          MEMORY[0x266701350](v28, -1, -1);
        }

        (*(v21 + 8))(v14, v20);
        LOBYTE(a1) = v52;
      }

      v29 = *(a2 + 32);
      *(a2 + 32) = 0;

      if ((a1 & 1) == 0)
      {
        LOBYTE(a2) = sub_2612AFAA0(1, a2, a3 & 1);

        return a2 & 1;
      }

      sub_2612B4668();
      swift_allocError();
      *v30 = 2;
      swift_willThrow();
    }
  }

  else
  {

    LOBYTE(a2) = v53;
  }

  return a2 & 1;
}

id sub_2612B0030@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2612B126C(&selRef_makeConfiguratorAndReturnError_, a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2612B0084(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = *(a2 + 40);
  if (!v15)
  {
    type metadata accessor for SPRUtils();
    sub_261259BE0(0, &qword_27FE9F9E8, 0x277D64010);

    v25 = v4;
    sub_2612C61EC(sub_2612B0BF4);
    if (v4)
    {
      v55 = a1;
      v4 = 0;
      v26 = sub_26129B780();
      sub_26124AA44(v26, v12);
      v27 = sub_2613A124C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v12, 1, v27) == 1)
      {

        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v54 = v27;
        v35 = v25;
        v36 = sub_2613A122C();
        v37 = sub_2613A1D8C();

        v53 = v37;
        v38 = v37;
        v39 = v36;
        if (os_log_type_enabled(v36, v38))
        {
          v40 = swift_slowAlloc();
          v51 = v40;
          v52 = swift_slowAlloc();
          v56[0] = v52;
          *v40 = 136315138;
          v56[3] = v25;
          v41 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v42 = sub_2613A195C();
          v50 = v39;
          v49 = sub_26124C11C(v42, v43, v56);

          v44 = v51;
          *(v51 + 1) = v49;
          v45 = v44;
          _os_log_impl(&dword_261243000, v39, v53, "Could not make Monitor module! Error: [ %s ]", v44, 0xCu);
          v46 = v52;
          __swift_destroy_boxed_opaque_existential_0Tm(v52);
          MEMORY[0x266701350](v46, -1, -1);
          MEMORY[0x266701350](v45, -1, -1);
        }

        else
        {
        }

        (*(v28 + 8))(v12, v54);
      }

      a1 = v55;
      v15 = *(a2 + 40);
      if (v15)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v29 = *(a2 + 40);
      *(a2 + 40) = v56[0];

      v4 = 0;
      v15 = *(a2 + 40);
      if (v15)
      {
        goto LABEL_3;
      }
    }

    sub_2612B4668();
    swift_allocError();
    *v47 = 3;
    swift_willThrow();
    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_3:
  v16 = *(a3 + 16);
  v17 = v15;
  if (v16)
  {
    v18 = (a3 + 40);
    do
    {
      v19 = *v18;
      LOBYTE(v56[0]) = *(v18 - 8);
      v56[1] = v19;

      sub_2612ACEFC(v56, v17);

      v18 += 2;
      --v16;
    }

    while (v16);
  }

  if (v4)
  {
    _s3__C4CodeOMa_1(0);
    v56[0] = 14001;
    v20 = v4;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v21 = sub_26139EDAC();

    if (v21)
    {
      v55 = a1;

      v22 = sub_26129B780();
      sub_26124AA44(v22, v14);
      v23 = sub_2613A124C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v14, 1, v23) == 1)
      {
        sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v30 = sub_2613A122C();
        v31 = sub_2613A1D8C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_261243000, v30, v31, "XPC service disconnected, let's try one more time", v32, 2u);
          MEMORY[0x266701350](v32, -1, -1);
        }

        (*(v24 + 8))(v14, v23);
      }

      v33 = *(a2 + 40);
      *(a2 + 40) = 0;

      if (v55)
      {
        sub_2612B4668();
        swift_allocError();
        *v34 = 3;
        swift_willThrow();
      }

      else
      {

        sub_2612B0084(1, a2, a3);
      }
    }
  }

  swift_bridgeObjectRelease_n();
}

void sub_2612B0670(uint64_t a1, int a2)
{
  v4 = v3;
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *(v2 + 40);
  if (v15)
  {
    goto LABEL_2;
  }

  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9E8, 0x277D64010);
  sub_2612C61EC(sub_2612B0BF4);
  if (v3)
  {
    v50 = a2;
    v4 = 0;
    v22 = sub_26129B780();
    sub_26124AA44(v22, v12);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {

      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v49 = a1;
      v31 = v3;
      v32 = sub_2613A122C();
      v33 = sub_2613A1D8C();

      v48 = v33;
      v34 = v33;
      v35 = v32;
      if (os_log_type_enabled(v32, v34))
      {
        v36 = swift_slowAlloc();
        v46 = v36;
        v47 = swift_slowAlloc();
        v52 = v47;
        *v36 = 136315138;
        v51 = v3;
        v37 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v38 = sub_2613A195C();
        v45 = v35;
        v44 = sub_26124C11C(v38, v39, &v52);

        v40 = v46;
        *(v46 + 1) = v44;
        v41 = v40;
        _os_log_impl(&dword_261243000, v35, v48, "Could not make Monitor module! Error: [ %s ]", v40, 0xCu);
        v42 = v47;
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        MEMORY[0x266701350](v42, -1, -1);
        MEMORY[0x266701350](v41, -1, -1);
      }

      else
      {
      }

      a1 = v49;
      (*(v24 + 8))(v12, v23);
    }

    a2 = v50;
    v15 = *(v5 + 40);
    if (v15)
    {
      goto LABEL_2;
    }

LABEL_23:
    sub_2612B4668();
    swift_allocError();
    *v43 = 3;
    swift_willThrow();
    return;
  }

  v25 = *(v2 + 40);
  *(v2 + 40) = v52;

  v4 = 0;
  v15 = *(v2 + 40);
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_2:
  v16 = v15;
  sub_2612B46BC(v16);
  if (v4)
  {
    _s3__C4CodeOMa_1(0);
    v52 = 14001;
    v17 = v4;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v18 = sub_26139EDAC();

    if (v18)
    {

      v19 = sub_26129B780();
      sub_26124AA44(v19, v14);
      v20 = sub_2613A124C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v14, 1, v20) == 1)
      {
        sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v50 = a2;
        v26 = sub_2613A122C();
        v27 = sub_2613A1D8C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_261243000, v26, v27, "XPC service disconnected, let's try one more time", v28, 2u);
          MEMORY[0x266701350](v28, -1, -1);
        }

        (*(v21 + 8))(v14, v20);
        LOBYTE(a2) = v50;
      }

      v29 = *(v5 + 40);
      *(v5 + 40) = 0;

      if (a2)
      {
        sub_2612B4668();
        swift_allocError();
        *v30 = 3;
        swift_willThrow();

        return;
      }

      sub_2612B0670(a1, 1);
    }
  }
}

id sub_2612B0BF4@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2612B126C(&selRef_makeMonitorAndReturnError_, a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2612B0C48(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = *(a2 + 48);
  if (v17)
  {

    goto LABEL_13;
  }

  v56 = a3;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9C0, 0x277D64018);

  v18 = v5;
  sub_2612C61EC(sub_2612B1218);
  if (v5)
  {
    v57 = a1;
    v5 = 0;
    v19 = sub_26129B780();
    sub_26124AA44(v19, v14);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {

      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v55 = v20;
      v24 = v18;
      v25 = sub_2613A122C();
      v26 = sub_2613A1D8C();

      v54 = v26;
      v27 = v26;
      v28 = v25;
      if (os_log_type_enabled(v25, v27))
      {
        v29 = swift_slowAlloc();
        v52 = v29;
        v53 = swift_slowAlloc();
        v59 = v53;
        *v29 = 136315138;
        v58 = v18;
        v30 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v31 = sub_2613A195C();
        v51 = v28;
        v50 = sub_26124C11C(v31, v32, &v59);

        v33 = v52;
        *(v52 + 1) = v50;
        v34 = v33;
        _os_log_impl(&dword_261243000, v28, v54, "Could not make PIN Controller module! Error: [ %s ]", v33, 0xCu);
        v35 = v53;
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x266701350](v35, -1, -1);
        MEMORY[0x266701350](v34, -1, -1);
      }

      else
      {
      }

      (*(v21 + 8))(v14, v55);
    }

    a3 = v56;
    a1 = v57;
    v17 = *(a2 + 48);
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_7:
    sub_2612B45EC();
    swift_allocError();
    *v23 = 26;
    swift_willThrow();
    swift_bridgeObjectRelease_n();
    return;
  }

  v22 = *(a2 + 48);
  *(a2 + 48) = v59;

  v5 = 0;
  a3 = v56;
  v17 = *(a2 + 48);
  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_13:
  v36 = v17;
  sub_2612AD4B0(v36);
  if (v5)
  {
    _s3__C4CodeOMa_1(0);
    v59 = 14001;
    v37 = v5;
    sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
    v38 = sub_26139EDAC();

    if (v38)
    {
      v57 = a1;

      v39 = sub_26129B780();
      sub_26124AA44(v39, v16);
      v40 = sub_2613A124C();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v16, 1, v40) == 1)
      {
        sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v42 = sub_2613A122C();
        v43 = sub_2613A1D8C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v56 = a3;
          v45 = v44;
          *v44 = 0;
          _os_log_impl(&dword_261243000, v42, v43, "XPC service disconnected, let's try one more time", v44, 2u);
          v46 = v45;
          a3 = v56;
          MEMORY[0x266701350](v46, -1, -1);
        }

        (*(v41 + 8))(v16, v40);
      }

      v47 = *(a2 + 48);
      *(a2 + 48) = 0;

      if (v57)
      {
        sub_2612B45EC();
        swift_allocError();
        *v48 = 26;
        swift_willThrow();
      }

      else
      {

        sub_2612B0C48(1, a2, a3, a4);
      }
    }
  }

  swift_bridgeObjectRelease_n();
}

id sub_2612B1218@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2612B126C(&selRef_makePINControllerAndReturnError_, a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2612B126C@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() shared];
  v10[0] = 0;
  v5 = [v4 *a1];

  v6 = v10[0];
  if (v5)
  {
    *a2 = v5;
    result = v6;
  }

  else
  {
    v8 = v10[0];
    sub_26139EE7C();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2612B1354()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2612B13AC()
{
  v0 = swift_allocObject();
  sub_2612B13E4();
  return v0;
}

uint64_t sub_2612B13E4()
{
  v1 = sub_2613A1DDC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_2613A175C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2613A1E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_261259BE0(0, &qword_281451968, 0x277D85C78);
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  sub_2613A173C();
  v11[1] = MEMORY[0x277D84F90];
  sub_2612B4550(&qword_281451970, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  *(v0 + 16) = sub_2613A1E2C();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return v0;
}

uint64_t sub_2612B1654(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612B16C0(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612B172C(void *a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612B17BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612B1838(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2612B18A4(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2612B1910(void *a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2612B19A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2612B1A1C(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA80, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612B1A88(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA80, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612B1AF4(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612B1B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612B4550(&qword_27FE9FA78, type metadata accessor for SPRXPCError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2612B1BE4(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA40, type metadata accessor for PINControllerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2612B1C50(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA40, type metadata accessor for PINControllerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2612B1CBC(uint64_t a1)
{
  v2 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2612B1D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2612B4550(&qword_27FE9FA38, type metadata accessor for PINControllerError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

void *sub_2612B1DAC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F9D8, "Vs");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F9E0, "xs");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2612B1EE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = *(a2 + 32);
  if (v18)
  {
  }

  else
  {
    v57 = a3;
    type metadata accessor for SPRUtils();
    sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000);

    v19 = v6;
    sub_2612C61EC(sub_2612B0030);
    if (v6)
    {
      v56 = a5;
      v6 = 0;
      v20 = sub_26129B780();
      sub_26124AA44(v20, v15);
      v21 = sub_2613A124C();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v15, 1, v21) == 1)
      {

        sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v55 = v21;
        v24 = v19;
        v25 = sub_2613A122C();
        v26 = sub_2613A1D8C();

        v54 = v26;
        v27 = v26;
        v28 = v25;
        if (os_log_type_enabled(v25, v27))
        {
          v29 = swift_slowAlloc();
          v52 = v29;
          v53 = swift_slowAlloc();
          v59 = v19;
          v60 = v53;
          *v29 = 136315138;
          v30 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
          v31 = sub_2613A195C();
          v51 = v28;
          v50 = sub_26124C11C(v31, v32, &v60);

          v33 = v52;
          *(v52 + 1) = v50;
          v34 = v33;
          _os_log_impl(&dword_261243000, v28, v54, "Could not make Configurator module! Error: [ %s ]", v33, 0xCu);
          v35 = v53;
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          MEMORY[0x266701350](v35, -1, -1);
          MEMORY[0x266701350](v34, -1, -1);
        }

        else
        {
        }

        (*(v22 + 8))(v15, v55);
      }

      a5 = v56;
    }

    else
    {
      v23 = *(a2 + 32);
      *(a2 + 32) = v60;

      v6 = 0;
    }

    a3 = v57;
    v18 = *(a2 + 32);
    if (!v18)
    {
      sub_2612B4668();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();

      return;
    }
  }

  v36 = v18;
  sub_2612A8A58(v36, a5, &v61);
  if (!v6)
  {
    goto LABEL_24;
  }

  _s3__C4CodeOMa_1(0);
  v60 = 14001;
  v37 = v6;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
  v38 = sub_26139EDAC();

  if ((v38 & 1) == 0)
  {
    goto LABEL_24;
  }

  v56 = a5;

  v39 = sub_26129B780();
  sub_26124AA44(v39, v17);
  v40 = sub_2613A124C();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v17, 1, v40) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v57 = a3;
    v43 = sub_2613A122C();
    v44 = sub_2613A1D8C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_261243000, v43, v44, "XPC service disconnected, let's try one more time", v45, 2u);
      MEMORY[0x266701350](v45, -1, -1);
    }

    (*(v41 + 8))(v17, v40);
    a3 = v57;
  }

  v46 = *(a2 + 32);
  *(a2 + 32) = 0;

  v47 = v56;
  if (v58)
  {
    sub_2612B4668();
    swift_allocError();
    *v48 = 2;
    swift_willThrow();
LABEL_24:

    return;
  }

  sub_2612B1EE0(1, a2, a3, a4, v47);

  swift_bridgeObjectRelease_n();
}

NSObject *sub_2612B24E0(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, id a7, Class a8)
{
  v10 = v9;
  v107 = a6;
  v103 = a4;
  v98 = a1;
  v110[1] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v104 = &v92 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v108 = &v92 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v92 - v25;
  if (*(a2 + 32))
  {

    v27 = *(a2 + 32);
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_47:
    sub_2612B4668();
    swift_allocError();
    *v89 = 2;
    swift_willThrow();

    goto LABEL_48;
  }

  v106 = a7;
  v8 = type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000);

  sub_2612C61EC(sub_2612B0030);
  if (v9)
  {
    v94 = 0;
    v95 = a5;
    v33 = sub_26129B780();
    sub_26124AA44(v33, v20);
    v34 = sub_2613A124C();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v20, 1, v34) == 1)
    {

      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v105 = a3;
      v71 = v9;
      v72 = sub_2613A122C();
      v73 = sub_2613A1D8C();

      LODWORD(v102) = v73;
      v74 = v73;
      v8 = v72;
      if (os_log_type_enabled(v72, v74))
      {
        v75 = swift_slowAlloc();
        v101 = v75;
        v100 = swift_slowAlloc();
        v109 = v9;
        v110[0] = v100;
        *v75 = 136315138;
        v76 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v77 = sub_2613A195C();
        v79 = sub_26124C11C(v77, v78, v110);
        v97 = v8;
        v99 = a8;
        v80 = v79;
        a3 = v105;

        v81 = v101;
        *(v101 + 1) = v80;
        a8 = v99;
        _os_log_impl(&dword_261243000, v8, v102, "Could not make Configurator module! Error: [ %s ]", v81, 0xCu);
        v8 = v100;
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        MEMORY[0x266701350](v8, -1, -1);
        MEMORY[0x266701350](v101, -1, -1);
      }

      else
      {

        a3 = v105;
      }

      (*(v35 + 8))(v20, v34);
    }

    v10 = v94;
    a5 = v95;
  }

  else
  {
    v63 = *(a2 + 32);
    *(a2 + 32) = v110[0];

    v10 = 0;
  }

  a7 = v106;
  v27 = *(a2 + 32);
  if (!v27)
  {
    goto LABEL_47;
  }

LABEL_3:
  v28 = v27;
  v102 = sub_26129B780();
  sub_26124AA44(v102, v26);
  v29 = sub_2613A124C();
  isa = v29[-1].isa;
  v31 = *(isa + 6);
  v101 = (isa + 48);
  v99 = isa;
  v100 = v31;
  v32 = (v31)(v26, 1, v29);
  v96 = a2;
  v106 = v28;
  if (v32 == 1)
  {
    sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v97 = v29;
    v36 = sub_2613A122C();
    v37 = sub_2613A1D9C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v94 = v10;
      v39 = v38;
      v40 = swift_slowAlloc();
      v95 = a5;
      v93 = v40;
      v110[0] = v40;
      *v39 = 136315138;
      if (a3)
      {
        v41 = 4604243;
      }

      else
      {
        v41 = 0x656E696C6E6FLL;
      }

      if (a3)
      {
        v42 = 0xE300000000000000;
      }

      else
      {
        v42 = 0xE600000000000000;
      }

      v43 = a3;
      v44 = a7;
      v45 = a8;
      v46 = sub_26124C11C(v41, v42, v110);

      *(v39 + 4) = v46;
      a8 = v45;
      a7 = v44;
      a3 = v43;
      _os_log_impl(&dword_261243000, v36, v37, "Requesting %s prepare", v39, 0xCu);
      v47 = v93;
      __swift_destroy_boxed_opaque_existential_0Tm(v93);
      a5 = v95;
      MEMORY[0x266701350](v47, -1, -1);
      MEMORY[0x266701350](v39, -1, -1);
    }

    v29 = v97;
    (*(v99 + 1))(v26, v97);
  }

  type metadata accessor for Mock();
  v48 = sub_26129B284(41);
  v105 = a3;
  if (v48)
  {
    v49 = sub_26129B284(41);
    v50 = v108;
    sub_26124AA44(v102, v108);
    if ((v100)(v50, 1, v29) == 1)
    {
      sub_26124C718(v50, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v52 = v29;
      v53 = sub_2613A122C();
      v54 = sub_2613A1D9C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = v49;
        _os_log_impl(&dword_261243000, v53, v54, "mockSPRConfigError = %ld", v55, 0xCu);
        MEMORY[0x266701350](v55, -1, -1);
      }

      v29 = v52;
      (*(v99 + 1))(v50, v52);
    }

    v56 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v57 = sub_2613A189C();
    v58 = [v56 initWithDomain:v57 code:v49 userInfo:0];
  }

  else
  {
    v97 = v29;
    if (a5)
    {
      v51 = sub_2613A189C();
    }

    else
    {
      v51 = 0;
    }

    v82 = sub_2613A189C();
    v110[0] = 0;
    v83 = a7;
    v84 = v106;
    v85 = [v106 prepareAndWarnWithToken:v51 force:v107 & 1 enableStoreAndForward:v105 & 1 vtid:v82 error:v110];

    v86 = v110[0];
    if (v85)
    {
      v87 = sub_2613A17FC();
      v88 = v86;

      v8 = sub_2612E2690(v87);

      goto LABEL_48;
    }

    v57 = v110[0];
    v58 = sub_26139EE7C();
    a7 = v83;
    v29 = v97;
  }

  swift_willThrow();
  _s3__C4CodeOMa_1(0);
  v8 = v59;
  v110[0] = 14001;
  v60 = v58;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
  v61 = sub_26139EDAC();

  if (v61)
  {

    v62 = v104;
    sub_26124AA44(v102, v104);
    if ((v100)(v62, 1, v29) == 1)
    {
      sub_26124C718(v62, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v8 = sub_2613A122C();
      v64 = sub_2613A1D8C();
      if (os_log_type_enabled(v8, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_261243000, v8, v64, "XPC service disconnected, let's try one more time", v65, 2u);
        v66 = v65;
        v62 = v104;
        MEMORY[0x266701350](v66, -1, -1);
      }

      (*(v99 + 1))(v62, v29);
    }

    v67 = v96;
    v68 = *(v96 + 32);
    *(v96 + 32) = 0;

    v69 = v105;
    if ((v98 & 1) == 0)
    {

      v8 = sub_2612B24E0(1, v67, v69 & 1, v103, a5, v107 & 1, a7, a8);

      swift_bridgeObjectRelease_n();

      goto LABEL_48;
    }

    sub_2612B4668();
    swift_allocError();
    *v70 = 2;
    swift_willThrow();
  }

LABEL_48:

  v90 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2612B2FA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 345) = a5;
  *(v8 + 192) = a4;
  *(v8 + 200) = a6;
  *(v8 + 176) = a2;
  *(v8 + 184) = a3;
  *(v8 + 344) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2612B3098);
}

uint64_t sub_2612B3098()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 32);
  if (v2 || (type metadata accessor for SPRUtils(), sub_261259BE0(0, &qword_27FE9FA10, 0x277D64000), sub_2612C61EC(sub_2612B4EBC), v3 = *(v1 + 32), *(v1 + 32) = *(v0 + 144), v3, (v2 = *(v1 + 32)) != 0))
  {
    *(v0 + 248) = v2;
    v4 = *(v0 + 240);
    v5 = v2;
    v6 = sub_26129B780();
    *(v0 + 256) = v6;
    sub_26124AA44(v6, v4);
    v7 = sub_2613A124C();
    *(v0 + 264) = v7;
    v8 = *(v7 - 8);
    *(v0 + 272) = v8;
    v9 = *(v8 + 48);
    *(v0 + 280) = v9;
    *(v0 + 288) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v9(v4, 1, v7) == 1)
    {
      sub_26124C718(*(v0 + 240), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v10 = *(v0 + 240);
      v11 = sub_2613A122C();
      v12 = sub_2613A1D9C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_261243000, v11, v12, "Requesting install", v13, 2u);
        MEMORY[0x266701350](v13, -1, -1);
      }

      v14 = *(v0 + 240);

      (*(v8 + 8))(v14, v7);
    }

    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);
    v19 = *(v0 + 345);
    v20 = *(v0 + 184);
    v21 = sub_2613A189C();
    *(v0 + 296) = v21;
    v22 = sub_2613A189C();
    *(v0 + 304) = v22;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_2612B3634;
    v23 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FA18, &qword_2613A7AD8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2612A94EC;
    *(v0 + 104) = &block_descriptor_40;
    *(v0 + 112) = v23;
    [v5 installWithToken:v21 launchSEStorageSheet:v19 seStorageSheetBundleID:v22 seStorageSheetSceneID:0 delegate:v15 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v24 = *(v0 + 208);
    v25 = *(v0 + 192);
    sub_2612B4668();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();

    v27 = *(v0 + 232);
    v28 = *(v0 + 240);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_2612B3634()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_2612B380C;
  }

  else
  {
    v3 = sub_2612B3744;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2612B3744()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 152);

  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 192);

  v10 = *(v0 + 8);

  return v10(v2);
}

uint64_t sub_2612B380C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  swift_willThrow();

  _s3__C4CodeOMa_1(0);
  *(v0 + 160) = 14001;
  v4 = v2;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
  LOBYTE(v1) = sub_26139EDAC();

  if ((v1 & 1) == 0)
  {
    v10 = *(v0 + 248);
    v11 = *(v0 + 208);
    v12 = *(v0 + 192);

    v13 = *(v0 + 312);
LABEL_10:
    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);

    v32 = *(v0 + 8);

    return v32();
  }

  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 232);

  sub_26124AA44(v8, v9);
  if (v6(v9, 1, v7) == 1)
  {
    sub_26124C718(*(v0 + 232), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = *(v0 + 232);
    v15 = sub_2613A122C();
    v16 = sub_2613A1D8C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "XPC service disconnected, let's try one more time", v17, 2u);
      MEMORY[0x266701350](v17, -1, -1);
    }

    v18 = *(v0 + 264);
    v19 = *(v0 + 272);
    v20 = *(v0 + 232);

    (*(v19 + 8))(v20, v18);
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 344);
  v23 = *(v21 + 32);
  *(v21 + 32) = 0;

  v24 = *(v0 + 208);
  v25 = *(v0 + 192);
  if (v22 == 1)
  {
    v26 = *(v0 + 248);
    sub_2612B4668();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  v34 = *(v0 + 216);
  v35 = *(v0 + 192);

  v36 = swift_task_alloc();
  *(v0 + 320) = v36;
  *v36 = v0;
  v36[1] = sub_2612B3B4C;
  v37 = *(v0 + 208);
  v38 = *(v0 + 216);
  v39 = *(v0 + 345);
  v40 = *(v0 + 192);
  v41 = *(v0 + 200);
  v42 = *(v0 + 176);
  v43 = *(v0 + 184);

  return sub_2612B2FA4(1, v42, v43, v40, v39, v41, v37, v38);
}

uint64_t sub_2612B3B4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  v4[41] = v1;

  v7 = v4[27];
  v8 = v4[26];
  v9 = v4[24];

  if (v1)
  {
    v10 = sub_2612B3D84;
  }

  else
  {
    v4[42] = a1;
    v10 = sub_2612B3CC8;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2612B3CC8()
{
  v1 = v0[42];
  v2 = v0[30];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[24];

  v9 = v0[1];

  return v9(v1);
}

uint64_t sub_2612B3D84()
{
  v1 = v0[31];
  v2 = v0[26];
  v3 = v0[24];

  v4 = v0[41];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[27];
  v8 = v0[28];

  v9 = v0[1];

  return v9();
}

void sub_2612B3E84(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = *(a2 + 24);
  if (v17)
  {

    goto LABEL_3;
  }

  v56 = a3;
  type metadata accessor for SPRUtils();
  sub_261259BE0(0, &qword_27FE9F9F8, 0x277D64038);

  v24 = v5;
  sub_2612C61EC(sub_2612AFA4C);
  if (v5)
  {
    v57 = a1;
    v5 = 0;
    v25 = sub_26129B780();
    sub_26124AA44(v25, v14);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {

      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v55 = v26;
      v36 = v24;
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();

      v54 = v38;
      v39 = v38;
      v40 = v37;
      if (os_log_type_enabled(v37, v39))
      {
        v41 = swift_slowAlloc();
        v52 = v41;
        v53 = swift_slowAlloc();
        v58 = v24;
        v59 = v53;
        *v41 = 136315138;
        v42 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v43 = sub_2613A195C();
        v51 = v40;
        v50 = sub_26124C11C(v43, v44, &v59);

        v45 = v52;
        *(v52 + 1) = v50;
        v46 = v45;
        _os_log_impl(&dword_261243000, v40, v54, "Could not make Reader module! Error: [ %s ]", v45, 0xCu);
        v47 = v53;
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        MEMORY[0x266701350](v47, -1, -1);
        MEMORY[0x266701350](v46, -1, -1);
      }

      else
      {
      }

      (*(v27 + 8))(v14, v55);
    }

    a3 = v56;
    a1 = v57;
    v17 = *(a2 + 24);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_25:
    sub_2612B4668();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();

    return;
  }

  v28 = *(a2 + 24);
  *(a2 + 24) = v59;

  v5 = 0;
  a3 = v56;
  v17 = *(a2 + 24);
  if (!v17)
  {
    goto LABEL_25;
  }

LABEL_3:
  v18 = v17;
  sub_2612AADF0(v18, a4, &v60);
  if (!v5)
  {
    goto LABEL_18;
  }

  _s3__C4CodeOMa_1(0);
  v59 = 14001;
  v19 = v5;
  sub_2612B4550(&qword_27FE9F9C8, _s3__C4CodeOMa_1);
  v20 = sub_26139EDAC();

  if ((v20 & 1) == 0)
  {
    goto LABEL_18;
  }

  v57 = a1;

  v21 = sub_26129B780();
  sub_26124AA44(v21, v16);
  v22 = sub_2613A124C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v16, 1, v22) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v29 = sub_2613A122C();
    v30 = sub_2613A1D8C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v56 = a3;
      v32 = v31;
      *v31 = 0;
      _os_log_impl(&dword_261243000, v29, v30, "XPC service disconnected, let's try one more time", v31, 2u);
      v33 = v32;
      a3 = v56;
      MEMORY[0x266701350](v33, -1, -1);
    }

    (*(v23 + 8))(v16, v22);
  }

  v34 = *(a2 + 24);
  *(a2 + 24) = 0;

  if (v57)
  {
    sub_2612B4668();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
LABEL_18:

    return;
  }

  sub_2612B3E84(1, a2, a3, a4);

  swift_bridgeObjectRelease_n();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2612B4550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2612B45A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2612B45EC()
{
  result = qword_27FEA0680;
  if (!qword_27FEA0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0680);
  }

  return result;
}

unint64_t sub_2612B4668()
{
  result = qword_27FE9F9F0;
  if (!qword_27FE9F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F9F0);
  }

  return result;
}

id sub_2612B46BC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_2612B5D04(*v3);
  v6 = sub_2613A0C9C();
  v7 = sub_2613A0C3C();
  v8 = sub_2613A17EC();
  v11 = 0;
  LODWORD(a1) = [a1 signalWithEvent:v5 component:v6 origin:v7 details:v8 error:&v11];

  if (a1)
  {
    return v11;
  }

  v10 = v11;
  sub_26139EE7C();

  return swift_willThrow();
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

id sub_2612B484C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v6 = 0;
  if ([v2 validateWithReadParameters:v3 error:&v6])
  {
    return v6;
  }

  v5 = v6;
  sub_26139EE7C();

  return swift_willThrow();
}

void sub_2612B48CC(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

unint64_t sub_2612B48D8()
{
  result = qword_27FE9FA08;
  if (!qword_27FE9FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FA08);
  }

  return result;
}

id sub_2612B4EBC@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  result = sub_2612B0030(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2612B4F1C()
{
  type metadata accessor for TaskManager();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_27FEAEDF8 = v0;
  return result;
}

double sub_2612B4F54()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t *sub_2612B4F84()
{
  if (qword_27FEA6EC0 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEDF8;
}

uint64_t sub_2612B502C(uint64_t a1)
{
  swift_beginAccess();
  sub_2612B59B0(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_2612B507C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v24[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24[-1] - v10;
  (*(*v1 + 88))(v24, v9);
  v12 = v24[3];
  sub_26124C718(v24, &qword_27FE9FAC0, &qword_2613A7F30);
  if (v12)
  {
    v13 = sub_26129B7C4();
    sub_26125A870(v13, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v11, 1, v14) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v19 = sub_2613A122C();
      v20 = sub_2613A1D8C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "TaskManager is busy", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      (*(v15 + 8))(v11, v14);
    }

    sub_2612B4668();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_2612B5A20(a1, v24);
    (*(*v1 + 96))(v24);
    v16 = sub_2613A1C1C();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v1;

    sub_261266800(0, 0, v6, &unk_2613A7F40, v17);
  }
}

uint64_t sub_2612B53D0()
{
  v12 = v0;
  (*(**(v0 + 96) + 88))();
  if (*(v0 + 40))
  {
    sub_2612B5A20(v0 + 16, v0 + 56);
    sub_26124C718(v0 + 16, &qword_27FE9FAC0, &qword_2613A7F30);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
    v3 = *(v2 + 8);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_2612B55D0;

    return v9(v1, v2);
  }

  else
  {
    sub_26124C718(v0 + 16, &qword_27FE9FAC0, &qword_2613A7F30);
    v7 = *(v0 + 96);
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    (*(*v7 + 96))(v10);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2612B55D0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2612B56CC);
}

uint64_t sub_2612B56CC()
{
  v6 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  (*(*v1 + 96))(v4);
  v2 = v0[1];

  return v2();
}

BOOL sub_2612B5764()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v15[-1] - v4;
  (*(*v0 + 88))(v15, v3);
  v6 = v15[3];
  sub_26124C718(v15, &qword_27FE9FAC0, &qword_2613A7F30);
  v7 = sub_26129B7C4();
  sub_26125A870(v7, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v8 = sub_2613A124C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = v6 != 0;
      _os_log_impl(&dword_261243000, v10, v11, "checking TaskManager busy: %{BOOL,public}d", v12, 8u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v9 + 8))(v5, v8);
  }

  return v6 != 0;
}

uint64_t sub_2612B5968()
{
  sub_26124C718(v0 + 16, &qword_27FE9FAC0, &qword_2613A7F30);

  return swift_deallocClassInstance();
}

uint64_t sub_2612B59B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FAC0, &qword_2613A7F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2612B5A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2612B5A84()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_2612B53B0(v3, v4, v5, v2);
}

unint64_t sub_2612B5B1C()
{
  result = qword_27FE9FAC8;
  if (!qword_27FE9FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9FAC8);
  }

  return result;
}

uint64_t type metadata accessor for ReadErrorEventData()
{
  result = qword_27FEA7E50;
  if (!qword_27FEA7E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2612B5BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = sub_2612BC780(a3, a4, a5);
  *(a6 + 24) = v11;
  *(a6 + 32) = sub_2612CABB0(a3, a4);
  *(a6 + 40) = v12;
  *(a6 + 48) = v10 < 0x40;
  v13 = a6 + *(type metadata accessor for ReadErrorEventData() + 36);

  return sub_2612BCC94(a5, v13);
}

uint64_t sub_2612B5C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = sub_26139FACC();
  *(a5 + 24) = v8;
  *(a5 + 32) = sub_26139FACC();
  *(a5 + 40) = v9;
  *(a5 + 48) = a3 == 10;
  v10 = a5 + *(type metadata accessor for ReadErrorEventData() + 36);

  return sub_2612BCC94(a4, v10);
}

uint64_t sub_2612B5D10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v5 = 0x4972656E74726170;
    if (a1 != 2)
    {
      v5 = 0x496E6F6973736573;
    }

    v6 = 0xD000000000000011;
    v7 = 0x80000002613B7F90;
    if (a1)
    {
      v6 = 0x746E61686372656DLL;
      v7 = 0xEA00000000006449;
    }

    if (a1 <= 1u)
    {
      v3 = v6;
    }

    else
    {
      v3 = v5;
    }

    if (v2 <= 1)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0xE900000000000064;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v3 = 0x746361736E617274;
      v4 = 0xED000064496E6F69;
    }

    else
    {
      v3 = 0xD000000000000011;
      v4 = 0x80000002613B7EB0;
    }
  }

  else if (a1 == 6)
  {
    v3 = 0x5474736575716572;
    v4 = 0xEB00000000657079;
  }

  else if (a1 == 7)
  {
    v3 = 0x646F4D7972746E65;
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x6E6F73616572;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v10 = 0x4972656E74726170;
      }

      else
      {
        v10 = 0x496E6F6973736573;
      }

      v8 = 0xE900000000000064;
      if (v3 != v10)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a2)
      {
        v9 = 0x746E61686372656DLL;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (a2)
      {
        v8 = 0xEA00000000006449;
      }

      else
      {
        v8 = 0x80000002613B7F90;
      }

      if (v3 != v9)
      {
        goto LABEL_51;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v8 = 0xED000064496E6F69;
      if (v3 != 0x746361736E617274)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v8 = 0x80000002613B7EB0;
      if (v3 != 0xD000000000000011)
      {
LABEL_51:
        v11 = sub_2613A241C();
        goto LABEL_52;
      }
    }
  }

  else if (a2 == 6)
  {
    v8 = 0xEB00000000657079;
    if (v3 != 0x5474736575716572)
    {
      goto LABEL_51;
    }
  }

  else if (a2 == 7)
  {
    v8 = 0xE900000000000065;
    if (v3 != 0x646F4D7972746E65)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    if (v3 != 0x6E6F73616572)
    {
      goto LABEL_51;
    }
  }

  if (v4 != v8)
  {
    goto LABEL_51;
  }

  v11 = 1;
LABEL_52:

  return v11 & 1;
}

uint64_t sub_2612B600C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656B63;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D6F4349556E6970;
    }

    else
    {
      v4 = 0x61745349556E6970;
    }

    if (v3)
    {
      v5 = 0xEE00646574656C70;
    }

    else
    {
      v5 = 0xEC00000064657472;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6E614349556E6970;
    v5 = 0xED000064656C6563;
  }

  else if (a1 == 3)
  {
    v4 = 0x69614649556E6970;
    v5 = 0xEB0000000064656CLL;
  }

  else
  {
    v4 = 0x6F6C4249556E6970;
    v5 = 0xEC00000064656B63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D6F4349556E6970;
    }

    else
    {
      v9 = 0x61745349556E6970;
    }

    if (a2)
    {
      v8 = 0xEE00646574656C70;
    }

    else
    {
      v8 = 0xEC00000064657472;
    }

    if (v4 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x69614649556E6970;
    if (a2 == 3)
    {
      v2 = 0xEB0000000064656CLL;
    }

    else
    {
      v6 = 0x6F6C4249556E6970;
    }

    if (a2 == 2)
    {
      v7 = 0x6E614349556E6970;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xED000064656C6563;
    }

    else
    {
      v8 = v2;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v8)
  {
LABEL_34:
    v10 = sub_2613A241C();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

uint64_t sub_2612B61E0()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A259C();
  return sub_2613A25CC();
}

uint64_t sub_2612B6258()
{
  sub_2613A19DC();
}

uint64_t sub_2612B63D4()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A259C();
  return sub_2613A25CC();
}

uint64_t sub_2612B6418@<X0>(__int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2612BCD04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2612B64D4(uint64_t a1)
{
  v2 = sub_2612BCD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6510(uint64_t a1)
{
  v2 = sub_2612BCD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B6590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2613A241C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2612B6624(uint64_t a1)
{
  v2 = sub_2612BCD70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6660(uint64_t a1)
{
  v2 = sub_2612BCD70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B66E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_2613A262C();
  sub_2613A238C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2612B6828(uint64_t a1)
{
  v2 = sub_2612BCDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6864(uint64_t a1)
{
  v2 = sub_2612BCDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B68E4(uint64_t a1)
{
  v2 = sub_2612BCE18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6920(uint64_t a1)
{
  v2 = sub_2612BCE18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B695C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_2612B69B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v73 = a7;
  v70 = a2;
  v71 = a6;
  v68 = a5;
  v69 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v56 - v13;
  v15 = sub_26139F13C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3[7];
  v66 = a3[6];
  v21 = *(*a3 + 192);
  v67 = v20;

  v23 = v21(v22);
  v64 = v24;
  v65 = v23;
  v25 = *(a4 + 16);
  v26 = sub_26139FD0C();
  v27 = [v26 description];
  v28 = sub_2613A18CC();
  v62 = v29;
  v63 = v28;

  v72 = a4;
  v30 = *(a4 + 16);
  sub_26139FC8C();
  v31 = sub_26139FF4C();
  v60 = v32;
  v61 = v31;
  if (!v73)
  {
    v34 = a3[15];
    v33 = a3[16];
    goto LABEL_5;
  }

  v33 = a3[18];
  if (v33)
  {
    v34 = a3[17];
LABEL_5:
    v59 = v34;
    v58 = v33;
    goto LABEL_7;
  }

  v35 = sub_2613A0CFC();
  v58 = v36;
  v59 = v35;
LABEL_7:
  v37 = v68;

  v38 = *(v72 + 16);
  sub_26139FCEC();
  v68 = sub_26139F0FC();
  v57 = v39;
  v40 = *(v16 + 8);
  v40(v19, v15);
  sub_26125A870(v37, v14, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F280, &unk_2613A42B0);
    v41 = sub_2613A0CFC();
    v43 = v42;
  }

  else
  {
    v41 = sub_26139F0DC();
    v43 = v44;
    v40(v14, v15);
  }

  v45 = v73;
  v46 = v71;
  if (!v73)
  {
    v46 = sub_2613A0CFC();
    v45 = v47;
  }

  result = sub_26124C718(v37, &qword_27FE9F280, &unk_2613A42B0);
  v49 = v70;
  *a8 = v69;
  a8[1] = v49;
  v50 = v67;
  a8[2] = v66;
  a8[3] = v50;
  v51 = v64;
  a8[4] = v65;
  a8[5] = v51;
  v52 = v62;
  a8[6] = v63;
  a8[7] = v52;
  v53 = v60;
  a8[8] = v61;
  a8[9] = v53;
  v54 = v58;
  a8[10] = v59;
  a8[11] = v54;
  v55 = v57;
  a8[12] = v68;
  a8[13] = v55;
  a8[14] = v41;
  a8[15] = v43;
  a8[16] = v46;
  a8[17] = v45;
  return result;
}

unint64_t sub_2612B6CDC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x496E6F6973736573;
    if (a1 != 2)
    {
      v6 = 0x746E756F6D61;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746361736E617274;
    v2 = 0x644964616572;
    if (a1 != 7)
    {
      v2 = 0x6973736553666173;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746361736E617274;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612B6E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BD25C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B6E5C(uint64_t a1)
{
  v2 = sub_2612BCE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B6E98(uint64_t a1)
{
  v2 = sub_2612BCE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B6ED4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FAF0, &qword_2613A8050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCE6C();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v30[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v30[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v30[13] = 2;
  sub_2613A238C();
  v17 = v3[6];
  v18 = v3[7];
  v30[12] = 3;
  sub_2613A238C();
  v19 = v3[8];
  v20 = v3[9];
  v30[11] = 4;
  sub_2613A238C();
  v21 = v3[10];
  v22 = v3[11];
  v30[10] = 5;
  sub_2613A238C();
  v23 = v3[12];
  v24 = v3[13];
  v30[9] = 6;
  sub_2613A238C();
  v25 = v3[14];
  v26 = v3[15];
  v30[8] = 7;
  sub_2613A238C();
  v28 = v3[16];
  v29 = v3[17];
  v30[7] = 8;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2612B714C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v76 = a7;
  v77 = a1;
  LODWORD(v62) = a6;
  v79 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - v14;
  v69 = sub_26139F13C();
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v69);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3[7];
  v74 = a3[6];
  v21 = *(*a3 + 192);
  v75 = v20;

  v23 = v21(v22);
  v72 = v24;
  v73 = v23;
  v25 = a3[14];
  v70 = a3[13];
  v71 = v25;
  v26 = *(a4 + 16);

  v27 = sub_26139FD0C();
  v28 = [v27 description];
  v29 = sub_2613A18CC();
  v67 = v30;
  v68 = v29;

  v31 = *(type metadata accessor for TransactionData(0) + 20);
  v78 = a5;
  v32 = (a5 + v31);
  v33 = v32[1];
  v65 = *v32;
  v66 = v33;
  v80 = a4;
  v34 = *(a4 + 16);

  sub_26139FC8C();
  v35 = sub_26139FF4C();
  v63 = v36;
  v64 = v35;
  if ((v62 & 1) == 0)
  {
    v38 = a3[15];
    v37 = a3[16];
    goto LABEL_5;
  }

  v37 = a3[18];
  if (v37)
  {
    v38 = a3[17];
LABEL_5:
    v62 = v38;
    v61 = v37;
    goto LABEL_6;
  }

  v58 = sub_2613A0CFC();
  v61 = v59;
  v62 = v58;
LABEL_6:
  v39 = v76;
  v40 = v69;

  v41 = *(v80 + 16);
  sub_26139FCEC();
  v76 = sub_26139F0FC();
  v69 = v42;
  v43 = *(v16 + 8);
  v43(v19, v40);
  sub_26125A870(v39, v15, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v16 + 48))(v15, 1, v40) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F280, &unk_2613A42B0);
    v44 = sub_2613A0CFC();
    v46 = v45;
  }

  else
  {
    v44 = sub_26139F0DC();
    v46 = v47;
    v43(v15, v40);
  }

  sub_26124C718(v39, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26125D0E4(v78);
  v49 = v79;
  *a8 = v77;
  a8[1] = v49;
  v50 = v75;
  a8[2] = v74;
  a8[3] = v50;
  v51 = v72;
  a8[4] = v73;
  a8[5] = v51;
  v52 = v71;
  a8[6] = v70;
  a8[7] = v52;
  v53 = v67;
  a8[8] = v68;
  a8[9] = v53;
  v54 = v66;
  a8[10] = v65;
  a8[11] = v54;
  v55 = v63;
  a8[12] = v64;
  a8[13] = v55;
  v56 = v61;
  a8[14] = v62;
  a8[15] = v56;
  v57 = v69;
  a8[16] = v76;
  a8[17] = v57;
  a8[18] = v44;
  a8[19] = v46;
  return result;
}

unint64_t sub_2612B74AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x746361736E617274;
    if (a1 != 8)
    {
      v6 = 0x644964616572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656D65686373;
    if (a1 != 5)
    {
      v7 = 0x746361736E617274;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746E61686372656DLL;
    v2 = 0x496E6F6973736573;
    v3 = 0x4972656E74726170;
    if (a1 != 3)
    {
      v3 = 0x746E756F6D61;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2612B7610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BD564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B7638(uint64_t a1)
{
  v2 = sub_2612BCEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B7674(uint64_t a1)
{
  v2 = sub_2612BCEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B76B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FAF8, &qword_2613A8058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCEC0();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v32[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v32[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v32[13] = 2;
  sub_2613A238C();
  v17 = v3[6];
  v18 = v3[7];
  v32[12] = 3;
  sub_2613A238C();
  v19 = v3[8];
  v20 = v3[9];
  v32[11] = 4;
  sub_2613A238C();
  v21 = v3[10];
  v22 = v3[11];
  v32[10] = 5;
  sub_2613A238C();
  v23 = v3[12];
  v24 = v3[13];
  v32[9] = 6;
  sub_2613A238C();
  v25 = v3[14];
  v26 = v3[15];
  v32[8] = 7;
  sub_2613A238C();
  v27 = v3[16];
  v28 = v3[17];
  v32[7] = 8;
  sub_2613A238C();
  v30 = v3[18];
  v31 = v3[19];
  v32[6] = 9;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2612B7948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v77 = a8;
  v78 = a2;
  LODWORD(v63) = a7;
  v79 = a5;
  v80 = a6;
  v76 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - v16;
  v69 = sub_26139F13C();
  v18 = *(v69 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v69);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3[7];
  v74 = a3[6];
  v23 = *(*a3 + 192);
  v75 = v22;

  v25 = v23(v24);
  v72 = v26;
  v73 = v25;
  v27 = a3[14];
  v70 = a3[13];
  v71 = v27;

  v28 = sub_26139FD0C();
  v29 = [v28 description];
  v30 = sub_2613A18CC();
  v67 = v31;
  v68 = v30;

  v81 = a11;
  if (a11)
  {
    v66 = a10;
  }

  else
  {
    v66 = sub_2613A0CFC();
    v81 = v32;
  }

  sub_26139FC8C();
  v33 = sub_26139FF4C();
  v64 = v34;
  v65 = v33;
  v35 = v77;
  if ((v63 & 1) == 0)
  {
    v37 = a3[15];
    v36 = a3[16];
    goto LABEL_8;
  }

  v36 = a3[18];
  if (v36)
  {
    v37 = a3[17];
LABEL_8:
    v63 = v37;
    v62 = v36;
    goto LABEL_9;
  }

  v57 = sub_2613A0CFC();
  v62 = v58;
  v63 = v57;
LABEL_9:

  sub_26139FCEC();
  v61 = sub_26139F0FC();
  v60 = v38;
  v39 = *(v18 + 8);
  v40 = v69;
  v39(v21, v69);
  sub_26125A870(v35, v17, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v18 + 48))(v17, 1, v40) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F280, &unk_2613A42B0);
    v41 = sub_2613A0CFC();
    v43 = v42;
  }

  else
  {
    v44 = v40;
    v41 = sub_26139F0DC();
    v43 = v45;
    v39(v17, v44);
  }

  result = sub_26124C718(v35, &qword_27FE9F280, &unk_2613A42B0);
  v47 = v78;
  *a9 = v76;
  a9[1] = v47;
  v48 = v75;
  a9[2] = v74;
  a9[3] = v48;
  v49 = v72;
  a9[4] = v73;
  a9[5] = v49;
  v50 = v71;
  a9[6] = v70;
  a9[7] = v50;
  v51 = v67;
  a9[8] = v68;
  a9[9] = v51;
  v52 = v81;
  a9[10] = v66;
  a9[11] = v52;
  v53 = v64;
  a9[12] = v65;
  a9[13] = v53;
  v54 = v60;
  a9[14] = v61;
  a9[15] = v54;
  v55 = v62;
  a9[16] = v63;
  a9[17] = v55;
  v56 = v80;
  a9[18] = v79;
  a9[19] = v56;
  a9[20] = v41;
  a9[21] = v43;
  return result;
}

unint64_t sub_2612B7CAC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x496E6F6973736573;
    v7 = 0x4972656E74726170;
    if (a1 != 3)
    {
      v7 = 0x746E756F6D61;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6E6F73616572;
    if (a1 != 9)
    {
      v2 = 0x644964616572;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656D65686373;
    if (a1 != 5)
    {
      v3 = 0x746361736E617274;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612B7E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BD8C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B7E60(uint64_t a1)
{
  v2 = sub_2612BCF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B7E9C(uint64_t a1)
{
  v2 = sub_2612BCF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B7ED8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB00, &qword_2613A8060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCF14();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v34[15] = 0;
  sub_2613A238C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v34[14] = 1;
    sub_2613A238C();
    v15 = v3[4];
    v16 = v3[5];
    v34[13] = 2;
    sub_2613A238C();
    v17 = v3[6];
    v18 = v3[7];
    v34[12] = 3;
    sub_2613A238C();
    v19 = v3[8];
    v20 = v3[9];
    v34[11] = 4;
    sub_2613A238C();
    v21 = v3[10];
    v22 = v3[11];
    v34[10] = 5;
    sub_2613A238C();
    v23 = v3[12];
    v24 = v3[13];
    v34[9] = 6;
    sub_2613A238C();
    v25 = v3[14];
    v26 = v3[15];
    v34[8] = 7;
    sub_2613A238C();
    v27 = v3[16];
    v28 = v3[17];
    v34[7] = 8;
    sub_2613A238C();
    v29 = v3[18];
    v30 = v3[19];
    v34[6] = 9;
    sub_2613A238C();
    v31 = v3[20];
    v32 = v3[21];
    v34[5] = 10;
    sub_2613A238C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2612B8198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v70 = a2;
  v71 = a6;
  LODWORD(v58) = a5;
  v69 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54 - v12;
  v14 = sub_26139F13C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3[7];
  v67 = a3[6];
  v20 = *(*a3 + 192);
  v68 = v19;

  v22 = v20(v21);
  v65 = v23;
  v66 = v22;
  v24 = a3[14];
  v63 = a3[13];
  v64 = v24;
  v25 = *(a4 + 16);

  v26 = sub_26139FD0C();
  v27 = [v26 description];
  v28 = sub_2613A18CC();
  v61 = v29;
  v62 = v28;

  v30 = *(a4 + 16);
  sub_26139FC8C();
  v31 = sub_26139FF4C();
  v59 = v32;
  v60 = v31;
  if ((v58 & 1) == 0)
  {
    v34 = a3[15];
    v33 = a3[16];
    goto LABEL_5;
  }

  v33 = a3[18];
  if (v33)
  {
    v34 = a3[17];
LABEL_5:
    v58 = v34;
    v57 = v33;
    goto LABEL_6;
  }

  v52 = sub_2613A0CFC();
  v57 = v53;
  v58 = v52;
LABEL_6:

  v35 = *(a4 + 16);
  sub_26139FCEC();
  v36 = sub_26139F0FC();
  v55 = v37;
  v56 = v36;
  v38 = *(v15 + 8);
  v38(v18, v14);
  sub_26125A870(v71, v13, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F280, &unk_2613A42B0);
    v39 = sub_2613A0CFC();
    v41 = v40;
  }

  else
  {
    v39 = sub_26139F0DC();
    v41 = v42;
    v38(v13, v14);
  }

  result = sub_26124C718(v71, &qword_27FE9F280, &unk_2613A42B0);
  v44 = v70;
  *a7 = v69;
  a7[1] = v44;
  v45 = v68;
  a7[2] = v67;
  a7[3] = v45;
  v46 = v65;
  a7[4] = v66;
  a7[5] = v46;
  v47 = v64;
  a7[6] = v63;
  a7[7] = v47;
  v48 = v61;
  a7[8] = v62;
  a7[9] = v48;
  v49 = v59;
  a7[10] = v60;
  a7[11] = v49;
  v50 = v57;
  a7[12] = v58;
  a7[13] = v50;
  v51 = v55;
  a7[14] = v56;
  a7[15] = v51;
  a7[16] = v39;
  a7[17] = v41;
  return result;
}

unint64_t sub_2612B84A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E61686372656DLL;
    v6 = 0x496E6F6973736573;
    if (a1 != 2)
    {
      v6 = 0x4972656E74726170;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x746361736E617274;
    if (a1 != 7)
    {
      v2 = 0x644964616572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746E756F6D61;
    if (a1 != 4)
    {
      v3 = 0x746361736E617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2612B85F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BDC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B8618(uint64_t a1)
{
  v2 = sub_2612BCF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B8654(uint64_t a1)
{
  v2 = sub_2612BCF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B8690(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB08, &qword_2613A8068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCF68();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v30[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v30[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v30[13] = 2;
  sub_2613A238C();
  v17 = v3[6];
  v18 = v3[7];
  v30[12] = 3;
  sub_2613A238C();
  v19 = v3[8];
  v20 = v3[9];
  v30[11] = 4;
  sub_2613A238C();
  v21 = v3[10];
  v22 = v3[11];
  v30[10] = 5;
  sub_2613A238C();
  v23 = v3[12];
  v24 = v3[13];
  v30[9] = 6;
  sub_2613A238C();
  v25 = v3[14];
  v26 = v3[15];
  v30[8] = 7;
  sub_2613A238C();
  v28 = v3[16];
  v29 = v3[17];
  v30[7] = 8;
  sub_2613A234C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2612B8908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v51 = a1;
  v52 = a2;
  v50 = sub_26139F13C();
  v10 = *(v50 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v50);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[7];
  v48 = a3[6];
  v15 = *(*a3 + 192);
  v49 = v14;

  v17 = v15(v16);
  v46 = v18;
  v47 = v17;
  v19 = a3[14];
  v45 = a3[13];

  v20 = sub_26139FD0C();
  v21 = [v20 description];
  v22 = sub_2613A18CC();
  v43 = v23;
  v44 = v22;

  sub_26139FC8C();
  v24 = sub_26139FF4C();
  v41 = v25;
  v42 = v24;
  if (a5)
  {
    v26 = a3[18];
    if (!v26)
    {
      v27 = sub_2613A0CFC();
      v28 = v40;
      goto LABEL_6;
    }

    v27 = a3[17];
  }

  else
  {
    v27 = a3[15];
    v26 = a3[16];
  }

  v28 = v26;
LABEL_6:

  sub_26139FCEC();
  v29 = sub_26139F0FC();
  v31 = v30;

  result = (*(v10 + 8))(v13, v50);
  v33 = v52;
  *a6 = v51;
  a6[1] = v33;
  v34 = v49;
  a6[2] = v48;
  a6[3] = v34;
  v35 = v46;
  a6[4] = v47;
  a6[5] = v35;
  v36 = v44;
  a6[6] = v45;
  a6[7] = v19;
  v38 = v42;
  v37 = v43;
  a6[8] = v36;
  a6[9] = v37;
  v39 = v41;
  a6[10] = v38;
  a6[11] = v39;
  a6[12] = v27;
  a6[13] = v28;
  a6[14] = v29;
  a6[15] = v31;
  return result;
}

unint64_t sub_2612B8B14()
{
  v1 = *v0;
  v2 = 0x746E61686372656DLL;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x746361736E617274;
  }

  v4 = 0x746E756F6D61;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 2)
  {
    v5 = 0x4972656E74726170;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2612B8C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BDF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B8C6C(uint64_t a1)
{
  v2 = sub_2612BCFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B8CA8(uint64_t a1)
{
  v2 = sub_2612BCFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B8CE4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB10, &qword_2613A8070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BCFBC();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v28[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v28[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v28[13] = 2;
  sub_2613A238C();
  v17 = v3[6];
  v18 = v3[7];
  v28[12] = 3;
  sub_2613A238C();
  v19 = v3[8];
  v20 = v3[9];
  v28[11] = 4;
  sub_2613A238C();
  v21 = v3[10];
  v22 = v3[11];
  v28[10] = 5;
  sub_2613A238C();
  v23 = v3[12];
  v24 = v3[13];
  v28[9] = 6;
  sub_2613A238C();
  v26 = v3[14];
  v27 = v3[15];
  v28[8] = 7;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2612B8F3C(uint64_t a1)
{
  sub_2613A0F7C();

  return a1;
}

unint64_t sub_2612B8FA0()
{
  if (*v0)
  {
    result = 0x5472656E74726170;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_2612B8FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002613B7F90 == a2 || (sub_2613A241C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2613A241C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2612B90D4(uint64_t a1)
{
  v2 = sub_2612BD010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9110(uint64_t a1)
{
  v2 = sub_2612BD010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B914C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB18, &qword_2613A8078);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BD010();
  sub_2613A262C();
  v16 = 0;
  sub_2613A238C();
  if (!v5)
  {
    v15 = 1;
    sub_2613A238C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2612B9300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_2613A0F7C();
  v12 = v11;

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v10;
  a5[5] = v12;
  return result;
}

unint64_t sub_2612B9374()
{
  v1 = 0x746E61686372656DLL;
  if (*v0 != 1)
  {
    v1 = 0x546E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2612B93E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BE234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B9408(uint64_t a1)
{
  v2 = sub_2612BD064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9444(uint64_t a1)
{
  v2 = sub_2612BD064();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2612B94C8()
{
  v1 = 0x746E61686372656DLL;
  if (*v0 != 1)
  {
    v1 = 0x496E6F6973736573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2612B9530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BE364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B9558(uint64_t a1)
{
  v2 = sub_2612BD0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9594(uint64_t a1)
{
  v2 = sub_2612BD0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = a3[6];
  v7 = a3[7];
  v9 = *(*a3 + 192);

  v11 = v9(v10);
  v13 = v12;

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v7;
  a4[4] = v11;
  a4[5] = v13;
  return result;
}

uint64_t sub_2612B96A4(uint64_t a1)
{
  v2 = sub_2612BD10C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B96E0(uint64_t a1)
{
  v2 = sub_2612BD10C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2612B9760()
{
  v1 = 0x746E61686372656DLL;
  if (*v0 != 1)
  {
    v1 = 0x646F43726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2612B97C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BE498(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B97F0(uint64_t a1)
{
  v2 = sub_2612BD160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B982C(uint64_t a1)
{
  v2 = sub_2612BD160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9868(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2613A262C();
  v14 = *v6;
  v15 = v6[1];
  v25 = 0;
  v16 = v22[1];
  sub_2613A238C();
  if (v16)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = v6[2];
  v18 = v6[3];
  v24 = 1;
  sub_2613A238C();
  v20 = v6[4];
  v21 = v6[5];
  v23 = 2;
  sub_2613A238C();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_2612B9A54()
{
  v1 = *v0;
  v2 = 0x746E61686372656DLL;
  v3 = 0x496E6F6973736573;
  v4 = 0x746361736E617274;
  if (v1 != 3)
  {
    v4 = 0x646F43726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2612B9B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2612BE5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2612B9B3C(uint64_t a1)
{
  v2 = sub_2612BD1B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2612B9B78(uint64_t a1)
{
  v2 = sub_2612BD1B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2612B9BB4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FB40, &qword_2613A80A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2612BD1B4();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_2613A238C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v22[14] = 1;
  sub_2613A238C();
  v15 = v3[4];
  v16 = v3[5];
  v22[13] = 2;
  sub_2613A238C();
  v17 = v3[6];
  v18 = v3[7];
  v22[12] = 3;
  sub_2613A238C();
  v20 = v3[8];
  v21 = v3[9];
  v22[11] = 4;
  sub_2613A238C();
  return (*(v6 + 8))(v9, v5);
}