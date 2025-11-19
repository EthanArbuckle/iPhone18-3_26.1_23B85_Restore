uint64_t sub_261C51AD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA310, &qword_261D027E8);
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v15 = sub_261CFF6F4();
  *(v8 + 128) = v15;
  v16 = *(v15 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C51C7C, 0, 0);
}

uint64_t sub_261C51C7C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 160);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  (*(v12 + 16))(*(v0 + 152), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 184) = v16;
  *(v0 + 192) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_261C4F178;
  v18 = *(v0 + 120);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);

  return sub_261B0A47C(v18, v21, v22, v19, v20);
}

uint64_t sub_261C51EBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 193) = a6;
  *(v6 + 40) = a2;
  *(v6 + 48) = a5;
  *(v6 + 192) = a4;
  *(v6 + 32) = a1;
  v7 = sub_261CFF734();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA300, qword_261D02728);
  *(v6 + 80) = v10;
  v11 = *(v10 - 8);
  *(v6 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v6 + 104) = v13;
  v14 = *(v13 - 8);
  *(v6 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C52064, 0, 0);
}

uint64_t sub_261C52064()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 136);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 136);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 128), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 160) = v16;
  *(v0 + 168) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_261C522A4;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);
  v20 = *(v0 + 193);

  return sub_261CE0A74(v18, v19, v20);
}

uint64_t sub_261C522A4()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_261C63870;
  }

  else
  {
    v3 = sub_261C63868;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C523B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA300, qword_261D02728);
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v12 = sub_261CFF6F4();
  *(v5 + 104) = v12;
  v13 = *(v12 - 8);
  *(v5 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5255C, 0, 0);
}

uint64_t sub_261C5255C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 136);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 136);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 128), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 160) = v16;
  *(v0 + 168) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_261C52798;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);

  return sub_261CE05A8(v18, v19);
}

uint64_t sub_261C52798()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_261C52B00;
  }

  else
  {
    v3 = sub_261C528AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C528AC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 192) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 152);
        v9 = *(v0 + 64);
        v10 = *(v0 + 72);
        v11 = *(v0 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
          v12 = "";
        }

        v13 = *(v0 + 120);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 160);
  v17 = *(v0 + 152);
  v26 = *(v0 + 168);
  v27 = *(v0 + 136);
  v18 = *(v0 + 120);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v28 = *(v0 + 128);
  v29 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  v16(v18, v19);
  (*(v21 + 32))(v24, v20, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C52B00()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];
  v9 = v0[23];

  return v8();
}

uint64_t sub_261C52BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA300, qword_261D02728);
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v14 = sub_261CFF6F4();
  *(v7 + 120) = v14;
  v15 = *(v14 - 8);
  *(v7 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C52D60, 0, 0);
}

uint64_t sub_261C52D60()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 152);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 144), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 176) = v16;
  *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_261C52FA0;
  v18 = *(v0 + 112);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 48);

  return sub_261CE1274(v18, v21, v19, v20);
}

uint64_t sub_261C52FA0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_261C53318;
  }

  else
  {
    v3 = sub_261C530B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C530B4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 208) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 168);
        v9 = *(v0 + 80);
        v10 = *(v0 + 88);
        v11 = *(v0 + 72);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
          v12 = "";
        }

        v13 = *(v0 + 136);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 176);
  v17 = *(v0 + 168);
  v28 = *(v0 + 152);
  v29 = *(v0 + 144);
  v18 = *(v0 + 136);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);
  v30 = *(v0 + 88);
  v26 = *(v0 + 184);
  v27 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  v16(v18, v19);
  (*(v22 + 32))(v24, v20, v21);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C53318()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t sub_261C533E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 177) = a6;
  *(v6 + 40) = a2;
  *(v6 + 48) = a5;
  *(v6 + 176) = a4;
  *(v6 + 32) = a1;
  v7 = sub_261CFF734();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v6 + 88) = v11;
  v12 = *(v11 - 8);
  *(v6 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5355C, 0, 0);
}

uint64_t sub_261C5355C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 120);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 120);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  (*(v12 + 16))(*(v0 + 112), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 144) = v16;
  *(v0 + 152) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 160) = v17;
  *v17 = v0;
  v17[1] = sub_261C5379C;
  v18 = *(v0 + 80);
  v19 = *(v0 + 48);
  v20 = *(v0 + 177);

  return sub_261CE0C1C(v18, v19, v20);
}

uint64_t sub_261C5379C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_261C63874;
  }

  else
  {
    v3 = sub_261C6385C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C538B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 176) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v5 + 88) = v10;
  v11 = *(v10 - 8);
  *(v5 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C53A24, 0, 0);
}

uint64_t sub_261C53A24()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 120);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 120);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  (*(v12 + 16))(*(v0 + 112), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 144) = v16;
  *(v0 + 152) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 160) = v17;
  *v17 = v0;
  v17[1] = sub_261C53C60;
  v18 = *(v0 + 80);
  v19 = *(v0 + 48);

  return sub_261CE0854(v18, v19);
}

uint64_t sub_261C53C60()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_261C53FAC;
  }

  else
  {
    v3 = sub_261C53D74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C53D74()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 176) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 136);
        v10 = *(v0 + 64);
        v9 = *(v0 + 72);
        v11 = *(v0 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
          v12 = "";
        }

        v13 = *(v0 + 104);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 136);
  v19 = *(v0 + 120);
  v20 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v26 = *(v0 + 112);
  v27 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  v17(v20, v21);
  sub_261C5D028(v22, v24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C53FAC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  v8 = v0[1];
  v9 = v0[21];

  return v8();
}

uint64_t sub_261C54060(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 120) = a2;
  *(v5 + 128) = a5;
  *(v5 + 296) = a4;
  *(v5 + 112) = a1;
  v6 = sub_261CFF734();
  *(v5 + 136) = v6;
  v7 = *(v6 - 8);
  *(v5 + 144) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3B0, &qword_261D02D00);
  *(v5 + 160) = v9;
  v10 = *(v9 - 8);
  *(v5 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v12 = sub_261CFF6F4();
  *(v5 + 184) = v12;
  v13 = *(v12 - 8);
  *(v5 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C54204, 0, 0);
}

uint64_t sub_261C54204()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_261CFF724();
  *(v0 + 224) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  v5 = sub_261D00144();
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 120);
  if (*(v0 + 296))
  {
LABEL_7:
    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v5, v6, v7);
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v9 = *(v0 + 216);
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v11, v8, "", v10, 2u);
  MEMORY[0x26671D560](v10, -1, -1);
LABEL_12:

  v12 = *(v0 + 216);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  (*(v14 + 16))(*(v0 + 208), v12, v13);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_261CFF754();
  v18 = *(v14 + 8);
  *(v0 + 240) = v18;
  *(v0 + 248) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v12, v13);
  sub_261CFFD24();
  *(v0 + 256) = sub_261CFFD14();
  v19 = sub_261CFFCF4();
  v7 = v20;
  *(v0 + 264) = v19;
  *(v0 + 272) = v20;
  v5 = sub_261C5443C;
  v6 = v19;

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_261C5443C()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 4);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = *v1;
  v6 = v1[1];
  *(v0 + 88) = *(v1 + 4);
  *(v0 + 72) = v6;
  *(v0 + 56) = v5;
  v7 = *(v4 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_261C54598;
  v10 = *(v0 + 176);

  return v12(v10, v0 + 56, v3, v4);
}

uint64_t sub_261C54598()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 288) = v0;

  v4 = *(v2 + 264);
  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_261C54970;
  }

  else
  {
    v6 = sub_261C546AC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261C546AC()
{
  v1 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C5471C, 0, 0);
}

uint64_t sub_261C5471C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 120);
    if ((*(v0 + 296) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 232);
        v9 = *(v0 + 144);
        v10 = *(v0 + 152);
        v11 = *(v0 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
          v12 = "";
        }

        v13 = *(v0 + 200);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 96);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 240);
  v17 = *(v0 + 232);
  v26 = *(v0 + 248);
  v27 = *(v0 + 216);
  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v28 = *(v0 + 208);
  v29 = *(v0 + 152);
  v23 = *(v0 + 128);
  v24 = *(v0 + 112);

  v16(v18, v19);
  (*(v21 + 32))(v24, v20, v22);
  sub_261B30860(v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C54970()
{
  v1 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C549E0, 0, 0);
}

uint64_t sub_261C549E0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];

  sub_261B30860(v7);

  v8 = v0[1];
  v9 = v0[36];

  return v8();
}

uint64_t sub_261C54A98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA538, &qword_261D030D0);
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v15 = sub_261CFF6F4();
  *(v8 + 128) = v15;
  v16 = *(v15 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C54C40, 0, 0);
}

uint64_t sub_261C54C40()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 160);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  (*(v12 + 16))(*(v0 + 152), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 184) = v16;
  *(v0 + 192) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_261C4F178;
  v18 = *(v0 + 120);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);

  return sub_261B336C4(v18, v21, v22, v19, v20);
}

uint64_t sub_261C54E80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA538, &qword_261D030D0);
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v15 = sub_261CFF6F4();
  *(v8 + 128) = v15;
  v16 = *(v15 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C55028, 0, 0);
}

uint64_t sub_261C55028()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 160);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  (*(v12 + 16))(*(v0 + 152), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 184) = v16;
  *(v0 + 192) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_261C4F178;
  v18 = *(v0 + 120);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);

  return sub_261CF1464(v18, v21, v22, v19, v20);
}

uint64_t sub_261C55268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v12 = sub_261CFF6F4();
  *(v5 + 104) = v12;
  v13 = *(v12 - 8);
  *(v5 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5540C, 0, 0);
}

