uint64_t sub_2271C6B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v9 = *v0;

  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = v1[9];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_2271C6CC8()
{
  v28 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  sub_22766A610();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 88);
    v25 = *(v0 + 96);
    v26 = *(v0 + 120);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v14 = sub_226E97AE8(v12, v13, &v27);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Catalog sync request failed with error %s, skipping historical run", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v26(v25, v8);
  }

  else
  {
    v15 = *(v0 + 120);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    v15(v16, v18);
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);
  v22 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2271C6EC8(uint64_t a1, char a2)
{
  *(v3 + 285) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_22766A8A0();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v7 = sub_227664530();
  *(v3 + 88) = v7;
  v8 = *(v7 - 8);
  *(v3 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v10 = sub_22766B390();
  *(v3 + 120) = v10;
  v11 = *(v10 - 8);
  *(v3 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C7068, 0, 0);
}

uint64_t sub_2271C7068()
{
  v32 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 48);
  sub_22766A610();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 285);
    v9 = *(v0 + 48);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 134218242;
    *(v10 + 4) = *(v9 + 16);

    *(v10 + 12) = 2080;
    *(v0 + 284) = v8 & 1;
    v12 = sub_22766C060();
    v14 = sub_226E97AE8(v12, v13, &v31);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "AchievementSystem received request to run incremental evaluation for %ld sessions with origin %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v15 = *(v7 + 8);
    v15(v5, v6);
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v19 = *(v0 + 48);

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  *(v0 + 160) = v15;
  v20 = *(v0 + 56);
  if (sub_226EAE084("AchievementSystem is not active, not running incremental evaluation."))
  {
    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *v21 = v0;
    v21[1] = sub_2271C7308;
    v22 = *(v0 + 56);

    return sub_2271CAC48();
  }

  else
  {
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 136);
    v28 = *(v0 + 104);
    v27 = *(v0 + 112);
    v29 = *(v0 + 80);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_2271C7308()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2271C7404, 0, 0);
}

uint64_t sub_2271C7404()
{
  v44 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 96);
    v4 = sub_2274CD7B8(*(v1 + 16), 0);
    v5 = sub_2274CE0E4(&v43, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);

    sub_226EBB21C();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v43 = v4;
  sub_2271D61EC(&v43);
  v6 = v43;
  *(v0 + 176) = v43;
  v7 = *(v6 + 2);
  *(v0 + 184) = v7;
  if (v7)
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v9 + 16);
    v9 += 16;
    v11 = *(v9 + 64);
    *(v0 + 280) = v11;
    v12 = (v11 + 32) & ~v11;
    *(v0 + 192) = *(v9 + 56);
    *(v0 + 200) = v10;
    *(v0 + 208) = MEMORY[0x277D84FA0];
    *(v0 + 216) = 0;
    v13 = *(v0 + 112);
    *(v0 + 224) = v9 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v13, &v6[v12], v8);
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v14[1] = sub_2271C7820;
    v15 = *(v0 + 112);
    v16 = *(v0 + 56);

    return sub_2271CB0B0(v15);
  }

  else
  {

    *(v0 + 256) = MEMORY[0x277D84FA0];
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = *(*(v0 + 56) + 544);
    v22 = sub_2276693C0();
    (*(v19 + 104))(v18, *MEMORY[0x277D4F8A8], v20);
    v23 = sub_226EC9A38(v18, v22);

    (*(v19 + 8))(v18, v20);
    if (v23)
    {
      v24 = swift_task_alloc();
      *(v0 + 264) = v24;
      *v24 = v0;
      v24[1] = sub_2271C7C90;
      v25 = *(v0 + 56);
      v26 = MEMORY[0x277D84FA0];

      return sub_2271CCBB8(v26);
    }

    else
    {
      v27 = *(v0 + 144);

      sub_22766A610();
      v28 = sub_22766B380();
      v29 = sub_22766C8B0();
      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 160);
      v32 = *(v0 + 144);
      v33 = *(v0 + 120);
      v34 = *(v0 + 128);
      if (v30)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_226E8E000, v28, v29, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v35, 2u);
        MEMORY[0x22AA9A450](v35, -1, -1);
      }

      v31(v32, v33);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);
      v38 = *(v0 + 136);
      v40 = *(v0 + 104);
      v39 = *(v0 + 112);
      v41 = *(v0 + 80);

      v42 = *(v0 + 8);

      return v42();
    }
  }
}

uint64_t sub_2271C7820(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_2271C7F98;
  }

  else
  {
    *(v4 + 248) = a1;
    v7 = sub_2271C7948;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2271C7948()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_2273FB564(*(v0 + 248), *(v0 + 208));
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 216) + 1;
  if (v6 == *(v0 + 184))
  {
    v7 = *(v0 + 176);

    *(v0 + 256) = v5;
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = *(*(v0 + 56) + 544);
    v12 = sub_2276693C0();
    (*(v9 + 104))(v8, *MEMORY[0x277D4F8A8], v10);
    v13 = sub_226EC9A38(v8, v12);

    (*(v9 + 8))(v8, v10);
    if (v13)
    {
      v14 = swift_task_alloc();
      *(v0 + 264) = v14;
      *v14 = v0;
      v14[1] = sub_2271C7C90;
      v15 = *(v0 + 56);

      return sub_2271CCBB8(v5);
    }

    else
    {
      v24 = *(v0 + 144);

      sub_22766A610();
      v25 = sub_22766B380();
      v26 = sub_22766C8B0();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 160);
      v29 = *(v0 + 144);
      v30 = *(v0 + 120);
      v31 = *(v0 + 128);
      if (v27)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_226E8E000, v25, v26, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v32, 2u);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      v28(v29, v30);
      v34 = *(v0 + 144);
      v33 = *(v0 + 152);
      v35 = *(v0 + 136);
      v37 = *(v0 + 104);
      v36 = *(v0 + 112);
      v38 = *(v0 + 80);

      v39 = *(v0 + 8);

      return v39();
    }
  }

  else
  {
    *(v0 + 208) = v5;
    *(v0 + 216) = v6;
    v17 = *(v0 + 200);
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 176) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v0 + 192) * v6;
    *(v0 + 224) = (*(v0 + 96) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v18, v20, v19);
    v21 = swift_task_alloc();
    *(v0 + 232) = v21;
    *v21 = v0;
    v21[1] = sub_2271C7820;
    v22 = *(v0 + 112);
    v23 = *(v0 + 56);

    return sub_2271CB0B0(v22);
  }
}

uint64_t sub_2271C7C90()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 272) = v5;
  *v5 = v4;
  v5[1] = sub_2271C7DEC;
  v6 = *(v1 + 56);

  return sub_2271C8B40();
}

uint64_t sub_2271C7DEC()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v11 = *v0;

  v3 = v1[19];
  v4 = v1[18];
  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[10];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_2271C7F98()
{
  v78 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  sub_22766A610();
  v3(v6, v5, v7);
  v8 = v1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v70 = *(v0 + 240);
    v74 = *(v0 + 136);
    v75 = *(v0 + 112);
    v76 = *(v0 + 160);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);
    v72 = *(v0 + 128) + 8;
    v73 = *(v0 + 120);
    v14 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v77 = v71;
    *v14 = 136315394;
    v15 = sub_2276644D0();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_226E97AE8(v15, v17, &v77);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v20 = *(v0 + 16);
    v21 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v23 = sub_226E97AE8(v21, v22, &v77);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v9, v10, "Failed to evaluate earned instances for session %s with error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v71, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v76(v74, v73);
    v18(v75, v13);
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 160);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = v9;
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v33 = *(v0 + 88);

    v34 = *(v31 + 8);
    v34(v32, v33);
    v25(v26, v28);
    v34(v29, v33);
  }

  v35 = *(v0 + 208);
  v36 = *(v0 + 216) + 1;
  if (v36 == *(v0 + 184))
  {
    v37 = *(v0 + 176);

    *(v0 + 256) = v35;
    v39 = *(v0 + 72);
    v38 = *(v0 + 80);
    v40 = *(v0 + 64);
    v41 = *(*(v0 + 56) + 544);
    v42 = sub_2276693C0();
    (*(v39 + 104))(v38, *MEMORY[0x277D4F8A8], v40);
    v43 = sub_226EC9A38(v38, v42);

    (*(v39 + 8))(v38, v40);
    if (v43)
    {
      v44 = swift_task_alloc();
      *(v0 + 264) = v44;
      *v44 = v0;
      v44[1] = sub_2271C7C90;
      v45 = *(v0 + 56);

      return sub_2271CCBB8(v35);
    }

    else
    {
      v54 = *(v0 + 144);

      sub_22766A610();
      v55 = sub_22766B380();
      v56 = sub_22766C8B0();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 160);
      v59 = *(v0 + 144);
      v60 = *(v0 + 120);
      v61 = *(v0 + 128);
      if (v57)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_226E8E000, v55, v56, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v62, 2u);
        MEMORY[0x22AA9A450](v62, -1, -1);
      }

      v58(v59, v60);
      v64 = *(v0 + 144);
      v63 = *(v0 + 152);
      v65 = *(v0 + 136);
      v67 = *(v0 + 104);
      v66 = *(v0 + 112);
      v68 = *(v0 + 80);

      v69 = *(v0 + 8);

      return v69();
    }
  }

  else
  {
    *(v0 + 208) = v35;
    *(v0 + 216) = v36;
    v47 = *(v0 + 200);
    v48 = *(v0 + 112);
    v49 = *(v0 + 88);
    v50 = *(v0 + 176) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v0 + 192) * v36;
    *(v0 + 224) = (*(v0 + 96) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v47(v48, v50, v49);
    v51 = swift_task_alloc();
    *(v0 + 232) = v51;
    *v51 = v0;
    v51[1] = sub_2271C7820;
    v52 = *(v0 + 112);
    v53 = *(v0 + 56);

    return sub_2271CB0B0(v52);
  }
}

uint64_t sub_2271C850C(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = sub_22766B390();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C85CC, 0, 0);
}

uint64_t sub_2271C85CC()
{
  v1 = v0[11];
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Received WorkoutPlanCompleted event", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_2271C8800;

    return sub_2271C60BC();
  }

  else
  {
    v12 = v0[8];
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    v0[14] = v13;
    if (v13)
    {
      v14 = swift_task_alloc();
      v0[15] = v14;
      *v14 = v0;
      v14[1] = sub_2271C8A08;

      return sub_2271C8B40();
    }

    else
    {
      v15 = v0[11];

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_2271C8800()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2271C8918, 0, 0);
}

uint64_t sub_2271C8918()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_2271C8A08;

    return sub_2271C8B40();
  }

  else
  {
    v5 = v0[11];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2271C8A08()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 88);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2271C8B40()
{
  v1[22] = v0;
  v2 = sub_22766B390();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C8C0C, 0, 0);
}

uint64_t sub_2271C8C0C()
{
  v1 = v0[26];
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Requesting progress update", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];

  v9 = *(v7 + 8);
  v0[27] = v9;
  v9(v5, v6);
  v10 = *(v8 + 456);
  sub_227669DE0();
  sub_227669D80();
  v11 = sub_22766BFD0();
  v0[28] = v11;

  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_2271C8E00;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_226ECD448;
  v0[13] = &block_descriptor_60;
  v0[14] = v12;
  [v10 requestProgressUpdateForProgressProviderIdentifier:v11 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2271C8E00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_2271C8F80;
  }

  else
  {
    v3 = sub_2271C8F10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271C8F10()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2271C8F80()
{
  v27 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  swift_willThrow();

  sub_22766A610();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 216);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v13 = MEMORY[0x22AA995D0](*(v0 + 152), *(v0 + 160));
    v15 = sub_226E97AE8(v13, v14, &v26);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to request progress update: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v25(v24, v9);
  }

  else
  {
    v16 = *(v0 + 216);
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 184);

    v16(v17, v19);
  }

  v21 = *(v0 + 200);
  v20 = *(v0 + 208);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2271C9194()
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
    v3[1] = sub_2271C927C;

    return sub_2271C60BC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2271C927C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2271C9390(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_227668390();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C9450, 0, 0);
}

uint64_t sub_2271C9450()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  v3 = v0[9];
  if (Strong)
  {
    v4 = v0[5];
    sub_22766A580();
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_2271C955C;
    v6 = v0[9];

    return sub_2271C96DC(v6);
  }

  else
  {
    v8 = v0[9];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2271C955C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 72);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_2271C96DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227664530();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_227668390();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v2[11] = *(v8 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_22766B390();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C98D0, 0, 0);
}

uint64_t sub_2271C98D0()
{
  v49 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  v44 = *(v0 + 72);
  v47 = *(v0 + 112);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = v3[75];
  __swift_project_boxed_opaque_existential_0(v3 + 71, v3[74]);
  *(v0 + 256) = 23;
  *(v0 + 160) = sub_226F19410();
  *(v0 + 168) = sub_226F19464();
  sub_22766A130();
  sub_22766A610();
  v6 = *(v2 + 16);
  *(v0 + 176) = v6;
  *(v0 + 184) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = v44;
  v45 = v6;
  v6(v47, v4, v7);
  v8 = sub_22766B380();
  v9 = sub_22766C8B0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 152);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  if (v10)
  {
    v43 = *(v0 + 120);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v48 = v18;
    *v17 = 136315138;
    v40 = sub_227668350();
    v42 = v11;
    v20 = v19;
    v41 = v9;
    v21 = *(v16 + 8);
    v21(v14, v15);
    v22 = sub_226E97AE8(v40, v20, &v48);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v8, v41, "AchievementSystem received request to run incremental evaluation for HealthKitStandaloneJob %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    v23 = *(v12 + 8);
    v23(v42, v43);
  }

  else
  {

    v21 = *(v16 + 8);
    v21(v14, v15);
    v23 = *(v12 + 8);
    v23(v11, v13);
  }

  *(v0 + 192) = v21;
  *(v0 + 200) = v23;
  v24 = *(v0 + 104);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = *(v0 + 72);
  v29 = *(v0 + 16);
  v28 = *(v0 + 24);
  v30 = v28[39];
  v31 = v28[40];
  __swift_project_boxed_opaque_existential_0(v28 + 36, v30);
  v45(v24, v29, v27);
  v32 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v33 = swift_allocObject();
  *(v0 + 208) = v33;
  *(v33 + 16) = v28;
  (*(v26 + 32))(v33 + v32, v24, v27);
  v34 = *(v31 + 24);

  v46 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  *(v0 + 216) = v36;
  *v36 = v0;
  v36[1] = sub_2271C9CD0;
  v37 = *(v0 + 64);
  v38 = *(v0 + 32);

  return (v46)(v37, sub_2271D7E1C, v33, v38, v30, v31);
}

