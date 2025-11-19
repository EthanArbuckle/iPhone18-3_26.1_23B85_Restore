uint64_t sub_265B68B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035BC0, &qword_265B795A8);

  return sub_265B76BB0();
}

uint64_t sub_265B68C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a2;
  v38 = a7;
  v35 = a5;
  v36 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v34 - v12;
  v14 = sub_265B76F60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  v19 = sub_265B76F50();
  v20 = sub_265B77280();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = a3;
    v22 = a4;
    v23 = v10;
    v24 = a6;
    v25 = v21;
    *v21 = 0;
    _os_log_impl(&dword_265B3E000, v19, v20, "App Record Observation started, requesting install!", v21, 2u);
    v26 = v25;
    a6 = v24;
    v10 = v23;
    a4 = v22;
    a3 = v34;
    MEMORY[0x26676C0C0](v26, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v40[0] = v35;
  v40[1] = a6;
  (*(a4 + 8))(v40, a3, a4);
  v27 = swift_allocObject();
  v28 = v37;
  v29 = v36;
  v27[2] = v38;
  v27[3] = v29;
  v27[4] = v28;

  v30 = v39;
  v31 = sub_265B76BD0();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_265B6A244;
  *(v32 + 24) = v27;

  v31(sub_265B6A250, v32);

  return (*(v10 + 8))(v13, v30);
}

uint64_t sub_265B68F38(uint64_t a1, void *a2, void (*a3)(__int128 *), uint64_t a4)
{
  v8 = sub_265B76F60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v40 - v14;
  if (*(a1 + 8) == 1)
  {
    v41 = a3;
    v16 = *a1;
    sub_265B76E50();

    sub_265B6A2A8(v16, 1);
    v17 = sub_265B76F50();
    v18 = sub_265B77270();

    sub_265B6A2B4(v16, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40[1] = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      *&v44 = v21;
      *v20 = 141558530;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_265B402B4(a2[4], a2[5], &v44);
      *(v20 + 22) = 2082;
      swift_getErrorValue();
      v22 = MEMORY[0x26676B990](v42, v43);
      v24 = sub_265B402B4(v22, v23, &v44);
      v40[0] = v8;
      v25 = v24;

      *(v20 + 24) = v25;
      _os_log_impl(&dword_265B3E000, v17, v18, "Error requesting install for %{mask.hash}s: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26676C0C0](v21, -1, -1);
      MEMORY[0x26676C0C0](v20, -1, -1);

      v26 = (*(v9 + 8))(v15, v40[0]);
    }

    else
    {

      v26 = (*(v9 + 8))(v15, v8);
    }

    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v47 = 2;
    v32 = a2[14];
    MEMORY[0x28223BE20](v26);
    v40[-2] = a2;
    v40[-1] = &v44;
    sub_265B76C10();
    sub_265B69E44(&v44);
    *&v44 = v16;
    v47 = 1;
    v33 = v16;
    v41(&v44);
    return sub_265B63408(&v44);
  }

  else
  {
    sub_265B76E50();

    v27 = sub_265B76F50();
    v28 = sub_265B77280();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v8;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v44 = v31;
      *v30 = 141558274;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_265B402B4(a2[4], a2[5], &v44);
      _os_log_impl(&dword_265B3E000, v27, v28, "Sucessfully requested install with UUID: %{mask.hash}s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x26676C0C0](v31, -1, -1);
      MEMORY[0x26676C0C0](v30, -1, -1);

      (*(v9 + 8))(v13, v29);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    v35 = a2[29];
    __swift_project_boxed_opaque_existential_1(a2 + 25, a2[28]);
    if (qword_280035678 != -1)
    {
      swift_once();
    }

    sub_265B6A254();
    v36 = sub_265B77290();
    swift_allocObject();
    swift_weakInit();

    v37 = sub_265B76DB0();

    *&v44 = v37;
    *(&v44 + 1) = a3;
    *&v45 = a4;
    v47 = 0;
    v39 = a2[14];
    MEMORY[0x28223BE20](v38);
    v40[-2] = a2;
    v40[-1] = &v44;

    sub_265B76C10();
    return sub_265B69E44(&v44);
  }
}

uint64_t sub_265B69518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_265B76BD0();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t sub_265B695D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v9 = sub_265B76BD0();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_265B6A528, v10);
}

uint64_t sub_265B696AC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1);
    v15 = sub_265B76BD0();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_265B6A7A0, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18);
  }
}

void sub_265B69838(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_265B6A600(a1, v21);
  if (v22)
  {
    v14 = *&v21[0];
    v19 = *&v21[0];
    v20 = 1;
    v15 = *&v21[0];
    a4(&v19);
  }

  else
  {
    sub_265B3FF48(v21, &v19);
    a2(&v19);
    v16 = sub_265B76BD0();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    v16(sub_265B6A7A0, v17);

    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_1(&v19);
  }
}

uint64_t sub_265B699FC(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C98, &qword_265B798B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v21 - v15;
  if (a2)
  {
    v21[0] = a1;
    v22 = 1;
    v17 = a1;
    a5(v21);
    return sub_265B63408(v21);
  }

  else
  {
    a3(v14);
    v19 = sub_265B76BD0();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_265B6A1C4, v20);

    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_265B69B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v36[3] = a8;
  v36[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a3, a8);
  v35[3] = a7;
  v35[4] = a10;
  v20 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a7 - 8) + 32))(v20, a4, a7);
  v34[3] = a9;
  v34[4] = a12;
  v21 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a9 - 8) + 32))(v21, a5, a9);
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *(a6 + 104) = 2;
  v22 = sub_265B76C30();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(a6 + 112) = sub_265B76C20();
  *(a6 + 32) = a1;
  *(a6 + 40) = a2;
  sub_265B41D44(v36, a6 + 120);
  sub_265B41D44(v35, a6 + 160);
  sub_265B41D44(v34, a6 + 200);
  v25 = *(a10 + 8);

  v26 = v25(a1, a2, a7, a10);
  v28 = v27;

  *(a6 + 48) = v26;
  *(a6 + 56) = v28;
  ObjectType = swift_getObjectType();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v28 + 16);

  v31(sub_265B6A74C, v30, ObjectType, v28);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v36);

  __swift_destroy_boxed_opaque_existential_1(v35);
  return a6;
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

uint64_t sub_265B69F0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t get_enum_tag_for_layout_string_21SeymourClientServices18SystemAppInstallerC5StateO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265B6A050(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B6A08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_265B6A0D8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_265B6A148(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t sub_265B6A180(uint64_t a1, double *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a2);
}

uint64_t sub_265B6A1C4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_265B6A254()
{
  result = qword_280035CA0;
  if (!qword_280035CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035CA0);
  }

  return result;
}

id sub_265B6A2A8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_265B6A2B4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_265B6A2F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (v6 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265B69518(a1, a2, v6 + v14, *v15, v15[1], a3, a4, a5, a6);
}

