uint64_t sub_226FB5000()
{
  v33 = v0[28];
  v1 = v0[25];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v25 = v3;
  v26 = v1;
  v5 = v0[18];
  v28 = v0[23];
  v29 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v27 = v0[14];
  v8 = v0[10];
  v23 = v0[9];
  v24 = v7;
  v9 = v0[7];
  v22 = v0[8];
  v30 = v0[15];
  v31 = v8[25];
  v32 = v8[26];
  __swift_project_boxed_opaque_existential_0(v8 + 22, v31);
  v10 = *(v2 + 16);
  v0[29] = v10;
  v0[30] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v3);
  v11 = v6;
  (*(v5 + 16))(v4, v22, v6);
  sub_226E93170(v23, v7, &qword_27D7B8E38, &qword_22767C730);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = (v28 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = (v29 + *(v27 + 80) + v13) & ~*(v27 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  (*(v2 + 32))(v15 + v12, v26, v25);
  (*(v5 + 32))(v15 + v13, v4, v11);
  sub_226FB6CC8(v24, v15 + v14);

  sub_226ECF5D8(sub_226FB6D38, v15, v31, v11, v32, v33);

  v16 = swift_task_alloc();
  v0[31] = v16;
  *(v16 + 16) = "SeymourServices/AchievementEnvironmentCacheCoordinator.swift";
  *(v16 + 24) = 60;
  *(v16 + 32) = 2;
  *(v16 + 40) = 70;
  *(v16 + 48) = v33;
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_226FB52C0;
  v19 = v0[17];
  v20 = v0[6];

  return MEMORY[0x2822008A0](v20, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226FB6E84, v16, v19);
}

uint64_t sub_226FB52C0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FB549C, 0, 0);
  }

  else
  {
    v7 = v2[27];
    v6 = v2[28];
    v9 = v2[25];
    v8 = v2[26];
    v10 = v2[24];
    v11 = v2[20];
    v12 = v2[16];
    v13 = v2[13];

    (*(v7 + 8))(v6, v8);

    v14 = *(v4 + 8);

    return v14();
  }
}

uint64_t sub_226FB549C()
{
  v45 = v0;
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[13];
  v7 = v0[7];
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_22766A610();
  v3(v4, v7, v5);
  v8 = v1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[24];
    v13 = v0[21];
    v12 = v0[22];
    v40 = v0[33];
    v41 = v0[12];
    v42 = v0[11];
    v43 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v44[0] = v15;
    *v14 = 136315394;
    v16 = sub_2276644D0();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_226E97AE8(v16, v18, v44);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v20 = v0[2];
    v21 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v23 = sub_226E97AE8(v21, v22, v44);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v9, v10, "Failed to make new environment cache using session ID %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v24 = v0[24];
    v25 = v0[21];
    v26 = v0[22];
    v28 = v0[12];
    v27 = v0[13];
    v29 = v0[11];

    (*(v26 + 8))(v24, v25);
    (*(v28 + 8))(v27, v29);
  }

  v30 = v0[33];
  v31 = v0[28];
  v33 = v0[24];
  v32 = v0[25];
  v34 = v0[20];
  v35 = v0[16];
  v36 = v0[13];
  swift_willThrow();

  v37 = v0[1];
  v38 = v0[33];

  return v37();
}

uint64_t sub_226FB5770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a3;
  v39 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v37 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v40 = a2;
  sub_226FB48F4(a2, a1, &v36 - v20);
  if (v5)
  {

    v38 = 0;
    v22 = 1;
  }

  else
  {
    v38 = 0;
    v22 = 0;
  }

  v23 = sub_227666B60();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v21, v22, 1, v23);
  sub_226E93170(a4, v12, &qword_27D7B8E38, &qword_22767C730);
  v25 = sub_22766A4C0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_226E97D1C(v12, &qword_27D7B8E38, &qword_22767C730);
  }

  else
  {
    sub_22766A4A0();
    (*(v26 + 8))(v12, v25);
  }

  sub_226E93170(v21, v19, &qword_27D7B8F20, &qword_2276767D0);
  v27 = *(v24 + 48);
  v28 = v27(v19, 1, v23);
  v36 = v24;
  if (v28 == 1)
  {
    sub_226E97D1C(v19, &qword_27D7B8F20, &qword_2276767D0);
  }

  else
  {
    v29 = sub_227666B50();
    v31 = v30;
    v33 = v32;
    (*(v24 + 8))(v19, v23);
    sub_227663AC0();
    sub_226EB2DFC(v29, v31, v33 & 1);
  }

  v34 = v37;
  sub_226E93170(v21, v37, &qword_27D7B8F20, &qword_2276767D0);
  if (v27(v34, 1, v23) == 1)
  {
    sub_226E97D1C(v34, &qword_27D7B8F20, &qword_2276767D0);
  }

  else
  {
    sub_227666A90();
    (*(v36 + 8))(v34, v23);
  }

  sub_2276679B0();

  return sub_226E97D1C(v21, &qword_27D7B8F20, &qword_2276767D0);
}

uint64_t sub_226FB5BA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227667A70();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FB5CD4, 0, 0);
}

uint64_t sub_226FB5CD4()
{
  v43 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  sub_22766A610();
  v40 = *(v4 + 16);
  v40(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v8)
  {
    v13 = v0[7];
    v15 = v0[4];
    v14 = v0[5];
    v39 = v0[11];
    v16 = swift_slowAlloc();
    v38 = v11;
    v17 = swift_slowAlloc();
    v42 = v17;
    *v16 = 136315138;
    v40(v13, v12, v15);
    v18 = sub_22766C060();
    v37 = v7;
    v20 = v19;
    (*(v14 + 8))(v12, v15);
    v21 = sub_226E97AE8(v18, v20, &v42);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226E8E000, v6, v37, "Inserting a new achievement environment cache: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v9 + 8))(v39, v38);
  }

  else
  {
    v22 = v0[4];
    v23 = v0[5];

    (*(v23 + 8))(v12, v22);
    (*(v9 + 8))(v10, v11);
  }

  v25 = v0[6];
  v24 = v0[7];
  v26 = v0[4];
  v27 = v0[5];
  v29 = v0[2];
  v28 = v0[3];
  v30 = v28[26];
  __swift_project_boxed_opaque_existential_0(v28 + 22, v28[25]);
  v40(v24, v29, v26);
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v0[12] = v32;
  (*(v27 + 32))(v32 + v31, v24, v26);
  v33 = *(v30 + 24);
  v41 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  v0[13] = v35;
  *v35 = v0;
  v35[1] = sub_226FA03B4;

  return v41();
}

void sub_226FB604C(void *a1, uint64_t a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9338, &qword_227673B10);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  v14 = qword_2813B2078;
  swift_beginAccess();
  v15 = sub_227542F78(v11 + v14, v7, v6);
  if (v15)
  {
    if (v15 == 1)
    {

LABEL_4:
      v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9340, &qword_227673B18);
      v17 = sub_227667A70();
      v18 = *(v17 - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_227670CD0;
      (*(v18 + 16))(v21 + v20, a2, v17);
      sub_22755F0D0(v21, v16[1], *(v16 + 16), v16[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v22 = sub_2272480B8(0);
    if (!v27)
    {
      v23 = v22;
      [v22 setResultType_];
      sub_226ED9864();
      v24 = sub_22766C9E0();
      v25 = sub_226EDAB24(v24);

      sub_226EDAB78(v25, v13);

      goto LABEL_4;
    }
  }
}

uint64_t sub_226FB62F8()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FB6704, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[44] = v4;
    *v4 = v3;
    v4[1] = sub_226FB646C;
    v5 = v3[26];
    v6 = v3[29];

    return sub_226FB5BA4(v6);
  }
}

uint64_t sub_226FB646C()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_226FB67C4;
  }

  else
  {
    v3 = sub_226FB6580;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FB6580()
{
  v1 = v0[41];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[25];

  sub_226E97D1C(v2, &qword_27D7B9330, &qword_227673B00);
  (*(v4 + 32))(v6, v3, v5);
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[29];

  v12 = v0[1];

  return v12();
}

uint64_t sub_226FB6668()
{
  v1 = v0[40];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226FB6704()
{
  v1 = v0[41];
  v2 = v0[32];

  sub_226E97D1C(v2, &qword_27D7B9330, &qword_227673B00);
  v3 = v0[43];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t sub_226FB67C4()
{
  v1 = v0[41];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];

  (*(v4 + 8))(v3, v5);
  sub_226E97D1C(v2, &qword_27D7B9330, &qword_227673B00);
  v6 = v0[45];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[29];

  v12 = v0[1];

  return v12();
}

uint64_t sub_226FB68A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_226FB6958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v28 = a2;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for CatalogDataStore();
  v35[3] = v13;
  v35[4] = &off_283A99B78;
  v35[0] = a1;
  v33 = &type metadata for AchievementAwardDataStore;
  v34 = &off_283AC5C08;
  v14 = type metadata accessor for AchievementEnvironmentCacheProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  v19 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v23 = *v21;
  v31[3] = v13;
  v31[4] = &off_283A99B78;
  v30[4] = &off_283AC5C08;
  v31[0] = v23;
  v30[3] = &type metadata for AchievementAwardDataStore;
  *(v17 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider) = 0;
  sub_226E91B50(v31, v17 + 16);
  sub_226E91B50(v30, v17 + 56);
  v24 = v28;
  sub_226E91B50(v28, v17 + 96);
  v25 = v29;
  sub_226FB68A4(v29, v17 + 136);
  sub_2276625C0();
  (*(v5 + 16))(v10, v12, v4);
  sub_227662720();
  sub_227661FF0();
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v24);
  (*(v5 + 8))(v12, v4);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v17;
}

uint64_t sub_226FB6CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FB6D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227664530() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_227667A70() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v12 = *(v2 + 16);
  return sub_226FB5770(a1, v2 + v6, v2 + v9, v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226FB6EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2276696C0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *a1 = sub_2276696B0();
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v5 = [objc_opt_self() defaultCenter];
  v6 = *MEMORY[0x277CBE780];
  v7 = [objc_opt_self() mainQueue];
  v13 = sub_226FB7030;
  v14 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_226FB7164;
  ObjectType = &block_descriptor_1;
  v8 = _Block_copy(v11);
  v9 = [v5 addObserverForName:v6 object:0 queue:v7 usingBlock:v8];
  _Block_release(v8);

  ObjectType = swift_getObjectType();
  v11[0] = v9;
  return sub_226FB7810(v11, a1 + 8);
}

uint64_t sub_226FB7030()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "[MetricEventSequenceNumberProvider] system time zone changed", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_226FB7164(uint64_t a1)
{
  v2 = sub_227662030();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_227662020();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_226FB7258@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v41[1] = a1;
  v2 = sub_22766B390();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_227662940();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v41 - v14;
  v16 = objc_opt_self();
  v17 = [v16 standardUserDefaults];
  sub_227664830();
  v18 = sub_22766BFD0();

  [v17 doubleForKey_];

  sub_2276625C0();
  v19 = [v16 standardUserDefaults];
  sub_227664890();
  v20 = sub_22766BFD0();

  v21 = [v19 integerForKey_];

  sub_227662740();
  sub_227662920();
  LOBYTE(v19) = sub_227662900();
  (*(v5 + 8))(v8, v47);
  if ((v19 & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
LABEL_5:
    v22 = 1;
  }

  v23 = [v16 standardUserDefaults];
  sub_2276625D0();
  v25 = v24;
  sub_227664830();
  v26 = sub_22766BFD0();

  [v23 setDouble:v26 forKey:v25];

  v27 = [v16 standardUserDefaults];
  sub_227664890();
  v28 = sub_22766BFD0();

  [v27 setInteger:v22 forKey:v28];

  v29 = v48;
  sub_22766A740();
  v30 = sub_22766B380();
  v31 = sub_22766C8B0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49 = v33;
    *v32 = 134218242;
    *(v32 + 4) = v22;
    *(v32 + 12) = 2080;
    v34 = sub_2276637A0();
    v36 = sub_226E97AE8(v34, v35, &v49);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_226E8E000, v30, v31, "[MetricEventSequenceNumberProvider] providing event sequence number %ld for topic %s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v32, -1, -1);

    (*(v44 + 8))(v48, v45);
  }

  else
  {

    (*(v44 + 8))(v29, v45);
  }

  v37 = v43;
  v38 = *(v42 + 8);
  v38(v13, v43);
  result = (v38)(v15, v37);
  v40 = v46;
  *v46 = v22;
  *(v40 + 8) = 0;
  return result;
}

uint64_t sub_226FB7734(uint64_t a1)
{
  if (a1 != 4)
  {
    return 0;
  }

  v2 = *v1;
  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
  sub_2276696A0();
  return v4;
}

uint64_t sub_226FB7810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FB7880()
{
  v1 = v0;
  v75 = sub_227669910();
  v74 = *(v75 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227669A70();
  v87 = *(v4 - 8);
  v5 = v87;
  v6 = *(v87 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v14 = v1[10];
  v83 = v1[12];
  ObjectType = swift_getObjectType();
  v94 = v14;
  v16 = *(v5 + 104);
  v16(v8, *MEMORY[0x277D4E410], v4);
  v85 = v16;
  swift_allocObject();
  v86 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();

  v82 = ObjectType;
  sub_227669EB0();

  v17 = *(v87 + 8);
  v87 += 8;
  v80 = v17;
  v17(v8, v4);

  swift_unknownObjectRelease();
  v94 = v14;
  v16(v8, *MEMORY[0x277D4E380], v4);
  swift_allocObject();
  swift_weakInit();
  sub_2276639B0();
  sub_227663CF0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v84 = v4;
  v18 = v80;
  v80(v8, v4);
  swift_unknownObjectRelease();
  v94 = v14;
  v19 = v85;
  v85(v8, *MEMORY[0x277D4EB40], v4);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v20 = v84;
  v18(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v19(v8, *MEMORY[0x277D4E5F8], v20);
  v81 = v5 + 104;
  swift_allocObject();
  swift_weakInit();
  sub_227666500();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v21 = v84;
  v18(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v22 = v85;
  v85(v8, *MEMORY[0x277D4ECA8], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v23 = v84;
  v18(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v22(v8, *MEMORY[0x277D4EE20], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v18(v8, v23);

  swift_unknownObjectRelease();
  v94 = v14;
  v24 = v85;
  v85(v8, *MEMORY[0x277D4E400], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v25 = v84;
  v18(v8, v84);

  swift_unknownObjectRelease();
  v94 = v14;
  v24(v8, *MEMORY[0x277D4EA60], v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v26 = v80;
  v80(v8, v25);
  swift_unknownObjectRelease();
  v94 = v14;
  v27 = v85;
  v85(v8, *MEMORY[0x277D4EC28], v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v28 = v84;
  v26(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v27(v8, *MEMORY[0x277D4EA20], v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v29 = v84;
  v26(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v30 = v85;
  v85(v8, *MEMORY[0x277D4EC08], v29);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v31 = v84;
  v26(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v30(v8, *MEMORY[0x277D4E310], v31);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v32 = v84;
  v33 = v80;
  v80(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v30(v8, *MEMORY[0x277D4E3E0], v32);
  swift_allocObject();
  swift_weakInit();
  v76 = sub_2276624A0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v34 = v84;
  v33(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v35 = v85;
  v85(v8, *MEMORY[0x277D4E840], v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v36 = v84;
  v37 = v80;
  v80(v8, v84);

  swift_unknownObjectRelease();
  v94 = v14;
  v35(v8, *MEMORY[0x277D4E598], v36);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v38 = v84;
  v37(v8, v84);

  swift_unknownObjectRelease();
  v94 = v14;
  v35(v8, *MEMORY[0x277D4E4B8], v38);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226FA712C();
  sub_226FA71B0();
  v78 = sub_226FBD1C0();
  v77 = sub_226FBD244();
  sub_227669E80();

  v39 = v80;
  v80(v8, v38);
  swift_unknownObjectRelease();
  v94 = v14;
  v85(v8, *MEMORY[0x277D4E5A0], v38);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v40 = v84;
  v39(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v41 = v85;
  v85(v8, *MEMORY[0x277D4E7B8], v40);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9358, &qword_227673C00);
  sub_226FBD308();
  sub_226FBD38C();
  sub_227669E90();

  v42 = v84;
  v43 = v80;
  v80(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v41(v8, *MEMORY[0x277D4E3B8], v42);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v44 = v84;
  v43(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v41(v8, *MEMORY[0x277D4E850], v44);
  swift_allocObject();
  swift_weakInit();
  sub_2276642E0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v80(v8, v44);
  swift_unknownObjectRelease();
  v94 = v14;
  v85(v8, *MEMORY[0x277D4E5A8], v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  sub_226FBD490();
  sub_226FBD514();
  sub_227669E90();

  v45 = v80;
  v80(v8, v44);
  swift_unknownObjectRelease();
  v94 = v14;
  v46 = v85;
  v85(v8, *MEMORY[0x277D4ED18], v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v47 = v84;
  v45(v8, v84);
  swift_unknownObjectRelease();
  v94 = v14;
  v46(v8, *MEMORY[0x277D4ED90], v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v45(v8, v47);
  swift_unknownObjectRelease();
  v94 = v14;
  v48 = v47;
  v85(v8, *MEMORY[0x277D4EDB0], v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E90();

  v49 = v80;
  v80(v8, v47);
  swift_unknownObjectRelease();
  v94 = v14;
  v85(v8, *MEMORY[0x277D4E610], v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_226FBD650();
  sub_226FBD6D4();
  sub_227669E90();

  v49(v8, v47);
  swift_unknownObjectRelease();
  v94 = v14;
  v85(v8, *MEMORY[0x277D4E890], v47);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9368, &unk_22767FFA0);
  sub_226FBD790();
  sub_226FBD814();
  sub_227669E90();

  v49(v8, v47);
  swift_unknownObjectRelease();
  v94 = v14;
  v50 = v85;
  v85(v8, *MEMORY[0x277D4E778], v48);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v72[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  v76 = sub_226FBD8D0();
  v72[1] = sub_226FBD954();
  sub_227669E80();

  v49(v8, v48);
  swift_unknownObjectRelease();
  v94 = v14;
  v50(v8, *MEMORY[0x277D4E8D0], v48);
  swift_allocObject();
  swift_weakInit();
  sub_227668910();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  sub_226F62F70(&qword_281399150, &qword_27D7B90F8, &qword_227679D10);
  sub_226FBDA10();
  sub_227669E80();

  v51 = v80;
  v80(v8, v48);
  swift_unknownObjectRelease();
  v94 = v14;
  v85(v8, *MEMORY[0x277D4E988], v48);
  swift_allocObject();
  swift_weakInit();
  sub_227668C20();
  swift_unknownObjectRetain();
  sub_227669E80();

  v51(v8, v48);
  swift_unknownObjectRelease();
  v94 = v14;
  v52 = v85;
  v85(v8, *MEMORY[0x277D4E578], v48);
  swift_allocObject();
  swift_weakInit();
  sub_2276668A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9378, &qword_22768AF50);
  sub_226F62F70(&qword_281399140, &qword_27D7B9378, &qword_22768AF50);
  sub_226FBDB44();
  sub_227669E80();

  v53 = v48;
  v54 = v48;
  v55 = v80;
  v80(v8, v54);
  swift_unknownObjectRelease();
  v94 = v14;
  v52(v8, *MEMORY[0x277D4EB08], v53);
  swift_allocObject();
  v56 = v86;
  swift_weakInit();
  sub_227664F30();
  sub_227669E80();

  v55(v8, v53);
  swift_unknownObjectRelease();
  v57 = v56[7];
  v58 = v56[9];
  v59 = v56;
  swift_getObjectType();
  v94 = v57;
  v60 = v74;
  v61 = v73;
  v62 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x277D4E110], v75);
  swift_allocObject();
  swift_weakInit();
  sub_227665780();
  swift_unknownObjectRetain();
  sub_227669E60();

  (*(v60 + 8))(v61, v62);
  swift_unknownObjectRelease();
  v63 = v59[13];
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = *(v63 + 16);
  v91 = v63;
  v92 = sub_226FBDC08;
  v93 = v64;

  sub_2276696A0();

  v66 = swift_allocObject();
  swift_weakInit();
  v67 = *(v63 + 16);
  v88 = v63;
  v89 = sub_226FBDC30;
  v90 = v66;

  sub_2276696A0();

  v68 = __swift_project_boxed_opaque_existential_0(v59 + 14, v59[17]);
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = *v68;
  sub_226F64EB4(39, sub_226FBDC5C, v69);
}

uint64_t sub_226FB97CC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v23);

    v10 = __swift_project_boxed_opaque_existential_0(v23, v23[3]);
    v11 = *v10;
    v12 = *(*v10 + 600);
    v13 = *(*v10 + 608);
    __swift_project_boxed_opaque_existential_0((*v10 + 576), v12);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE110, v11, v12, v14, v13, v8);

    v15 = swift_allocObject();
    *(v15 + 16) = sub_226FBE12C;
    *(v15 + 24) = v11;
    (*(v3 + 16))(v6, v8, v2);
    v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v3 + 32))(v18 + v16, v6, v2);
    v19 = (v18 + v17);
    *v19 = sub_226FBE148;
    v19[1] = v15;

    sub_227669270();
    (*(v3 + 8))(v8, v2);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }
}

uint64_t sub_226FB9B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v15);

    v10 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A6C0();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v11 = *__swift_project_boxed_opaque_existential_0((v10 + 336), *(v10 + 360));
    sub_2272FBA14(a1, a2);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
    (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }
}

uint64_t sub_226FB9D2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v13);

    v8 = __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_227662670();
    v9 = *v8;
    sub_22751B450(v6, a1);
    (*(v3 + 8))(v6, v2);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_226FB9EFC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    v3 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v4 = __swift_project_boxed_opaque_existential_0((*v3 + 416), *(*v3 + 440));
    v5 = sub_227665FC0();
    v6 = *v4;
    sub_22708193C(v5, a1);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_226FBA048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v6 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v31 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v34);

    v16 = *__swift_project_boxed_opaque_existential_0(v34, v34[3]);
    sub_22766A6C0();
    sub_22766B370();
    (*(v10 + 8))(v13, v9);
    v17 = v16[75];
    v18 = v16[76];
    __swift_project_boxed_opaque_existential_0(v16 + 72, v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = 0;
    *(v19 + 32) = v31;
    *(v19 + 40) = v14;
    *(v19 + 48) = 1;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE21C, v19, v17, v20, v18, v8);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_226FBE268;
    *(v21 + 24) = v16;
    v22 = v32;
    (*(v3 + 16))(v6, v8, v32);
    v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v24 = swift_allocObject();
    (*(v3 + 32))(v24 + v23, v6, v22);
    v25 = (v24 + ((v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = sub_226FBE218;
    v25[1] = v21;

    v26 = v33;
    sub_227669270();
    (*(v3 + 8))(v8, v22);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
  }
}

uint64_t sub_226FBA4B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v32);
  v6 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v31 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v34);

    v16 = *__swift_project_boxed_opaque_existential_0(v34, v34[3]);
    sub_22766A6C0();
    sub_22766B370();
    (*(v10 + 8))(v13, v9);
    v17 = v16[75];
    v18 = v16[76];
    __swift_project_boxed_opaque_existential_0(v16 + 72, v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = 1;
    *(v19 + 32) = v31;
    *(v19 + 40) = v14;
    *(v19 + 48) = 1;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE088, v19, v17, v20, v18, v8);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_226FBE0A0;
    *(v21 + 24) = v16;
    v22 = v32;
    (*(v3 + 16))(v6, v8, v32);
    v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v24 = swift_allocObject();
    (*(v3 + 32))(v24 + v23, v6, v22);
    v25 = (v24 + ((v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v25 = sub_226FBE218;
    v25[1] = v21;

    v26 = v33;
    sub_227669270();
    (*(v3 + 8))(v8, v22);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
  }
}

uint64_t sub_226FBA918@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v14);

    v10 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    a3(v7, v8, a2, 1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a4, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_226FBAA70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    v6 = *__swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_227180570(v4, v3, a2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_226FBABAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    v5 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v6 = *__swift_project_boxed_opaque_existential_0((*v5 + 96), *(*v5 + 120));
    sub_226F307BC(a1, a2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_226FBACEC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v23);

    v10 = __swift_project_boxed_opaque_existential_0(v23, v23[3]);
    v11 = *v10;
    v12 = *(*v10 + 600);
    v13 = *(*v10 + 608);
    __swift_project_boxed_opaque_existential_0((*v10 + 576), v12);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE034, v11, v12, v14, v13, v8);

    v15 = swift_allocObject();
    *(v15 + 16) = sub_226FBE050;
    *(v15 + 24) = v11;
    (*(v3 + 16))(v6, v8, v2);
    v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v3 + 32))(v18 + v16, v6, v2);
    v19 = (v18 + v17);
    *v19 = sub_226FBE058;
    v19[1] = v15;

    sub_227669270();
    (*(v3 + 8))(v8, v2);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }
}

uint64_t sub_226FBB034@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v7);

    v3 = *__swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_2273C3E8C(a1);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_226FBB154@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v14);

    v5 = __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    v6 = *v5;
    v7 = *(*v5 + 600);
    v8 = *(*v5 + 608);
    __swift_project_boxed_opaque_existential_0((*v5 + 576), v7);
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v3;

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBE018, v9, v7, v10, v8, a2);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_226FBB318@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    v3 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v4 = *v3;
    v5 = *(*v3 + 600);
    v6 = *(*v3 + 608);
    __swift_project_boxed_opaque_existential_0((*v3 + 576), v5);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBDFFC, v4, v5, v7, v6, a1);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_226FBB4AC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    v3 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v4 = *(*v3 + 600);
    v5 = *(*v3 + 608);
    __swift_project_boxed_opaque_existential_0((*v3 + 576), v4);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9358, &qword_227673C00);
    sub_226ECF5D8(sub_22744D46C, 0, v4, v6, v5, a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A8, &unk_227673C20);
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A8, &unk_227673C20);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_226FBB628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v16);

    v8 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    v9 = *(*v8 + 600);
    v10 = *(*v8 + 608);
    __swift_project_boxed_opaque_existential_0((*v8 + 576), v9);
    (*(v5 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_226ECF5D8(sub_226FBDF80, v12, v9, v4, v10, a2);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }
}

