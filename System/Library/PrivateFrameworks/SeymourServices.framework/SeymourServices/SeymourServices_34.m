uint64_t sub_2271E10A4(uint64_t a1)
{
  result = sub_2271E1298(&qword_28139B840, MEMORY[0x277D51680]);
  *(a1 + 8) = result;
  return result;
}

id sub_2271E10FC(void *a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665480();
  sub_227662390();
  v7 = *(v3 + 8);
  v7(v6, v2);
  v8 = sub_22766BFD0();

  [a1 setRemoteURL_];

  sub_227665460();
  sub_227662390();
  v7(v6, v2);
  v9 = sub_22766BFD0();

  [a1 setLocalURL_];

  v10 = sub_227665450();
  if (v10 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  return [a1 setDownloadToken_];
}

uint64_t sub_2271E1298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2271E12E0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_22766B390();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E13AC, 0, 0);
}

uint64_t sub_2271E13AC()
{
  v1 = v0[16];
  v2 = v0[11];
  sub_22766A610();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_226E8E000, v3, v4, "[SessionEnergyBurnedDataProvider] Loading [%ld] sessions", v7, 0xCu);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  else
  {
    v8 = v0[11];
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = *(v11 + 8);
  v0[17] = v12;
  v0[18] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_2271E1518;
  v14 = v0[11];
  v15 = v0[12];

  return sub_2271E3018(v14);
}

uint64_t sub_2271E1518(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_2271E2234;
  }

  else
  {
    v5 = sub_2271E162C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271E162C()
{
  v1 = v0[20];
  if (v1 >> 62)
  {
LABEL_30:
    v39 = sub_22766CD20();
    v0[22] = v39;
    if (v39)
    {
      goto LABEL_3;
    }

LABEL_22:
    v27 = v0[20];

    v29 = v0[15];
    v28 = v0[16];

    v30 = v0[1];

    return v30();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[22] = v2;
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = 0;
  v4 = v0[21];
  while (1)
  {
    v5 = v0[20];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AA991A0](v3);
    }

    else
    {
      if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v6 = *(v5 + 8 * v3 + 32);
    }

    v7 = v6;
    v0[23] = v6;
    v0[24] = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v8;
    v7 = v7;
    v10 = [v9 totalEnergyBurned];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = [objc_opt_self() kilocalorieUnit];
    [v11 doubleValueForUnit_];
    v14 = v13;

    v15 = [v9 metadata];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = v15;
    v17 = sub_22766BEB0();

    v18 = sub_227669CA0();
    if (!*(v17 + 16))
    {

LABEL_18:

LABEL_19:

LABEL_20:
      goto LABEL_21;
    }

    v20 = sub_226E92000(v18, v19);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_226E97CC0(*(v17 + 56) + 32 * v20, (v0 + 2));

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v23 = v0[11];
    v25 = v0[6];
    v24 = v0[7];
    v0[8] = v25;
    v0[9] = v24;
    v26 = swift_task_alloc();
    *(v26 + 16) = v0 + 8;
    LOBYTE(v23) = sub_226F7E160(sub_226FA6D84, v26, v23);

    if (v23)
    {
      break;
    }

LABEL_21:
    v3 = v0[24];
    if (v3 == v0[22])
    {
      goto LABEL_22;
    }
  }

  v32 = v0[12];
  v33 = v32[20];
  __swift_project_boxed_opaque_existential_0(v32 + 16, v32[19]);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v0[25] = v35;
  v35[2] = v34;
  v35[3] = v25;
  v35[4] = v24;
  v35[5] = v14;
  v36 = *(v33 + 24);
  v40 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  v0[26] = v38;
  *v38 = v0;
  v38[1] = sub_2271E1AA0;

  return v40();
}

uint64_t sub_2271E1AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(v2 + 216) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = *(v2 + 160);

    v7 = sub_2271E2044;
  }

  else
  {

    v7 = sub_2271E1BF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2271E1BF4()
{
  v3 = *(v0 + 192);
  if (v3 == *(v0 + 176))
  {
LABEL_21:
    v23 = *(v0 + 160);

    v25 = *(v0 + 120);
    v24 = *(v0 + 128);

    v26 = *(v0 + 8);

    return v26();
  }

  v4 = *(v0 + 216);
  while (1)
  {
    v5 = *(v0 + 160);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AA991A0](v3);
    }

    else
    {
      if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(v5 + 8 * v3 + 32);
    }

    v7 = v6;
    *(v0 + 184) = v6;
    *(v0 + 192) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    v7 = v7;
    v10 = [v9 totalEnergyBurned];
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = v10;
    v12 = [objc_opt_self() kilocalorieUnit];
    [v11 doubleValueForUnit_];
    v2 = v13;

    v14 = [v9 metadata];
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = v14;
    v16 = sub_22766BEB0();

    v17 = sub_227669CA0();
    if (!*(v16 + 16))
    {

LABEL_17:

LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    v19 = sub_226E92000(v17, v18);
    v1 = v20;

    if ((v1 & 1) == 0)
    {
      goto LABEL_17;
    }

    sub_226E97CC0(*(v16 + 56) + 32 * v19, v0 + 16);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v21 = *(v0 + 88);
    v1 = *(v0 + 48);
    v3 = *(v0 + 56);
    *(v0 + 64) = v1;
    *(v0 + 72) = v3;
    v22 = swift_task_alloc();
    *(v22 + 16) = v0 + 64;
    LOBYTE(v21) = sub_226F7E160(sub_226FA6D84, v22, v21);

    if (v21)
    {
      goto LABEL_26;
    }

LABEL_20:
    v3 = *(v0 + 192);
    if (v3 == *(v0 + 176))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v28 = *(v0 + 96);
  v29 = v28[20];
  __swift_project_boxed_opaque_existential_0(v28 + 16, v28[19]);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  *(v0 + 200) = v31;
  v31[2] = v30;
  v31[3] = v1;
  v31[4] = v3;
  v31[5] = v2;
  v32 = *(v29 + 24);
  v35 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 208) = v34;
  *v34 = v0;
  v34[1] = sub_2271E1AA0;

  return v35();
}

uint64_t sub_2271E2044()
{
  v26 = v0;
  v1 = v0[23];

  v2 = v0[27];
  v3 = v0[15];
  sub_22766A610();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v23 = v0[17];
    v24 = v0[18];
    v7 = v0[15];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    v0[10] = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v12 = sub_22766C060();
    v14 = sub_226E97AE8(v12, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "[SessionEnergyBurnedDataProvider] Failed to load sessions with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v23(v7, v8);
  }

  else
  {
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[15];
    v18 = v0[13];

    v16(v17, v18);
  }

  v20 = v0[15];
  v19 = v0[16];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2271E2234()
{
  v25 = v0;
  v1 = v0[21];
  v2 = v0[15];
  sub_22766A610();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v22 = v0[17];
    v23 = v0[18];
    v6 = v0[15];
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v0[10] = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "[SessionEnergyBurnedDataProvider] Failed to load sessions with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v22(v6, v7);
  }

  else
  {
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[15];
    v17 = v0[13];

    v15(v16, v17);
  }

  v19 = v0[15];
  v18 = v0[16];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2271E2418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v86 = sub_22766B390();
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v86);
  v83 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v78 - v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v82 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v78 - v20;
  v21 = sub_227664530();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v88 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v78 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v78 - v33;
  swift_beginAccess();
  v84 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 24, v91);

    __swift_project_boxed_opaque_existential_0(v91, v92);
    v36 = v89;
    sub_2274B4E8C(a3, a4, a1, v32);
    v37 = v36;
    if (v36)
    {
      return __swift_destroy_boxed_opaque_existential_0(v91);
    }

    v79 = a3;
    v38 = a4;
    if ((*(v22 + 48))(v32, 1, v21) == 1)
    {
      sub_226E97D1C(v32, &qword_27D7B8E60, &unk_2276724B0);
      sub_226F73CD0();
      swift_allocError();
      *v39 = 0;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0(v91);
    }

    (*(v22 + 32))(v34, v32, v21);
    (*(v22 + 56))(v34, 0, 1, v21);
    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  else
  {
    v79 = a3;
    v38 = a4;
    (*(v22 + 56))(v34, 1, 1, v21);
    v37 = v89;
  }

  sub_226E93170(v34, v29, &qword_27D7B8E60, &unk_2276724B0);
  v40 = (*(v22 + 48))(v29, 1, v21);
  v41 = v88;
  if (v40 == 1)
  {
    sub_226E97D1C(v29, &qword_27D7B8E60, &unk_2276724B0);
    v42 = v83;
    sub_22766A610();

    v43 = sub_22766B380();
    v44 = sub_22766C8B0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v91[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_226E97AE8(v79, v38, v91);
      _os_log_impl(&dword_226E8E000, v43, v44, "[SessionEnergyBurnedDataProvider] No session found for session identifier %s, skipping energyBurnedCache update", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    (*(v85 + 8))(v42, v86);
    return sub_226E97D1C(v34, &qword_27D7B8E60, &unk_2276724B0);
  }

  (*(v22 + 32))(v88, v29, v21);
  swift_beginAccess();
  v47 = swift_weakLoadStrong();
  if (v47)
  {
    sub_226E91B50(v47 + 24, v91);

    __swift_project_boxed_opaque_existential_0(v91, v92);
    v48 = v87;
    sub_2274B6BAC(a1, v87);
    if (v37)
    {
      (*(v22 + 8))(v41, v21);
      sub_226E97D1C(v34, &qword_27D7B8E60, &unk_2276724B0);
      return __swift_destroy_boxed_opaque_existential_0(v91);
    }

    v50 = v41;
    v51 = sub_227666FF0();
    (*(*(v51 - 8) + 56))(v48, 0, 1, v51);
    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  else
  {
    v50 = v41;
    v51 = sub_227666FF0();
    v48 = v87;
    (*(*(v51 - 8) + 56))(v87, 1, 1, v51);
  }

  v52 = v48;
  v53 = v82;
  sub_226E93170(v52, v82, &qword_27D7B8FA8, &unk_227672A50);
  sub_227666FF0();
  v54 = *(v51 - 8);
  if ((*(v54 + 48))(v53, 1, v51) == 1)
  {
    sub_226E97D1C(v53, &qword_27D7B8FA8, &unk_227672A50);
    v55 = v81;
    sub_22766A610();

    v56 = sub_22766B380();
    v57 = sub_22766C8B0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v91[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_226E97AE8(v79, v38, v91);
      _os_log_impl(&dword_226E8E000, v56, v57, "[SessionEnergyBurnedDataProvider] No modality reference for session identifier %s, skipping energyBurnedCache update", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AA9A450](v59, -1, -1);
      MEMORY[0x22AA9A450](v58, -1, -1);

      (*(v85 + 8))(v81, v86);
    }

    else
    {

      (*(v85 + 8))(v55, v86);
    }

    sub_226E97D1C(v87, &qword_27D7B8FA8, &unk_227672A50);
    (*(v22 + 8))(v88, v21);
    return sub_226E97D1C(v34, &qword_27D7B8E60, &unk_2276724B0);
  }

  v83 = v34;
  v89 = v37;
  v60 = sub_227666F70();
  v62 = v61;
  (*(v54 + 8))(v53, v51);
  swift_beginAccess();
  v63 = swift_weakLoadStrong();
  v64 = v80;
  if (v63)
  {
    v65 = v63;
    swift_beginAccess();
    v66 = *(v65 + 16);
    if (*(v66 + 16))
    {
      v67 = sub_226E92000(v60, v62);
      if (v68)
      {
        v69 = *(*(v66 + 56) + 8 * v67);
        swift_endAccess();

        if (v69 >= a5)
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }
    }

    swift_endAccess();
  }

  if (a5 <= 0.0)
  {
LABEL_35:

    goto LABEL_36;
  }

LABEL_30:
  sub_22766A610();

  v70 = sub_22766B380();
  v71 = sub_22766C8B0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v90 = v73;
    *v72 = 136315394;
    *(v72 + 4) = sub_226E97AE8(v60, v62, &v90);
    *(v72 + 12) = 2048;
    *(v72 + 14) = a5;
    _os_log_impl(&dword_226E8E000, v70, v71, "[SessionEnergyBurnedDataProvider] Updating current best for modalityIdentifier %s to %f", v72, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AA9A450](v73, -1, -1);
    MEMORY[0x22AA9A450](v72, -1, -1);

    (*(v85 + 8))(v80, v86);
  }

  else
  {

    (*(v85 + 8))(v64, v86);
  }

  swift_beginAccess();
  v74 = swift_weakLoadStrong();
  if (!v74)
  {
    goto LABEL_35;
  }

  v75 = v74;
  swift_beginAccess();
  v76 = *(v75 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v75 + 16);
  *(v75 + 16) = 0x8000000000000000;
  sub_227369DA0(v60, v62, isUniquelyReferenced_nonNull_native, a5);

  *(v75 + 16) = v93;
  swift_endAccess();

LABEL_36:
  sub_226E97D1C(v87, &qword_27D7B8FA8, &unk_227672A50);
  (*(v22 + 8))(v50, v21);
  return sub_226E97D1C(v83, &qword_27D7B8E60, &unk_2276724B0);
}

uint64_t sub_2271E3018(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2271E3038, 0, 0);
}

uint64_t sub_2271E3038()
{
  v10 = *(v0 + 24);
  v1 = objc_opt_self();
  sub_227669CA0();
  v2 = sub_22766BFD0();

  sub_22707415C(v10);
  v3 = sub_22766C2B0();

  v4 = [v1 predicateForObjectsWithMetadataKey:v2 allowedValues:v3];
  *(v0 + 40) = v4;

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v10;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BE8, &unk_227675760);
  *v7 = v0;
  v7[1] = sub_2271E31D8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000026, 0x800000022769B520, sub_2271E3910, v5, v8);
}

uint64_t sub_2271E31D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2271E335C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2271E32F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E32F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2271E335C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

void sub_2271E33C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  sub_226E99364(0, &qword_281398B48, 0x277CCD8D8);
  v13 = [swift_getObjCClassFromMetadata() workoutType];
  v14 = *(a3 + 16);
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  v17 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
  v18 = sub_22766C2B0();
  aBlock[4] = sub_2271E391C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2274FCD04;
  aBlock[3] = &block_descriptor_20;
  v19 = _Block_copy(aBlock);
  v20 = [v17 initWithSampleType:v13 predicate:a2 limit:v14 sortDescriptors:v18 resultsHandler:v19];

  _Block_release(v19);

  v21 = a4[12];
  __swift_project_boxed_opaque_existential_0(a4 + 8, a4[11]);
  v22 = *(v21 + 8);
  sub_227669CD0();
}

uint64_t sub_2271E3640(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (!a3)
    {
      sub_226F73CD0();
      v16 = swift_allocError();
      *v19 = 8;
      goto LABEL_9;
    }

LABEL_8:
    v16 = a3;
LABEL_9:
    v21 = v16;
    v17 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
    return sub_22766C440();
  }

  if (a3)
  {
    goto LABEL_8;
  }

  v11 = v8;

  sub_22766A610();

  v12 = sub_22766B380();
  v13 = sub_22766C8B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (a2 >> 62)
    {
      v15 = sub_22766CD20();
    }

    else
    {
      v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_226E8E000, v12, v13, "[SessionEnergyBurnedDataProvider] HealthKit query returned %ld results", v14, 0xCu);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v10, v11);
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  return sub_22766C450();
}

uint64_t sub_2271E3878()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2271E391C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0) - 8) + 80);

  return sub_2271E3640(a1, a2, a3);
}