uint64_t objectdestroy_8Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  v8 = *(v2 + v7 + 8);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_265B6A46C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035C80, &unk_265B797A0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265B695D8(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_265B6A560()
{
  result = qword_280035CA8;
  if (!qword_280035CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035CA8);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265B6A600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C90, &qword_265B795C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t ASDApp.bundleIdentifier.getter()
{
  v1 = [v0 bundleID];
  v2 = sub_265B77030();

  return v2;
}

uint64_t ASDApp.installIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 installID];
  if (v3)
  {
    v4 = v3;
    sub_265B76370();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_265B76390();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id ASDApp.installProgress.getter()
{
  v1 = [v0 progress];

  return v1;
}

uint64_t sub_265B6A8D8()
{
  v1 = [*v0 localizedName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_265B77030();

  return v3;
}

uint64_t sub_265B6A940()
{
  v1 = [*v0 bundleID];
  v2 = sub_265B77030();

  return v2;
}

uint64_t sub_265B6A9BC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 installID];
  if (v3)
  {
    v4 = v3;
    sub_265B76370();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_265B76390();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id sub_265B6AA60()
{
  v1 = [*v0 installError];

  return v1;
}

id sub_265B6AA98()
{
  v1 = [*v0 progress];

  return v1;
}

uint64_t static ASDInstallApps.requestInstall(for:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_265B76F60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  sub_265B76E50();
  sub_265B76F40();
  (*(v5 + 8))(v8, v4);
  v11 = objc_allocWithZone(MEMORY[0x277CEC4B0]);
  v12 = sub_265B77000();
  v13 = [v11 initWithBundleID_];

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v2;
  return sub_265B76BB0();
}

uint64_t sub_265B6ACE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_265B76F70();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_265B76FA0();
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265B76F80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  sub_265B6A254();
  (*(v15 + 104))(v18, *MEMORY[0x277D851B8], v14);

  v20 = sub_265B772B0();
  (*(v15 + 8))(v18, v14);
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  v21[2] = v28;
  v21[3] = v22;
  v21[4] = sub_265B6B9F4;
  v21[5] = v19;
  aBlock[4] = sub_265B6BA34;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B639B8;
  aBlock[3] = &block_descriptor_2;
  v24 = _Block_copy(aBlock);
  v25 = v23;
  sub_265B76F90();
  v32 = MEMORY[0x277D84F90];
  sub_265B63328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
  sub_265B63380();
  sub_265B77370();
  MEMORY[0x26676B680](0, v13, v9, v24);
  _Block_release(v24);

  (*(v31 + 8))(v9, v6);
  (*(v10 + 8))(v13, v30);
}

void sub_265B6B074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_265B76F60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E50();
  v13 = a1;
  v14 = sub_265B76F50();
  v15 = sub_265B77280();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v8;
    v17 = v16;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    v18 = v13;
    v37 = a4;
    v19 = v18;
    v20 = a3;
    v21 = v13;
    v22 = [v18 description];
    v23 = sub_265B77030();
    v36 = a2;
    v24 = v23;
    v33 = v15;
    v26 = v25;

    a4 = v37;
    v13 = v21;
    a3 = v20;
    v27 = sub_265B402B4(v24, v26, aBlock);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_265B3E000, v14, v33, "Requesting to install %{mask.hash}s", v17, 0x16u);
    v28 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x26676C0C0](v28, -1, -1);
    MEMORY[0x26676C0C0](v17, -1, -1);

    (*(v9 + 8))(v12, v35);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  aBlock[4] = sub_265B6BA40;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B6B7F8;
  aBlock[3] = &block_descriptor_12_0;
  v31 = _Block_copy(aBlock);

  [ObjCClassFromMetadata installApp:v13 withCompletionHandler:v31];
  _Block_release(v31);
}

uint64_t sub_265B6B374(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = sub_265B76F70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_265B76FA0();
  v12 = *(v25 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v25);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265B76390();
  v17 = (*(*(v16 - 8) + 48))(a1, 1, v16);
  sub_265B6A254();
  v18 = sub_265B77290();
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  if (v17 == 1)
  {
    v20 = v24;
    v19[4] = v24;
    v30 = sub_265B6BAB0;
    v31 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_265B639B8;
    v29 = &block_descriptor_18;
    v21 = _Block_copy(&aBlock);

    v22 = v20;
  }

  else
  {
    v30 = sub_265B6BABC;
    v31 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_265B639B8;
    v29 = &block_descriptor_24;
    v21 = _Block_copy(&aBlock);
  }

  sub_265B76F90();
  aBlock = MEMORY[0x277D84F90];
  sub_265B63328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035BD8, &qword_265B795B0);
  sub_265B63380();
  sub_265B77370();
  MEMORY[0x26676B680](0, v15, v11, v21);
  _Block_release(v21);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v25);
}

void sub_265B6B6EC(void (*a1)(void *, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
  sub_265B77630();
  a1(v2, v3);
  sub_265B6A2B4(v2, v3);
}

void sub_265B6B768(void (*a1)(id, uint64_t), int a2, id a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    sub_265B63470();
    v5 = swift_allocError();
    *v6 = 5;
  }

  v7 = a3;
  a1(v5, 1);
}

uint64_t sub_265B6B7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CB0, &unk_265B79970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_265B76370();
    v12 = sub_265B76390();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_265B76390();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_265B6BA48(v9);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_265B6B94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_265B6B994(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_265B6B9F4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_265B6BA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CB0, &unk_265B79970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppInstallerProvider.makeSystemAppInstaller(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B76DA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265B76D90();
  type metadata accessor for SystemAppInstaller();
  v9 = swift_allocObject();
  v24[3] = &type metadata for AppInstallRequestProvider;
  v24[4] = &protocol witness table for AppInstallRequestProvider;
  v23[3] = &type metadata for AppRecordObserverProvider;
  v23[4] = &protocol witness table for AppRecordObserverProvider;
  v22[3] = v4;
  v22[4] = MEMORY[0x277D4F358];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v5 + 16))(boxed_opaque_existential_1, v8, v4);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0;
  *(v9 + 104) = 2;
  v11 = sub_265B76C30();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v9 + 112) = sub_265B76C20();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_265B41D44(v24, v9 + 120);
  sub_265B41D44(v23, v9 + 160);
  sub_265B41D44(v22, v9 + 200);
  v14 = objc_allocWithZone(type metadata accessor for AppRecordObserver());
  swift_bridgeObjectRetain_n();
  v15 = sub_265B619D4(a1, a2);
  *(v9 + 48) = v15;
  *(v9 + 56) = &off_2877702F8;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = &v15[OBJC_IVAR____TtC21SeymourClientServices17AppRecordObserver_onRecordUpdated];
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_265B6A74C;
  v17[1] = v16;

  sub_265B63998(v18);
  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v24);

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v9;
}

char *AppRecordObserverProvider.makeAppRecordObserver(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AppRecordObserver());

  return sub_265B619D4(a1, a2);
}

char *sub_265B6BE08(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for AppRecordObserver());

  return sub_265B619D4(a1, a2);
}