uint64_t sub_226FBB88C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    v3 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v4 = *v3;
    v5 = *(*v3 + 600);
    v6 = *(*v3 + 608);
    __swift_project_boxed_opaque_existential_0((*v3 + 576), v5);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
    sub_226ECF5D8(sub_226FBDF64, v4, v5, v7, v6, a1);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_226FBBA20@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    v3 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v4 = *v3;
    v5 = *(*v3 + 600);
    v6 = *(*v3 + 608);
    __swift_project_boxed_opaque_existential_0((*v3 + 576), v5);
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = 0;

    sub_226ECF5D8(sub_226FBDF44, v7, v5, MEMORY[0x277D83B88], v6, a1);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_226FBBBC4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v11);

    v3 = __swift_project_boxed_opaque_existential_0(v11, v11[3]);
    v4 = *v3;
    v5 = *(*v3 + 600);
    v6 = *(*v3 + 608);
    __swift_project_boxed_opaque_existential_0((*v3 + 576), v5);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    sub_226ECF5D8(sub_226FBDF28, v4, v5, v7, v6, a1);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_226FBBD58@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    v3 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v4 = *(*v3 + 600);
    v5 = *(*v3 + 608);
    __swift_project_boxed_opaque_existential_0((*v3 + 576), v4);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9368, &unk_22767FFA0);
    sub_226ECF5D8(sub_22744A310, 0, v4, v6, v5, a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A0, &qword_227684EF0);
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93A0, &qword_227684EF0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_226FBBED4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v12 = *a1;
  v11 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v31);

    v14 = *__swift_project_boxed_opaque_existential_0(v31, v31[3]);
    v29 = v4;
    v15 = *(v14 + 75);
    v28 = *(v14 + 76);
    __swift_project_boxed_opaque_existential_0(v14 + 72, v15);
    v16 = swift_allocObject();
    v30 = a2;
    v17 = v16;
    v16[2] = v14;
    v16[3] = v12;
    v16[4] = v11;
    v18 = sub_2276642E0();

    sub_226ECF5D8(sub_226FBDED8, v17, v15, v18, v28, v10);

    v19 = v29;
    (*(v5 + 16))(v8, v10, v29);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    (*(v5 + 32))(v21 + v20, v8, v19);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_226FBDEF8;
    v22[1] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
    v23 = v30;
    sub_227669270();
    (*(v5 + 8))(v10, v19);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }
}

uint64_t sub_226FBC238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v10);

    v5 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    __swift_project_boxed_opaque_existential_0((*v5 + 376), *(*v5 + 400));
    v6 = off_283AA5528[0];
    type metadata accessor for AssetScriptClient();
    v6(a1);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9398, &qword_227673C18);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9398, &qword_227673C18);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_226FBC3AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v15);

    v11 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    a4(a1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v12 - 8) + 56))(a5, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  }
}

uint64_t sub_226FBC4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227664F30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v19);

    v8 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
    v9 = *v8;
    v10 = *(*v8 + 600);
    v18 = *(*v8 + 608);
    __swift_project_boxed_opaque_existential_0((v9 + 576), v10);
    (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v11, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(sub_226FBDE58, v12, v10, v13, v18, a2);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_226FBC774(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v4);

    v3 = *__swift_project_boxed_opaque_existential_0(v4, v4[3]);
    sub_227319E08(a1);
    return __swift_destroy_boxed_opaque_existential_0(v4);
  }

  return result;
}

uint64_t sub_226FBC7F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9380, &qword_227673C08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v18);

    v9 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_227180DD0(a1, v7);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    v11 = *(v10 - 8);
    (*(v11 + 56))(v7, 0, 1, v10);
    __swift_destroy_boxed_opaque_existential_0(v18);
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      return (*(v11 + 32))(a2, v7, v10);
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  v14 = sub_227664580();
  sub_226FBDCB8(&qword_27D7B9388, MEMORY[0x277D509D0]);
  v15 = swift_allocError();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D509C8], v14);
  *(swift_allocObject() + 16) = v15;
  sub_227669280();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  result = (*(*(v17 - 8) + 48))(v7, 1, v17);
  if (result != 1)
  {
    return sub_226FBDDBC(v7);
  }

  return result;
}

uint64_t sub_226FBCB04@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9380, &qword_227673C08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v18);

    v9 = *__swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_227181320(a1, v7);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    v11 = *(v10 - 8);
    (*(v11 + 56))(v7, 0, 1, v10);
    __swift_destroy_boxed_opaque_existential_0(v18);
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      return (*(v11 + 32))(a2, v7, v10);
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  v14 = sub_227664580();
  sub_226FBDCB8(&qword_27D7B9388, MEMORY[0x277D509D0]);
  v15 = swift_allocError();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D509C8], v14);
  *(swift_allocObject() + 16) = v15;
  sub_227669280();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  result = (*(*(v17 - 8) + 48))(v7, 1, v17);
  if (result != 1)
  {
    return sub_226FBDDBC(v7);
  }

  return result;
}

uint64_t sub_226FBCE28@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v16);

    v7 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    v8 = *v7;
    v9 = *(*v7 + 600);
    v10 = *(*v7 + 608);
    __swift_project_boxed_opaque_existential_0((*v7 + 576), v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = a1;

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
    sub_226ECF5D8(a2, v11, v9, v12, v10, a3);

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_226FBCFDC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[10];
  swift_unknownObjectRelease();
  v3 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  return swift_deallocClassInstance();
}

unint64_t sub_226FBD1C0()
{
  result = qword_281398EA0;
  if (!qword_281398EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8640, qword_227671210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EA0);
  }

  return result;
}

unint64_t sub_226FBD244()
{
  result = qword_281398E98;
  if (!qword_281398E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8640, qword_227671210);
    sub_226FBDCB8(&qword_28139BCD8, MEMORY[0x277D4FF88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E98);
  }

  return result;
}

unint64_t sub_226FBD308()
{
  result = qword_281398E00;
  if (!qword_281398E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9358, &qword_227673C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E00);
  }

  return result;
}

unint64_t sub_226FBD38C()
{
  result = qword_281398DF8;
  if (!qword_281398DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9358, &qword_227673C00);
    sub_226FBDCB8(&qword_28139B918, MEMORY[0x277D50D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DF8);
  }

  return result;
}

unint64_t sub_226FBD490()
{
  result = qword_281398EF8;
  if (!qword_281398EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE6C0, qword_227670F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EF8);
  }

  return result;
}

unint64_t sub_226FBD514()
{
  result = qword_281398EF0;
  if (!qword_281398EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE6C0, qword_227670F00);
    sub_226FBDCB8(&qword_28139BD38, MEMORY[0x277D4FCA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398EF0);
  }

  return result;
}

unint64_t sub_226FBD650()
{
  result = qword_281398E70;
  if (!qword_281398E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9360, qword_22767B900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E70);
  }

  return result;
}

unint64_t sub_226FBD6D4()
{
  result = qword_281398E68;
  if (!qword_281398E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9360, qword_22767B900);
    sub_226FBDCB8(&qword_28139BC98, MEMORY[0x277D501C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E68);
  }

  return result;
}

unint64_t sub_226FBD790()
{
  result = qword_281398D90;
  if (!qword_281398D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9368, &unk_22767FFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D90);
  }

  return result;
}

unint64_t sub_226FBD814()
{
  result = qword_281398D88;
  if (!qword_281398D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9368, &unk_22767FFA0);
    sub_226FBDCB8(&qword_28139B838, MEMORY[0x277D51680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D88);
  }

  return result;
}

unint64_t sub_226FBD8D0()
{
  result = qword_281398F38;
  if (!qword_281398F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9370, qword_227685C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F38);
  }

  return result;
}

unint64_t sub_226FBD954()
{
  result = qword_281398F30;
  if (!qword_281398F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9370, qword_227685C90);
    sub_226FBDCB8(&qword_28139BDE8, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F30);
  }

  return result;
}

unint64_t sub_226FBDA10()
{
  result = qword_281399148;
  if (!qword_281399148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B90F8, &qword_227679D10);
    sub_226FBDCB8(&qword_28139BDE8, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399148);
  }

  return result;
}

unint64_t sub_226FBDB44()
{
  result = qword_281399138;
  if (!qword_281399138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9378, &qword_22768AF50);
    sub_226FBDCB8(&qword_28139BC40, MEMORY[0x277D50450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399138);
  }

  return result;
}

uint64_t sub_226FBDCB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226FBDD00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_226FBDDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9380, &qword_227673C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_226FBDE24()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t objectdestroy_79Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_226FBE150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_226FBE26C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226FBE2C8(uint64_t a1, void *a2)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
    sub_22766A730();
    v10 = a2;
    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x22AA995D0](v18[2], v18[3]);
      v17 = sub_226E97AE8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v11, v12, "Error reporting engagement event %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AA9A450](v14, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

void sub_226FBE4B8()
{
  v2 = *(*v0 + 16);
  sub_2276646F0();
  if (!v1)
  {
    v3 = sub_22766BE90();

    v4 = [v2 enqueueData_];

    v6[4] = sub_226FBE2C8;
    v6[5] = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_226E9F1D0;
    v6[3] = &block_descriptor_2;
    v5 = _Block_copy(v6);
    [v4 addFinishBlock_];
    _Block_release(v5);
  }
}