void sub_2271E39B0(void *a1)
{
  v2 = a1;
  v3 = [a1 name];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [v2 languageCode];
  if (!v5)
  {

LABEL_7:
    v11 = sub_227664DD0();
    sub_2271E41DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
    swift_willThrow();
LABEL_8:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [v2 capabilities];
  if (!v7)
  {
    v13 = sub_227664DD0();
    sub_2271E41DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();

    goto LABEL_10;
  }

  v8 = v7;
  v9 = MEMORY[0x22AA99A00]();
  v10 = sub_227155904(v8);
  if (!v1)
  {
    v15 = v10;
    objc_autoreleasePoolPop(v9);
    sub_226F3ECEC(v15);

    [v2 isPrimary];
    sub_227665540();
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v9);

  v2 = v8;
LABEL_10:
}

void sub_2271E3C64(void *a1, uint64_t a2)
{
  sub_227665570();
  v5 = sub_22766BFD0();

  [a1 setName_];

  sub_227665560();
  v6 = sub_22766BFD0();

  [a1 setLanguageCode_];

  [a1 setIsPrimary_];
  v7 = sub_227665550();
  v8 = sub_227647448(a2, v7);

  if (!v2)
  {
    [a1 setCapabilities_];
  }
}

size_t static LanguageDisclaimer.representativeSamples()()
{
  v28 = sub_2276655A0();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v5 = sub_22766C090();
  v6 = sub_22766C410();
  sub_2271E40F0();
  sub_226F51824();
  v7 = sub_227663B50();
  v8 = sub_226F3ECEC(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC108, &qword_22767CAF8);
  v9 = sub_22766C380();
  v9[2] = 3;
  v9[4] = v8;
  v9[5] = v8;
  v9[6] = v8;
  v40 = v6;
  v41[0] = v9;
  v41[1] = v41;
  v41[2] = &v40;
  v38 = v5;
  v39 = v4;
  v41[3] = &v39;
  v41[4] = &v38;
  swift_bridgeObjectRetain_n();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC110, &qword_22767CB00);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8ED8, &qword_227672868);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v37 = v36;
  v30 = sub_226F5BF60(&qword_27D7BC118, &qword_27D7BC110, &qword_22767CB00);
  v31 = sub_226F5BF60(&qword_27D7B8EE8, &qword_27D7B8ED8, &qword_227672868);
  v32 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v33 = v32;
  v10 = sub_2276638E0();

  v11 = *(v10 + 16);
  if (v11)
  {
    v29 = MEMORY[0x277D84F90];
    result = sub_226F1F388(0, v11, 0);
    v13 = 0;
    v14 = v29;
    v24[1] = v0 + 32;
    v15 = (v10 + 72);
    v26 = v10;
    v27 = v0;
    v25 = v11;
    while (v13 < *(v10 + 16))
    {
      v16 = *(v15 - 5);
      v17 = *(v15 - 32);
      v18 = *(v15 - 3);
      v19 = *(v15 - 2);
      v20 = *(v15 - 1);
      v21 = *v15;

      sub_227665540();
      v29 = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F388(v22 > 1, v23 + 1, 1);
        v14 = v29;
      }

      ++v13;
      *(v14 + 16) = v23 + 1;
      result = (*(v27 + 32))(v14 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v3, v28);
      v15 += 6;
      v10 = v26;
      if (v25 == v13)
      {

        return v14;
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

unint64_t sub_2271E40F0()
{
  result = qword_27D7BE7B0;
  if (!qword_27D7BE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7B0);
  }

  return result;
}

uint64_t sub_2271E4184(uint64_t a1)
{
  result = sub_2271E41DC(&qword_27D7BC120, MEMORY[0x277D51730]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2271E41DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2271E4224(uint64_t a1)
{
  v37 = sub_227666B60();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227666A90();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E452C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB090, &qword_227679BB0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v29 - v5);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v29 = v1;
  v37 = MEMORY[0x277D84F90];
  sub_226F20268(0, v7, 0);
  v8 = v37;
  v9 = a1 + 56;
  v10 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v12 = result;
  v13 = 0;
  v30 = a1 + 64;
  v31 = v7;
  v32 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v35 = v13;
    v36 = v16;
    v17 = *(a1 + 48);
    v18 = sub_227666B60();
    (*(*(v18 - 8) + 16))(v6 + *(v34 + 48), v17 + *(*(v18 - 8) + 72) * v12, v18);
    *v6 = sub_227666A50();
    v6[1] = v19;
    v37 = v8;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_226F20268(v20 > 1, v21 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v21 + 1;
    result = sub_226E95D18(v6, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21, &qword_27D7BB090, &qword_227679BB0);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v9 = v32;
    v22 = *(v32 + 8 * v15);
    if ((v22 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v12 & 0x3F));
    if (v23)
    {
      v14 = __clz(__rbit64(v23)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v30 + 8 * v15);
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v12, v36, 0);
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v12, v36, 0);
    }

LABEL_4:
    v13 = v35 + 1;
    v12 = v14;
    if (v35 + 1 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2271E4844(uint64_t a1)
{
  v37 = sub_227666B60();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 56) + *(v3 + 72) * v10, v37);
      v39 = sub_227666A90();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E4B4C(uint64_t a1)
{
  v42 = sub_227666FF0();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v34[1] = v1;
    v49 = MEMORY[0x277D84F90];
    sub_226F20248(0, v6, 0);
    v48 = v49;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v39 = v3 + 8;
    v40 = v3 + 16;
    v35 = a1 + 64;
    v36 = v6;
    v37 = v3;
    v38 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v43 = *(a1 + 36);
      v14 = v41;
      v15 = v42;
      (*(v3 + 16))(v41, *(a1 + 48) + *(v3 + 72) * v10, v42);
      v16 = sub_227666F70();
      v46 = v17;
      v47 = v16;
      v45 = sub_227666FB0();
      v19 = v18;
      v44 = v20;
      result = (*(v3 + 8))(v14, v15);
      v21 = v48;
      v49 = v48;
      v22 = a1;
      v24 = *(v48 + 16);
      v23 = *(v48 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_226F20248((v23 > 1), v24 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v24 + 1;
      v48 = v21;
      v25 = v21 + 40 * v24;
      v26 = v46;
      *(v25 + 32) = v47;
      *(v25 + 40) = v26;
      *(v25 + 48) = v45;
      *(v25 + 56) = v19;
      *(v25 + 64) = v44 & 1;
      v12 = 1 << *(v22 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v38;
      v27 = *(v38 + 8 * v13);
      if ((v27 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v22;
      if (v43 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v28 = v27 & (-2 << (v10 & 0x3F));
      if (v28)
      {
        v12 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v37;
      }

      else
      {
        v29 = v13 << 6;
        v30 = v13 + 1;
        v31 = (v35 + 8 * v13);
        v3 = v37;
        while (v30 < (v12 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v10, v43, 0);
            v12 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v43, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v36)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E4E80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A8, &qword_22767CD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = v40 - v8;
  v9 = sub_2276627D0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_227667CD0();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_227668260();
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v49);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v19)
  {
    v40[1] = v1;
    v60 = MEMORY[0x277D84F90];
    sub_226F202E8(0, v19, 0);
    v59 = v60;
    v21 = a1 + 56;
    v22 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v23 = result;
    v24 = 0;
    v45 = v12 + 8;
    v46 = v12 + 16;
    v43 = v18;
    v44 = v15 + 32;
    v41 = a1 + 64;
    v42 = v19;
    v47 = a1 + 56;
    v48 = v15;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(a1 + 32))
    {
      if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_22;
      }

      v57 = v23 >> 6;
      v58 = 1 << v23;
      v26 = *(a1 + 36);
      v55 = v24;
      v56 = v26;
      v28 = v50;
      v27 = v51;
      (*(v12 + 16))(v50, *(a1 + 48) + *(v12 + 72) * v23, v51);
      sub_227667C90();
      sub_227667CA0();
      sub_227667CB0();
      sub_227668250();
      (*(v12 + 8))(v28, v27);
      v29 = v59;
      v60 = v59;
      v31 = *(v59 + 16);
      v30 = *(v59 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_226F202E8(v30 > 1, v31 + 1, 1);
        v29 = v60;
      }

      *(v29 + 16) = v31 + 1;
      v32 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v59 = v29;
      result = (*(v48 + 32))(v29 + v32 + *(v48 + 72) * v31, v43, v49);
      v25 = 1 << *(a1 + 32);
      v21 = v47;
      if (v23 >= v25)
      {
        goto LABEL_23;
      }

      v33 = *(v47 + 8 * v57);
      if ((v33 & v58) == 0)
      {
        goto LABEL_24;
      }

      if (v56 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v23 & 0x3F));
      if (v34)
      {
        v25 = __clz(__rbit64(v34)) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v57 << 6;
        v36 = v57 + 1;
        v37 = (v41 + 8 * v57);
        while (v36 < (v25 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_226EB526C(v23, v56, 0);
            v25 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v23, v56, 0);
      }

LABEL_4:
      v24 = v55 + 1;
      v23 = v25;
      if (v55 + 1 == v42)
      {
        return v59;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E5358(uint64_t a1)
{
  v46 = sub_227666B60();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_227666F60();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F1FA28(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      sub_227666A50();
      v22 = v42;
      sub_227666F30();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1FA28(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
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
  }

  return result;
}

uint64_t sub_2271E5734(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + v6);
    result = sub_227663FB0();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_226F1EF90(v14 > 1, v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2271E5958(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v49 = a3;
  v48 = a2(0);
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v7;
  v46 = sub_2276627D0();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v44 = v11;
    v37 = v3;
    v53 = MEMORY[0x277D84F90];
    sub_226F20288(0, v12, 0);
    v14 = -1 << *(a1 + 32);
    v51 = a1 + 56;
    v52 = v53;
    result = sub_22766CC90();
    v15 = v8;
    v16 = result;
    v17 = 0;
    v42 = v5 + 8;
    v43 = v5 + 16;
    v45 = v15;
    v40 = v5;
    v41 = v15 + 32;
    v38 = a1 + 64;
    v39 = v12;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v51 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_22;
      }

      v50 = *(a1 + 36);
      v22 = v47;
      v21 = v48;
      v23 = (*(v5 + 16))(v47, *(a1 + 48) + *(v5 + 72) * v16, v48);
      v24 = a1;
      v25 = v44;
      v49(v23);
      (*(v5 + 8))(v22, v21);
      v26 = v52;
      v53 = v52;
      v28 = *(v52 + 16);
      v27 = *(v52 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F20288(v27 > 1, v28 + 1, 1);
        v26 = v53;
      }

      *(v26 + 16) = v28 + 1;
      v29 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v26;
      result = (*(v45 + 32))(v26 + v29 + *(v45 + 72) * v28, v25, v46);
      v18 = 1 << *(v24 + 32);
      if (v16 >= v18)
      {
        goto LABEL_23;
      }

      v30 = *(v51 + 8 * v20);
      if ((v30 & (1 << v16)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v24;
      if (v50 != *(v24 + 36))
      {
        goto LABEL_25;
      }

      v31 = v30 & (-2 << (v16 & 0x3F));
      if (v31)
      {
        v18 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v19 = v39;
      }

      else
      {
        v32 = v20 << 6;
        v33 = v20 + 1;
        v19 = v39;
        v34 = (v38 + 8 * v20);
        while (v33 < (v18 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_226EB526C(v16, v50, 0);
            v18 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v16, v50, 0);
      }

LABEL_4:
      ++v17;
      v16 = v18;
      v5 = v40;
      if (v17 == v19)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271E5D20(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
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
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(*(a1 + 56) + 8 * v11);
        if (v12[2])
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v14 = (*(a1 + 48) + 16 * v11);
      v32 = v14[1];
      v33 = *v14;
      v30 = v12[4];
      v31 = v12[5];
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {

        sub_226FE4E4C(v15 + 1, 1);
        v2 = v34;
      }

      else
      {
      }

      v16 = *(v2 + 40);
      sub_22766D370();
      sub_22766C100();
      result = sub_22766D3F0();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v31;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = 16 * v21;
      v28 = (*(v2 + 48) + v27);
      *v28 = v33;
      v28[1] = v32;
      v29 = (*(v2 + 56) + v27);
      *v29 = v30;
      v29[1] = v22;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v31;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2271E5F78(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v6 = sub_227665F20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v40 - v10;
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11);
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
        sub_226F1F708(0, *(v33 + 16) + 1, 1);
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
        sub_226F1F708(v35 > 1, v36 + 1, 1);
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

uint64_t sub_2271E62E8(uint64_t a1, unint64_t a2)
{
  v21 = a2;
  v26 = sub_2276627D0();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v6, 0);
  v7 = v27;
  if (v6)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v23 = *(v8 + 56);
    v24 = v9;
    v22 = (v8 - 8);
    do
    {
      v12 = v25;
      v11 = v26;
      v13 = v8;
      v24(v25, v10, v26);
      sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
      v14 = sub_22766D140();
      v16 = v15;
      (*v22)(v12, v11);
      v27 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1EF90(v17 > 1, v18 + 1, 1);
        v7 = v27;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v10 += v23;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  sub_2272D7E08(1, v7, v21);
}

uint64_t sub_2271E6520(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = sub_227669910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 80);
    v11 = *(result + 88);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v5 + 104))(v8, *a3, v4);
    sub_227669660();
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_2271E6694()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_2271E680C;

    return sub_2271E6B88();
  }

  else
  {
    v5 = v0[8];
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    v0[12] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v0[13] = v7;
      *v7 = v0;
      v7[1] = sub_2271E6A10;

      return sub_2271E7130();
    }

    else
    {
      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_2271E680C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2271E6B24;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2271E6928;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E6928()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_2271E6A10;

    return sub_2271E7130();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2271E6A10()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2271E6B24()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_2271E6B88()
{
  v1[2] = v0;
  v2 = sub_22766A170();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_227669D60();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E6CA4, 0, 0);
}

uint64_t sub_2271E6CA4()
{
  v1 = *(v0 + 16);
  v2 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v1[16]);
  v3 = *(v2 + 24);

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2271E6E08;
  v6 = *(v0 + 16);

  return v8();
}

uint64_t sub_2271E6E08()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2271E70B4;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_2271E6F24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E6F24()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v13 = v0[3];
  v14 = v0[4];
  v5 = v0[2];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  v8 = v5[2];
  v9 = v5[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  v10 = *__swift_project_boxed_opaque_existential_0(v5 + 5, v5[8]);
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v14 + 8))(v3, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2271E70B4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_2271E7130()
{
  v1[6] = v0;
  v2 = sub_227669D60();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_22766B390();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E7258, 0, 0);
}

uint64_t sub_2271E7258()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  sub_22766A630();
  sub_22766B370();
  v5 = *(v3 + 8);
  v0[14] = v5;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = v4[17];
  __swift_project_boxed_opaque_existential_0(v4 + 13, v4[16]);
  v7 = *(v6 + 24);

  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_2271E7424;
  v10 = v0[6];

  return v12();
}

uint64_t sub_2271E7424()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_2271E7678;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2271E7540;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E7540()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = objc_opt_self();
  sub_227665EE0();
  v6 = sub_22766C0B0();

  [v5 postNotificationName_];

  v7 = v4[2];
  v8 = v4[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  v9 = *__swift_project_boxed_opaque_existential_0(v4 + 5, v4[8]);
  sub_2271D7EE8();
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2271E7678()
{
  v28 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);

  sub_22766A630();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v13 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v15 = sub_226E97AE8(v13, v14, &v27);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v5, v6, "[WorkoutPlanSystem] Failed to deduplicate active workout plans: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v25(v8, v9);
  }

  else
  {
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);

    v17(v18, v19);
  }

  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  v22 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2271E7860()
{
  v0 = sub_227669D60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();
    sub_227665EE0();
    v8 = sub_22766C0B0();

    [v7 postNotificationName_];

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    swift_getObjectType();
    sub_227669D50();
    sub_2276699D0();
    (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_2271E79D4()
{
  v0 = sub_22766A170();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669D60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = objc_opt_self();
    sub_227665EE0();
    v21 = v0;
    v13 = v1;
    v14 = sub_22766C0B0();

    [v12 postNotificationName_];

    v15 = *(v11 + 16);
    v16 = *(v11 + 24);
    swift_getObjectType();
    sub_227669D50();
    v1 = v13;
    v0 = v21;
    sub_2276699D0();
    (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 16);
    v19 = *(result + 24);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_22766A160();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_2271E7C80()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_226F73E2C;

    return sub_2271E7D68();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2271E7D68()
{
  v1[2] = v0;
  v2 = sub_2276638D0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_2271E7E6C;

  return sub_226E988E0(v5);
}

uint64_t sub_2271E7E6C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2271E84C4;
  }

  else
  {
    v3 = sub_2271E7F80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271E7F80()
{
  v1 = v0[2];
  v2 = v1[37];
  __swift_project_boxed_opaque_existential_0(v1 + 33, v1[36]);
  v3 = sub_22766A2C0();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_2271E8050;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];

  return sub_2271F2D88(v5, v6, v3);
}

uint64_t sub_2271E8050()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2271E8530;
  }

  else
  {
    v4 = sub_2271E8180;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E8180()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  sub_226EAC024(&qword_27D7B8920, MEMORY[0x277D50180]);
  if (sub_22766BFB0())
  {
    v4 = v0[6];
    v5 = v0[3];
    v6 = *(v0[4] + 8);
    v6(v0[5], v5);
    v6(v4, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_2271E8300;
    v10 = v0[5];
    v11 = v0[2];

    return sub_2271FDFD0(v10);
  }
}

uint64_t sub_2271E8300()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2271E85B4;
  }

  else
  {
    v3 = sub_2271E8414;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271E8414()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[4] + 8);
  v3(v0[5], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E84C4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E8530()
{
  (*(v0[4] + 8))(v0[6], v0[3]);
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E85B4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[4] + 8);
  v3(v0[5], v2);
  v3(v1, v2);
  v4 = v0[13];
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271E8658(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2271E8678, 0, 0);
}

uint64_t sub_2271E8678()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2271E8768;
    v4 = v0[5];

    return sub_2271E88A4(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2271E8768()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22700162C, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2271E88A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276638D0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_2271E89A8;

  return sub_226E988E0(v6);
}

uint64_t sub_2271E89A8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2271E8FDC;
  }

  else
  {
    v3 = sub_2271E8ABC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271E8ABC()
{
  v1 = v0[2];
  v2 = sub_227667CE0();
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_2271E8B68;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[3];

  return sub_2271F2D88(v4, v5, v2);
}

uint64_t sub_2271E8B68()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2271E9048;
  }

  else
  {
    v4 = sub_2271E8C98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E8C98()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  sub_226EAC024(&qword_27D7B8920, MEMORY[0x277D50180]);
  if (sub_22766BFB0())
  {
    v4 = v0[7];
    v5 = v0[4];
    v6 = *(v0[5] + 8);
    v6(v0[6], v5);
    v6(v4, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_2271E8E18;
    v10 = v0[6];
    v11 = v0[3];

    return sub_2271FDFD0(v10);
  }
}

uint64_t sub_2271E8E18()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271E90CC;
  }

  else
  {
    v3 = sub_2271E8F2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271E8F2C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[6], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E8FDC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E9048()
{
  (*(v0[5] + 8))(v0[7], v0[4]);
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E90CC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  v3(v0[6], v2);
  v3(v1, v2);
  v4 = v0[14];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t *sub_2271E9170()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[10];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 46);
  v4 = v0[51];

  v5 = v0[52];

  __swift_destroy_boxed_opaque_existential_0(v0 + 53);
  return v0;
}

uint64_t sub_2271E91F8()
{
  sub_2271E9170();

  return swift_deallocClassInstance();
}

uint64_t sub_2271E9250(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227667370();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E9310, 0, 0);
}

uint64_t sub_2271E9310()
{
  v1 = *(v0 + 32);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
  *v6 = v0;
  v6[1] = sub_2271E9488;
  v8 = *(v0 + 32);

  return v10(v0 + 16, sub_22720E170, v8, v7, v2, v3);
}

uint64_t sub_2271E9488()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2271E98B8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2271E95A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271E95A4()
{
  v1 = v0[4];
  v0[10] = sub_22704DD68(v0[2]);
  v0[11] = v2;
  v0[12] = v1[51];
  v3 = v1[16];
  v4 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v3);
  v5 = *(v4 + 24);

  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_2271E9718;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];

  return (v12)(v8, sub_22720E100, v9, v10, v3, v4);
}

uint64_t sub_2271E9718()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271E9B7C, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_2271E9924;
    v6 = v3[12];
    v7 = v3[10];
    v8 = v3[7];
    v9 = v3[3];

    return sub_2275B3834(v9, v8, v7);
  }
}

uint64_t sub_2271E98B8()
{
  v1 = v0[4];

  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271E9924()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 128) = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271E9B18, 0, 0);
  }

  else
  {
    v10 = *(v2 + 56);

    v11 = *(v9 + 8);

    return v11();
  }
}

uint64_t sub_2271E9B18()
{
  v1 = v0[16];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2271E9B7C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];

  v4 = v0[14];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271E9BFC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227667100();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutPlanScheduleResult();
  v3[15] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v9 = sub_227667370();
  v3[17] = v9;
  v10 = *(v9 - 8);
  v3[18] = v10;
  v11 = *(v10 + 64) + 15;
  v3[19] = swift_task_alloc();
  v12 = sub_2276627D0();
  v3[20] = v12;
  v13 = *(v12 - 8);
  v3[21] = v13;
  v14 = *(v13 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271E9DE8, 0, 0);
}

uint64_t sub_2271E9DE8()
{
  v1 = *(v0 + 72);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
  *v6 = v0;
  v6[1] = sub_2271E9F60;
  v8 = *(v0 + 72);

  return v10(v0 + 48, sub_22720E170, v8, v7, v2, v3);
}

uint64_t sub_2271E9F60()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_2271EA450;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_2271EA07C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271EA07C()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 200) = sub_22704DD68(*(v0 + 48));
  *(v0 + 208) = v4;
  *(v0 + 216) = v2[52];
  *(v0 + 16) = sub_22720C954();
  *(v0 + 24) = v5;
  *(v0 + 224) = v5;
  *(v0 + 232) = sub_227667930();
  sub_227667920();
  *(v0 + 296) = sub_227667910();
  *(v0 + 240) = sub_227667940();
  *(v0 + 32) = sub_227667970();
  *(v0 + 40) = v6;
  *(v0 + 248) = sub_227667980();
  *(v0 + 256) = sub_227667960();
  v7 = v2[16];
  v8 = v2[17];
  __swift_project_boxed_opaque_existential_0(v2 + 13, v7);
  v9 = *(v8 + 24);

  v16 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_2271EA23C;
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = *(v0 + 72);

  return (v16)(v12, sub_22720E100, v14, v13, v7, v8);
}