void sub_265B6BE88(void *a1)
{
  sub_265B5F724();
  v119 = sub_265B5F658();
  v120 = a1;
  v2 = sub_265B5F56C(0xD000000000000028, 0x8000000265B79E50);
  if (!v2)
  {
    v2 = sub_265B66348(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  v125 = sub_265B6624C(MEMORY[0x277D84F90]);
  v4 = (v3 + 64);
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v124 = (v3 + 64);
  v126 = v3;
  while (v7)
  {
    v11 = v9;
LABEL_13:
    v12 = __clz(__rbit64(v7)) | (v11 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v17 = v16;
    v130 = [v17 BOOLValue];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v125;
    v19 = sub_265B65E98(v15, v14);
    v21 = v125[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_95;
    }

    v25 = v20;
    if (v125[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v19;
        sub_265B6E060();
        v19 = v30;
      }
    }

    else
    {
      sub_265B64924(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_265B65E98(v15, v14);
      if ((v25 & 1) != (v26 & 1))
      {
LABEL_118:
        sub_265B775A0();
        __break(1u);
        return;
      }
    }

    v7 &= v7 - 1;
    if (v25)
    {
      v10 = v19;

      *(v125[7] + v10) = v130;
    }

    else
    {
      v125[(v19 >> 6) + 8] |= 1 << v19;
      v27 = (v125[6] + 16 * v19);
      *v27 = v15;
      v27[1] = v14;
      *(v125[7] + v19) = v130;

      v28 = v125[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        while (1)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v133 = v7 & 0xFFFFFFFFFFFFFF8;
          v98 = sub_265B774C0();
          if (!v98)
          {
            goto LABEL_102;
          }

LABEL_73:
          v99 = 0;
          v129 = v7 & 0xC000000000000001;
          v122 = v98;
LABEL_74:
          v100 = v99;
          while (1)
          {
            if (v129)
            {
              v101 = MEMORY[0x26676B830](v100, v7);
            }

            else
            {
              if (v100 >= *(v133 + 16))
              {
                goto LABEL_94;
              }

              v101 = *(v7 + 8 * v100 + 32);
            }

            v102 = v101;
            v99 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              break;
            }

            v103 = [v101 properties];
            if (v103)
            {
              v104 = v103;
              type metadata accessor for HTTPCookiePropertyKey();
              v105 = v7;
              sub_265B6E1C8();
              sub_265B76FC0();

              v106 = objc_allocWithZone(sub_265B76760());
              v107 = sub_265B76FB0();

              v108 = [v106 initWithProperties_];

              v7 = v105;
              v98 = v122;
              if (v108)
              {
                MEMORY[0x26676B500]();
                if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v109 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_265B77170();
                }

                sub_265B77190();
                if (v99 != v122)
                {
                  goto LABEL_74;
                }

                goto LABEL_102;
              }
            }

            else
            {
            }

            ++v100;
            if (v99 == v98)
            {
              goto LABEL_102;
            }
          }

LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
        }
      }

      v125[2] = v29;
    }

    v9 = v11;
    v3 = v126;
    v4 = v124;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = v4[v11];
    ++v9;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v31 = v120;
  v32 = [v120 ams_privacyAcknowledgement];
  if (v32)
  {
    v33 = v32;
    sub_265B5C6B8(0, &qword_280035B30, 0x277CCABB0);
    v34 = sub_265B76FC0();

    v124 = sub_265B6644C(MEMORY[0x277D84F90]);
    v35 = (v34 + 64);
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v34 + 64);
    v39 = (v36 + 63) >> 6;
    v127 = v34;

    v40 = 0;
    v121 = v39;
    v123 = (v34 + 64);
    while (v38)
    {
      v41 = v40;
LABEL_33:
      v42 = __clz(__rbit64(v38)) | (v41 << 6);
      v43 = (*(v127 + 48) + 16 * v42);
      v44 = *v43;
      v45 = v43[1];
      v46 = *(*(v127 + 56) + 8 * v42);
      swift_bridgeObjectRetain_n();
      v47 = v46;
      v7 = [v47 unsignedIntegerValue];
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v44;
      v134 = v124;
      v50 = sub_265B65E98(v44, v45);
      v51 = v124[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_96;
      }

      v54 = v49;
      if (v124[3] >= v53)
      {
        if ((v48 & 1) == 0)
        {
          sub_265B6DF08(&qword_280035C40, &qword_265B79600);
        }
      }

      else
      {
        sub_265B64678(v53, v48);
        v55 = sub_265B65E98(v131, v45);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_118;
        }

        v50 = v55;
      }

      v38 &= v38 - 1;
      if (v54)
      {

        *(v124[7] + 8 * v50) = v7;
      }

      else
      {
        v124[(v50 >> 6) + 8] |= 1 << v50;
        v57 = (v124[6] + 16 * v50);
        *v57 = v131;
        v57[1] = v45;
        *(v124[7] + 8 * v50) = v7;

        v58 = v124[2];
        v23 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v23)
        {
          goto LABEL_99;
        }

        v124[2] = v59;
      }

      v40 = v41;
      v39 = v121;
      v35 = v123;
    }

    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_91;
      }

      if (v41 >= v39)
      {
        break;
      }

      v38 = v35[v41];
      ++v40;
      if (v38)
      {
        goto LABEL_33;
      }
    }

    v31 = v120;
  }

  else
  {
    v124 = 0;
  }

  v60 = [v31 ams_pushRegistrationThrottleMap];
  if (v60)
  {
    v61 = v60;
    sub_265B5C6B8(0, &qword_280035B30, 0x277CCABB0);
    v62 = sub_265B76FC0();

    v123 = sub_265B65F10(MEMORY[0x277D84F90]);
    v63 = v62 + 64;
    v64 = 1 << *(v62 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(v62 + 64);
    v67 = (v64 + 63) >> 6;
    v132 = v62;

    v68 = 0;
    v128 = v62 + 64;
    while (v66)
    {
      v70 = v68;
LABEL_55:
      v71 = __clz(__rbit64(v66)) | (v70 << 6);
      v72 = (*(v132 + 48) + 16 * v71);
      v7 = *v72;
      v73 = v72[1];
      v74 = *(*(v132 + 56) + 8 * v71);
      swift_bridgeObjectRetain_n();
      v75 = v74;
      [v75 doubleValue];
      v77 = v76;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v134 = v123;
      v79 = sub_265B65E98(v7, v73);
      v81 = v123[2];
      v82 = (v80 & 1) == 0;
      v23 = __OFADD__(v81, v82);
      v83 = v81 + v82;
      if (v23)
      {
        goto LABEL_97;
      }

      v84 = v80;
      if (v123[3] >= v83)
      {
        if ((v78 & 1) == 0)
        {
          v89 = v79;
          sub_265B6DBE8();
          v79 = v89;
        }
      }

      else
      {
        sub_265B64108(v83, v78);
        v79 = sub_265B65E98(v7, v73);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_118;
        }
      }

      v66 &= v66 - 1;
      if (v84)
      {
        v69 = v79;

        *(v123[7] + 8 * v69) = v77;
      }

      else
      {
        v123[(v79 >> 6) + 8] |= 1 << v79;
        v86 = (v123[6] + 16 * v79);
        *v86 = v7;
        v86[1] = v73;
        *(v123[7] + 8 * v79) = v77;

        v87 = v123[2];
        v23 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v23)
        {
          goto LABEL_100;
        }

        v123[2] = v88;
      }

      v68 = v70;
      v63 = v128;
    }

    while (1)
    {
      v70 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_92;
      }

      if (v70 >= v67)
      {
        break;
      }

      v66 = *(v63 + 8 * v70);
      ++v68;
      if (v66)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v123 = 0;
  }

  v90 = v120;
  sub_265B5F45C(0x46746E756F636361, 0xEC0000007367616CLL);
  sub_265B5F470(0xD000000000000010, 0x8000000265B79F00);
  v91 = [v120 ams_altDSID];
  if (v91)
  {
    v92 = v91;
    sub_265B77030();
  }

  v93 = [v120 ams_automaticDownloadKinds];
  v94 = MEMORY[0x277D84F90];
  if (v93)
  {
    v95 = v93;
    sub_265B77140();
  }

  v96 = [v120 ams_cookies];
  if (v96)
  {
    v97 = v96;
    sub_265B5C6B8(0, &qword_280035CB8, 0x277CCAA30);
    v7 = sub_265B77140();

    v134 = v94;
    if (v7 >> 62)
    {
      goto LABEL_101;
    }

    v133 = v7 & 0xFFFFFFFFFFFFFF8;
    v98 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v98)
    {
      goto LABEL_73;
    }