uint64_t sub_2271C9CD0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  v5 = *(v2 + 208);
  if (v0)
  {

    v6 = sub_2271CA690;
  }

  else
  {

    v6 = sub_2271C9E18;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271C9E18()
{
  v61 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_226E93170(v2, v1, &qword_27D7B8E60, &unk_2276724B0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 136);
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 16);
    sub_226E97D1C(*(v0 + 56), &qword_27D7B8E60, &unk_2276724B0);
    sub_22766A610();
    v6(v8, v10, v9);
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = *(v0 + 136);
    v58 = v14;
    v59 = *(v0 + 128);
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);
    if (v13)
    {
      v57 = *(v0 + 136);
      v22 = swift_slowAlloc();
      v56 = v17;
      v23 = swift_slowAlloc();
      v60 = v23;
      *v22 = 136315138;
      sub_2271D7AA0(&qword_27D7BC0B8, MEMORY[0x277D53480]);
      v54 = v15;
      v55 = v21;
      v24 = sub_22766D140();
      v26 = v25;
      v58(v18, v20);
      v27 = sub_226E97AE8(v24, v26, &v60);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v11, v12, "No ArchivedSession found for standalone workout job %s, skipping evaluation", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);

      v54(v57, v56);
      v28 = v55;
    }

    else
    {

      v58(v18, v20);
      v15(v16, v17);
      v28 = v21;
    }

    sub_226E97D1C(v28, &qword_27D7B8E60, &unk_2276724B0);
    v41 = *(v0 + 160);
    v40 = *(v0 + 168);
    v42 = *(v0 + 24);
    v43 = v42[75];
    __swift_project_boxed_opaque_existential_0(v42 + 71, v42[74]);
    *(v0 + 257) = 23;
    sub_22766A120();
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    v46 = *(v0 + 136);
    v48 = *(v0 + 104);
    v47 = *(v0 + 112);
    v49 = *(v0 + 96);
    v51 = *(v0 + 56);
    v50 = *(v0 + 64);
    v52 = *(v0 + 48);

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v29 = *(v0 + 48);
    v30 = *(v0 + 32);
    v31 = *(v0 + 40);
    (*(v31 + 32))(v29, *(v0 + 56), v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_227670CD0;
    (*(v31 + 16))(v34 + v33, v29, v30);
    v35 = sub_226F40EB0(v34);
    *(v0 + 224) = v35;
    swift_setDeallocating();
    v36 = *(v31 + 8);
    *(v0 + 232) = v36;
    *(v0 + 240) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v34 + v33, v30);
    swift_deallocClassInstance();
    v37 = swift_task_alloc();
    *(v0 + 248) = v37;
    *v37 = v0;
    v37[1] = sub_2271CA340;
    v38 = *(v0 + 24);

    return sub_2271C6EC8(v35, 0);
  }
}

uint64_t sub_2271CA340()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2271CA458, 0, 0);
}

uint64_t sub_2271CA458()
{
  v1 = *(v0 + 144);
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished running incremental evaulation", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v25 = *(v0 + 232);
  v26 = *(v0 + 240);
  v5 = *(v0 + 200);
  v27 = *(v0 + 160);
  v28 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  v5(v6, v7);
  v25(v10, v11);
  sub_226E97D1C(v9, &qword_27D7B8E60, &unk_2276724B0);
  v13 = v12[75];
  __swift_project_boxed_opaque_existential_0(v12 + 71, v12[74]);
  *(v0 + 258) = 23;
  sub_22766A120();
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v16 = *(v0 + 136);
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  v19 = *(v0 + 96);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 48);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2271CA690()
{
  v61 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_226E93170(v2, v1, &qword_27D7B8E60, &unk_2276724B0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 136);
    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    v10 = *(v0 + 16);
    sub_226E97D1C(*(v0 + 56), &qword_27D7B8E60, &unk_2276724B0);
    sub_22766A610();
    v6(v8, v10, v9);
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = *(v0 + 136);
    v58 = v14;
    v59 = *(v0 + 128);
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);
    if (v13)
    {
      v57 = *(v0 + 136);
      v22 = swift_slowAlloc();
      v56 = v17;
      v23 = swift_slowAlloc();
      v60 = v23;
      *v22 = 136315138;
      sub_2271D7AA0(&qword_27D7BC0B8, MEMORY[0x277D53480]);
      v54 = v15;
      v55 = v21;
      v24 = sub_22766D140();
      v26 = v25;
      v58(v18, v20);
      v27 = sub_226E97AE8(v24, v26, &v60);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v11, v12, "No ArchivedSession found for standalone workout job %s, skipping evaluation", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);

      v54(v57, v56);
      v28 = v55;
    }

    else
    {

      v58(v18, v20);
      v15(v16, v17);
      v28 = v21;
    }

    sub_226E97D1C(v28, &qword_27D7B8E60, &unk_2276724B0);
    v41 = *(v0 + 160);
    v40 = *(v0 + 168);
    v42 = *(v0 + 24);
    v43 = v42[75];
    __swift_project_boxed_opaque_existential_0(v42 + 71, v42[74]);
    *(v0 + 257) = 23;
    sub_22766A120();
    v45 = *(v0 + 144);
    v44 = *(v0 + 152);
    v46 = *(v0 + 136);
    v48 = *(v0 + 104);
    v47 = *(v0 + 112);
    v49 = *(v0 + 96);
    v51 = *(v0 + 56);
    v50 = *(v0 + 64);
    v52 = *(v0 + 48);

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v29 = *(v0 + 48);
    v30 = *(v0 + 32);
    v31 = *(v0 + 40);
    (*(v31 + 32))(v29, *(v0 + 56), v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_227670CD0;
    (*(v31 + 16))(v34 + v33, v29, v30);
    v35 = sub_226F40EB0(v34);
    *(v0 + 224) = v35;
    swift_setDeallocating();
    v36 = *(v31 + 8);
    *(v0 + 232) = v36;
    *(v0 + 240) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v34 + v33, v30);
    swift_deallocClassInstance();
    v37 = swift_task_alloc();
    *(v0 + 248) = v37;
    *v37 = v0;
    v37[1] = sub_2271CA340;
    v38 = *(v0 + 24);

    return sub_2271C6EC8(v35, 0);
  }
}

uint64_t sub_2271CABB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_2271CAC48();
}

uint64_t sub_2271CAC68()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 16) + 48), *(*(v0 + 16) + 72));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2271CAD08;

  return sub_226EB91E0();
}

uint64_t sub_2271CAD08(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2271CAE08, 0, 0);
}

uint64_t sub_2271CAE08()
{
  v1 = *(v0 + 16);
  sub_2271C4AB0(*(v0 + 32));
  v3 = sub_226F3E6A8(v2);

  *(v0 + 48) = 0;
  v4 = *(v1 + 560);
  v5 = swift_task_alloc();
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v0 + 48;
  sub_2276696A0();

  if (*(v0 + 48) == 1)
  {
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_2271CAF84;
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return sub_2271D4B18(v7);
  }

  else
  {
    v10 = *(v0 + 32);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2271CAF84()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2271CB09C, 0, 0);
}

uint64_t sub_2271CB0B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A490();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227662750();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_22766A8A0();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = sub_22766B390();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  v16 = sub_227667A70();
  v2[17] = v16;
  v17 = *(v16 - 8);
  v2[18] = v17;
  v18 = *(v17 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CB354, 0, 0);
}

uint64_t sub_2271CB354()
{
  v1 = v0[2];
  v2 = sub_2276644D0();
  v4 = v3;
  v0[25] = v2;
  v0[26] = v3;
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_2271CB408;
  v6 = v0[3];

  return sub_2271D5554(v2, v4);
}

uint64_t sub_2271CB408()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_2271CC990;
  }

  else
  {
    v3 = sub_2271CB51C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271CB51C()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[3] + 464), *(v0[3] + 488));
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2271CB5C4;
  v3 = v0[24];

  return sub_226ECA330(v3);
}

uint64_t sub_2271CB5C4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);

    v5 = sub_2271CBB18;
  }

  else
  {
    v5 = sub_2271CB6E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271CB6E0()
{
  v54 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  sub_22766A610();
  v6 = *(v4 + 16);
  v0[31] = v6;
  v0[32] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v2, v3);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  if (v9)
  {
    v49 = v8;
    v11 = v0[22];
    v13 = v0[17];
    v12 = v0[18];
    v50 = v0[15];
    v51 = v0[14];
    v52 = v0[16];
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = v48;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_22766C060();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_226E97AE8(v15, v17, &v53);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v7, v49, "[Incremental Evaluation] Existing environment cache to evaluate against: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AA9A450](v48, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v50 + 8))(v52, v51);
  }

  else
  {
    v20 = v0[17];
    v21 = v0[18];
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[14];

    v18 = *(v21 + 8);
    v18(v10, v20);
    (*(v23 + 8))(v22, v24);
  }

  v0[33] = v18;
  v25 = v0[24];
  v26 = v0[21];
  v28 = v0[12];
  v27 = v0[13];
  v29 = v0[11];
  v30 = v0[3];
  sub_2276679A0();
  v31 = *(v30 + 544);
  v32 = sub_2276693C0();
  (*(v28 + 104))(v27, *MEMORY[0x277D4F8A8], v29);
  LOBYTE(v30) = sub_226EC9A38(v27, v32);

  (*(v28 + 8))(v27, v29);
  if (v30)
  {
    v33 = swift_task_alloc();
    v0[34] = v33;
    *v33 = v0;
    v33[1] = sub_2271CBC0C;
    v34 = v0[21];
    v35 = v0[2];
    v36 = v0[3];

    return sub_2271D3180(v35, v34);
  }

  else
  {
    if (MEMORY[0x277D84F90] >> 62 && sub_22766CD20())
    {
      sub_226F4F854(MEMORY[0x277D84F90]);
    }

    else
    {
      v38 = MEMORY[0x277D84FA0];
    }

    v0[36] = v38;
    v40 = v0[25];
    v39 = v0[26];
    v41 = v0[3];
    v42 = v41[44];
    v43 = v41[45];
    __swift_project_boxed_opaque_existential_0(v41 + 41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v44 = swift_allocObject();
    v0[37] = v44;
    *(v44 + 16) = xmmword_227670CD0;
    *(v44 + 32) = v40;
    *(v44 + 40) = v39;
    v45 = *(MEMORY[0x277D4F208] + 4);

    v46 = swift_task_alloc();
    v0[38] = v46;
    v47 = *(v43 + 8);
    *v46 = v0;
    v46[1] = sub_2271CBE24;

    return MEMORY[0x2821AED70](v44, v42, v47);
  }
}

uint64_t sub_2271CBB18()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[9];
  v10 = v0[10];
  v13 = v0[6];
  v14 = v0[30];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2271CBC0C(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_2271CBD0C, 0, 0);
}

uint64_t sub_2271CBD0C()
{
  v0[36] = v0[35];
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[3];
  v4 = v3[44];
  v5 = v3[45];
  __swift_project_boxed_opaque_existential_0(v3 + 41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v6 = swift_allocObject();
  v0[37] = v6;
  *(v6 + 16) = xmmword_227670CD0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = *(MEMORY[0x277D4F208] + 4);

  v8 = swift_task_alloc();
  v0[38] = v8;
  v9 = *(v5 + 8);
  *v8 = v0;
  v8[1] = sub_2271CBE24;

  return MEMORY[0x2821AED70](v6, v4, v9);
}

uint64_t sub_2271CBE24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[39] = a1;
  v4[40] = v1;

  v7 = v3[37];
  if (v1)
  {
    v8 = v4[36];
    v9 = v4[26];

    v10 = sub_2271CCA8C;
  }

  else
  {

    v10 = sub_2271CBF80;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2271CBF80()
{
  v1 = v0[39];
  v2 = __swift_project_boxed_opaque_existential_0((v0[3] + 464), *(v0[3] + 488));
  v3 = v0[26];
  if (*(v1 + 16))
  {
    v4 = sub_226E92000(v0[25], v0[26]);
    v6 = v5;

    v7 = v0[10];
    if (v6)
    {
      v8 = *(v0[39] + 56);
      v9 = sub_22766A4C0();
      v10 = *(v9 - 8);
      (*(v10 + 16))(v7, v8 + *(v10 + 72) * v4, v9);

      (*(v10 + 56))(v7, 0, 1, v9);
    }

    else
    {
      v14 = v0[39];

      v15 = sub_22766A4C0();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }
  }

  else
  {
    v11 = v0[10];
    v12 = v0[39];

    v13 = sub_22766A4C0();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v16 = *v2;
  v17 = swift_task_alloc();
  v0[41] = v17;
  *v17 = v0;
  v17[1] = sub_2271CC1C4;
  v18 = v0[20];
  v19 = v0[21];
  v20 = v0[10];
  v21 = v0[2];

  return sub_226FB4D90(v18, v21, v19, v20);
}

uint64_t sub_2271CC1C4()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 336) = v0;

  sub_226E97D1C(v4, &qword_27D7B8E38, &qword_22767C730);
  if (v0)
  {
    v5 = *(v2 + 288);

    v6 = sub_2271CC520;
  }

  else
  {
    v6 = sub_2271CC314;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271CC314()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[3];
  sub_227662720();
  sub_2276679C0();
  (*(v4 + 8))(v3, v5);
  v7 = *__swift_project_boxed_opaque_existential_0((v6 + 464), *(v6 + 488));
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_2271CC404;
  v9 = v0[19];

  return sub_226FB5BA4(v9);
}

uint64_t sub_2271CC404()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 288);

    v5 = sub_2271CC838;
  }

  else
  {
    v5 = sub_2271CC64C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271CC520()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[17];
  v1(v0[21], v3);
  v1(v2, v3);
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];
  v16 = v0[6];
  v17 = v0[42];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2271CC64C()
{
  v1 = v0[33];
  v14 = v0[31];
  v15 = v0[32];
  v19 = v0[24];
  v20 = v0[23];
  v2 = v0[22];
  v3 = v0[19];
  v17 = v0[20];
  v18 = v0[21];
  v4 = v0[17];
  v16 = v0[18];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[10];
  v24 = v0[9];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v7 + 32);
  v13 = *(v7 + 40);
  swift_getObjectType();
  v14(v2, v3, v4);
  sub_22766A480();
  sub_2276699D0();
  (*(v5 + 8))(v6, v8);
  v1(v3, v4);
  v1(v17, v4);
  v1(v18, v4);
  v1(v19, v4);

  v10 = v0[1];
  v11 = v0[36];

  return v10(v11);
}