uint64_t sub_2271EA23C()
{
  v2 = *(*v1 + 264);
  v3 = *v1;
  *(v3 + 272) = v0;

  if (v0)
  {
    v4 = *(v3 + 256);
    v6 = *(v3 + 224);
    v5 = *(v3 + 232);
    v8 = *(v3 + 200);
    v7 = *(v3 + 208);
    v9 = *(v3 + 72);

    return MEMORY[0x2822009F8](sub_2271EA6A8, 0, 0);
  }

  else
  {
    v10 = *(v3 + 32);
    v11 = *(v3 + 40);
    v12 = *(v3 + 296);
    v13 = *(v3 + 16);
    v14 = *(v3 + 72);

    v15 = swift_task_alloc();
    *(v3 + 280) = v15;
    *v15 = v3;
    v15[1] = sub_2271EA4F8;
    v16 = *(v3 + 232);
    v18 = *(v3 + 216);
    v17 = *(v3 + 224);
    v19 = *(v3 + 200);
    v20 = *(v3 + 208);
    v21 = *(v3 + 176);
    v22 = *(v3 + 128);
    v27 = *(v3 + 152);
    v26 = *(v3 + 248);
    v25 = *(v3 + 240);

    return sub_227043188(v22, v13, v17, v16, v21, v19, v20, v12 & 1);
  }
}

uint64_t sub_2271EA450()
{
  v1 = v0[9];

  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271EA4F8()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 208);
  v7 = *(*v1 + 200);
  v10 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v8 = sub_2271EA9F8;
  }

  else
  {
    v8 = sub_2271EA760;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2271EA6A8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[34];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271EA760()
{
  v22 = v0[20];
  v23 = v0[22];
  v1 = v0[18];
  v19 = v0[19];
  v20 = v0[21];
  v2 = v0[16];
  v18 = v0[17];
  v21 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v24 = v0[7];
  v7 = *(v0[27] + 216);
  v16 = v0[14];
  v17 = sub_227149C78(MEMORY[0x277D84F90]);
  sub_22766C490();
  v8 = sub_22766C4B0();
  (*(*(v8 - 8) + 56))(v16, 0, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v2, v6);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v9;
  (*(v5 + 32))(&v11[v10], v4, v6);
  *&v11[(v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v17;
  sub_2272CA940(0, 0, v16, &unk_22767CF40, v11);

  (*(v1 + 8))(v19, v18);
  (*(v20 + 8))(v23, v22);
  v12 = *(v21 + 20);
  v13 = sub_227665C20();
  (*(*(v13 - 8) + 16))(v24, v2 + v12, v13);
  sub_22720DA88(v2, type metadata accessor for WorkoutPlanScheduleResult);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2271EA9F8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[36];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2271EAACC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_22766A170();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();
  v7 = sub_227669D60();
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();
  v10 = sub_2276638D0();
  v3[28] = v10;
  v11 = *(v10 - 8);
  v3[29] = v11;
  v3[30] = *(v11 + 64);
  v3[31] = swift_task_alloc();
  v12 = sub_227667370();
  v3[32] = v12;
  v13 = *(v12 - 8);
  v3[33] = v13;
  v14 = *(v13 + 64) + 15;
  v3[34] = swift_task_alloc();
  v15 = sub_227663540();
  v3[35] = v15;
  v16 = *(v15 - 8);
  v3[36] = v16;
  v17 = *(v16 + 64) + 15;
  v3[37] = swift_task_alloc();
  v18 = sub_227665C20();
  v3[38] = v18;
  v19 = *(v18 - 8);
  v3[39] = v19;
  v20 = *(v19 + 64) + 15;
  v3[40] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v22 = sub_2276627D0();
  v3[42] = v22;
  v23 = *(v22 - 8);
  v3[43] = v23;
  v24 = *(v23 + 64) + 15;
  v3[44] = swift_task_alloc();
  v25 = sub_227665CA0();
  v3[45] = v25;
  v26 = *(v25 - 8);
  v3[46] = v26;
  v3[47] = *(v26 + 64);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271EAE68, 0, 0);
}

uint64_t sub_2271EAE68()
{
  v1 = *(v0 + 168);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *__swift_project_boxed_opaque_existential_0(v1 + 18, v1[21]);
  *(v0 + 40) = type metadata accessor for WorkoutPlanDataStore();
  *(v0 + 48) = &off_283AA53B8;
  *(v0 + 16) = v4;
  sub_226E91B50(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  sub_226E92AB8((v0 + 56), v5 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v6 = swift_allocObject();
  *(v0 + 400) = v6;
  *(v6 + 16) = sub_22720CD20;
  *(v6 + 24) = v5;
  v7 = *(v3 + 24);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 408) = v9;
  *v9 = v0;
  v9[1] = sub_2271EB064;
  v10 = MEMORY[0x277D839B0];

  return (v12)(v0 + 552, sub_22720CD3C, v6, v10, v2, v3);
}

uint64_t sub_2271EB064()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v7 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = sub_2271EC514;
  }

  else
  {
    v5 = *(v2 + 400);

    v4 = sub_2271EB180;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271EB180()
{
  if (*(v0 + 552) == 1)
  {
    v1 = sub_227664EC0();
    sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D51160], v1);
    swift_willThrow();
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);
    v5 = *(v0 + 352);
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = v15[16];
    v17 = v15[17];
    __swift_project_boxed_opaque_existential_0(v15 + 13, v16);
    v18 = *(v17 + 24);

    v23 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 424) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
    *v20 = v0;
    v20[1] = sub_2271EB460;
    v22 = *(v0 + 168);

    return v23(v0 + 144, sub_22720CD74, v22, v21, v16, v17);
  }
}

uint64_t sub_2271EB460()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v7 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_2271EBA1C;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_2271EB57C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271EB57C()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 296);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  *(v0 + 440) = sub_22704DD68(*(v0 + 144));
  *(v0 + 448) = v7;
  *(v0 + 456) = v5[52];
  *(v0 + 96) = sub_22720C954();
  *(v0 + 104) = v8;
  *(v0 + 464) = v8;
  *(v0 + 472) = sub_2276656C0();
  *(v0 + 112) = sub_2276656E0();
  *(v0 + 120) = v9;
  *(v0 + 480) = v9;
  sub_2276656B0();
  sub_2276656D0();
  sub_2276656F0();
  sub_227665700();
  *(v0 + 128) = sub_227665710();
  *(v0 + 136) = v10;
  *(v0 + 488) = sub_2276656A0();
  v11 = v5[16];
  v12 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v11);
  v13 = *(v12 + 24);

  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 496) = v15;
  *v15 = v0;
  v15[1] = sub_2271EB758;
  v16 = *(v0 + 272);
  v17 = *(v0 + 256);
  v18 = *(v0 + 168);

  return (v20)(v16, sub_22720E100, v18, v17, v11, v12);
}

uint64_t sub_2271EB758()
{
  v3 = *(*v1 + 496);
  v4 = *v1;
  v2 = v4;
  *(v4 + 504) = v0;

  if (v0)
  {
    v6 = *(v4 + 472);
    v5 = *(v4 + 480);
    v7 = *(v4 + 464);
    v8 = *(v4 + 440);
    v9 = *(v4 + 344);
    v33 = *(v4 + 336);
    v34 = *(v4 + 352);
    v32 = *(v4 + 328);
    v10 = *(v4 + 312);
    v31 = *(v4 + 320);
    v11 = *(v4 + 296);
    v29 = *(v4 + 448);
    v30 = *(v4 + 304);
    v12 = *(v4 + 280);
    v13 = *(v4 + 288);
    v14 = *(v2 + 168);

    (*(v13 + 8))(v11, v12);
    (*(v10 + 8))(v31, v30);
    sub_226E97D1C(v32, &qword_27D7B9E10, &qword_227676660);
    (*(v9 + 8))(v34, v33);

    return MEMORY[0x2822009F8](sub_2271EBE6C, 0, 0);
  }

  else
  {
    v15 = *(v4 + 128);
    v16 = *(v4 + 136);
    v17 = *(v4 + 112);
    v18 = *(v4 + 96);
    v19 = *(v4 + 168);

    v20 = swift_task_alloc();
    *(v4 + 512) = v20;
    *v20 = v4;
    v20[1] = sub_2271EBB14;
    v21 = *(v4 + 480);
    v22 = *(v4 + 464);
    v23 = *(v4 + 472);
    v24 = *(v4 + 456);
    v25 = *(v4 + 392);
    v26 = *(v4 + 352);
    v27 = *(v4 + 152);
    v40 = *(v4 + 488);
    v41 = *(v4 + 272);
    v39 = *(v4 + 296);
    v37 = *(v4 + 328);
    v38 = *(v4 + 320);
    v36 = *(v4 + 440);

    return sub_22703DD14(v27, v25, v18, v22, v23, v17, v21, v26);
  }
}

uint64_t sub_2271EBA1C()
{
  v1 = v0[21];

  v14 = v0[54];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[24];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271EBB14()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v25 = *v1;
  *(*v1 + 520) = v0;

  v4 = v2[60];
  v5 = v2[59];
  v6 = v2[58];
  v18 = v2[56];
  v16 = v2[55];
  v23 = v2[44];
  v7 = v2[43];
  v22 = v2[42];
  v21 = v2[41];
  v20 = v2[40];
  v8 = v2[39];
  v19 = v2[38];
  v17 = v2[37];
  v9 = v2[36];
  v10 = v2[35];
  v11 = v2[34];
  v12 = v2[33];
  v13 = v2[32];

  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v17, v10);
  (*(v8 + 8))(v20, v19);
  sub_226E97D1C(v21, &qword_27D7B9E10, &qword_227676660);
  (*(v7 + 8))(v23, v22);
  if (v24)
  {
    v14 = sub_2271EC60C;
  }

  else
  {
    v14 = sub_2271EBF5C;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_2271EBE6C()
{
  v13 = v0[63];
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[31];
  v9 = v0[27];
  v10 = v0[24];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2271EBF5C()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[46];
  v4 = v0[45];
  v18 = v4;
  v5 = v0[31];
  v17 = v0[30];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[21];
  v9 = v0[19];
  v21 = v8[16];
  v22 = v0[47];
  v20 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v21);
  (*(v6 + 16))(v5, v9, v7);
  (*(v3 + 16))(v2, v1, v4);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = (v17 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[66] = v12;
  (*(v6 + 32))(v12 + v10, v5, v7);
  (*(v3 + 32))(v12 + v11, v2, v18);
  *(v12 + ((v22 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v13 = *(v20 + 24);

  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[67] = v15;
  *v15 = v0;
  v15[1] = sub_2271EC1C0;

  return v19();
}

uint64_t sub_2271EC1C0()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 528);

  if (v0)
  {
    v6 = sub_2271EC6FC;
  }

  else
  {
    v6 = sub_2271EC2F4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271EC2F4()
{
  v17 = v0[49];
  v18 = v0[48];
  v15 = v0[46];
  v16 = v0[45];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[37];
  v23 = v0[34];
  v24 = v0[31];
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v13 = v0[24];
  v14 = v0[22];
  v5 = v0[21];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  v8 = v5[2];
  v9 = v5[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);
  v10 = *__swift_project_boxed_opaque_existential_0(v5 + 5, v5[8]);
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v4 + 8))(v13, v14);
  (*(v15 + 8))(v17, v16);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2271EC514()
{
  v1 = v0[50];

  v14 = v0[52];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[24];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271EC60C()
{
  v13 = v0[65];
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[31];
  v9 = v0[27];
  v10 = v0[24];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2271EC6FC()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[19];
  (*(v0[46] + 8))(v0[49], v0[45]);
  (*(v2 + 8))(v3, v1);
  v16 = v0[68];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[44];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[31];
  v12 = v0[27];
  v13 = v0[24];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2271EC824(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v3[9] = v8;
  v9 = sub_2276638D0();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v3[12] = *(v10 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[16] = v11;
  *v11 = v3;
  v11[1] = sub_2271ECA34;

  return sub_226E988E0(v8);
}

uint64_t sub_2271ECA34()
{
  v2 = *(*v1 + 128);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2271ED310;
  }

  else
  {
    v3 = sub_2271ECB4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271ECB4C()
{
  v1 = v0[15];
  v24 = v0[13];
  v26 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v21 = v0[14];
  v22 = v2;
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  (*(v3 + 56))(v4, 0, 1, v2);
  v23 = *(v3 + 32);
  v23(v1, v4, v2);
  v10 = sub_227662750();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_2276627D0();
  v12 = *(*(v11 - 8) + 56);
  v12(v6, 1, 1, v11);
  v13 = sub_227663540();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v12(v7, 1, 1, v11);
  sub_227663890();
  sub_226E97D1C(v7, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v9, &qword_27D7BC128, &unk_22767CC20);
  sub_226E97D1C(v6, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v5, &qword_27D7B9690, qword_227670B50);
  v14 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v8[16]);
  (*(v3 + 16))(v24, v21, v22);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v0[17] = v16;
  *(v16 + 16) = v8;
  v23(v16 + v15, v24, v22);
  v17 = *(v14 + 24);

  v25 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_2271ECF1C;

  return v25();
}

uint64_t sub_2271ECF1C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_2271ED3E4;
  }

  else
  {
    v4 = sub_2271ED04C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271ED04C()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[14], v2);
  v3(v1, v2);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2271ED11C;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_2271EAACC(v7, v5);
}

uint64_t sub_2271ED11C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v13 = *v0;

  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[9];
  v7 = v1[8];
  v8 = v1[7];
  v9 = v1[6];
  v10 = v1[5];

  v11 = *(v13 + 8);

  return v11();
}

uint64_t sub_2271ED310()
{
  v1 = v0[9];
  (*(v0[11] + 56))(v1, 1, 1, v0[10]);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_2271ED11C;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_2271EAACC(v5, v3);
}

uint64_t sub_2271ED3E4()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = *(v0[11] + 8);
  v3(v0[14], v2);
  v3(v1, v2);
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2271ED4D8()
{
  v1 = v0[3];

  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[10];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[6];
  v17 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271ED5EC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_227667370();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_227663540();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = sub_227665C20();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = sub_2276627D0();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();
  v17 = sub_227665CA0();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271ED858, 0, 0);
}

uint64_t sub_2271ED858()
{
  v1 = *(v0 + 88);
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
  *v6 = v0;
  v6[1] = sub_2271ED9D0;
  v8 = *(v0 + 88);

  return v10(v0 + 64, sub_22720E170, v8, v7, v2, v3);
}

uint64_t sub_2271ED9D0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_2271EDF84;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2271EDAEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271EDAEC()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 136);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  *(v0 + 240) = sub_22704DD68(*(v0 + 64));
  *(v0 + 248) = v7;
  *(v0 + 256) = v5[52];
  *(v0 + 16) = sub_22720C954();
  *(v0 + 24) = v8;
  *(v0 + 264) = v8;
  *(v0 + 272) = sub_2276656C0();
  *(v0 + 32) = sub_2276656E0();
  *(v0 + 40) = v9;
  *(v0 + 280) = v9;
  sub_2276656B0();
  sub_2276656D0();
  sub_2276656F0();
  sub_227665700();
  *(v0 + 48) = sub_227665710();
  *(v0 + 56) = v10;
  *(v0 + 288) = sub_2276656A0();
  v11 = v5[16];
  v12 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v11);
  v13 = *(v12 + 24);

  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 296) = v15;
  *v15 = v0;
  v15[1] = sub_2271EDCC4;
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v18 = *(v0 + 96);

  return (v20)(v16, sub_22720E100, v17, v18, v11, v12);
}

uint64_t sub_2271EDCC4()
{
  v3 = *(*v1 + 296);
  v4 = *v1;
  v2 = v4;
  *(v4 + 304) = v0;

  if (v0)
  {
    v6 = *(v4 + 272);
    v5 = *(v4 + 280);
    v7 = *(v4 + 264);
    v8 = *(v4 + 240);
    v9 = *(v4 + 184);
    v33 = *(v4 + 176);
    v34 = *(v4 + 192);
    v32 = *(v4 + 168);
    v10 = *(v4 + 152);
    v31 = *(v4 + 160);
    v11 = *(v4 + 136);
    v29 = *(v4 + 248);
    v30 = *(v4 + 144);
    v12 = *(v4 + 120);
    v13 = *(v4 + 128);
    v14 = *(v2 + 88);

    (*(v13 + 8))(v11, v12);
    (*(v10 + 8))(v31, v30);
    sub_226E97D1C(v32, &qword_27D7B9E10, &qword_227676660);
    (*(v9 + 8))(v34, v33);

    return MEMORY[0x2822009F8](sub_2271EE3BC, 0, 0);
  }

  else
  {
    v15 = *(v4 + 48);
    v16 = *(v4 + 56);
    v17 = *(v4 + 32);
    v18 = *(v4 + 16);
    v19 = *(v4 + 88);

    v20 = swift_task_alloc();
    *(v4 + 312) = v20;
    *v20 = v4;
    v20[1] = sub_2271EE038;
    v21 = *(v4 + 280);
    v22 = *(v4 + 264);
    v23 = *(v4 + 272);
    v24 = *(v4 + 256);
    v25 = *(v4 + 216);
    v26 = *(v4 + 192);
    v27 = *(v4 + 72);
    v40 = *(v4 + 288);
    v41 = *(v4 + 112);
    v39 = *(v4 + 136);
    v37 = *(v4 + 168);
    v38 = *(v4 + 160);
    v36 = *(v4 + 240);

    return sub_22703DD14(v27, v25, v18, v22, v23, v17, v21, v26);
  }
}