LABEL_102:

    v90 = v120;
  }

  v110 = [v90 ams_creditsString];
  if (v110)
  {
    v111 = v110;
    sub_265B77030();
  }

  sub_265B5F4A4();
  [v90 ams_didAgreeToTerms];
  if (v119)
  {
    v112 = [v119 stringValue];
    sub_265B77030();
  }

  v113 = [v90 ams_firstName];
  if (v113)
  {
    v114 = v113;
    sub_265B77030();
  }

  [v90 ams_freePasswordPromptSetting];
  [v90 ams_isiCloudFamily];
  [v90 ams_isInGoodStanding];
  [v90 ams_isDemoAccount];
  [v90 ams_isManagedAppleID];
  [v90 ams_isValidPayment];
  v115 = [v90 ams_lastName];
  if (v115)
  {
    v116 = v115;
    sub_265B77030();
  }

  [v90 ams_lastAuthenticationCredentialSource];
  [v90 ams_mergedPrivacyAcknowledgement];
  [v90 ams_paidPasswordPromptSetting];
  if (!v124)
  {
    sub_265B6644C(MEMORY[0x277D84F90]);
  }

  if (!v123)
  {
    sub_265B65F10(MEMORY[0x277D84F90]);
  }

  v117 = [v90 ams_storefront];
  if (v117)
  {
    v118 = v117;
    sub_265B77030();
  }

  sub_265B76A10();
}

unint64_t sub_265B6CC88()
{
  v0 = sub_265B66028(MEMORY[0x277D84F90]);
  v1 = sub_265B76A20();
  v2 = v1;
  if (v1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B18, &qword_265B79470);
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v72 = v2;
  v75 = v1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x46746E756F636361, 0xEC0000007367616CLL, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v4 = sub_265B76A30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035B10, &qword_265B79468);
  v75 = v5;
  v72 = v4;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000010, 0x8000000265B79F00, v6);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v7 = sub_265B76A40();
  if (v8)
  {
    v9 = MEMORY[0x277D837D0];
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v74 = 0;
  }

  v72 = v7;
  v73 = v8;
  v75 = v9;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x44495344746C61, 0xE700000000000000, v10);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v11 = sub_265B76B00();
  v75 = v5;
  v72 = v11;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000016, 0x8000000265B79EE0, v12);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v13 = sub_265B76AD0();
  v75 = MEMORY[0x277D83B88];
  v72 = v13;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x697274656D6F6962, 0xEF65746174537363, v14);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v15 = sub_265B76B60();
  v16 = v15;
  if (v15)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280035CD0, &unk_265B79A40);
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  v72 = v16;
  v75 = v15;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x7365696B6F6F63, 0xE700000000000000, v17);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v18 = sub_265B76B70();
  if (v19)
  {
    v20 = MEMORY[0x277D837D0];
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v74 = 0;
  }

  v72 = v18;
  v73 = v19;
  v75 = v20;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x43746E756F636361, 0xEE00737469646572, v21);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v22 = sub_265B76A50();
  if (v23)
  {
    v24 = MEMORY[0x277D837D0];
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v74 = 0;
  }

  v72 = v22;
  v73 = v23;
  v75 = v24;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000016, 0x8000000265B79EC0, v25);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v26 = sub_265B76AE0();
  v27 = MEMORY[0x277D839B0];
  v75 = MEMORY[0x277D839B0];
  LOBYTE(v72) = v26 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x6565726741646964, 0xEF736D7265546F54, v28);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v29 = sub_265B76A70();
  if (v30)
  {
    v31 = MEMORY[0x277D837D0];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v74 = 0;
  }

  v72 = v29;
  v73 = v30;
  v75 = v31;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 1684632420, 0xE400000000000000, v32);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v33 = sub_265B76B90();
  if (v34)
  {
    v35 = MEMORY[0x277D837D0];
  }

  else
  {
    v33 = 0;
    v35 = 0;
    v74 = 0;
  }

  v72 = v33;
  v73 = v34;
  v75 = v35;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x6D614E7473726966, 0xE900000000000065, v36);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v37 = sub_265B76B30();
  v38 = MEMORY[0x277D83E88];
  v75 = MEMORY[0x277D83E88];
  v72 = v37;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001CLL, 0x8000000265B79EA0, v39);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v40 = sub_265B76AA0();
  v75 = v27;
  LOBYTE(v72) = v40 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x614664756F6C4369, 0xEC000000796C696DLL, v41);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v42 = sub_265B76AB0();
  v75 = v27;
  LOBYTE(v72) = v42 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x7453646F6F476E69, 0xEE00676E69646E61, v43);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v44 = sub_265B76A60();
  v75 = v27;
  LOBYTE(v72) = v44 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x63416F6D65447369, 0xED0000746E756F63, v45);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v46 = sub_265B76A80();
  v75 = v27;
  LOBYTE(v72) = v46 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000010, 0x8000000265B79E80, v47);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v48 = sub_265B76AC0();
  v75 = v27;
  LOBYTE(v72) = v48 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x79615064696C6176, 0xEC000000746E656DLL, v49);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v50 = sub_265B76B80();
  if (v51)
  {
    v52 = MEMORY[0x277D837D0];
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v74 = 0;
  }

  v72 = v50;
  v73 = v51;
  v75 = v52;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x656D614E7473616CLL, 0xE800000000000000, v53);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v54 = sub_265B76B50();
  v75 = v38;
  v72 = v54;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000020, 0x8000000265B79E20, v55);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v56 = sub_265B76B20();
  v75 = v27;
  LOBYTE(v72) = v56 & 1;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001DLL, 0x8000000265B79E00, v57);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v58 = sub_265B76B40();
  v75 = v38;
  v72 = v58;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001CLL, 0x8000000265B79DE0, v59);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v60 = sub_265B76AF0();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CC0, &qword_265B79A30);
  v72 = v60;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD000000000000016, 0x8000000265B79DC0, v61);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v62 = sub_265B76B10();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035CC8, &qword_265B79A38);
  v72 = v62;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0xD00000000000001BLL, 0x8000000265B79DA0, v63);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  v64 = sub_265B76A90();
  if (v65)
  {
    v66 = MEMORY[0x277D837D0];
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v74 = 0;
  }

  v72 = v64;
  v73 = v65;
  v75 = v66;
  sub_265B42BBC(&v72, &v69);
  if (v70)
  {
    sub_265B5FC9C(&v69, v71);
    sub_265B4073C(v71, &v69);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    sub_265B5FD44(&v69, 0x6F726665726F7473, 0xEC0000004449746ELL, v67);
    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    sub_265B42C2C(&v69);
  }

  sub_265B42C2C(&v72);
  return v0;
}

void *sub_265B6DBE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C48, &qword_265B79608);
  v2 = *v0;
  v3 = sub_265B774D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_265B6DD64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C58, &qword_265B79618);
  v2 = *v0;
  v3 = sub_265B774D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_265B4073C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_265B5FC9C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_265B6DF08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_265B774D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_265B6E060()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035C30, &qword_265B795F0);
  v2 = *v0;
  v3 = sub_265B774D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_265B6E1C8()
{
  result = qword_280035760;
  if (!qword_280035760)
  {
    type metadata accessor for HTTPCookiePropertyKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035760);
  }

  return result;
}

uint64_t AccountProviding.fetchCurrentAccount(accountType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = *MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v10 + v9 + v7) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v11 + 24) = 43;
  *(v11 + 32) = 2;
  *(v11 + 40) = 39;
  *(v11 + 48) = &unk_265B79A58;
  *(v11 + 56) = v10;
  sub_265B401DC();
  return sub_265B76BB0();
}