uint64_t sub_226FBE5D8(void *a1, uint64_t a2, uint64_t a3)
{
  v176 = a3;
  v175 = a2;
  v194 = a1;
  v4 = sub_227664530();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v182 = v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v173 = v167 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v167 - v11;
  v195 = sub_22766B390();
  v13 = *(v195 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v195);
  v183 = v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v174 = v167 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v181 = v167 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v167 - v21;
  sub_22766A770();
  v23 = v5[2];
  v187 = v5 + 2;
  v186 = v23;
  v23(v12, v3, v4);
  v24 = sub_22766B380();
  v25 = sub_22766C8B0();
  v26 = os_log_type_enabled(v24, v25);
  v189 = v4;
  v190 = v13;
  v188 = v5;
  v197 = v3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v202 = v28;
    *v27 = 136315138;
    v29 = sub_2276644D0();
    v30 = v5;
    v32 = v31;
    v184 = v30[1];
    v184(v12, v4);
    v33 = sub_226E97AE8(v29, v32, &v202);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v24, v25, "Inserting ArchivedSession %s on journal read", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    v185 = *(v190 + 8);
  }

  else
  {

    v184 = v5[1];
    v184(v12, v4);
    v185 = *(v13 + 8);
  }

  v185(v22, v195);
  v34 = __swift_project_boxed_opaque_existential_0(v194, v194[3]);
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  v38 = v34[3];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v180 = v39;
  v42 = swift_allocObject();
  v43 = v35;
  v44 = v36;

  sub_22766A070();
  v196 = v43;
  *(v42 + 16) = v43;
  *(v42 + 24) = v44;
  v191 = v44;
  v192 = v38;
  *(v42 + 32) = v37;
  *(v42 + 40) = v38;
  swift_getKeyPath();
  v45 = sub_2276644D0();
  v47 = v46;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v204 = v179;
  v202 = v45;
  v203 = v47;
  v48 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v178 = v48;
  v49 = sub_22766C820();
  sub_226ED25F8(&v202, v200);
  v50 = v201;
  if (v201)
  {
    v51 = __swift_project_boxed_opaque_existential_0(v200, v201);
    v52 = *(v50 - 8);
    v53 = *(v52 + 64);
    MEMORY[0x28223BE20](v51);
    v55 = v167 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v55);
    v56 = sub_22766D170();
    (*(v52 + 8))(v55, v50);
    __swift_destroy_boxed_opaque_existential_0(v200);
  }

  else
  {
    v56 = 0;
  }

  v57 = objc_opt_self();
  v58 = [v57 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v59 = [objc_allocWithZone(v177) initWithLeftExpression:v49 rightExpression:v58 modifier:0 type:4 options:0];

  sub_226EBC888(&v202);
  swift_beginAccess();
  v60 = v59;
  v61 = sub_22766A080();
  v63 = v62;
  MEMORY[0x22AA985C0]();
  if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v61(&v202, 0);
  swift_endAccess();

  v64 = v193;
  v65 = sub_226EC6320(0);
  v66 = v197;
  if (v64)
  {

    swift_setDeallocating();
    v71 = qword_2813B2078;
    v72 = sub_22766A100();
    (*(*(v72 - 8) + 8))(v42 + v71, v72);
    v73 = *(*v42 + 48);
    v74 = *(*v42 + 52);
    return swift_deallocClassInstance();
  }

  v67 = v65;
  [v65 setResultType_];
  [v67 setFetchLimit_];
  [v67 setFetchOffset_];
  [v67 setIncludesSubentities_];
  v68 = sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
  v69 = v196;
  v70 = sub_22766C9D0();
  v193 = 0;
  v76 = v70;
  v171 = v68;
  v172 = v57;

  swift_setDeallocating();
  v77 = qword_2813B2078;
  v78 = sub_22766A100();
  v79 = *(v78 - 8);
  v80 = *(v79 + 8);
  v81 = (v79 + 8);
  v80(v42 + v77, v78);
  v82 = *(*v42 + 48);
  v83 = *(*v42 + 52);
  swift_deallocClassInstance();
  if (v76)
  {
    v84 = v183;
    sub_22766A770();
    v85 = v182;
    v86 = v189;
    v186(v182, v66, v189);
    v87 = sub_22766B380();
    v88 = sub_22766C8B0();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = v84;
      v91 = swift_slowAlloc();
      v202 = v91;
      *v89 = 136315138;
      v92 = sub_2276644D0();
      v93 = v85;
      v95 = v94;
      v184(v93, v86);
      v96 = sub_226E97AE8(v92, v95, &v202);

      *(v89 + 4) = v96;
      _os_log_impl(&dword_226E8E000, v87, v88, "ArchivedSession %s already exists, skipping insertion on journal read", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x22AA9A450](v91, -1, -1);
      MEMORY[0x22AA9A450](v89, -1, -1);

      v97 = v90;
    }

    else
    {

      v184(v85, v86);
      v97 = v84;
    }

    goto LABEL_20;
  }

  v196 = v81;
  v191 = v80;
  v192 = v78;
  v98 = __swift_project_boxed_opaque_existential_0(v194, v194[3]);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
  v100 = *(v188 + 80);
  v182 = v188[9];
  v183 = v99;
  v101 = swift_allocObject();
  v170 = xmmword_227670CD0;
  *(v101 + 16) = xmmword_227670CD0;
  v186((v101 + ((v100 + 32) & ~v100)), v66, v189);
  v102 = v193;
  sub_22755DF08(v101, v98[1], *(v98 + 16), v98[3]);

  if (!v102)
  {
    v167[1] = v100;
    v169 = (v100 + 32) & ~v100;
    v193 = 0;
    v103 = __swift_project_boxed_opaque_existential_0(v194, v194[3]);
    v104 = *v103;
    v105 = v103[1];
    v106 = *(v103 + 16);
    v107 = v103[3];
    v108 = *(v180 + 48);
    v109 = *(v180 + 52);
    v110 = swift_allocObject();
    v111 = v104;
    v112 = v105;

    sub_22766A070();
    v194 = v111;
    *(v110 + 16) = v111;
    *(v110 + 24) = v112;
    v168 = v112;
    *(v110 + 32) = v106;
    v180 = v107;
    *(v110 + 40) = v107;
    swift_getKeyPath();
    v113 = sub_2276644D0();
    v204 = v179;
    v202 = v113;
    v203 = v114;

    v115 = sub_22766C820();
    sub_226ED25F8(&v202, v200);
    v116 = v201;
    if (v201)
    {
      v117 = __swift_project_boxed_opaque_existential_0(v200, v201);
      v118 = v115;
      v119 = *(v116 - 8);
      v120 = *(v119 + 64);
      MEMORY[0x28223BE20](v117);
      v122 = v167 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v119 + 16))(v122);
      v123 = sub_22766D170();
      (*(v119 + 8))(v122, v116);
      v115 = v118;
      __swift_destroy_boxed_opaque_existential_0(v200);
    }

    else
    {
      v123 = 0;
    }

    v125 = v169;
    v126 = [v172 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v127 = [objc_allocWithZone(v177) initWithLeftExpression:v115 rightExpression:v126 modifier:0 type:4 options:0];

    sub_226EBC888(&v202);
    swift_beginAccess();
    v128 = v127;
    v129 = sub_22766A080();
    v131 = v130;
    MEMORY[0x22AA985C0]();
    v132 = v195;
    if (*((*v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v166 = *((*v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
      v132 = v195;
    }

    sub_22766C3A0();
    v129(&v202, 0);
    swift_endAccess();

    v133 = v193;
    v134 = sub_226EC6320(0);
    if (v133)
    {

      v135 = v181;
      sub_22766A770();
      v139 = v133;
      v140 = sub_22766B380();
      v141 = sub_22766C8B0();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v202 = v143;
        *v142 = 136315138;
        swift_getErrorValue();
        v144 = MEMORY[0x22AA995D0](v198, v199);
        v146 = sub_226E97AE8(v144, v145, &v202);

        *(v142 + 4) = v146;
        _os_log_impl(&dword_226E8E000, v140, v141, "Skipping eventHub update for ArchivedSession added due to error: %s", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v143);
        MEMORY[0x22AA9A450](v143, -1, -1);
        MEMORY[0x22AA9A450](v142, -1, -1);

        v97 = v135;
        v124 = v195;
      }

      else
      {

        v97 = v135;
        v124 = v132;
      }

      return (v185)(v97, v124);
    }

    v136 = v134;
    [v134 setResultType_];
    [v136 setFetchLimit_];
    [v136 setFetchOffset_];
    [v136 setIncludesSubentities_];
    v137 = v194;
    v138 = sub_22766C9D0();
    v193 = 0;
    v147 = v138;

    swift_setDeallocating();
    v191(v110 + qword_2813B2078, v192);
    v148 = *(*v110 + 48);
    v149 = *(*v110 + 52);
    swift_deallocClassInstance();
    if (v147 <= 0)
    {
      v153 = v174;
      sub_22766A770();
      v154 = v173;
      v155 = v189;
      v186(v173, v197, v189);
      v156 = sub_22766B380();
      v157 = sub_22766C8B0();
      if (!os_log_type_enabled(v156, v157))
      {

        v184(v154, v155);
        v97 = v153;
        v124 = v132;
        return (v185)(v97, v124);
      }

      v158 = v153;
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v202 = v160;
      *v159 = 136315138;
      v161 = sub_2276644D0();
      v162 = v154;
      v164 = v163;
      v184(v162, v155);
      v165 = sub_226E97AE8(v161, v164, &v202);

      *(v159 + 4) = v165;
      _os_log_impl(&dword_226E8E000, v156, v157, "No ArchivedSessions found for identifier %s after insert from journal, skipping eventHub update", v159, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v160);
      MEMORY[0x22AA9A450](v160, -1, -1);
      MEMORY[0x22AA9A450](v159, -1, -1);

      v97 = v158;
LABEL_20:
      v124 = v195;
      return (v185)(v97, v124);
    }

    swift_getObjectType();
    v150 = swift_allocObject();
    *(v150 + 16) = v170;
    v151 = v189;
    v186((v150 + v125), v197, v189);
    v152 = sub_226F4BFF4(v150);
    swift_setDeallocating();
    v184((v150 + v125), v151);
    swift_deallocClassInstance();
    v202 = v152;
    LOBYTE(v203) = 0;
    sub_226FA6E58();
    sub_2276699D0();
  }

  return result;
}

unint64_t sub_226FBF954(uint64_t a1)
{
  result = sub_226FBF97C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_226FBF97C()
{
  result = qword_2813A57C8;
  if (!qword_2813A57C8)
  {
    sub_227664530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A57C8);
  }

  return result;
}

void sub_226FBF9D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v16 = [a1 templateUniqueName];
  if (v16)
  {
    v22[3] = a2;
    v17 = v16;
    v22[1] = sub_22766C000();

    v18 = [a1 datePresented];
    if (v18)
    {
      v19 = v18;
      sub_227662710();

      (*(v9 + 32))(v15, v13, v8);
      (*(v9 + 16))(v7, v15, v8);
      (*(v9 + 56))(v7, 0, 1, v8);
      sub_227668280();

      (*(v9 + 8))(v15, v8);
      return;
    }
  }

  v20 = sub_227664DD0();
  sub_226FC0128(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
  swift_willThrow();
}

uint64_t static AchievementNotificationRecord.representativeSamples()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v4;
  v33 = sub_2276682A0();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766C090();
  v40 = sub_227662630();
  v41[0] = v9;
  v41[1] = v41;
  v41[2] = &v40;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v36 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v37 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v10 = sub_2276638E0();

  v11 = *(v10 + 16);
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_226F1FAC8(0, v11, 0);
    v12 = v35;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
    v14 = 0;
    v28 = *(result - 8);
    v29 = result;
    v27 = v10 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v26 = v5 + 32;
    v30 = v11;
    v31 = v10;
    while (v14 < *(v10 + 16))
    {
      v15 = v5;
      v16 = (v27 + *(v28 + 72) * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v29 + 48);
      v20 = sub_227662750();
      v21 = *(v20 - 8);
      v22 = v16 + v19;
      v23 = v32;
      (*(v21 + 16))(v32, v22, v20);
      (*(v21 + 56))(v23, 0, 1, v20);
      sub_226EDDC60(v23, v34);

      sub_227668280();
      sub_226EDDD40(v23);
      v35 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1FAC8(v24 > 1, v25 + 1, 1);
        v12 = v35;
      }

      ++v14;
      *(v12 + 16) = v25 + 1;
      v5 = v15;
      result = (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v25, v8, v33);
      v10 = v31;
      if (v30 == v14)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_226FC00D0(uint64_t a1)
{
  result = sub_226FC0128(&qword_2813A5588, MEMORY[0x277D53450]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FC0128(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226FC0170(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  sub_227668290();
  v6 = sub_22766BFD0();

  [a1 setTemplateUniqueName_];

  sub_227668270();
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v9 = sub_2276626A0();
    (*(v8 + 8))(v5, v7);
  }

  [a1 setDatePresented_];
}

id sub_226FC02CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScriptStorefrontCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226FC0300()
{
  v0 = sub_227666C80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v6 + 104))(v9, *MEMORY[0x277D4E170], v5);
  sub_22766A400();
  sub_227669650();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226FC04D4()
{
  v0 = sub_2276666A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v6 + 104))(v9, *MEMORY[0x277D4E160], v5);
  sub_22766A390();
  sub_227669650();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226FC06A8()
{
  v0 = sub_227668A00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v6 + 104))(v9, *MEMORY[0x277D4E1C0], v5);
  sub_22766A5D0();
  sub_227669650();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226FC087C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v42 = sub_22766A5F0();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_227668A00();
  v46 = *(v40 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = v37 - v10;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  sub_22766A730();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_226E8E000, v18, v19, "Received PersonalizationPrivacyPreference Update. Sending Event.", v20, 2u);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  (*(v12 + 8))(v15, v11);

  result = sub_2273FB594(v21, v16);
  v23 = 0;
  v25 = result + 56;
  v24 = *(result + 56);
  v45 = result;
  v26 = 1 << *(result + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v37[1] = v46 + 32;
  v37[2] = v46 + 16;
  v37[0] = v4 + 8;
  v30 = v38;
  if ((v27 & v24) != 0)
  {
    do
    {
      v31 = v23;
LABEL_11:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v46;
      v34 = v40;
      (*(v46 + 16))(v30, *(v45 + 48) + *(v46 + 72) * (v32 | (v31 << 6)), v40);
      swift_getObjectType();
      (*(v33 + 32))(v39, v30, v34);
      v35 = v41;
      sub_22766A5E0();
      v36 = v42;
      sub_2276699D0();
      result = (*v37[0])(v35, v36);
    }

    while (v28);
  }

  while (1)
  {
    v31 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
    }

    v28 = *(v25 + 8 * v31);
    ++v23;
    if (v28)
    {
      v23 = v31;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226FC0C5C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);

  return swift_deallocClassInstance();
}

uint64_t sub_226FC0CD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v9 = *(v5 + 8);
  v9(v8, v4);
  v10 = *__swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  sub_22766A730();
  sub_22766B370();
  v9(v8, v4);
  return sub_227360A74(a1);
}

uint64_t sub_226FC0E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v60 = *(v62 - 8);
  v3 = *(v60 + 64);
  v4 = MEMORY[0x28223BE20](v62);
  v57 = v5;
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v48 - v6;
  v7 = sub_227666710();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v53 = v11;
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v19 = *(v8 + 16);
  v55 = a1;
  v52 = v19;
  v19(v13, a1, v7);
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v51 = v15;
    v23 = v22;
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v23 = 136446210;
    sub_226FC23D4(&qword_27D7B93C0, MEMORY[0x277D52578]);
    v24 = sub_22766D140();
    v49 = v14;
    v26 = v25;
    (*(v8 + 8))(v13, v7);
    v27 = sub_226E97AE8(v24, v26, v64);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_226E8E000, v20, v21, "Alert Acknowledgement - Inserting %{public}s", v23, 0xCu);
    v28 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v23, -1, -1);

    (*(v51 + 8))(v18, v49);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
    (*(v15 + 8))(v18, v14);
  }

  v29 = v56;
  v30 = v56[12];
  v31 = v56[13];
  __swift_project_boxed_opaque_existential_0(v56 + 9, v30);
  v32 = v54;
  v52(v54, v55, v7);
  v33 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  (*(v8 + 32))(v34 + v33, v32, v7);

  v35 = v59;
  sub_226ECF5D8(sub_226FC2308, v34, v30, MEMORY[0x277D84F78] + 8, v31, v59);

  v36 = *__swift_project_boxed_opaque_existential_0(v29 + 15, v29[18]);
  v64[3] = type metadata accessor for SyncCoordinator();
  v64[4] = &off_283AA3680;
  v64[0] = v36;
  sub_226E91B50(v64, v63);
  v37 = swift_allocObject();
  sub_226F19770(v63, v37 + 16);

  __swift_destroy_boxed_opaque_existential_0(v64);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_226F3277C;
  *(v38 + 24) = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_226F325EC;
  *(v39 + 24) = v38;
  v40 = v60;
  v41 = v58;
  v42 = v62;
  (*(v60 + 16))(v58, v35, v62);
  v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v44 = (v57 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v40 + 32))(v45 + v43, v41, v42);
  v46 = (v45 + v44);
  *v46 = sub_226EBFB9C;
  v46[1] = v39;
  sub_227669270();
  return (*(v40 + 8))(v35, v42);
}

uint64_t sub_226FC1488(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93C8, &qword_227673E00);
  v8 = sub_227666710();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v12 + v11, a3, v8);
  sub_22755F0FC(v12, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    v14 = *__swift_project_boxed_opaque_existential_0((a2 + 120), *(a2 + 144));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_227670CD0;
    v16 = sub_226FC23D4(&qword_27D7B93D0, MEMORY[0x277D52578]);
    (*(v16 + 104))(v18, v8, v16);
    v17 = v18[1];
    *(v15 + 32) = v18[0];
    *(v15 + 40) = v17;
    sub_2272D7B74(0, v15, a1);
  }

  return result;
}

uint64_t sub_226FC1684(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227668A00();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC17A8, 0, 0);
}

uint64_t sub_226FC17A8()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v7[13];
  __swift_project_boxed_opaque_existential_0(v7 + 9, v7[12]);
  (*(v5 + 16))(v4, v9, v8);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[11] = v12;
  *(v12 + 16) = v7;
  (*(v5 + 32))(v12 + v11, v4, v8);
  v13 = *(v10 + 24);

  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_226FC19EC;

  return v17();
}

uint64_t sub_226FC19EC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_226FC1B9C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_226FC1B08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FC1B08()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *__swift_project_boxed_opaque_existential_0((v0[3] + 120), *(v0[3] + 144));
  sub_2271D7EE8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_226FC1B9C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_226FC1C14(void *a1, void *a2, uint64_t a3)
{
  v7 = *__swift_project_boxed_opaque_existential_0(a2 + 2, a2[5]);
  result = sub_2273624D8(a3, a1);
  if (!v3)
  {
    v9 = *__swift_project_boxed_opaque_existential_0(a2 + 15, a2[18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_227670CD0;
    v11 = sub_226FC23D4(&qword_27D7B93B8, MEMORY[0x277D53708]);
    v12 = *(v11 + 104);
    v13 = sub_227668A00();
    v12(v15, v13, v11);
    v14 = v15[1];
    *(v10 + 32) = v15[0];
    *(v10 + 40) = v14;
    sub_2272D7BA0(0, v10, a1);
  }

  return result;
}

uint64_t sub_226FC1D60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC1E20, 0, 0);
}

uint64_t sub_226FC1E20()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[12];
  v6 = v4[13];
  __swift_project_boxed_opaque_existential_0(v4 + 9, v5);
  v7 = *(v6 + 24);

  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = sub_227668A00();
  *v9 = v0;
  v9[1] = sub_226FC1FE0;
  v11 = v0[2];
  v12 = v0[3];

  return (v14)(v11, sub_226FC241C, v12, v10, v5, v6);
}

uint64_t sub_226FC1FE0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F9DA40, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = v3[3];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226FC212C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = *__swift_project_boxed_opaque_existential_0((a2 + 16), *(a2 + 40));
  result = sub_227362748(a1, v13);
  if (!v3)
  {
    sub_226FC2438(v13, v10);
    v16 = sub_227668A00();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10, 1, v16) == 1)
    {
      sub_226FC24A8(v10);
      sub_2276689D0();
      sub_2276689B0();
      return sub_226FC24A8(v13);
    }

    else
    {
      sub_226FC24A8(v13);
      return (*(v17 + 32))(a3, v10, v16);
    }
  }

  return result;
}

uint64_t sub_226FC23D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226FC2438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FC24A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_226FC2510(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v33 - v13;
  v15 = [a1 identifier];
  if (v15)
  {
    v42 = a2;
    v16 = v15;
    v41 = sub_22766C000();

    v17 = [a1 workoutIdentifier];
    if (v17)
    {
      v18 = v17;
      v40 = sub_22766C000();
      v43 = v19;

      v20 = [a1 requestingDeviceIdentifier];
      if (v20)
      {
        v39 = v5;
        v21 = v20;
        v38 = sub_22766C000();
        v23 = v22;

        v24 = [a1 downloadingDeviceIdentifier];
        if (v24)
        {
          v37 = v23;
          v25 = v24;
          v36 = sub_22766C000();
          v27 = v26;

          v28 = [a1 dateRequested];
          if (v28)
          {
            v29 = v28;
            sub_227662710();

            v35 = v27;
            v30 = v39;
            (*(v39 + 32))(v14, v12, v4);
            v44 = [a1 reason];
            sub_226FC3018();
            sub_227663AE0();
            v34 = v45;
            v33[3] = v46;
            v47 = [a1 loadStatus];
            sub_226F32864();
            sub_227663AE0();
            (*(v30 + 16))(v9, v14, v4);
            sub_2276633D0();

            (*(v30 + 8))(v14, v4);
            return;
          }
        }
      }
    }
  }

  v31 = sub_227664DD0();
  sub_226FC3230(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
  swift_willThrow();
}

size_t static AssetBundle.representativeSamples()()
{
  v43 = sub_227662750();
  v48 = *(v43 - 8);
  v0 = *(v48 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93E0, &qword_227673E18);
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v32 - v4;
  v40 = sub_227663480();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v49 = sub_22766C090();
  sub_226FC2FC4();
  sub_226FC3018();
  v11 = sub_227663B50();
  v12 = sub_22766C090();
  v13 = sub_22766C090();
  sub_226FC306C();
  sub_226F32864();
  v14 = sub_227663B50();
  v15 = sub_227662630();
  v70 = v49;
  v71[0] = v10;
  v71[1] = v71;
  v71[2] = &v70;
  v68 = v12;
  v69 = v11;
  v71[3] = &v69;
  v71[4] = &v68;
  v66 = v14;
  v67 = v13;
  v71[5] = &v67;
  v71[6] = &v66;
  v65 = v15;
  v71[7] = &v65;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v58 = v16;
  v59 = v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9400, &qword_227673E20);
  v61 = v16;
  v62 = v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9408, &qword_227673E28);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v17 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v51 = v17;
  v52 = v17;
  v53 = sub_226F5BF60(&qword_27D7B9410, &qword_27D7B9400, &qword_227673E20);
  v54 = v17;
  v55 = v17;
  v56 = sub_226F5BF60(&qword_27D7B9418, &qword_27D7B9408, &qword_227673E28);
  v57 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v50 = MEMORY[0x277D84F90];
    result = sub_226F1F568(0, v19, 0);
    v21 = 0;
    v22 = v50;
    v34 = v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v33 = (v48 + 16);
    v32 = v6 + 32;
    v39 = v2;
    v38 = v6;
    v37 = v18;
    v36 = v19;
    v35 = v9;
    while (v21 < *(v18 + 16))
    {
      sub_226FC3100(v34 + *(v2 + 72) * v21, v5);
      v23 = *(v5 + 1);
      v49 = *v5;
      v24 = *(v5 + 3);
      v48 = *(v5 + 2);
      v47 = *(v5 + 4);
      v46 = v5[40];
      v25 = *(v5 + 7);
      v45 = *(v5 + 6);
      v26 = *(v5 + 9);
      v44 = *(v5 + 8);
      v27 = *(v5 + 10);
      v28 = v5[88];
      (*v33)(v42, &v5[*(v41 + 128)], v43);

      v29 = v35;
      sub_2276633D0();
      sub_226FC3170(v5);
      v50 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_226F1F568(v30 > 1, v31 + 1, 1);
        v22 = v50;
      }

      ++v21;
      *(v22 + 16) = v31 + 1;
      result = (*(v38 + 32))(v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31, v29, v40);
      v2 = v39;
      v18 = v37;
      if (v36 == v21)
      {

        return v22;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_226FC2FC4()
{
  result = qword_27D7B93E8;
  if (!qword_27D7B93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B93E8);
  }

  return result;
}