uint64_t sub_2271EDF84()
{
  v1 = v0[11];

  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];
  v8 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2271EE038()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v13 = *(*v1 + 280);
  v15 = *(*v1 + 272);
  v17 = *(*v1 + 264);
  v19 = *(*v1 + 248);
  v16 = *(*v1 + 240);
  v24 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v23 = *(*v1 + 176);
  v22 = *(*v1 + 168);
  v21 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v20 = *(*v1 + 144);
  v18 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v14 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 104);
  v9 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 320) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v18, v14);
  (*(v5 + 8))(v21, v20);
  sub_226E97D1C(v22, &qword_27D7B9E10, &qword_227676660);
  (*(v4 + 8))(v24, v23);
  if (v0)
  {
    v11 = sub_2271EE514;
  }

  else
  {
    (*(v2[26] + 8))(v2[27], v2[25]);
    v11 = sub_2271EE468;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2271EE3BC()
{
  v1 = v0[38];
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271EE468()
{
  v1 = v0[27];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271EE514()
{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271EE5C0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_227667370();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_227665C20();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = sub_2276627D0();
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v17 = sub_227663540();
  v3[27] = v17;
  v18 = *(v17 - 8);
  v3[28] = v18;
  v19 = *(v18 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v20 = sub_2276638D0();
  v3[31] = v20;
  v21 = *(v20 - 8);
  v3[32] = v21;
  v3[33] = *(v21 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v22 = sub_227663090();
  v3[40] = v22;
  v23 = *(v22 - 8);
  v3[41] = v23;
  v3[42] = *(v23 + 64);
  v3[43] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC208, &qword_22767CF50);
  v3[44] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v26 = sub_227665CA0();
  v3[46] = v26;
  v27 = *(v26 - 8);
  v3[47] = v27;
  v3[48] = *(v27 + 64);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271EEA90, 0, 0);
}

uint64_t sub_2271EEA90()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v5[16];
  v8 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v7);
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[54] = v10;
  (*(v4 + 32))(v10 + v9, v1, v3);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v11 = *(v8 + 24);

  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[55] = v13;
  *v13 = v0;
  v13[1] = sub_2271EEC7C;
  v15 = v0[44];
  v14 = v0[45];

  return (v17)(v14, sub_22720DAE8, v10, v15, v7, v8);
}

uint64_t sub_2271EEC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_2271F0DDC;
  }

  else
  {
    v5 = *(v2 + 432);

    v4 = sub_2271EED98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271EED98()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 360);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(*(v0 + 352) + 48);
  sub_226E95D18(v6, v2, &unk_27D7BB920, &unk_227672480);
  v10 = *(v5 + 32);
  *(v0 + 456) = v10;
  *(v0 + 464) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v3, v6 + v9, v4);
  sub_226E93170(v2, v1, &unk_27D7BB920, &unk_227672480);
  if ((*(v8 + 48))(v1, 1, v7) == 1)
  {
    sub_226E97D1C(*(v0 + 416), &unk_27D7BB920, &unk_227672480);
LABEL_9:
    v49 = *(v0 + 176);
    v50 = *(v0 + 96);
    sub_2276627C0();
    v51 = v50[16];
    v52 = v50[17];
    __swift_project_boxed_opaque_existential_0(v50 + 13, v51);
    v53 = *(v52 + 24);

    v92 = (v53 + *v53);
    v54 = v53[1];
    v55 = swift_task_alloc();
    *(v0 + 552) = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC158, &qword_22767CCD8);
    *v55 = v0;
    v55[1] = sub_2271EFB4C;
    v57 = *(v0 + 96);

    return v92(v0 + 72, sub_22720E170, v57, v56, v51, v52);
  }

  v11 = *(v0 + 416);
  v12 = *(v0 + 312);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = *(v0 + 88);
  v16 = *(v14 + 32);
  *(v0 + 472) = v16;
  *(v0 + 480) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v16(v12, v11, v13);
  v17 = sub_227663050();
  v19 = v18;
  *(v0 + 16) = v17;
  *(v0 + 24) = v18;
  v21 = v20 & 1;
  *(v0 + 32) = v20 & 1;
  *(v0 + 33) = 0;
  sub_22720DDF8();
  sub_22720DE4C();
  v22 = sub_227663B30();
  sub_226EB2DFC(v17, v19, v21);
  if ((v22 & 1) == 0)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 312), *(v0 + 248));
    goto LABEL_9;
  }

  v23 = *(v0 + 448);
  v24 = *(v0 + 408);
  v25 = *(v0 + 312);
  v26 = *(v0 + 296);
  v27 = *(v0 + 240);
  v28 = *(v0 + 88);
  sub_227663080();
  sub_227663800();
  if (v23)
  {
    v29 = *(v0 + 424);
    v30 = *(v0 + 408);
    v32 = *(v0 + 368);
    v31 = *(v0 + 376);
    v33 = *(v0 + 312);
    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v36 = *(v0 + 96);
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    (*(v35 + 8))(v33, v34);
    sub_2271F273C(v36);
    (*(v31 + 8))(v30, v32);
    sub_226E97D1C(v29, &unk_27D7BB920, &unk_227672480);
    v38 = *(v0 + 416);
    v37 = *(v0 + 424);
    v40 = *(v0 + 400);
    v39 = *(v0 + 408);
    v41 = *(v0 + 392);
    v42 = *(v0 + 360);
    v43 = *(v0 + 344);
    v44 = *(v0 + 304);
    v45 = *(v0 + 312);
    v46 = *(v0 + 296);
    v76 = *(v0 + 288);
    v77 = *(v0 + 280);
    v78 = *(v0 + 272);
    v79 = *(v0 + 240);
    v80 = *(v0 + 232);
    v81 = *(v0 + 208);
    v82 = *(v0 + 200);
    v83 = *(v0 + 192);
    v84 = *(v0 + 184);
    v85 = *(v0 + 176);
    v87 = *(v0 + 152);
    v89 = *(v0 + 144);
    v91 = *(v0 + 120);

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v88 = *(v0 + 304);
    v90 = *(v0 + 296);
    v58 = *(v0 + 256);
    v94 = *(v0 + 248);
    v60 = *(v0 + 216);
    v59 = *(v0 + 224);
    v62 = *(v0 + 200);
    v61 = *(v0 + 208);
    v86 = v61;
    v63 = *(v0 + 184);
    v64 = *(v0 + 192);
    v66 = *(v0 + 160);
    v65 = *(v0 + 168);
    v93 = *(v0 + 96);
    (*(v59 + 8))(*(v0 + 240), v60);
    v67 = sub_227662750();
    (*(*(v67 - 8) + 56))(v61, 1, 1, v67);
    sub_2276627C0();
    v68 = *(v65 + 56);
    v68(v62, 0, 1, v66);
    (*(v59 + 56))(v63, 1, 1, v60);
    v68(v64, 1, 1, v66);
    sub_227663890();
    sub_226E97D1C(v64, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v63, &qword_27D7BC128, &unk_22767CC20);
    sub_226E97D1C(v62, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v86, &qword_27D7B9690, qword_227670B50);
    v69 = *(v58 + 8);
    *(v0 + 488) = v69;
    *(v0 + 496) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69(v90, v94);
    v70 = v93[37];
    __swift_project_boxed_opaque_existential_0(v93 + 33, v93[36]);
    v71 = sub_22766A2C0();
    *(v0 + 504) = v71;
    v72 = swift_task_alloc();
    *(v0 + 512) = v72;
    *v72 = v0;
    v72[1] = sub_2271EF4E8;
    v73 = *(v0 + 304);
    v74 = *(v0 + 288);
    v75 = *(v0 + 96);

    return sub_2271F2D88(v74, v73, v71);
  }
}

uint64_t sub_2271EF4E8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 504);

  if (v0)
  {
    v6 = sub_2271F1388;
  }

  else
  {
    v6 = sub_2271EF61C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271EF61C()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[31];
  v8 = v0[12];
  v9 = v8[17];
  __swift_project_boxed_opaque_existential_0(v8 + 13, v8[16]);
  (*(v5 + 16))(v4, v3, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[66] = v11;
  v2(v11 + v10, v4, v7);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v12 = *(v9 + 24);

  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[67] = v14;
  *v14 = v0;
  v14[1] = sub_2271EF808;

  return v16();
}

uint64_t sub_2271EF808()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 528);

  if (v0)
  {
    v6 = sub_2271F157C;
  }

  else
  {
    v6 = sub_2271EF93C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271EF93C()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[59];
  v33 = v0[60];
  v4 = v0[47];
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[31];
  v8 = v0[12];
  v9 = v0[10];
  v2(v0[38], v7);
  v2(v5, v7);
  v3(v9, v6, v7);
  sub_2271F273C(v8);
  v11 = v0[52];
  v10 = v0[53];
  v12 = v0[50];
  v13 = v0[49];
  v14 = v0[45];
  v15 = v0[43];
  v16 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v17 = v0[22];
  v31 = v0[19];
  v32 = v0[18];
  v34 = v0[15];
  (*(v4 + 8))(v0[51], v0[46]);
  sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);

  v18 = v0[1];

  return v18();
}

uint64_t sub_2271EFB4C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v7 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = sub_2271F011C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2271EFC68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271EFC68()
{
  v1 = v0[51];
  v2 = v0[29];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[11];
  v5 = v0[12];
  v0[71] = sub_22704DD68(v0[9]);
  v0[72] = v7;
  v0[73] = v5[52];
  v0[5] = sub_22720C954();
  v0[6] = v8;
  v0[74] = v8;
  v0[75] = sub_227665C60();
  v0[7] = sub_227665C70();
  v0[8] = v9;
  v0[76] = v9;
  v10 = sub_2276686C0();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_227665C90();
  sub_227663080();
  v0[77] = sub_227665C30();
  v11 = v5[16];
  v12 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v11);
  v13 = *(v12 + 24);

  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[78] = v15;
  *v15 = v0;
  v15[1] = sub_2271EFE74;
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[13];

  return (v20)(v16, sub_22720E100, v17, v18, v11, v12);
}

uint64_t sub_2271EFE74()
{
  v2 = *(*v1 + 624);
  v3 = *v1;
  v3[79] = v0;

  if (v0)
  {
    v4 = v3[76];
    v5 = v3[75];
    v6 = v3[74];
    v7 = v3[72];
    v8 = v3[71];
    v9 = v3[28];
    v25 = v3[29];
    v10 = v3[27];
    v35 = v3[19];
    v11 = v3[17];
    v26 = v3[16];
    v27 = v3[18];
    v12 = v3[12];

    (*(v9 + 8))(v25, v10);
    (*(v11 + 8))(v27, v26);
    sub_226E97D1C(v35, &qword_27D7B9E10, &qword_227676660);

    return MEMORY[0x2822009F8](sub_2271F0618, 0, 0);
  }

  else
  {
    v13 = v3[7];
    v14 = v3[5];
    v15 = v3[12];

    v16 = swift_task_alloc();
    v3[80] = v16;
    *v16 = v3;
    v16[1] = sub_2271F0318;
    v17 = v3[76];
    v18 = v3[75];
    v19 = v3[74];
    v20 = v3[73];
    v21 = v3[50];
    v22 = v3[34];
    v23 = v3[22];
    v33 = v3[77];
    v34 = v3[15];
    v32 = v3[29];
    v30 = v3[19];
    v31 = v3[18];
    v29 = *(v3 + 71);

    return sub_22703DD14(v22, v21, v14, v19, v18, v13, v17, v23);
  }
}