uint64_t AccountProviding.fetchMatchingAccount(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v21[0] = a3;
  v21[1] = a4;
  v8 = sub_265B766B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = (v14 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = v21[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v15, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (*(v9 + 32))(v17 + v16, v12, v8);
  v19 = swift_allocObject();
  *(v19 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v19 + 24) = 43;
  *(v19 + 32) = 2;
  *(v19 + 40) = 43;
  *(v19 + 48) = &unk_265B79A68;
  *(v19 + 56) = v17;
  sub_265B401DC();
  return sub_265B76BB0();
}

uint64_t AccountProviding.fetchPrimaryAccount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v9 + 24) = 43;
  *(v9 + 32) = 2;
  *(v9 + 40) = 47;
  *(v9 + 48) = &unk_265B79A78;
  *(v9 + 56) = v8;
  sub_265B401DC();
  return sub_265B76BB0();
}

uint64_t sub_265B6E7BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B761CC;

  return AccountProviding.fetchCurrentAccountFirstName()(a1, a2);
}

uint64_t sub_265B6E860()
{
  *(v1 + 96) = v0;
  v2 = sub_265B76F60();
  *(v1 + 104) = v2;
  v3 = *(v2 - 8);
  *(v1 + 112) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 184) = 1;
  v5 = swift_task_alloc();
  *(v1 + 136) = v5;
  *v5 = v1;
  v5[1] = sub_265B6E968;

  return AccountProvider.fetchCurrentAccount(accountType:)((v1 + 184));
}

uint64_t sub_265B6E968(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_265B6EC08;
  }

  else
  {
    v5 = sub_265B6EA7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_265B6EA7C()
{
  v1 = [*(v0 + 144) aa_firstName];
  if (v1)
  {
    v2 = v1;
    sub_265B77030();
  }

  v3 = sub_265B772F0();

  if (v3)
  {

    *(v0 + 185) = 0;
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_265B6EE1C;
    v5 = *(v0 + 96);

    return AccountProvider.fetchCurrentAccount(accountType:)((v0 + 185));
  }

  else
  {
    result = [*(v0 + 144) aa_firstName];
    if (result)
    {
      v7 = result;
      v8 = *(v0 + 144);
      v9 = sub_265B77030();
      v11 = v10;

      v13 = *(v0 + 120);
      v12 = *(v0 + 128);

      v14 = *(v0 + 8);

      return v14(v9, v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265B6EC08()
{
  v23 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  sub_265B76E50();
  v3 = v1;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v21 = *(v0 + 128);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x26676B990](*(v0 + 48), *(v0 + 56));
    v14 = sub_265B402B4(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching Apple Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v15 = *(v0 + 128);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);

    (*(v17 + 8))(v15, v16);
  }

  *(v0 + 185) = 0;
  v18 = swift_task_alloc();
  *(v0 + 160) = v18;
  *v18 = v0;
  v18[1] = sub_265B6EE1C;
  v19 = *(v0 + 96);

  return AccountProvider.fetchCurrentAccount(accountType:)((v0 + 185));
}

uint64_t sub_265B6EE1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_265B6F0A4;
  }

  else
  {
    v5 = sub_265B6EF30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_265B6EF30()
{
  v1 = [*(v0 + 168) ams_firstName];
  if (!v1)
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 168);
  v3 = v1;
  v4 = sub_265B77030();
  v6 = v5;

  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  sub_265B43C20();
  LOBYTE(v3) = sub_265B77350();

  if (v3)
  {

LABEL_5:
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    sub_265B4ACC0();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  v14 = *(v0 + 8);

  return v14(v4, v6);
}

uint64_t sub_265B6F0A4()
{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  sub_265B76E50();
  v3 = v1;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 112);
    v23 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x26676B990](*(v0 + 24), *(v0 + 32));
    v14 = sub_265B402B4(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching iTunes Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v23, v8);
  }

  else
  {
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 104);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 120);
  v19 = *(v0 + 128);
  sub_265B4ACC0();
  swift_allocError();
  *v20 = 4;
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t AccountProviding.fetchCurrentAccountFirstName()(uint64_t a1, uint64_t a2)
{
  *(v3 + 104) = a2;
  *(v3 + 112) = v2;
  *(v3 + 96) = a1;
  v6 = sub_265B76F60();
  *(v3 + 120) = v6;
  v7 = *(v6 - 8);
  *(v3 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 216) = 1;
  v9 = *(a2 + 8);
  *(v3 + 152) = v9;
  *(v3 + 160) = (a2 + 8) & 0xFFFFFFFFFFFFLL | 0x49FB000000000000;
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v3 + 168) = v11;
  *v11 = v3;
  v11[1] = sub_265B6F468;

  return v13(v3 + 216, a1, a2);
}

{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v9 + 24) = 43;
  *(v9 + 32) = 2;
  *(v9 + 40) = 51;
  *(v9 + 48) = &unk_265B79A98;
  *(v9 + 56) = v8;
  return sub_265B76BB0();
}

uint64_t sub_265B6F468(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_265B6F9F4;
  }

  else
  {
    v5 = sub_265B6F57C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_265B6F57C()
{
  v1 = [*(v0 + 176) aa_firstName];
  if (v1)
  {
    v2 = v1;
    sub_265B77030();
  }

  v3 = sub_265B772F0();

  if (v3)
  {

    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    *(v0 + 217) = 0;
    v21 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_265B6F76C;
    v8 = *(v0 + 160);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return v21(v0 + 217, v11, v9);
  }

  else
  {
    result = [*(v0 + 176) aa_firstName];
    if (result)
    {
      v13 = result;
      v14 = *(v0 + 176);
      v15 = sub_265B77030();
      v17 = v16;

      v19 = *(v0 + 136);
      v18 = *(v0 + 144);

      v20 = *(v0 + 8);

      return v20(v15, v17);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265B6F76C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_265B6FC64;
  }

  else
  {
    v5 = sub_265B6F880;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_265B6F880()
{
  v1 = [*(v0 + 200) ams_firstName];
  if (!v1)
  {

    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v3 = v1;
  v4 = sub_265B77030();
  v6 = v5;

  *(v0 + 64) = v4;
  *(v0 + 72) = v6;
  sub_265B43C20();
  LOBYTE(v3) = sub_265B77350();

  if (v3)
  {

LABEL_5:
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    sub_265B4ACC0();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 136);
  v12 = *(v0 + 144);

  v14 = *(v0 + 8);

  return v14(v4, v6);
}

uint64_t sub_265B6F9F4()
{
  v30 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  sub_265B76E50();
  v3 = v1;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v27 = *(v0 + 144);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x26676B990](*(v0 + 48), *(v0 + 56));
    v14 = sub_265B402B4(v12, v13, &v29);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching Apple Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v27, v8);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  *(v0 + 217) = 0;
  v28 = (v18 + *v18);
  v20 = v18[1];
  v21 = swift_task_alloc();
  *(v0 + 192) = v21;
  *v21 = v0;
  v21[1] = sub_265B6F76C;
  v22 = *(v0 + 160);
  v23 = *(v0 + 104);
  v24 = *(v0 + 112);
  v25 = *(v0 + 96);

  return v28(v0 + 217, v25, v23);
}

uint64_t sub_265B6FC64()
{
  v25 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 136);
  sub_265B76E50();
  v3 = v1;
  v4 = sub_265B76F50();
  v5 = sub_265B77270();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 128);
    v23 = *(v0 + 136);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x26676B990](*(v0 + 24), *(v0 + 32));
    v14 = sub_265B402B4(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed fetching iTunes Account while fetching first name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26676C0C0](v10, -1, -1);
    MEMORY[0x26676C0C0](v9, -1, -1);

    (*(v7 + 8))(v23, v8);
  }

  else
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  sub_265B4ACC0();
  swift_allocError();
  *v20 = 4;
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_265B6FFA8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_265B700E4, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_265B700FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 48) = a3 & 1;
  v8 = *(a5 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_265B70234;

  return v12(v5 + 48, a4, a5);
}