uint64_t sub_261C5540C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 136);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 136);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 128), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 160) = v16;
  *(v0 + 168) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_261C55648;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);

  return sub_261B51B94(v18, v19);
}

uint64_t sub_261C55648()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_261C559B0;
  }

  else
  {
    v3 = sub_261C5575C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C5575C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 192) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 152);
        v9 = *(v0 + 64);
        v10 = *(v0 + 72);
        v11 = *(v0 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
          v12 = "";
        }

        v13 = *(v0 + 120);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 160);
  v17 = *(v0 + 152);
  v26 = *(v0 + 168);
  v27 = *(v0 + 136);
  v18 = *(v0 + 120);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v28 = *(v0 + 128);
  v29 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  v16(v18, v19);
  (*(v21 + 32))(v24, v20, v22);
  sub_261B4E674(v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C559B0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];

  sub_261B4E674(v7);

  v8 = v0[1];
  v9 = v0[23];

  return v8();
}

uint64_t sub_261C55A68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v12 = sub_261CFF6F4();
  *(v5 + 104) = v12;
  v13 = *(v12 - 8);
  *(v5 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C55C0C, 0, 0);
}

uint64_t sub_261C55C0C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 136);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 136);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 128), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 160) = v16;
  *(v0 + 168) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_261C55E48;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);

  return sub_261C9B644(v18, v19);
}

uint64_t sub_261C55E48()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_261C561B0;
  }

  else
  {
    v3 = sub_261C55F5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C55F5C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 192) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 152);
        v9 = *(v0 + 64);
        v10 = *(v0 + 72);
        v11 = *(v0 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
          v12 = "";
        }

        v13 = *(v0 + 120);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 160);
  v17 = *(v0 + 152);
  v26 = *(v0 + 168);
  v27 = *(v0 + 136);
  v18 = *(v0 + 120);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v28 = *(v0 + 128);
  v29 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  v16(v18, v19);
  (*(v21 + 32))(v24, v20, v22);
  sub_261B4968C(v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C561B0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];

  sub_261B4968C(v7);

  v8 = v0[1];
  v9 = v0[23];

  return v8();
}

uint64_t sub_261C56268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v15 = sub_261CFF6F4();
  *(v8 + 128) = v15;
  v16 = *(v15 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C56410, 0, 0);
}

uint64_t sub_261C56410()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 160);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  (*(v12 + 16))(*(v0 + 152), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 184) = v16;
  *(v0 + 192) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_261C4F178;
  v18 = *(v0 + 120);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);

  return sub_261CED534(v18, v21, v22, v19, v20);
}

uint64_t sub_261C56650(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 192) = a2;
  *(v5 + 200) = a5;
  *(v5 + 368) = a4;
  *(v5 + 184) = a1;
  v6 = sub_261CFF734();
  *(v5 + 208) = v6;
  v7 = *(v6 - 8);
  *(v5 + 216) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v5 + 232) = v9;
  v10 = *(v9 - 8);
  *(v5 + 240) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v12 = sub_261CFF6F4();
  *(v5 + 256) = v12;
  v13 = *(v12 - 8);
  *(v5 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C567F4, 0, 0);
}

uint64_t sub_261C567F4()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = sub_261CFF724();
  *(v0 + 296) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  v5 = sub_261D00144();
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 192);
  if (*(v0 + 368))
  {
LABEL_7:
    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v5, v6, v7);
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 176);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v9 = *(v0 + 288);
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v11, v8, "", v10, 2u);
  MEMORY[0x26671D560](v10, -1, -1);
LABEL_12:

  v12 = *(v0 + 288);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  (*(v14 + 16))(*(v0 + 280), v12, v13);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 304) = sub_261CFF754();
  v18 = *(v14 + 8);
  *(v0 + 312) = v18;
  *(v0 + 320) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v12, v13);
  sub_261CFFD24();
  *(v0 + 328) = sub_261CFFD14();
  v19 = sub_261CFFCF4();
  v7 = v20;
  *(v0 + 336) = v19;
  *(v0 + 344) = v20;
  v5 = sub_261C56A2C;
  v6 = v19;

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_261C56A2C()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 13);
  sub_261CFC664();
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v3);
  v5 = *v1;
  v6 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v6;
  *(v0 + 16) = v5;
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[6];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v9;
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  v10 = *(v4 + 8);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 352) = v12;
  *v12 = v0;
  v12[1] = sub_261C56B94;
  v13 = *(v0 + 248);

  return v15(v13, v0 + 16, v3, v4);
}

uint64_t sub_261C56B94()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 360) = v0;

  v4 = *(v2 + 336);
  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_261C56F6C;
  }

  else
  {
    v6 = sub_261C56CA8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261C56CA8()
{
  v1 = *(v0 + 328);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return MEMORY[0x2822009F8](sub_261C56D18, 0, 0);
}

uint64_t sub_261C56D18()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 192);
    if ((*(v0 + 368) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 304);
        v9 = *(v0 + 216);
        v10 = *(v0 + 224);
        v11 = *(v0 + 208);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
          v12 = "";
        }

        v13 = *(v0 + 272);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 168);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v26 = *(v0 + 320);
  v27 = *(v0 + 288);
  v18 = *(v0 + 272);
  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v28 = *(v0 + 280);
  v29 = *(v0 + 224);
  v23 = *(v0 + 200);
  v24 = *(v0 + 184);

  v16(v18, v19);
  (*(v21 + 32))(v24, v20, v22);
  sub_261B59E48(v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C56F6C()
{
  v1 = *(v0 + 328);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return MEMORY[0x2822009F8](sub_261C56FDC, 0, 0);
}

uint64_t sub_261C56FDC()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[28];
  v7 = v0[25];

  sub_261B59E48(v7);

  v8 = v0[1];
  v9 = v0[45];

  return v8();
}

uint64_t sub_261C57094(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a2;
  *(v5 + 96) = a5;
  *(v5 + 240) = a4;
  *(v5 + 80) = a1;
  v6 = sub_261CFF734();
  *(v5 + 104) = v6;
  v7 = *(v6 - 8);
  *(v5 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE40, qword_261D10370);
  *(v5 + 128) = v9;
  v10 = *(v9 - 8);
  *(v5 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v12 = sub_261CFF6F4();
  *(v5 + 152) = v12;
  v13 = *(v12 - 8);
  *(v5 + 160) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C57238, 0, 0);
}

uint64_t sub_261C57238()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
LABEL_12:

    v10 = *(v0 + 184);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    v13 = *(v0 + 96);
    (*(v12 + 16))(*(v0 + 176), v10, v11);
    v14 = sub_261CFF764();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    *(v0 + 200) = sub_261CFF754();
    v17 = *(v12 + 8);
    *(v0 + 208) = v17;
    *(v0 + 216) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v10, v11);
    sub_261CFC664();
    v18 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 56) = v13;
    v19 = *(v18 + 24);
    v23 = v19 + *v19;
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_261C5753C;
    v22 = *(v0 + 144);

    __asm { BRAA            X8, X16 }
  }

  v6 = *(v0 + 88);
  if ((*(v0 + 240) & 1) == 0)
  {
    if (v6)
    {
LABEL_11:
      v7 = *(v0 + 184);
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = sub_261CFF6D4();
      _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
      MEMORY[0x26671D560](v8, -1, -1);
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v6 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v6 & 0xFFFFF800) != 0xD800)
  {
    if (v6 >> 16 <= 0x10)
    {
      v6 = (v0 + 72);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261C5753C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_261C578AC;
  }

  else
  {
    v3 = sub_261C57650;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C57650()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 88);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 200);
        v9 = *(v0 + 112);
        v10 = *(v0 + 120);
        v11 = *(v0 + 104);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
          v12 = "";
        }

        v13 = *(v0 + 168);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 64);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 208);
  v17 = *(v0 + 200);
  v26 = *(v0 + 216);
  v27 = *(v0 + 184);
  v18 = *(v0 + 168);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v22 = *(v0 + 128);
  v21 = *(v0 + 136);
  v28 = *(v0 + 176);
  v29 = *(v0 + 120);
  v23 = *(v0 + 96);
  v24 = *(v0 + 80);

  v16(v18, v19);
  (*(v21 + 32))(v24, v20, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C578AC()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];
  v9 = v0[29];

  return v8();
}

uint64_t sub_261C57978(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE40, qword_261D10370);
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v14 = sub_261CFF6F4();
  *(v7 + 120) = v14;
  v15 = *(v14 - 8);
  *(v7 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C57B20, 0, 0);
}

uint64_t sub_261C57B20()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 152);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 144), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 176) = v16;
  *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_261C57D60;
  v18 = *(v0 + 112);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 48);

  return sub_261B6CF48(v18, v21, v19, v20);
}

uint64_t sub_261C57D60()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_261C63854;
  }

  else
  {
    v3 = sub_261C63824;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C57E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a5;
  *(v5 + 192) = a4;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v12 = sub_261CFF6F4();
  *(v5 + 104) = v12;
  v13 = *(v12 - 8);
  *(v5 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C58018, 0, 0);
}

uint64_t sub_261C58018()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_261CFF724();
  *(v0 + 144) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 192))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 136);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 136);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 128), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 160) = v16;
  *(v0 + 168) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_261C58254;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);

  return sub_261B93DE0(v18, v19);
}

uint64_t sub_261C58254()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_261C585BC;
  }

  else
  {
    v3 = sub_261C58368;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C58368()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 192) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 152);
        v9 = *(v0 + 64);
        v10 = *(v0 + 72);
        v11 = *(v0 + 56);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
          v12 = "";
        }

        v13 = *(v0 + 120);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 160);
  v17 = *(v0 + 152);
  v26 = *(v0 + 168);
  v27 = *(v0 + 136);
  v18 = *(v0 + 120);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v28 = *(v0 + 128);
  v29 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  v16(v18, v19);
  (*(v21 + 32))(v24, v20, v22);
  sub_261C637D0(v23);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C585BC()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];

  sub_261C637D0(v7);

  v8 = v0[1];
  v9 = v0[23];

  return v8();
}