uint64_t sub_2271CC838()
{
  v1 = v0[33];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v6 = v0[18] + 8;
  v1(v0[19], v5);
  v1(v4, v5);
  v1(v3, v5);
  v1(v2, v5);
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[10];
  v19 = v0[6];
  v20 = v0[44];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2271CC990()
{
  v1 = v0[26];

  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[9];
  v11 = v0[10];
  v14 = v0[6];
  v15 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2271CCA8C()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[17];
  v1(v0[21], v3);
  v1(v2, v3);
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[10];
  v16 = v0[6];
  v17 = v0[40];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2271CCBB8(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_22766B390();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CCC9C, 0, 0);
}

uint64_t sub_2271CCC9C()
{
  if (*(v0[24] + 16) == 1)
  {
    v1 = v0[23];
    if ((v1 & 0xC000000000000001) != 0)
    {
      if (v1 < 0)
      {
        v2 = v0[23];
      }

      if (sub_22766CD20())
      {
        goto LABEL_6;
      }
    }

    else if (*(v1 + 16))
    {
LABEL_6:
      v3 = v0[30];
      v4 = v0[23];
      sub_22766A610();

      v5 = sub_22766B380();
      v6 = sub_22766C8B0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134217984;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = sub_22766CD20();
          v9 = v0[23];
        }

        else
        {
          v8 = *(v0[23] + 16);
        }

        *(v7 + 4) = v8;

        _os_log_impl(&dword_226E8E000, v5, v6, "Add [%ld] earned instances", v7, 0xCu);
        MEMORY[0x22AA9A450](v7, -1, -1);
      }

      else
      {
        v16 = v0[23];
      }

      v17 = v0[30];
      v18 = v0[25];
      v19 = v0[26];
      v20 = v0[23];
      v21 = v0[24];
      v22 = *(v19 + 8);
      v0[31] = v22;
      v0[32] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22(v17, v18);

      v24 = sub_2271C4D60(v23);
      v25 = sub_2271C4850(v24);

      v0[21] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      sub_22713AA40();
      v26 = sub_22766BF70();
      v28 = v27;

      v0[33] = v26;
      v0[34] = v28;
      v29 = *(v21 + 456);
      sub_22726CD6C(v20);
      sub_226E99364(0, &qword_27D7B89C0, 0x277CE8D38);
      v30 = sub_22766C2B0();
      v0[35] = v30;

      v0[2] = v0;
      v0[7] = v0 + 37;
      v0[3] = sub_2271CD00C;
      v31 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_226ECD448;
      v0[13] = &block_descriptor_63;
      v0[14] = v31;
      [v29 addEarnedInstances:v30 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[27];
  v12 = v0[28];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2271CD00C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  if (v3)
  {
    v4 = *(v1 + 272);

    v5 = sub_2271CD3E4;
  }

  else
  {
    v5 = sub_2271CD124;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271CD124()
{
  v37 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(v0 + 296);

  sub_22766A610();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184) & 0xC000000000000001;
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    if (v6)
    {
      v8 = sub_22766CD20();
      v9 = *(v0 + 184);
    }

    else
    {
      v8 = *(*(v0 + 184) + 16);
    }

    *(v7 + 4) = v8;

    *(v7 + 12) = 1024;
    *(v7 + 14) = v3;
    _os_log_impl(&dword_226E8E000, v4, v5, "Added [%ld] earned instances to client with result: %{BOOL}d", v7, 0x12u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 272);
  v11 = *(v0 + 256);
  v12 = *(v0 + 224);
  (*(v0 + 248))(*(v0 + 232), *(v0 + 200));
  sub_22766A610();

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 272);
  if (v15)
  {
    v17 = *(v0 + 264);
    v35 = *(v0 + 256);
    v18 = *(v0 + 248);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315138;
    v23 = sub_226E97AE8(v17, v16, &v36);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_226E8E000, v13, v14, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AA9A450](v22, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);

    v18(v19, v20);
  }

  else
  {
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v26 = *(v0 + 224);
    v27 = *(v0 + 200);
    v28 = *(v0 + 272);

    v25(v26, v27);
  }

  v30 = *(v0 + 232);
  v29 = *(v0 + 240);
  v32 = *(v0 + 216);
  v31 = *(v0 + 224);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_2271CD3E4()
{
  v29 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 216);
  swift_willThrow();

  sub_22766A610();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v26 = *(v0 + 248);
    v27 = *(v0 + 256);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v13 = MEMORY[0x22AA995D0](*(v0 + 152), *(v0 + 160));
    v15 = sub_226E97AE8(v13, v14, &v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to add earnedInstances to client: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v26(v8, v9);
  }

  else
  {
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 216);
    v19 = *(v0 + 200);

    v17(v18, v19);
  }

  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2271CD5D8()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_22766A8A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) == 1)
  {
    v14 = *(v0 + 544);
    v15 = sub_2276693C0();
    (*(v10 + 104))(v13, *MEMORY[0x277D4F8D0], v9);
    v16 = sub_226EC9A38(v13, v15);

    (*(v10 + 8))(v13, v9);
    if (v16)
    {
      return 1;
    }

    sub_22766A610();
    v18 = sub_22766B380();
    v21 = sub_22766C8B0();
    if (!os_log_type_enabled(v18, v21))
    {
      v6 = v8;
      goto LABEL_10;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_226E8E000, v18, v21, "Current platform does not support achievements evaluating", v20, 2u);
    v6 = v8;
    goto LABEL_8;
  }

  sub_22766A610();
  v18 = sub_22766B380();
  v19 = sub_22766C890();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_226E8E000, v18, v19, "AchievementSystem is not active, not running historical evaluation.", v20, 2u);
LABEL_8:
    MEMORY[0x22AA9A450](v20, -1, -1);
  }

LABEL_10:

  (*(v2 + 8))(v6, v1);
  return 0;
}

uint64_t sub_2271CD8A4()
{
  v1[6] = v0;
  v2 = sub_227665D10();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_227662750();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = sub_22766B390();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CDA28, 0, 0);
}

uint64_t sub_2271CDA28()
{
  v1 = v0[16];
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Requesting catalog sync", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[6];

  v10 = *(v7 + 8);
  v0[17] = v10;
  v10(v5, v6);
  v11 = __swift_project_boxed_opaque_existential_0((v9 + 416), *(v9 + 440));
  v12 = sub_227666340();
  v13 = *v11;
  sub_227662740();
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_2271CDB94;
  v15 = v0[12];

  return sub_2273A75C8(v12, v15);
}

uint64_t sub_2271CDB94()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271CDD50, 0, 0);
  }

  else
  {
    v6 = v2[15];
    v5 = v2[16];
    v7 = v2[12];
    v8 = v2[9];

    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_2271CDD50()
{
  v43 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  sub_22766A610();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v41 = *(v0 + 136);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v13 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v15 = sub_226E97AE8(v13, v14, &v42);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Catalog sync request finished with error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v41(v7, v9);
  }

  else
  {
    v16 = *(v0 + 136);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 104);

    v16(v17, v19);
  }

  v20 = *(v0 + 152);
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 56);
  v24 = *(v22 + 104);
  v24(v21, *MEMORY[0x277D51DE8], v23);
  sub_2271D7AA0(&qword_28139B718, MEMORY[0x277D51E08]);
  LOBYTE(v20) = sub_2276660E0();
  v25 = *(v22 + 8);
  v25(v21, v23);
  if (v20 & 1) != 0 || (v26 = *(v0 + 152), v27 = *(v0 + 72), v28 = *(v0 + 56), v24(v27, *MEMORY[0x277D51DF0], v28), LOBYTE(v26) = sub_2276660E0(), v25(v27, v28), (v26))
  {

    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 96);
    v32 = *(v0 + 72);

    v33 = *(v0 + 8);
  }

  else
  {
    v34 = *(v0 + 152);
    v35 = *(v0 + 120);
    v36 = *(v0 + 128);
    v37 = *(v0 + 96);
    v38 = *(v0 + 72);
    swift_willThrow();

    v33 = *(v0 + 8);
    v39 = *(v0 + 152);
  }

  return v33();
}

uint64_t sub_2271CE090(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_227667A70();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CE154, 0, 0);
}

uint64_t sub_2271CE154()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 80) + 48), *(*(v0 + 80) + 72));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_2271CE1F4;

  return sub_226EB91E0();
}

uint64_t sub_2271CE1F4(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_2271CE2F4, 0, 0);
}

uint64_t sub_2271CE2F4()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_227669DE0();
  if (sub_227669D90() == v2 && v3 == v1)
  {
  }

  else
  {
    v5 = v0[8];
    v6 = v0[9];
    v7 = sub_22766D190();

    if ((v7 & 1) == 0)
    {
      v9 = v0[8];
      v8 = v0[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      v0[18] = inited;
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = v9;
      *(inited + 40) = v8;

      v11 = swift_task_alloc();
      v0[19] = v11;
      *v11 = v0;
      v11[1] = sub_2271CE6FC;
      v12 = v0[10];

      return sub_226EB6FEC(inited);
    }
  }

  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_2271CE498;
  v15 = v0[13];
  v16 = v0[10];

  return sub_2271CF294(v15);
}

uint64_t sub_2271CE498()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);

    v5 = sub_2271CE974;
  }

  else
  {
    v5 = sub_2271CE5B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271CE5B4()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];
  sub_226E99364(0, &qword_281398B18, 0x277CE8CB0);
  v4 = sub_22766C8E0();
  v5 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v6 = v0[13];
  if (v1)
  {
    v7 = v0[13];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v4;
    sub_22766C8D0();
    ACHApplyBadgePropertiesToAchievement();
    v11 = ACHCodableFromAchievement();

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_2271CE6FC(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = a1;

  swift_setDeallocating();
  sub_226FA6DA4(v3 + 32);

  return MEMORY[0x2822009F8](sub_2271CE824, 0, 0);
}

uint64_t sub_2271CE824()
{
  v1 = v0[20];
  v2 = v0[15];
  v4 = v0[8];
  v3 = v0[9];
  sub_226E99364(0, &qword_281398B18, 0x277CE8CB0);
  v5 = sub_22766C8C0();
  v6 = v0[20];
  v7 = v0[15];

  v8 = v0[13];
  v9 = v5;
  sub_22766C8D0();
  ACHApplyBadgePropertiesToAchievement();
  v10 = ACHCodableFromAchievement();

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_2271CE974()
{
  v1 = v0[17];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2271CE9D8()
{
  v25 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 208);
  swift_willThrow();

  sub_22766A610();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 200);
    v23 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v13 = MEMORY[0x22AA995D0](*(v0 + 152), *(v0 + 160));
    v15 = sub_226E97AE8(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to populate progress and goal to client: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271CEBC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227667A70();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CECE0, 0, 0);
}

uint64_t sub_2271CECE0()
{
  v20 = v0;
  v1 = v0[9];
  v2 = v0[2];
  sub_22766A610();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x22AA98660](v9, MEMORY[0x277D837D0]);
    v14 = sub_226E97AE8(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "Fetching SeymourAchievementProgress for templateUniqueNames: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v15 = swift_task_alloc();
  v0[10] = v15;
  *v15 = v0;
  v15[1] = sub_2271CEEA8;
  v16 = v0[6];
  v17 = v0[3];

  return sub_2271CF294(v16);
}

uint64_t sub_2271CEEA8()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271CF224, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[12] = v4;
    *v4 = v3;
    v4[1] = sub_2271CF018;
    v5 = v3[3];
    v6 = v3[2];

    return sub_226EB6FEC(v6);
  }
}

uint64_t sub_2271CF018(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2271CF118, 0, 0);
}

uint64_t sub_2271CF118()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  sub_226FDF394(sub_2271D7A84, v7, v1);
  v9 = v8;

  v10 = sub_226F44640(v9);

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_2271CF224()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_2271CF294(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22766B390();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CF354, 0, 0);
}

uint64_t sub_2271CF354()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[7] + 464), *(v0[7] + 488));
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_2271CF3FC;
  v3 = v0[6];

  return sub_226ECA330(v3);
}

uint64_t sub_2271CF3FC()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271CF538, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2271CF538()
{
  v25 = v0;
  v1 = v0[12];
  v2 = v0[10];
  sub_22766A610();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v13 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v15 = sub_226E97AE8(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "AchievementEnvironmentCache query failed with error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[8];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[12];
  v20 = v0[10];
  swift_willThrow();

  v21 = v0[1];
  v22 = v0[12];

  return v21();
}

uint64_t sub_2271CF70C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v58 - v9;
  v10 = sub_2276667B0();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_22766A610();
  v19 = v18;
  v20 = sub_22766B380();
  LODWORD(v18) = sub_22766C8B0();

  v65 = v18;
  v21 = os_log_type_enabled(v20, v18);
  v22 = &off_2785D6000;
  if (v21)
  {
    v23 = swift_slowAlloc();
    v63 = v3;
    v24 = v23;
    v59 = swift_slowAlloc();
    *&v69[0] = v59;
    *v24 = 136315650;
    v25 = [v19 templateUniqueName];
    v26 = sub_22766C000();
    v60 = v13;
    v61 = a2;
    v27 = v26;
    v29 = v28;

    v30 = sub_226E97AE8(v27, v29, v69);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v31 = [v19 progressQuantity];
    v71 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A8, &qword_22767C670);
    v32 = sub_22766CB80();
    v62 = a3;
    v34 = v33;

    v35 = sub_226E97AE8(v32, v34, v69);

    *(v24 + 14) = v35;
    *(v24 + 22) = 2080;
    v36 = [v19 goalQuantity];
    v71 = v36;
    v37 = sub_22766CB80();
    v39 = v38;

    v40 = sub_226E97AE8(v37, v39, v69);
    a3 = v62;

    *(v24 + 24) = v40;
    v22 = &off_2785D6000;
    _os_log_impl(&dword_226E8E000, v20, v65, "Fetched progressUpdate %s with progress: %s goal: %s", v24, 0x20u);
    v41 = v59;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v41, -1, -1);
    MEMORY[0x22AA9A450](v24, -1, -1);

    (*(v14 + 8))(v17, v60);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v42 = [v19 v22[476]];
  v43 = sub_22766C000();
  v45 = v44;

  sub_227669DE0();
  if (v43 == sub_227669DC0() && v45 == v46)
  {
  }

  else
  {
    v47 = sub_22766D190();

    if ((v47 & 1) == 0)
    {
      result = sub_22766CA50();
      v57 = v69[1];
      *a3 = v69[0];
      *(a3 + 16) = v57;
      v56 = v70;
      goto LABEL_12;
    }
  }

  v48 = v66;
  sub_2276679D0();
  v50 = v67;
  v49 = v68;
  if ((*(v67 + 48))(v48, 1, v68) == 1)
  {
    sub_226E97D1C(v48, &qword_27D7B8E40, &unk_227685580);
    result = sub_2276679E0();
    *a3 = xmmword_22767C490;
    *(a3 + 16) = result;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    return result;
  }

  v52 = v64;
  (*(v50 + 32))(v64, v48, v49);
  v53 = ~sub_227666780();
  v54 = sub_2276667A0();
  v55 = sub_2276679E0();
  result = (*(v50 + 8))(v52, v49);
  *a3 = v54;
  *(a3 + 8) = v53 & 1;
  *(a3 + 16) = v55;
  *(a3 + 24) = 0;
  v56 = 1;
LABEL_12:
  *(a3 + 32) = v56;
  return result;
}

uint64_t sub_2271CFC7C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227664AB0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_22766B390();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v10 = sub_2276682A0();
  v3[18] = v10;
  v11 = *(v10 - 8);
  v3[19] = v11;
  v12 = *(v11 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CFE10, 0, 0);
}

uint64_t sub_2271CFE10()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v1[39];
  v5 = v1[40];
  __swift_project_boxed_opaque_existential_0(v1 + 36, v4);
  v6 = swift_allocObject();
  v0[21] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = *(v5 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_2271CFF9C;
  v10 = v0[20];
  v11 = v0[18];

  return (v13)(v10, sub_2271D7ED0, v6, v11, v4, v5);
}