unint64_t sub_226FC3018()
{
  result = qword_27D7B93F0;
  if (!qword_27D7B93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B93F0);
  }

  return result;
}

unint64_t sub_226FC306C()
{
  result = qword_27D7B93F8;
  if (!qword_27D7B93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B93F8);
  }

  return result;
}

uint64_t sub_226FC3100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93E0, &qword_227673E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FC3170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93E0, &qword_227673E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FC31D8(uint64_t a1)
{
  result = sub_226FC3230(&qword_2813A57F8, MEMORY[0x277D4FF88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FC3230(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226FC3278(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276633E0();
  v7 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663410();
  v8 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  v19 = sub_227663460();
  v20 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F0, qword_227671158);
  sub_227663AD0();
  v10 = v21;
  if (v21 >= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFFLL;
  }

  if (v10 <= 0xFFFFFFFF80000000)
  {
    v11 = 0xFFFFFFFF80000000;
  }

  else
  {
    v11 = v10;
  }

  [a1 setReason_];
  sub_227663420();
  v12 = sub_22766BFD0();

  [a1 setRequestingDeviceIdentifier_];

  sub_227663430();
  v13 = sub_22766BFD0();

  [a1 setDownloadingDeviceIdentifier_];

  v19 = sub_2276633F0();
  v20 = v14 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9420, &qword_227673E78);
  sub_227663AD0();
  v15 = v21;
  if (v21 >= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFFLL;
  }

  if (v15 <= 0xFFFFFFFF80000000)
  {
    v16 = 0xFFFFFFFF80000000;
  }

  else
  {
    v16 = v15;
  }

  [a1 setLoadStatus_];
  sub_227663400();
  v17 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setDateRequested_];
}

uint64_t sub_226FC3510()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = v1;
  v13 = *(v1 + 16);
  v14 = *(v1 + 32);
  v28 = v12;
  ObjectType = swift_getObjectType();
  v30 = v13;
  v16 = *MEMORY[0x277D4E500];
  v29 = v3[13];
  v29(v6, v16, v2);
  swift_allocObject();
  swift_weakInit();
  sub_227663FA0();
  swift_unknownObjectRetain_n();
  v26 = ObjectType;
  v27 = v14;
  sub_227669E90();

  v17 = v3[1];
  v24 = v2;
  v25 = v17;
  v17(v6, v2);
  swift_unknownObjectRelease();
  v30 = v13;
  v18 = v2;
  v19 = v29;
  v29(v6, *MEMORY[0x277D4E720], v18);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v20 = v24;
  v21 = v25;
  v25(v6, v24);

  swift_unknownObjectRelease();
  v30 = v13;
  v19(v6, *MEMORY[0x277D4E538], v20);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v21(v6, v20);

  return swift_unknownObjectRelease();
}

uint64_t sub_226FC38EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
    v11 = sub_227663FA0();

    sub_226ECF5D8(sub_226FC3F50, v8, v9, v11, v10, a1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_226FC3B44@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v7);

    v3 = *__swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_226E96C50(a1);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_226FC3C64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v9);

    sub_226ECF5D8(sub_226FC3F34, v8, v9, MEMORY[0x277D84F78] + 8, v10, a1);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_226FC3EB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_226FC3F6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F2B8];
  v3 = sub_227669DF0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_226FC4018(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v16 = [a1 platform];
  if (!v16)
  {
    goto LABEL_6;
  }

  v23[1] = a2;
  v17 = v16;
  v23[0] = sub_22766C000();
  v24 = v18;

  v27 = a1;
  v19 = [a1 url];
  if (v19)
  {
    v20 = v19;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_226E97D1C(v7, &unk_27D7BB570, &unk_227670FC0);
    a1 = v27;
LABEL_6:
    v21 = sub_227664DD0();
    sub_226FC4950(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
    swift_willThrow();

    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  v25 = v23[0];
  v26 = v24;
  sub_226FC47F4();
  sub_227663AE0();
  (*(v9 + 16))(v13, v15, v8);
  sub_227665380();

  (*(v9 + 8))(v15, v8);
}

size_t static SocialMediaHandle.representativeSamples()()
{
  v34 = sub_2276624A0();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9428, &qword_227673F20);
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v25 - v5;
  v31 = sub_2276653A0();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226FC47A0();
  sub_226FC47F4();
  v11 = sub_227663B50();
  v40 = sub_2276622F0();
  v41[0] = v11;
  v41[1] = v41;
  v41[2] = &v40;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9440, &qword_227673F28);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v36 = sub_226F5BF60(&qword_27D7B9448, &qword_27D7B9440, &qword_227673F28);
  v37 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v30 = v10;
    v35 = MEMORY[0x277D84F90];
    result = sub_226F1F288(0, v13, 0);
    v15 = 0;
    v16 = v35;
    v27 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v28 = v12;
    v29 = v7;
    v25 = v7 + 32;
    v26 = (v0 + 16);
    v17 = v30;
    while (v15 < *(v12 + 16))
    {
      v18 = v13;
      v19 = v3;
      sub_226FC4888(v27 + *(v3 + 72) * v15, v6);
      v21 = *v6;
      v20 = *(v6 + 1);
      v22 = v6[16];
      (*v26)(v33, &v6[*(v32 + 48)], v34);
      sub_226EB396C(v21, v20, v22);
      sub_227665380();
      sub_226E97D1C(v6, &qword_27D7B9428, &qword_227673F20);
      v35 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1F288(v23 > 1, v24 + 1, 1);
        v16 = v35;
      }

      ++v15;
      *(v16 + 16) = v24 + 1;
      result = (*(v29 + 32))(v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, v17, v31);
      v13 = v18;
      v3 = v19;
      v12 = v28;
      if (v18 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_226FC47A0()
{
  result = qword_27D7B9430;
  if (!qword_27D7B9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9430);
  }

  return result;
}

unint64_t sub_226FC47F4()
{
  result = qword_27D7B9438;
  if (!qword_27D7B9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9438);
  }

  return result;
}

uint64_t sub_226FC4888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9428, &qword_227673F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FC48F8(uint64_t a1)
{
  result = sub_226FC4950(&qword_27D7B9450, MEMORY[0x277D51610]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FC4950(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226FC4998(void *a1)
{
  v14[0] = a1;
  v1 = sub_2276624A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227665390();
  v8 = v7;
  v14[3] = v6;
  v14[4] = v7;
  v10 = v9 & 1;
  v15 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF260, &qword_227673F78);
  sub_227663AD0();
  v11 = sub_22766BFD0();
  sub_226EB2DFC(v6, v8, v10);

  v12 = v14[0];
  [v14[0] setPlatform_];

  sub_227665370();
  sub_227662390();
  (*(v2 + 8))(v5, v1);
  v13 = sub_22766BFD0();

  [v12 setUrl_];
}

void sub_226FC4B50(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 value];

  *a2 = v4 & ~(v4 >> 63);
}

id sub_226FC4BA0(void *a1)
{
  if (*v1 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = *v1;
  }

  return [a1 setValue_];
}

uint64_t sub_226FC4BE4()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

uint64_t sub_226FC4C58()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_226FC4CA0()
{
  result = qword_28139A450;
  if (!qword_28139A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A450);
  }

  return result;
}

unint64_t sub_226FC4CF4(uint64_t a1)
{
  result = sub_226FC4D1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226FC4D1C()
{
  result = qword_28139A460;
  if (!qword_28139A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A460);
  }

  return result;
}

uint64_t sub_226FC4D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EED0(0, v1, 0);
    v3 = a1;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_226F1EED0((v8 > 1), v5 + 1, 1);
        v3 = a1;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_226FC4E64()
{
  sub_226F5D220();
  v0 = sub_22766CFA0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    v2 = v0;
    sub_226F1EED0(0, v1, 0);
    v3 = v2;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_226F1EED0((v8 > 1), v5 + 1, 1);
        v3 = v2;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 8;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

unint64_t sub_226FC4F70()
{
  result = qword_28139B8D0;
  if (!qword_28139B8D0)
  {
    sub_227664DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B8D0);
  }

  return result;
}

uint64_t sub_226FC4FD8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_226ED25F8(*(a1 + 56) + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_226ED25F8(&v36, &v29);
    if (v30)
    {
      sub_226F04970(&v29, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_226F04970(v34, v31);
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {

        sub_226FE4910(v17 + 1, 1);
        v2 = v40;
      }

      else
      {
      }

      v18 = v32;
      v19 = *(v2 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v2 + 48) + 16 * v24) = v18;
      sub_226F04970(v31, (*(v2 + 56) + 32 * v24));
      ++*(v2 + 16);
      v10 = v33;
    }

    else
    {

      sub_226E97D1C(&v35, &qword_27D7B9470, &qword_227689B70);
      v10 = &v29;
    }

    result = sub_226E97D1C(v10, &unk_27D7BC990, &qword_227670A30);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_226FC52A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v38 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9458, &unk_227674080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227674070;
  *(inited + 32) = sub_227669CA0();
  v38[1] = inited + 32;
  *(inited + 40) = v8;
  v9 = sub_227668E00();
  v10 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 80) = sub_227669C90();
  *(inited + 88) = v12;
  v13 = sub_227668E10();
  *(inited + 120) = v10;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  v15 = *MEMORY[0x277CCE060];
  *(inited + 128) = sub_22766C000();
  *(inited + 136) = v16;
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 2;
  *(inited + 176) = sub_227669CB0();
  *(inited + 184) = v17;
  sub_227668DE0();
  v18 = sub_227664950();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v6, 1, v18) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B8CC8, &unk_227689B50);
    *(inited + 192) = 0u;
    *(inited + 208) = 0u;
  }

  else
  {
    v21 = sub_227664930();
    *(inited + 216) = MEMORY[0x277D837D0];
    *(inited + 192) = v21;
    *(inited + 200) = v22;
    (*(v19 + 8))(v6, v18);
  }

  *(inited + 224) = sub_227669CC0();
  *(inited + 232) = v23;
  sub_227668DE0();
  if (v20(v4, 1, v18) == 1)
  {
    sub_226E97D1C(v4, &qword_27D7B8CC8, &unk_227689B50);
    v24 = MEMORY[0x277D837D0];
LABEL_8:
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
    goto LABEL_9;
  }

  v25 = sub_227664910();
  v27 = v26;
  (*(v19 + 8))(v4, v18);
  v24 = MEMORY[0x277D837D0];
  if (!v27)
  {
    goto LABEL_8;
  }

  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = v25;
  *(inited + 248) = v27;
LABEL_9:
  v28 = *MEMORY[0x277CCC440];
  *(inited + 272) = sub_22766C000();
  *(inited + 280) = v29;
  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = 1;
  v30 = *MEMORY[0x277CCC438];
  *(inited + 320) = sub_22766C000();
  *(inited + 328) = v31;
  v32 = sub_227668E10();
  *(inited + 360) = v24;
  *(inited + 336) = v32;
  *(inited + 344) = v33;
  v34 = sub_227148D38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9460, &unk_227689B60);
  swift_arrayDestroy();
  v35 = sub_227668E20();

  v36 = sub_226FC5614(v35, v34);

  swift_bridgeObjectRelease_n();
  return v36;
}

id sub_226FC5614(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v53 = sub_227662750();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v53);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v41 - v9;
  v10 = sub_227666BF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v61 = MEMORY[0x277D84F90];
    v58 = v5;
    sub_22766CF30();
    v17 = a1 + 56;
    v18 = -1 << *(a1 + 32);
    v19 = sub_22766CC90();
    v59 = *(a1 + 36);
    sub_226FC5AF8();
    result = swift_getObjCClassFromMetadata();
    v20 = 0;
    v49 = v11 + 16;
    v50 = result;
    v47 = (v11 + 8);
    v48 = (v58 + 8);
    v42 = a1 + 64;
    v43 = v15;
    v44 = v11;
    v45 = a1 + 56;
    v60 = v14;
    v46 = a1;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(a1 + 32))
    {
      if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_23;
      }

      if (v59 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v57 = 1 << v19;
      v58 = v19 >> 6;
      v56 = v20;
      (*(v11 + 16))(v14, *(a1 + 48) + *(v11 + 72) * v19, v10);
      result = [v50 deepBreathingSessionType];
      if (!result)
      {
        goto LABEL_28;
      }

      v22 = result;
      v23 = v10;
      v24 = v51;
      sub_227666BE0();
      v25 = v52;
      sub_227666BC0();
      sub_226FC4FD8(v54);
      v55 = v3;
      v26 = sub_2276626A0();
      v27 = sub_2276626A0();
      v28 = sub_22766BE90();

      v29 = [objc_opt_self() categorySampleWithType:v22 value:0 startDate:v26 endDate:v27 metadata:v28];

      v30 = *v48;
      v31 = v25;
      v14 = v60;
      v32 = v53;
      (*v48)(v31, v53);
      v30(v24, v32);
      (*v47)(v14, v23);
      sub_22766CF00();
      v33 = *(v61 + 16);
      sub_22766CF40();
      sub_22766CF50();
      result = sub_22766CF10();
      a1 = v46;
      v21 = 1 << *(v46 + 32);
      if (v19 >= v21)
      {
        goto LABEL_25;
      }

      v17 = v45;
      v34 = *(v45 + 8 * v58);
      if ((v34 & v57) == 0)
      {
        goto LABEL_26;
      }

      if (v59 != *(v46 + 36))
      {
        goto LABEL_27;
      }

      v10 = v23;
      v35 = v34 & (-2 << (v19 & 0x3F));
      if (v35)
      {
        v21 = __clz(__rbit64(v35)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v3 = v55;
        v11 = v44;
      }

      else
      {
        v36 = v58 << 6;
        v37 = v58 + 1;
        v38 = (v42 + 8 * v58);
        v3 = v55;
        v11 = v44;
        while (v37 < (v21 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_226EB526C(v19, v59, 0);
            v21 = __clz(__rbit64(v39)) + v36;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v19, v59, 0);
LABEL_19:
        v14 = v60;
      }

      v20 = v56 + 1;
      v19 = v21;
      if (v56 + 1 == v43)
      {
        return v61;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

unint64_t sub_226FC5AF8()
{
  result = qword_27D7B9468;
  if (!qword_27D7B9468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7B9468);
  }

  return result;
}

uint64_t sub_226FC5B44(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  type metadata accessor for PersistenceQuery();
  v9 = a2;
  v10 = a3;

  return sub_226FDD19C(v9, v10, a4, a5);
}

void sub_226FC5BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a7;
  v63 = a4;
  v64 = a2;
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v51 - v16;
  v60 = v17;
  v18 = sub_22766CB90();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v51 - v20;
  AssociatedConformanceWitness = *(a5 - 8);
  v22 = *(AssociatedConformanceWitness + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getAssociatedTypeWitness();
  v57 = *(v26 - 8);
  v27 = *(v57 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v51 - v28;
  v30 = a1;
  v31 = a1;
  v32 = v65;
  v33 = sub_226F5B58C(v31, a3, v63, a5, a6, v65);
  if (v33)
  {
    if (v33 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v52 = v30;
    v62 = v29;
    v63 = v26;
    (*(v32 + 32))();
    if (sub_227669C10())
    {
      v34 = sub_227664DD0();
      sub_226FC4F70();
      swift_allocError();
      (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51010], v34);
      swift_willThrow();
    }

    else
    {
      (*(AssociatedConformanceWitness + 16))(v25, v52, a5);
      sub_22766C230();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_22766CBB0();
      v36 = v58;
      v37 = *(v58 + 48);
      v38 = v60;
      if (v37(v21, 1, v60) == 1)
      {
        v39 = v61;
LABEL_11:
        v61 = v39;
        (*(v57 + 8))(v62, v63);
        sub_226EDC474(0);
      }

      else
      {
        v40 = *(v36 + 32);
        v58 = v36 + 8;
        v41 = v56;
        v39 = v61;
        while (1)
        {
          v40(v41, v21, v38);
          v42 = sub_2271259DC(v64, v38, v65);
          if (v39)
          {
            break;
          }

          (*v58)(v41, v38);
          sub_22766CBB0();
          if (v37(v21, 1, v38) == 1)
          {
            goto LABEL_11;
          }
        }

        v43 = v53;
        sub_22766A770();
        v44 = v39;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v39;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v47, 0xCu);
          sub_226F2534C(v48);
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v54 + 8))(v43, v55);
        swift_willThrow();
        sub_226EDC474(0);
        (*v58)(v41, v38);
        (*(v57 + 8))(v62, v63);
      }
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_226FC6214(uint64_t *a1, int a2)
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

uint64_t sub_226FC625C(uint64_t result, int a2, int a3)
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

uint64_t sub_226FC62AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D08];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_226FC6320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227666620();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226FC6348(uint64_t a1)
{
  *(a1 + 24) = sub_226FC63B0(&qword_2813A56B0);
  result = sub_226FC63B0(&qword_2813A56A8);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226FC63B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227666650();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226FC63F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  sub_22766D370();
  sub_22766C100();
  MEMORY[0x22AA996B0](v3);
  sub_22766D3A0();
  return sub_22766D3F0();
}

uint64_t sub_226FC6470()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  sub_22766C100();
  MEMORY[0x22AA996B0](v3);
  return sub_22766D3A0();
}

uint64_t sub_226FC64BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  sub_22766D370();
  sub_22766C100();
  MEMORY[0x22AA996B0](v3);
  sub_22766D3A0();
  return sub_22766D3F0();
}

BOOL sub_226FC6534(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_226FAE7D4(v5, v7);
}

unint64_t sub_226FC6584()
{
  result = qword_27D7B9478;
  if (!qword_27D7B9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9478);
  }

  return result;
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

uint64_t sub_226FC65EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_226FC6634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226FC6688()
{
  v0 = sub_2276668F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v6 + 104))(v9, *MEMORY[0x277D4E168], v5);
  sub_22766A3D0();
  sub_227669650();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226FC685C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v42 = sub_22766A3F0();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2276668F0();
  v46 = *(v40 - 8);
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = v37 - v10;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  sub_22766A730();
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_226E8E000, v18, v19, "Received AudioLanguagePreference Update. Sending Event.", v20, 2u);
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

  (*(v12 + 8))(v15, v11);

  result = sub_2273FB5C0(v21, v16);
  v23 = 0;
  v25 = result + 56;
  v24 = *(result + 56);
  v45 = result;
  v26 = 1 << *(result + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v37[1] = v46 + 32;
  v37[2] = v46 + 16;
  v37[0] = v4 + 8;
  v30 = v38;
  if ((v27 & v24) != 0)
  {
    do
    {
      v31 = v23;
LABEL_11:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v46;
      v34 = v40;
      (*(v46 + 16))(v30, *(v45 + 48) + *(v46 + 72) * (v32 | (v31 << 6)), v40);
      swift_getObjectType();
      (*(v33 + 32))(v39, v30, v34);
      v35 = v41;
      sub_22766A3E0();
      v36 = v42;
      sub_2276699D0();
      result = (*v37[0])(v35, v36);
    }

    while (v28);
  }

  while (1)
  {
    v31 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
    }

    v28 = *(v25 + 8 * v31);
    ++v23;
    if (v28)
    {
      v23 = v31;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226FC6C3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v2 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_226FC6CB8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_22722BFF4();
  if (!v2)
  {
    v6 = result;
    if (*(result + 16) && (v7 = sub_226F3AA10(*(a1 + 72)), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + v7);
    }

    else
    {

      result = sub_227665790();
      v9 = result & 1;
    }

    *a2 = v9;
  }

  return result;
}

uint64_t sub_226FC6D5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC6E1C, 0, 0);
}

uint64_t sub_226FC6E1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A750();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[13];
  v6 = v4[14];
  __swift_project_boxed_opaque_existential_0(v4 + 10, v5);
  v7 = *(v6 + 24);

  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = sub_2276668F0();
  *v9 = v0;
  v9[1] = sub_226FC1FE0;
  v11 = v0[2];
  v12 = v0[3];

  return (v14)(v11, sub_226FC9610, v12, v10, v5, v6);
}