uint64_t sub_2271F011C()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[12];

  (*(v6 + 8))(v5, v7);
  sub_2271F273C(v8);
  (*(v4 + 8))(v2, v3);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);
  v34 = v0[70];
  v10 = v0[52];
  v9 = v0[53];
  v12 = v0[50];
  v11 = v0[51];
  v13 = v0[49];
  v14 = v0[45];
  v15 = v0[43];
  v17 = v0[38];
  v16 = v0[39];
  v18 = v0[37];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[34];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[23];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[18];
  v33 = v0[15];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2271F0318()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v22 = *v1;
  *(*v1 + 648) = v0;

  v4 = v2[76];
  v5 = v2[75];
  v6 = v2[74];
  v7 = v2[72];
  v8 = v2[71];
  v19 = v2[29];
  v9 = v2[28];
  v17 = v2[27];
  v20 = v2[19];
  v18 = v2[18];
  v10 = v2[17];
  v16 = v2[16];
  v11 = v2[15];
  v12 = v2[14];
  v13 = v2[13];

  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v19, v17);
  (*(v10 + 8))(v18, v16);
  sub_226E97D1C(v20, &qword_27D7B9E10, &qword_227676660);
  if (v21)
  {
    v14 = sub_2271F0F70;
  }

  else
  {
    v14 = sub_2271F0804;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_2271F0618()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_2271F273C(v5);
  (*(v4 + 8))(v2, v3);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);
  v31 = v0[79];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v10 = v0[49];
  v11 = v0[45];
  v12 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[15];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2271F0804()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v19 = v0[48];
  v4 = v0[46];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v18 = v0[33];
  v8 = v0[31];
  v9 = v0[12];
  v23 = v9[16];
  v20 = v9[17];
  v21 = v0[57];
  __swift_project_boxed_opaque_existential_0(v9 + 13, v23);
  (*(v7 + 16))(v5, v6, v8);
  (*(v3 + 16))(v2, v1, v4);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v18 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[82] = v12;
  v13 = *(v7 + 32);
  v0[83] = v13;
  v0[84] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v10, v5, v8);
  v21(v12 + v11, v2, v4);
  *(v12 + ((v19 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v14 = *(v20 + 24);

  v22 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[85] = v16;
  *v16 = v0;
  v16[1] = sub_2271F0A7C;

  return v22();
}

uint64_t sub_2271F0A7C()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v4 = *v1;
  *(*v1 + 688) = v0;

  v5 = *(v2 + 656);

  if (v0)
  {
    v6 = sub_2271F115C;
  }

  else
  {
    v6 = sub_2271F0BB0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271F0BB0()
{
  v1 = v0[84];
  v33 = v0[83];
  v2 = v0[34];
  v3 = v0[31];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[12];
  v8 = v0[10];
  v18 = *(v0[47] + 8);
  v18(v0[50], v0[46]);
  (*(v5 + 8))(v4, v6);
  v33(v8, v2, v3);
  sub_2271F273C(v7);
  v9 = v0[52];
  v10 = v0[53];
  v11 = v0[50];
  v12 = v0[49];
  v13 = v0[45];
  v14 = v0[43];
  v15 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[34];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[23];
  v30 = v0[22];
  v31 = v0[19];
  v32 = v0[18];
  v34 = v0[15];
  v18(v0[51], v0[46]);
  sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2271F0DDC()
{
  v1 = v0[54];

  v27 = v0[56];
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  v7 = v0[45];
  v8 = v0[43];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[37];
  v14 = v0[36];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[26];
  v20 = v0[25];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271F0F70()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[12];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_2271F273C(v5);
  (*(v4 + 8))(v2, v3);
  sub_226E97D1C(v1, &unk_27D7BB920, &unk_227672480);
  v31 = v0[81];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v10 = v0[49];
  v11 = v0[45];
  v12 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[15];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2271F115C()
{
  v34 = v0[51];
  v36 = v0[53];
  v1 = v0[46];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];
  v32 = v0[12];
  v8 = *(v0[47] + 8);
  v8(v0[50], v1);
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v6, v7);
  sub_2271F273C(v32);
  v8(v34, v1);
  sub_226E97D1C(v36, &unk_27D7BB920, &unk_227672480);
  v37 = v0[86];
  v10 = v0[52];
  v9 = v0[53];
  v12 = v0[50];
  v11 = v0[51];
  v13 = v0[49];
  v14 = v0[45];
  v15 = v0[43];
  v17 = v0[38];
  v16 = v0[39];
  v18 = v0[37];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[34];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[23];
  v30 = v0[22];
  v31 = v0[19];
  v33 = v0[18];
  v35 = v0[15];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2271F1388()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[53];
  v4 = v0[51];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[39];
  v8 = v0[31];
  v9 = v0[12];
  v2(v0[38], v8);
  v2(v7, v8);
  sub_2271F273C(v9);
  (*(v6 + 8))(v4, v5);
  sub_226E97D1C(v3, &unk_27D7BB920, &unk_227672480);
  v35 = v0[65];
  v11 = v0[52];
  v10 = v0[53];
  v13 = v0[50];
  v12 = v0[51];
  v14 = v0[49];
  v15 = v0[45];
  v16 = v0[43];
  v18 = v0[38];
  v17 = v0[39];
  v19 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[22];
  v32 = v0[19];
  v33 = v0[18];
  v34 = v0[15];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2271F157C()
{
  v2 = v0[61];
  v1 = v0[62];
  v35 = v0[53];
  v3 = v0[51];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[31];
  v9 = v0[12];
  v2(v0[36], v8);
  v2(v7, v8);
  v2(v6, v8);
  sub_2271F273C(v9);
  (*(v4 + 8))(v3, v5);
  sub_226E97D1C(v35, &unk_27D7BB920, &unk_227672480);
  v36 = v0[68];
  v11 = v0[52];
  v10 = v0[53];
  v13 = v0[50];
  v12 = v0[51];
  v14 = v0[49];
  v15 = v0[45];
  v16 = v0[43];
  v18 = v0[38];
  v17 = v0[39];
  v19 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[22];
  v32 = v0[19];
  v33 = v0[18];
  v34 = v0[15];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2271F1784@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v123 = a4;
  v9 = sub_227665CA0();
  v144 = *(v9 - 8);
  v10 = *(v144 + 64);
  MEMORY[0x28223BE20](v9);
  v129 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v127 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v120 - v16;
  v18 = sub_2276627D0();
  v136 = *(v18 - 8);
  v137 = v18;
  v19 = *(v136 + 64);
  MEMORY[0x28223BE20](v18);
  v133 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v126 = &v120 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v131 = &v120 - v25;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v26 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v128 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v120 - v29;
  MEMORY[0x28223BE20](v31);
  v130 = &v120 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v120 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v125 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v120 - v41;
  v43 = sub_2276638D0();
  v138 = *(v43 - 8);
  v139 = v43;
  v44 = *(v138 + 64);
  MEMORY[0x28223BE20](v43);
  v132 = &v120 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v135 = &v120 - v47;
  v140 = a2;
  v48 = sub_227663060();
  v134 = a3;
  if ((v48 & 1) == 0)
  {
    v50 = a1;
    v51 = v144;
    goto LABEL_7;
  }

  v120 = v17;
  v121 = v9;
  __swift_project_boxed_opaque_existential_0(a3 + 18, a3[21]);
  v49 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v122 = a1;
  (v49)(a1);
  if (v4)
  {

    (*(v138 + 56))(v42, 1, 1, v139);
    v5 = 0;
LABEL_6:
    v51 = v144;
    sub_226E97D1C(v42, &unk_27D7BB920, &unk_227672480);
    v9 = v121;
    v17 = v120;
    v50 = v122;
    goto LABEL_7;
  }

  v53 = v138;
  v52 = v139;
  if ((*(v138 + 48))(v42, 1, v139) == 1)
  {
    goto LABEL_6;
  }

  (*(v53 + 32))(v135, v42, v52);
  v60 = sub_227662750();
  (*(*(v60 - 8) + 56))(v36, 1, 1, v60);
  v61 = v137;
  v62 = *(v136 + 56);
  v63 = v130;
  v62(v130, 1, 1, v137);
  v64 = sub_227663540();
  v65 = v131;
  (*(*(v64 - 8) + 56))(v131, 1, 1, v64);
  v62(v30, 1, 1, v61);
  v66 = v132;
  sub_227663890();
  sub_226E97D1C(v30, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v65, &qword_27D7BC128, &unk_22767CC20);
  sub_226E97D1C(v63, &unk_27D7BB9D0, &qword_227671550);
  sub_226E97D1C(v36, &qword_27D7B9690, qword_227670B50);
  v50 = v122;
  sub_22727EB5C(v66, v122);
  v51 = v144;
  v74 = *__swift_project_boxed_opaque_existential_0(v134 + 5, v134[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_227670CD0;
  v76 = v126;
  sub_2276637C0();
  sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
  v77 = v137;
  v78 = sub_22766D140();
  v80 = v79;
  (*(v136 + 8))(v76, v77);
  *(v75 + 32) = v78;
  *(v75 + 40) = v80;
  sub_2272D7E08(0, v75, v50);

  v104 = v139;
  v105 = *(v138 + 8);
  v105(v132, v139);
  v105(v135, v104);
  v9 = v121;
  v17 = v120;
LABEL_7:
  result = sub_22727E684(v50);
  if (!v5)
  {
    if (result)
    {
      v55 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D51160], v55);
      return swift_willThrow();
    }

    else
    {
      v57 = __swift_project_boxed_opaque_existential_0(v134 + 18, v134[21]);
      v58 = v133;
      sub_227663070();
      v59 = *v57;
      sub_227254380(v58, v50, v17);
      v67 = v50;
      v68 = v136;
      v69 = v58;
      v70 = v137;
      (*(v136 + 8))(v69, v137);
      v71 = v127;
      sub_226E93170(v17, v127, &qword_27D7BC148, &unk_22767CCA0);
      if ((*(v51 + 48))(v71, 1, v9) == 1)
      {
        sub_226E97D1C(v71, &qword_27D7BC148, &unk_22767CCA0);
        v72 = sub_227664EC0();
        sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
        swift_allocError();
        (*(*(v72 - 8) + 104))(v73, *MEMORY[0x277D51198], v72);
        swift_willThrow();
        return sub_226E97D1C(v17, &qword_27D7BC148, &unk_22767CCA0);
      }

      else
      {
        v120 = v17;
        v140 = 0;
        v81 = *(v51 + 32);
        v121 = v9;
        v138 = v51 + 32;
        v139 = v81;
        v81(v129, v71, v9);
        v82 = __swift_project_boxed_opaque_existential_0(v67, v67[3]);
        v83 = *v82;
        v84 = v82[1];
        v85 = *(v82 + 16);
        v86 = v82[3];
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
        v88 = *(v87 + 48);
        v89 = *(v87 + 52);
        v90 = swift_allocObject();
        v91 = v83;
        v92 = v84;

        sub_22766A070();
        *(v90 + 16) = v91;
        *(v90 + 24) = v92;
        *(v90 + 32) = v85;
        *(v90 + 40) = v86;
        swift_getKeyPath();
        v93 = v128;
        sub_227663070();
        (*(v68 + 56))(v93, 0, 1, v70);
        v143[3] = v124;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v143);
        sub_226E93170(v93, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
        sub_226F06498();

        v95 = sub_22766C820();
        sub_226E93170(v143, v141, &unk_27D7BC990, &qword_227670A30);
        v96 = v142;
        if (v142)
        {
          v97 = __swift_project_boxed_opaque_existential_0(v141, v142);
          v98 = *(v96 - 8);
          v99 = *(v98 + 64);
          v100 = MEMORY[0x28223BE20](v97);
          v102 = &v120 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v98 + 16))(v102, v100);
          v103 = sub_22766D170();
          (*(v98 + 8))(v102, v96);
          __swift_destroy_boxed_opaque_existential_0(v141);
        }

        else
        {
          v103 = 0;
        }

        v106 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v107 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

        sub_226E97D1C(v128, &unk_27D7BB9D0, &qword_227671550);
        sub_226E97D1C(v143, &unk_27D7BC990, &qword_227670A30);
        swift_beginAccess();
        v108 = v107;
        v109 = sub_22766A080();
        v111 = v110;
        MEMORY[0x22AA985C0]();
        if (*((*v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v119 = *((*v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v109(v143, 0);
        swift_endAccess();

        swift_getKeyPath();
        v112 = sub_227397FC8();

        v114 = MEMORY[0x22AA99A00](v113);
        v115 = v125;
        v116 = v140;
        sub_227544D6C(v112, v125);
        objc_autoreleasePoolPop(v114);

        if (v116)
        {
          (*(v144 + 8))(v129, v121);
          return sub_226E97D1C(v120, &qword_27D7BC148, &unk_22767CCA0);
        }

        else
        {
          sub_226E97D1C(v120, &qword_27D7BC148, &unk_22767CCA0);
          v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC208, &qword_22767CF50) + 48);
          v118 = v123;
          sub_226E95D18(v115, v123, &unk_27D7BB920, &unk_227672480);
          return v139(v118 + v117, v129, v121);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2271F273C(void *a1)
{
  v19 = sub_22766A170();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669D60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  sub_227665EE0();
  v12 = sub_22766C0B0();

  [v11 postNotificationName_];

  v13 = a1[2];
  v14 = a1[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v7 + 8))(v10, v6);
  v15 = *__swift_project_boxed_opaque_existential_0(a1 + 5, a1[8]);
  sub_2271D7EE8();
  sub_22766A160();
  v16 = v19;
  sub_2276699D0();
  return (*(v2 + 8))(v5, v16);
}

uint64_t sub_2271F2960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v42 = a3;
  v7 = sub_2276627D0();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v44 = a1;
  v12 = __swift_project_boxed_opaque_existential_0(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
  v13 = sub_2276638D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  v43 = xmmword_227670CD0;
  *(v17 + 16) = xmmword_227670CD0;
  (*(v14 + 16))(v17 + v16, a2, v13);
  sub_22756601C(v17, v12[1], *(v12 + 16), v12[3]);

  if (!v4)
  {
    v38 = a2;
    v39 = v10;
    v19 = __swift_project_boxed_opaque_existential_0(v44, v44[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0D0, &qword_227677F00);
    v20 = sub_227665CA0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v43;
    (*(v21 + 16))(v24 + v23, v42, v20);
    sub_22756554C(v24, v19[1], *(v19 + 16), v19[3]);

    v25 = v40;
    v37[2] = *__swift_project_boxed_opaque_existential_0((v40 + 40), *(v40 + 64));
    v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v26 = swift_allocObject();
    *(v26 + 16) = v43;
    v27 = v39;
    sub_2276637C0();
    v38 = sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v28 = sub_22766D140();
    v30 = v29;
    v31 = *(v41 + 8);
    v31(v27, v7);
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    sub_2272D7E08(0, v26, v44);

    v32 = *__swift_project_boxed_opaque_existential_0((v25 + 40), *(v25 + 64));
    v33 = swift_allocObject();
    *(v33 + 16) = v43;
    sub_227665C40();
    v34 = sub_22766D140();
    v36 = v35;
    v31(v27, v7);
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    sub_2272D7DDC(0, v33, v44);
  }

  return result;
}

uint64_t sub_2271F2D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC128, &unk_22767CC20) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v8 = sub_227667370();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v12 = sub_227666B60();
  v4[30] = v12;
  v13 = *(v12 - 8);
  v4[31] = v13;
  v14 = *(v13 + 64) + 15;
  v4[32] = swift_task_alloc();
  v15 = sub_2276638D0();
  v4[33] = v15;
  v16 = *(v15 - 8);
  v4[34] = v16;
  v17 = *(v16 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v18 = sub_2276627D0();
  v4[38] = v18;
  v19 = *(v18 - 8);
  v4[39] = v19;
  v20 = *(v19 + 64) + 15;
  v4[40] = swift_task_alloc();
  v21 = sub_22766B390();
  v4[41] = v21;
  v22 = *(v21 - 8);
  v4[42] = v22;
  v23 = *(v22 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F30CC, 0, 0);
}

uint64_t sub_2271F30CC()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = swift_allocBox();
  v0[45] = v6;
  v0[46] = v7;
  v8 = *(v2 + 16);
  v0[47] = v8;
  v0[48] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7, v5, v1);
  v9 = v3[16];
  v10 = v3[17];
  __swift_project_boxed_opaque_existential_0(v3 + 13, v9);
  v11 = swift_allocObject();
  v0[49] = v11;
  v11[2] = v3;
  v11[3] = v6;
  v11[4] = v4;
  v12 = *(v10 + 24);

  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[50] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC220, qword_22767CF68);
  *v14 = v0;
  v14[1] = sub_2271F32C4;

  return (v17)(v0 + 14, sub_22720DEE0, v11, v15, v9, v10);
}

uint64_t sub_2271F32C4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_2271F47CC;
  }

  else
  {
    v5 = *(v2 + 392);

    v4 = sub_2271F33E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271F33E0()
{
  v89 = v0;
  v1 = *(v0 + 120);
  *(v0 + 416) = *(v0 + 112);
  *(v0 + 424) = v1;
  if (!*(v1 + 16))
  {
    v25 = *(v0 + 376);
    v24 = *(v0 + 384);
    v26 = *(v0 + 368);
    v27 = *(v0 + 264);
    v28 = *(v0 + 144);

    swift_beginAccess();
    v29 = v28;
    v30 = v26;
LABEL_18:
    v25(v29, v30, v27);
    v65 = *(v0 + 352);
    v64 = *(v0 + 360);
    v66 = *(v0 + 344);
    v67 = *(v0 + 320);
    v69 = *(v0 + 288);
    v68 = *(v0 + 296);
    v70 = *(v0 + 280);
    v71 = *(v0 + 256);
    v73 = *(v0 + 224);
    v72 = *(v0 + 232);
    v80 = *(v0 + 200);
    loga = *(v0 + 192);
    v85 = *(v0 + 184);
    v87 = *(v0 + 176);

    v74 = *(v0 + 8);

    return v74();
  }

  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  sub_22766A630();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v75 = *(v0 + 376);
    v76 = *(v0 + 384);
    v6 = *(v0 + 368);
    v7 = *(v0 + 336);
    v83 = *(v0 + 328);
    v86 = *(v0 + 352);
    v8 = *(v0 + 312);
    v9 = *(v0 + 320);
    v77 = *(v0 + 304);
    v79 = v5;
    v10 = *(v0 + 296);
    log = v4;
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88 = v78;
    *v13 = 136315394;
    swift_beginAccess();
    v75(v10, v6, v12);
    sub_2276637C0();
    (*(v11 + 8))(v10, v12);
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v14 = sub_22766D140();
    v16 = v15;
    (*(v8 + 8))(v9, v77);
    v17 = sub_226E97AE8(v14, v16, &v88);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_22766C610();
    v20 = sub_226E97AE8(v18, v19, &v88);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_226E8E000, log, v79, "Found missing workouts in plan (%s): %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v78, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v23 = *(v7 + 8);
    v22 = v7 + 8;
    v21 = v23;
    v23(v86, v83);
  }

  else
  {
    v31 = *(v0 + 352);
    v32 = *(v0 + 328);
    v33 = *(v0 + 336);

    v34 = *(v33 + 8);
    v22 = v33 + 8;
    v21 = v34;
    v34(v31, v32);
  }

  *(v0 + 432) = v22;
  *(v0 + 440) = v21;
  v35 = *(v0 + 368);
  v36 = *(v1 + 32);
  *(v0 + 544) = v36;
  v37 = 1 << v36;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(v1 + 56);
  swift_beginAccess();
  if (!v39)
  {
    v42 = 0;
    v41 = *(v0 + 424);
    while (1)
    {
      v40 = v42 + 1;
      if (v42 + 1 >= ((1 << *(v0 + 544)) + 63) >> 6)
      {
        break;
      }

      v39 = *(v41 + 8 * v42++ + 64);
      if (v39)
      {
        goto LABEL_14;
      }
    }

    v60 = *(v0 + 416);
    v25 = *(v0 + 376);
    v61 = *(v0 + 384);
    v62 = *(v0 + 368);
    v27 = *(v0 + 264);
    v63 = *(v0 + 144);

    swift_beginAccess();
    v29 = v63;
    v30 = v62;
    goto LABEL_18;
  }

  v40 = 0;
  v41 = *(v0 + 424);
LABEL_14:
  *(v0 + 448) = v39;
  *(v0 + 456) = v40;
  v44 = *(v0 + 376);
  v43 = *(v0 + 384);
  v45 = *(v0 + 368);
  v46 = *(v0 + 288);
  v47 = *(v0 + 264);
  v48 = *(v0 + 168);
  v49 = (*(v41 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v39)))));
  *(v0 + 464) = *v49;
  *(v0 + 472) = v49[1];
  *(v0 + 480) = v48[52];

  *(v0 + 128) = sub_22720C954();
  *(v0 + 136) = v50;
  *(v0 + 488) = v50;
  v44(v46, v45, v47);
  v51 = v48[16];
  v52 = v48[17];
  __swift_project_boxed_opaque_existential_0(v48 + 13, v51);
  v53 = *(v52 + 24);

  v84 = (v53 + *v53);
  v54 = v53[1];
  v55 = swift_task_alloc();
  *(v0 + 496) = v55;
  *v55 = v0;
  v55[1] = sub_2271F3A00;
  v56 = *(v0 + 224);
  v57 = *(v0 + 208);
  v58 = *(v0 + 168);

  return (v84)(v56, sub_22720E100, v58, v57, v51, v52);
}

uint64_t sub_2271F3A00()
{
  v2 = *(*v1 + 496);
  v3 = *v1;
  v3[63] = v0;

  if (v0)
  {
    v4 = v3[61];
    v5 = v3[59];
    v6 = v3[52];
    v7 = v3[21];
    (*(v3[34] + 8))(v3[36], v3[33]);

    return MEMORY[0x2822009F8](sub_2271F3DD8, 0, 0);
  }

  else
  {
    v8 = v3[16];
    v9 = v3[21];

    v10 = swift_task_alloc();
    v3[64] = v10;
    *v10 = v3;
    v10[1] = sub_2271F3BE4;
    v12 = v3[60];
    v11 = v3[61];
    v13 = v3[58];
    v14 = v3[59];
    v15 = v3[52];
    v16 = v3[36];
    v18 = v3[28];
    v17 = v3[29];

    return sub_227049244(v17, v8, v11, v13, v14, v16, v15, v18);
  }
}

uint64_t sub_2271F3BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  v2[65] = v0;

  v5 = v2[61];
  if (v0)
  {
    v6 = v2[59];
    v7 = v2[52];
    v8 = v2[36];
    v9 = v2[33];
    v10 = v2[34];
    v12 = v2[27];
    v11 = v2[28];
    v13 = v2[26];

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v8, v9);
    v14 = sub_2271F48EC;
  }

  else
  {
    v15 = v2[36];
    v16 = v2[33];
    v17 = v2[34];
    v19 = v2[27];
    v18 = v2[28];
    v20 = v2[26];

    (*(v19 + 8))(v18, v20);
    v21 = *(v17 + 8);
    v2[66] = v21;
    v2[67] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v15, v16);
    v14 = sub_2271F3EF8;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_2271F3DD8()
{
  v1 = v0[53];
  v2 = v0[45];

  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[25];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[63];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2271F3EF8()
{
  v110 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 472);
    v5 = *(v0 + 360);
    v6 = *(v0 + 344);
    sub_226E97D1C(v3, &qword_27D7B8F20, &qword_2276767D0);
    sub_22766A630();

    v7 = sub_22766B380();
    v8 = sub_22766C890();

    if (os_log_type_enabled(v7, v8))
    {
      v92 = *(v0 + 528);
      v94 = *(v0 + 536);
      v9 = *(v0 + 464);
      v10 = *(v0 + 472);
      v102 = *(v0 + 432);
      v106 = *(v0 + 440);
      v89 = *(v0 + 376);
      v91 = *(v0 + 384);
      v87 = *(v0 + 368);
      v11 = *(v0 + 320);
      v97 = *(v0 + 328);
      v99 = *(v0 + 344);
      v12 = *(v0 + 312);
      v95 = *(v0 + 304);
      v13 = *(v0 + 296);
      v14 = *(v0 + 264);
      v15 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v109[0] = v96;
      *v15 = 136315394;
      v16 = sub_226E97AE8(v9, v10, v109);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2080;
      v89(v13, v87, v14);
      sub_2276637C0();
      v92(v13, v14);
      sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
      v17 = sub_22766D140();
      v19 = v18;
      (*(v12 + 8))(v11, v95);
      v20 = sub_226E97AE8(v17, v19, v109);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_226E8E000, v7, v8, "Couldn't find replacement for %s in %s.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v96, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      result = v106(v99, v97);
    }

    else
    {
      v35 = *(v0 + 472);
      v37 = *(v0 + 432);
      v36 = *(v0 + 440);
      v38 = *(v0 + 344);
      v39 = *(v0 + 328);

      result = v36(v38, v39);
    }
  }

  else
  {
    v107 = *(v0 + 536);
    v22 = *(v0 + 528);
    v79 = *(v0 + 464);
    v80 = *(v0 + 472);
    v23 = *(v0 + 376);
    v81 = *(v0 + 520);
    v24 = *(v0 + 368);
    v78 = *(v0 + 360);
    v25 = *(v0 + 296);
    v86 = *(v0 + 304);
    v88 = v25;
    v26 = *(v0 + 280);
    v82 = v26;
    v83 = *(v0 + 312);
    v103 = *(v0 + 272);
    v27 = *(v0 + 264);
    v84 = *(v0 + 200);
    v85 = *(v0 + 192);
    v93 = *(v0 + 184);
    v90 = *(v0 + 176);
    v28 = *(v2 + 32);
    v100 = v2;
    v29 = *(v0 + 256);
    v28();
    v23(v25, v24, v27);
    v30 = sub_227663840();
    v22(v25, v27);
    v31 = swift_task_alloc();
    v31[2] = v79;
    v31[3] = v80;
    v31[4] = v78;
    v31[5] = v29;
    sub_2271C3570(sub_22720DF00, v31, v30);

    v23(v82, v24, v27);
    v32 = sub_227662750();
    (*(*(v32 - 8) + 56))(v84, 1, 1, v32);
    v33 = *(v83 + 56);
    v33(v85, 1, 1, v86);
    v34 = sub_227663540();
    (*(*(v34 - 8) + 56))(v90, 1, 1, v34);
    v33(v93, 1, 1, v86);
    sub_227663890();

    sub_226E97D1C(v93, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v90, &qword_27D7BC128, &unk_22767CC20);
    sub_226E97D1C(v85, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v84, &qword_27D7B9690, qword_227670B50);
    v22(v82, v27);
    (*(v103 + 40))(v24, v88, v27);
    result = (*(v100 + 8))(v29, v1);
  }

  v40 = *(v0 + 456);
  v41 = (*(v0 + 448) - 1) & *(v0 + 448);
  if (v41)
  {
    v42 = *(v0 + 424);
LABEL_12:
    *(v0 + 448) = v41;
    *(v0 + 456) = v40;
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v47 = *(v0 + 288);
    v48 = *(v0 + 264);
    v49 = *(v0 + 168);
    v50 = (*(v42 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v41)))));
    *(v0 + 464) = *v50;
    *(v0 + 472) = v50[1];
    *(v0 + 480) = v49[52];

    *(v0 + 128) = sub_22720C954();
    *(v0 + 136) = v51;
    *(v0 + 488) = v51;
    v45(v47, v46, v48);
    v52 = v49[16];
    v53 = v49[17];
    __swift_project_boxed_opaque_existential_0(v49 + 13, v52);
    v54 = *(v53 + 24);

    v104 = (v54 + *v54);
    v55 = v54[1];
    v56 = swift_task_alloc();
    *(v0 + 496) = v56;
    *v56 = v0;
    v56[1] = sub_2271F3A00;
    v57 = *(v0 + 224);
    v58 = *(v0 + 208);
    v59 = *(v0 + 168);

    return (v104)(v57, sub_22720E100, v59, v58, v52, v53);
  }

  else
  {
    while (1)
    {
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        return result;
      }

      if (v43 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {
        break;
      }

      v42 = *(v0 + 424);
      v41 = *(v42 + 8 * v43 + 56);
      ++v40;
      if (v41)
      {
        v40 = v43;
        goto LABEL_12;
      }
    }

    v60 = *(v0 + 416);
    v61 = *(v0 + 424);
    v63 = *(v0 + 376);
    v62 = *(v0 + 384);
    v64 = *(v0 + 368);
    v65 = *(v0 + 264);
    v66 = *(v0 + 144);

    swift_beginAccess();
    v63(v66, v64, v65);
    v68 = *(v0 + 352);
    v67 = *(v0 + 360);
    v69 = *(v0 + 344);
    v70 = *(v0 + 320);
    v72 = *(v0 + 288);
    v71 = *(v0 + 296);
    v73 = *(v0 + 280);
    v74 = *(v0 + 256);
    v76 = *(v0 + 224);
    v75 = *(v0 + 232);
    v98 = *(v0 + 200);
    v101 = *(v0 + 192);
    v105 = *(v0 + 184);
    v108 = *(v0 + 176);

    v77 = *(v0 + 8);

    return v77();
  }
}