uint64_t sub_2271CFF9C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_2271D0278;
  }

  else
  {
    v5 = v2[21];
    (*(v2[19] + 8))(v2[20], v2[18]);

    v4 = sub_2271D00D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271D00D0()
{
  v21 = v0;
  v1 = v0[17];
  v2 = v0[8];
  sub_22766A610();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  if (v5)
  {
    v10 = v0[7];
    v9 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_226E97AE8(v10, v9, &v20);
    _os_log_impl(&dword_226E8E000, v3, v4, "AchievementNotificationRecord found for %s, not eligible to present award toast", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  v13 = v0[20];
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[12];

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_2271D0278()
{
  v51 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  *(v0 + 40) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v19 = *(v0 + 184);
    v20 = *(v0 + 120);
    v21 = *(v0 + 64);

    sub_22766A610();

    v22 = v19;
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();

    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = *(v0 + 104);
    if (v25)
    {
      v47 = *(v0 + 104);
      v49 = *(v0 + 120);
      v30 = *(v0 + 56);
      v29 = *(v0 + 64);
      v31 = *(v0 + 184);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_226E97AE8(v30, v29, &v50);
      *(v32 + 12) = 2080;
      swift_getErrorValue();
      v34 = *(v0 + 16);
      v35 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
      v37 = sub_226E97AE8(v35, v36, &v50);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_226E8E000, v23, v24, "AchievementNotificationRecord query for %s failed with error: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v32, -1, -1);

      (*(v27 + 8))(v49, v47);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    v38 = 0;
    goto LABEL_12;
  }

  if ((*(*(v0 + 88) + 88))(*(v0 + 96), *(v0 + 80)) != *MEMORY[0x277D50D30])
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_6;
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 64);
  sub_22766A610();

  v8 = sub_22766B380();
  v9 = sub_22766C8B0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 184);
  v12 = *(v0 + 128);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  if (v10)
  {
    v48 = *(v0 + 104);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v46 = v12;
    v18 = swift_slowAlloc();
    v50 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_226E97AE8(v16, v15, &v50);
    _os_log_impl(&dword_226E8E000, v8, v9, "%s is eligible for award toasting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v13 + 8))(v46, v48);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v38 = 1;
LABEL_12:
  v39 = *(v0 + 160);
  v41 = *(v0 + 128);
  v40 = *(v0 + 136);
  v42 = *(v0 + 120);
  v43 = *(v0 + 96);

  v44 = *(v0 + 8);

  return v44(v38);
}

uint64_t sub_2271D0690()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC090, &qword_22767C5E0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_227667A70();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[6] = v6;
  v7 = swift_task_alloc();
  v1[7] = v7;
  *v7 = v1;
  v7[1] = sub_2271D07C0;

  return sub_2271CF294(v6);
}

uint64_t sub_2271D07C0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2271D0F00;
  }

  else
  {
    v3 = sub_2271D08D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271D08D4()
{
  v1 = v0[2];
  sub_227669DE0();
  v2 = sub_227669D90();
  v4 = v3;
  v5 = v1[39];
  v6 = v1[40];
  __swift_project_boxed_opaque_existential_0(v1 + 36, v5);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  v8 = *(v6 + 24);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = sub_2276682A0();
  v0[11] = v11;
  *v10 = v0;
  v10[1] = sub_2271D0A74;
  v12 = v0[3];

  return (v14)(v12, sub_2271D7A68, v7, v11, v5, v6);
}

uint64_t sub_2271D0A74()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {

    v6 = sub_2271D0D5C;
  }

  else
  {

    v6 = sub_2271D0BBC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2271D0BBC()
{
  v1 = v0[12];
  v2 = v0[6];
  (*(*(v0[11] - 8) + 56))(v0[3], 0, 1);
  v3 = sub_227668C60();
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  if (v1)
  {
    sub_226E97D1C(v0[3], &qword_27D7BC090, &qword_22767C5E0);
    (*(v6 + 8))(v5, v7);
    v9 = v0[6];
    v10 = v0[3];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v4;
    v14 = v3;
    sub_226E97D1C(v0[3], &qword_27D7BC090, &qword_22767C5E0);
    (*(v6 + 8))(v5, v7);

    v15 = v0[1];

    return v15(v14, v13 & 1);
  }
}

uint64_t sub_2271D0D5C()
{
  v1 = v0[6];
  (*(*(v0[11] - 8) + 56))(v0[3], 1, 1);
  v2 = sub_227668C60();
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v7 = v6;
  v8 = v2;
  sub_226E97D1C(v0[3], &qword_27D7BC090, &qword_22767C5E0);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9(v8, v7 & 1);
}

uint64_t sub_2271D0F00()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271D0F70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276682A0();
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

  return MEMORY[0x2822009F8](sub_2271D10A0, 0, 0);
}

uint64_t sub_2271D10A0()
{
  v47 = v0;
  v1 = v0[11];
  v2 = v0[8];
  if (*(v0[3] + 16) == 1)
  {
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[11];
    sub_22766A610();
    v44 = *(v4 + 16);
    v44(v2, v5, v3);
    v7 = sub_22766B380();
    v8 = sub_22766C8B0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    if (v9)
    {
      v14 = v0[7];
      v16 = v0[4];
      v15 = v0[5];
      v43 = v0[11];
      v17 = swift_slowAlloc();
      v42 = v12;
      v18 = swift_slowAlloc();
      v46 = v18;
      *v17 = 136315138;
      v44(v14, v13, v16);
      v19 = sub_22766C060();
      v41 = v8;
      v21 = v20;
      (*(v15 + 8))(v13, v16);
      v22 = sub_226E97AE8(v19, v21, &v46);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_226E8E000, v7, v41, "AchievementSystem received request to update notification record with %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AA9A450](v18, -1, -1);
      MEMORY[0x22AA9A450](v17, -1, -1);

      (*(v10 + 8))(v43, v42);
    }

    else
    {
      v27 = v0[4];
      v28 = v0[5];

      (*(v28 + 8))(v13, v27);
      (*(v10 + 8))(v11, v12);
    }

    v30 = v0[6];
    v29 = v0[7];
    v31 = v0[4];
    v32 = v0[5];
    v33 = v0[2];
    v34 = v0[3];
    v35 = v34[40];
    __swift_project_boxed_opaque_existential_0(v34 + 36, v34[39]);
    v44(v29, v33, v31);
    v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v37 = swift_allocObject();
    v0[12] = v37;
    (*(v32 + 32))(v37 + v36, v29, v31);
    *(v37 + ((v30 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v38 = *(v35 + 24);

    v45 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    v0[13] = v40;
    *v40 = v0;
    v40[1] = sub_2271D14A0;

    return v45();
  }

  else
  {
    v23 = v0[7];
    v24 = v0[11];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2271D14A0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226FA0548;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2271D15BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271D15BC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[3] + 504), *(v0[3] + 528));
  sub_2271D7EE8();
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2271D164C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B390();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D1710, 0, 0);
}

uint64_t sub_2271D1710()
{
  v24 = v0;
  v1 = v0[7];
  v2 = v0[3];
  sub_22766A610();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  if (v5)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_226E97AE8(v10, v9, &v23);
    _os_log_impl(&dword_226E8E000, v3, v4, "AchievementSystem received request to delete notification record for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  v16 = v13[40];
  __swift_project_boxed_opaque_existential_0(v13 + 36, v13[39]);
  v17 = swift_allocObject();
  v0[8] = v17;
  v17[2] = v15;
  v17[3] = v14;
  v17[4] = v13;
  v18 = *(v16 + 24);

  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_2271D19A8;

  return v22();
}

uint64_t sub_2271D19A8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2271D1B28;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2271D1AC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271D1AC4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2271D1B28()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_2271D1B94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA100, &qword_227677F18);
  v8 = sub_2276682A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v12 + v11, a2, v8);
  sub_227562ED4(v12, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    v14 = *__swift_project_boxed_opaque_existential_0((a3 + 504), *(a3 + 528));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_227670CD0;
    *(v15 + 32) = sub_227668290();
    *(v15 + 40) = v16;
    sub_2272D7D84(0, v15, a1);
  }

  return result;
}

uint64_t sub_2271D1D3C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v94 = a4;
  v7 = sub_22766B390();
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = v101[8];
  MEMORY[0x28223BE20](v7);
  v100 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC090, &qword_22767C5E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v93 - v12;
  v13 = sub_2276682A0();
  v105 = *(v13 - 8);
  v106 = v13;
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v13);
  v103 = a1;
  v104 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  v20 = v16[3];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC098, qword_22767C5E8);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v99 = v21;
  v24 = swift_allocObject();
  v25 = v17;
  v26 = v18;

  sub_22766A070();
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = v19;
  *(v24 + 40) = v20;
  swift_getKeyPath();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v114 = v97;
  v109 = a2;
  v112 = a2;
  v113 = a3;
  v27 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v115 = a3;

  v98 = v27;
  v28 = sub_22766C820();
  sub_226E93170(&v112, v110, &unk_27D7BC990, &qword_227670A30);
  v29 = v111;
  if (v111)
  {
    v30 = __swift_project_boxed_opaque_existential_0(v110, v111);
    v31 = *(v29 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v30);
    v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34);
    v35 = sub_22766D170();
    (*(v31 + 8))(v34, v29);
    __swift_destroy_boxed_opaque_existential_0(v110);
  }

  else
  {
    v35 = 0;
  }

  v96 = objc_opt_self();
  v36 = [v96 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A0, &qword_22767C630);
  v37 = [objc_allocWithZone(v95) initWithLeftExpression:v28 rightExpression:v36 modifier:0 type:4 options:0];

  sub_226E97D1C(&v112, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v38 = v37;
  v39 = sub_22766A080();
  v41 = v40;
  MEMORY[0x22AA985C0]();
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v39(&v112, 0);
  swift_endAccess();

  v42 = MEMORY[0x22AA99A00]();
  v44 = v107;
  v43 = v108;
  sub_2275449AC(v24, v107);
  v45 = v115;
  v46 = v109;
  if (v43)
  {
    objc_autoreleasePoolPop(v42);
  }

  objc_autoreleasePoolPop(v42);
  v49 = v105;
  v48 = v106;
  if ((*(v105 + 48))(v44, 1, v106) == 1)
  {

    return sub_226E97D1C(v44, &qword_27D7BC090, &qword_22767C5E0);
  }

  (*(v49 + 32))(v104, v44, v48);
  v50 = v100;
  sub_22766A610();

  v51 = sub_22766B380();
  v52 = sub_22766C8B0();

  v53 = os_log_type_enabled(v51, v52);
  v93 = 0;
  if (v53)
  {
    v54 = v50;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v112 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_226E97AE8(v46, v45, &v112);
    _os_log_impl(&dword_226E8E000, v51, v52, "Existing AchievementNotificationRecord found for %s, deleting", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v55, -1, -1);

    (v101[1])(v54, v102);
  }

  else
  {

    (v101[1])(v50, v102);
  }

  v57 = __swift_project_boxed_opaque_existential_0(v103, v103[3]);
  v58 = *v57;
  v59 = v57[1];
  v60 = *(v57 + 16);
  v61 = v57[3];
  v62 = *(v99 + 48);
  v63 = *(v99 + 52);
  v64 = swift_allocObject();
  v65 = v58;
  v66 = v59;

  sub_22766A070();
  v100 = v66;
  v101 = v65;
  *(v64 + 16) = v65;
  *(v64 + 24) = v66;
  LODWORD(v107) = v60;
  *(v64 + 32) = v60;
  v108 = v64;
  v102 = v61;
  *(v64 + 40) = v61;
  swift_getKeyPath();
  v114 = v97;
  v112 = v109;
  v113 = v115;

  v67 = sub_22766C820();
  sub_226E93170(&v112, v110, &unk_27D7BC990, &qword_227670A30);
  v68 = v111;
  if (v111)
  {
    v69 = __swift_project_boxed_opaque_existential_0(v110, v111);
    v70 = *(v68 - 8);
    v71 = *(v70 + 64);
    MEMORY[0x28223BE20](v69);
    v73 = &v93 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v73);
    v74 = sub_22766D170();
    (*(v70 + 8))(v73, v68);
    __swift_destroy_boxed_opaque_existential_0(v110);
  }

  else
  {
    v74 = 0;
  }

  v75 = v93;
  v76 = [v96 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v77 = [objc_allocWithZone(v95) initWithLeftExpression:v67 rightExpression:v76 modifier:0 type:4 options:0];

  sub_226E97D1C(&v112, &unk_27D7BC990, &qword_227670A30);
  v78 = qword_2813B2078;
  v79 = v108;
  swift_beginAccess();
  v80 = v77;
  v81 = sub_22766A080();
  v83 = v82;
  MEMORY[0x22AA985C0]();
  if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v115 = *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v81(&v112, 0);
  swift_endAccess();

  v84 = sub_227543170(v79 + v78, v107, v102);
  if (!v84)
  {
    v89 = sub_2272847FC(0);
    v85 = v104;
    if (!v75)
    {
      v90 = v89;
      [v89 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v91 = sub_22766C9E0();
      v92 = sub_226EDAB24(v91);

      sub_226EDAB78(v92, v100);

      goto LABEL_21;
    }

LABEL_25:

    goto LABEL_26;
  }

  v85 = v104;
  if (v84 != 1)
  {
    swift_willThrow();
    goto LABEL_25;
  }

LABEL_21:
  v86 = *__swift_project_boxed_opaque_existential_0((v94 + 504), *(v94 + 528));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_227670CD0;
  *(v87 + 32) = sub_227668290();
  *(v87 + 40) = v88;
  sub_2272D7D84(1, v87, v103);

LABEL_26:

  return (*(v105 + 8))(v85, v106);
}

uint64_t sub_2271D284C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v7 = sub_22766B390();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC090, &qword_22767C5E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v78 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v73 - v16;
  v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  v21 = v17[3];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC098, qword_22767C5E8);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v18;
  v27 = v19;

  sub_22766A070();
  *(v25 + 16) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = v20;
  *(v25 + 40) = v21;
  swift_getKeyPath();
  v85[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v77 = a2;
  v85[0] = a2;
  v85[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v79 = a3;

  v28 = sub_22766C820();
  sub_226E93170(v85, v83, &unk_27D7BC990, &qword_227670A30);
  v29 = v84;
  if (v84)
  {
    v30 = __swift_project_boxed_opaque_existential_0(v83, v84);
    v31 = *(v29 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v30);
    v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34);
    v35 = sub_22766D170();
    (*(v31 + 8))(v34, v29);
    __swift_destroy_boxed_opaque_existential_0(v83);
  }

  else
  {
    v35 = 0;
  }

  v36 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v37 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A0 &qword_22767C630))];

  sub_226E97D1C(v85, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v38 = v37;
  v39 = sub_22766A080();
  v41 = v40;
  MEMORY[0x22AA985C0]();
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v72 = *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v39(v85, 0);
  swift_endAccess();

  v42 = MEMORY[0x22AA99A00]();
  v43 = v82;
  sub_2275449AC(v25, v86);
  if (v43)
  {
    objc_autoreleasePoolPop(v42);
    swift_setDeallocating();

    v44 = *(v25 + 40);

    v45 = qword_2813B2078;
    v46 = sub_22766A100();
    (*(*(v46 - 8) + 8))(v25 + v45, v46);
    v47 = *(*v25 + 48);
    v48 = *(*v25 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    objc_autoreleasePoolPop(v42);
    swift_setDeallocating();

    v50 = *(v25 + 40);

    v51 = qword_2813B2078;
    v52 = sub_22766A100();
    (*(*(v52 - 8) + 8))(v25 + v51, v52);
    v53 = *(*v25 + 48);
    v54 = *(*v25 + 52);
    swift_deallocClassInstance();
    v55 = v78;
    sub_226E93170(v86, v78, &qword_27D7BC090, &qword_22767C5E0);
    v56 = sub_2276682A0();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      sub_226E97D1C(v55, &qword_27D7BC090, &qword_22767C5E0);
      v58 = v76;
      sub_22766A610();
      v59 = v79;

      v60 = sub_22766B380();
      v61 = sub_22766C8B0();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v85[0] = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_226E97AE8(v77, v59, v85);
        _os_log_impl(&dword_226E8E000, v60, v61, "No achievement notification records found for %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x22AA9A450](v63, -1, -1);
        MEMORY[0x22AA9A450](v62, -1, -1);
      }

      (*(v80 + 8))(v58, v81);
      v64 = sub_227664AB0();
      sub_2271D7AA0(&qword_27D7B8E58, MEMORY[0x277D50D38]);
      swift_allocError();
      (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D50D30], v64);
      swift_willThrow();
    }

    else
    {
      (*(v57 + 32))(v74, v55, v56);
      v66 = v75;
      sub_22766A610();
      v67 = v79;

      v68 = sub_22766B380();
      v69 = sub_22766C8B0();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v85[0] = v71;
        *v70 = 136315138;
        *(v70 + 4) = sub_226E97AE8(v77, v67, v85);
        _os_log_impl(&dword_226E8E000, v68, v69, "Existing achievement notification record found for: %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x22AA9A450](v71, -1, -1);
        MEMORY[0x22AA9A450](v70, -1, -1);
      }

      (*(v80 + 8))(v66, v81);
    }

    return sub_226E97D1C(v86, &qword_27D7BC090, &qword_22767C5E0);
  }
}