uint64_t sub_226FC6FDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = *__swift_project_boxed_opaque_existential_0((a2 + 32), *(a2 + 56));
  result = sub_22722B004(a1, v10);
  if (!v3)
  {
    v13 = sub_2276668F0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_226E97D1C(v10, &qword_27D7B94C0, &unk_2276874A0);
      v15 = sub_2276654A0();
      sub_226FC962C(&qword_27D7B94C8, MEMORY[0x277D516B0]);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D516A0], v15);
      return swift_willThrow();
    }

    else
    {
      return (*(v14 + 32))(a3, v10, v13);
    }
  }

  return result;
}

uint64_t sub_226FC71E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A3F0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2276668F0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();
  v8 = sub_22766B390();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FC7360, 0, 0);
}

uint64_t sub_226FC7360()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v9 = v0[2];
  v8 = v0[3];
  sub_22766A750();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v8[14];
  __swift_project_boxed_opaque_existential_0(v8 + 10, v8[13]);
  v11 = *(v5 + 16);
  v0[14] = v11;
  v0[15] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v9, v7);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[16] = v13;
  *(v13 + 16) = v8;
  (*(v5 + 32))(v13 + v12, v4, v7);
  v14 = *(v10 + 24);

  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_226FC75B0;

  return v18();
}

uint64_t sub_226FC75B0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_226FC77F8;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_226FC76CC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FC76CC()
{
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[13];
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  v8 = *__swift_project_boxed_opaque_existential_0(v7 + 16, v7[19]);
  sub_2271D7EE8();
  v9 = v7[2];
  v10 = v7[3];
  swift_getObjectType();
  v13(v1, v6, v3);
  sub_22766A3E0();
  sub_2276699D0();
  (*(v4 + 8))(v2, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_226FC77F8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

void sub_226FC7888(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22722C54C(a3, a1);
  if (!v3)
  {
    v6 = *__swift_project_boxed_opaque_existential_0((a2 + 128), *(a2 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_227670CD0;
    *(v7 + 32) = sub_2276668E0();
    *(v7 + 40) = v8;
    sub_2272D7BCC(0, v7, a1);
  }
}

uint64_t sub_226FC79E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v28 = a7;
  v27 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = *__swift_project_boxed_opaque_existential_0((a2 + 32), *(a2 + 56));
  result = a6(a1, a3);
  if (!v8)
  {
    v21 = v27;
    v22 = v28(0);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v18, 1, v22) == 1)
    {
      sub_226E97D1C(v18, a4, a5);
      v24 = sub_227666510();
      sub_226FC962C(&qword_27D7B94A8, MEMORY[0x277D52348]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D52340], v24);
      return swift_willThrow();
    }

    else
    {
      return (*(v23 + 32))(v21, v18, v22);
    }
  }

  return result;
}

uint64_t sub_226FC7C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v35 = a2;
  v4 = sub_227666F20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A750();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = v3[13];
  v30 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v17);
  v18 = v4;
  (*(v5 + 16))(v7, v32, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v5 + 32))(v20 + v19, v7, v18);

  v21 = v31;
  sub_226ECF5D8(sub_226FC94D0, v20, v17, MEMORY[0x277D84F78] + 8, v30, v31);

  v22 = swift_allocObject();
  *(v22 + 16) = sub_226FC9510;
  *(v22 + 24) = v3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_226F5B0EC;
  *(v23 + 24) = v22;
  v25 = v33;
  v24 = v34;
  (*(v8 + 16))(v33, v21, v34);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v26, v25, v24);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_226F32FEC;
  v28[1] = v23;

  sub_227669270();
  return (*(v8 + 8))(v21, v24);
}

uint64_t sub_226FC8098(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v24 = sub_227668D10();
  v23 = *(v24 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9498, &qword_227679AA0);
  v10 = sub_227666F20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v21 = xmmword_227670CD0;
  *(v14 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v14 + v13, a3, v10);
  sub_227560908(v14, v9[1], *(v9 + 16), v9[3]);

  if (!v3)
  {
    v16 = *__swift_project_boxed_opaque_existential_0((v22 + 128), *(v22 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v17 = swift_allocObject();
    *(v17 + 16) = v21;
    sub_227666EF0();
    v18 = sub_227668D00();
    v20 = v19;
    (*(v23 + 8))(v8, v24);
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_2272D7BF8(0, v17, a1);
  }

  return result;
}

uint64_t sub_226FC82F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v35 = a2;
  v4 = sub_227667170();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A750();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = v3[13];
  v30 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v17);
  v18 = v4;
  (*(v5 + 16))(v7, v32, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v5 + 32))(v20 + v19, v7, v18);

  v21 = v31;
  sub_226ECF5D8(sub_226FC9490, v20, v17, MEMORY[0x277D84F78] + 8, v30, v31);

  v22 = swift_allocObject();
  *(v22 + 16) = sub_226FC9674;
  *(v22 + 24) = v3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_226F5B0EC;
  *(v23 + 24) = v22;
  v25 = v33;
  v24 = v34;
  (*(v8 + 16))(v33, v21, v34);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v26, v25, v24);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_226F32FEC;
  v28[1] = v23;

  sub_227669270();
  return (*(v8 + 8))(v21, v24);
}

uint64_t sub_226FC8724(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v24 = sub_227668D10();
  v23 = *(v24 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9490, &unk_227674280);
  v10 = sub_227667170();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v21 = xmmword_227670CD0;
  *(v14 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v14 + v13, a3, v10);
  sub_227560FC8(v14, v9[1], *(v9 + 16), v9[3]);

  if (!v3)
  {
    v16 = *__swift_project_boxed_opaque_existential_0((v22 + 128), *(v22 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v17 = swift_allocObject();
    *(v17 + 16) = v21;
    sub_227667140();
    v18 = sub_227668D00();
    v20 = v19;
    (*(v23 + 8))(v8, v24);
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_2272D7C24(0, v17, a1);
  }

  return result;
}

uint64_t sub_226FC897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v35 = a2;
  v4 = sub_2276675F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A750();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = v3[13];
  v30 = v3[14];
  __swift_project_boxed_opaque_existential_0(v3 + 10, v17);
  v18 = v4;
  (*(v5 + 16))(v7, v32, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v5 + 32))(v20 + v19, v7, v18);

  v21 = v31;
  sub_226ECF5D8(sub_226FC9450, v20, v17, MEMORY[0x277D84F78] + 8, v30, v31);

  v22 = swift_allocObject();
  *(v22 + 16) = sub_226FC9674;
  *(v22 + 24) = v3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_226EB4A28;
  *(v23 + 24) = v22;
  v25 = v33;
  v24 = v34;
  (*(v8 + 16))(v33, v21, v34);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v26, v25, v24);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_226EBFB9C;
  v28[1] = v23;

  sub_227669270();
  return (*(v8 + 8))(v21, v24);
}

uint64_t sub_226FC8DB0(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v24 = sub_227668D10();
  v23 = *(v24 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9488, &unk_227674270);
  v10 = sub_2276675F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v21 = xmmword_227670CD0;
  *(v14 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v14 + v13, a3, v10);
  sub_227561688(v14, v9[1], *(v9 + 16), v9[3]);

  if (!v3)
  {
    v16 = *__swift_project_boxed_opaque_existential_0((v22 + 128), *(v22 + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v17 = swift_allocObject();
    *(v17 + 16) = v21;
    sub_2276675C0();
    v18 = sub_227668D00();
    v20 = v19;
    (*(v23 + 8))(v8, v24);
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_2272D7C50(0, v17, a1);
  }

  return result;
}

void sub_226FC9008()
{
  v1 = sub_22722BEA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 30324;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = sub_2276657B0();
  *(inited + 56) = v3;
  v4 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE670, &unk_227674260);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v1;
  sub_226FC91B0(v4, sub_2270ABE5C, 0, isUniquelyReferenced_nonNull_native, &v9);

  if (v0)
  {

    __break(1u);
  }

  else
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_22766BE90();

    sub_227669BF0();
    v8 = sub_22766BFD0();

    [v6 setObject:v7 forKey:v8];
  }
}

uint64_t sub_226FC91B0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_226E92000(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_226FF129C();
      }
    }

    else
    {
      v34 = v56;
      sub_226FE4E4C(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_226E92000(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_226EBB21C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_226FC962C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226FC967C()
{
  v0 = sub_2276658F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 280);
    v12 = *(result + 288);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v6 + 104))(v9, *MEMORY[0x277D4E118], v5);
    sub_22766A250();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_226FC9890()
{
  v0 = sub_227669910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 280);
    v7 = *(result + 288);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v1 + 104))(v4, *MEMORY[0x277D4E140], v0);
    sub_227667CF0();
    sub_227669650();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_226FC9A0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_22766A210();
    sub_226FC9B88(v6, v7, v4);

    v8 = sub_227669290();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    v8(sub_226E9F7B0, v9);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_226FC9B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v100 = a1;
  v94 = a3;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v107 = *(v87 - 8);
  v6 = *(v107 + 64);
  v7 = MEMORY[0x28223BE20](v87);
  v101 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v106 = &v83 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v83 - v11;
  MEMORY[0x28223BE20](v10);
  v102 = &v83 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v90 = *(v93 - 8);
  v91 = v93 - 8;
  v92 = v90;
  v13 = *(v90 + 64);
  v14 = MEMORY[0x28223BE20](v93 - 8);
  v89 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v103 = &v83 - v16;
  v17 = sub_227669910();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22766B390();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v23 + 8))(v26, v22);
  v27 = v4[35];
  v28 = v4[36];
  swift_getObjectType();
  (*(v18 + 104))(v21, *MEMORY[0x277D4E108], v17);
  v29 = v100;
  v108 = v100;
  v109 = a2;
  sub_227669650();
  (*(v18 + 8))(v21, v17);
  v86 = v4;
  v30 = __swift_project_boxed_opaque_existential_0(v4 + 17, v4[20]);
  v84 = *__swift_project_boxed_opaque_existential_0((*v30 + 16), *(*v30 + 40));
  v31 = *(v84 + 16);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = a2;
  v85 = a2;

  v33 = v106;
  sub_227669280();
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = 32;
  v35 = v107;
  v36 = *(v107 + 16);
  v96 = v107 + 16;
  v105 = v36;
  v37 = v101;
  v38 = v87;
  v36(v101, v33, v87);
  v39 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v95 = *(v35 + 80);
  v40 = v6 + v39;
  v41 = v39;
  v104 = v39;
  v42 = (v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = v42;
  v43 = swift_allocObject();
  v98 = *(v35 + 32);
  v99 = v35 + 32;
  v98(v43 + v41, v37, v38);
  v44 = (v43 + v42);
  *v44 = sub_226FCBEAC;
  v44[1] = v34;
  v45 = v31;
  v46 = v88;
  sub_227669270();
  v47 = v35 + 8;
  v48 = *(v35 + 8);
  v48(v33, v38);
  v49 = v102;
  sub_2272A3158(v46, v102);
  v50 = v38;
  v48(v46, v38);
  v83 = v48;
  v107 = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_226FCBB68;
  *(v51 + 24) = 0;
  v105(v46, v49, v38);
  v52 = v97;
  v53 = swift_allocObject();
  v98(v53 + v104, v46, v38);
  v54 = (v53 + v52);
  *v54 = sub_226FCBEE0;
  v54[1] = v51;
  sub_227669270();
  v48(v49, v38);
  v55 = __swift_project_boxed_opaque_existential_0(v86 + 17, v86[20]);
  v86 = *__swift_project_boxed_opaque_existential_0((*v55 + 16), *(*v55 + 40));
  v56 = v86[3];
  v57 = swift_allocObject();
  *(v57 + 16) = v100;
  *(v57 + 24) = v85;

  v58 = v106;
  sub_227669280();
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  *(v59 + 24) = 19;
  v60 = v101;
  v105(v101, v58, v38);
  v61 = v97;
  v62 = swift_allocObject();
  v63 = v98;
  v98(v62 + v104, v60, v50);
  v64 = (v62 + v61);
  *v64 = sub_226FCBF10;
  v64[1] = v59;

  sub_227669270();
  v65 = v83;
  v83(v106, v50);
  v66 = v102;
  sub_2272A3158(v46, v102);
  v65(v46, v50);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_226FCBB88;
  *(v67 + 24) = 0;
  v105(v46, v66, v50);
  v68 = swift_allocObject();
  v63(v68 + v104, v46, v50);
  v69 = (v68 + v61);
  *v69 = sub_226FCBFE8;
  v69[1] = v67;
  v70 = v89;
  sub_227669270();
  v65(v66, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v71 = *(v90 + 72);
  v72 = v92;
  v73 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_2276728D0;
  v75 = v74 + v73;
  v76 = v72;
  v77 = *(v72 + 16);
  v78 = v103;
  v79 = v93;
  v77(v75, v103, v93);
  v77(v75 + v71, v70, v79);
  sub_226EA1CF4();
  v80 = sub_22766C950();
  sub_227669A50();
  sub_227669250();

  v81 = *(v76 + 8);
  v81(v70, v79);
  return (v81)(v78, v79);
}

uint64_t sub_226FCA5B0()
{
  v0 = sub_227669910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 280);
    v7 = *(result + 288);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v1 + 104))(v4, *MEMORY[0x277D4E0B8], v0);
    sub_227669660();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t *sub_226FCA6FC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[22];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v2 = v0[29];

  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  v3 = v0[35];
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC15SeymourServices25ContentAvailabilitySystem__fakeFitnessModeString;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D8, &qword_2276743E0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_226FCA7B0()
{
  sub_226FCA6FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_226FCA810()
{
  sub_226FCA8E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_226FCA8E0()
{
  if (!qword_2813A54B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_226FCA9AC(&qword_28139D300);
    sub_226FCA9AC(&qword_28139D2F0);
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A54B0);
    }
  }
}

uint64_t sub_226FCA9AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBC30, &unk_2276720D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226FCAA18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B94E0, &qword_2276746F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = "SeymourServices/ContentAvailabilitySystem.swift";
  *(v15 + 24) = 47;
  *(v15 + 32) = 2;
  *(v15 + 40) = 84;
  *(v15 + 48) = &unk_227674408;
  *(v15 + 56) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  sub_227669270();
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v7, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_226FCAF68;
  v18[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226FCAD38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226FCAD58, 0, 0);
}

uint64_t sub_226FCAD58()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_226FCADF8(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_226FCAF44, 0, 0);
  }
}

uint64_t sub_226FCAF68(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);

  return sub_227669270();
}

uint64_t sub_226FCAFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = sub_22766B3B0();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22766B3F0();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B3C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_226EA1CF4();
  (*(v14 + 104))(v17, *MEMORY[0x277D851B8], v13);

  v19 = sub_22766C980();
  (*(v14 + 8))(v17, v13);
  v20 = swift_allocObject();
  v20[2] = v23;
  v20[3] = sub_226E9F728;
  v20[4] = v18;
  aBlock[4] = sub_226FCBE44;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_3;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_22766B3D0();
  v26 = MEMORY[0x277D84F90];
  sub_226E9EBF8(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v8, v21);
  _Block_release(v21);

  (*(v25 + 8))(v8, v5);
  (*(v9 + 8))(v12, v24);
}

void sub_226FCB3B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22766A890();
  v6 = sub_22766BFD0();

  v7 = [a1 arrayForKey_];

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_226FCBE50;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_226FCB990;
  v10[3] = &block_descriptor_37;
  v9 = _Block_copy(v10);

  [v7 valueWithCompletion_];
  _Block_release(v9);
}