uint64_t sub_2271F47CC()
{
  v1 = v0[49];
  v2 = v0[45];

  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[25];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[51];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2271F48EC()
{
  v1 = v0[53];
  v2 = v0[45];

  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[25];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[65];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2271F4A0C(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = sub_2276627D0();
  v25 = *(v24 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
  v10 = sub_2276638D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v22 = xmmword_227670CD0;
  *(v14 + 16) = xmmword_227670CD0;
  (*(v11 + 16))(v14 + v13, a2, v10);
  sub_22756601C(v14, v9[1], *(v9 + 16), v9[3]);

  if (!v3)
  {
    v16 = *__swift_project_boxed_opaque_existential_0((v23 + 40), *(v23 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v17 = swift_allocObject();
    *(v17 + 16) = v22;
    sub_2276637C0();
    sub_226EAC024(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v18 = v24;
    v19 = sub_22766D140();
    v21 = v20;
    (*(v25 + 8))(v8, v18);
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_2272D7E08(0, v17, a1);
  }

  return result;
}

uint64_t sub_2271F4CA8()
{
  v45 = sub_227665440();
  v0 = *(v45 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC138, &unk_22767CC80);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  result = sub_227663840();
  v11 = 0;
  v13 = result + 64;
  v12 = *(result + 64);
  v42 = v0;
  v43 = result;
  v14 = 1 << *(result + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v38[1] = v0 + 32;
  v38[2] = v0 + 16;
  v44 = (v0 + 8);
  v39 = v9;
  v40 = v7;
  if ((v15 & v12) != 0)
  {
    while (1)
    {
      v18 = v11;
LABEL_12:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v18 << 6);
      v24 = v42;
      v23 = v43;
      v25 = v41;
      v26 = v45;
      (*(v42 + 16))(v41, *(v43 + 48) + *(v42 + 72) * v22, v45);
      v27 = *(*(v23 + 56) + 8 * v22);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
      v29 = *(v28 + 48);
      v30 = *(v24 + 32);
      v7 = v40;
      v30(v40, v25, v26);
      *&v7[v29] = v27;
      (*(*(v28 - 8) + 56))(v7, 0, 1, v28);

      v20 = v18;
      v9 = v39;
LABEL_13:
      sub_226E95D18(v7, v9, &qword_27D7BC138, &unk_22767CC80);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
      v32 = (*(*(v31 - 8) + 48))(v9, 1, v31);
      if (v32 == 1)
      {

        return v32 != 1;
      }

      v33 = *&v9[*(v31 + 48)];
      v34 = *(v33 + 16);
      v35 = sub_226F45450(v33);

      v36 = *(v35 + 16);

      if (v34 != v36)
      {
        break;
      }

      result = (*v44)(v9, v45);
      v11 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    (*v44)(v9, v45);
    return v32 != 1;
  }

  else
  {
LABEL_5:
    if (v17 <= v11 + 1)
    {
      v19 = v11 + 1;
    }

    else
    {
      v19 = v17;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
        (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v18);
      ++v11;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2271F50AC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227666E60();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_227665750();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_2276638D0();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1F0, &qword_22767CF18) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v13 = sub_227666E30();
  v2[22] = v13;
  v14 = *(v13 - 8);
  v2[23] = v14;
  v2[24] = *(v14 + 64);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F5314, 0, 0);
}

uint64_t sub_2271F5314()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v6[16];
  v8 = v6[17];
  __swift_project_boxed_opaque_existential_0(v6 + 13, v7);
  (*(v4 + 16))(v1, v5, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[26] = v10;
  *(v10 + 16) = v6;
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = *(v8 + 24);

  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[27] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1F8, &qword_22767CF20);
  *v13 = v0;
  v13[1] = sub_2271F550C;

  return (v16)(v0 + 2, sub_22720D894, v10, v14, v7, v8);
}

uint64_t sub_2271F550C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_2271F68B8;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_2271F5628;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271F5628()
{
  v104 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 16);
  *(v0 + 232) = v2;
  v3 = *(v2 + 32);
  *(v0 + 304) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v2 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v92 = *(v0 + 224);
  *(v0 + 240) = MEMORY[0x277D84F98];
  v7 = v4 & v6;
  if (v7)
  {
    v8 = 0;
LABEL_8:
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 120);
    v99 = (v7 - 1) & v7;
    v14 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v1 + 16))(v12, *(v2 + 48) + *(v1 + 72) * v14, v13);
    v15 = *(*(v2 + 56) + 8 * v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
    v17 = *(v16 + 48);
    (*(v1 + 32))(v11, v12, v13);
    *(v11 + v17) = v15;
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);

    v18 = v99;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v2 + 72 + 8 * v9++);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v40 = *(v0 + 160);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    v18 = 0;
  }

  *(v0 + 248) = v18;
  *(v0 + 256) = v10;
  v19 = *(v0 + 168);
  sub_226E95D18(*(v0 + 160), v19, &qword_27D7BC1F0, &qword_22767CF18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    v21 = *(v0 + 232);
    v22 = *(v0 + 24);

    v23 = sub_227666DF0();
    v24 = MEMORY[0x277D84F98];
    v25 = *(MEMORY[0x277D84F98] + 16);
    v100 = v23;
    if (v25)
    {
      v26 = *(v0 + 128);
      v90 = sub_2274CDB2C(v25, 0);
      v27 = sub_2274CEFEC(&v103, (v90 + ((*(v26 + 80) + 32) & ~*(v26 + 80))), v25, MEMORY[0x277D84F98]);

      result = sub_226EBB21C();
      if (v27 != v25)
      {
        goto LABEL_44;
      }

      v29 = v90;
      v30 = v100;
    }

    else
    {
      v30 = v23;
      v29 = MEMORY[0x277D84F90];
    }

    v95 = *(v30 + 16);
    if (!v95)
    {
LABEL_29:

      v58 = *(v29 + 16);
      if (v58)
      {
        v59 = *(v0 + 128);
        v60 = v29 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
        v61 = *(v59 + 72);
        v101 = *(v0 + 72);
        v62 = MEMORY[0x277D84F90];
        v96 = v61;
        v98 = v0;
        do
        {
          if (*(v24 + 16))
          {
            v65 = sub_226F3B3E8(v60);
            if (v66)
            {
              v67 = v62;
              v68 = *(v0 + 88);
              v69 = *(v0 + 96);
              v71 = *(v0 + 72);
              v70 = *(v0 + 80);
              v72 = *(v0 + 64);
              v73 = *(v24 + 56);
              v74 = *(v101 + 72);
              (*(v101 + 16))(v68, v73 + v74 * v65, v72);
              v75 = *(v71 + 32);
              v75(v69, v68, v72);
              v76 = v69;
              v62 = v67;
              v75(v70, v76, v72);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = sub_2273A6974(0, v67[2] + 1, 1, v67);
              }

              v78 = v62[2];
              v77 = v62[3];
              if (v78 >= v77 >> 1)
              {
                v62 = sub_2273A6974(v77 > 1, v78 + 1, 1, v62);
              }

              v63 = *(v98 + 80);
              v64 = *(v98 + 64);
              v62[2] = v78 + 1;
              v75(v62 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + v78 * v74, v63, v64);
              v0 = v98;
              v24 = MEMORY[0x277D84F98];
              v61 = v96;
            }
          }

          v60 += v61;
          --v58;
        }

        while (v58);
      }

      else
      {
        v62 = MEMORY[0x277D84F90];
      }

      v79 = *(v0 + 200);
      v81 = *(v0 + 160);
      v80 = *(v0 + 168);
      v83 = *(v0 + 144);
      v82 = *(v0 + 152);
      v84 = *(v0 + 136);
      v85 = *(v0 + 112);
      v89 = *(v0 + 104);
      v94 = *(v0 + 96);
      v97 = *(v0 + 88);
      v102 = *(v0 + 80);
      v86 = *(v0 + 56);

      v87 = *(v0 + 8);

      return v87(v62);
    }

    v42 = *(v0 + 48);
    v43 = *(v42 + 16);
    v44 = *(v0 + 56);
    v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v91 = *(v42 + 72);
    v43(v44, v30 + v45, *(v0 + 40));
    sub_227666E50();
    v46 = swift_task_alloc();
    *(v46 + 16) = v44;
    v103 = v29;

    sub_22720AB34(sub_22720D914, v46);
    if (v92)
    {
    }

    v47 = *(v0 + 56);
    v48 = *(v0 + 40);

    v29 = v103;

    v93 = *(v42 + 8);
    result = v93(v47, v48);
    if (v95 == 1)
    {
      v24 = MEMORY[0x277D84F98];
      goto LABEL_29;
    }

    v88 = v43;
    v49 = v29;
    v50 = v100;
    v51 = v100 + v91 + v45;
    v52 = 1;
    while (v52 < *(v50 + 16))
    {
      v53 = *(v0 + 56);
      v88(v53, v51, *(v0 + 40));
      sub_227666E50();
      v54 = swift_task_alloc();
      *(v54 + 16) = v53;
      v103 = v49;

      sub_22720AB34(sub_22720D914, v54);
      v55 = *(v0 + 56);
      v56 = *(v0 + 40);

      ++v52;
      v49 = v103;

      v57 = v56;
      v50 = v100;
      result = v93(v55, v57);
      v51 += v91;
      if (v95 == v52)
      {
        v24 = MEMORY[0x277D84F98];
        v29 = v49;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  v33 = *(v0 + 120);
  v34 = *(v0 + 128);
  v35 = *(v0 + 32);
  v36 = *(*(v0 + 168) + *(v20 + 48));
  *(v0 + 264) = v36;
  (*(v34 + 32))(v31);
  (*(v34 + 16))(v32, v31, v33);
  v37 = swift_task_alloc();
  *(v0 + 272) = v37;
  *v37 = v0;
  v37[1] = sub_2271F5E98;
  v38 = *(v0 + 144);
  v39 = *(v0 + 112);

  return sub_227432300(v39, v35 + 304, v36);
}

uint64_t sub_2271F5E98()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  v2[35] = v0;

  v5 = v2[33];
  if (v0)
  {
    v7 = v2[16];
    v6 = v2[17];
    v8 = v2[15];
    v9 = *(v7 + 8);
    v2[36] = v9;
    v2[37] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);

    v10 = sub_2271F69C4;
  }

  else
  {

    v10 = sub_2271F5FFC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2271F5FFC()
{
  v109 = v0;
  v1 = *(v0 + 240);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  (*(*(v0 + 72) + 32))(v6, *(v0 + 112), *(v0 + 64));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = v1;
  sub_22736B424(v6, v3, isUniquelyReferenced_nonNull_native);
  v8 = *(v5 + 8);
  v8(v3, v4);
  result = (v8)(v2, v4);
  v10 = *(v0 + 280);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  v106 = v1;
  *(v0 + 240) = v1;
  v96 = v10;
  if (!v11)
  {
    v14 = ((1 << *(v0 + 304)) + 63) >> 6;
    if (v14 <= (v12 + 1))
    {
      v15 = v12 + 1;
    }

    else
    {
      v15 = ((1 << *(v0 + 304)) + 63) >> 6;
    }

    v16 = v15 - 1;
    while (1)
    {
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v49 = *(v0 + 160);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v22 = 0;
        goto LABEL_12;
      }

      v13 = *(v0 + 232);
      v11 = *(v13 + 8 * v17 + 64);
      ++v12;
      if (v11)
      {
        v12 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v13 = *(v0 + 232);
LABEL_11:
  v19 = *(v0 + 152);
  v18 = *(v0 + 160);
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v22 = (v11 - 1) & v11;
  v23 = __clz(__rbit64(v11)) | (v12 << 6);
  (*(v21 + 16))(v19, *(v13 + 48) + *(v21 + 72) * v23, v20);
  v24 = *(*(v13 + 56) + 8 * v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
  v26 = *(v25 + 48);
  (*(v21 + 32))(v18, v19, v20);
  *(v18 + v26) = v24;
  (*(*(v25 - 8) + 56))(v18, 0, 1, v25);

  v16 = v12;
LABEL_12:
  *(v0 + 248) = v22;
  *(v0 + 256) = v16;
  v27 = *(v0 + 168);
  sub_226E95D18(*(v0 + 160), v27, &qword_27D7BC1F0, &qword_22767CF18);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC200, &qword_22767CF28);
  v29 = v106;
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    v30 = *(v0 + 232);
    v31 = *(v0 + 24);

    v32 = sub_227666DF0();
    v33 = *(v106 + 16);
    v103 = v32;
    if (v33)
    {
      v34 = *(v0 + 128);
      v35 = sub_2274CDB2C(v33, 0);
      v36 = *(v34 + 80);
      v29 = v106;
      v37 = v35;
      v38 = sub_2274CEFEC(&v108, (v35 + ((v36 + 32) & ~v36)), v33, v106);

      result = sub_226EBB21C();
      if (v38 != v33)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v39 = v37;
      v32 = v103;
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v100 = *(v32 + 16);
    if (!v100)
    {
LABEL_32:

      v66 = *(v39 + 16);
      if (v66)
      {
        v67 = *(v0 + 128);
        v68 = v39 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v69 = *(v67 + 72);
        v104 = *(v0 + 72);
        v70 = MEMORY[0x277D84F90];
        v98 = v69;
        do
        {
          if (*(v29 + 16))
          {
            v73 = sub_226F3B3E8(v68);
            if (v74)
            {
              v76 = *(v0 + 88);
              v75 = *(v0 + 96);
              v77 = v70;
              v78 = *(v0 + 72);
              v79 = *(v0 + 80);
              v80 = *(v0 + 64);
              v101 = *(v104 + 72);
              (*(v104 + 16))(v76, *(v29 + 56) + v101 * v73, v80);
              v81 = *(v78 + 32);
              v81(v75, v76, v80);
              v82 = v79;
              v70 = v77;
              v81(v82, v75, v80);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v70 = sub_2273A6974(0, v77[2] + 1, 1, v77);
              }

              v84 = v70[2];
              v83 = v70[3];
              v69 = v98;
              if (v84 >= v83 >> 1)
              {
                v70 = sub_2273A6974(v83 > 1, v84 + 1, 1, v70);
              }

              v71 = *(v0 + 80);
              v72 = *(v0 + 64);
              v70[2] = v84 + 1;
              v81(v70 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + v84 * v101, v71, v72);
              v29 = v106;
            }
          }

          v68 += v69;
          --v66;
        }

        while (v66);
      }

      else
      {
        v70 = MEMORY[0x277D84F90];
      }

      v85 = *(v0 + 200);
      v87 = *(v0 + 160);
      v86 = *(v0 + 168);
      v88 = v70;
      v90 = *(v0 + 144);
      v89 = *(v0 + 152);
      v91 = *(v0 + 136);
      v95 = *(v0 + 112);
      v99 = *(v0 + 104);
      v102 = *(v0 + 96);
      v105 = *(v0 + 88);
      v107 = *(v0 + 80);
      v92 = *(v0 + 56);

      v93 = *(v0 + 8);

      return v93(v88);
    }

    v51 = *(v0 + 48);
    v52 = *(v51 + 16);
    v53 = *(v0 + 56);
    v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v55 = *(v51 + 72);
    v52(v53, v32 + v54, *(v0 + 40));
    sub_227666E50();
    v56 = swift_task_alloc();
    *(v56 + 16) = v53;
    v108 = v39;

    sub_22720AB34(sub_22720D914, v56);
    if (v96)
    {
    }

    v97 = v55;
    v57 = *(v0 + 56);
    v58 = *(v0 + 40);

    v39 = v108;

    v94 = *(v51 + 8);
    result = v94(v57, v58);
    if (v100 == 1)
    {
      v29 = v106;
      goto LABEL_32;
    }

    v59 = v39;
    v60 = v103 + v97 + v54;
    v61 = 1;
    while (v61 < *(v103 + 16))
    {
      v62 = *(v0 + 56);
      v52(v62, v60, *(v0 + 40));
      sub_227666E50();
      v63 = swift_task_alloc();
      *(v63 + 16) = v62;
      v108 = v59;

      sub_22720AB34(sub_22720D914, v63);
      v64 = *(v0 + 56);
      v65 = *(v0 + 40);

      ++v61;
      v59 = v108;

      result = v94(v64, v65);
      v60 += v97;
      if (v100 == v61)
      {
        v29 = v106;
        v39 = v59;
        goto LABEL_32;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v41 = *(v0 + 136);
  v40 = *(v0 + 144);
  v42 = *(v0 + 120);
  v43 = *(v0 + 128);
  v44 = *(v0 + 32);
  v45 = *(*(v0 + 168) + *(v28 + 48));
  *(v0 + 264) = v45;
  (*(v43 + 32))(v40);
  (*(v43 + 16))(v41, v40, v42);
  v46 = swift_task_alloc();
  *(v0 + 272) = v46;
  *v46 = v0;
  v46[1] = sub_2271F5E98;
  v47 = *(v0 + 144);
  v48 = *(v0 + 112);

  return sub_227432300(v48, v44 + 304, v45);
}

uint64_t sub_2271F68B8()
{
  v1 = v0[26];

  v2 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v14 = v0[10];
  v15 = v0[7];
  v16 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271F69C4()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[18];
  v6 = v0[15];

  v2(v5, v6);

  v7 = v0[25];
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v19 = v0[10];
  v20 = v0[7];
  v21 = v0[35];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2271F6AF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_227663FA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *__swift_project_boxed_opaque_existential_0((a2 + 224), *(a2 + 248));
  result = sub_226EAF48C(a1, v13);
  if (!v4)
  {
    sub_227663F60();
    v17 = v16;
    (*(v10 + 8))(v13, v9);
    v18 = sub_22727F174(a3, a1);
    MEMORY[0x28223BE20](v18);
    *(&v21 - 4) = a2;
    *(&v21 - 3) = v17;
    *(&v21 - 2) = a1;
    v20 = sub_22708B1A4(MEMORY[0x277D84F98], sub_22720D934, (&v21 - 6), v19);

    *a4 = v20;
  }

  return result;
}

uint64_t sub_2271F6CA0(uint64_t *a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v28 = a1;
  v9 = sub_2276627D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276638D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a2, v14, v17);
  sub_2276637C0();
  v20 = sub_2276637D0();
  v21 = sub_226F491E8(v20);
  v22 = sub_22727227C(v13, v21, a5, a3);
  if (v5)
  {

    (*(v10 + 8))(v13, v9);
    return (*(v15 + 8))(v19, v14);
  }

  else
  {
    v24 = v22;
    (*(v10 + 8))(v13, v9);

    v25 = v28;
    v26 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v25;
    sub_22736B650(v24, v19, isUniquelyReferenced_nonNull_native);
    result = (*(v15 + 8))(v19, v14);
    *v25 = v29;
  }

  return result;
}

uint64_t sub_2271F6EF0()
{
  v0 = sub_227663540();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  sub_227666E40();
  v8 = sub_2276629E0();
  sub_2276638B0();
  sub_2276638B0();
  if (v8)
  {
    v9 = MEMORY[0x22AA8F7D0](v7, v4);
  }

  else
  {
    sub_226EAC024(&qword_28139BCD0, MEMORY[0x277D4FFA8]);
    v9 = sub_22766BF80();
  }

  v10 = v9;
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  return v10 & 1;
}

uint64_t sub_2271F70F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276638D0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC150, &qword_22767CCB8);
  v2[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  v2[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v2[17] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F72FC, 0, 0);
}

uint64_t sub_2271F72FC()
{
  v1 = v0[3];
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_0(v1 + 13, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_2271F745C;
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[3];

  return (v11)(v7, sub_22720CCC4, v9, v8, v2, v3);
}

uint64_t sub_2271F745C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_2271F7B40;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2271F7578;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271F7578()
{
  v65 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v6 = v0[10];
  v7 = *(v0[11] + 48);
  sub_226E95D18(v5, v2, &unk_27D7BB920, &unk_227672480);
  sub_226E95D18(v5 + v7, v3, &qword_27D7BC148, &unk_22767CCA0);
  sub_22766A630();
  sub_226E93170(v2, v1, &unk_27D7BB920, &unk_227672480);
  sub_226E93170(v3, v4, &qword_27D7BC148, &unk_22767CCA0);
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  if (v10)
  {
    v12 = v0[17];
    v13 = v0[15];
    v14 = v0[9];
    v62 = v0[10];
    v58 = v0[13];
    v60 = v0[8];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v64[0] = v16;
    *v15 = 136315394;
    v17 = sub_22766CB80();
    v19 = v18;
    sub_226E97D1C(v11, &unk_27D7BB920, &unk_227672480);
    v20 = sub_226E97AE8(v17, v19, v64);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_22766CB80();
    v23 = v22;
    sub_226E97D1C(v13, &qword_27D7BC148, &unk_22767CCA0);
    v24 = sub_226E97AE8(v21, v23, v64);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_226E8E000, v8, v9, "Active Workout Plan: %s, template: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v14 + 8))(v62, v60);
  }

  else
  {
    v25 = v0[15];
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[8];

    sub_226E97D1C(v25, &qword_27D7BC148, &unk_22767CCA0);
    sub_226E97D1C(v11, &unk_27D7BB920, &unk_227672480);
    (*(v27 + 8))(v26, v28);
  }

  v29 = v0[18];
  v30 = v0[4];
  v31 = v0[5];
  sub_226E93170(v0[20], v29, &unk_27D7BB920, &unk_227672480);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v32 = v0[20];
    v33 = v0[16];
    sub_226E97D1C(v0[18], &unk_27D7BB920, &unk_227672480);
    v34 = sub_227664EC0();
    sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51188], v34);
    swift_willThrow();
    sub_226E97D1C(v33, &qword_27D7BC148, &unk_22767CCA0);
    sub_226E97D1C(v32, &unk_27D7BB920, &unk_227672480);
    v37 = v0[19];
    v36 = v0[20];
    v38 = v0[18];
    v40 = v0[15];
    v39 = v0[16];
    v41 = v0[14];
    v42 = v0[12];
    v43 = v0[10];
    v44 = v0[6];
    v45 = v0[7];
  }

  else
  {
    v47 = v0[20];
    v48 = v0[18];
    v57 = v0[19];
    v49 = v0[16];
    v50 = v0[14];
    v59 = v0[15];
    v61 = v0[12];
    v63 = v0[10];
    v52 = v0[6];
    v51 = v0[7];
    v53 = v0[4];
    v54 = v0[5];
    v55 = v0[2];
    (*(v54 + 32))(v51);
    (*(v54 + 16))(v52, v51, v53);
    sub_226E93170(v49, v50, &qword_27D7BC148, &unk_22767CCA0);
    sub_227666E70();
    (*(v54 + 8))(v51, v53);
    sub_226E97D1C(v49, &qword_27D7BC148, &unk_22767CCA0);
    sub_226E97D1C(v47, &unk_27D7BB920, &unk_227672480);
  }

  v46 = v0[1];

  return v46();
}

uint64_t sub_2271F7B40()
{
  v1 = v0[3];

  v14 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

char *sub_2271F7C34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_2276627D0();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276638D0();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC148, &unk_22767CCA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  v26 = *(a2 + 168);
  v50 = a2;
  __swift_project_boxed_opaque_existential_0((a2 + 144), v26);
  v27 = off_283AA53C0;
  type metadata accessor for WorkoutPlanDataStore();
  v28 = v53;
  result = (v27)(a1);
  if (!v28)
  {
    v30 = v50;
    v31 = v47;
    v32 = v48;
    v33 = a1;
    v44 = v18;
    v53 = 0;
    sub_226E93170(v25, v22, &unk_27D7BB920, &unk_227672480);
    v34 = v51;
    if ((*(v52 + 48))(v22, 1, v51) == 1)
    {
      sub_226E97D1C(v22, &unk_27D7BB920, &unk_227672480);
      v35 = sub_227665CA0();
      v36 = v44;
      (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
      v37 = v49;
    }

    else
    {
      v43 = v25;
      (*(v52 + 32))(v31, v22, v34);
      v38 = __swift_project_boxed_opaque_existential_0((v30 + 144), *(v30 + 168));
      v39 = v32;
      sub_227663820();
      v40 = *v38;
      v41 = v53;
      sub_227254380(v39, v33, v15);
      v53 = v41;
      v37 = v49;
      if (v41)
      {
        (*(v45 + 8))(v39, v46);
        (*(v52 + 8))(v31, v34);
        return sub_226E97D1C(v43, &unk_27D7BB920, &unk_227672480);
      }

      (*(v45 + 8))(v39, v46);
      (*(v52 + 8))(v31, v34);
      v36 = v44;
      sub_226E95D18(v15, v44, &qword_27D7BC148, &unk_22767CCA0);
      v25 = v43;
    }

    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC150, &qword_22767CCB8) + 48);
    sub_226E95D18(v25, v37, &unk_27D7BB920, &unk_227672480);
    return sub_226E95D18(v36, v37 + v42, &qword_27D7BC148, &unk_22767CCA0);
  }

  return result;
}

uint64_t sub_2271F80C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227668E60();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_2276627D0();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v2[11] = *(v6 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = sub_2276638D0();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271F825C, 0, 0);
}

uint64_t sub_2271F825C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[3];
  v7 = v0[4];
  sub_227668E40();
  v8 = v7[16];
  v9 = v7[17];
  __swift_project_boxed_opaque_existential_0(v7 + 13, v8);
  (*(v4 + 16))(v2, v1, v5);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 16) = v7;
  (*(v4 + 32))(v11 + v10, v2, v5);
  v12 = *(v9 + 24);

  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_2271F844C;
  v15 = v0[16];
  v16 = v0[14];

  return v18(v15, sub_22720E118, v11, v16, v8, v9);
}