uint64_t sub_2271D3180(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = sub_22766B390();
  v3[46] = v4;
  v5 = *(v4 - 8);
  v3[47] = v5;
  v6 = *(v5 + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v7 = sub_227667A70();
  v3[50] = v7;
  v8 = *(v7 - 8);
  v3[51] = v8;
  v3[52] = *(v8 + 64);
  v3[53] = swift_task_alloc();
  v9 = sub_227664530();
  v3[54] = v9;
  v10 = *(v9 - 8);
  v3[55] = v10;
  v3[56] = *(v10 + 64);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v3[60] = v11;
  v3[61] = *(v11 + 64);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v3[65] = v12;
  v3[66] = *(v12 + 64);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D342C, 0, 0);
}

uint64_t sub_2271D342C()
{
  v1 = v0[45];
  v2 = v0[43];
  v0[69] = sub_2276644D0();
  v0[70] = v3;
  __swift_project_boxed_opaque_existential_0((v1 + 48), *(v1 + 72));
  v4 = swift_task_alloc();
  v0[71] = v4;
  *v4 = v0;
  v4[1] = sub_2271D34DC;

  return sub_226EB91E0();
}

uint64_t sub_2271D34DC(uint64_t a1)
{
  v2 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = a1;

  return MEMORY[0x2822009F8](sub_2271D35DC, 0, 0);
}

uint64_t sub_2271D35DC()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[45];
  v4 = v3[44];
  v5 = v3[45];
  __swift_project_boxed_opaque_existential_0(v3 + 41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v6 = swift_allocObject();
  v0[73] = v6;
  *(v6 + 16) = xmmword_227670CD0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = *(MEMORY[0x277D4F208] + 4);

  v8 = swift_task_alloc();
  v0[74] = v8;
  v9 = *(v5 + 8);
  *v8 = v0;
  v8[1] = sub_2271D36F0;

  return MEMORY[0x2821AED70](v6, v4, v9);
}

uint64_t sub_2271D36F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v8 = *v2;
  v3[75] = a1;
  v3[76] = v1;

  if (v1)
  {
    v5 = sub_2271D4648;
  }

  else
  {
    v6 = v3[73];

    v5 = sub_2271D3810;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271D3810()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 544);
  v63 = __swift_project_boxed_opaque_existential_0((*(v0 + 360) + 128), *(*(v0 + 360) + 152));
  v3 = sub_2276638D0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = *(v0 + 560);
  if (*(v1 + 16))
  {
    v5 = sub_226E92000(*(v0 + 552), *(v0 + 560));
    v7 = v6;

    v8 = *(v0 + 512);
    if (v7)
    {
      v9 = *(*(v0 + 600) + 56);
      v10 = sub_22766A4C0();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v8, v9 + *(v11 + 72) * v5, v10);

      (*(v11 + 56))(v8, 0, 1, v10);
    }

    else
    {
      v14 = *(v0 + 600);

      v10 = sub_22766A4C0();
      (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    }
  }

  else
  {
    v12 = *(v0 + 512);
    v13 = *(v0 + 600);

    v10 = sub_22766A4C0();
    (*(*(v10 - 8) + 56))(v12, 1, 1, v10);
  }

  v15 = *(v0 + 504);
  sub_226E93170(*(v0 + 512), v15, &qword_27D7B8E38, &qword_22767C730);
  sub_22766A4C0();
  v16 = *(v10 - 8);
  v17 = (*(v16 + 48))(v15, 1, v10);
  v18 = *(v0 + 504);
  if (v17 == 1)
  {
    sub_226E97D1C(*(v0 + 504), &qword_27D7B8E38, &qword_22767C730);
    v19 = 0;
  }

  else
  {
    sub_22766A4A0();
    v19 = v20;
    (*(v16 + 8))(v18, v10);
  }

  v21 = *(v0 + 536);
  v50 = *(v0 + 544);
  v51 = *(v0 + 512);
  v22 = *(v0 + 496);
  v56 = *(v0 + 528);
  v57 = *(v0 + 488);
  v23 = *(v0 + 472);
  v24 = *(v0 + 440);
  v52 = *(v0 + 448);
  v53 = *(v0 + 520);
  v25 = *(v0 + 424);
  v26 = *(v0 + 432);
  v60 = v21;
  v61 = v25;
  v54 = *(v0 + 416);
  v55 = *(v0 + 480);
  v27 = *(v0 + 400);
  v58 = v22;
  v59 = v27;
  v28 = *(v0 + 344);
  v48 = *(v0 + 408);
  v49 = *(v0 + 352);
  v65 = v63[16];
  v62 = v63[17];
  __swift_project_boxed_opaque_existential_0(v63 + 13, v65);
  sub_226F739B8(v63, v0 + 16);
  v29 = *(v24 + 16);
  *(v0 + 616) = v29;
  *(v0 + 624) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v23, v28, v26);
  sub_226E93170(v50, v21, &unk_27D7BB920, &unk_227672480);
  (*(v48 + 16))(v25, v49, v27);
  sub_226E93170(v51, v22, &qword_27D7B8E38, &qword_22767C730);
  v30 = (*(v24 + 80) + 240) & ~*(v24 + 80);
  v31 = (v52 + *(v53 + 80) + v30) & ~*(v53 + 80);
  v32 = (v56 + *(v48 + 80) + v31) & ~*(v48 + 80);
  v33 = (v54 + *(v55 + 80) + v32) & ~*(v55 + 80);
  v34 = (v57 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v0 + 632) = v35;
  v36 = *(v0 + 192);
  *(v35 + 11) = *(v0 + 176);
  *(v35 + 12) = v36;
  v37 = *(v0 + 224);
  *(v35 + 13) = *(v0 + 208);
  *(v35 + 14) = v37;
  v38 = *(v0 + 128);
  *(v35 + 7) = *(v0 + 112);
  *(v35 + 8) = v38;
  v39 = *(v0 + 160);
  *(v35 + 9) = *(v0 + 144);
  *(v35 + 10) = v39;
  v40 = *(v0 + 64);
  *(v35 + 3) = *(v0 + 48);
  *(v35 + 4) = v40;
  v41 = *(v0 + 96);
  *(v35 + 5) = *(v0 + 80);
  *(v35 + 6) = v41;
  v42 = *(v0 + 32);
  *(v35 + 1) = *(v0 + 16);
  *(v35 + 2) = v42;
  (*(v24 + 32))(&v35[v30], v23, v26);
  sub_226E95D18(v60, &v35[v31], &unk_27D7BB920, &unk_227672480);
  (*(v48 + 32))(&v35[v32], v61, v59);
  sub_226E95D18(v58, &v35[v33], &qword_27D7B8E38, &qword_22767C730);
  *&v35[v34] = 0;
  *&v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8] = v19;
  v43 = *(v62 + 24);
  v64 = (v43 + *v43);
  v44 = v43[1];
  v45 = swift_task_alloc();
  *(v0 + 640) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
  *v45 = v0;
  v45[1] = sub_2271D3E50;

  return (v64)(v0 + 240, sub_226F73A14, v35, v46, v65, v62);
}

uint64_t sub_2271D3E50()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;
  v2[81] = v0;

  v5 = v2[79];
  if (v0)
  {
    v6 = v2[72];

    v7 = sub_2271D40EC;
  }

  else
  {

    v7 = sub_2271D3F94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2271D3F94()
{
  v1 = v0[72];
  v2 = v0[68];
  sub_226E97D1C(v0[64], &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v2, &unk_27D7BB920, &unk_227672480);
  __swift_project_boxed_opaque_existential_0(v0 + 30, v0[33]);
  v16 = sub_22735E6FC(v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  v3 = v0[68];
  v4 = v0[67];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v9 = v0[58];
  v8 = v0[59];
  v10 = v0[57];
  v11 = v0[53];
  v12 = v0[49];
  v15 = v0[48];

  v13 = v0[1];

  return v13(v16);
}

uint64_t sub_2271D40EC()
{
  v81 = v0;
  v1 = v0[81];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[58];
  v5 = v0[54];
  v6 = v0[49];
  v7 = v0[43];
  sub_22766A610();
  v3(v4, v7, v5);
  v8 = v1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[58];
    v13 = v0[54];
    v12 = v0[55];
    v71 = v0[81];
    v73 = v0[47];
    v75 = v0[46];
    v77 = v0[49];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v80[0] = v15;
    *v14 = 136315394;
    v16 = sub_2276644D0();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_226E97AE8(v16, v18, v80);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v20 = v0[38];
    v21 = MEMORY[0x22AA995D0](v0[39], v0[40]);
    v23 = sub_226E97AE8(v21, v22, v80);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v9, v10, "Failed to create evaluator for session identifier %s with error %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v73 + 8))(v77, v75);
  }

  else
  {
    v24 = v0[58];
    v25 = v0[54];
    v26 = v0[55];
    v27 = v0[49];
    v28 = v0[46];
    v29 = v0[47];

    (*(v26 + 8))(v24, v25);
    (*(v29 + 8))(v27, v28);
  }

  v30 = v0[81];
  v31 = v0[68];
  v32 = v0[64];
  swift_willThrow();
  sub_226E97D1C(v32, &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v31, &unk_27D7BB920, &unk_227672480);
  v33 = v0[81];
  v34 = v0[57];
  v35 = v0[54];
  v36 = v0[55];
  v37 = v0[48];
  v38 = v0[43];
  sub_22766A610();
  (*(v36 + 16))(v34, v38, v35);
  v39 = v33;
  v40 = sub_22766B380();
  v41 = sub_22766C890();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[57];
  v45 = v0[54];
  v44 = v0[55];
  v47 = v0[47];
  v46 = v0[48];
  v48 = v0[46];
  if (v42)
  {
    v72 = v41;
    v49 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v80[0] = v74;
    *v49 = 136315394;
    sub_2271D7AA0(&qword_27D7B8C68, MEMORY[0x277D50978]);
    v76 = v48;
    v78 = v46;
    v50 = sub_22766D140();
    v52 = v51;
    (*(v44 + 8))(v43, v45);
    v53 = sub_226E97AE8(v50, v52, v80);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    swift_getErrorValue();
    v54 = v0[35];
    v55 = MEMORY[0x22AA995D0](v0[36], v0[37]);
    v57 = sub_226E97AE8(v55, v56, v80);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_226E8E000, v40, v72, "Failed to evaluate earned instances for session %s with error %s, skipping", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v74, -1, -1);
    MEMORY[0x22AA9A450](v49, -1, -1);

    (*(v47 + 8))(v78, v76);
  }

  else
  {

    (*(v44 + 8))(v43, v45);
    (*(v47 + 8))(v46, v48);
  }

  v58 = v0[68];
  v59 = v0[67];
  v61 = v0[63];
  v60 = v0[64];
  v62 = v0[62];
  v64 = v0[58];
  v63 = v0[59];
  v65 = v0[57];
  v66 = v0[53];
  v67 = v0[49];
  v79 = v0[48];

  v68 = v0[1];
  v69 = MEMORY[0x277D84FA0];

  return v68(v69);
}

uint64_t sub_2271D4648()
{
  v50 = v0;
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[70];

  v4 = v0[76];
  v5 = v0[57];
  v6 = v0[54];
  v7 = v0[55];
  v8 = v0[48];
  v9 = v0[43];
  sub_22766A610();
  (*(v7 + 16))(v5, v9, v6);
  v10 = v4;
  v11 = sub_22766B380();
  v12 = sub_22766C890();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[57];
    v15 = v0[54];
    v14 = v0[55];
    v45 = v0[47];
    v46 = v0[46];
    v47 = v0[48];
    v16 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49 = v44;
    *v16 = 136315394;
    sub_2271D7AA0(&qword_27D7B8C68, MEMORY[0x277D50978]);
    v17 = sub_22766D140();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_226E97AE8(v17, v19, &v49);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[35];
    v22 = MEMORY[0x22AA995D0](v0[36], v0[37]);
    v24 = sub_226E97AE8(v22, v23, &v49);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_226E8E000, v11, v12, "Failed to evaluate earned instances for session %s with error %s, skipping", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v44, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v45 + 8))(v47, v46);
  }

  else
  {
    v25 = v0[57];
    v26 = v0[54];
    v27 = v0[55];
    v29 = v0[47];
    v28 = v0[48];
    v30 = v0[46];

    (*(v27 + 8))(v25, v26);
    (*(v29 + 8))(v28, v30);
  }

  v31 = v0[68];
  v32 = v0[67];
  v34 = v0[63];
  v33 = v0[64];
  v35 = v0[62];
  v37 = v0[58];
  v36 = v0[59];
  v38 = v0[57];
  v39 = v0[53];
  v40 = v0[49];
  v48 = v0[48];

  v41 = v0[1];
  v42 = MEMORY[0x277D84FA0];

  return v41(v42);
}

uint64_t sub_2271D49A8@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_22766CD20();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 4271950;
  if (!result)
  {
    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x22AA991A0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v8 = [v6 templateUniqueName];

  if (v8)
  {
    v5 = sub_22766C000();
    v10 = v9;
  }

  else
  {
LABEL_9:
    v10 = 0xE300000000000000;
  }

  MEMORY[0x22AA98450](v5, v10);

  MEMORY[0x22AA98450](8250, 0xE200000000000000);
  if (v3 >> 62)
  {
    sub_22766CD20();
  }

  else
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = sub_22766D140();
  MEMORY[0x22AA98450](v12);

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_2271D4B18(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_22766B390();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D4BE4, 0, 0);
}