void sub_226FCB4E4(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276622D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (!a3)
    {
      sub_226FCBE58();
      v30 = swift_allocError();
      goto LABEL_17;
    }

LABEL_16:
    v30 = a3;
LABEL_17:
    v31 = a3;
    sub_22766A730();
    v32 = v30;
    v33 = sub_22766B380();
    v34 = sub_22766C890();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = a5;
      v36 = v35;
      v37 = swift_slowAlloc();
      v47 = a4;
      v38 = v37;
      *&v52 = v37;
      *v36 = 136446210;
      swift_getErrorValue();
      v39 = MEMORY[0x22AA995D0](v54, v55);
      v41 = sub_226E97AE8(v39, v40, &v52);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_226E8E000, v33, v34, "Failed to fetch fitness-supported-audio-dubbed-languages: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v42 = v38;
      a4 = v47;
      MEMORY[0x22AA9A450](v42, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    v43 = v30;
    a4(v30, 1);

    return;
  }

  if (a3)
  {
    goto LABEL_16;
  }

  v48 = a5;
  v19 = a1;
  sub_22766CAD0();
  sub_226E9EBF8(&qword_28139BDF0, MEMORY[0x277CC9178]);
  sub_22766CBB0();
  if (v53)
  {
    v20 = MEMORY[0x277D84F90];
    v47 = v19;
    do
    {
      v21 = a4;
      while (1)
      {
        sub_226F04970(&v52, &v49);
        if (swift_dynamicCast())
        {
          v22 = v51;
          if (v51)
          {
            break;
          }
        }

        sub_22766CBB0();
        if (!v53)
        {
          a4 = v21;
          v19 = v47;
          goto LABEL_23;
        }
      }

      v23 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_226EB3F78(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v45 = v26 + 1;
        v29 = sub_226EB3F78((v25 > 1), v26 + 1, 1, v20);
        v27 = v45;
        v20 = v29;
      }

      *(v20 + 2) = v27;
      v28 = &v20[16 * v26];
      *(v28 + 4) = v46;
      *(v28 + 5) = v22;
      sub_22766CBB0();
      a4 = v21;
      v19 = v47;
    }

    while (v53);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_23:
  (*(v15 + 8))(v18, v14);
  v44 = sub_226F3E6A8(v20);

  a4(v44, 0);
}

void sub_226FCB990(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_226FCBA24(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  v6 = *(v3 + 80);
  v7 = *(v3 + 56);

  v8 = *(v5 + 8);
  if (a1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  return v8(v9);
}

uint64_t sub_226FCBBA8(uint64_t *a1, const char *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  sub_22766A730();

  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19[0] = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v19[1] = v2;
    v17 = v16;
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_226E97AE8(v10, v11, &v20);
    _os_log_impl(&dword_226E8E000, v12, v13, v19[0], v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226FCBD64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226FCAD38(a1, v1);
}

unint64_t sub_226FCBE58()
{
  result = qword_27D7B94F8;
  if (!qword_27D7B94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B94F8);
  }

  return result;
}

uint64_t sub_226FCBF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t type metadata accessor for EngagementBadgeRemoved()
{
  result = qword_28139FF30;
  if (!qword_28139FF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226FCC07C()
{
  result = sub_2276646D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226FCC0E8(char *a1, char *a2)
{
  if (*&aBattery_2[8 * *a1] == *&aBattery_2[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_22766D190();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_226FCC150()
{
  v1 = *v0;
  sub_22766D370();
  v2 = *&aBattery_2[8 * v1];
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_226FCC1AC()
{
  v1 = *&aBattery_2[8 * *v0];
  sub_22766C100();
}

uint64_t sub_226FCC1EC()
{
  v1 = *v0;
  sub_22766D370();
  v2 = *&aBattery_2[8 * v1];
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_226FCC244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226FCC2F8();
  *a2 = result;
  return result;
}

unint64_t sub_226FCC2A4()
{
  result = qword_27D7B9508;
  if (!qword_27D7B9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9508);
  }

  return result;
}

uint64_t sub_226FCC2F8()
{
  v0 = sub_22766D030();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ZoneName.serialized()()
{
  v0 = sub_2276694C0();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_226FCC378()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226FCC5B8();
  }

  return result;
}

uint64_t sub_226FCC3D0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_226FCC9C4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226FCCF50();
  }

  return result;
}

uint64_t sub_226FCC458()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_22766A730();
  sub_22766B370();
  v5(v4, v0);
  sub_226FCC5B8();
  sub_226FCC9C4();
  return sub_226FCCF50();
}

uint64_t sub_226FCC5B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  sub_22766AE00();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_226FD033C;
  *(v20 + 24) = v1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_226FD0340;
  *(v21 + 24) = v20;
  (*(v3 + 16))(v6, v8, v2);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v22, v6, v2);
  v24 = (v23 + ((v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_226FD036C;
  v24[1] = v21;

  sub_227669270();
  (*(v3 + 8))(v8, v2);
  v25 = v29;
  v26 = sub_227669290();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v26(sub_226EB4544, v27);

  return (*(v30 + 8))(v13, v25);
}

uint64_t sub_226FCC9C4()
{
  v1 = v0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v43 = &v38 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v38 = v6;
  sub_226FCDB5C(v6);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226FD02DC;
  *(v18 + 24) = v1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_226FD02E0;
  *(v19 + 24) = v18;
  v20 = v40;
  (*(v2 + 16))(&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v40);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v21, &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v23 = (v22 + ((v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_226FCBEE0;
  v23[1] = v19;

  v24 = v39;
  sub_227669270();
  (*(v2 + 8))(v38, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_226FD0338;
  *(v25 + 24) = v1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_226FD0498;
  *(v26 + 24) = v25;
  v27 = v41;
  v28 = v42;
  v29 = v24;
  (*(v7 + 16))(v41, v24, v42);
  v30 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31 = swift_allocObject();
  (*(v7 + 32))(v31 + v30, v27, v28);
  v32 = (v31 + ((v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_226F5B0C0;
  v32[1] = v26;

  v33 = v43;
  sub_227669270();
  v34 = *(v7 + 8);
  v34(v29, v28);
  v35 = sub_227669290();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_226EB4544, v36);

  return (v34)(v33, v28);
}

uint64_t sub_226FCCF50()
{
  v1 = v0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD690, &unk_227674730);
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v40);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v43 = &v38 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v38 = v6;
  sub_226FCE91C(v6);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226FD0254;
  *(v18 + 24) = v1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_226FD0258;
  *(v19 + 24) = v18;
  v20 = v40;
  (*(v2 + 16))(&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v40);
  v21 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v22 = swift_allocObject();
  (*(v2 + 32))(v22 + v21, &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v23 = (v22 + ((v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_226FD0280;
  v23[1] = v19;

  v24 = v39;
  sub_227669270();
  (*(v2 + 8))(v38, v20);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_226FD02B0;
  *(v25 + 24) = v1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_226FD02B4;
  *(v26 + 24) = v25;
  v27 = v41;
  v28 = v42;
  v29 = v24;
  (*(v7 + 16))(v41, v24, v42);
  v30 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31 = swift_allocObject();
  (*(v7 + 32))(v31 + v30, v27, v28);
  v32 = (v31 + ((v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_226F5AAF8;
  v32[1] = v26;

  v33 = v43;
  sub_227669270();
  v34 = *(v7 + 8);
  v34(v29, v28);
  v35 = sub_227669290();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_226E9F7B0, v36);

  return (v34)(v33, v28);
}

uint64_t sub_226FCD4DC(void *a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v54 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v54 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  sub_22766A730();
  sub_22766B370();
  v21 = *(v5 + 8);
  v21(v20, v4);
  v22 = [a1 ams_storefront];
  if (v22)
  {
    v55 = v21;
    v56 = v4;
    v23 = v22;
    v24 = sub_22766C000();
    v26 = v25;

    v27 = *(v2 + 144);
    __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
    v28 = sub_227669AE0();
    if (v29)
    {
      v30 = v28;
      v31 = v29;
      if (v28 == v24 && v29 == v26 || (sub_22766D190() & 1) != 0)
      {

        sub_22766A730();

        v32 = sub_22766B380();
        v33 = sub_22766C8B0();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v57 = v35;
          *v34 = 136446210;
          v36 = sub_226E97AE8(v24, v26, &v57);

          *(v34 + 4) = v36;
          _os_log_impl(&dword_226E8E000, v32, v33, "Storefront matches cache: %{public}s. Invalidating content availability", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x22AA9A450](v35, -1, -1);
          MEMORY[0x22AA9A450](v34, -1, -1);
        }

        else
        {
        }

        result = v55(v18, v56);
        *(v2 + 161) = 1;
      }

      else
      {
        sub_22766A730();

        v46 = sub_22766B380();
        v47 = sub_22766C8B0();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v57 = v54;
          *v48 = 136446466;
          v49 = sub_226E97AE8(v30, v31, &v57);

          *(v48 + 4) = v49;
          *(v48 + 12) = 2082;
          *(v48 + 14) = sub_226E97AE8(v24, v26, &v57);
          _os_log_impl(&dword_226E8E000, v46, v47, "Storefront changed, previous: %{public}s, current: %{public}s", v48, 0x16u);
          v50 = v54;
          swift_arrayDestroy();
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        else
        {
        }

        v55(v15, v56);
        v51 = *(v2 + 144);
        __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
        sub_227669AF0();

        v53 = *(v2 + 96);
        v52 = *(v2 + 104);
        swift_getObjectType();
        sub_226FD0200();
        return sub_2276699D0();
      }
    }

    else
    {
      sub_22766A730();

      v41 = sub_22766B380();
      v42 = sub_22766C8B0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57 = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_226E97AE8(v24, v26, &v57);
        _os_log_impl(&dword_226E8E000, v41, v42, "No storefront previously cached, updating with %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x22AA9A450](v44, -1, -1);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      v55(v12, v56);
      v45 = *(v2 + 144);
      __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
      sub_227669AF0();
    }
  }

  else
  {
    sub_22766A730();
    v37 = sub_22766B380();
    v38 = sub_22766C890();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_226E8E000, v37, v38, "Current account has a nil storefront", v39, 2u);
      MEMORY[0x22AA9A450](v39, -1, -1);
    }

    return (v21)(v9, v4);
  }

  return result;
}

uint64_t sub_226FCDB5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B94E0, &qword_2276746F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = "SeymourServices/StorefrontObserver.swift";
  *(v15 + 24) = 40;
  *(v15 + 32) = 2;
  *(v15 + 40) = 140;
  *(v15 + 48) = &unk_227674720;
  *(v15 + 56) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  sub_227669270();
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v7, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_226FCDF28;
  v18[1] = 0;
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226FCDE68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226FCDE88, 0, 0);
}

uint64_t sub_226FCDE88()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_226FCDF28(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  swift_unknownObjectRetain();

  return sub_227669270();
}

void sub_226FCDFAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_22766A850();
  v7 = sub_22766BFD0();

  v8 = [a3 stringForKey_];

  v9 = swift_allocObject();
  *(v9 + 16) = sub_226ECCE0C;
  *(v9 + 24) = v6;
  v11[4] = sub_226FD01F8;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_226FD0484;
  v11[3] = &block_descriptor_51;
  v10 = _Block_copy(v11);

  [v8 valueWithCompletion_];
  _Block_release(v10);
}

void sub_226FCE0F8(void *a1, char a2, void *a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  if (!a1)
  {
    if (!a3)
    {
      sub_226FD00D8();
      v28 = swift_allocError();
      *v42 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v28 = a3;
LABEL_9:
    v29 = a3;
    sub_22766A730();
    v30 = v28;
    v31 = sub_22766B380();
    v32 = sub_22766C890();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = a5;
      v34 = v33;
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 136446210;
      swift_getErrorValue();
      v36 = MEMORY[0x22AA995D0](v50, v51);
      v38 = sub_226E97AE8(v36, v37, &v52);
      v48 = v10;
      v39 = a4;
      v40 = v38;

      *(v34 + 4) = v40;
      a4 = v39;
      _os_log_impl(&dword_226E8E000, v31, v32, "StorefrontObserver failed to fetch language tag: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v34, -1, -1);

      (*(v11 + 8))(v15, v48);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    v41 = v28;
    a4(v28, 0, 1);

    return;
  }

  if (a3)
  {
    goto LABEL_8;
  }

  if (a2)
  {
    v18 = a1;
    sub_22766A730();
    v19 = v18;
    v20 = sub_22766B380();
    v21 = sub_22766C890();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v49 = v11;
      v23 = v22;
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v19;
      *v24 = a1;
      v25 = v19;
      _os_log_impl(&dword_226E8E000, v20, v21, "StorefrontObserver only found fallback language tag: %{public}@", v23, 0xCu);
      sub_226E97D1C(v24, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v24, -1, -1);
      v11 = v49;
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    sub_226FD00D8();
    v26 = swift_allocError();
    *v27 = 0;
    a4(v26, 0, 1);
  }

  else
  {
    v43 = sub_22766C000();
    v45 = v44;
    v46 = a1;
    a4(v43, v45, 0);
  }
}

uint64_t sub_226FCE544(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22766A220();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22766B390();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v2 + 144);
  __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
  v18 = sub_227669B00();
  if (!v19)
  {
LABEL_7:
    sub_22766A730();

    v22 = sub_22766B380();
    v23 = sub_22766C8B0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_226E97AE8(a1, a2, &v37);
      _os_log_impl(&dword_226E8E000, v22, v23, "Storefront language updated: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v10 + 8))(v16, v36);
    v26 = *(v3 + 144);
    __swift_project_boxed_opaque_existential_0((v3 + 112), *(v3 + 136));
    sub_227669B10();
    *(v3 + 160) = 2;
    v27 = *(v3 + 96);
    v28 = *(v3 + 104);
    swift_getObjectType();

    sub_22766A200();
    v29 = v35;
    sub_2276699D0();
    return (*(v34 + 8))(v9, v29);
  }

  if (v18 == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_22766D190();

    if ((v21 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v2 + 160) = 2;
  sub_22766A730();
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226E8E000, v31, v32, "Storefront language code matches cached value", v33, 2u);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  return (*(v10 + 8))(v14, v36);
}

uint64_t sub_226FCE91C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B94E0, &qword_2276746F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = "SeymourServices/StorefrontObserver.swift";
  *(v15 + 24) = 40;
  *(v15 + 32) = 2;
  *(v15 + 40) = 180;
  *(v15 + 48) = &unk_227674700;
  *(v15 + 56) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  sub_227669270();
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v16, v7, v3);
  v18 = (v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_226FCEE38;
  v18[1] = 0;
  sub_2276658F0();
  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226FCEC2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226FCEC4C, 0, 0);
}

uint64_t sub_226FCEC4C()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_226FCECEC;

  return sub_226EA0808();
}

uint64_t sub_226FCECEC(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_226FD0488, 0, 0);
  }
}

uint64_t sub_226FCEE38(uint64_t *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  sub_2276658F0();
  swift_unknownObjectRetain();

  return sub_227669270();
}

void sub_226FCEEC4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22766A860();
  v6 = sub_22766BFD0();

  v7 = [a3 BOOLForKey_];

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_226FD00D0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_226FD0484;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [v7 valueWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_226FCEFF0(void *a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9528, &qword_227674710);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v51 - v20);
  if (a1)
  {
    if (!a3)
    {
      v22 = a1;
      if ([v22 BOOLValue])
      {
        v23 = MEMORY[0x277D51A28];
      }

      else
      {
        v43 = v10;
        sub_22766A730();
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v52 = a5;
          v47 = v46;
          *v46 = 0;
          _os_log_impl(&dword_226E8E000, v44, v45, "StorefrontObserver fitnessPlusEnabled = false", v46, 2u);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v43 + 8))(v16, v9);
        v23 = MEMORY[0x277D51A20];
      }

      v48 = *v23;
      v49 = sub_2276658F0();
      (*(*(v49 - 8) + 104))(v21, v48, v49);
      swift_storeEnumTagMultiPayload();
      a4(v21);

      return sub_226E97D1C(v21, &qword_27D7B9528, &qword_227674710);
    }
  }

  else if (!a3)
  {
    v53 = v10;
    v54 = v9;
    v55 = v19;
    sub_226FD00D8();
    v24 = swift_allocError();
    *v42 = 1;
    goto LABEL_7;
  }

  v53 = v10;
  v54 = v9;
  v55 = v19;
  v24 = a3;
LABEL_7:
  swift_getErrorValue();
  v25 = a3;
  v26 = sub_22766D270();
  sub_22766A730();
  v27 = v24;
  v28 = sub_22766B380();
  v29 = sub_22766C890();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v51 = v26;
    v31 = v30;
    v32 = swift_slowAlloc();
    v52 = a5;
    v33 = v32;
    v58 = v32;
    *v31 = 136446210;
    swift_getErrorValue();
    v34 = MEMORY[0x22AA995D0](v56, v57);
    v36 = a4;
    v37 = sub_226E97AE8(v34, v35, &v58);

    *(v31 + 4) = v37;
    a4 = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "StorefrontObserver failed to fetch fitnessPlusEnabled: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    v38 = v31;
    v26 = v51;
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  (*(v53 + 8))(v14, v54);
  if (v26 == 204)
  {
    v39 = *MEMORY[0x277D51A20];
    v40 = sub_2276658F0();
    (*(*(v40 - 8) + 104))(v21, v39, v40);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v21 = v24;
    swift_storeEnumTagMultiPayload();
    v41 = v24;
  }

  a4(v21);

  return sub_226E97D1C(v21, &qword_27D7B9528, &qword_227674710);
}

uint64_t sub_226FCF4B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766A570();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v45 - v12;
  v13 = sub_2276658F0();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  sub_227669B20();
  sub_226EA52A0(&qword_28139B7A8);
  v22 = sub_22766BFB0();
  v23 = v14[1];
  v23(v20, v13);
  if (v22)
  {
    *(v2 + 161) = 2;
    sub_22766A730();
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v25, "Storefront content availability matches cache value", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    return (*(v54 + 8))(v11, v55);
  }

  else
  {
    sub_22766A730();
    v28 = v14[2];
    v48 = v14 + 2;
    v49 = a1;
    v47 = v28;
    v28(v18, a1, v13);
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v45 = v31;
      v46 = swift_slowAlloc();
      v56 = v46;
      *v31 = 136446210;
      sub_226EA52A0(&qword_28139B790);
      v32 = sub_22766D140();
      v34 = v33;
      v23(v18, v13);
      v35 = sub_226E97AE8(v32, v34, &v56);

      v36 = v45;
      *(v45 + 1) = v35;
      v37 = v36;
      _os_log_impl(&dword_226E8E000, v29, v30, "Storefront content availability updated: %{public}s", v36, 0xCu);
      v38 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);
    }

    else
    {

      v23(v18, v13);
    }

    (*(v54 + 8))(v53, v55);
    v39 = v2[18];
    __swift_project_boxed_opaque_existential_0(v2 + 14, v2[17]);
    v40 = v49;
    sub_227669B30();
    *(v2 + 161) = 2;
    v42 = v2[12];
    v41 = v2[13];
    swift_getObjectType();
    v47(v20, v40, v13);
    v43 = v50;
    sub_22766A560();
    v44 = v52;
    sub_2276699D0();
    return (*(v51 + 8))(v43, v44);
  }
}

uint64_t sub_226FCF9F4(void *a1, const char *a2)
{
  v4 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v11 = a1;
  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23[0] = v2;
    v15 = a2;
    v16 = v14;
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    swift_getErrorValue();
    v18 = MEMORY[0x22AA995D0](v23[2], v23[3]);
    v20 = sub_226E97AE8(v18, v19, &v24);

    *(v16 + 4) = v20;
    v21 = v15;
    v4 = v23[0];
    _os_log_impl(&dword_226E8E000, v12, v13, v21, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);
  }

  result = (*(v7 + 8))(v10, v6);
  *(v4 + 160) = 1;
  return result;
}

uint64_t sub_226FCFBD8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v2 = v0[19];

  v3 = OBJC_IVAR____TtC15SeymourServices18StorefrontObserver__storefrontContentAvailableOverride;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorefrontObserver()
{
  result = qword_2813A1ED0;
  if (!qword_2813A1ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226FCFCFC()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_226FCFDD4()
{
  result = qword_27D7B9510;
  if (!qword_27D7B9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9510);
  }

  return result;
}

uint64_t sub_226FCFE28()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v8 = sub_227669B00();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_226EA89DC();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
  }

  else
  {
    sub_226FD00D8();
    v13 = swift_allocError();
    *v14 = 0;
    *(swift_allocObject() + 16) = v13;
  }

  return sub_227669280();
}

uint64_t sub_226FD0000(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FCEC2C(a1, v1);
}

unint64_t sub_226FD00D8()
{
  result = qword_27D7B9530;
  if (!qword_27D7B9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9530);
  }

  return result;
}

uint64_t sub_226FD012C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226FCDE68(a1, v1);
}

unint64_t sub_226FD0200()
{
  result = qword_2813A27A0;
  if (!qword_2813A27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A27A0);
  }

  return result;
}

uint64_t sub_226FD0258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_226FD02B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_226FD02E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_226FD0340(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_226FD039C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_226FD04B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227674070;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_22766C4E0();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000227696540;
  *(inited + 72) = sub_22766C4E0();
  strcpy((inited + 80), "handshakeCount");
  *(inited + 95) = -18;
  *(inited + 96) = sub_22766C750();
  *(inited + 104) = 0x646F43726F727265;
  *(inited + 112) = 0xE900000000000065;
  if (a2)
  {
    swift_getErrorValue();
    sub_22766D2C0();
    v4 = sub_22766BFD0();

    *(inited + 120) = v4;
    *(inited + 128) = 0x6D6F44726F727265;
    *(inited + 136) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_22766D2D0();
  }

  else
  {
    v5 = sub_22766BFD0();

    *(inited + 120) = v5;
    *(inited + 128) = 0x6D6F44726F727265;
    *(inited + 136) = 0xEB000000006E6961;
  }

  v6 = sub_22766BFD0();

  *(inited + 144) = v6;
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000227696560;
  if (a2)
  {
    swift_getErrorValue();
    v7 = sub_22766D260();
    if (v7)
    {
      v8 = v7;
      swift_getErrorValue();
      sub_22766D2C0();
    }

    v10 = sub_22766BFD0();

    *(inited + 168) = v10;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x8000000227696580;
    swift_getErrorValue();
    v11 = sub_22766D260();
    if (v11)
    {
      v12 = v11;
      swift_getErrorValue();
      sub_22766D2D0();
    }
  }

  else
  {
    v9 = sub_22766BFD0();

    *(inited + 168) = v9;
    *(inited + 176) = 0xD000000000000015;
    *(inited + 184) = 0x8000000227696580;
  }

  v13 = sub_22766BFD0();

  *(inited + 192) = v13;
  v14 = sub_227148D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
  swift_arrayDestroy();
  return v14;
}

unint64_t sub_226FD084C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_226FD04B0(v0[2], v0[3]);
}