uint64_t sub_265B70234(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_265B761C8;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_265B761C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_265B7035C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));
  v7 = *(v6 + *(*(v4 - 8) + 64));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_265B4221C;

  return sub_265B700FC(a1, v6, v7, v4, v5);
}

uint64_t sub_265B7046C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *(a5 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = sub_265B705A0;

  return v13(a3, a4, a5);
}

uint64_t sub_265B705A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_265B761C0, 0, 0);
  }
}

uint64_t sub_265B706EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *(a4 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_265B7080C;

  return v11(a3, a4);
}

uint64_t sub_265B7080C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_265B70958, 0, 0);
  }
}

uint64_t sub_265B70B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *(a4 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_265B70C20;

  return v11(a3, a4);
}

uint64_t sub_265B70C20(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_265B70D7C, 0, 0);
  }
}

uint64_t sub_265B70D7C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

void *AccountProvider.init(eventHub:accountStore:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  v3[21] = 0;
  sub_265B3FF48(a3, (v3 + 14));
  v3[19] = a1;
  v3[20] = a2;
  return v3;
}

uint64_t AccountProvider.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() SMUACDAccountStoreDidChangeNotification];
  [v1 removeObserver:v0 name:v2 object:0];

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v3 = *(v0 + 152);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccountProvider.__deallocating_deinit()
{
  AccountProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_265B70ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_265B76F60();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B70F90, 0, 0);
}

uint64_t sub_265B70F90()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_265B76E50();
  sub_265B76F40();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_265B71088;
  v5 = v0[2];

  return sub_265B71244();
}

uint64_t sub_265B71088(void *a1)
{
  v4 = *(*v2 + 48);
  v7 = *v2;

  if (v1)
  {

    v5 = sub_265B761D4;
  }

  else
  {

    v5 = sub_265B711A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_265B711A8()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  swift_getObjectType();
  sub_265B74118();
  sub_265B76C70();

  v5 = v0[1];

  return v5();
}

uint64_t sub_265B71244()
{
  v1[8] = v0;
  v2 = sub_265B76F60();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B71310, v0, 0);
}

uint64_t sub_265B71310()
{
  v1 = *(v0 + 64);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_265B71438;

  return v8(v2, v3);
}