uint64_t sub_261C58674(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v6 + 112) = v13;
  v14 = *(v13 - 8);
  *(v6 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C58818, 0, 0);
}

uint64_t sub_261C58818()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 144);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 16))(*(v0 + 136), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 168) = v16;
  *(v0 + 176) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_261C58A54;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);

  return sub_261BB546C(v18, v19, v20);
}

uint64_t sub_261C58A54()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_261C63858;
  }

  else
  {
    v3 = sub_261C63828;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C58B68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v6 + 112) = v13;
  v14 = *(v13 - 8);
  *(v6 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C58D0C, 0, 0);
}

uint64_t sub_261C58D0C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 144);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 16))(*(v0 + 136), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 168) = v16;
  *(v0 + 176) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_261C58A54;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);

  return sub_261BE3F3C(v18, v19, v20);
}

uint64_t sub_261C58F48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v6 + 112) = v13;
  v14 = *(v13 - 8);
  *(v6 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C590EC, 0, 0);
}

uint64_t sub_261C590EC()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 144);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 16))(*(v0 + 136), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 168) = v16;
  *(v0 + 176) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_261C58A54;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);

  return sub_261BE5E78(v18, v19, v20);
}

uint64_t sub_261C59328(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v6 + 112) = v13;
  v14 = *(v13 - 8);
  *(v6 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C594CC, 0, 0);
}

uint64_t sub_261C594CC()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 144);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 16))(*(v0 + 136), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 168) = v16;
  *(v0 + 176) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_261C58A54;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);

  return sub_261C31D14(v18, v19, v20);
}

uint64_t sub_261C59708(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v6 + 112) = v13;
  v14 = *(v13 - 8);
  *(v6 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C598AC, 0, 0);
}

uint64_t sub_261C598AC()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 144);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 16))(*(v0 + 136), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 168) = v16;
  *(v0 + 176) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_261C58A54;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);

  return sub_261CA77B4(v18, v19, v20);
}

uint64_t sub_261C59AE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v14 = sub_261CFF6F4();
  *(v7 + 120) = v14;
  v15 = *(v14 - 8);
  *(v7 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C59C90, 0, 0);
}

uint64_t sub_261C59C90()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 152);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 144), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 176) = v16;
  *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_261C59ED0;
  v18 = *(v0 + 112);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 48);

  return sub_261CE8B50(v18, v21, v19, v20);
}

uint64_t sub_261C59ED0()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_261C63850;
  }

  else
  {
    v3 = sub_261C63848;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C59FE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
  v9 = sub_261CFF734();
  *(v8 + 152) = v9;
  v10 = *(v9 - 8);
  *(v8 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB588, &qword_261D06AC0);
  *(v8 + 176) = v12;
  v13 = *(v12 - 8);
  *(v8 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v15 = sub_261CFF6F4();
  *(v8 + 200) = v15;
  v16 = *(v15 - 8);
  *(v8 + 208) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5A18C, 0, 0);
}

uint64_t sub_261C5A18C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_261CFF724();
  *(v0 + 240) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  v5 = sub_261D00144();
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 112);
  if (*(v0 + 312))
  {
LABEL_7:
    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x2822009F8](v5, v6, v7);
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v9 = *(v0 + 232);
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v11, v8, "", v10, 2u);
  MEMORY[0x26671D560](v10, -1, -1);
LABEL_12:

  v12 = *(v0 + 232);
  v13 = *(v0 + 200);
  v14 = *(v0 + 208);
  (*(v14 + 16))(*(v0 + 224), v12, v13);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 248) = sub_261CFF754();
  v18 = *(v14 + 8);
  *(v0 + 256) = v18;
  *(v0 + 264) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v12, v13);
  sub_261CFFD24();
  *(v0 + 272) = sub_261CFFD14();
  v19 = sub_261CFFCF4();
  v7 = v20;
  *(v0 + 280) = v19;
  *(v0 + 288) = v20;
  v5 = sub_261C5A3C4;
  v6 = v19;

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_261C5A3C4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v10 = *(v0 + 120);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 56) = v10;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  v5 = *(v4 + 8);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_261C5A52C;
  v8 = *(v0 + 192);

  return v11(v8, v0 + 56, v3, v4);
}

uint64_t sub_261C5A52C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;
  *(*v1 + 304) = v0;

  v4 = *(v2 + 280);
  v5 = *(v2 + 288);
  if (v0)
  {
    v6 = sub_261C5A928;
  }

  else
  {
    v6 = sub_261C5A640;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261C5A640()
{
  v1 = *(v0 + 272);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C5A6B0, 0, 0);
}

uint64_t sub_261C5A6B0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 112);
    if ((*(v0 + 312) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 248);
        v9 = *(v0 + 160);
        v10 = *(v0 + 168);
        v11 = *(v0 + 152);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
          v12 = "";
        }

        v13 = *(v0 + 216);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 256);
  v17 = *(v0 + 248);
  v30 = *(v0 + 232);
  v31 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 192);
  v20 = *(v0 + 200);
  v22 = *(v0 + 176);
  v21 = *(v0 + 184);
  v32 = *(v0 + 168);
  v28 = *(v0 + 136);
  v29 = *(v0 + 144);
  v23 = *(v0 + 120);
  v26 = *(v0 + 264);
  v27 = *(v0 + 128);
  v24 = *(v0 + 104);

  v16(v18, v20);
  (*(v21 + 32))(v24, v19, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C5A928()
{
  v1 = *(v0 + 272);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_261C5A998, 0, 0);
}

uint64_t sub_261C5A998()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];

  v11 = v0[1];
  v12 = v0[38];

  return v11();
}

uint64_t sub_261C5AA7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB588, &qword_261D06AC0);
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v14 = sub_261CFF6F4();
  *(v7 + 120) = v14;
  v15 = *(v14 - 8);
  *(v7 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5AC24, 0, 0);
}

uint64_t sub_261C5AC24()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 152);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 144), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 176) = v16;
  *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_261C5AE64;
  v18 = *(v0 + 112);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 48);

  return sub_261C8CAF4(v18, v21, v19, v20);
}

uint64_t sub_261C5AE64()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_261C5B1E8;
  }

  else
  {
    v3 = sub_261C5AF78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C5AF78()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 208) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 168);
        v9 = *(v0 + 80);
        v10 = *(v0 + 88);
        v11 = *(v0 + 72);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
          v12 = "";
        }

        v13 = *(v0 + 136);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 176);
  v17 = *(v0 + 168);
  v29 = *(v0 + 152);
  v30 = *(v0 + 144);
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v31 = *(v0 + 88);
  v28 = *(v0 + 64);
  v26 = *(v0 + 184);
  v27 = *(v0 + 56);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  v16(v18, v20);
  (*(v21 + 32))(v24, v19, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C5B1E8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  v10 = v0[1];
  v11 = v0[25];

  return v10();
}

uint64_t sub_261C5B2BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 200) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB620, qword_261D06DB8);
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v6 + 112) = v13;
  v14 = *(v13 - 8);
  *(v6 + 120) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5B460, 0, 0);
}

uint64_t sub_261C5B460()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_261CFF724();
  *(v0 + 152) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 144);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 16))(*(v0 + 136), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 168) = v16;
  *(v0 + 176) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_261C5B69C;
  v18 = *(v0 + 104);
  v19 = *(v0 + 48);
  v20 = *(v0 + 56);

  return sub_261BAD6B8(v18, v19, v20);
}

uint64_t sub_261C5B69C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_261C5BA10;
  }

  else
  {
    v3 = sub_261C5B7B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C5B7B0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 200) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 160);
        v9 = *(v0 + 72);
        v10 = *(v0 + 80);
        v11 = *(v0 + 64);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
          v12 = "";
        }

        v13 = *(v0 + 128);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v28 = *(v0 + 144);
  v29 = *(v0 + 136);
  v18 = *(v0 + 128);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v30 = *(v0 + 80);
  v23 = *(v0 + 48);
  v26 = *(v0 + 176);
  v27 = *(v0 + 56);
  v24 = *(v0 + 32);

  v16(v18, v19);
  (*(v22 + 32))(v24, v20, v21);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C5BA10()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];
  v8 = v0[6];
  v7 = v0[7];

  v9 = v0[1];
  v10 = v0[24];

  return v9();
}

uint64_t sub_261C5BAD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 272) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  v9 = sub_261CFF734();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB620, qword_261D06DB8);
  *(v8 + 160) = v12;
  v13 = *(v12 - 8);
  *(v8 + 168) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v15 = sub_261CFF6F4();
  *(v8 + 184) = v15;
  v16 = *(v15 - 8);
  *(v8 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5BC80, 0, 0);
}

uint64_t sub_261C5BC80()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_261CFF724();
  *(v0 + 224) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 96);
  if (*(v0 + 272))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 80);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 216);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 216);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 208), v10, v11);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_261CFF754();
  v18 = *(v12 + 8);
  *(v0 + 240) = v18;
  *(v0 + 248) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v10, v11);
  sub_261CFC664();
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  *(v0 + 56) = v14;
  *(v0 + 64) = v13;
  v21 = *(v20 + 16);
  v27 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 256) = v23;
  *v23 = v0;
  v23[1] = sub_261C5BF74;
  v24 = *(v0 + 176);
  v25 = *(v0 + 120);
  v26 = *(v0 + 128);

  return v27(v24, v0 + 56, v25, v26, v19, v20);
}