uint64_t sub_2271F844C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);

  if (v0)
  {
    v6 = sub_2271F8580;
  }

  else
  {
    v6 = sub_2271F8624;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271F8580()
{
  (*(v0[10] + 8))(v0[13], v0[9]);
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271F8624()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[8];
  v21 = v0[7];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  (*(v0[10] + 8))(v0[13], v0[9]);
  v8 = sub_2276637D0();
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  v10 = sub_227469E40(sub_22720D4EC, v9, v8);

  v11 = v6[17];
  v20 = v6[16];
  __swift_project_boxed_opaque_existential_0(v6 + 13, v20);
  (*(v5 + 16))(v3, v7, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[20] = v13;
  *(v13 + 16) = v6;
  (*(v5 + 32))(v13 + v12, v3, v4);
  *(v13 + ((v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v14 = *(v11 + 24);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[21] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC160, &qword_22767CCF0);
  *v16 = v0;
  v16[1] = sub_2271F88A0;

  return (v19)(v0 + 2, sub_22720D50C, v13, v17, v20, v11);
}

uint64_t sub_2271F88A0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);

  if (v0)
  {
    v6 = sub_2271F8AE4;
  }

  else
  {
    v6 = sub_2271F89D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271F89D4()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[2];
  v9 = sub_2276637D0();

  v10 = sub_22720D2A0(v9, v8);
  swift_bridgeObjectRelease_n();

  v11 = sub_226F491E8(v10);
  (*(v3 + 8))(v2, v4);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_2271F8AE4()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[22];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271F8B88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  v14 = *a2;
  v13 = a2[1];
  v15 = sub_227665F20();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12, a1, v15);
  v17 = &v12[*(v6 + 56)];
  *v17 = v14;
  *(v17 + 1) = v13;
  sub_226E93170(v12, v9, &qword_27D7BC168, &qword_22767CCF8);
  v18 = &v9[*(v6 + 56)];
  v19 = *v18;
  v20 = *(v18 + 1);

  v21 = sub_227667380();
  v23 = v22;

  if (v21 == sub_227668E50() && v23 == v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_22766D190();
  }

  sub_226E97D1C(v12, &qword_27D7BC168, &qword_22767CCF8);
  (*(v16 + 8))(v9, v15);
  return v26 & 1;
}

uint64_t sub_2271F8D84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a5;
  v8 = sub_2276627D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227663FA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *__swift_project_boxed_opaque_existential_0((a2 + 224), *(a2 + 248));
  result = sub_226EAF48C(a1, v17);
  if (!v5)
  {
    sub_227668E40();
    sub_227663F70();
    v21 = v20;

    v23 = sub_226F491E8(v22);
    v24 = sub_22727FE50(v12, v23, a1, v21);

    (*(v9 + 8))(v12, v8);
    result = (*(v14 + 8))(v17, v13);
    *v26 = v24;
  }

  return result;
}

char *sub_2271F8FC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v228 = a2;
  v227 = a3;
  v209 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1B0, qword_22767CD58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v211 = &v199 - v7;
  v217 = sub_227667C40();
  v212 = *(v217 - 8);
  v8 = *(v212 + 64);
  MEMORY[0x28223BE20](v217);
  v216 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v210 = &v199 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v219 = *(v12 - 8);
  v220 = v12;
  v13 = *(v219 + 64);
  MEMORY[0x28223BE20](v12);
  v218 = &v199 - v14;
  v215 = sub_227666B60();
  v214 = *(v215 - 8);
  v15 = *(v214 + 64);
  MEMORY[0x28223BE20](v215);
  v213 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227663FA0();
  v221 = *(v17 - 8);
  v222 = v17;
  v18 = *(v221 + 64);
  MEMORY[0x28223BE20](v17);
  v224 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2276627D0();
  v225 = *(v20 - 8);
  v226 = v20;
  v21 = *(v225 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227662930();
  v223 = *(v24 - 8);
  v25 = *(v223 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v199 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v199 - v30;
  v32 = sub_2276638D0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v199 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v229;
  result = sub_226E9B790(0, 1, a1);
  if (!v37)
  {
    v207 = 0;
    v229 = a1;
    v208 = v36;
    sub_22722AEAC(result, v31);

    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      sub_226E97D1C(v31, &unk_27D7BB920, &unk_227672480);
      v39 = sub_227664EC0();
      sub_226EAC024(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D511A8], v39);
      return swift_willThrow();
    }

    else
    {
      (*(v33 + 32))(v208, v31, v32);
      v41 = v223;
      v42 = v24;
      (*(v223 + 104))(v27, *MEMORY[0x277CC9968], v24);
      v43 = sub_227663810();
      (*(v41 + 8))(v27, v42);
      v44 = __swift_project_boxed_opaque_existential_0((v228 + 424), *(v228 + 448));
      v45 = v23;
      sub_2276637C0();

      v47 = sub_226F491E8(v46);
      v48 = *__swift_project_boxed_opaque_existential_0(v44, v44[3]);
      v49 = v224;
      v50 = v229;
      v51 = v207;
      sub_226EAF48C(v229, v224);
      if (v51)
      {

        (*(v225 + 8))(v45, v226);
        return (*(v33 + 8))(v208, v32);
      }

      else
      {
        v227 = v33;
        v228 = v32;
        sub_227663F60();
        v53 = v52;
        (*(v221 + 8))(v49, v222);
        v224 = sub_22727227C(v45, v47, v50, v53);
        (*(v225 + 8))(v45, v226);

        v54 = __swift_project_boxed_opaque_existential_0(v50, v50[3]);
        v55 = *v54;
        v56 = v54[1];
        v57 = *(v54 + 16);
        v58 = v54[3];
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
        v60 = *(v59 + 48);
        v61 = *(v59 + 52);
        v62 = swift_allocObject();
        v63 = v55;
        v64 = v56;

        sub_22766A070();
        *(v62 + 2) = v63;
        *(v62 + 3) = v64;
        v62[32] = v57;
        *(v62 + 5) = v58;
        swift_getKeyPath();
        swift_getKeyPath();

        v65 = sub_22720C6D8(v43, sub_22720D714);
        v226 = 0;
        v206 = v43;

        v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
        v232 = v65;
        v66 = sub_226F06498();

        v225 = v66;
        v67 = sub_22766C820();
        sub_226E93170(&v232, v230, &unk_27D7BC990, &qword_227670A30);
        v68 = v231;
        if (v231)
        {
          v69 = __swift_project_boxed_opaque_existential_0(v230, v231);
          v70 = *(v68 - 8);
          v71 = *(v70 + 64);
          v72 = MEMORY[0x28223BE20](v69);
          v74 = &v199 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v70 + 16))(v74, v72);
          v75 = sub_22766D170();
          (*(v70 + 8))(v74, v68);
          __swift_destroy_boxed_opaque_existential_0(v230);
        }

        else
        {
          v75 = 0;
        }

        v76 = objc_opt_self();
        v77 = [v76 expressionForConstantValue_];
        swift_unknownObjectRelease();
        [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

        sub_226E97D1C(&v232, &unk_27D7BC990, &qword_227670A30);
        swift_beginAccess();
        v78 = sub_22766A080();
        v80 = v79;
        MEMORY[0x22AA985C0]();
        if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_69;
        }

        while (1)
        {
          sub_22766C3A0();
          (v78)(&v232, 0);
          swift_endAccess();

          v81 = v226;
          v82 = sub_226EE010C(100);
          if (v81)
          {

            swift_setDeallocating();

            v83 = *(v62 + 5);

            v84 = qword_2813B2078;
            v85 = sub_22766A100();
            (*(*(v85 - 8) + 8))(&v62[v84], v85);
            v86 = *(*v62 + 48);
            v87 = *(*v62 + 52);
            swift_deallocClassInstance();

            return (*(v227 + 8))(v208, v228);
          }

          v88 = v82;
          swift_setDeallocating();

          v89 = *(v62 + 5);

          v90 = qword_2813B2078;
          v91 = sub_22766A100();
          v92 = *(v91 - 8);
          v221 = *(v92 + 8);
          v222 = v91;
          v207 = v92 + 8;
          (v221)(&v62[v90]);
          v93 = *(*v62 + 48);
          v94 = *(*v62 + 52);
          swift_deallocClassInstance();
          v95 = sub_2271E452C(v88);

          if (*(v95 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9940, &qword_227674D80);
            v96 = sub_22766D010();
          }

          else
          {
            v96 = MEMORY[0x277D84F98];
          }

          v205 = v76;
          v232 = v96;

          sub_22720A5C8(v97, 1, &v232);

          v98 = v232;
          v99 = __swift_project_boxed_opaque_existential_0(v229, v229[3]);
          v100 = *v99;
          v101 = v99[1];
          v102 = *(v99 + 16);
          v103 = v99[3];
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
          v105 = *(v104 + 48);
          v106 = *(v104 + 52);
          v62 = swift_allocObject();
          v107 = v100;
          v108 = v101;

          sub_22766A070();
          *(v62 + 2) = v107;
          *(v62 + 3) = v108;
          v62[32] = v102;
          *(v62 + 5) = v103;
          swift_getKeyPath();

          v110 = sub_2271E4844(v109);
          v111 = 0;
          v226 = v98;

          v112 = sub_226F3E6A8(v110);

          v113 = sub_227230638(v112);

          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
          v233 = v203;
          v232 = v113;

          v114 = sub_22766C820();
          sub_226E93170(&v232, v230, &unk_27D7BC990, &qword_227670A30);
          v115 = v231;
          if (v231)
          {
            v116 = __swift_project_boxed_opaque_existential_0(v230, v231);
            v117 = *(v115 - 8);
            v118 = *(v117 + 64);
            v119 = MEMORY[0x28223BE20](v116);
            v121 = &v199 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v117 + 16))(v121, v119);
            v122 = sub_22766D170();
            (*(v117 + 8))(v121, v115);
            __swift_destroy_boxed_opaque_existential_0(v230);
          }

          else
          {
            v122 = 0;
          }

          v123 = [v205 expressionForConstantValue_];
          swift_unknownObjectRelease();
          [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1B8 qword_227688130))];

          sub_226E97D1C(&v232, &unk_27D7BC990, &qword_227670A30);
          swift_beginAccess();
          v78 = sub_22766A080();
          v125 = v124;
          MEMORY[0x22AA985C0]();
          if (*((*v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_72:
            sub_22766C360();
          }

          sub_22766C3A0();
          (v78)(&v232, 0);
          swift_endAccess();

          v126 = sub_226EB1A68(100);
          if (v111)
          {

            swift_setDeallocating();

            v127 = *(v62 + 5);

            (v221)(&v62[qword_2813B2078], v222);
            v128 = *(*v62 + 48);
            v129 = *(*v62 + 52);
            swift_deallocClassInstance();

            return (*(v227 + 8))(v208, v228);
          }

          v130 = v126;
          swift_setDeallocating();

          v131 = *(v62 + 5);

          (v221)(&v62[qword_2813B2078], v222);
          v132 = *(*v62 + 48);
          v133 = *(*v62 + 52);
          swift_deallocClassInstance();
          v134 = sub_2271E4B4C(v130);

          if (*(v134 + 16))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE0, &unk_227672B70);
            v135 = sub_22766D010();
          }

          else
          {
            v135 = MEMORY[0x277D84F98];
          }

          v232 = v135;
          sub_226F7E3E0(v134, 1, &v232);
          v200 = 0;
          v223 = v232;
          v136 = __swift_project_boxed_opaque_existential_0(v229, v229[3]);
          v137 = *v136;
          v138 = v136[1];
          v139 = *(v136 + 16);
          v140 = v136[3];
          v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
          v142 = *(v141 + 48);
          v143 = *(v141 + 52);
          v144 = swift_allocObject();
          v145 = v137;
          v62 = v138;

          v78 = MEMORY[0x277D84F90];
          sub_22766A070();
          *(v144 + 16) = v145;
          *(v144 + 24) = v62;
          *(v144 + 32) = v139;
          v201 = v144;
          *(v144 + 40) = v140;
          KeyPath = swift_getKeyPath();
          v111 = v226 + 64;
          v146 = 1 << *(v226 + 32);
          v147 = -1;
          if (v146 < 64)
          {
            v147 = ~(-1 << v146);
          }

          v148 = v147 & *(v226 + 64);
          v149 = (v146 + 63) >> 6;
          v150 = v214;
          v229 = (v214 + 16);
          v204 = v214 + 8;
          swift_retain_n();
          v76 = 0;
          v151 = v215;
          while (v148)
          {
            v152 = v213;
LABEL_35:
            (*(v150 + 16))(v152, *(v226 + 56) + *(v150 + 72) * (__clz(__rbit64(v148)) | (v76 << 6)), v151);
            v62 = sub_227666AA0();
            (*(v150 + 8))(v152, v151);
            v154 = *(v62 + 2);
            v155 = *(v78 + 16);
            v156 = v155 + v154;
            if (__OFADD__(v155, v154))
            {
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v156 > *(v78 + 24) >> 1)
            {
              if (v155 <= v156)
              {
                v158 = v155 + v154;
              }

              else
              {
                v158 = v155;
              }

              v78 = sub_226EB3F78(isUniquelyReferenced_nonNull_native, v158, 1, v78);
            }

            v151 = v215;
            v150 = v214;
            v148 &= v148 - 1;
            if (*(v62 + 2))
            {
              if ((*(v78 + 24) >> 1) - *(v78 + 16) < v154)
              {
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                sub_22766C360();
                v173 = v212;
                goto LABEL_51;
              }

              swift_arrayInitWithCopy();

              if (v154)
              {
                v159 = *(v78 + 16);
                v160 = __OFADD__(v159, v154);
                v161 = v159 + v154;
                if (v160)
                {
                  goto LABEL_74;
                }

                *(v78 + 16) = v161;
              }
            }

            else
            {

              if (v154)
              {
                goto LABEL_71;
              }
            }
          }

          v152 = v213;
          while (1)
          {
            v153 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              __break(1u);
              goto LABEL_68;
            }

            if (v153 >= v149)
            {
              break;
            }

            v148 = *(v111 + 8 * v153);
            ++v76;
            if (v148)
            {
              v76 = v153;
              goto LABEL_35;
            }
          }

          v162 = sub_226F3E6A8(v78);

          v163 = sub_227230638(v162);

          v233 = v203;
          v232 = v163;

          v164 = sub_22766C820();
          sub_226E93170(&v232, v230, &unk_27D7BC990, &qword_227670A30);
          v165 = v231;
          if (v231)
          {
            v166 = __swift_project_boxed_opaque_existential_0(v230, v231);
            v167 = *(v165 - 8);
            v168 = *(v167 + 64);
            v169 = MEMORY[0x28223BE20](v166);
            v171 = &v199 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v167 + 16))(v171, v169);
            v172 = sub_22766D170();
            (*(v167 + 8))(v171, v165);
            __swift_destroy_boxed_opaque_existential_0(v230);
          }

          else
          {
            v172 = 0;
          }

          v149 = v211;
          v173 = v212;
          v148 = v220;
          v111 = v206;
          v76 = v201;
          v174 = [v205 expressionForConstantValue_];
          swift_unknownObjectRelease();
          [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9088 &unk_227672D70))];

          sub_226E97D1C(&v232, &unk_27D7BC990, &qword_227670A30);
          swift_beginAccess();
          v78 = sub_22766A080();
          v176 = v175;
          MEMORY[0x22AA985C0]();
          if (*((*v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_75;
          }

LABEL_51:
          sub_22766C3A0();
          (v78)(&v232, 0);
          swift_endAccess();

          v177 = swift_getKeyPath();
          v178 = swift_getKeyPath();
          v179 = v200;
          sub_226F7D81C(v177, v178);
          if (v179)
          {

            swift_setDeallocating();

            v181 = *(v76 + 40);

            (v221)(v76 + qword_2813B2078, v222);
            v182 = *(*v76 + 48);
            v183 = *(*v76 + 52);
            swift_deallocClassInstance();

            return (*(v227 + 8))(v208, v228);
          }

          v184 = v180;

          swift_setDeallocating();

          v185 = *(v76 + 40);

          (v221)(v76 + qword_2813B2078, v222);
          v186 = *(*v76 + 48);
          v187 = *(*v76 + 52);
          swift_deallocClassInstance();
          v229 = sub_2271E5D20(v184);
          v207 = 0;

          v232 = v111;
          swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1C0, &unk_22767CE98);
          v78 = sub_226E9CFD0(&qword_27D7BC1C8, &qword_27D7BC1C0, &unk_22767CE98);
          sub_226EAC024(&qword_27D7BC1D0, MEMORY[0x277D51FE0]);
          v62 = sub_22766C220();

          v225 = *(v62 + 2);
          if (!v225)
          {
            break;
          }

          v76 = 0;
          v222 = (v173 + 48);
          v188 = (v173 + 32);
          v189 = MEMORY[0x277D84F90];
          v191 = v218;
          v190 = v219;
          while (v76 < *(v62 + 2))
          {
            v78 = v149;
            v192 = v62;
            sub_226E93170(&v62[((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v76], v191, &qword_27D7BC168, &qword_22767CCF8);
            sub_2271FACB0(v191, *(v191 + *(v148 + 48)), *(v191 + *(v148 + 48) + 8), v226, v223, v229, v224, v149);
            sub_226E97D1C(v191, &qword_27D7BC168, &qword_22767CCF8);
            v193 = v217;
            if ((*v222)(v149, 1, v217) == 1)
            {
              sub_226E97D1C(v149, &qword_27D7BC1B0, qword_22767CD58);
              v148 = v220;
            }

            else
            {
              v194 = *v188;
              v195 = v210;
              (*v188)(v210, v149, v193);
              v194(v216, v195, v193);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v189 = sub_2273A69EC(0, v189[2] + 1, 1, v189);
              }

              v148 = v220;
              v197 = v189[2];
              v196 = v189[3];
              if (v197 >= v196 >> 1)
              {
                v198 = sub_2273A69EC(v196 > 1, v197 + 1, 1, v189);
                v148 = v220;
                v189 = v198;
              }

              v189[2] = v197 + 1;
              (v194)(v189 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v197, v216);
              v149 = v211;
            }

            ++v76;
            v191 = v218;
            v190 = v219;
            v62 = v192;
            if (v225 == v76)
            {
              goto LABEL_65;
            }
          }

LABEL_68:
          __break(1u);
LABEL_69:
          sub_22766C360();
        }

        v189 = MEMORY[0x277D84F90];
LABEL_65:

        result = (*(v227 + 8))(v208, v228);
        *v209 = v189;
      }
    }
  }

  return result;
}