uint64_t sub_265B71438(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 64);
  if (v1)
  {
    v8 = sub_265B717AC;
  }

  else
  {
    v8 = sub_265B7156C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_265B7156C()
{
  v33 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  v4 = *(v3 + 168);
  *(v3 + 168) = v1;
  v5 = v1;

  sub_265B76E50();
  v6 = v5;
  v7 = sub_265B76F50();
  v8 = sub_265B77280();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315138;
    v12 = [v9 accountDescription];
    if (v12)
    {
      v13 = v12;
      v14 = sub_265B77030();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v31 = v0[12];
    v21 = v0[9];
    v20 = v0[10];
    v0[5] = v14;
    v0[6] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
    v22 = sub_265B772E0();
    v24 = v23;

    v25 = sub_265B402B4(v22, v24, &v32);

    *(v10 + 4) = v25;
    _os_log_impl(&dword_265B3E000, v7, v8, "Successfully fetched Primary Account: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26676C0C0](v11, -1, -1);
    MEMORY[0x26676C0C0](v10, -1, -1);

    (*(v20 + 8))(v31, v21);
  }

  else
  {
    v17 = v0[12];
    v18 = v0[9];
    v19 = v0[10];

    (*(v19 + 8))(v17, v18);
  }

  v27 = v0[11];
  v26 = v0[12];

  v28 = v0[1];
  v29 = v0[14];

  return v28(v29);
}

uint64_t sub_265B717AC()
{
  v26 = v0;
  v1 = v0[15];
  v2 = v0[11];
  sub_265B76E50();
  v3 = v1;
  v4 = sub_265B76F50();
  v5 = sub_265B77280();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v13 = MEMORY[0x26676B990](v0[3], v0[4]);
    v15 = sub_265B402B4(v13, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_265B3E000, v4, v5, "Failed to fetch Primary Account: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26676C0C0](v11, -1, -1);
    MEMORY[0x26676C0C0](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[9];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[15];
  v20 = v0[11];
  v21 = v0[12];
  swift_willThrow();

  v22 = v0[1];
  v23 = v0[15];

  return v22();
}

uint64_t sub_265B71AA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[11];
  v6 = *v2;
  v4[12] = v1;

  v7 = v3[8];
  if (v1)
  {
    v8 = sub_265B71EFC;
  }

  else
  {
    v8 = sub_265B71BD4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_265B71BD4()
{
  v1 = v0[3];
  v3 = v0[9];
  v2 = v0[10];

  swift_unknownObjectRelease_n();
  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_265B71C4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[15];
  v6 = *v2;
  v4[16] = v1;

  v7 = v3[8];
  if (v1)
  {
    v8 = sub_265B71F6C;
  }

  else
  {
    v8 = sub_265B71D80;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_265B71D80()
{
  v1 = v0[6];
  v2 = v0[14];
  v3 = v0[9];

  swift_unknownObjectRelease_n();
  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_265B71DFC(uint64_t a1)
{
  v4 = *(*v2 + 136);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_265B71EFC()
{
  v2 = v0[9];
  v1 = v0[10];

  swift_unknownObjectRelease_n();
  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_265B71F6C()
{
  v1 = v0[14];
  v2 = v0[9];

  swift_unknownObjectRelease_n();
  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t AccountProvider.fetchMatchingAccount(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_265B766B0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265B720A0, v1, 0);
}

uint64_t sub_265B720A0()
{
  v16 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_265B401DC();
  (*(v2 + 16))(v1, v4, v3);
  ACAccount.init(_:)(v1);
  v6 = v5;
  *(v0 + 56) = v5;
  ACAccount.type.getter(v15);
  v7 = v15[0];
  *(v0 + 89) = v15[0];
  if (v7 == 2)
  {
    v8 = sub_265B76590();
    sub_265B5FC44();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51BD0], v8);
    swift_willThrow();

    v10 = *(v0 + 48);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    *(v0 + 88) = v7 & 1;
    v13 = swift_task_alloc();
    *(v0 + 64) = v13;
    *v13 = v0;
    v13[1] = sub_265B72264;
    v14 = *(v0 + 24);

    return AccountProvider.fetchCurrentAccount(accountType:)((v0 + 88));
  }
}

uint64_t sub_265B72264(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v8 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  v5 = v3[3];
  if (v1)
  {
    v6 = sub_265B725B8;
  }

  else
  {
    v6 = sub_265B7237C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265B7237C()
{
  v1 = *(v0 + 72);
  if (*(v0 + 89))
  {
    v2 = [v1 aa_altDSID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_265B77030();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v10 = [*(v0 + 56) aa_altDSID];
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [v1 ams_altDSID];
    if (v7)
    {
      v8 = v7;
      v4 = sub_265B77030();
      v6 = v9;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v10 = [*(v0 + 56) ams_altDSID];
    if (!v10)
    {
LABEL_8:
      if (!v6)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }
  }

  v11 = v10;
  v12 = sub_265B77030();
  v14 = v13;

  if (!v6)
  {
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  if (v4 == v12 && v6 == v14)
  {
    v15 = *(v0 + 56);

LABEL_25:

    v23 = *(v0 + 48);

    v24 = *(v0 + 8);
    v25 = *(v0 + 72);

    return v24(v25);
  }

  v22 = sub_265B77580();

  if (v22)
  {
LABEL_24:
    v15 = *(v0 + 56);
    goto LABEL_25;
  }

LABEL_20:
  v16 = *(v0 + 72);
  v17 = *(v0 + 56);
  sub_265B4ACC0();
  swift_allocError();
  *v18 = 1;
  swift_willThrow();

  v19 = *(v0 + 48);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_265B725B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B72644()
{
  v1 = *(v0[2] + 168);
  if (v1)
  {
    v6 = v0[1];
    v2 = v1;

    return v6(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_265B72720;
    v5 = v0[2];

    return sub_265B71244();
  }
}

uint64_t sub_265B72720(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t AccountProvider.fetchAccountState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_265B72840, v1, 0);
}

uint64_t sub_265B72840()
{
  v1 = v0[3];
  v2 = *(v1 + 168);
  if (v2)
  {
    v0[6] = v2;
    v3 = v2;

    return MEMORY[0x2822009F8](sub_265B72A4C, v1, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_265B72920;
    v5 = v0[3];

    return sub_265B71244();
  }
}

uint64_t sub_265B72920(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = *(v4 + 24);
    v8 = sub_265B72ADC;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = *(v4 + 24);
    v8 = sub_265B72A4C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_265B72A4C()
{
  v1 = *(v0 + 48);
  v2 = [v1 isEnabledForDataclass_];

  **(v0 + 16) = v2 ^ 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B72ADC()
{
  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265B72B4C(_BYTE *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B41608;

  return AccountProvider.fetchCurrentAccount(accountType:)(a1);
}

uint64_t sub_265B72BE4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B5A110;

  return AccountProvider.fetchMatchingAccount(_:)(a1);
}

uint64_t sub_265B72C7C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_265B72C9C, v2, 0);
}

uint64_t sub_265B72C9C()
{
  v1 = *(v0[2] + 168);
  if (v1)
  {
    v6 = v0[1];
    v2 = v1;

    return v6(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_265B761D8;
    v5 = v0[2];

    return sub_265B71244();
  }
}

uint64_t sub_265B72D78(uint64_t a1)
{
  v3 = sub_265B766B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v9 + 24) = 43;
  *(v9 + 32) = 2;
  *(v9 + 40) = 43;
  *(v9 + 48) = &unk_265B79BE8;
  *(v9 + 56) = v8;
  sub_265B401DC();

  return sub_265B76BB0();
}

uint64_t sub_265B72F18()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v2 + 24) = 43;
  *(v2 + 32) = 2;
  *(v2 + 40) = 47;
  *(v2 + 48) = &unk_265B79BD8;
  *(v2 + 56) = v1;
  sub_265B401DC();

  return sub_265B76BB0();
}

uint64_t sub_265B72FD4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B73078;

  return sub_265B6E860();
}

uint64_t sub_265B73078(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_265B73188(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B41970;

  return AccountProvider.fetchAccountState()(a1);
}

uint64_t sub_265B73244(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(*(v5 - 8) + 64);
  v8 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v9 = *(sub_265B766B0() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_265B4221C;

  return sub_265B7046C(a1, v1 + v8, v1 + v10, v5, v6);
}

uint64_t sub_265B7338C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B706EC(a1, v1 + v6, v4, v5);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265B734F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B70B00(a1, v1 + v6, v4, v5);
}

uint64_t sub_265B735DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v48 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - v18;
  v20 = sub_265B76F60();
  v46 = *(v20 - 8);
  v47 = v20;
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_265B40228(0x65uLL);
  sub_265B76E40();
  v24 = sub_265B76F50();
  v25 = sub_265B77280();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = a1;
    v27 = v26;
    v42 = swift_slowAlloc();
    v53 = v42;
    *v27 = 134218498;
    *(v27 + 4) = v52;
    *(v27 + 12) = 2080;
    v28 = sub_265B77440();
    v45 = a6;
    v43 = v19;
    v30 = a4;
    v31 = a5;
    v32 = a2;
    v33 = sub_265B402B4(v28, v29, &v53);
    v34 = a3;
    v35 = v45;

    *(v27 + 14) = v33;
    a2 = v32;
    a5 = v31;
    a4 = v30;
    *(v27 + 22) = 2048;
    a6 = v35;
    *(v27 + 24) = v35;
    a3 = v34;
    v19 = v43;
    _os_log_impl(&dword_265B3E000, v24, v25, "Converting from Async-Await to Promise Main: %ld:%s:%lu", v27, 0x20u);
    v36 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x26676C0C0](v36, -1, -1);
    v37 = v27;
    a1 = v44;
    MEMORY[0x26676C0C0](v37, -1, -1);
  }

  (*(v46 + 8))(v23, v47);
  v38 = sub_265B77230();
  (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v49;
  v40 = v52;
  *(v39 + 40) = v50;
  *(v39 + 48) = v40;
  *(v39 + 56) = a3;
  *(v39 + 64) = a4;
  *(v39 + 72) = a5;
  *(v39 + 80) = a6;
  *(v39 + 88) = a1;
  *(v39 + 96) = a2;

  sub_265B75418(0, 0, v19, v51, v39);
}

uint64_t dispatch thunk of AccountProviding.fetchCurrentAccount(accountType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_265B4C6BC;

  return v11(a1, a2, a3);
}

{
  return (*(a3 + 32))();
}

uint64_t dispatch thunk of AccountProviding.fetchMatchingAccount(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_265B566A8;

  return v11(a1, a2, a3);
}

{
  return (*(a3 + 40))();
}

uint64_t dispatch thunk of AccountProviding.fetchPrimaryAccount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B566A8;

  return v9(a1, a2);
}

{
  return (*(a2 + 48))();
}

uint64_t dispatch thunk of AccountProviding.fetchCurrentAccountFirstName()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B73DDC;

  return v9(a1, a2);
}

uint64_t sub_265B73DDC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.fetchAccountState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_265B41970;

  return v11(a1, a2, a3);
}

uint64_t sub_265B74064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B70ED0(a1, v4, v5, v6);
}

unint64_t sub_265B74118()
{
  result = qword_280CEBA48;
  if (!qword_280CEBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEBA48);
  }

  return result;
}

uint64_t sub_265B7416C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v20;
  *(v8 + 48) = v19;
  *(v8 + 160) = v18;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_265B76F60();
  *(v8 + 72) = v10;
  v11 = *(v10 - 8);
  *(v8 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 104) = v14;
  *v14 = v8;
  v14[1] = sub_265B742F4;

  return v16(v8 + 16);
}

uint64_t sub_265B742F4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_265B74764;
  }

  else
  {
    v3 = sub_265B74408;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265B74408()
{
  *(v0 + 120) = sub_265B77210();
  *(v0 + 128) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B744A0, v2, v1);
}

uint64_t sub_265B744A0()
{
  v31 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);

  v3 = *(v0 + 16);
  *(v0 + 136) = v3;
  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(v0 + 96);
  sub_265B76E40();
  v5 = sub_265B76F50();
  v6 = sub_265B77280();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  if (v7)
  {
    v24 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = *(v0 + 72);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = *(v0 + 160);
    v26 = *(v0 + 96);
    v14 = swift_slowAlloc();
    v28 = v3;
    v29 = swift_slowAlloc();
    v15 = v29;
    *v14 = 134218498;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2080;
    v16 = sub_265B77440();
    v18 = sub_265B402B4(v16, v17, &v29);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v25;
    _os_log_impl(&dword_265B3E000, v5, v6, "Finished Main A->P conversion: %ld:%s:%lu", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v19 = v15;
    v3 = v28;
    MEMORY[0x26676C0C0](v19, -1, -1);
    MEMORY[0x26676C0C0](v14, -1, -1);

    (*(v9 + 8))(v26, v27);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v29 = v3;
  v30 = 0;
  v22 = v3;
  v21(&v29);

  return MEMORY[0x2822009F8](sub_265B746F4, 0, 0);
}

uint64_t sub_265B746F4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B74764()
{
  *(v0 + 144) = sub_265B77210();
  *(v0 + 152) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B747FC, v2, v1);
}

uint64_t sub_265B747FC()
{
  v29 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 88);
  sub_265B76E40();
  v4 = sub_265B76F50();
  v5 = sub_265B77280();
  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);
  if (v6)
  {
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 160);
    v26 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v25 = v7;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 134218498;
    *(v13 + 4) = v10;
    *(v13 + 12) = 2080;
    v15 = sub_265B77440();
    v17 = sub_265B402B4(v15, v16, &v27);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v24;
    _os_log_impl(&dword_265B3E000, v4, v5, "Finished Main A->P conversion: %ld:%s:%lu", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26676C0C0](v14, -1, -1);
    MEMORY[0x26676C0C0](v13, -1, -1);

    (*(v8 + 8))(v25, v26);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = *(v0 + 112);
  v20 = *(v0 + 56);
  v19 = *(v0 + 64);
  v27 = v18;
  v28 = 1;
  v21 = v18;
  v20(&v27);

  return MEMORY[0x2822009F8](sub_265B74A50, 0, 0);
}

uint64_t sub_265B74A50()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B74AC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v20;
  *(v8 + 56) = v19;
  *(v8 + 168) = v18;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 32) = a6;
  v10 = sub_265B76F60();
  *(v8 + 80) = v10;
  v11 = *(v10 - 8);
  *(v8 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v8 + 112) = v14;
  *v14 = v8;
  v14[1] = sub_265B74C48;

  return v16(v8 + 16);
}