uint64_t sub_261C5BF74()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_261C5C300;
  }

  else
  {
    v3 = sub_261C5C088;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C5C088()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 96);
    if ((*(v0 + 272) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 232);
        v9 = *(v0 + 144);
        v10 = *(v0 + 152);
        v11 = *(v0 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
          v12 = "";
        }

        v13 = *(v0 + 200);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 72);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 240);
  v17 = *(v0 + 232);
  v29 = *(v0 + 216);
  v30 = *(v0 + 208);
  v18 = *(v0 + 200);
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v31 = *(v0 + 152);
  v28 = *(v0 + 128);
  v23 = *(v0 + 104);
  v26 = *(v0 + 248);
  v27 = *(v0 + 112);
  v24 = *(v0 + 88);

  v16(v18, v20);
  (*(v21 + 32))(v24, v19, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C5C300()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v10 = v0[1];
  v11 = v0[33];

  return v10();
}

uint64_t sub_261C5C3E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a2;
  *(v7 + 48) = a5;
  *(v7 + 208) = a4;
  *(v7 + 32) = a1;
  v8 = sub_261CFF734();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBF70, &qword_261D08F18);
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  v14 = sub_261CFF6F4();
  *(v7 + 120) = v14;
  v15 = *(v14 - 8);
  *(v7 + 128) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5C590, 0, 0);
}

uint64_t sub_261C5C590()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_261CFF724();
  *(v0 + 160) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 208))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 152);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 144), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 168) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 176) = v16;
  *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *v17 = v0;
  v17[1] = sub_261C59ED0;
  v18 = *(v0 + 112);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = *(v0 + 48);

  return sub_261CAA118(v18, v21, v19, v20);
}

uint64_t sub_261C5C7D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 216) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = sub_261CFF734();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7D8, &qword_261D0ED20);
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v15 = sub_261CFF6F4();
  *(v8 + 128) = v15;
  v16 = *(v15 - 8);
  *(v8 + 136) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5C978, 0, 0);
}

uint64_t sub_261C5C978()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_261CFF724();
  *(v0 + 168) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 216))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 160);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  (*(v12 + 16))(*(v0 + 152), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 176) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 184) = v16;
  *(v0 + 192) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = sub_261C5CBB8;
  v18 = *(v0 + 120);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);

  return sub_261C7363C(v18, v21, v22, v19, v20);
}

uint64_t sub_261C5CBB8()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_261C5CF44;
  }

  else
  {
    v3 = sub_261C5CCCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C5CCCC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 216) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 176);
        v9 = *(v0 + 88);
        v10 = *(v0 + 96);
        v11 = *(v0 + 80);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
          v12 = "";
        }

        v13 = *(v0 + 144);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 184);
  v17 = *(v0 + 176);
  v30 = *(v0 + 160);
  v31 = *(v0 + 152);
  v18 = *(v0 + 144);
  v19 = *(v0 + 120);
  v20 = *(v0 + 128);
  v22 = *(v0 + 104);
  v21 = *(v0 + 112);
  v32 = *(v0 + 96);
  v28 = *(v0 + 64);
  v29 = *(v0 + 72);
  v23 = *(v0 + 48);
  v26 = *(v0 + 192);
  v27 = *(v0 + 56);
  v24 = *(v0 + 32);

  v16(v18, v20);
  (*(v21 + 32))(v24, v19, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261C5CF44()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v10 = v0[6];
  v9 = v0[7];

  v11 = v0[1];
  v12 = v0[26];

  return v11();
}

uint64_t sub_261C5D028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C5D098(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v5 + 152) = v9;
  v10 = *(v9 - 8);
  *(v5 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5D1D4, 0, 0);
}

uint64_t sub_261C5D1D4()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 184);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 184);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 176), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 208) = v17;
  *(v0 + 216) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261B6BB2C(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 8);
  v24 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 224) = v22;
  *v22 = v0;
  v22[1] = sub_261C5D4D8;
  v23 = *(v0 + 120);

  return v24(v0 + 80, v23, v18, v19);
}

uint64_t sub_261C5D4D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[28];
  v8 = *v2;
  v4[29] = v1;

  if (v1)
  {
    v6 = sub_261C63838;
  }

  else
  {
    v6 = sub_261C6382C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C5D5F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a4;
  v5 = sub_261CFF734();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v4 + 144) = v8;
  v9 = *(v8 - 8);
  *(v4 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5D72C, 0, 0);
}

uint64_t sub_261C5D72C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_261CFF724();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 232))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 176);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 176);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 168), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 200) = v17;
  *(v0 + 208) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261B6BB2C(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 16);
  v23 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 216) = v22;
  *v22 = v0;
  v22[1] = sub_261C5DA24;

  return v23(v0 + 80, v18, v19);
}

uint64_t sub_261C5DA24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[27];
  v8 = *v2;
  v4[28] = v1;

  if (v1)
  {
    v6 = sub_261C5DD5C;
  }

  else
  {
    v6 = sub_261C5DB40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C5DB40()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 104);
    if ((*(v0 + 232) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 192);
        v10 = *(v0 + 128);
        v9 = *(v0 + 136);
        v11 = *(v0 + 120);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
          v12 = "";
        }

        v13 = *(v0 + 160);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 64);
  v18 = *(v0 + 200);
  v17 = *(v0 + 208);
  v19 = *(v0 + 192);
  v21 = *(v0 + 168);
  v20 = *(v0 + 176);
  v22 = *(v0 + 160);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);

  v18(v22, v23);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_261C5DD5C()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_261C5DE08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 248) = a3;
  *(v6 + 104) = a1;
  *(v6 + 112) = a4;
  v7 = sub_261CFF734();
  *(v6 + 136) = v7;
  v8 = *(v7 - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v6 + 160) = v10;
  v11 = *(v10 - 8);
  *(v6 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5DF44, 0, 0);
}

uint64_t sub_261C5DF44()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_261CFF724();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 248))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 192);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 192);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 184), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 216) = v17;
  *(v0 + 224) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 24);
  v25 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 232) = v22;
  *v22 = v0;
  v22[1] = sub_261C5E224;
  v23 = *(v0 + 120);
  v24 = *(v0 + 128);

  return v25(v0 + 80, v23, v24, v18, v19);
}

uint64_t sub_261C5E224(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[29];
  v8 = *v2;
  v4[30] = v1;

  if (v1)
  {
    v6 = sub_261C5E55C;
  }

  else
  {
    v6 = sub_261C5E340;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C5E340()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 104);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 208);
        v10 = *(v0 + 144);
        v9 = *(v0 + 152);
        v11 = *(v0 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
          v12 = "";
        }

        v13 = *(v0 + 176);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 64);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 176);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);

  v18(v22, v23);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_261C5E55C()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];
  v7 = v0[30];

  return v6();
}

uint64_t sub_261C5E608(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v5 + 152) = v9;
  v10 = *(v9 - 8);
  *(v5 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5E744, 0, 0);
}

uint64_t sub_261C5E744()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 184);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 184);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 176), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 208) = v17;
  *(v0 + 216) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 8);
  v24 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 224) = v22;
  *v22 = v0;
  v22[1] = sub_261C5D4D8;
  v23 = *(v0 + 120);

  return v24(v0 + 80, v23, v18, v19);
}

uint64_t sub_261C5EA24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v5 + 152) = v9;
  v10 = *(v9 - 8);
  *(v5 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5EB60, 0, 0);
}

uint64_t sub_261C5EB60()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 184);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 184);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 176), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 208) = v17;
  *(v0 + 216) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261B6BE54(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 8);
  v24 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 224) = v22;
  *v22 = v0;
  v22[1] = sub_261C5D4D8;
  v23 = *(v0 + 120);

  return v24(v0 + 80, v23, v18, v19);
}

uint64_t sub_261C5EE64(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a4;
  v5 = sub_261CFF734();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v4 + 144) = v8;
  v9 = *(v8 - 8);
  *(v4 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5EF9C, 0, 0);
}

uint64_t sub_261C5EF9C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_261CFF724();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 232))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 176);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 176);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 168), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 200) = v17;
  *(v0 + 208) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261B6BE54(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 24);
  v23 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 216) = v22;
  *v22 = v0;
  v22[1] = sub_261C5F294;

  return v23(v0 + 80, v18, v19);
}

uint64_t sub_261C5F294(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[27];
  v8 = *v2;
  v4[28] = v1;

  if (v1)
  {
    v6 = sub_261C6383C;
  }

  else
  {
    v6 = sub_261C63830;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C5F3B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 232) = a3;
  *(v4 + 104) = a1;
  *(v4 + 112) = a4;
  v5 = sub_261CFF734();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v4 + 144) = v8;
  v9 = *(v8 - 8);
  *(v4 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5F4E8, 0, 0);
}

uint64_t sub_261C5F4E8()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_261CFF724();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 232))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 176);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 176);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 168), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 200) = v17;
  *(v0 + 208) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261B6BE54(0x7469746E456C6C61, 0xED00002928736569);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 32);
  v23 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 216) = v22;
  *v22 = v0;
  v22[1] = sub_261C5F294;

  return v23(v0 + 80, v18, v19);
}

uint64_t sub_261C5F7E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a3;
  *(v6 + 112) = a1;
  *(v6 + 120) = a4;
  v7 = sub_261CFF734();
  *(v6 + 144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v6 + 168) = v10;
  v11 = *(v10 - 8);
  *(v6 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C5F924, 0, 0);
}

uint64_t sub_261C5F924()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_261CFF724();
  *(v0 + 208) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 112);
  if (*(v0 + 256))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 200);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 200);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 192), v10, v11);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 216) = sub_261CFF754();
  v18 = *(v12 + 8);
  *(v0 + 224) = v18;
  *(v0 + 232) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v10, v11);
  sub_261B6BFE8(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  *(v0 + 80) = v14;
  *(v0 + 88) = v13;
  v21 = *(v20 + 8);
  v25 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_261C5FC34;
  v24 = *(v0 + 136);

  return v25(v0 + 80, v24, v19, v20);
}