uint64_t sub_2271FAC5C()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_2271FACB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v132 = a7;
  v130 = a6;
  v137 = a5;
  v145 = a8;
  v146 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v133 = v129 - v13;
  v147 = sub_227665F20();
  v144 = *(v147 - 8);
  v14 = *(v144 + 64);
  MEMORY[0x28223BE20](v147);
  v16 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v136 = v129 - v18;
  MEMORY[0x28223BE20](v19);
  v131 = v129 - v20;
  v21 = sub_22766B390();
  v142 = *(v21 - 8);
  v143 = v21;
  v22 = *(v142 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v129 - v26;
  MEMORY[0x28223BE20](v28);
  v134 = v129 - v29;
  v30 = sub_227666B60();
  v140 = *(v30 - 8);
  v31 = v140[8];
  MEMORY[0x28223BE20](v30);
  v33 = v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v129 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v129 - v38;
  v138 = a2;
  v141 = a3;
  v40 = sub_227667380();
  if (!*(a4 + 16))
  {

    goto LABEL_10;
  }

  v139 = v39;
  v135 = v30;
  v42 = sub_226E92000(v40, v41);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_10:
    sub_22766A630();
    v69 = v144;
    v70 = v147;
    (*(v144 + 16))(v16, v146, v147);

    v71 = sub_22766B380();
    v72 = sub_22766C890();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v148[0] = v74;
      *v73 = 136315394;
      v75 = sub_227667390();
      v77 = sub_226E97AE8(v75, v76, v148);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      sub_226EAC024(&qword_27D7BC1D8, MEMORY[0x277D51FE0]);
      v78 = sub_22766D140();
      v80 = v79;
      (*(v69 + 8))(v16, v70);
      v81 = sub_226E97AE8(v78, v80, v148);

      *(v73 + 14) = v81;
      _os_log_impl(&dword_226E8E000, v71, v72, "Couldn't find CatalogWorkoutReference %s for plan item %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v74, -1, -1);
      MEMORY[0x22AA9A450](v73, -1, -1);
    }

    else
    {

      (*(v69 + 8))(v16, v70);
    }

    (*(v142 + 8))(v24, v143);
    goto LABEL_14;
  }

  v45 = v140[2];
  v46 = v135;
  v45(v139, *(a4 + 56) + v140[9] * v42);
  v47 = sub_227666A90();
  v49 = v137;
  if (!*(v137 + 16))
  {

    v53 = v27;
LABEL_17:
    sub_22766A630();
    v85 = v139;
    (v45)(v33, v139, v46);
    v86 = v144;
    v87 = v136;
    v88 = v147;
    (*(v144 + 16))(v136, v146, v147);
    v146 = v53;
    v89 = sub_22766B380();
    v90 = sub_22766C890();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v148[0] = v141;
      *v91 = 136315394;
      v92 = sub_227666A90();
      v93 = v46;
      v95 = v94;
      v96 = v140[1];
      v96(v33, v93);
      v97 = sub_226E97AE8(v92, v95, v148);

      *(v91 + 4) = v97;
      *(v91 + 12) = 2080;
      sub_226EAC024(&qword_27D7BC1D8, MEMORY[0x277D51FE0]);
      v98 = v147;
      v99 = sub_22766D140();
      v101 = v100;
      (*(v86 + 8))(v87, v98);
      v102 = sub_226E97AE8(v99, v101, v148);

      *(v91 + 14) = v102;
      _os_log_impl(&dword_226E8E000, v89, v90, "Couldn't find CatalogModalityReference %s for plan item %s", v91, 0x16u);
      v103 = v141;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v103, -1, -1);
      MEMORY[0x22AA9A450](v91, -1, -1);

      (*(v142 + 8))(v146, v143);
      v96(v139, v135);
    }

    else
    {

      (*(v86 + 8))(v87, v88);
      v104 = v140[1];
      v104(v33, v46);
      (*(v142 + 8))(v146, v143);
      v104(v85, v46);
    }

LABEL_14:
    v82 = 1;
    v61 = v145;
    goto LABEL_15;
  }

  v50 = sub_226E92000(v47, v48);
  v52 = v51;

  v53 = v27;
  if ((v52 & 1) == 0)
  {
    goto LABEL_17;
  }

  v54 = *(v49 + 56) + 24 * v50;
  v55 = *v54;
  v56 = *(v54 + 16);
  v136 = *(v54 + 8);
  v137 = v55;
  v129[3] = v56;
  sub_226EB396C(v55, v136, v56);
  v57 = sub_227666AA0();
  if (v57[2])
  {
    v58 = v57[4];
    v59 = v57[5];

    v60 = v130;
    v62 = v144;
    v61 = v145;
    v63 = v134;
    if (*(v130 + 16))
    {
      v64 = sub_226E92000(v58, v59);
      if (v65)
      {
        v66 = (*(v60 + 56) + 16 * v64);
        v68 = *v66;
        v67 = v66[1];

        goto LABEL_26;
      }
    }
  }

  else
  {

    v62 = v144;
    v61 = v145;
    v63 = v134;
  }

  sub_22766A630();
  (v45)(v36, v139, v46);
  v105 = v131;
  v106 = v147;
  (*(v62 + 16))(v131, v146, v147);
  v107 = sub_22766B380();
  v108 = sub_22766C890();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v148[0] = v145;
    *v109 = 136315394;
    LODWORD(v144) = v108;
    sub_227666AA0();
    v110 = MEMORY[0x22AA98660]();
    v112 = v111;

    (v140[1])(v36, v135);
    v113 = sub_226E97AE8(v110, v112, v148);

    *(v109 + 4) = v113;
    *(v109 + 12) = 2080;
    sub_226EAC024(&qword_27D7BC1D8, MEMORY[0x277D51FE0]);
    v114 = sub_22766D140();
    v116 = v115;
    (*(v62 + 8))(v105, v106);
    v117 = sub_226E97AE8(v114, v116, v148);

    *(v109 + 14) = v117;
    _os_log_impl(&dword_226E8E000, v107, v144, "Couldn't find TrainerReference %s for plan item %s", v109, 0x16u);
    v118 = v145;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v118, -1, -1);
    MEMORY[0x22AA9A450](v109, -1, -1);

    (*(v142 + 8))(v134, v143);
  }

  else
  {

    (*(v62 + 8))(v105, v106);
    (v140[1])(v36, v46);
    (*(v142 + 8))(v63, v143);
  }

  v68 = 0;
LABEL_26:
  sub_227667380();
  v119 = v132;
  v120 = v133;
  if (*(v132 + 16) && (v121 = sub_226F3A6FC(v146), (v122 & 1) != 0))
  {
    v123 = v121;
    v124 = *(v119 + 56);
    v125 = sub_227664530();
    v147 = v68;
    v126 = v125;
    v127 = *(v125 - 8);
    (*(v127 + 16))(v120, v124 + *(v127 + 72) * v123, v125);
    (*(v127 + 56))(v120, 0, 1, v126);
  }

  else
  {
    v128 = sub_227664530();
    (*(*(v128 - 8) + 56))(v120, 1, 1, v128);
  }

  sub_226E97D1C(v120, &qword_27D7B8E60, &unk_2276724B0);
  sub_227667C30();
  (v140[1])(v139, v135);
  v82 = 0;
LABEL_15:
  v83 = sub_227667C40();
  return (*(*(v83 - 8) + 56))(v61, v82, 1, v83);
}

uint64_t sub_2271FB980(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_227667370();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_2276638D0();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = sub_22766B390();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FBAFC, 0, 0);
}

uint64_t sub_2271FBAFC()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[7];
  v5 = v0[8];
  sub_22766A630();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v0[18] = v5[52];
  v0[2] = sub_22720C954();
  v0[3] = v7;
  v0[19] = v7;
  v0[4] = sub_227668740();
  v0[5] = v8;
  v0[20] = v8;
  sub_227668730();
  v0[21] = sub_227668750();
  v9 = v5[16];
  v10 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v9);
  v11 = *(v10 + 24);

  v18 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_2271FBCF8;
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];

  return (v18)(v14, sub_22720CAF4, v15, v16, v9, v10);
}

uint64_t sub_2271FBCF8()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v5 = v3[20];
    v4 = v3[21];
    v6 = v3[19];
    v8 = v3[13];
    v7 = v3[14];
    v9 = v3[12];
    v10 = v3[8];

    (*(v8 + 8))(v7, v9);

    return MEMORY[0x2822009F8](sub_2271FC190, 0, 0);
  }

  else
  {
    v11 = v3[4];
    v12 = v3[2];
    v13 = v3[8];

    v14 = swift_task_alloc();
    v3[24] = v14;
    *v14 = v3;
    v14[1] = sub_2271FBEFC;
    v15 = v3[20];
    v16 = v3[21];
    v18 = v3[18];
    v17 = v3[19];
    v19 = v3[14];
    v20 = v3[11];
    v21 = v3[6];

    return sub_227047060(v21, v12, v17, v11, v15, v19, v16, v20);
  }
}

uint64_t sub_2271FBEFC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v16 = *(*v1 + 152);
  v18 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v17 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  v9 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 200) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v18, v17);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271FC214, 0, 0);
  }

  else
  {
    v11 = v2[17];
    v12 = v2[14];
    v13 = v2[11];

    v14 = *(v10 + 8);

    return v14();
  }
}

uint64_t sub_2271FC190()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2271FC214()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2271FC298(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766A170();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_227669D60();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_227668430();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v3[13] = *(v11 + 64);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271FC41C, 0, 0);
}

uint64_t sub_2271FC41C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v6[16];
  v8 = v6[17];
  __swift_project_boxed_opaque_existential_0(v6 + 13, v7);
  (*(v4 + 16))(v1, v5, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[15] = v10;
  *(v10 + 16) = v6;
  (*(v4 + 32))(v10 + v9, v1, v3);
  v11 = *(v8 + 24);

  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = sub_2276638D0();
  *v13 = v0;
  v13[1] = sub_2271FC608;
  v15 = v0[2];

  return v17(v15, sub_22720CCE0, v10, v14, v7, v8);
}

uint64_t sub_2271FC608()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_2271FC8C4;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_2271FC724;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271FC724()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v14 = v0[6];
  v15 = v0[14];
  v13 = v0[5];
  v5 = v0[4];
  v6 = objc_opt_self();
  sub_227665EE0();
  v7 = sub_22766C0B0();

  [v6 postNotificationName_];

  v8 = v5[2];
  v9 = v5[3];
  swift_getObjectType();
  sub_227669D50();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);
  v10 = *__swift_project_boxed_opaque_existential_0(v5 + 5, v5[8]);
  sub_2271D7EE8();
  sub_22766A160();
  sub_2276699D0();
  (*(v14 + 8))(v3, v13);

  v11 = v0[1];

  return v11();
}