uint64_t sub_2271D4BE4()
{
  if (*(v0[23] + 16) == 1)
  {
    v1 = v0[22];
    if ((v1 & 0xC000000000000001) != 0)
    {
      if (v1 < 0)
      {
        v2 = v0[22];
      }

      if (sub_22766CD20())
      {
        goto LABEL_6;
      }
    }

    else if (*(v1 + 16))
    {
LABEL_6:
      v3 = *(v0[23] + 456);
      sub_226ECC54C(v0[22]);
      sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
      v4 = sub_22766C2B0();
      v0[28] = v4;

      v0[2] = v0;
      v0[7] = v0 + 30;
      v0[3] = sub_2271D4DC8;
      v5 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_226ECD448;
      v0[13] = &block_descriptor_85;
      v0[14] = v5;
      [v3 addTemplates:v4 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  v7 = v0[26];
  v6 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271D4DC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_2271D504C;
  }

  else
  {
    v3 = sub_2271D4ED8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271D4ED8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 240);

  sub_22766A610();

  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176) & 0xC000000000000001;
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    if (v6)
    {
      v8 = sub_22766CD20();
      v9 = *(v0 + 176);
    }

    else
    {
      v8 = *(*(v0 + 176) + 16);
    }

    *(v7 + 4) = v8;

    *(v7 + 12) = 1024;
    *(v7 + 14) = v3;
    _os_log_impl(&dword_226E8E000, v4, v5, "Added [%ld] templates to client with result: %{BOOL}d", v7, 0x12u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2271D504C()
{
  v25 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  swift_willThrow();

  sub_22766A610();
  v4 = v2;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 200);
    v23 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v13 = MEMORY[0x22AA995D0](*(v0 + 152), *(v0 + 160));
    v15 = sub_226E97AE8(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to add templates to client: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271D5238(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_22766A8A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);

  v13 = sub_227035534(v12, a2);

  if ((v13 & 1) == 0)
  {
    v15 = *(a1 + 24);
    *(a1 + 24) = a2;

    v16 = *(a1 + 544);
    v17 = sub_2276693C0();
    (*(v7 + 104))(v10, *MEMORY[0x277D4F8A8], v6);
    v18 = sub_226EC9A38(v10, v17);

    result = (*(v7 + 8))(v10, v6);
    *a3 = v18 & 1;
  }

  return result;
}

uint64_t sub_2271D53AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_0((a2 + 88), *(a2 + 112));
  v11 = sub_227668350();
  sub_2274B4E8C(v11, v12, a1, v10);
  if (v3)
  {
  }

  v14 = sub_227664530();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) != 1)
  {
    return (*(v15 + 32))(a3, v10, v14);
  }

  sub_226E97D1C(v10, &qword_27D7B8E60, &unk_2276724B0);
  sub_226F73CD0();
  swift_allocError();
  *v16 = 0;
  return swift_willThrow();
}

uint64_t sub_2271D5554(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_22766A8A0();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D5674, 0, 0);
}

uint64_t sub_2271D5674()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = *(v0[5] + 544);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F970], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    v10 = v7[39];
    v11 = v7[40];
    __swift_project_boxed_opaque_existential_0(v7 + 36, v10);
    v12 = swift_allocObject();
    v0[12] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v8;
    v13 = *(v11 + 24);

    v28 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_2271D5964;
    v16 = MEMORY[0x277D83B88];

    return (v28)(v0 + 2, sub_2271D7E9C, v12, v16, v10, v11);
  }

  else
  {
    v18 = v0[8];
    sub_22766A610();
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_226E8E000, v19, v20, "Skipping HealthKit data requirement on unsupported platform", v21, 2u);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];

    (*(v23 + 8))(v22, v24);
    v25 = v0[11];
    v26 = v0[8];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_2271D5964()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_2271D5BD8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_2271D5A80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271D5A80()
{
  if (v0[2] < 1)
  {
    v6 = v0[11];
    v7 = v0[8];
  }

  else
  {
    v1 = sub_227664AB0();
    sub_2271D7AA0(&qword_27D7B8E58, MEMORY[0x277D50D38]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D50D20], v1);
    swift_willThrow();
    v3 = v0[11];
    v4 = v0[8];
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2271D5BD8()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

void sub_2271D5C6C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED0, qword_227676A40);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  v43 = v15;
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v41[0] = v16;
  v41[1] = v10;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v46[0] = a2;
  v46[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
  v18 = v45;
  if (v45)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED8 &unk_227676A90))];

  sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v46, 0);
  swift_endAccess();

  v31 = v46[5];
  v32 = sub_227284814(0);
  if (v31)
  {
  }

  else
  {
    v33 = v32;
    [v32 setResultType_];
    [v33 setFetchLimit_];
    [v33 setFetchOffset_];
    [v33 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v34 = v43;
    v35 = sub_22766C9D0();

    swift_setDeallocating();
    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v14 + v36, v37);
    v38 = *(*v14 + 48);
    v39 = *(*v14 + 52);
    swift_deallocClassInstance();
    *v42 = v35;
  }
}

uint64_t sub_2271D6144(void *a1)
{
  v3 = *(sub_2276682A0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2271D1B94(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2271D61EC(void **a1)
{
  v2 = *(sub_227664530() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117694(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2271D6294(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2271D6294(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664530();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227664530() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2271D6760(v8, v9, a1, v4);
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
    return sub_2271D63C0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2271D63C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_227662750();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_227664530();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_227664520();
      v34 = v61;
      sub_227664520();
      v64 = sub_2276626C0();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2271D6760(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_227662750();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_227664530();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_2271171D0(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_2271D7360(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2271171D0(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_227117144(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_227664520();
      v36 = v160;
      sub_227664520();
      LODWORD(v150) = sub_2276626C0();
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_227664520();
        v48 = v160;
        sub_227664520();
        LOBYTE(v163) = sub_2276626C0() & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_2273A4F9C((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_2271D7360(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2271171D0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_227117144(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_227664520();
    v122 = v160;
    sub_227664520();
    LODWORD(v163) = sub_2276626C0();
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_2271D7360(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_227662750();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_227664530();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_227664520();
            v51 = v69;
            sub_227664520();
            v71 = sub_2276626C0();
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_227664520();
        v31 = v69;
        sub_227664520();
        v71 = sub_2276626C0();
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_2271171FC(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_2271D7AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2271D7AE8(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271C5A40(a1, v1);
}

uint64_t sub_2271D7B80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2271C850C(a1, v1);
}

uint64_t sub_2271D7C18(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271C9174(a1, v1);
}

uint64_t sub_2271D7CB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271C9390(a1, v1);
}

uint64_t sub_2271D7D48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E92F34;

  return sub_2271CABB8();
}

uint64_t sub_2271D7EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v75 = &v68 - v3;
  v4 = sub_22766B390();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v74 = &v68 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v73 = &v68 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v72 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  v21 = sub_22766A8A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v0 + 112);
  v27 = sub_2276693C0();
  (*(v22 + 104))(v25, *MEMORY[0x277D4F880], v21);
  v28 = sub_226EC9A38(v25, v27);

  (*(v22 + 8))(v25, v21);
  if (v28)
  {
    v29 = v17[2];
    v69 = OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__ignoreSyncTimer;
    v30 = v0;
    v71 = v29;
    v29(v20, v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__ignoreSyncTimer, v16);
    sub_227669730();
    v31 = v17[1];
    v31(v20, v16);
    v70 = v17 + 1;
    if (v83 == 1)
    {
      v32 = v72;
      sub_22766A6B0();
      v33 = sub_22766B380();
      v34 = sub_22766C8B0();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v77;
      if (!v35)
      {
        v76 = v32;
        goto LABEL_12;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226E8E000, v33, v34, "Syncing Immediately.", v37, 2u);
      v76 = v32;
    }

    else
    {
      sub_22766A6B0();
      v33 = sub_22766B380();
      v42 = sub_22766C8B0();
      v43 = os_log_type_enabled(v33, v42);
      v36 = v77;
      if (!v43)
      {
LABEL_12:
        v44 = v71;

        v45 = *(v36 + 1);
        v45(v76, v78);
        v44(v20, v30 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__serverSyncEnabled, v16);
        sub_227669730();
        v31(v20, v16);
        if (v82 == 1)
        {
          v44(v20, v30 + v69, v16);
          sub_227669730();
          v31(v20, v16);
          if (v79 == 1)
          {
            v46 = sub_22766C4B0();
            v47 = *(*(v46 - 8) + 56);
            v77 = v45;
            v48 = v75;
            v47(v75, 1, 1, v46);
            v49 = v30;
            v50 = swift_allocObject();
            v50[2] = 0;
            v50[3] = 0;
            v50[4] = v49;

            v45 = v77;
            v51 = v50;
            v30 = v49;
            sub_2272CA940(0, 0, v48, &unk_22767C890, v51);
          }

          else
          {
            sub_2271D9110();
            sub_2276697D0();
          }
        }

        else
        {
          v77 = v45;
          v52 = v73;
          sub_22766A6B0();
          v53 = sub_22766B380();
          v54 = sub_22766C8B0();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = v30;
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_226E8E000, v53, v54, "Server Sync has been disabled.", v56, 2u);
            v57 = v56;
            v30 = v55;
            v44 = v71;
            MEMORY[0x22AA9A450](v57, -1, -1);
          }

          v58 = v52;
          v45 = v77;
          v77(v58, v78);
        }

        v44(v20, v30 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__pairedSyncEnabled, v16);
        sub_227669730();
        v31(v20, v16);
        if (v81 == 1)
        {
          v44(v20, v30 + v69, v16);
          sub_227669730();
          v31(v20, v16);
          if (v80 == 1)
          {
            v59 = sub_22766C4B0();
            v60 = v75;
            (*(*(v59 - 8) + 56))(v75, 1, 1, v59);
            v61 = swift_allocObject();
            v62 = v30;
            v63 = v61;
            v61[2] = 0;
            v61[3] = 0;
            v61[4] = v62;

            sub_2272CA940(0, 0, v60, &unk_22767C880, v63);
          }

          else
          {
            sub_2271D87F0();
            sub_2276697D0();
          }
        }

        else
        {
          v64 = v74;
          sub_22766A6B0();
          v65 = sub_22766B380();
          v66 = sub_22766C8B0();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_226E8E000, v65, v66, "Paired Sync has been disabled.", v67, 2u);
            MEMORY[0x22AA9A450](v67, -1, -1);
          }

          return (v45)(v64, v78);
        }
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226E8E000, v33, v42, "Scheduling a sync.", v37, 2u);
    }

    MEMORY[0x22AA9A450](v37, -1, -1);
    goto LABEL_12;
  }

  sub_22766A6B0();
  v38 = sub_22766B380();
  v39 = sub_22766C8B0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_226E8E000, v38, v39, "Sync is disabled. Ignoring request to sync.", v40, 2u);
    MEMORY[0x22AA9A450](v40, -1, -1);
  }

  return (*(v77 + 1))(v8, v78);
}

uint64_t sub_2271D87F0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    sub_2276697F0();

    v2 = v0;
    v1 = sub_2276697E0();
    v3 = *(v0 + 160);
    *(v2 + 160) = v1;
  }

  return v1;
}

uint64_t sub_2271D8888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D8918();
}

uint64_t sub_2271D8918()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D89F0, 0, 0);
}

uint64_t sub_2271D89F0()
{
  v1 = *(v0 + 88);
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Syncing with paired device.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);

  v9 = *(v7 + 8);
  *(v0 + 96) = v9;
  v9(v5, v6);
  v10 = v8[19];
  __swift_project_boxed_opaque_existential_0(v8 + 15, v8[18]);
  *(v0 + 136) = 7;
  *(v0 + 104) = sub_226F19410();
  *(v0 + 112) = sub_226F19464();
  sub_22766A130();
  v11 = *__swift_project_boxed_opaque_existential_0(v8 + 7, v8[10]);
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_2271D8BD8;

  return sub_2275E8000();
}

uint64_t sub_2271D8BD8()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2271D8E9C;
  }

  else
  {
    v3 = sub_2271D8CEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271D8CEC()
{
  v1 = *(v0 + 80);
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Successfully synced with paired device.", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v5(v6, v7);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = v15[19];
  __swift_project_boxed_opaque_existential_0(v15 + 15, v15[18]);
  *(v0 + 137) = 7;
  sub_22766A120();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2271D8E9C()
{
  v31 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 64);
    v28 = *(v0 + 72);
    v29 = *(v0 + 96);
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v14 = sub_226E97AE8(v12, v13, &v30);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to sync with paired device with error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v29(v28, v8);
  }

  else
  {
    v15 = *(v0 + 96);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);

    v15(v16, v18);
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = *(v0 + 72);
  v24 = *(v0 + 48);
  v25 = v24[19];
  __swift_project_boxed_opaque_existential_0(v24 + 15, v24[18]);
  *(v0 + 137) = 7;
  sub_22766A120();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2271D9110()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  if (*(v0 + 168))
  {
    v6 = *(v0 + 168);
  }

  else
  {
    sub_2276697F0();
    v7 = v2[2];
    v7(v5, v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__syncDelay, v1);
    v8 = v0;
    sub_227669730();
    v9 = v2[1];
    v9(v5, v1);
    v7(v5, v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__maxSyncDelay, v1);
    sub_227669730();
    v9(v5, v1);

    v6 = sub_2276697E0();
    v10 = *(v0 + 168);
    *(v8 + 168) = v6;
  }

  return v6;
}

uint64_t sub_2271D92E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D9378();
}

uint64_t sub_2271D9378()
{
  v1[10] = v0;
  v2 = sub_22766B390();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D9474, 0, 0);
}

uint64_t sub_2271D9474()
{
  v1 = *(v0 + 144);
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Submitting sync to the server.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v7 + 8);
  *(v0 + 152) = v9;
  v9(v5, v6);
  v10 = v8[19];
  __swift_project_boxed_opaque_existential_0(v8 + 15, v8[18]);
  *(v0 + 208) = 6;
  *(v0 + 160) = sub_226F19410();
  *(v0 + 168) = sub_226F19464();
  sub_22766A130();
  v11 = *__swift_project_boxed_opaque_existential_0(v8 + 2, v8[5]);
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_2271D965C;

  return sub_226F133B8();
}

uint64_t sub_2271D965C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2271D9964;
  }

  else
  {
    v3 = sub_2271D9770;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271D9770()
{
  v1 = v0[17];
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[11];
  v8 = v0[12];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Successfully submitted to the server.", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v5(v6, v7);
  v10 = v0[15];
  sub_22766A6B0();
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_226E8E000, v11, v12, "Fetching sync from the server.", v13, 2u);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  v14 = v0[19];
  v15 = v0[15];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[10];

  v14(v15, v16);
  v19 = *__swift_project_boxed_opaque_existential_0((v18 + 16), *(v18 + 40));
  v20 = swift_task_alloc();
  v0[24] = v20;
  *v20 = v0;
  v20[1] = sub_2271D9C24;

  return sub_226F0B0C8(0);
}

uint64_t sub_2271D9964()
{
  v34 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v31 = *(v0 + 128);
    v32 = *(v0 + 152);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = *(v0 + 40);
    v12 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v14 = sub_226E97AE8(v12, v13, &v33);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to submit to the server with error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v32(v31, v8);
  }

  else
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 128);
    v17 = *(v0 + 88);
    v18 = *(v0 + 96);

    v15(v16, v17);
  }

  v19 = *(v0 + 120);
  sub_22766A6B0();
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_226E8E000, v20, v21, "Fetching sync from the server.", v22, 2u);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  v23 = *(v0 + 152);
  v24 = *(v0 + 120);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v27 = *(v0 + 80);

  v23(v24, v25);
  v28 = *__swift_project_boxed_opaque_existential_0((v27 + 16), *(v27 + 40));
  v29 = swift_task_alloc();
  *(v0 + 192) = v29;
  *v29 = v0;
  v29[1] = sub_2271D9C24;

  return sub_226F0B0C8(0);
}