uint64_t sub_226FD0858(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_226FD08B4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

id sub_226FD0948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetPersistentKeyLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226FD0A5C(void *a1, uint64_t a2)
{
  v58[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v58 - v6;
  v62 = sub_227664AE0();
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  *&v63 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2276668A0();
  v61 = *(v59 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v60 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v58 - v14;
  v16 = sub_2276624A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v64 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v20 = v68;
    v21 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v66 = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v21, v20);
    sub_226F04970(&v65, &v69);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  v71 = v69;
  v72 = v70;
  v23 = *(&v70 + 1);
  if (!*(&v70 + 1))
  {
    sub_226E97D1C(&v71, &unk_27D7B9650, &unk_227674890);
    v73 = 0u;
    v74 = 0u;
    goto LABEL_10;
  }

  v24 = __swift_project_boxed_opaque_existential_0(&v71, *(&v72 + 1));
  *(&v74 + 1) = v23;
  v25 = __swift_allocate_boxed_opaque_existential_0(&v73);
  (*(*(v23 - 8) + 16))(v25, v24, v23);
  __swift_destroy_boxed_opaque_existential_0(&v71);
  if (!*(&v74 + 1))
  {
LABEL_10:
    sub_226E97D1C(&v73, &unk_27D7BC990, &qword_227670A30);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_11;
  }

  v26 = swift_dynamicCast();
  (*(v17 + 56))(v15, v26 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_11:
    sub_226E97D1C(v15, &unk_27D7BB570, &unk_227670FC0);
    return sub_227149264(MEMORY[0x277D84F90]);
  }

  v27 = v64;
  v28 = (*(v17 + 32))(v64, v15, v16);
  v29 = *(v2 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_lock);
  MEMORY[0x28223BE20](v28);
  v58[-2] = v2;
  v58[-1] = v27;
  sub_2276696A0();
  v30 = sub_2276639B0();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v7, 1, v30) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B9680, &unk_227671520);
    (*(v17 + 8))(v27, v16);
    return sub_227149264(MEMORY[0x277D84F90]);
  }

  v33 = v63;
  sub_227663970();
  (*(v31 + 8))(v7, v30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v17 + 8))(v27, v16);
    sub_226FDC688(v33, MEMORY[0x277D50D68]);
    return sub_227149264(MEMORY[0x277D84F90]);
  }

  v62 = 0;
  v35 = v60;
  v34 = v61;
  v36 = v33;
  v37 = v59;
  (*(v61 + 32))(v60, v36, v59);
  v58[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  v63 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  v39 = *MEMORY[0x277CE5CF8];
  *(inited + 32) = sub_22766C000();
  *(inited + 40) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E8, &qword_2276798C0);
  v41 = swift_allocObject();
  *(v41 + 16) = v63;
  *(v41 + 32) = sub_227666870();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  *(inited + 48) = v41;
  v42 = sub_227149264(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
  v43 = sub_227666100();
  if (v44 >> 60 == 15)
  {
LABEL_26:
    (*(v34 + 8))(v35, v37);
    (*(v17 + 8))(v64, v16);
    return v42;
  }

  v45 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    if (v45 != 2)
    {
      goto LABEL_25;
    }

    v46 = *(v43 + 16);
    v47 = *(v43 + 24);
LABEL_24:
    if (v46 != v47)
    {
      goto LABEL_27;
    }

LABEL_25:
    sub_226FB1424(v43, v44);
    v35 = v60;
    v34 = v61;
    goto LABEL_26;
  }

  if (v45)
  {
    v46 = v43;
    v47 = v43 >> 32;
    goto LABEL_24;
  }

  if ((v44 & 0xFF000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v48 = v44;
  v49 = v43;
  v50 = swift_initStackObject();
  *(v50 + 16) = v63;
  *(v50 + 32) = 0xD000000000000013;
  *(v50 + 72) = MEMORY[0x277CC9318];
  *(v50 + 40) = 0x8000000227696740;
  *(v50 + 48) = v49;
  *(v50 + 56) = v48;
  v51 = v49;
  v52 = v49;
  v53 = v48;
  sub_226F5E0B4(v52, v48);
  v54 = sub_227149264(v50);
  swift_setDeallocating();
  sub_226E97D1C(v50 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v73 = v42;
  v56 = v62;
  sub_226FDAC14(v54, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, &v73);

  if (v56)
  {

    __break(1u);
  }

  else
  {
    sub_226FB1424(v51, v53);
    v57 = v73;
    (*(v61 + 8))(v60, v59);
    (*(v17 + 8))(v64, v16);
    return v57;
  }

  return result;
}

uint64_t sub_226FD12CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v112 = a2;
  v124 = a4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v115 = *(v116 - 8);
  v6 = *(v115 + 64);
  v7 = MEMORY[0x28223BE20](v116);
  v113 = &v104[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = v8;
  MEMORY[0x28223BE20](v7);
  v120 = &v104[-v9];
  v119 = sub_22766C050();
  v118 = *(v119 - 8);
  v10 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v104[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = sub_22766B390();
  v125 = *(v126 - 8);
  v12 = *(v125 + 64);
  v13 = MEMORY[0x28223BE20](v126);
  v122 = &v104[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v104[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v123 = &v104[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v22 = &v104[-v21];
  v23 = sub_2276624A0();
  v128 = *(v23 - 8);
  v24 = *(v128 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v110 = &v104[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v25);
  v121 = &v104[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v104[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v104[-v31];
  v127 = a1;
  if ([a1 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v33 = v132;
    v34 = __swift_project_boxed_opaque_existential_0(v131, v132);
    v130 = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v129);
    (*(*(v33 - 8) + 16))(boxed_opaque_existential_0, v34, v33);
    sub_226F04970(&v129, &v133);
    __swift_destroy_boxed_opaque_existential_0(v131);
  }

  else
  {
    v133 = 0u;
    v134 = 0u;
  }

  v135 = v133;
  v136 = v134;
  v36 = *(&v134 + 1);
  if (!*(&v134 + 1))
  {
    sub_226E97D1C(&v135, &unk_27D7B9650, &unk_227674890);
    v137 = 0u;
    v138 = 0u;
    v39 = v127;
    goto LABEL_10;
  }

  v37 = __swift_project_boxed_opaque_existential_0(&v135, *(&v136 + 1));
  *(&v138 + 1) = v36;
  v38 = __swift_allocate_boxed_opaque_existential_0(&v137);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  v39 = v127;
  if (!*(&v138 + 1))
  {
LABEL_10:
    sub_226E97D1C(&v137, &unk_27D7BC990, &qword_227670A30);
    v41 = v128;
    v42 = *(v128 + 56);
    v42(v22, 1, 1, v23);
    goto LABEL_11;
  }

  v40 = swift_dynamicCast();
  v41 = v128;
  v42 = *(v128 + 56);
  v42(v22, v40 ^ 1u, 1, v23);
  if ((*(v41 + 48))(v22, 1, v23) == 1)
  {
LABEL_11:
    sub_226E97D1C(v22, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_12;
  }

  v109 = v4;
  (*(v41 + 32))(v32, v22, v23);
  sub_22766A690();
  (*(v41 + 16))(v30, v32, v23);
  v43 = sub_22766B380();
  v44 = sub_22766C8B0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v137 = v107;
    *v45 = 141558274;
    *(v45 + 4) = 1752392040;
    *(v45 + 12) = 2080;
    v106 = v43;
    v46 = sub_227662390();
    v105 = v44;
    v48 = v47;
    v49 = *(v128 + 8);
    v108 = v16;
    v49(v30, v23);
    v50 = sub_226E97AE8(v46, v48, &v137);
    v51 = v127;

    *(v45 + 14) = v50;
    v52 = v106;
    _os_log_impl(&dword_226E8E000, v106, v105, "[Key Loader] fetchServerPlaybackContext for URL: %{mask.hash}s", v45, 0x16u);
    v53 = v107;
    __swift_destroy_boxed_opaque_existential_0(v107);
    MEMORY[0x22AA9A450](v53, -1, -1);
    v54 = v45;
    v41 = v128;
    MEMORY[0x22AA9A450](v54, -1, -1);

    (*(v125 + 8))(v108, v126);
    v49(v32, v23);
    v4 = v109;
    goto LABEL_13;
  }

  v81 = *(v41 + 8);
  v81(v30, v23);
  (*(v125 + 8))(v16, v126);
  v81(v32, v23);
  v4 = v109;
LABEL_12:
  v51 = v39;
LABEL_13:
  if ([v51 identifier])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    v55 = v132;
    v56 = __swift_project_boxed_opaque_existential_0(v131, v132);
    v130 = v55;
    v57 = __swift_allocate_boxed_opaque_existential_0(&v129);
    (*(*(v55 - 8) + 16))(v57, v56, v55);
    sub_226F04970(&v129, &v133);
    __swift_destroy_boxed_opaque_existential_0(v131);
  }

  else
  {
    v133 = 0u;
    v134 = 0u;
  }

  v135 = v133;
  v136 = v134;
  v58 = *(&v134 + 1);
  if (!*(&v134 + 1))
  {
    sub_226E97D1C(&v135, &unk_27D7B9650, &unk_227674890);
    v137 = 0u;
    v138 = 0u;
    goto LABEL_23;
  }

  v59 = __swift_project_boxed_opaque_existential_0(&v135, *(&v136 + 1));
  *(&v138 + 1) = v58;
  v60 = __swift_allocate_boxed_opaque_existential_0(&v137);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  if (!*(&v138 + 1))
  {
LABEL_23:
    sub_226E97D1C(&v137, &unk_27D7BC990, &qword_227670A30);
    v61 = v123;
    v42(v123, 1, 1, v23);
    goto LABEL_24;
  }

  v61 = v123;
  v62 = swift_dynamicCast();
  v42(v61, v62 ^ 1u, 1, v23);
  if ((*(v41 + 48))(v61, 1, v23) == 1)
  {
LABEL_24:
    sub_226E97D1C(v61, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_25;
  }

  v63 = *(v41 + 32);
  v64 = v121;
  v63(v121, v61, v23);
  sub_227662440();
  if (v65)
  {
    v66 = v117;
    sub_22766C040();
    v67 = sub_22766C010();
    v69 = v68;

    (*(v118 + 8))(v66, v119);
    if (v69 >> 60 != 15)
    {
      v109 = v4;
      v82 = *__swift_project_boxed_opaque_existential_0(&v4[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider], *&v4[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyProvider + 24]);
      sub_227345AA0(v120);
      v126 = v67;
      v83 = v128;
      v84 = v110;
      (*(v128 + 16))(v110, v64, v23);
      v85 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v86 = (v24 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v125 = v69;
      v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      v63(v89 + v85, v84, v23);
      *(v89 + v86) = v127;
      v90 = (v89 + v87);
      v91 = v125;
      *v90 = v126;
      v90[1] = v91;
      v92 = v109;
      *(v89 + v88) = v109;
      v93 = (v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8));
      v94 = v114;
      *v93 = v112;
      v93[1] = v94;
      v95 = v115;
      v96 = v113;
      v97 = v116;
      (*(v115 + 16))(v113, v120, v116);
      v98 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v99 = (v111 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      (*(v95 + 32))(v100 + v98, v96, v97);
      v101 = (v100 + v99);
      *v101 = sub_226FDCC8C;
      v101[1] = v89;
      sub_227666230();
      v102 = v127;
      v103 = v92;

      sub_227669270();
      (*(v95 + 8))(v120, v97);
      return (*(v128 + 8))(v121, v23);
    }

    (*(v128 + 8))(v64, v23);
  }

  else
  {
    (*(v41 + 8))(v64, v23);
  }

  v51 = v127;
LABEL_25:
  v70 = v122;
  sub_22766A690();
  v71 = v51;
  v72 = sub_22766B380();
  v73 = sub_22766C890();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138543362;
    *(v74 + 4) = v71;
    *v75 = v71;
    v76 = v71;
    _os_log_impl(&dword_226E8E000, v72, v73, "[Key Loader] Failed to get assetID from keyRequest %{public}@", v74, 0xCu);
    sub_226E97D1C(v75, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v75, -1, -1);
    MEMORY[0x22AA9A450](v74, -1, -1);
  }

  (*(v125 + 8))(v70, v126);
  v77 = sub_227663190();
  sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  v78 = swift_allocError();
  (*(*(v77 - 8) + 104))(v79, *MEMORY[0x277D4FDA0], v77);
  *(swift_allocObject() + 16) = v78;
  sub_227666230();
  return sub_227669280();
}

uint64_t sub_226FD21F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a7;
  v43 = a8;
  v40 = a5;
  v41 = a6;
  v38 = a3;
  v39 = a4;
  v44 = a9;
  v11 = sub_227666130();
  v36 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2276624A0();
  v14 = *(v35 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v35);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a2);
  (*(v12 + 16))(&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v12 + 80) + v18 + 8) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v14 + 32))(v22 + v17, v16, v35);
  v23 = v37;
  v24 = v38;
  *(v22 + v18) = v38;
  (*(v12 + 32))(v22 + v19, v23, v36);
  v25 = (v22 + v20);
  v27 = v39;
  v26 = v40;
  *v25 = v39;
  v25[1] = v26;
  v29 = v41;
  v28 = v42;
  *(v22 + v21) = v41;
  v30 = (v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  v31 = v43;
  *v30 = v28;
  v30[1] = v31;
  v32 = v24;
  sub_226F5E0B4(v27, v26);
  sub_227666230();
  v33 = v29;

  return sub_227669270();
}

void sub_226FD2490(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v64 = a6;
  v65 = a7;
  v76 = a2;
  v77 = a4;
  v69 = a1;
  v73 = a10;
  v71 = a9;
  v72 = sub_227666130();
  v70 = *(v72 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v67 = v14;
  v68 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276624A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v66 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = v58 - v20;
  v61 = sub_22766B390();
  v60 = *(v61 - 8);
  v22 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v74 = v16;
  v75 = v15;
  v62 = *(v16 + 16);
  v62(v21, a3, v15);
  v25 = sub_22766B380();
  v26 = sub_22766C8B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v58[1] = a8;
    v28 = v27;
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 141558274;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2080;
    v30 = sub_227662390();
    v59 = a3;
    v31 = a5;
    v33 = v32;
    (*(v74 + 8))(v21, v75);
    v34 = sub_226E97AE8(v30, v33, aBlock);
    a5 = v31;
    a3 = v59;

    *(v28 + 14) = v34;
    _os_log_impl(&dword_226E8E000, v25, v26, "[Key Loader] Making SPC for URL: %{mask.hash}s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v28, -1, -1);
  }

  else
  {

    (*(v74 + 8))(v21, v75);
  }

  (*(v60 + 8))(v24, v61);
  v35 = sub_227666120();
  v37 = v36;
  v61 = sub_227662560();
  sub_226EDC420(v35, v37);
  v65 = sub_227662560();
  sub_226FD0A5C(v77, a5);
  v64 = sub_22766BE90();

  v38 = v66;
  v39 = a3;
  v40 = v75;
  v62(v66, v39, v75);
  v41 = v70;
  v42 = v68;
  v43 = a5;
  v44 = v72;
  (*(v70 + 16))(v68, v43, v72);
  v45 = v74;
  v46 = (*(v74 + 80) + 40) & ~*(v74 + 80);
  v47 = (v63 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (*(v41 + 80) + v47 + 16) & ~*(v41 + 80);
  v49 = swift_allocObject();
  v50 = v69;
  *(v49 + 2) = v77;
  *(v49 + 3) = v50;
  *(v49 + 4) = v76;
  (*(v45 + 32))(&v49[v46], v38, v40);
  v51 = &v49[v47];
  v52 = v73;
  *v51 = v71;
  *(v51 + 1) = v52;
  (*(v41 + 32))(&v49[v48], v42, v44);
  aBlock[4] = sub_226FDCF94;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FD32A0;
  aBlock[3] = &block_descriptor_5;
  v53 = _Block_copy(aBlock);
  v54 = v77;

  v55 = v61;
  v57 = v64;
  v56 = v65;
  [v54 makeStreamingContentKeyRequestDataForApp:v61 contentIdentifier:v65 options:v64 completionHandler:v53];
  _Block_release(v53);
}

uint64_t sub_226FD2A70(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v85 = a8;
  v89 = a6;
  v90 = a5;
  v79 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v86 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = &v71 - v21;
  v22 = sub_227666230();
  v83 = *(v22 - 8);
  v84 = v22;
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v22);
  v82 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2276624A0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v80 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v71 - v30;
  v32 = sub_22766B390();
  v87 = *(v32 - 8);
  v88 = v32;
  v33 = *(v87 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v39 = &v71 - v38;
  if (v37 >> 60 == 15)
  {
    sub_22766A690();
    v40 = v79;
    v41 = sub_22766B380();
    v42 = sub_22766C890();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_226E8E000, v41, v42, "[Key Loader] contentKeyRequestData data is nil for request: %{public}@", v43, 0xCu);
      sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    (*(v87 + 8))(v36, v88);
    v46 = sub_227664CB0();
    sub_226EB0E90(&qword_28139B8E8, MEMORY[0x277D50F38]);
    v47 = swift_allocError();
    v49 = v48;
    v50 = a3;
    if (!a3)
    {
      v51 = sub_227663190();
      sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
      v50 = swift_allocError();
      (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D4FDC0], v51);
    }

    *v49 = v50;
    (*(*(v46 - 8) + 104))(v49, *MEMORY[0x277D50EC8], v46);
    *v17 = v47;
    swift_storeEnumTagMultiPayload();
    v53 = a3;
    v90(v17);
    return sub_226E97D1C(v17, &qword_27D7B96C8, &qword_227674900);
  }

  else
  {
    v78 = v37;
    v79 = v13;
    v75 = a10;
    v76 = a9;
    v77 = a1;
    sub_226F5E0B4(a1, v37);
    sub_22766A690();
    v74 = *(v26 + 16);
    v74(v31, a7, v25);
    v55 = sub_22766B380();
    v56 = sub_22766C8B0();
    v57 = a7;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v91 = v72;
      *v58 = 141558274;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2080;
      v59 = sub_227662390();
      v73 = v57;
      v61 = v60;
      (*(v26 + 8))(v31, v25);
      v62 = sub_226E97AE8(v59, v61, &v91);
      v57 = v73;

      *(v58 + 14) = v62;
      _os_log_impl(&dword_226E8E000, v55, v56, "[Key Loader] Got spc for URL %{mask.hash}s", v58, 0x16u);
      v63 = v72;
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x22AA9A450](v63, -1, -1);
      MEMORY[0x22AA9A450](v58, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v31, v25);
    }

    (*(v87 + 8))(v39, v88);
    v74(v80, v57, v25);
    v65 = v77;
    v64 = v78;
    sub_226FB1554(v77, v78);

    sub_2276660F0();
    v66 = sub_227664900();
    (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
    v67 = v82;
    sub_2276661E0();
    v69 = v83;
    v68 = v84;
    v70 = v86;
    (*(v83 + 16))(v86, v67, v84);
    swift_storeEnumTagMultiPayload();
    v90(v70);
    sub_226FB1424(v65, v64);
    sub_226E97D1C(v70, &qword_27D7B96C8, &qword_227674900);
    return (*(v69 + 8))(v67, v68);
  }
}

uint64_t sub_226FD32A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_227662590();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_226FB1424(v4, v9);
}

uint64_t sub_226FD334C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v53 = type metadata accessor for AssetProgressUpdated();
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v50 - v7;
  v60 = sub_227663CD0();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = sub_22766B390();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v22 = *(v11 + 16);
  v62 = a1;
  v54 = v22;
  v55 = v11 + 16;
  v22(v16, a1, v10);
  v23 = sub_22766B380();
  v24 = sub_22766C8B0();
  v25 = os_log_type_enabled(v23, v24);
  v61 = v10;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v50 = v17;
    v27 = v26;
    v28 = swift_slowAlloc();
    v65 = v28;
    *v27 = 136446210;
    sub_226EB0E90(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v29 = sub_22766D140();
    v30 = v10;
    v32 = v31;
    (*(v11 + 8))(v16, v30);
    v33 = sub_226E97AE8(v29, v32, &v65);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v23, v24, "[Key Loader] Got fetch request %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v18 + 8))(v21, v50);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
    (*(v18 + 8))(v21, v17);
  }

  v34 = v56;
  sub_22714184C(v56, 0.01);
  v35 = v58;
  v36 = v60;
  v37 = (*(v58 + 48))(v34, 1, v60);
  v38 = v62;
  if (v37 == 1)
  {
    sub_226E97D1C(v34, &qword_27D7B9648, &unk_227674880);
  }

  else
  {
    v39 = v51;
    (*(v35 + 32))(v51, v34, v36);
    v40 = *&v64[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_eventHub];
    v41 = *&v64[OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_eventHub + 8];
    swift_getObjectType();
    v42 = v52;
    sub_2276639A0();
    (*(v35 + 16))(v42 + *(v53 + 20), v39, v36);
    sub_226EB0E90(qword_2813A1330, type metadata accessor for AssetProgressUpdated);
    sub_2276699D0();
    sub_226FDC688(v42, type metadata accessor for AssetProgressUpdated);
    (*(v35 + 8))(v39, v36);
  }

  v43 = v61;
  v44 = v59;
  v54(v59, v38, v61);
  v45 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v46 = swift_allocObject();
  v47 = v64;
  *(v46 + 16) = v64;
  (*(v11 + 32))(v46 + v45, v44, v43);
  type metadata accessor for AssetLoaderResponse();
  v48 = v47;
  return sub_227669270();
}

uint64_t sub_226FD398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-v14];
  v16 = *(a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_lock);
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  sub_226E99364(0, &unk_281398AB0, 0x277CE64D8);
  sub_2276696A0();
  v17 = v25;
  sub_2276639A0();
  (*(v9 + 16))(v13, v15, v8);
  v18 = sub_22766D200();
  (*(v9 + 8))(v15, v8);
  [v17 processContentKeyRequestWithIdentifier:v18 initializationData:0 options:0];

  return swift_unknownObjectRelease();
}