uint64_t sub_261C5FC34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[30];
  v8 = *v2;
  v4[31] = v1;

  if (v1)
  {
    v6 = sub_261C5FF6C;
  }

  else
  {
    v6 = sub_261C5FD50;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C5FD50()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 112);
    if ((*(v0 + 256) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 216);
        v10 = *(v0 + 152);
        v9 = *(v0 + 160);
        v11 = *(v0 + 144);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          v12 = "";
        }

        v13 = *(v0 + 184);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 96);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 64);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 216);
  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v22 = *(v0 + 184);
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);

  v18(v22, v23);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_261C5FF6C()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];
  v7 = v0[31];

  return v6();
}

uint64_t sub_261C60018(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 184) = a3;
  *(v6 + 40) = a1;
  *(v6 + 48) = a4;
  v7 = sub_261CFF734();
  *(v6 + 72) = v7;
  v8 = *(v7 - 8);
  *(v6 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v6 + 96) = v10;
  v11 = *(v10 - 8);
  *(v6 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C60154, 0, 0);
}

uint64_t sub_261C60154()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_261CFF724();
  *(v0 + 136) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 184))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 32);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 128);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  (*(v12 + 16))(*(v0 + 120), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 144) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 152) = v16;
  *(v0 + 160) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_261C60394;
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v20 = *(v0 + 48);

  return sub_261BCE578(v0 + 16, v20, v18, v19);
}

uint64_t sub_261C60394()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_261C63844;
  }

  else
  {
    v3 = sub_261C63864;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C604A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 120) = a3;
  *(v5 + 32) = a1;
  v6 = sub_261CFF734();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C605E4, 0, 0);
}

uint64_t sub_261C605E4()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_261CFF724();
  __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if (result)
  {
    v6 = *(v0 + 32);
    if ((*(v0 + 120) & 1) == 0)
    {
      if (v6)
      {
LABEL_11:
        v7 = *(v0 + 112);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x26671D560](v8, -1, -1);
        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if ((v6 & 0xFFFFF800) == 0xD800)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v6 >> 16 > 0x10)
    {
      goto LABEL_35;
    }

    v6 = (v0 + 24);
    goto LABEL_11;
  }

LABEL_12:

  v10 = *(v0 + 112);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v37 = *(v0 + 40);
  (*(v12 + 16))(*(v0 + 104), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_261CFF754();
  v36 = *(v12 + 8);
  v36(v10, v11);
  sub_261B6C17C(0xD000000000000013, 0x8000000261D1B3A0);
  v16 = sub_261BCF0C8();
  v38 = MEMORY[0x277D84F90];
  if ((v16 & 1) == 0)
  {
    if (qword_27FED9A58 != -1)
    {
      swift_once();
    }

    v17 = sub_261CFD104();
    sub_261BBBCE8(v17);
  }

  if (qword_27FED9A60 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 96);
  v19 = sub_261CFD104();
  sub_261BBBCE8(v19);
  v20 = sub_261CFF704();
  sub_261CFF744();
  v21 = sub_261CFFFD4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

  v22 = *(v0 + 32);
  if (*(v0 + 120))
  {
LABEL_22:
    if (!(v22 >> 32))
    {
      if ((v22 & 0xFFFFF800) == 0xD800)
      {
LABEL_38:
        __break(1u);
        return result;
      }

      if (v22 >> 16 <= 0x10)
      {
        v22 = (v0 + 16);
        goto LABEL_26;
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (!v22)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_26:
  v24 = *(v0 + 64);
  v23 = *(v0 + 72);
  v25 = *(v0 + 56);
  sub_261CFCDA4();
  sub_261CFF774();

  if ((*(v24 + 88))(v23, v25) == *MEMORY[0x277D85B00])
  {
    v26 = "[Error] Interval already ended";
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v26 = "";
  }

  v27 = *(v0 + 96);
  v28 = swift_slowAlloc();
  *v28 = 0;
  v29 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v20, v21, v29, v22, v26, v28, 2u);
  MEMORY[0x26671D560](v28, -1, -1);
LABEL_30:
  v31 = *(v0 + 104);
  v30 = *(v0 + 112);
  v32 = *(v0 + 96);
  v34 = *(v0 + 72);
  v33 = *(v0 + 80);

  v36(v32, v33);

  v35 = *(v0 + 8);

  return v35(v38);
}

uint64_t sub_261C60A58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 248) = a3;
  *(v5 + 112) = a1;
  v6 = sub_261CFF734();
  *(v5 + 136) = v6;
  v7 = *(v6 - 8);
  *(v5 + 144) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v5 + 160) = v9;
  v10 = *(v9 - 8);
  *(v5 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C60B94, 0, 0);
}

uint64_t sub_261C60B94()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_261CFF724();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 112);
  if (*(v0 + 248))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 192);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 192);
  v11 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 184), v10, v11);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 208) = sub_261CFF754();
  v18 = *(v12 + 8);
  *(v0 + 216) = v18;
  *(v0 + 224) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v10, v11);
  sub_261B6C310(0xD000000000000018, 0x8000000261D1F8F0);
  sub_261CFC664();
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  *(v0 + 80) = v14;
  *(v0 + 88) = v13;
  v21 = *(v20 + 24);
  v24 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 232) = v23;
  *v23 = v0;
  v23[1] = sub_261C60E98;

  return v24(v0 + 80, v19, v20);
}

uint64_t sub_261C60E98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[29];
  v8 = *v2;
  v4[30] = v1;

  if (v1)
  {
    v6 = sub_261C5E55C;
  }

  else
  {
    v6 = sub_261C60FB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C60FB4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 112);
    if ((*(v0 + 248) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 208);
        v10 = *(v0 + 144);
        v9 = *(v0 + 152);
        v11 = *(v0 + 136);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
          v12 = "";
        }

        v13 = *(v0 + 176);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 96);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 64);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 176);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);

  v18(v22, v23);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_261C611D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = a6;
  *(v6 + 256) = a3;
  *(v6 + 112) = a1;
  *(v6 + 120) = a4;
  v7 = sub_261CFF734();
  *(v6 + 144) = v7;
  v8 = *(v7 - 8);
  *(v6 + 152) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v6 + 168) = v10;
  v11 = *(v10 - 8);
  *(v6 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C6130C, 0, 0);
}

uint64_t sub_261C6130C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_261CFF724();
  *(v0 + 208) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 112);
  if (*(v0 + 256))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 104);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 200);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 200);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 192), v10, v11);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 216) = sub_261CFF754();
  v18 = *(v12 + 8);
  *(v0 + 224) = v18;
  *(v0 + 232) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v10, v11);
  sub_261B6C310(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  *(v0 + 80) = v14;
  *(v0 + 88) = v13;
  v21 = *(v20 + 8);
  v25 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_261C6161C;
  v24 = *(v0 + 136);

  return v25(v0 + 80, v24, v19, v20);
}

uint64_t sub_261C6161C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[30];
  v8 = *v2;
  v4[31] = v1;

  if (v1)
  {
    v6 = sub_261C63840;
  }

  else
  {
    v6 = sub_261C63834;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C61738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 240) = a3;
  *(v5 + 104) = a1;
  v6 = sub_261CFF734();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_261CFF6F4();
  *(v5 + 152) = v9;
  v10 = *(v9 - 8);
  *(v5 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C61874, 0, 0);
}

uint64_t sub_261C61874()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_261CFF724();
  *(v0 + 192) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 104);
  if (*(v0 + 240))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 96);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 184);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 184);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  (*(v12 + 16))(*(v0 + 176), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 200) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 208) = v17;
  *(v0 + 216) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261B6C4A4(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 80) = v13;
  v20 = *(v19 + 8);
  v24 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 224) = v22;
  *v22 = v0;
  v22[1] = sub_261C61B78;
  v23 = *(v0 + 120);

  return v24(v0 + 80, v23, v18, v19);
}

uint64_t sub_261C61B78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = v1;
  v5 = v3[28];
  v8 = *v2;
  v4[29] = v1;

  if (v1)
  {
    v6 = sub_261C61EB0;
  }

  else
  {
    v6 = sub_261C61C94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C61C94()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 104);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 200);
        v10 = *(v0 + 136);
        v9 = *(v0 + 144);
        v11 = *(v0 + 128);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
          v12 = "";
        }

        v13 = *(v0 + 168);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 88);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 64);
  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 200);
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 168);
  v24 = *(v0 + 144);
  v23 = *(v0 + 152);

  v18(v22, v23);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_261C61EB0()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[18];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];
  v7 = v0[29];

  return v6();
}

uint64_t sub_261C61F5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 144) = a6;
  *(v7 + 152) = a7;
  *(v7 + 128) = a4;
  *(v7 + 136) = a5;
  *(v7 + 272) = a3;
  *(v7 + 120) = a1;
  v8 = sub_261CFF734();
  *(v7 + 160) = v8;
  v9 = *(v8 - 8);
  *(v7 + 168) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v11 = sub_261CFF6F4();
  *(v7 + 184) = v11;
  v12 = *(v11 - 8);
  *(v7 + 192) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C6209C, 0, 0);
}