uint64_t sub_2271D9C24()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_2271D9F0C;
  }

  else
  {
    v3 = sub_2271D9D38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271D9D38()
{
  v1 = *(v0 + 112);
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 152);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Successfully fetched from the server.", v9, 2u);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  v5(v6, v7);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  v19 = *(v0 + 120);
  v20 = *(v0 + 112);
  v21 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = v15[19];
  __swift_project_boxed_opaque_existential_0(v15 + 15, v15[18]);
  *(v0 + 209) = 6;
  sub_22766A120();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2271D9F0C()
{
  v34 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 104);
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 152);
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v14 = sub_226E97AE8(v12, v13, &v33);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to fetch remote changesets with error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v31(v29, v8);
  }

  else
  {
    v15 = *(v0 + 152);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);

    v15(v16, v18);
  }

  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 128);
  v28 = *(v0 + 120);
  v30 = *(v0 + 112);
  v32 = *(v0 + 104);
  v24 = *(v0 + 80);
  v25 = v24[19];
  __swift_project_boxed_opaque_existential_0(v24 + 15, v24[18]);
  *(v0 + 209) = 6;
  sub_22766A120();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_2271DA1A4()
{
  v1 = v0[13];
  v2 = v0[12];
  swift_getObjectType();
  v3 = v0[22];
  swift_allocObject();
  swift_weakInit();
  sub_2271DC0A8();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v5);
  swift_allocObject();
  swift_weakInit();
  sub_2271DC194();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v5);
  swift_allocObject();
  swift_weakInit();
  sub_226FFDCDC();

  sub_227669A00();

  __swift_destroy_boxed_opaque_existential_0(v5);

  swift_allocObject();
  swift_weakInit();
  sub_227118F18();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v5);

  swift_allocObject();
  swift_weakInit();
  sub_227118F6C();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_2271DA470(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DA530, 0, 0);
}

uint64_t sub_2271DA530()
{
  v1 = v0[8];
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Received Push Notification from Server.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2270948CC;

    return sub_2271DA6D0(1);
  }

  else
  {
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2271DA6D0(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 147) = a1;
  v3 = sub_22766B390();
  *(v2 + 56) = v3;
  v4 = *(v3 - 8);
  *(v2 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v6 = sub_22766A8A0();
  *(v2 + 88) = v6;
  v7 = *(v6 - 8);
  *(v2 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DA7FC, 0, 0);
}

uint64_t sub_2271DA7FC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(*(v0 + 48) + 112);
  v5 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F880], v3);
  v6 = sub_226EC9A38(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = *(v0 + 48);
    v8 = v7[19];
    __swift_project_boxed_opaque_existential_0(v7 + 15, v7[18]);
    *(v0 + 144) = 5;
    *(v0 + 112) = sub_226F19410();
    *(v0 + 120) = sub_226F19464();
    sub_22766A130();
    v9 = *__swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_2271DAA50;
    v11 = *(v0 + 147);

    return sub_226F0B0C8(v11);
  }

  else
  {
    sub_226F1893C();
    swift_allocError();
    *v13 = 18;
    swift_willThrow();
    v14 = *(v0 + 104);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2271DAA50()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2271DAD14;
  }

  else
  {
    v3 = sub_2271DAB64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271DAB64()
{
  v1 = *(v0 + 80);
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Force fetch remote changesets has successfully resolved.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 80);
  v14 = *(v0 + 104);
  v15 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);

  (*(v9 + 8))(v7, v8);
  v11 = v10[19];
  __swift_project_boxed_opaque_existential_0(v10 + 15, v10[18]);
  *(v0 + 146) = 5;
  sub_22766A120();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2271DAD14()
{
  v31 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v13 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v15 = sub_226E97AE8(v13, v14, &v30);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Force fetch remote changesets has failed with error: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 136);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 48);
  swift_willThrow();
  v23 = v22[19];
  __swift_project_boxed_opaque_existential_0(v22 + 15, v22[18]);
  *(v0 + 145) = 5;
  sub_22766A120();
  v24 = *(v0 + 136);
  v25 = *(v0 + 104);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2271DAF74(_WORD *a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  v4 = sub_22766B390();
  *(v2 + 120) = v4;
  v5 = *(v4 - 8);
  *(v2 + 128) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 160) = *a1;

  return MEMORY[0x2822009F8](sub_2271DB040, 0, 0);
}

uint64_t sub_2271DB040()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 161);
    sub_226E91B50(Strong + 16, v0 + 16);

    v4 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v5 = sub_227664EE0();
    v7 = v6;
    if (v5 == sub_227664EE0() && v7 == v8)
    {
    }

    else
    {
      v12 = sub_22766D190();

      if ((v12 & 1) == 0)
      {
LABEL_13:

        return MEMORY[0x2822009F8](sub_2271DB398, 0, 0);
      }
    }

    v13 = *(v0 + 160);
    v14 = sub_227664EE0();
    v16 = v15;
    if (v14 == sub_227664EE0() && v16 == v17)
    {

      goto LABEL_13;
    }

    v18 = sub_22766D190();

    if (v18)
    {
      goto LABEL_13;
    }

    v19 = swift_task_alloc();
    *(v0 + 144) = v19;
    *v19 = v0;
    v19[1] = sub_2271DB284;

    return sub_226F0B0C8(1);
  }

  else
  {
    v9 = *(v0 + 136);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2271DB284()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2271DB404;
  }

  else
  {
    v3 = sub_2271DB398;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271DB398()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[17];

  v2 = v0[1];

  return v2();
}

uint64_t sub_2271DB404()
{
  v23 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22766A6B0();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v21 = *(v0 + 136);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 80);
    v12 = MEMORY[0x22AA995D0](*(v0 + 88), *(v0 + 96));
    v14 = sub_226E97AE8(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to Update Status due to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 136);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2271DB5E8(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22766B390();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DB6A8, 0, 0);
}

uint64_t sub_2271DB6A8()
{
  v1 = v0[8];
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Force fetching remote changesets on post install", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2271DB848;

    return sub_2271DA6D0(1);
  }

  else
  {
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2271DB848()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271DC3B4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2271DB98C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2271D7EE8();
  }

  return result;
}

uint64_t *sub_2271DB9E4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  v2 = v0[20];

  v3 = v0[21];

  v4 = v0[22];

  v5 = OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__pairedSyncEnabled;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__serverSyncEnabled, v6);
  v7(v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__ignoreSyncTimer, v6);
  v8 = OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__syncDelay;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__maxSyncDelay, v9);
  return v0;
}

uint64_t sub_2271DBB40()
{
  sub_2271DB9E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncCoordinator()
{
  result = qword_2813A37F0;
  if (!qword_2813A37F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2271DBBEC()
{
  sub_2271DBD34(319, &qword_2813A5890);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2271DBD34(319, &qword_2813A54A0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2271DBD34(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_227669750();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2271DBD88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D9378();
}

uint64_t sub_2271DBE18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_2271D8918();
}

uint64_t sub_2271DBEA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E92F34;

  return sub_2271DBE18();
}

uint64_t sub_2271DBF5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E93028;

  return sub_2271DBD88();
}

uint64_t sub_2271DC010(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271DA470(a1, v1);
}

unint64_t sub_2271DC0A8()
{
  result = qword_28139FBB0;
  if (!qword_28139FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139FBB0);
  }

  return result;
}

uint64_t sub_2271DC0FC(_WORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2271DAF74(a1, v1);
}

unint64_t sub_2271DC194()
{
  result = qword_28139F580;
  if (!qword_28139F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139F580);
  }

  return result;
}

uint64_t sub_2271DC1E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2271DB5E8(v0);
}

uint64_t sub_2271DC294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D92E8();
}

uint64_t sub_2271DC324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D8888();
}

uint64_t sub_2271DC3BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_226EB5238(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + 8 * result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_226EB5238((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_226EB526C(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
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

uint64_t sub_2271DC5D8(uint64_t a1)
{
  v51 = sub_227665100();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v51);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v42 - v8;
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - v9;
  v10 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v10, 0);
  v11 = a1 + 56;
  v12 = v55;
  v13 = -1;
  v14 = -1 << *(a1 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(a1 + 56);
  v16 = (63 - v14) >> 6;
  v49 = v2;
  v50 = a1;
  v48 = v10;
  if (v10)
  {
    v46 = v2 + 16;
    v47 = v6;
    v45 = (v2 + 8);

    v17 = 0;
    v18 = 0;
    while (1)
    {
      v53 = v12;
      if (!v15)
      {
        break;
      }

LABEL_10:
      v20 = *(a1 + 48) + *(v2 + 72) * (__clz(__rbit64(v15)) | (v18 << 6));
      v21 = v47;
      v22 = v51;
      (*(v2 + 16))(v47, v20, v51);
      v23 = sub_2276650C0();
      if (v23 >> 31)
      {
        goto LABEL_30;
      }

      v54 = v23;
      v52 = sub_22766D140();
      v25 = v24;
      (*v45)(v21, v22);
      v12 = v53;
      v55 = v53;
      v27 = *(v53 + 16);
      v26 = *(v53 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v12 = v55;
      }

      ++v17;
      v15 &= v15 - 1;
      *(v12 + 16) = v27 + 1;
      v28 = v12 + 16 * v27;
      *(v28 + 32) = v52;
      *(v28 + 40) = v25;
      v2 = v49;
      a1 = v50;
      if (v17 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_32;
      }

      v15 = *(v11 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v18 = 0;
LABEL_16:
    v52 = v2 + 16;
    v47 = (v2 + 8);
    v48 = v2 + 32;
    v29 = v44;
    if (!v15)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v53 = v12;
LABEL_22:
      v31 = *(a1 + 48) + *(v2 + 72) * (__clz(__rbit64(v15)) | (v18 << 6));
      v32 = v43;
      v33 = v51;
      (*(v2 + 16))(v43, v31, v51);
      (*(v2 + 32))(v29, v32, v33);
      v34 = sub_2276650C0();
      if (v34 >> 31)
      {
        break;
      }

      v54 = v34;
      v35 = sub_22766D140();
      v37 = v36;
      (*v47)(v29, v33);
      v12 = v53;
      v55 = v53;
      v39 = *(v53 + 16);
      v38 = *(v53 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_226F1EF90(v38 > 1, v39 + 1, 1);
        v12 = v55;
      }

      v15 &= v15 - 1;
      *(v12 + 16) = v39 + 1;
      v40 = v12 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v2 = v49;
      a1 = v50;
      v29 = v44;
      if (!v15)
      {
LABEL_18:
        while (1)
        {
          v30 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_29;
          }

          if (v30 >= v16)
          {

            return v12;
          }

          v15 = *(v11 + 8 * v30);
          ++v18;
          if (v15)
          {
            v53 = v12;
            v18 = v30;
            goto LABEL_22;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_32:

  __break(1u);
  return result;
}

uint64_t sub_2271DCAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  v32 = a5;
  v26 = a4;
  v25 = a2;
  v31 = a3(0);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - v8;
  v9 = *(a1 + 16);
  v33 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = v33;
  if (v9)
  {
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v28 = *(v11 + 56);
    v29 = v12;
    v27 = (v11 - 8);
    do
    {
      v14 = v30;
      v15 = v31;
      v16 = v11;
      v17 = v29(v30, v13, v31);
      v18 = v32(v17);
      v20 = v19;
      (*v27)(v14, v15);
      v33 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1EF90(v21 > 1, v22 + 1, 1);
        v10 = v33;
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v13 += v28;
      --v9;
      v11 = v16;
    }

    while (v9);
  }

  v26(0, v10, v25);
}

unint64_t sub_2271DCCA4(uint64_t a1, unint64_t a2)
{
  v21 = a2;
  v3 = sub_227665100();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v8, 0);
  v9 = v28;
  if (v8)
  {
    v10 = *(v4 + 16);
    v25 = v4 + 16;
    v26 = v10;
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    v22 = (v4 + 8);
    v23 = v12;
    v24 = v7;
    while (1)
    {
      v26(v7, v11, v3);
      result = sub_2276650C0();
      if (result >> 31)
      {
        break;
      }

      v27 = result;
      v14 = sub_22766D140();
      v16 = v15;
      (*v22)(v7, v3);
      v28 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1EF90(v17 > 1, v18 + 1, 1);
        v9 = v28;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v9 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v7 = v24;
      v11 += v23;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_2272D7DB0(0, v9, v21);
  }

  return result;
}

uint64_t sub_2271DCED4()
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
    v3[1] = sub_2271DCFC8;
    v4 = MEMORY[0x277D84F90];

    return sub_2271DD124(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2271DCFC8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F73F68, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2271DD124(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_227665100();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DD284, 0, 0);
}

uint64_t sub_2271DD284()
{
  v40 = v0;
  v1 = *(v0 + 32);
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = sub_22766A380() & 1;
  v4 = sub_227664AD0();
  v6 = v5;
  if (v4 == sub_227664AD0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_22766D190();

    if ((v9 & 1) == 0)
    {
      v10 = *(v0 + 64);
      sub_22766A6D0();
      v11 = sub_22766B380();
      v12 = sub_22766C890();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 64);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      if (v13)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v39 = v18;
        *v17 = 136315138;
        *(v0 + 208) = v3;
        v19 = sub_22766C060();
        v21 = sub_226E97AE8(v19, v20, &v39);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_226E8E000, v11, v12, "Invalid Activity Move Mode: %s for Calorie Estimation.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x22AA9A450](v18, -1, -1);
        MEMORY[0x22AA9A450](v17, -1, -1);
      }

      v22 = *(v16 + 8);
      v22(v14, v15);
      *(v0 + 184) = v22;
      v23 = *(v0 + 32);
      v24 = v23[14];
      __swift_project_boxed_opaque_existential_0(v23 + 10, v23[13]);
      v25 = *(v24 + 24);

      v37 = (v25 + *v25);
      v26 = v25[1];
      v27 = swift_task_alloc();
      *(v0 + 192) = v27;
      *v27 = v0;
      v27[1] = sub_2271DE038;
      v28 = *(v0 + 32);

      return v37();
    }
  }

  v30 = *(v0 + 32);
  v31 = v30[13];
  v32 = v30[14];
  __swift_project_boxed_opaque_existential_0(v30 + 10, v31);
  v33 = *(v32 + 24);
  v38 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  *(v0 + 104) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0F0, &qword_22767C9E8);
  *v35 = v0;
  v35[1] = sub_2271DD740;

  return (v38)(v0 + 16, sub_2271DE75C, 0, v36, v31, v32);
}

uint64_t sub_2271DD740()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2271DE344;
  }

  else
  {
    v3 = sub_2271DD854;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2271DD854()
{
  v1 = *(v0[3] + 16);
  v2 = *(v0[2] + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_2273A644C(0, v4 & ~(v4 >> 63), 0, MEMORY[0x277D84F90]);

    sub_2274613A4(v5);

    sub_227461290(v6);

    v0[15] = v9;
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2271DD954;
    v8 = v0[4];

    sub_2271DFCB0();
  }
}

uint64_t sub_2271DD954(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_2271DE3D0;
  }

  else
  {
    v5 = sub_2271DDA68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271DDA68()
{
  v1 = v0[11];
  v2 = sub_226F441CC(v0[15]);

  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  v7 = (v1 + 56);
  v30 = v1;
  v31 = (v1 + 32);
  v8 = v0[18];

  v10 = 0;
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v10;
    v0[19] = v32;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_2271DF5E0(*(*(v2 + 48) + ((v10 << 9) | (8 * v12))), v0[17], v0[9]);
    if (v8)
    {
      v14 = v0[9];
      v13 = v0[10];

      (*v7)(v14, 1, 1, v13);
      result = sub_226E97D1C(v14, &qword_27D7B9EC0, &qword_22767C990);
      v8 = 0;
    }

    else
    {
      v15 = v0[12];
      v17 = v0[9];
      v16 = v0[10];
      (*v7)(v17, 0, 1, v16);
      v18 = v17;
      v19 = *v31;
      (*v31)(v15, v18, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_2273A6424(0, v32[2] + 1, 1, v32);
      }

      v21 = v32[2];
      v20 = v32[3];
      if (v21 >= v20 >> 1)
      {
        v32 = sub_2273A6424(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v0[12];
      v23 = v0[10];
      v32[2] = v21 + 1;
      result = v19(v32 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21, v22, v23);
      v8 = 0;
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v10);
    ++v11;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v24 = v0[4];

  v25 = v24[14];
  __swift_project_boxed_opaque_existential_0(v24 + 10, v24[13]);
  v26 = swift_allocObject();
  v0[20] = v26;
  *(v26 + 16) = v32;
  *(v26 + 24) = v24;
  v27 = *(v25 + 24);

  v33 = (v27 + *v27);
  v28 = v27[1];
  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_2271DDE2C;

  return v33();
}

uint64_t sub_2271DDE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  if (v0)
  {
    v6 = v2[19];

    v7 = sub_2271DE464;
  }

  else
  {

    v7 = sub_2271DDF70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2271DDF70()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = *__swift_project_boxed_opaque_existential_0((v0[4] + 120), *(v0[4] + 144));
  sub_2271D7EE8();
  v4 = sub_226F44260(v1);

  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_2271DE038()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_2271DE2B0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2271DE154;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271DE154()
{
  v1 = v0[7];
  v2 = *__swift_project_boxed_opaque_existential_0((v0[4] + 120), *(v0[4] + 144));
  sub_2271D7EE8();
  sub_22766A6D0();
  v3 = sub_22766B380();
  v4 = sub_22766C890();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v3, v4, "Removed existing EstimatedCalories.", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v6(v7, v9);
  v11 = v0[12];
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];

  v15 = v0[1];
  v16 = MEMORY[0x277D84FA0];

  return v15(v16);
}

uint64_t sub_2271DE2B0()
{
  v1 = v0[4];

  v2 = v0[25];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271DE344()
{
  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271DE3D0()
{
  v1 = v0[15];

  v2 = v0[18];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2271DE464()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2271DE4F8(void *a1, uint64_t a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E0, qword_22767C998);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_2272F9B64(0x64);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    swift_deallocClassInstance();
    v28 = *__swift_project_boxed_opaque_existential_0((a2 + 120), *(a2 + 144));
    v29 = sub_2271DC5D8(v22);

    sub_2272D7DB0(1, v29, a1);
  }
}

uint64_t sub_2271DE75C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0F8, &qword_22767C9F0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_2272379B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    swift_deallocClassInstance();
    v28 = sub_2271DC3BC(v22);

    v29 = sub_226F441CC(v28);

    *a2 = v29;
  }

  return result;
}

void sub_2271DE9A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22756E334(a2, v7[1], *(v7 + 16), v7[3]);
  if (!v3)
  {
    v8 = *__swift_project_boxed_opaque_existential_0((a3 + 120), *(a3 + 144));
    sub_2271DCCA4(a2, a1);
  }
}

uint64_t sub_2271DEA24@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E0, qword_22767C998);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_227237CB8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v22;
  }

  return result;
}

uint64_t sub_2271DEC38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DECE8, 0, 0);
}