uint64_t sub_226FD3B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_226E99364(0, &unk_281398AB0, 0x277CE64D8);

  v10 = sub_22766C990();
  v11 = [objc_opt_self() contentKeySessionWithKeySystem_];

  v12 = *(a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_keyLoaderQueue);
  v13 = v11;
  [v13 setDelegate:a3 queue:v12];
  v14 = OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_tasks;
  swift_beginAccess();

  v15 = v13;
  v16 = *(a3 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a3 + v14);
  *(a3 + v14) = 0x8000000000000000;
  sub_227369F50(a1, a2, v15, a4, isUniquelyReferenced_nonNull_native);
  *(a3 + v14) = v19;
  swift_endAccess();

  *a5 = v15;
  return result;
}

int *sub_226FD3CAC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v279 = a5;
  v288 = a4;
  v289 = a1;
  v271 = a6;
  v315[4] = *MEMORY[0x277D85DE8];
  v270 = type metadata accessor for AssetProgressUpdated();
  v8 = *(*(v270 - 8) + 64);
  MEMORY[0x28223BE20](v270);
  v269 = &v263 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v276 = &v263 - v12;
  v275 = sub_227663CD0();
  v274 = *(v275 - 8);
  v13 = *(v274 + 64);
  MEMORY[0x28223BE20](v275);
  v278 = &v263 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v282 = &v263 - v17;
  v18 = sub_22766B390();
  v311 = *(v18 - 8);
  v312 = v18;
  v19 = *(v311 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v299 = &v263 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v300 = &v263 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v290 = (&v263 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v277 = &v263 - v27;
  MEMORY[0x28223BE20](v26);
  v287 = &v263 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v285 = &v263 - v31;
  v295 = sub_227662750();
  v294 = *(v295 - 8);
  v32 = *(v294 + 64);
  MEMORY[0x28223BE20](v295);
  v293 = &v263 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_227664AE0();
  v281 = *(v303 - 1);
  v34 = *(v281 + 64);
  v35 = MEMORY[0x28223BE20](v303);
  v291 = &v263 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v292 = &v263 - v38;
  MEMORY[0x28223BE20](v37);
  v297 = &v263 - v39;
  v40 = sub_2276668A0();
  v301 = *(v40 - 8);
  v302 = v40;
  v41 = *(v301 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v298 = &v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v305 = &v263 - v44;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  v45 = *(*(v306 - 1) + 64);
  MEMORY[0x28223BE20](v306);
  v307 = (&v263 - v46);
  v47 = sub_2276639B0();
  v48 = *(v47 - 8);
  v308 = v47;
  v309 = v48;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v283 = &v263 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v280 = &v263 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v286 = &v263 - v55;
  MEMORY[0x28223BE20](v54);
  v304 = &v263 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v284 = &v263 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v62 = &v263 - v61;
  v63 = sub_2276624A0();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v63);
  ObjectType = &v263 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v273 = &v263 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v72 = &v263 - v71;
  MEMORY[0x28223BE20](v70);
  v74 = &v263 - v73;
  v75 = a2;
  sub_227447BF8(2036689710, 0xE400000000000000);
  v76 = __swift_project_boxed_opaque_existential_0((a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_assetFileStore), *(a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_assetFileStore + 24));
  sub_226E93170(*v76 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory, v62, &unk_27D7BB570, &unk_227670FC0);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {

    sub_226E97D1C(v62, &unk_27D7BB570, &unk_227670FC0);
    v77 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v77 - 8) + 104))(v78, *MEMORY[0x277D4FD00], v77);
    result = swift_willThrow();
LABEL_39:
    v223 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_227662400();

  v268 = *(v64 + 8);
  v272 = v64 + 8;
  v268(v62, v63);
  v267 = v64;
  v80 = *(v64 + 32);
  v266 = v64 + 32;
  v265 = v80;
  v81 = (v80)(v74, v72, v63);
  v82 = *(a3 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_lock);
  MEMORY[0x28223BE20](v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  v83 = v310;
  sub_2276696A0();
  v84 = v74;
  if (!v315[0])
  {
    v103 = v299;
    sub_22766A690();
    v104 = sub_22766B380();
    v105 = sub_22766C8B0();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_226E8E000, v104, v105, "[Key Loader] Not writing persistable content key because load completion doesn't exist.", v106, 2u);
      MEMORY[0x22AA9A450](v106, -1, -1);
    }

    (*(v311 + 8))(v103, v312);
    v107 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v107 - 8) + 104))(v108, *MEMORY[0x277D4FD10], v107);
    swift_willThrow();
    result = (v268)(v84, v63);
    goto LABEL_39;
  }

  v85 = v75;
  v86 = sub_226EA9E3C(v315[0]);
  MEMORY[0x28223BE20](v86);
  v310 = a3;
  v87 = v307;
  sub_2276696A0();
  v88 = v85;
  v89 = v308;
  v90 = v309;
  if ((*(v309 + 48))(v87, 1, v308) == 1)
  {
    sub_226E97D1C(v87, &qword_27D7B9680, &unk_227671520);
    v91 = v300;
    sub_22766A690();
    v92 = ObjectType;
    (*(v267 + 16))(ObjectType, v88, v63);
    v93 = sub_22766B380();
    v94 = sub_22766C8B0();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v315[0] = v96;
      *v95 = 141558274;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2080;
      v97 = sub_227662390();
      v264 = v84;
      v99 = v98;
      v100 = v92;
      v101 = v268;
      v268(v100, v63);
      v102 = sub_226E97AE8(v97, v99, v315);
      v84 = v264;

      *(v95 + 14) = v102;
      _os_log_impl(&dword_226E8E000, v93, v94, "[Key Loader] Lost track of AssetRequest for key URL: %{mask.hash}s", v95, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x22AA9A450](v96, -1, -1);
      MEMORY[0x22AA9A450](v95, -1, -1);

      (*(v311 + 8))(v300, v312);
    }

    else
    {

      v143 = v92;
      v101 = v268;
      v268(v143, v63);
      (*(v311 + 8))(v91, v312);
    }

    v144 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v144 - 8) + 104))(v145, *MEMORY[0x277D4FD08], v144);
    swift_willThrow();
    result = v101(v84, v63);
    goto LABEL_39;
  }

  v306 = v85;
  v109 = v304;
  (*(v90 + 32))(v304, v87, v89);
  v110 = v297;
  sub_227663970();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v263 = v63;
  v264 = v84;
  if (EnumCaseMultiPayload != 1)
  {
    sub_226FDC688(v110, MEMORY[0x277D50D68]);
    v146 = v290;
    sub_22766A690();
    v147 = v283;
    (*(v90 + 16))(v283, v109, v89);
    v148 = sub_22766B380();
    v149 = sub_22766C8B0();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = v147;
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v315[0] = v152;
      *v151 = 141558274;
      *(v151 + 4) = 1752392040;
      *(v151 + 12) = 2080;
      sub_226EB0E90(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v153 = sub_22766D140();
      v154 = v90;
      v155 = v89;
      v157 = v156;
      v158 = v150;
      v159 = *(v154 + 8);
      v159(v158, v155);
      v160 = sub_226E97AE8(v153, v157, v315);

      *(v151 + 14) = v160;
      _os_log_impl(&dword_226E8E000, v148, v149, "[Key Loader] AssetRequest for key doesn't have metadata %{mask.hash}s", v151, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v152);
      MEMORY[0x22AA9A450](v152, -1, -1);
      MEMORY[0x22AA9A450](v151, -1, -1);

      (*(v311 + 8))(v290, v312);
    }

    else
    {

      v159 = *(v90 + 8);
      v159(v147, v89);
      (*(v311 + 8))(v146, v312);
      v155 = v89;
    }

    v183 = sub_227663190();
    sub_226EB0E90(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v183 - 8) + 104))(v184, *MEMORY[0x277D4FD08], v183);
    swift_willThrow();
    v159(v304, v155);
    result = (v268)(v264, v263);
    goto LABEL_39;
  }

  v300 = v83;
  (*(v301 + 32))(v305, v110, v302);
  sub_2276631B0();
  v112 = v293;
  sub_2276626E0();
  LODWORD(v307) = sub_2276631C0();
  v113 = v294;
  v114 = v285;
  v115 = v295;
  (*(v294 + 16))(v285, v112, v295);
  (*(v113 + 56))(v114, 0, 1, v115);
  v116 = v284;
  v299 = *(v267 + 56);
  (v299)(v284, 1, 1, v63);
  v117 = v298;
  sub_227666880();
  sub_226E97D1C(v116, &unk_27D7BB570, &unk_227670FC0);
  sub_226E97D1C(v114, &qword_27D7B9690, qword_227670B50);
  v118 = *(v301 + 16);
  v119 = v292;
  v297 = (v301 + 16);
  ObjectType = v118;
  (v118)(v292, v117, v302);
  swift_storeEnumTagMultiPayload();
  v120 = v287;
  sub_22766A690();
  v121 = *(v90 + 16);
  v122 = v286;
  v121(v286, v109, v89);
  v123 = v291;
  sub_226FDCC24(v119, v291, MEMORY[0x277D50D68]);
  v124 = sub_22766B380();
  v125 = sub_22766C8B0();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v307 = v124;
    v127 = v126;
    v290 = swift_slowAlloc();
    v315[0] = v290;
    *v127 = 141558274;
    *(v127 + 4) = 1752392040;
    *(v127 + 12) = 2080;
    v128 = v123;
    v129 = v282;
    sub_226FDCC24(v128, v282, MEMORY[0x277D50D68]);
    (*(v281 + 56))(v129, 0, 1, v303);
    (v299)(v116, 1, 1, v63);
    v130 = v122;
    v131 = v280;
    LODWORD(v299) = v125;
    sub_227663980();
    sub_226E97D1C(v116, &unk_27D7BB570, &unk_227670FC0);
    sub_226E97D1C(v129, &qword_27D7B9688, &qword_2276776E0);
    sub_226EB0E90(&qword_28139BCA0, MEMORY[0x277D501C8]);
    v132 = v308;
    v133 = sub_22766D140();
    v134 = v120;
    v136 = v135;
    v137 = *(v309 + 8);
    v137(v131, v132);
    sub_226FDC688(v291, MEMORY[0x277D50D68]);
    v303 = v137;
    v137(v130, v132);
    v138 = sub_226E97AE8(v133, v136, v315);

    *(v127 + 14) = v138;
    v139 = v307;
    _os_log_impl(&dword_226E8E000, v307, v299, "[Key Loader] Updated metadata of request %{mask.hash}s", v127, 0x16u);
    v140 = v290;
    __swift_destroy_boxed_opaque_existential_0(v290);
    MEMORY[0x22AA9A450](v140, -1, -1);
    MEMORY[0x22AA9A450](v127, -1, -1);

    v141 = *(v311 + 8);
    v142 = v134;
  }

  else
  {

    sub_226FDC688(v123, MEMORY[0x277D50D68]);
    v303 = *(v309 + 8);
    v303(v122, v89);
    v141 = *(v311 + 8);
    v142 = v120;
  }

  v290 = v141;
  (v141)(v142, v312);
  v161 = __swift_project_boxed_opaque_existential_0(v289, v289[3]);
  v162 = *v161;
  v163 = v161[1];
  v164 = *(v161 + 16);
  v165 = v161[3];
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v167 = *(v166 + 48);
  v168 = *(v166 + 52);
  v169 = swift_allocObject();
  v170 = v162;
  v171 = v163;

  sub_22766A070();
  v299 = v170;
  *(v169 + 16) = v170;
  *(v169 + 24) = v171;
  v291 = v171;
  LODWORD(v307) = v164;
  *(v169 + 32) = v164;
  *(v169 + 40) = v165;
  swift_getKeyPath();
  v172 = sub_227666810();
  v174 = v173;
  v315[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v315[0] = v172;
  v315[1] = v174;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v175 = sub_22766C820();
  sub_226E93170(v315, &v313, &unk_27D7BC990, &qword_227670A30);
  v176 = v314;
  if (v314)
  {
    v177 = __swift_project_boxed_opaque_existential_0(&v313, v314);
    v178 = *(v176 - 8);
    v179 = *(v178 + 64);
    MEMORY[0x28223BE20](v177);
    v181 = &v263 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v178 + 16))(v181);
    v182 = sub_22766D170();
    (*(v178 + 8))(v181, v176);
    __swift_destroy_boxed_opaque_existential_0(&v313);
  }

  else
  {
    v182 = 0;
  }

  v185 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v186 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(v315, &unk_27D7BC990, &qword_227670A30);
  v187 = qword_2813B2078;
  swift_beginAccess();
  v188 = v186;
  v189 = sub_22766A080();
  v191 = v190;
  MEMORY[0x22AA985C0]();
  if (*((*v191 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v191 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v262 = *((*v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v189(v315, 0);
  swift_endAccess();

  v192 = sub_2275424B0(v169 + v187, v307, v165);
  if (v192)
  {
    v193 = v263;
    v194 = v264;
    if (v192 == 1)
    {

      goto LABEL_28;
    }

    swift_willThrow();

    v221 = v304;
    v209 = v302;
LABEL_37:
    sub_226FDC688(v292, MEMORY[0x277D50D68]);
    v222 = *(v301 + 8);
    v222(v298, v209);
    (*(v294 + 8))(v293, v295);
    v222(v305, v209);
    v303(v221, v308);
    v205 = v194;
    v206 = v193;
    goto LABEL_38;
  }

  v207 = v300;
  v208 = sub_22728467C(0);
  v193 = v263;
  v194 = v264;
  v209 = v302;
  if (v207)
  {

    v221 = v304;
    goto LABEL_37;
  }

  v219 = v208;
  [v208 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v220 = sub_22766C9E0();
  v300 = 0;
  v227 = sub_226EDAB24(v220);

  sub_226EDAB78(v227, v291);

LABEL_28:
  v195 = __swift_project_boxed_opaque_existential_0(v289, v289[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96B8, &unk_2276748F0);
  v196 = v301;
  v197 = *(v301 + 72);
  v198 = (*(v301 + 80) + 32) & ~*(v301 + 80);
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_227670CD0;
  v200 = v199 + v198;
  v201 = v298;
  v202 = v302;
  (ObjectType)(v200, v298, v302);
  v203 = v300;
  sub_227561BB4(v199, v195[1], *(v195 + 16), v195[3]);
  if (v203)
  {

    sub_226FDC688(v292, MEMORY[0x277D50D68]);
    v204 = *(v196 + 8);
    v204(v201, v202);
    (*(v294 + 8))(v293, v295);
    v204(v305, v202);
LABEL_30:
    v303(v304, v308);
    v205 = v194;
    v206 = v263;
LABEL_38:
    result = (v268)(v205, v206);
    goto LABEL_39;
  }

  v210 = sub_2276631D0();
  v212 = v211;
  v213 = sub_227662560();
  sub_226EDC420(v210, v212);
  v315[0] = 0;
  v214 = [v279 persistableContentKeyFromKeyVendorResponse:v213 options:0 error:v315];

  v215 = v315[0];
  if (!v214)
  {
    v224 = v215;
    sub_2276622C0();

    swift_willThrow();
    sub_226FDC688(v292, MEMORY[0x277D50D68]);
    v225 = v302;
    v226 = *(v301 + 8);
    v226(v298, v302);
    (*(v294 + 8))(v293, v295);
    v226(v305, v225);
    goto LABEL_30;
  }

  v216 = sub_227662590();
  v218 = v217;

  result = sub_2276625B0();
  v228 = v218 >> 62;
  v300 = (v218 >> 62);
  if ((v218 >> 62) <= 1)
  {
    v229 = v310;
    v230 = v276;
    if (!v228)
    {
      v231 = BYTE6(v218);
      goto LABEL_50;
    }

LABEL_48:
    LODWORD(v231) = HIDWORD(v216) - v216;
    if (__OFSUB__(HIDWORD(v216), v216))
    {
      __break(1u);
      goto LABEL_70;
    }

    v231 = v231;
    goto LABEL_50;
  }

  v229 = v310;
  v230 = v276;
  if (v228 != 2)
  {
    v307 = 0;
    goto LABEL_52;
  }

  v233 = *(v216 + 16);
  v232 = *(v216 + 24);
  v234 = __OFSUB__(v232, v233);
  v231 = (v232 - v233);
  if (v234)
  {
    __break(1u);
    goto LABEL_48;
  }

LABEL_50:
  v307 = v231;
LABEL_52:
  v310 = v218;
  sub_22714184C(v230, 1.0);
  v235 = v274;
  v236 = v275;
  if ((*(v274 + 48))(v230, 1, v275) == 1)
  {
    sub_226E97D1C(v230, &qword_27D7B9648, &unk_227674880);
    v237 = v267;
    v238 = v263;
  }

  else
  {
    (*(v235 + 32))(v278, v230, v236);
    v239 = v229 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_eventHub;
    v299 = v216;
    v240 = v235;
    v241 = *(v229 + OBJC_IVAR____TtC15SeymourServices24AssetPersistentKeyLoader_eventHub);
    v297 = *(v239 + 8);
    ObjectType = swift_getObjectType();
    v237 = v267;
    v242 = v269;
    v238 = v263;
    (*(v267 + 16))(v269, v306, v263);
    (*(v240 + 16))(v242 + *(v270 + 20), v278, v236);
    sub_226EB0E90(qword_2813A1330, type metadata accessor for AssetProgressUpdated);
    sub_2276699D0();
    sub_226FDC688(v242, type metadata accessor for AssetProgressUpdated);
    (*(v240 + 8))(v278, v236);
    v216 = v299;
  }

  v243 = v277;
  sub_22766A690();
  v244 = v273;
  (*(v237 + 16))(v273, v194, v238);
  v245 = v310;
  sub_226F5E0B4(v216, v310);
  v246 = sub_22766B380();
  v247 = sub_22766C8B0();
  if (!os_log_type_enabled(v246, v247))
  {

    sub_226EDC420(v216, v245);
    sub_226EDC420(v216, v245);
    v268(v244, v238);
    v250 = v243;
LABEL_68:
    (v290)(v250, v312);
    sub_226FDC688(v292, MEMORY[0x277D50D68]);
    v259 = v302;
    v260 = *(v301 + 8);
    v260(v298, v302);
    (*(v294 + 8))(v293, v295);
    v260(v305, v259);
    v303(v304, v308);
    v261 = v271;
    v265(v271, v264, v238);
    result = type metadata accessor for AssetLoaderResponse();
    *(v261 + result[5]) = v307;
    goto LABEL_39;
  }

  v248 = swift_slowAlloc();
  result = swift_slowAlloc();
  v315[0] = result;
  *v248 = 134349570;
  v306 = result;
  if (v300 > 1)
  {
    if (v300 != 2)
    {
      v249 = 0;
      goto LABEL_67;
    }

    v252 = *(v216 + 16);
    v251 = *(v216 + 24);
    v234 = __OFSUB__(v251, v252);
    v249 = v251 - v252;
    if (!v234)
    {
      goto LABEL_67;
    }

    __break(1u);
  }

  else if (!v300)
  {
    v249 = BYTE6(v245);
LABEL_67:
    *(v248 + 4) = v249;
    sub_226EDC420(v216, v245);
    *(v248 + 12) = 2160;
    *(v248 + 14) = 1752392040;
    *(v248 + 22) = 2080;
    v253 = sub_227662390();
    v254 = v244;
    v256 = v255;
    v268(v254, v238);
    v257 = sub_226E97AE8(v253, v256, v315);

    *(v248 + 24) = v257;
    _os_log_impl(&dword_226E8E000, v246, v247, "[Key Loader] Persistable key with length %{public}ld, written to %{mask.hash}s", v248, 0x20u);
    v258 = v306;
    __swift_destroy_boxed_opaque_existential_0(v306);
    MEMORY[0x22AA9A450](v258, -1, -1);
    MEMORY[0x22AA9A450](v248, -1, -1);

    sub_226EDC420(v216, v245);
    v250 = v277;
    goto LABEL_68;
  }

  LODWORD(v249) = HIDWORD(v216) - v216;
  if (!__OFSUB__(HIDWORD(v216), v216))
  {
    v249 = v249;
    goto LABEL_67;
  }

LABEL_70:
  __break(1u);
  return result;
}