uint64_t sub_261C6209C()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_261CFF724();
  *(v0 + 224) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 120);
  if (*(v0 + 272))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 112);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 216);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 216);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  v13 = *(v0 + 144);
  v24 = *(v0 + 128);
  (*(v12 + 16))(*(v0 + 208), v10, v11);
  v14 = sub_261CFF764();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 232) = sub_261CFF754();
  v17 = *(v12 + 8);
  *(v0 + 240) = v17;
  *(v0 + 248) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  sub_261B6C640(0x7365697469746E65, 0xEE00293A726F6628);
  sub_261CFC664();
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  *(v0 + 56) = v24;
  *(v0 + 72) = v13;
  v20 = *(v19 + 8);
  v25 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_261C623B0;
  v23 = *(v0 + 152);

  return v25(v0 + 56, v23, v18, v19);
}

uint64_t sub_261C623B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[32];
  v8 = *v2;
  v4[33] = v1;

  if (v1)
  {
    v6 = sub_261C626E8;
  }

  else
  {
    v6 = sub_261C624CC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261C624CC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 120);
    if ((*(v0 + 272) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 232);
        v10 = *(v0 + 168);
        v9 = *(v0 + 176);
        v11 = *(v0 + 160);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
          v12 = "";
        }

        v13 = *(v0 + 200);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 104);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 88);
  v18 = *(v0 + 240);
  v17 = *(v0 + 248);
  v19 = *(v0 + 232);
  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  v22 = *(v0 + 200);
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);

  v18(v22, v23);

  v25 = *(v0 + 8);

  return v25(v16);
}

uint64_t sub_261C626E8()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[22];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];
  v7 = v0[33];

  return v6();
}

uint64_t sub_261C62794(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 184) = a3;
  *(v6 + 40) = a1;
  *(v6 + 48) = a4;
  v7 = sub_261CFF734();
  *(v6 + 72) = v7;
  v8 = *(v7 - 8);
  *(v6 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v10 = sub_261CFF6F4();
  *(v6 + 96) = v10;
  v11 = *(v10 - 8);
  *(v6 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C628D0, 0, 0);
}

uint64_t sub_261C628D0()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_261CFF724();
  *(v0 + 136) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 184))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 32);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 128);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  (*(v12 + 16))(*(v0 + 120), v10, v11);
  v13 = sub_261CFF764();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 144) = sub_261CFF754();
  v16 = *(v12 + 8);
  *(v0 + 152) = v16;
  *(v0 + 160) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_261C62B10;
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v20 = *(v0 + 48);

  return sub_261CE21EC(v0 + 16, v20, v18, v19);
}

uint64_t sub_261C62B10()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_261C62E30;
  }

  else
  {
    v3 = sub_261C62C24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261C62C24()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 40);
    if ((*(v0 + 184) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 144);
        v10 = *(v0 + 80);
        v9 = *(v0 + 88);
        v11 = *(v0 + 72);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
          v12 = "";
        }

        v13 = *(v0 + 112);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 144);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 112);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);

  v17(v21, v22);
  v24 = *(v0 + 16);

  v25 = *(v0 + 8);

  return v25(v24);
}

uint64_t sub_261C62E30()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];

  v6 = v0[1];
  v7 = v0[22];

  return v6();
}

uint64_t sub_261C62EC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 312) = a3;
  *(v8 + 144) = a1;
  *(v8 + 152) = a4;
  v9 = sub_261CFF734();
  *(v8 + 192) = v9;
  v10 = *(v9 - 8);
  *(v8 + 200) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  v13 = sub_261CFF6F4();
  *(v8 + 224) = v13;
  v14 = *(v13 - 8);
  *(v8 + 232) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261C63040, 0, 0);
}

uint64_t sub_261C63040()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = sub_261CFF724();
  *(v0 + 264) = __swift_project_value_buffer(v2, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v3 = sub_261CFF704();
  v4 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 144);
  if (*(v0 + 312))
  {
LABEL_7:
    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 136);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v7 = *(v0 + 256);
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v3, v4, v9, v6, "", v8, 2u);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_12:

  v10 = *(v0 + 256);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  v13 = *(v0 + 216);
  v14 = *(v0 + 168);
  *v28 = *(v0 + 152);
  (*(v12 + 16))(*(v0 + 248), v10, v11);
  v15 = sub_261CFF764();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 272) = sub_261CFF754();
  v18 = *(v12 + 8);
  *(v0 + 280) = v18;
  *(v0 + 288) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v10, v11);
  sub_261CFC664();
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  *&v21 = v14;
  *(&v21 + 1) = v28[0];
  *(v0 + 72) = v21;
  *(v0 + 56) = *v28;
  *(v0 + 88) = v28[1];
  *(v0 + 96) = v14;
  sub_261CE2650(v13);
  v22 = *(v20 + 24);
  v29 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  *(v0 + 296) = v24;
  *v24 = v0;
  v24[1] = sub_261C63364;
  v25 = *(v0 + 216);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);

  return v29(v0 + 56, v26, v27, v25, v19, v20);
}

uint64_t sub_261C63364(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[37];
  v6 = v3[27];
  v9 = *v2;
  v4[38] = v1;

  sub_261B59E9C(v6);
  if (v1)
  {
    v7 = sub_261C636C8;
  }

  else
  {
    v7 = sub_261C6349C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261C6349C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_261CFF704();
  sub_261CFF744();
  v5 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v7 = *(v0 + 144);
    if ((*(v0 + 312) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 272);
        v10 = *(v0 + 200);
        v9 = *(v0 + 208);
        v11 = *(v0 + 192);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
          v12 = "";
        }

        v13 = *(v0 + 240);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x26671D560](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 128);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v26 = *(v0 + 112);
  v16 = *(v0 + 280);
  v17 = *(v0 + 288);
  v18 = *(v0 + 272);
  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v21 = *(v0 + 240);
  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 208);

  v16(v21, v22);

  v25 = *(v0 + 8);

  return v25(v26);
}

uint64_t sub_261C636C8()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];
  v8 = v0[38];

  return v7();
}

uint64_t sub_261C6387C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD7E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD7E0);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static RemindersInCalendarUtilities.checkAndRequestAuthorizationIfNeeded(presentingWith:)(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_261CFDBD4();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7F8, &unk_261D0EE28);
  v1[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_261CFFD24();
  v1[15] = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  v1[16] = v8;
  v1[17] = v7;

  return MEMORY[0x2822009F8](sub_261C63A98, v8, v7);
}

uint64_t sub_261C63A98()
{
  v78 = v0;
  v1 = qword_27FED9E08;
  v0[18] = qword_27FED9E08;
  qword_27FED9E08 = 0;
  v2 = (v1 >> 1) & 1 | v1;
  if (!v2)
  {
    v38 = v0[15];

    if (qword_27FED9C08 != -1)
    {
      swift_once();
    }

    v39 = sub_261CFF7A4();
    __swift_project_value_buffer(v39, qword_27FEDD7E0);
    v40 = sub_261CFF784();
    v41 = sub_261CFFE54();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_261AE2000, v40, v41, "RemindersInCalendar: no authorizations to check", v42, 2u);
      MEMORY[0x26671D560](v42, -1, -1);
    }

    goto LABEL_20;
  }

  if (qword_27FED9C08 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = sub_261CFF7A4();
  v0[19] = __swift_project_value_buffer(v4, qword_27FEDD7E0);
  v5 = v3;
  v6 = sub_261CFF784();
  v7 = sub_261CFFE84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v77 = v11;
    *v9 = 136315394;
    v0[5] = v2;
    sub_261C64F0C();
    v12 = sub_261D005F4();
    v14 = sub_261B879C8(v12, v13, &v77);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v15 = v8;
    _os_log_impl(&dword_261AE2000, v6, v7, "RemindersInCalendar: checking authorization {toCheck: %s, presentingViewController: %@}", v9, 0x16u);
    sub_261AE6A40(v10, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26671D560](v11, -1, -1);
    MEMORY[0x26671D560](v9, -1, -1);
  }

  v16 = v0[14];
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  sub_261C64D90();
  sub_261D00084();
  _s21PrivacyCheckerWrapperCMa();
  swift_allocObject();
  v20 = sub_261B7C2D8(v19);
  v0[20] = v20;
  (*(v17 + 56))(v16, 1, 1, v18);
  if ((v1 & 2) != 0)
  {
    v49 = sub_261CFF784();
    v50 = sub_261CFFE84();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_261AE2000, v49, v50, "RemindersInCalendar: check location access", v51, 2u);
      MEMORY[0x26671D560](v51, -1, -1);
    }

    v52 = *(v20 + 24);
    if (v52)
    {
      v0[4] = v52;
      v53 = sub_261CFE164();
      v54 = *(MEMORY[0x277D45CC8] + 4);
      v55 = swift_task_alloc();
      v0[21] = v55;
      *v55 = v0;
      v55[1] = sub_261C642D8;
      v30 = v0[13];
      v32 = MEMORY[0x277D45CF8];
      v31 = v53;

      return MEMORY[0x2821A8240](v30, v31, v32);
    }

    __break(1u);
    goto LABEL_45;
  }

  v21 = v0[12];
  v22 = v0[7];
  v23 = v0[8];
  sub_261C64DDC(v0[14], v21);
  v24 = *(v23 + 48);
  v0[22] = v24;
  v0[23] = (v23 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v24(v21, 1, v22) == 1)
  {
LABEL_8:
    if ((v0[18] & 3) != 0)
    {
      v25 = v0[19];
      v26 = sub_261CFF784();
      v27 = sub_261CFFE84();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261AE2000, v26, v27, "RemindersInCalendar: check and prompt notification access", v28, 2u);
        MEMORY[0x26671D560](v28, -1, -1);
      }

      v29 = v0[20];

      v33 = *(v29 + 24);
      if (v33)
      {
        v0[3] = v33;
        v34 = *(MEMORY[0x277D45CD8] + 4);
        v35 = swift_task_alloc();
        v0[24] = v35;
        v36 = sub_261CFE164();
        *v35 = v0;
        v35[1] = sub_261C64840;
        v37 = MEMORY[0x277D45CF8];

        return MEMORY[0x2821A8250](2, v36, v37);
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_34;
  }

  v56 = (*(v0[8] + 88))(v0[12], v0[7]);
  if (v56 != *MEMORY[0x277D45C10])
  {
    if (v56 != *MEMORY[0x277D45C18])
    {
      v69 = v0[10];

      return sub_261D00604();
    }

    goto LABEL_8;
  }

  if ((v0[18] & 3) != 0)
  {
    v57 = v0[19];
    v58 = sub_261CFF784();
    v59 = sub_261CFFE84();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_261AE2000, v58, v59, "RemindersInCalendar: skip checking notification access; will request open Reminders.", v60, 2u);
      MEMORY[0x26671D560](v60, -1, -1);
    }
  }