uint64_t sub_2271DECE8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[13];
  v4 = v1[14];
  __swift_project_boxed_opaque_existential_0(v1 + 10, v3);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = v2;
  v6 = *(v4 + 24);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_2271DEE5C;
  v9 = v0[7];
  v10 = v0[5];

  return (v12)(v9, sub_2271E0694, v5, v10, v3, v4);
}

uint64_t sub_2271DEE5C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2271DF14C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2271DEF78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271DEF78()
{
  v1 = v0[6];
  sub_226E93170(v0[7], v1, &qword_27D7B9EC0, &qword_22767C990);
  v2 = sub_227665100();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[7];
    sub_226E97D1C(v0[6], &qword_27D7B9EC0, &qword_22767C990);
    sub_2271E0640();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    sub_226E97D1C(v4, &qword_27D7B9EC0, &qword_22767C990);
    v7 = v0[6];
    v6 = v0[7];
  }

  else
  {
    v9 = v0[6];
    v10 = v0[2];
    sub_226E97D1C(v0[7], &qword_27D7B9EC0, &qword_22767C990);
    (*(v3 + 32))(v10, v9, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2271DF14C()
{
  v1 = v0[8];

  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2271DF1C0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E0, qword_22767C998);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  if (a2 >> 31)
  {
    __break(1u);
LABEL_8:
    sub_22766C360();
    goto LABEL_6;
  }

  v37 = MEMORY[0x277D849A8];
  v36[0] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v36, v34, &unk_27D7BC990, &qword_227670A30);
  v16 = v35;
  if (v35)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0E8 &qword_22767C9E0))];

  sub_226E97D1C(v36, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v8 = v24;
  v13 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_22766C3A0();
  (v13)(v36, 0);
  swift_endAccess();

  v27 = MEMORY[0x22AA99A00]();
  sub_227544A14(v12, v38);
  objc_autoreleasePoolPop(v27);
  swift_setDeallocating();

  v28 = *(v12 + 40);

  v29 = qword_2813B2078;
  v30 = sub_22766A100();
  (*(*(v30 - 8) + 8))(v12 + v29, v30);
  v31 = *(*v12 + 48);
  v32 = *(*v12 + 52);
  return swift_deallocClassInstance();
}

void sub_2271DF5E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = *MEMORY[0x277D85DE8];
  v63 = sub_22766B390();
  v6 = *(v63 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v63);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v57[-v14];
  v16 = objc_opt_self();
  if ([v16 isAvailable])
  {
    v61 = a3;
    v62 = a1;
    v17 = sub_2272DC458(a1);
    sub_2276650F0();
    v66[0] = 0;
    v18 = [v16 lookupCalorieDataForCMWorkoutType:v17 duration:a2 userInfo:v66 error:?];
    v19 = v66[0];
    if (v18)
    {
      v20 = v18;
      v69 = sub_226E99364(0, &qword_281398B30, 0x277CC1C40);
      v70 = &off_283AC5C68;
      *&v68 = v20;
      sub_226E92AB8(&v68, v71);
      v21 = v19;
    }

    else
    {
      v26 = v66[0];
      v27 = sub_2276622C0();

      swift_willThrow();
      sub_22766A6D0();
      v28 = v27;
      v29 = sub_22766B380();
      v30 = sub_22766C890();

      v31 = os_log_type_enabled(v29, v30);
      v60 = v27;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v68 = v59;
        *v32 = 134218242;
        *(v32 + 4) = v62;
        *(v32 + 12) = 2080;
        swift_getErrorValue();
        v58 = v30;
        v33 = MEMORY[0x22AA995D0](v64, v65);
        v35 = sub_226E97AE8(v33, v34, &v68);

        *(v32 + 14) = v35;
        _os_log_impl(&dword_226E8E000, v29, v58, "Failed fetching calorie data for %lu with error: %s", v32, 0x16u);
        v36 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x22AA9A450](v36, -1, -1);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      (*(v6 + 8))(v10, v63);
      sub_2276650F0();
      v66[0] = 0;
      v37 = [v16 lookupCalorieDataForCMWorkoutType:v17 duration:v66 error:?];
      v38 = v66[0];
      if (!v37)
      {
        v56 = v66[0];
        sub_2276622C0();

        swift_willThrow();
        goto LABEL_15;
      }

      v39 = v37;
      v69 = sub_226E99364(0, &qword_281398B30, 0x277CC1C40);
      v70 = &off_283AC5C68;
      v40 = v38;

      *&v68 = v39;
      sub_226E92AB8(&v68, v71);
    }

    sub_22766A6D0();
    sub_226E91B50(v71, &v68);
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v43 = 136315138;
      sub_226E91B50(&v68, v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0D8, &qword_22767C988);
      v45 = sub_22766C060();
      v47 = v46;
      __swift_destroy_boxed_opaque_existential_0(&v68);
      v48 = sub_226E97AE8(v45, v47, &v67);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_226E8E000, v41, v42, "Got calorie data: %s from CoreMotion.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v68);
    }

    (*(v6 + 8))(v15, v63);
    v49 = v72;
    v50 = v73;
    __swift_project_boxed_opaque_existential_0(v71, v72);
    (*(v50 + 8))(v49, v50);
    v51 = v72;
    v52 = v73;
    __swift_project_boxed_opaque_existential_0(v71, v72);
    (*(v52 + 16))(v51, v52);
    v53 = v72;
    v54 = v73;
    __swift_project_boxed_opaque_existential_0(v71, v72);
    (*(v54 + 16))(v53, v54);
    sub_2276650B0();
    __swift_destroy_boxed_opaque_existential_0(v71);
  }

  else
  {
    sub_22766A6D0();
    v22 = sub_22766B380();
    v23 = sub_22766C890();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "Invalid platform, Calorie Utils unavailable.", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v6 + 8))(v13, v63);
    sub_2271E0640();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
  }

LABEL_15:
  v55 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2271DFCB0()
{
  v1[2] = v0;
  v2 = sub_227662940();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_227662750();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C8, &qword_22767C978) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = sub_227662190();
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DFEB0, 0, 0);
}

uint64_t sub_2271DFEB0()
{
  v1 = v0[2];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = sub_22766A320();
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_22767CA08[v3];
  }

  v5 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v6 = sub_22766A330();
  if (v6 > 2)
  {
    v70 = 0;
  }

  else
  {
    v70 = qword_22767CA28[v6];
  }

  v7 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v8 = sub_22766A350();
  v9 = [objc_opt_self() meterUnitWithMetricPrefix_];
  [v8 doubleValueForUnit_];
  v11 = v10;

  v12 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v13 = sub_22766A370();
  v14 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [v13 doubleValueForUnit_];
  v16 = v15;

  v17 = v0[11];
  v18 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  sub_22766A360();
  v19 = v0[15];
  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[11];
  v23 = v0[8];
  v67 = v0[7];
  v69 = v4;
  v25 = v0[5];
  v24 = v0[6];
  v26 = v0[4];
  v65 = v0[3];
  (*(v20 + 56))(v22, 0, 1, v21);
  (*(v20 + 32))(v19, v22, v21);
  sub_227662920();
  sub_2276628D0();
  v27 = *(v26 + 8);
  v27(v25, v65);
  if ((*(v23 + 48))(v24, 1, v67) == 1)
  {
    v28 = v0[6];
    (*(v0[13] + 8))(v0[15], v0[12]);
    sub_226E97D1C(v28, &qword_27D7B9690, qword_227670B50);
    v29 = 30.0;
    v30 = v69;
  }

  else
  {
    v68 = v0[12];
    v31 = v0[9];
    v59 = v0[10];
    v32 = v0[7];
    v33 = v0[8];
    v60 = v32;
    v61 = v0[14];
    v35 = v0[5];
    v34 = v0[6];
    v62 = v0[3];
    v63 = v0[13];
    v64 = v0[15];
    (*(v33 + 32))();
    sub_227662920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v36 = sub_227662930();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v58 = v27;
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_227670CD0;
    (*(v37 + 104))(v40 + v39, *MEMORY[0x277CC9988], v36);
    sub_226F4CE68(v40);
    swift_setDeallocating();
    (*(v37 + 8))(v40 + v39, v36);
    swift_deallocClassInstance();
    sub_227662740();
    sub_2276628A0();

    v41 = *(v33 + 8);
    v41(v31, v60);
    v58(v35, v62);
    v66 = sub_227662140();
    v43 = v42;
    v44 = *(v63 + 8);
    v44(v61, v68);
    v41(v59, v60);
    v44(v64, v68);
    v29 = 30.0;
    v30 = v69;
    if ((v43 & 1) == 0)
    {
      v29 = v66;
    }
  }

  v45 = v1[7];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v46 = sub_22766A340();
  v48 = v0[14];
  v47 = v0[15];
  v49 = v30;
  v51 = v0[10];
  v50 = v0[11];
  v52 = v0[9];
  v54 = v0[5];
  v53 = v0[6];
  v55 = [objc_allocWithZone(MEMORY[0x277CC1C48]) initWithAge:v49 gender:v70 height:v46 & 1 weight:v29 condition:v11 betaBlockerUse:v16];

  v56 = v0[1];

  return v56(v55);
}

uint64_t sub_2271E05C4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  v1 = v0[20];
  swift_unknownObjectRelease();
  v2 = v0[22];

  return swift_deallocClassInstance();
}

unint64_t sub_2271E0640()
{
  result = qword_27D7BC0D0;
  if (!qword_27D7BC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC0D0);
  }

  return result;
}

void sub_2271E06F4(id a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v37 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v35 = &v32 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v36 = &v32 - v18;
  MEMORY[0x28223BE20](v17);
  v39 = &v32 - v19;
  v20 = [a1 remoteURL];
  if (v20)
  {
    v21 = v20;
    sub_22766C000();
  }

  sub_227662310();
  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {
    v7 = v9;
LABEL_9:
    sub_226E97D1C(v7, &unk_27D7BB570, &unk_227670FC0);
    v25 = sub_227664DD0();
    sub_2271E1298(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
    swift_willThrow();

    return;
  }

  v33 = *(v11 + 32);
  v33(v39, v9, v10);
  v34 = a1;
  v23 = [a1 localURL];
  if (v23)
  {
    v24 = v23;
    sub_22766C000();
  }

  sub_227662310();
  if (v22(v7, 1, v10) == 1)
  {
    (*(v11 + 8))(v39, v10);
    a1 = v34;
    goto LABEL_9;
  }

  v27 = v36;
  v33(v36, v7, v10);
  v28 = *(v11 + 16);
  v29 = v39;
  v28(v35, v39, v10);
  v28(v37, v27, v10);
  v30 = v34;
  [v34 downloadToken];
  sub_227665470();

  v31 = *(v11 + 8);
  v31(v27, v10);
  v31(v29, v10);
}

size_t static AssetResumableLoad.representativeSamples()()
{
  v40 = sub_2276624A0();
  v0 = *(v40 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v38 = &v29 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC100, &qword_22767CA40);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v29 - v7;
  v36 = sub_227665490();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276622F0();
  v13 = sub_2276622F0();
  sub_226FFFEB8();
  v14 = sub_22766CFA0();
  v49 = v13;
  v50[0] = v12;
  v50[1] = v50;
  v50[2] = &v49;
  v48 = v14;
  v50[3] = &v48;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B78, &qword_2276753E0);
  v42 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v43 = v42;
  v44 = sub_226F5BF60(&qword_27D7B9B88, &qword_27D7B9B78, &qword_2276753E0);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_226F20228(0, v16, 0);
    v18 = 0;
    v19 = v41;
    v30 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = (v0 + 16);
    v29 = v8 + 32;
    v33 = v8;
    v34 = v5;
    v32 = v15;
    v31 = v16;
    v21 = v35;
    while (v18 < *(v15 + 16))
    {
      sub_2271E1034(v30 + *(v5 + 72) * v18, v21);
      v22 = *(v37 + 48);
      v23 = *(v21 + *(v37 + 64));
      v24 = v11;
      v25 = *v20;
      v26 = v40;
      (*v20)(v38, v21, v40);
      v25(v39, v21 + v22, v26);
      v11 = v24;
      sub_227665470();
      sub_226E97D1C(v21, &qword_27D7BC100, &qword_22767CA40);
      v41 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F20228(v27 > 1, v28 + 1, 1);
        v19 = v41;
      }

      ++v18;
      *(v19 + 16) = v28 + 1;
      result = (*(v33 + 32))(v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v24, v36);
      v5 = v34;
      v15 = v32;
      if (v31 == v18)
      {

        return v19;
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

uint64_t sub_2271E1034(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC100, &qword_22767CA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}