uint64_t sub_265B74C48()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_265B750BC;
  }

  else
  {
    v3 = sub_265B74D5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265B74D5C()
{
  *(v0 + 128) = sub_265B77210();
  *(v0 + 136) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B74DF4, v2, v1);
}

uint64_t sub_265B74DF4()
{
  v30 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v0 + 144) = v3;
  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(v0 + 104);
  sub_265B76E40();
  v6 = sub_265B76F50();
  v7 = sub_265B77280();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 104);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  if (v8)
  {
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);
    v26 = *(v0 + 104);
    v27 = v4;
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    v14 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v25 = v10;
    v16 = swift_slowAlloc();
    v28[0] = v16;
    *v15 = 134218498;
    *(v15 + 4) = v12;
    *(v15 + 12) = 2080;
    v17 = sub_265B77440();
    v19 = sub_265B402B4(v17, v18, v28);

    *(v15 + 14) = v19;
    v4 = v27;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v24;
    _os_log_impl(&dword_265B3E000, v6, v7, "Finished Main A->P conversion: %ld:%s:%lu", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x26676C0C0](v16, -1, -1);
    MEMORY[0x26676C0C0](v15, -1, -1);

    (*(v11 + 8))(v26, v25);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v28[0] = v4;
  v28[1] = v3;
  v29 = 0;

  v21(v28);

  return MEMORY[0x2822009F8](sub_265B7504C, 0, 0);
}

uint64_t sub_265B7504C()
{
  v1 = v0[18];

  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_265B750BC()
{
  *(v0 + 152) = sub_265B77210();
  *(v0 + 160) = sub_265B77200();
  v2 = sub_265B771C0();

  return MEMORY[0x2822009F8](sub_265B75154, v2, v1);
}

uint64_t sub_265B75154()
{
  v29 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);

  sub_265B77200();
  sub_265B771C0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(v0 + 96);
  sub_265B76E40();
  v4 = sub_265B76F50();
  v5 = sub_265B77280();
  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  if (v6)
  {
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);
    v10 = *(v0 + 32);
    v11 = *(v0 + 40);
    v12 = *(v0 + 168);
    v26 = *(v0 + 80);
    v13 = swift_slowAlloc();
    v25 = v7;
    v14 = swift_slowAlloc();
    v27[0] = v14;
    *v13 = 134218498;
    *(v13 + 4) = v10;
    *(v13 + 12) = 2080;
    v15 = sub_265B77440();
    v17 = sub_265B402B4(v15, v16, v27);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v24;
    _os_log_impl(&dword_265B3E000, v4, v5, "Finished Main A->P conversion: %ld:%s:%lu", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26676C0C0](v14, -1, -1);
    MEMORY[0x26676C0C0](v13, -1, -1);

    (*(v8 + 8))(v25, v26);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v18 = *(v0 + 120);
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v27[0] = v18;
  v27[1] = 0;
  v28 = 1;
  v21 = v18;
  v20(v27);

  return MEMORY[0x2822009F8](sub_265B753A8, 0, 0);
}

uint64_t sub_265B753A8()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_265B75418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_265B5A09C(a3, v25 - v11);
  v13 = sub_265B77230();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_265B408F0(v12);
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

  sub_265B77220();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_265B771C0();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_265B77050() + 32;
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

    sub_265B408F0(a3);

    return v23;
  }

LABEL_8:
  sub_265B408F0(a3);
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

uint64_t sub_265B756D4(uint64_t a1, uint64_t *a2, char a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  *(v3 + 48) = a3 & 1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_265B75778;

  return AccountProvider.fetchCurrentAccount(accountType:)((v3 + 48));
}

uint64_t sub_265B75778(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_265B758C4;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_265B758A0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_265B758DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_265B705A0;

  return AccountProvider.fetchMatchingAccount(_:)(a3);
}

uint64_t sub_265B75978(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_265B75998, v3, 0);
}

uint64_t sub_265B75998()
{
  v1 = *(v0[3] + 168);
  if (v1)
  {
    v0[5] = v1;
    v2 = v1;

    return MEMORY[0x2822009F8](sub_265B761C4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_265B75A78;
    v4 = v0[3];

    return sub_265B71244();
  }
}

uint64_t sub_265B75A78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_265B761C4, 0, 0);
  }
}

uint64_t sub_265B75BC4(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_265B75C7C;

  return sub_265B75978(a1, (v2 + 16));
}

uint64_t sub_265B75C7C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265B75D70(uint64_t a1)
{
  v4 = *(sub_265B766B0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265B4221C;

  return sub_265B758DC(a1, (v1 + 16), v1 + v5);
}

uint64_t sub_265B75E5C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B4221C;

  return sub_265B756D4(a1, (v1 + 16), v4);
}

void sub_265B75F50()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_265B41970;

  JUMPOUT(0x265B74AC0);
}

uint64_t objectdestroy_103Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_265B760AC()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 80);
  v8 = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_265B4221C;

  JUMPOUT(0x265B7416CLL);
}

uint64_t getEnumTagSinglePayload for DataError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataError(uint64_t result, int a2, int a3)
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