LABEL_34:
  v62 = v0[22];
  v61 = v0[23];
  v63 = v0[11];
  v64 = v0[7];
  sub_261C64DDC(v0[14], v63);
  v65 = v62(v63, 1, v64);
  v66 = v0[20];
  if (v65 == 1)
  {
    v67 = v0[15];
    v68 = v0[11];
    sub_261AE6A40(v0[14], &qword_27FEDD7F8, &unk_261D0EE28);

    sub_261AE6A40(v68, &qword_27FEDD7F8, &unk_261D0EE28);
LABEL_20:
    v44 = v0[13];
    v43 = v0[14];
    v46 = v0[11];
    v45 = v0[12];
    v47 = v0[9];

    v48 = v0[1];

    return v48();
  }

  v30 = (*(v0[8] + 32))(v0[9], v0[11], v0[7]);
  v70 = *(v66 + 24);
  if (!v70)
  {
LABEL_46:
    __break(1u);
    return MEMORY[0x2821A8240](v30, v31, v32);
  }

  v0[2] = v70;
  v71 = sub_261CFE164();
  v72 = *(MEMORY[0x277D45CD0] + 4);
  v73 = swift_task_alloc();
  v0[25] = v73;
  *v73 = v0;
  v73[1] = sub_261C64B30;
  v74 = v0[9];
  v75 = MEMORY[0x277D45CF8];

  return MEMORY[0x2821A8248](v74, v71, v75);
}

uint64_t sub_261C642D8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261C643F8, v4, v3);
}

uint64_t sub_261C643F8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_261AE6A40(v2, &qword_27FEDD7F8, &unk_261D0EE28);
  sub_261C64E9C(v1, v2);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_261C64DDC(*(v0 + 112), v3);
  v6 = *(v5 + 48);
  *(v0 + 176) = v6;
  *(v0 + 184) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v4) == 1)
  {
LABEL_2:
    if ((*(v0 + 144) & 3) != 0)
    {
      v7 = *(v0 + 152);
      v8 = sub_261CFF784();
      v9 = sub_261CFFE84();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261AE2000, v8, v9, "RemindersInCalendar: check and prompt notification access", v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
      }

      v11 = *(v0 + 160);

      v12 = *(v11 + 24);
      if (v12)
      {
        *(v0 + 24) = v12;
        v13 = *(MEMORY[0x277D45CD8] + 4);
        v14 = swift_task_alloc();
        *(v0 + 192) = v14;
        sub_261CFE164();
        *v14 = v0;
        v14[1] = sub_261C64840;

LABEL_28:
        JUMPOUT(0x261CFDF64);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  v15 = (*(*(v0 + 64) + 88))(*(v0 + 96), *(v0 + 56));
  if (v15 != *MEMORY[0x277D45C10])
  {
    if (v15 != *MEMORY[0x277D45C18])
    {
      v35 = *(v0 + 80);

      return sub_261D00604();
    }

    goto LABEL_2;
  }

  if ((*(v0 + 144) & 3) != 0)
  {
    v16 = *(v0 + 152);
    v17 = sub_261CFF784();
    v18 = sub_261CFFE84();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261AE2000, v17, v18, "RemindersInCalendar: skip checking notification access; will request open Reminders.", v19, 2u);
      MEMORY[0x26671D560](v19, -1, -1);
    }
  }

LABEL_14:
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 88);
  v23 = *(v0 + 56);
  sub_261C64DDC(*(v0 + 112), v22);
  v24 = v21(v22, 1, v23);
  v25 = *(v0 + 160);
  if (v24 != 1)
  {
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 88), *(v0 + 56));
    v36 = *(v25 + 24);
    if (v36)
    {
      *(v0 + 16) = v36;
      sub_261CFE164();
      v37 = *(MEMORY[0x277D45CD0] + 4);
      v38 = swift_task_alloc();
      *(v0 + 200) = v38;
      *v38 = v0;
      v38[1] = sub_261C64B30;
      v39 = *(v0 + 72);

      JUMPOUT(0x261CFDF54);
    }

    goto LABEL_27;
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 88);
  sub_261AE6A40(*(v0 + 112), &qword_27FEDD7F8, &unk_261D0EE28);

  sub_261AE6A40(v27, &qword_27FEDD7F8, &unk_261D0EE28);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v31 = *(v0 + 88);
  v30 = *(v0 + 96);
  v32 = *(v0 + 72);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_261C64840()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261C64960, v4, v3);
}

uint64_t sub_261C64960()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[11];
  v4 = v0[7];
  sub_261C64DDC(v0[14], v3);
  v5 = v2(v3, 1, v4);
  v6 = v0[20];
  if (v5 != 1)
  {
    (*(v0[8] + 32))(v0[9], v0[11], v0[7]);
    v16 = *(v6 + 24);
    if (v16)
    {
      v0[2] = v16;
      sub_261CFE164();
      v17 = *(MEMORY[0x277D45CD0] + 4);
      v18 = swift_task_alloc();
      v0[25] = v18;
      *v18 = v0;
      v18[1] = sub_261C64B30;
      v19 = v0[9];
    }

    else
    {
      __break(1u);
    }

    JUMPOUT(0x261CFDF54);
  }

  v7 = v0[15];
  v8 = v0[11];
  sub_261AE6A40(v0[14], &qword_27FEDD7F8, &unk_261D0EE28);

  sub_261AE6A40(v8, &qword_27FEDD7F8, &unk_261D0EE28);
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_261C64B30()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261C64C50, v4, v3);
}

uint64_t sub_261C64C50()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  sub_261AE6A40(v3, &qword_27FEDD7F8, &unk_261D0EE28);
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_261C64D40(uint64_t a1)
{
  v2 = sub_261C650F8();
  v3 = sub_261C6514C();

  return MEMORY[0x2821A7D18](a1, v2, v3);
}

unint64_t sub_261C64D90()
{
  result = qword_27FEDD800;
  if (!qword_27FEDD800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDD800);
  }

  return result;
}

uint64_t sub_261C64DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7F8, &unk_261D0EE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261C64E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_261C651A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_261C64E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD7F8, &unk_261D0EE28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261C64F0C()
{
  result = qword_27FEDD808;
  if (!qword_27FEDD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD808);
  }

  return result;
}

unint64_t sub_261C64F98()
{
  result = qword_27FEDD810;
  if (!qword_27FEDD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD810);
  }

  return result;
}

unint64_t sub_261C64FF0()
{
  result = qword_27FEDD818;
  if (!qword_27FEDD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD818);
  }

  return result;
}

unint64_t sub_261C6504C()
{
  result = qword_27FEDD820;
  if (!qword_27FEDD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD820);
  }

  return result;
}

unint64_t sub_261C650A4()
{
  result = qword_27FEDD828;
  if (!qword_27FEDD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD828);
  }

  return result;
}

unint64_t sub_261C650F8()
{
  result = qword_27FEDD830;
  if (!qword_27FEDD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD830);
  }

  return result;
}

unint64_t sub_261C6514C()
{
  result = qword_27FEDD838;
  if (!qword_27FEDD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD838);
  }

  return result;
}

uint64_t sub_261C651A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_261C651DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD840);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD840);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C653A4()
{
  v23 = v0;
  v1 = v0[9];

  if (qword_27FED9C10 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDD840);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = sub_261CFF784();
  v6 = sub_261CFFE84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    sub_261CFCBB4();
    if (v0[2])
    {
      v10 = v0[2];
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v11 = MEMORY[0x26671C340](v10, MEMORY[0x277D837D0]);
    v13 = v12;

    v14 = sub_261B879C8(v11, v13, v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_261AE2000, v5, v6, "[OpenTagsAppIntent] Open tags browser for tags: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  v15 = v0[6];
  *v22 = *(v0 + 7);
  sub_261BC0B8C(v15);
  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    v18 = v0[6];
    sub_261D00034();
  }

  v19 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_261CFC9A4();

  v20 = v0[1];

  return v20();
}

uint64_t sub_261C65600(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C656A0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD858);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD858);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C65810()
{
  v16 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v11 = *(v0 + 56);

  v14 = v11;
  v15 = v2;
  sub_261C65908(&v14, &v12);
  v4 = *(v0 + 40);
  v5 = v13;
  *(v0 + 16) = v12;
  *(v0 + 32) = v5;
  sub_261B84908();
  sub_261CFC994();
  v6 = *(v0 + 16);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_261C65908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v87[3] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC120, &unk_261D092B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v76 - v7;
  v9 = sub_261CFFE24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v83 = a1[1];
  sub_261CFCBB4();
  sub_261CFCA04();
  v15 = v9;
  v16 = v10;

  v17 = v86;
  v18 = **(&unk_279AFA978 + v86);
  sub_261CFFE14();
  v19 = *(v10 + 48);
  v20 = v19(v8, 1, v15);
  v85 = v15;
  if (v20 == 1)
  {
    (*(v10 + 104))(v13, *MEMORY[0x277D459E0], v15);
    v21 = v19(v8, 1, v15);
    v22 = v13;
    if (v21 != 1)
    {
      sub_261C6611C(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v15);
    v22 = v13;
  }

  v23 = *(v3 + 16);
  v24 = v84;
  v25 = sub_261D00124();
  if (!v24)
  {
    v26 = v25;
    v27 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v27 setSaveIsNoopIfNoChangedKeys_];
    v84 = v27;
    v28 = [v27 updateSmartList_];
    sub_261CFCBB4();
    v29 = LOBYTE(v87[0]);
    v30 = sub_261CFFE04();
    if (v30 == 1)
    {
      if (!v29)
      {
        goto LABEL_10;
      }
    }

    else if (v30 == 2 && (v29 & 1) != 0)
    {
      goto LABEL_10;
    }

    sub_261CFCBB4();
    sub_261D00064();
LABEL_10:
    if (qword_27FED9C18 != -1)
    {
      swift_once();
    }

    v31 = v17;
    v32 = sub_261CFF7A4();
    v33 = __swift_project_value_buffer(v32, qword_27FEDD858);
    v34 = v28;
    v35 = sub_261CFF784();
    v36 = sub_261CFFE84();

    v37 = os_log_type_enabled(v35, v36);
    v81 = v34;
    if (v37)
    {
      v77 = v36;
      v79 = v33;
      v80 = v26;
      v76 = v22;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v87[0] = v39;
      v40 = "ers.smartlist.scheduled";
      v41 = 0xD000000000000023;
      *v38 = 136446466;
      v42 = "ers.smartlist.assigned";
      v43 = 0xD000000000000025;
      v44 = "ers.smartlist.completed";
      v45 = 0xD000000000000026;
      if (v31 != 4)
      {
        v45 = 0xD000000000000027;
        v44 = " Hidden Property Title";
      }

      if (v31 != 3)
      {
        v43 = v45;
        v42 = v44;
      }

      v46 = "ers.smartlist.all";
      v47 = 0xD000000000000021;
      if (v31 == 1)
      {
        v47 = 0xD000000000000027;
      }

      else
      {
        v46 = "ers.smartlist.flagged";
      }

      if (v31)
      {
        v41 = v47;
        v40 = v46;
      }

      v78 = v31;
      if (v31 <= 2)
      {
        v48 = v41;
      }

      else
      {
        v48 = v43;
      }

      if (v31 <= 2)
      {
        v49 = v40;
      }

      else
      {
        v49 = v42;
      }

      v50 = sub_261B879C8(v48, v49 | 0x8000000000000000, v87);

      *(v38 + 4) = v50;
      *(v38 + 12) = 2082;
      v51 = [v34 changedKeys];
      sub_261CFFD64();

      v52 = sub_261CFFD74();
      v54 = v53;

      v55 = sub_261B879C8(v52, v54, v87);

      *(v38 + 14) = v55;
      _os_log_impl(&dword_261AE2000, v35, v77, "[UpdateSmartListIntentPerforming] Update non custom smart list properties with id: %{public}s, changedKeys: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v39, -1, -1);
      MEMORY[0x26671D560](v38, -1, -1);

      v22 = v76;
      v26 = v80;
      LOBYTE(v31) = v78;
    }

    else
    {
    }

    v87[0] = 0;
    v56 = v84;
    v57 = [v84 saveSynchronouslyWithError_];
    v58 = v87[0];
    if (v57)
    {
      LOBYTE(v87[0]) = v31;
      v59 = v58;
      sub_261CFCBB4();
      SmartListEntity.init(type:isHidden:)(v87, v86, v82);
    }

    else
    {
      v60 = v87[0];
      v61 = sub_261CFD654();

      swift_willThrow();
      v62 = v61;
      v63 = sub_261CFF784();
      v64 = sub_261CFFE64();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v87[0] = v83;
        *v65 = 136315138;
        swift_getErrorValue();
        v66 = sub_261D00674();
        v68 = v26;
        v69 = v22;
        v70 = sub_261B879C8(v66, v67, v87);

        *(v65 + 4) = v70;
        v22 = v69;
        v26 = v68;
        _os_log_impl(&dword_261AE2000, v63, v64, "[UpdateSmartListIntentPerforming] Update non custom smart list properties failed with save error: %s", v65, 0xCu);
        v71 = v83;
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x26671D560](v71, -1, -1);
        v72 = v65;
        v56 = v84;
        MEMORY[0x26671D560](v72, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v73 = 19;
      swift_willThrow();
    }
  }

  result = (*(v16 + 8))(v22, v85);
  v75 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261C66070(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261C6611C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC120, &unk_261D092B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261C66184()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD870);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD870);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C6634C()
{
  v24 = v0;
  v1 = *(v0 + 64);

  if (qword_27FED9C20 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDD870);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = sub_261CFF784();
  v6 = sub_261CFFE84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    sub_261CFCBB4();
    v23 = *(v0 + 73);
    v10 = SmartListType.title.getter();
    v12 = sub_261B879C8(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_261AE2000, v5, v6, "[OpenSmartListAppIntent] Open smart list with SmartListType: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  sub_261CFCBB4();
  v21 = *(v0 + 72);
  sub_261BC0418(v13);
  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 40);
    sub_261D00034();
  }

  v18 = *(v0 + 16);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  sub_261CFC9A4();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_261C6658C(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void *sub_261C6662C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SectionEntity();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_261CFF1B4() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_261AE6A40(v10, &qword_27FEDA1E0, &unk_261D02300);
    }

    else
    {
      v22 = v30;
      sub_261C6FCC8(v10, v30, type metadata accessor for SectionEntity);
      sub_261C6FCC8(v22, v32, type metadata accessor for SectionEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_261B41C94(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_261B41C94(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_261C6FCC8(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for SectionEntity);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t sub_261C66948@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SectionEntity() + 28));

  return sub_261CFCDA4();
}

uint64_t sub_261C66990()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDD890);
  v1 = __swift_project_value_buffer(v0, qword_27FEDD890);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261C66A58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v86 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v85 = &v63[-v7];
  v78 = sub_261CFD674();
  v88 = *(v78 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for ListEntity();
  v81 = *(v18 - 8);
  v82 = v18;
  v19 = *(v81 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v63[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v63[-v23];
  MEMORY[0x28223BE20](v22);
  v25 = &v63[-v24];
  v72 = &v63[-v24];
  v26 = type metadata accessor for SectionEntityID();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v63[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = [a1 objectID];
  v31 = [v30 entityName];
  v32 = sub_261CFFA74();
  v34 = v33;

  v35 = [v30 uuid];
  v36 = type metadata accessor for AppEntityID();
  v37 = v29 + *(v36 + 20);
  sub_261CFD834();

  v38 = *(v36 + 24);
  v39 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v39 - 8) + 56))(v29 + v38, 1, 1, v39);
  v76 = v29;
  *v29 = v32;
  v29[1] = v34;
  swift_storeEnumTagMultiPayload();
  v40 = [a1 displayName];
  v41 = sub_261CFFA74();
  v79 = v42;
  v80 = v41;

  sub_261B73240([a1 list], v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v77 = sub_261CFCB24();
  v43 = v87;
  *v87 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v68 = sub_261C6F064(&qword_280D227A0, type metadata accessor for ListEntity);
  v74 = sub_261CFCA64();
  v43[1] = v74;
  v44 = type metadata accessor for SectionEntity();
  v69 = *(v44 + 28);
  v65 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v45 = *MEMORY[0x277CC9110];
  v46 = v88 + 104;
  v66 = *(v88 + 104);
  v47 = v75;
  v48 = v78;
  v66(v75, v45, v78);
  v88 = v46;
  v49 = v71;
  sub_261CFD6B4();
  v70 = MEMORY[0x2667199E0](v49, &type metadata for UpdateSectionDisplayNameAppIntent);
  *(v43 + v69) = v70;
  v67 = *(v44 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v50 = v45;
  v51 = v45;
  v64 = v45;
  v52 = v48;
  v53 = v66;
  v66(v47, v50, v48);
  sub_261CFD6B4();
  v69 = MEMORY[0x2667199F0](v49, &type metadata for UpdateSectionIsCollapsedAppIntent);
  v54 = v87;
  *(v87 + v67) = v69;
  v55 = v65;
  v67 = *(v65 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v53(v47, v51, v52);
  sub_261CFD6C4();
  v68 = sub_261CFCA54();
  *(v54 + v67) = v68;
  v67 = *(v55 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v53(v47, v64, v52);
  sub_261CFD6C4();
  sub_261C6F064(&qword_280D22358, type metadata accessor for ReminderEntity);
  *(v54 + v67) = sub_261CFCA54();
  v56 = v76;
  sub_261C6F0D4(v76, v54 + *(v55 + 24), type metadata accessor for SectionEntityID);
  v57 = v72;
  v58 = v85;
  sub_261C6F0D4(v72, v85, type metadata accessor for ListEntity);
  (*(v81 + 56))(v58, 0, 1, v82);
  sub_261AFB668(v58, v86, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v58, &unk_27FEDE0C0, &unk_261D02500);
  v59 = v80;
  v89 = v80;
  v90 = v79;
  v60 = v79;
  sub_261CFD104();
  sub_261CFD2E4();
  LOBYTE(v89) = 0;
  sub_261CFD2E4();
  v89 = v59;
  v90 = v60;
  sub_261CFCA14();
  v61 = v83;
  sub_261C6F0D4(v57, v83, type metadata accessor for ListEntity);
  sub_261C6F0D4(v61, v84, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261C6F13C(v61, type metadata accessor for ListEntity);
  sub_261C6F13C(v57, type metadata accessor for ListEntity);
  return sub_261C6F13C(v56, type metadata accessor for SectionEntityID);
}