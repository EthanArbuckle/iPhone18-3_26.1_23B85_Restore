uint64_t sub_261B87C60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261B87CBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_261B87D08(a1, a2);
  sub_261B87E38(&unk_287440910);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_261B87D08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_261BD0BA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_261D00364();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_261CFFB64();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_261BD0BA4(v10, 0);
        result = sub_261D00324();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_261B87E38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_261B87F24(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_261B87F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB200, &unk_261D085F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_261B88018(uint64_t a1)
{
  v1 = a1;
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00274();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x277D84F90];
    sub_261D003A4();
    result = sub_261D00414();
    v24 = result;
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  sub_261D003A4();
  v5 = -1 << *(v1 + 32);
  result = sub_261D001E4();
  v6 = *(v1 + 36);
  v24 = result;
  v25 = v6;
  v26 = 0;
LABEL_7:
  v7 = 0;
  v21 = v2;
  while (v7 < v2)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v24;
    v16 = v25;
    v17 = v26;
    sub_261CB66A8(v24, v25, v26, v1);
    v18 = v1;
    sub_261D00374();
    v19 = *(v27 + 16);
    sub_261D003B4();
    sub_261D003C4();
    result = sub_261D00384();
    if (v22)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_261D00444())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB250, &qword_261D05748);
      v20 = sub_261CFF924();
      sub_261D004D4();
      result = v20(v23, 0);
    }

    else
    {
      sub_261CB6544(v15, v16, v17, v1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_261B91FE4(v15, v16, v17);
      v24 = v9;
      v25 = v11;
      v26 = v13 & 1;
      v1 = v18;
      v2 = v21;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_261B91FE4(v24, v25, v26);
      return v27;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_261B88278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v52 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v47 - v10);
  v53 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = sub_261D00274();
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v66 = MEMORY[0x277D84F90];
  sub_261B39DFC(0, v12 & ~(v12 >> 63), 0);
  v13 = v66;
  if (v53)
  {
    result = sub_261D00414();
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    result = sub_261D001E4();
    v15 = *(a1 + 36);
  }

  v63 = result;
  v64 = v15;
  v65 = v53 != 0;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v47[0] = v1;
    v17 = 0;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v18 = a1;
    }

    v47[1] = v18;
    v19 = &unk_279AFB000;
    v54 = v11;
    v48 = v12;
    v49 = a1;
    while (v17 < v12)
    {
      if (__OFADD__(v17, 1))
      {
        goto LABEL_29;
      }

      v60 = v13;
      v55 = v63;
      v56 = v64;
      v57 = v17 + 1;
      v59 = v65;
      sub_261CB66A8(v63, v64, v65, a1);
      v32 = v31;
      *v11 = [v31 objectID];
      v33 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v33 - 8) + 56))(v61, 1, 1, v33);
      v58 = [v32 v19[84]];
      v34 = [v32 list];
      v35 = [v34 v19[84]];

      v36 = sub_261CFFDF4();
      v37 = [v32 parentReminder];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 v19[84]];
      }

      else
      {
        v39 = 0;
      }

      v40 = v52;
      v41 = *(v51 + 48);
      v42 = v61;
      sub_261AE7A78(v61, v52);
      v11 = v54;
      sub_261C7EDC4(v58, v35, v36, v39, 0, v40, (v54 + v41));
      sub_261AE6A40(v42, &qword_27FEDA108, &unk_261D020C0);

      v13 = v60;
      v66 = v60;
      v44 = *(v60 + 16);
      v43 = *(v60 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_261B39DFC(v43 > 1, v44 + 1, 1);
        v13 = v66;
      }

      *(v13 + 16) = v44 + 1;
      result = sub_261B91F74(v11, v13 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v44);
      a1 = v49;
      if (v53)
      {
        if (!v59)
        {
          goto LABEL_31;
        }

        v45 = sub_261D00444();
        v12 = v48;
        if (v45)
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB250, &qword_261D05748);
        v46 = sub_261CFF924();
        sub_261D004D4();
        result = v46(v62, 0);
      }

      else
      {
        v21 = v55;
        v20 = v56;
        v22 = v49;
        v23 = v59;
        sub_261CB6544(v55, v56, v59, v49);
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v30 = v23;
        a1 = v22;
        result = sub_261B91FE4(v21, v20, v30);
        v63 = v25;
        v64 = v27;
        v11 = v54;
        v65 = v29 & 1;
        v12 = v48;
      }

      v19 = &unk_279AFB000;
      ++v17;
      if (v57 == v12)
      {
        sub_261B91FE4(v63, v64, v65);
        return v13;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_261B88780(uint64_t a1, uint64_t *a2)
{
  v38 = a2;
  v37 = type metadata accessor for ReminderEntity();
  v3 = *(*(v37 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v8 + 72);
  v33 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = a1 + v33;
  v13 = type metadata accessor for AppEntityID();
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = *(v37 + 40);
    v16 = v15 + *(v13 + 20);
    v17 = *(v12 + v15);
    v18 = *(v12 + v15 + 8);
    v19 = objc_allocWithZone(MEMORY[0x277D44700]);
    v20 = sub_261CFD814();
    v21 = sub_261CFFA54();
    v22 = [v19 initWithUUID:v20 entityName:v21];

    v23 = *v38;
    if (*(*v38 + 16) && (v24 = sub_261B37CA4(v22), (v25 & 1) != 0))
    {
      v26 = *(v23 + 56) + v24 * v11;
      v27 = v35;
      sub_261B4C910(v26, v35);

      v28 = v34;
      sub_261B837B0(v27, v34);
      sub_261B837B0(v28, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_261B41560(0, v14[2] + 1, 1, v14);
      }

      v30 = v14[2];
      v29 = v14[3];
      if (v30 >= v29 >> 1)
      {
        v14 = sub_261B41560(v29 > 1, v30 + 1, 1, v14);
      }

      v14[2] = v30 + 1;
      sub_261B837B0(v36, v14 + v33 + v30 * v11);
    }

    else
    {
    }

    v12 += v11;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_261B88A1C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB208);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB208);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B88B98()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v3;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v4 = sub_261CFE5B4();
  v5 = sub_261CFE494();
  v6 = MEMORY[0x277D45E18];
  *(v0 + 80) = v4;
  *(v0 + 88) = v6;
  *(v0 + 56) = v5;
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_261B88C80;
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);

  return sub_261B88E6C(v8, v0 + 16, v0 + 56);
}

uint64_t sub_261B88C80()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v8 = *v1;
  (*v1)[22] = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_261B88E00;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_261B88D9C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261B88D9C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261B88E00()
{
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t sub_261B88E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a1;
  v6 = sub_261CFC9D4();
  *(v4 + 128) = v6;
  v7 = *(v6 - 8);
  *(v4 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v9 = *(type metadata accessor for ReminderEntity() - 8);
  *(v4 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v12 = sub_261CFD754();
  *(v4 + 176) = v12;
  v13 = *(v12 - 8);
  *(v4 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = *a2;
  *(v4 + 232) = *(a2 + 16);
  *(v4 + 332) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_261B8907C, 0, 0);
}

uint64_t sub_261B8907C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 120);
  sub_261CFCBB4();
  *(v0 + 240) = *(v0 + 88);
  sub_261CFCBB4();
  *(v0 + 333) = *(v0 + 328);
  sub_261CFCBB4();
  v6 = *(v5 + 16);
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_261B89178;
  v8 = *(v0 + 208);

  return sub_261B49814(v8, v6);
}

uint64_t sub_261B89178(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 248);
  v6 = *(*v3 + 208);
  v10 = *v3;
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = v2;

  sub_261AE6A40(v6, &unk_27FEDE0C0, &unk_261D02500);
  if (v2)
  {
    v7 = v4[30];

    v8 = sub_261B89484;
  }

  else
  {
    v8 = sub_261B892D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_261B892D0()
{
  v1 = *(v0 + 264);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    *(v0 + 329) = *(v0 + 333);
    v2 = swift_task_alloc();
    *(v0 + 312) = v2;
    *v2 = v0;
    v2[1] = sub_261B89ED0;
    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = (v0 + 329);
    v6 = *(v0 + 240);
    v7 = 0;
    v8 = 0;
LABEL_5:

    return sub_261B8A4A8(v6, v7, v5, v8, v3);
  }

  v9 = *(v0 + 256);
  v10 = *(v0 + 333);
  if ((v1 & 0x8000000000000000) == 0)
  {
    *(v0 + 331) = v10;
    sub_261B49FA0(v9, v1);
    v11 = swift_task_alloc();
    *(v0 + 280) = v11;
    *v11 = v0;
    v11[1] = sub_261B8952C;
    v7 = *(v0 + 256);
    v3 = *(v0 + 112);
    v12 = *(v0 + 120);
    v8 = *(v0 + 332);
    v5 = (v0 + 331);
    v6 = *(v0 + 240);
    goto LABEL_5;
  }

  *(v0 + 330) = v10;
  v14 = v9;
  sub_261B91F60(v9, v1);
  v15 = swift_task_alloc();
  *(v0 + 296) = v15;
  *v15 = v0;
  v15[1] = sub_261B899A0;
  v16 = *(v0 + 240);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);

  return sub_261B90474(v16, v14, (v0 + 330), v17);
}

uint64_t sub_261B89484()
{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_261B8952C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[35];
  v9 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v6 = v4[30];

    v7 = sub_261B8A33C;
  }

  else
  {
    v7 = sub_261B89650;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261B89650()
{
  sub_261B4AC84(*(v0 + 256), *(v0 + 264));
  v35 = *(v0 + 24);
  v1 = *(v0 + 240);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(*(v0 + 152) + 80);
    sub_261B4C910(v1 + ((v7 + 32) & ~v7), v5);

    sub_261BBF818(0, v6);
    sub_261B4C974(v5);
    (*(v4 + 56))(v6, 0, 1, v3);
    (*(v4 + 32))(v2, v6, v3);
    v8 = *(v4 + 16);
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 240);

    (*(v10 + 56))(v11, 1, 1, v9);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = __swift_project_value_buffer(v14, qword_27FEDB8A8);
    v18 = v13;
    v19 = *(v15 + 16);
    v19(v18, v17, v14);
    if ((*(v15 + 48))(v16, 1, v14) != 1)
    {
      sub_261AE6A40(*(v0 + 168), &qword_27FEDB238, &unk_261D056F0);
    }

    v8 = v19;
  }

  v20 = *(v0 + 200);
  v31 = *(v0 + 264);
  v32 = *(v0 + 208);
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  v29 = *(v0 + 256);
  v30 = *(v0 + 176);
  v33 = *(v0 + 168);
  v34 = *(v0 + 160);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 128);
  v28 = *(v0 + 104);
  *(v0 + 96) = v35;
  v8(v21, v20);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
  sub_261CFC974();
  sub_261B4AC84(v29, v31);
  (*(v24 + 8))(v23, v25);

  (*(v22 + 8))(v20, v30);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_261B899A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 40) = v2;
  *(v4 + 48) = a1;
  *(v4 + 56) = v1;
  v5 = *(v3 + 296);
  v9 = *v2;
  *(v4 + 304) = v1;

  if (v1)
  {
    v6 = *(v4 + 240);
    sub_261B4AC84(*(v4 + 256), *(v4 + 264));

    v7 = sub_261B89E20;
  }

  else
  {
    v7 = sub_261B89AD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261B89AD0()
{
  sub_261B4AC84(*(v0 + 256), *(v0 + 264));
  v35 = *(v0 + 48);
  v1 = *(v0 + 240);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(*(v0 + 152) + 80);
    sub_261B4C910(v1 + ((v7 + 32) & ~v7), v5);

    sub_261BBF818(0, v6);
    sub_261B4C974(v5);
    (*(v4 + 56))(v6, 0, 1, v3);
    (*(v4 + 32))(v2, v6, v3);
    v8 = *(v4 + 16);
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 240);

    (*(v10 + 56))(v11, 1, 1, v9);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = __swift_project_value_buffer(v14, qword_27FEDB8A8);
    v18 = v13;
    v19 = *(v15 + 16);
    v19(v18, v17, v14);
    if ((*(v15 + 48))(v16, 1, v14) != 1)
    {
      sub_261AE6A40(*(v0 + 168), &qword_27FEDB238, &unk_261D056F0);
    }

    v8 = v19;
  }

  v20 = *(v0 + 200);
  v31 = *(v0 + 264);
  v32 = *(v0 + 208);
  v22 = *(v0 + 184);
  v21 = *(v0 + 192);
  v29 = *(v0 + 256);
  v30 = *(v0 + 176);
  v33 = *(v0 + 168);
  v34 = *(v0 + 160);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 128);
  v28 = *(v0 + 104);
  *(v0 + 96) = v35;
  v8(v21, v20);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
  sub_261CFC974();
  sub_261B4AC84(v29, v31);
  (*(v24 + 8))(v23, v25);

  (*(v22 + 8))(v20, v30);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_261B89E20()
{
  sub_261B4AC84(*(v0 + 256), *(v0 + 264));
  v1 = *(v0 + 304);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_261B89ED0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[39];
  v9 = *v2;
  v4[40] = v1;

  if (v1)
  {
    v6 = v4[30];

    v7 = sub_261B8A400;
  }

  else
  {
    v7 = sub_261B89FF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261B89FF4()
{
  v35 = v0[9];
  v1 = v0[30];
  if (*(v1 + 16))
  {
    v2 = v0[25];
    v3 = v0[22];
    v4 = v0[23];
    v5 = v0[20];
    v6 = v0[21];
    v7 = *(v0[19] + 80);
    sub_261B4C910(v1 + ((v7 + 32) & ~v7), v5);

    sub_261BBF818(0, v6);
    sub_261B4C974(v5);
    (*(v4 + 56))(v6, 0, 1, v3);
    (*(v4 + 32))(v2, v6, v3);
    v8 = *(v4 + 16);
  }

  else
  {
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[21];
    v12 = v0[30];

    (*(v10 + 56))(v11, 1, 1, v9);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v13 = v0[25];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[21];
    v17 = __swift_project_value_buffer(v14, qword_27FEDB8A8);
    v18 = v13;
    v19 = *(v15 + 16);
    v19(v18, v17, v14);
    if ((*(v15 + 48))(v16, 1, v14) != 1)
    {
      sub_261AE6A40(v0[21], &qword_27FEDB238, &unk_261D056F0);
    }

    v8 = v19;
  }

  v20 = v0[25];
  v31 = v0[33];
  v32 = v0[26];
  v22 = v0[23];
  v21 = v0[24];
  v29 = v0[32];
  v30 = v0[22];
  v33 = v0[21];
  v34 = v0[20];
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[16];
  v28 = v0[13];
  v0[12] = v35;
  v8(v21, v20);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
  sub_261CFC974();
  sub_261B4AC84(v29, v31);
  (*(v24 + 8))(v23, v25);

  (*(v22 + 8))(v20, v30);

  v26 = v0[1];

  return v26();
}

uint64_t sub_261B8A33C()
{
  v1 = v0[32];
  v2 = v0[33];
  sub_261B4AC84(v1, v2);
  sub_261B4AC84(v1, v2);
  v3 = v0[36];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_261B8A400()
{
  v1 = v0[40];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_261B8A4A8(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 256) = a4;
  *(v6 + 104) = a1;
  *(v6 + 112) = a2;
  v8 = sub_261CFDEA4();
  *(v6 + 136) = v8;
  v9 = *(v8 - 8);
  *(v6 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v11 = sub_261CFE8C4();
  *(v6 + 160) = v11;
  v12 = *(v11 - 8);
  *(v6 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  v14 = sub_261CFDC34();
  *(v6 + 184) = v14;
  v15 = *(v14 - 8);
  *(v6 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  v17 = sub_261CFF1F4();
  *(v6 + 208) = v17;
  v18 = *(v17 - 8);
  *(v6 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v20 = type metadata accessor for ReminderEntity();
  *(v6 + 232) = v20;
  v21 = *(v20 - 8);
  *(v6 + 240) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 257) = *a3;
  v23 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B8A720, 0, 0);
}

uint64_t sub_261B8A720()
{
  v166 = v0;
  v165[5] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 128) + 24);
  sub_261B9DCEC();
  v5 = sub_261B9BAD4(3, v3, v4);
  v6 = *(v0 + 257);

  sub_261CFD104();
  v7 = v5;
  if ((v6 & 1) == 0)
  {
    v7 = sub_261B491CC(v5);
  }

  v159 = v5;
  v8 = *(v7 + 16);
  v161 = v0;
  if (v8)
  {
    v10 = *(v0 + 232);
    v9 = *(v0 + 240);
    v165[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    do
    {
      v13 = *(v0 + 248);
      sub_261B4C910(v11, v13);
      v14 = (v13 + *(v10 + 40));
      v15 = *(type metadata accessor for AppEntityID() + 20);
      v16 = *v14;
      v17 = v14[1];
      v18 = objc_allocWithZone(MEMORY[0x277D44700]);
      v19 = sub_261CFD814();
      v20 = sub_261CFFA54();
      [v18 initWithUUID:v19 entityName:v20];

      sub_261B4C974(v13);
      sub_261D00374();
      v21 = *(v165[0] + 2);
      sub_261D003B4();
      v0 = v161;
      sub_261D003C4();
      sub_261D00384();
      v11 += v12;
      --v8;
    }

    while (v8);

    v22 = v165[0];
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  if (qword_27FED9950 == -1)
  {
    goto LABEL_11;
  }

LABEL_90:
  swift_once();
LABEL_11:
  v23 = *(v0 + 112);
  v24 = sub_261CFF7A4();
  __swift_project_value_buffer(v24, qword_27FEDB208);
  v25 = v23;
  sub_261CFD104();
  v26 = sub_261CFF784();
  v27 = sub_261CFFE84();

  v158 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v28 = 7104878;
    v29 = *(v0 + 112);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v165[0] = v31;
    *v30 = 136446722;
    v32 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v33 = MEMORY[0x26671C340](v22, v32);
    v35 = sub_261B879C8(v33, v34, v165);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    if (v29 && (v36 = [v25 objectID]) != 0)
    {
      v37 = v161;
      *(v161 + 96) = v36;
      v28 = sub_261CFFAB4();
      v39 = v38;
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = v161;
    }

    v40 = *(v37 + 257);
    v41 = sub_261B879C8(v28, v39, v165);

    *(v30 + 14) = v41;
    *(v30 + 22) = 2082;
    if (v40)
    {
      v42 = 0x6D6F74746F62;
    }

    else
    {
      v42 = 7368564;
    }

    if (v40)
    {
      v43 = 0xE600000000000000;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v44 = sub_261B879C8(v42, v43, v165);

    *(v30 + 24) = v44;
    _os_log_impl(&dword_261AE2000, v26, v27, "[MoveRemindersToListAppIntent] Move reminders to list {reminderIDs: %{public}s, resolvedTargetList: %s, insertPosition: %{public}s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v31, -1, -1);
    MEMORY[0x26671D560](v30, -1, -1);
  }

  v45 = sub_261CFD104();
  v46 = sub_261B49D78(v45);

  v47 = sub_261CFC0B8();
  v56 = v161;
  v57 = *(v161 + 128);
  v58 = *(v161 + 112);
  v59 = 0;
  v160 = sub_261B8EB3C(v47, v46);

  v60 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v60 setSaveIsNoopIfNoChangedKeys_];
  v61 = MEMORY[0x277D84F98];
  v162 = MEMORY[0x277D84F98];
  v164 = 0;
  v149 = v58;
  if (!v58)
  {
    v70 = MEMORY[0x277D84F98];
    goto LABEL_34;
  }

  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_261D030F0;
  *(v63 + 32) = v158;
  v64 = v158;
  sub_261CFFE94();

  sub_261CFDD24();
  *(v161 + 88) = v64;
  memset(v165, 0, 40);
  v65 = v64;
  v66 = v60;
  sub_261CFDF24();
  v67 = *(v161 + 80);
  v164 = v67;
  sub_261CFCDA4();
  v68 = [v65 objectID];
  if (!(v61 >> 62))
  {
    v69 = v162;
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165[0] = v69;
    sub_261BF83B0(v67, v68, isUniquelyReferenced_nonNull_native);

    v70 = v165[0];
    v162 = v165[0];
    v59 = 0;
LABEL_34:
    v62 = v70;
    v163[0] = v61;
    if (!(v22 >> 62))
    {
      v73 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }

    goto LABEL_95;
  }

  v71 = sub_261D00274();
  if (!__OFADD__(v71, 1))
  {
    v69 = sub_261CA248C(MEMORY[0x277D84F98], v71 + 1);
    goto LABEL_33;
  }

  __break(1u);
LABEL_98:
  for (i = sub_261D00274(); i; i = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v59 = 0;
    v160 = v61 & 0xC000000000000001;
    v157 = v61 & 0xFFFFFFFFFFFFFF8;
    v22 = &unk_279AFB000;
    while (1)
    {
      if (v160)
      {
        v109 = MEMORY[0x26671CA10](v59, v61);
      }

      else
      {
        if (v59 >= *(v157 + 16))
        {
          goto LABEL_93;
        }

        v109 = *(v61 + 8 * v59 + 32);
      }

      v60 = v109;
      v62 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      v110 = i;
      v111 = v61;
      v112 = [v109 list];
      v113 = [v112 objectID];

      v114 = v67;
      v115 = [v67 objectID];
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      LOBYTE(v112) = sub_261D000F4();

      if (v112)
      {
      }

      else
      {
        sub_261D00374();
        v107 = *(v165[0] + 2);
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      i = v110;
      ++v59;
      v108 = v62 == v110;
      v56 = v161;
      v67 = v114;
      v61 = v111;
      if (v108)
      {
        v122 = v165[0];
        v68 = v158;
        goto LABEL_100;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      v73 = sub_261D00274();
LABEL_36:
      v74 = *(v56 + 128);
      v150 = v158;
      v75 = v60;
      sub_261CFD104();
      sub_261CFCDA4();
      v158 = v75;
      if (!v73)
      {
        v60 = v59;
        v81 = v62;
        goto LABEL_45;
      }

      v76 = *(v56 + 257);
      v62 = v22 & 0xC000000000000001;
      if ((v22 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v77 = *(v22 + 32);
        goto LABEL_40;
      }

LABEL_91:
      __break(1u);
    }

    v77 = MEMORY[0x26671CA10](0, v22);
LABEL_40:
    v78 = v77;
    v79 = *(v161 + 112);
    v165[0] = v77;
    sub_261B8F424(v165, v160, v158, v79, v76, &v164, &v162, v163);
    v60 = v59;
    if (v59)
    {
      v56 = v161;
      v80 = *(v161 + 128);

      swift_bridgeObjectRelease_n();

      goto LABEL_2;
    }

    if (v73 != 1)
    {
      v56 = 5;
      do
      {
        v116 = v56 - 4;
        if (v62)
        {
          v117 = MEMORY[0x26671CA10](v56 - 4, v22);
        }

        else
        {
          if (v116 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

          v117 = *(v22 + 8 * v56);
        }

        v118 = v117;
        v119 = __OFADD__(v116, 1);
        v120 = v56 - 3;
        if (v119)
        {
          goto LABEL_94;
        }

        v121 = *(v161 + 112);
        v165[0] = v117;
        v59 = 0;
        sub_261B8F424(v165, v160, v158, v121, v76, &v164, &v162, v163);
        v60 = 0;

        ++v56;
      }

      while (v120 != v73);
    }

    v56 = v161;
    v81 = v162;
    v82 = *(v161 + 128);
    v75 = v158;
LABEL_45:

    if ((v81 & 0xC000000000000001) != 0)
    {
      v83 = sub_261D00424();
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = v83 | 0x8000000000000000;
    }

    else
    {
      v88 = -1 << *(v81 + 32);
      v85 = ~v88;
      v84 = v81 + 64;
      v89 = -v88;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      else
      {
        v90 = -1;
      }

      v86 = v90 & *(v81 + 64);
      v87 = v81;
    }

    v91 = *(v56 + 216);
    v22 = (v85 + 64) >> 6;
    v156 = *MEMORY[0x277D44BF0];
    v154 = *MEMORY[0x277D45E90];
    v152 = (v91 + 104);
    v92 = (v91 + 8);
    swift_bridgeObjectRetain_n();
    v62 = 0;
    if ((v87 & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_52:
    v93 = v62;
    v94 = v86;
    v0 = v62;
    if (!v86)
    {
      while (1)
      {
        v0 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          break;
        }

        if (v0 >= v22)
        {
          goto LABEL_62;
        }

        v94 = *(v84 + 8 * v0);
        ++v93;
        if (v94)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

LABEL_56:
    v95 = (v94 - 1) & v94;
    v96 = *(*(v87 + 56) + ((v0 << 9) | (8 * __clz(__rbit64(v94)))));
    sub_261CFCDA4();
    if (v96)
    {
      while (1)
      {
        v99 = v87;
        v100 = *(v161 + 224);
        v101 = *(v161 + 208);
        (*v152)(v100, v154, v101);
        sub_261CFDCF4();

        v102 = v100;
        v87 = v99;
        (*v92)(v102, v101);
        v62 = v0;
        v86 = v95;
        if ((v87 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_58:
        if (sub_261D004B4())
        {
          v98 = v97;
          swift_unknownObjectRelease();
          *(v161 + 72) = v98;
          sub_261CFDD24();
          swift_dynamicCast();
          v0 = v62;
          v95 = v86;
          if (*(v161 + 64))
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_62:
    sub_261B57B30();

    if (!v149)
    {

      v56 = v161;
      v68 = v158;
      goto LABEL_106;
    }

    v67 = v150;
    v103 = sub_261D000B4();
    v104 = [v103 supportsSections];

    v56 = v161;
    v68 = v158;
    if ((v104 & 1) == 0)
    {

      goto LABEL_106;
    }

    v105 = *(v161 + 256);
    v61 = sub_261B88018(v160);

    if (v105 != 2 && (*(v161 + 256) & 1) != 0)
    {
      goto LABEL_101;
    }

    v165[0] = MEMORY[0x277D84F90];
    if (v61 >> 62)
    {
      goto LABEL_98;
    }
  }

  v122 = MEMORY[0x277D84F90];
LABEL_100:

  v61 = v122;
LABEL_101:
  if (v61 >> 62)
  {
    if (!sub_261D00274())
    {
      goto LABEL_105;
    }

LABEL_103:
    v124 = *(v56 + 192);
    v123 = *(v56 + 200);
    v125 = *(v56 + 184);
    v155 = v125;
    v151 = v67;
    v127 = *(v56 + 168);
    v126 = *(v56 + 176);
    v128 = *(v56 + 152);
    v153 = *(v56 + 160);
    v129 = *(v161 + 144);
    v130 = *(v161 + 136);
    sub_261AE498C(*(v161 + 120), v161 + 16);
    v131 = sub_261CFE7F4();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    sub_261CFE7E4();
    sub_261CFE7D4();
    (*(v124 + 104))(v123, *MEMORY[0x277D45C30], v125);
    *v126 = v151;
    (*(v127 + 104))(v126, *MEMORY[0x277D45E80], v153);
    *v128 = v158;
    (*(v129 + 104))(v128, *MEMORY[0x277D45CB0], v130);
    v134 = v151;
    v135 = v158;
    MEMORY[0x26671AE80](v61, v123, v126, 0, v128);

    (*(v129 + 8))(v128, v130);
    v56 = v161;
    (*(v127 + 8))(v126, v153);
    (*(v124 + 8))(v123, v155);
    v68 = v158;
  }

  else
  {
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_103;
    }

LABEL_105:
  }

LABEL_106:
  *(v56 + 56) = 0;
  v136 = [v68 saveSynchronouslyWithError_];
  v137 = *(v56 + 56);
  if (!v136)
  {
    v148 = v137;

    sub_261CFD654();

    swift_willThrow();

LABEL_2:

    v48 = *(v56 + 248);
    v49 = *(v56 + 224);
    v50 = *(v56 + 200);
    v51 = *(v56 + 176);
    v52 = *(v56 + 152);

    v53 = *(v56 + 8);
    v54 = *MEMORY[0x277D85DE8];

    return v53();
  }

  v138 = *(v56 + 248);
  v139 = v68;
  v140 = *(v56 + 224);
  v141 = *(v56 + 200);
  v142 = *(v56 + 176);
  v143 = *(v56 + 152);
  v144 = v137;
  v145 = sub_261B88780(v159, v163);

  v146 = *(v56 + 8);
  v147 = *MEMORY[0x277D85DE8];

  return v146(v145);
}

uint64_t sub_261B8B708(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B8B7B4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x277D84F98];
    v36 = MEMORY[0x277D84F98];
    sub_261D00424();
    v2 = sub_261D004B4();
    if (v2)
    {
      v3 = v2;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v4 = v3;
      v5 = MEMORY[0x277D84F68];
      v6 = &qword_27FEDDF20;
      do
      {
        v34 = v4;
        swift_dynamicCast();
        sub_261B05020(0, v6, 0x277D44750);
        swift_dynamicCast();
        if (!v35)
        {
          break;
        }

        v7 = v35;
        v8 = v34;
        if ([v8 isSubtask])
        {
          if (qword_27FED9950 != -1)
          {
            swift_once();
          }

          v9 = sub_261CFF7A4();
          __swift_project_value_buffer(v9, qword_27FEDB208);
          v10 = v7;
          v11 = v8;
          v12 = sub_261CFF784();
          v13 = sub_261CFFE54();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = v5;
            v15 = swift_slowAlloc();
            v16 = v6;
            v17 = swift_slowAlloc();
            *v15 = 138543362;
            v18 = [v11 objectID];
            *(v15 + 4) = v18;
            *v17 = v18;
            _os_log_impl(&dword_261AE2000, v12, v13, "[MoveRemindersToListAppIntent] Moving subtask to CSL is not supported {reminderID: %{public}@}", v15, 0xCu);
            sub_261AE6A40(v17, &unk_27FEDA730, &unk_261D035C0);
            v19 = v17;
            v6 = v16;
            MEMORY[0x26671D560](v19, -1, -1);
            v20 = v15;
            v5 = v14;
            MEMORY[0x26671D560](v20, -1, -1);
          }
        }

        else
        {

          v21 = *(v1 + 16);
          if (*(v1 + 24) <= v21)
          {
            sub_261CA2930(v21 + 1, 1);
          }

          v1 = v36;
          v22 = *(v36 + 40);
          result = sub_261D000E4();
          v24 = v36 + 64;
          v25 = -1 << *(v36 + 32);
          v26 = result & ~v25;
          v27 = v26 >> 6;
          if (((-1 << v26) & ~*(v36 + 64 + 8 * (v26 >> 6))) != 0)
          {
            v28 = __clz(__rbit64((-1 << v26) & ~*(v36 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = 0;
            v30 = (63 - v25) >> 6;
            do
            {
              if (++v27 == v30 && (v29 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v31 = v27 == v30;
              if (v27 == v30)
              {
                v27 = 0;
              }

              v29 |= v31;
              v32 = *(v24 + 8 * v27);
            }

            while (v32 == -1);
            v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          }

          *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
          *(*(v36 + 48) + 8 * v28) = v7;
          *(*(v36 + 56) + 8 * v28) = v8;
          ++*(v36 + 16);
        }

        v4 = sub_261D004B4();
      }

      while (v4);
    }

    sub_261B57B30();
  }

  else
  {
    sub_261B8DF24(a1);
    v1 = v33;
  }

  return v1;
}

uint64_t sub_261B8BBA0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  v7 = type metadata accessor for ReminderEntity();
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 265) = *a3;
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B8BCC8, 0, 0);
}

uint64_t sub_261B8BCC8()
{
  v122 = v0;
  v121[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v116 = v2;
  if (v2)
  {
    v4 = v0[18];
    v118 = v0[17];
    v121[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = v0;
    v7 = *(v4 + 72);
    v8 = v2;
    do
    {
      v9 = v6[22];
      sub_261B4C910(v5, v9);
      v10 = (v9 + *(v118 + 40));
      v11 = *(type metadata accessor for AppEntityID() + 20);
      v12 = *v10;
      v13 = v10[1];
      v14 = objc_allocWithZone(MEMORY[0x277D44700]);
      v15 = sub_261CFD814();
      v16 = sub_261CFFA54();
      [v14 initWithUUID:v15 entityName:v16];

      sub_261B4C974(v9);
      sub_261D00374();
      v17 = *(v121[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v5 += v7;
      --v8;
    }

    while (v8);
    v18 = v121[0];
    v0 = v6;
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = v0[16];
  v0[5] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
  sub_261B91FF0(&qword_27FEDD910, &unk_27FEDE100, &qword_261D05750);
  sub_261B3B918();
  v0[23] = sub_261CFFC34();

  v0[24] = *(v19 + 24);
  v20 = sub_261CFC0B8();
  v21 = sub_261B8B7B4(v20);
  v117 = v0;
  v0[25] = v21;
  v121[0] = v3;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = sub_261D00424();
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = v22 | 0x8000000000000000;
  }

  else
  {
    v27 = -1 << *(v21 + 32);
    v24 = ~v27;
    v23 = v21 + 64;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & *(v21 + 64);
    v26 = v21;
  }

  v30 = (v24 + 64) >> 6;
  sub_261CFD104();
  v31 = 0;
  v32 = &unk_279AFB000;
  while ((v26 & 0x8000000000000000) == 0)
  {
    v33 = v31;
    v34 = v25;
    v35 = v31;
    if (!v25)
    {
      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v35 >= v30)
        {
          goto LABEL_26;
        }

        v34 = *(v23 + 8 * v35);
        ++v33;
        if (v34)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_48;
    }

LABEL_20:
    v36 = (v34 - 1) & v34;
    v37 = *(*(v26 + 56) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
    if (!v37)
    {
      goto LABEL_26;
    }

LABEL_24:
    v40 = sub_261CFFDF4();
    v41 = [v40 supportsCustomSmartLists];

    if (v41)
    {
    }

    else
    {
      sub_261D00374();
      v42 = *(v121[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    v31 = v35;
    v25 = v36;
  }

  if (sub_261D004B4())
  {
    v39 = v38;
    swift_unknownObjectRelease();
    *(v117 + 12) = v39;
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    swift_dynamicCast();
    v37 = *(v117 + 11);
    v35 = v31;
    v36 = v25;
    if (v37)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  sub_261B57B30();
  v32 = v117;
  *(v117 + 6) = v121[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB258, &qword_261D05758);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261B91FF0(&qword_27FEDB260, &qword_27FEDB258, &qword_261D05758);
  v43 = sub_261CFFC24();
  *(v117 + 26) = v43;

  if (v116)
  {
    v44 = 0;
    v45 = *(v117 + 18);
    v115 = *(v117 + 17);
    v119 = *(v45 + 72);
    v114 = *(v117 + 13) + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v113 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v46 = v43 + 56;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      v47 = *(v32 + 21);
      sub_261B4C910(v114 + v44 * v119, v47);
      v48 = (v47 + *(v115 + 40));
      v49 = *(type metadata accessor for AppEntityID() + 20);
      v50 = *v48;
      v51 = v48[1];
      v52 = objc_allocWithZone(MEMORY[0x277D44700]);
      v53 = sub_261CFD814();
      v54 = sub_261CFFA54();
      v55 = [v52 initWithUUID:v53 entityName:v54];

      if ((v43 & 0xC000000000000001) != 0)
      {
        v56 = v55;
        v57 = sub_261D002B4();

        if (v57)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (*(v43 + 16))
        {
          v61 = *(v43 + 40);
          v62 = sub_261D000E4();
          v63 = -1 << *(v43 + 32);
          v64 = v62 & ~v63;
          if ((*(v46 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
          {
            v65 = ~v63;
            while (1)
            {
              v66 = *(*(v43 + 48) + 8 * v64);
              v67 = sub_261D000F4();

              if (v67)
              {
                break;
              }

              v64 = (v64 + 1) & v65;
              if (((*(v46 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

LABEL_33:
            v32 = v117;
            sub_261B837B0(*(v117 + 21), *(v117 + 20));
            v121[0] = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_261B39DB8(0, *(v31 + 16) + 1, 1);
              v31 = v121[0];
            }

            v59 = *(v31 + 16);
            v58 = *(v31 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_261B39DB8(v58 > 1, v59 + 1, 1);
              v31 = v121[0];
            }

            v60 = *(v117 + 20);
            *(v31 + 16) = v59 + 1;
            sub_261B837B0(v60, v31 + v113 + v59 * v119);
            goto LABEL_30;
          }
        }

LABEL_28:
      }

      v32 = v117;
      sub_261B4C974(*(v117 + 21));
LABEL_30:
      if (++v44 == v116)
      {
        goto LABEL_46;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_46:
  *(v32 + 27) = v31;
  if (!*(v31 + 16))
  {

    goto LABEL_62;
  }

  if (qword_27FED9950 != -1)
  {
    goto LABEL_66;
  }

LABEL_48:
  v68 = sub_261CFF7A4();
  *(v32 + 28) = __swift_project_value_buffer(v68, qword_27FEDB208);
  sub_261CFD104();
  v69 = sub_261CFF784();
  v70 = sub_261CFFE54();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v121[0] = v72;
    *v71 = 136446210;
    v73 = sub_261CFFD74();
    v75 = sub_261B879C8(v73, v74, v121);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_261AE2000, v69, v70, "[MoveRemindersToListAppIntent] Try to move reminders from accounts not supporting CSL to a CSL, let's first move these reminders to the CloudKit account {reminderIDs: %{public}s}", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x26671D560](v72, -1, -1);
    v76 = v71;
    v32 = v117;
    MEMORY[0x26671D560](v76, -1, -1);
  }

  v77 = *(*(v32 + 16) + 16);
  v78 = [*(v32 + 14) accountID];
  *(v32 + 7) = 0;
  v79 = [v77 fetchDefaultListRequiringCloudKitAccountWithAccountID:v78 error:v32 + 56];
  *(v32 + 29) = v79;

  v80 = *(v32 + 7);
  if (v80)
  {
    v81 = v80;

    swift_willThrow();
    v82 = *(v32 + 28);
    v83 = v81;
    v84 = sub_261CFF784();
    v85 = sub_261CFFE64();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v121[0] = v87;
      *v86 = 136315138;
      swift_getErrorValue();
      v89 = *(v32 + 2);
      v88 = *(v32 + 3);
      v90 = *(v32 + 4);
      v91 = sub_261D00674();
      v93 = sub_261B879C8(v91, v92, v121);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_261AE2000, v84, v85, "[MoveRemindersToListAppIntent] Unable to fetch default CloudKit list because %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x26671D560](v87, -1, -1);
      MEMORY[0x26671D560](v86, -1, -1);
    }

    else
    {
    }

LABEL_62:
    v104 = *(v32 + 25);
    v103 = *(v32 + 26);
    v106 = *(v32 + 22);
    v105 = *(v32 + 23);
    v107 = *(v32 + 20);
    v108 = *(v32 + 21);
    v120 = *(v32 + 19);
    v109 = sub_261BC6A34(MEMORY[0x277D84F90]);

    v121[0] = v109;
    sub_261CFD104();
    sub_261CFD104();
    v110 = sub_261B900C8(v105, v103, v121, v104);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v111 = *(v117 + 1);
    v112 = *MEMORY[0x277D85DE8];

    return v111(v110);
  }

  if (!v79)
  {

    v100 = sub_261CFF784();
    v101 = sub_261CFFE64();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_261AE2000, v100, v101, "[MoveRemindersToListAppIntent] No available default CloudKit list", v102, 2u);
      MEMORY[0x26671D560](v102, -1, -1);
    }

    goto LABEL_62;
  }

  v32[264] = v32[265];
  v94 = v79;
  v95 = swift_task_alloc();
  *(v32 + 30) = v95;
  *v95 = v32;
  v95[1] = sub_261B8C91C;
  v96 = *(v32 + 15);
  v97 = *(v32 + 16);
  v98 = *MEMORY[0x277D85DE8];

  return sub_261B8A4A8(v31, v79, v32 + 264, 0, v96);
}

uint64_t sub_261B8C91C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 240);
  v11 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = *(v3 + 232);
    v6 = *(v3 + 216);

    v7 = sub_261B8D1F0;
  }

  else
  {

    v7 = sub_261B8CA7C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261B8CA7C()
{
  v99 = v0;
  v1 = v0;
  v98[1] = *MEMORY[0x277D85DE8];
  v2 = v0[31];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[17];
    v6 = v0[18];
    v96 = v1[17];
    v98[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v94 = v2;
    v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      v9 = v1[22];
      sub_261B4C910(v7, v9);
      v10 = (v9 + *(v96 + 40));
      v11 = *(type metadata accessor for AppEntityID() + 20);
      v12 = *v10;
      v13 = v10[1];
      v14 = objc_allocWithZone(MEMORY[0x277D44700]);
      v15 = sub_261CFD814();
      v16 = sub_261CFFA54();
      [v14 initWithUUID:v15 entityName:v16];

      sub_261B4C974(v9);
      sub_261D00374();
      v17 = *(v98[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v7 += v8;
      --v3;
    }

    while (v3);
    v2 = v94;
    v4 = MEMORY[0x277D84F90];
  }

  v18 = v1[32];
  v19 = v1[24];
  v20 = sub_261CFC0B8();
  v93 = v1;
  if (v18)
  {
    v21 = v1[31];
    v22 = v1[29];
    v23 = v1[27];

    v24 = v1;
    v25 = v1[28];
    v26 = v18;
    v27 = sub_261CFF784();
    v28 = sub_261CFFE64();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v98[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v32 = v1[2];
      v31 = v1[3];
      v33 = v1[4];
      v34 = sub_261D00674();
      v36 = sub_261B879C8(v34, v35, v98);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_261AE2000, v27, v28, "[MoveRemindersToListAppIntent] Unable to fetch default CloudKit list because %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26671D560](v30, -1, -1);
      MEMORY[0x26671D560](v29, -1, -1);
    }

    else
    {
    }

    v63 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v37 = v20;

  v98[0] = v4;
  v38 = *(v2 + 16);
  v39 = v1[31];
  if (v38)
  {
    v40 = v1[18];
    v41 = (v1[19] + *(v1[17] + 40));
    v42 = type metadata accessor for AppEntityID();
    v43 = v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v44 = v37;
    v45 = v37 & 0xC000000000000001;
    v46 = *(v40 + 72);
    v47 = v1;
    v95 = v44;
    v97 = *(v42 + 20);
    v92 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_261B4C910(v43, v47[19]);
      v49 = *v41;
      v50 = v41[1];
      v51 = objc_allocWithZone(MEMORY[0x277D44700]);
      v52 = sub_261CFD814();
      v53 = sub_261CFFA54();
      v54 = [v51 initWithUUID:v52 entityName:v53];

      if (v45)
      {
        v55 = v54;
        v56 = sub_261D004A4();

        if (v56)
        {
          v47[10] = v56;
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          swift_dynamicCast();
          v57 = v47[9];
          goto LABEL_18;
        }
      }

      else if (*(v95 + 16))
      {
        v58 = sub_261B37CA4(v54);
        if (v59)
        {
          v57 = *(*(v95 + 56) + 8 * v58);
LABEL_18:
          v60 = v47[19];

          v61 = sub_261B4C974(v60);
          if (v57)
          {
            MEMORY[0x26671C310](v61);
            if (*((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v62 = *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_261CFFC84();
              v47 = v93;
            }

            sub_261CFFCB4();
            v92 = v98[0];
          }

          goto LABEL_11;
        }
      }

      v48 = v47[19];

      sub_261B4C974(v48);
LABEL_11:
      v43 += v46;
      if (!--v38)
      {
        v64 = v47[31];

        v65 = v92;
        goto LABEL_26;
      }
    }
  }

  v66 = v1[31];

  v65 = MEMORY[0x277D84F90];
LABEL_26:

  v67 = v65 >> 62;
  v68 = v65;
  if (v65 >> 62)
  {
    v69 = sub_261D00274();
  }

  else
  {
    v69 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v69 == *(v93[27] + 16))
  {

    v24 = v93;
    v63 = v65;
  }

  else
  {
    v70 = v93[28];
    sub_261CFD104();
    sub_261CFCDA4();
    v71 = sub_261CFF784();
    v72 = sub_261CFFE74();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 134218240;
      if (v67)
      {
        v74 = sub_261D00274();
      }

      else
      {
        v74 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = v93[29];
      v78 = v93[27];
      *(v73 + 4) = v74;

      *(v73 + 12) = 2048;
      v79 = *(v78 + 16);

      *(v73 + 14) = v79;
      v63 = v68;

      _os_log_impl(&dword_261AE2000, v71, v72, "[MoveRemindersToListAppIntent] Unexpected scenarios where movedRemindersByInputOrder.count (%ld) != unsupportedReminderEntities.count (%ld)", v73, 0x16u);
      MEMORY[0x26671D560](v73, -1, -1);

      v24 = v93;
    }

    else
    {
      v75 = v93[29];
      v76 = v93[27];

      v24 = v93;
      v63 = v68;
    }
  }

LABEL_36:
  v81 = v24[25];
  v80 = v24[26];
  v83 = v24[22];
  v82 = v24[23];
  v84 = v24[20];
  v85 = v24[21];
  v86 = v24[19];
  v87 = sub_261BC6A34(v63);

  v98[0] = v87;
  sub_261CFD104();
  sub_261CFD104();
  v88 = sub_261B900C8(v82, v80, v98, v81);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v89 = v24[1];
  v90 = *MEMORY[0x277D85DE8];

  return v89(v88);
}

uint64_t sub_261B8D1F0()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = v1;
  v4 = sub_261CFF784();
  v5 = sub_261CFFE64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = sub_261D00674();
    v13 = sub_261B879C8(v11, v12, v26);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_261AE2000, v4, v5, "[MoveRemindersToListAppIntent] Unable to fetch default CloudKit list because %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = sub_261BC6A34(MEMORY[0x277D84F90]);

  v26[0] = v21;
  sub_261CFD104();
  sub_261CFD104();
  v22 = sub_261B900C8(v16, v14, v26, v15);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v23 = *(v0 + 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23(v22);
}

uint64_t sub_261B8D450@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v81 = sub_261CFE7A4();
  v80 = *(v81 - 8);
  v2 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v82 = (&v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_261CFF564();
  v78 = *(v79 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB220, &qword_261D056D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v74 - v8;
  v9 = sub_261CFF094();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v74 - v14;
  MEMORY[0x28223BE20](v13);
  v83 = &v74 - v15;
  v16 = sub_261CFFF84();
  v87 = *(v16 - 8);
  v88 = v16;
  v17 = *(v87 + 64);
  MEMORY[0x28223BE20](v16);
  v76 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFF244();
  v91 = *(v19 - 8);
  v92 = v19;
  v20 = *(v91 + 64);
  MEMORY[0x28223BE20](v19);
  v90 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFF334();
  v101 = *(v22 - 8);
  v102 = v22;
  v23 = *(v101 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_261CFF284();
  v103 = *(v26 - 8);
  v27 = *(v103 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_261CFF204();
  v94 = *(v30 - 8);
  v95 = v30;
  v31 = *(v94 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB228, &qword_261D056E0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v74 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB230, &qword_261D056E8);
  v99 = *(v38 - 8);
  v100 = v38;
  v39 = *(v99 + 64);
  MEMORY[0x28223BE20](v38);
  v89 = &v74 - v40;
  v41 = [v1 store];
  v42 = [v1 sortingStyle];
  sub_261CFFEA4();

  v43 = *MEMORY[0x277D45468];
  v44 = *(v103 + 104);
  v96 = v26;
  v44(v29, v43, v26);
  (*(v101 + 104))(v25, *MEMORY[0x277D45500], v102);
  v45 = v90;
  v46 = v91;
  v47 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277D45460]);
  v93 = v37;
  v48 = v97;
  sub_261CFF0A4();
  if (v48)
  {

    (*(v46 + 8))(v45, v47);
    (*(v101 + 8))(v25, v102);
    (*(v103 + 8))(v29, v96);
    (*(v94 + 8))(v33, v95);
    v49 = 1;
    v50 = v93;
    (*(v99 + 56))(v93, 1, 1, v100);
    sub_261AE6A40(v50, &qword_27FEDB228, &qword_261D056E0);
    v51 = v98;
  }

  else
  {
    v97 = 0;

    (*(v46 + 8))(v45, v47);
    (*(v101 + 8))(v25, v102);
    (*(v103 + 8))(v29, v96);
    (*(v94 + 8))(v33, v95);
    v53 = v99;
    v52 = v100;
    v54 = v93;
    (*(v99 + 56))(v93, 0, 1, v100);
    (*(v53 + 32))(v89, v54, v52);
    v55 = v83;
    v56 = sub_261CFF534();
    v57 = v84;
    MEMORY[0x26671B740](v56);
    v58 = *(v85 + 8);
    v59 = v55;
    v60 = v86;
    v58(v59, v86);
    v62 = v87;
    v61 = v88;
    if ((*(v87 + 48))(v57, 1, v88) == 1)
    {
      (*(v99 + 8))(v89, v100);
      sub_261AE6A40(v57, &qword_27FEDB220, &qword_261D056D8);
      v49 = 1;
      v51 = v98;
    }

    else
    {
      v63 = v76;
      (*(v62 + 32))(v76, v57, v61);
      v64 = v74;
      v65 = v89;
      v66 = sub_261CFF534();
      v67 = v77;
      MEMORY[0x26671B750](v66);
      v58(v64, v60);
      v103 = sub_261CFF264();
      (*(v78 + 8))(v67, v79);
      v68 = v75;
      v69 = v100;
      sub_261CFF534();
      v70 = sub_261CFF064();
      v58(v68, v60);
      v71 = v82;
      *v82 = v70;
      (*(v80 + 104))(v71, *MEMORY[0x277D45E68], v81);
      sub_261CFFF64();
      sub_261CFFF74();
      sub_261CFFF54();
      v51 = v98;
      sub_261CFE804();
      (*(v62 + 8))(v63, v88);
      (*(v99 + 8))(v65, v69);
      v49 = 0;
    }
  }

  v72 = sub_261CFE814();
  return (*(*(v72 - 8) + 56))(v51, v49, 1, v72);
}

id sub_261B8DEE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

void sub_261B8DF24(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    sub_261CFCDA4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_261B8E3CC(v8, v4, v2);
      MEMORY[0x26671D560](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_261B8E084(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

void sub_261B8E084(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v3 = a3;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 56) + 8 * v13);
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = v14;
    if ([v16 isSubtask])
    {
      v31 = v8;
      if (qword_27FED9950 != -1)
      {
        swift_once();
      }

      v17 = sub_261CFF7A4();
      __swift_project_value_buffer(v17, qword_27FEDB208);
      v18 = v15;
      v19 = v16;
      v20 = sub_261CFF784();
      v21 = sub_261CFFE54();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138543362;
        v24 = [v19 objectID];
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&dword_261AE2000, v20, v21, "[MoveRemindersToListAppIntent] Moving subtask to CSL is not supported {reminderID: %{public}@}", v22, 0xCu);
        sub_261AE6A40(v23, &unk_27FEDA730, &unk_261D035C0);
        v25 = v23;
        v3 = a3;
        MEMORY[0x26671D560](v25, -1, -1);
        MEMORY[0x26671D560](v22, -1, -1);
      }

      v8 = v31;
    }

    else
    {

      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v29++, 1))
      {
        goto LABEL_22;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_261B8E444(a1, v27, v29, v3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

unint64_t *sub_261B8E330(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_261CFD104();
    sub_261B8E6BC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_261B8E3CC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_261B8E084(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_261B8E444(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_261CFCDA4();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB268, &qword_261D05760);
  result = sub_261D00544();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = *(v9 + 40);
    v21 = v18;
    v32 = v19;
    result = sub_261D000E4();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      v4 = v17;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v21;
    *(*(v9 + 56) + 8 * v25) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_261B8E674(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_261B8E6BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v5 = a3;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v39 = a4 & 0xC000000000000001;
  v42 = a4 + 56;
  v33 = v12;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v41 = (v11 - 1) & v11;
LABEL_13:
    v38 = v16 | (v7 << 6);
    v19 = *(*(v5 + 56) + 8 * v38);
    v20 = *(*(v5 + 48) + 8 * v38);
    v21 = v19;
    v22 = [v21 parentReminderID];
    v23 = v22;
    if (v39)
    {
      v13 = v6;
      v14 = v22;
      v15 = sub_261D002B4();

      v6 = v13;
      v5 = a3;
      v11 = v41;
      if ((v15 & 1) == 0)
      {
LABEL_20:
        *(a1 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v35 = v20;
      v36 = v21;
      v37 = v6;
      if (!*(a4 + 16) || (sub_261B05020(0, &qword_280D21DF0, 0x277D44700), v24 = *(a4 + 40), v25 = sub_261D000E4(), v26 = -1 << *(a4 + 32), v27 = v25 & ~v26, ((*(v42 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
      {
LABEL_19:

        v5 = a3;
        v11 = v41;
        v6 = v37;
        v12 = v33;
        goto LABEL_20;
      }

      v28 = ~v26;
      while (1)
      {
        v29 = *(*(a4 + 48) + 8 * v27);
        v30 = sub_261D000F4();

        if (v30)
        {
          break;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v42 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v5 = a3;
      v11 = v41;
      v6 = v37;
      v12 = v33;
    }
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      sub_261B8E444(a1, v32, v6, v5);
      return;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v41 = (v18 - 1) & v18;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t *sub_261B8E97C(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {
    sub_261CFCDA4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_261CFD104();
      v11 = sub_261B8E330(v14, v7, a1, a2);
      MEMORY[0x26671D560](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
  sub_261CFD104();
  sub_261B8E6BC((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_261B8EB3C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v39 = MEMORY[0x277D84F98];
    sub_261D00424();
    sub_261CFD104();
    v4 = sub_261D004B4();
    if (v4)
    {
      v5 = v4;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v6 = v5;
      v7 = a2 & 0xC000000000000001;
      v36 = a2 + 56;
      v35 = a2 & 0xC000000000000001;
      while (1)
      {
        v37 = v6;
        swift_dynamicCast();
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        if (!v38)
        {
          goto LABEL_30;
        }

        v8 = v38;
        v9 = v37;
        v10 = [v9 parentReminderID];
        v11 = v10;
        if (!v7)
        {
          break;
        }

        v12 = v10;
        v13 = sub_261D002B4();

        if ((v13 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_5:
        v6 = sub_261D004B4();
        if (!v6)
        {
          goto LABEL_30;
        }
      }

      if (*(a2 + 16))
      {
        v14 = *(a2 + 40);
        v15 = sub_261D000E4();
        v16 = -1 << *(a2 + 32);
        v17 = v15 & ~v16;
        if ((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = a2;
            v20 = *(*(a2 + 48) + 8 * v17);
            v21 = sub_261D000F4();

            if (v21)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            a2 = v19;
            if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          a2 = v19;
          v7 = v35;
          goto LABEL_5;
        }
      }

LABEL_15:

      v7 = v35;
LABEL_16:
      v22 = v3[2];
      if (v3[3] <= v22)
      {
        sub_261CA2930(v22 + 1, 1);
      }

      v3 = v39;
      v23 = *(v39 + 40);
      result = sub_261D000E4();
      v25 = v39 + 64;
      v26 = -1 << *(v39 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v39 + 64 + 8 * (v27 >> 6))) != 0)
      {
        v29 = __clz(__rbit64((-1 << v27) & ~*(v39 + 64 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        do
        {
          if (++v28 == v31 && (v30 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = *(v25 + 8 * v28);
        }

        while (v33 == -1);
        v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      }

      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      *(*(v39 + 48) + 8 * v29) = v8;
      *(*(v39 + 56) + 8 * v29) = v9;
      ++*(v39 + 16);
      goto LABEL_5;
    }

LABEL_30:
    sub_261B57B30();
  }

  else
  {
    sub_261CFD104();
    v3 = sub_261B8E97C(a1, a2);
  }

  return v3;
}

void sub_261B8EF04(void *a1, unsigned __int8 *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *a2;
  v13 = [a1 parentReminder];
  if (v13)
  {
    v14 = v13;
    sub_261CFE144();
    v25 = v3;
    v28 = 0;
    v29 = v14;
    v26 = 0u;
    v27 = 0u;
    v15 = a3;
    v16 = v14;
    sub_261CFDF24();
    v17 = [v15 updateReminder_];
    v18 = MEMORY[0x277D45DB0];
    if (!v12)
    {
      v18 = MEMORY[0x277D45DB8];
    }

    (*(v8 + 104))(v11, *v18, v7);
    v19 = sub_261CFDFB4();

    (*(v8 + 8))(v11, v7);
    v20 = v25;
    v21 = sub_261CF3338(0xD00000000000007CLL, 0x8000000261D1A8E0, 0xD0000000000000C6, 0x8000000261D1A960, 199, v19);
    if (!v20)
    {
      v21;
    }
  }

  else
  {
    v22 = objc_opt_self();
    v23 = sub_261CFFA54();
    [v22 internalErrorWithDebugDescription_];

    swift_willThrow();
  }
}

uint64_t sub_261B8F1B0(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 subtaskContext];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
    v19[0] = 0;
    v5 = [v3 fetchRemindersForMovingWithFetchOptions:v4 error:v19];

    v6 = v19[0];
    if (v5)
    {
      sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
      v7 = sub_261CFFC64();
      v8 = v6;
    }

    else
    {
      v9 = v19[0];
      v10 = sub_261CFD654();

      swift_willThrow();
      if (qword_27FED9950 != -1)
      {
        swift_once();
      }

      v11 = sub_261CFF7A4();
      __swift_project_value_buffer(v11, qword_27FEDB208);
      v12 = a1;
      v5 = sub_261CFF784();
      v13 = sub_261CFFE64();

      if (os_log_type_enabled(v5, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138543362;
        v16 = [v12 objectID];
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&dword_261AE2000, v5, v13, "Failed to fetch subtasks of reminder {objectID: %{public}@}", v14, 0xCu);
        sub_261AE6A40(v15, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v15, -1, -1);
        MEMORY[0x26671D560](v14, -1, -1);
      }

      v7 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_261B8F424(void **a1, uint64_t a2, void *a3, void *a4, int a5, void **a6, uint64_t *a7, uint64_t a8)
{
  v114 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = &v103[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v109 = &v103[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v119 = &v103[-v23];
  v24 = type metadata accessor for ReminderEntity();
  v110 = *(v24 - 8);
  v111 = v24;
  v25 = *(v110 + 64);
  MEMORY[0x28223BE20](v24);
  v112 = &v103[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v117 = *(v27 - 1);
  v118 = v27;
  v28 = *(v117 + 8);
  MEMORY[0x28223BE20](v27);
  v116 = &v103[-v29];
  v30 = sub_261CADDB4(*a1, a2);
  if (!v30)
  {
    return;
  }

  v31 = v30;
  LODWORD(v115) = a5;
  v108 = v8;
  v32 = [v30 parentReminder];
  if (v32)
  {
    v33 = v32;
    v34 = [a3 updateReminder_];

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_8:
    v39 = 1;
LABEL_12:
    if ([v31 isSubtask] && (v39 & 1) != 0)
    {
      LOBYTE(v120[0]) = v115 & 1;
      v40 = v108;
      sub_261B8EF04(v31, v120, a3);
      if (!v40)
      {
        v108 = 0;
        v46 = v41;
        v47 = 0;
        goto LABEL_55;
      }

      return;
    }

    goto LABEL_18;
  }

  v34 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v35 = v34;
  v36 = [a4 objectID];
  v37 = [v31 list];
  v38 = [v37 objectID];

  if (v36)
  {
    if (v38)
    {
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v39 = sub_261D000F4();

LABEL_11:
      v34 = v35;
      goto LABEL_12;
    }

    v38 = v36;
  }

  else if (!v38)
  {
    v39 = 1;
    goto LABEL_11;
  }

  [v31 isSubtask];
  v34 = v35;
LABEL_18:
  v42 = *a6;
  v106 = v34;
  if (!v42)
  {
    v43 = [v31 list];
    v44 = [v43 objectID];

    v45 = sub_261CADE84(v44, *a7);
    if (v45)
    {
      v107 = v45;
      sub_261CFCDA4();
      goto LABEL_39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_261D030F0;
    *(v48 + 32) = [v31 list];
    sub_261CFFE94();

    sub_261CFDD24();
    v122 = [v31 list];
    v121 = 0;
    memset(v120, 0, sizeof(v120));
    v49 = a3;
    sub_261CFDF24();
    v107 = v123;
    swift_retain_n();
    v50 = [v31 list];
    v51 = [v50 objectID];

    v52 = *a7;
    if ((*a7 & 0xC000000000000001) != 0)
    {
      if (v52 < 0)
      {
        v53 = *a7;
      }

      else
      {
        v53 = v52 & 0xFFFFFFFFFFFFFF8;
      }

      v54 = sub_261D00274();
      if (__OFADD__(v54, 1))
      {
        __break(1u);
        return;
      }

      *a7 = sub_261CA248C(v53, v54 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v120[0] = *a7;
    sub_261BF83B0(v107, v51, isUniquelyReferenced_nonNull_native);
    *a7 = *&v120[0];

    if (qword_27FED9950 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

  v107 = v42;
  while (1)
  {
    swift_retain_n();
    v72 = sub_261B8F1B0(v31);
    v46 = v72;
    if (v72 >> 62)
    {
      v47 = sub_261D00274();
      if (!v47)
      {
LABEL_50:

        v47 = MEMORY[0x277D84F90];
        goto LABEL_51;
      }
    }

    else
    {
      v47 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_50;
      }
    }

    *&v120[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    if ((v47 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_73;
    }

    v105 = v31;
    v73 = 0;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x26671CA10](v73, v46);
      }

      else
      {
        v74 = *(v46 + 8 * v73 + 32);
      }

      v75 = v74;
      ++v73;
      v76 = [a3 updateReminder_];

      sub_261D00374();
      v77 = *(*&v120[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v47 != v73);

    v47 = *&v120[0];
    v31 = v105;
    v34 = v106;
LABEL_51:
    v78 = [a3 updateReminder_];
    v80 = v116;
    v79 = v117;
    v81 = MEMORY[0x277D45DB0];
    if ((v115 & 1) == 0)
    {
      v81 = MEMORY[0x277D45DB8];
    }

    v82 = v118;
    (*(v117 + 13))(v116, *v81, v118);
    v83 = sub_261CFDD04();

    (*(v79 + 1))(v80, v82);
    v46 = v83;
    LOBYTE(v83) = [v31 isSubtask];

    if (v83)
    {

      v34 = 0;
    }

LABEL_55:
    a3 = v119;
    v84 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v84 - 8) + 56))(a3, 1, 1, v84);
    v85 = v34;
    v86 = [v46 listChangeItem];
    if (!v86 || (v87 = v86, v88 = [v86 storage], v87, !v88))
    {

      sub_261B01D70();
      swift_allocError();
      *v90 = 11;
      swift_willThrow();

      sub_261AE6A40(a3, &qword_27FEDA108, &unk_261D020C0);
      return;
    }

    v89 = [v46 storage];
    v115 = [v46 accountCapabilities];
    if (v34)
    {
      v107 = [v85 storage];
    }

    else
    {
      v107 = 0;
    }

    v117 = v88;
    v118 = v85;
    v116 = v89;
    if (!v47)
    {
      v97 = 0;
      goto LABEL_75;
    }

    if (!(v47 >> 62))
    {
      v91 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v91)
      {
        goto LABEL_74;
      }

      goto LABEL_64;
    }

LABEL_73:
    v91 = sub_261D00274();
    if (!v91)
    {
LABEL_74:

      v97 = MEMORY[0x277D84F90];
      goto LABEL_75;
    }

LABEL_64:
    v105 = v31;
    *&v120[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    if ((v91 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_78:
    swift_once();
LABEL_30:
    v56 = sub_261CFF7A4();
    __swift_project_value_buffer(v56, qword_27FEDB208);
    v57 = v31;
    v58 = sub_261CFF784();
    v59 = sub_261CFFE54();

    v60 = v58;
    if (os_log_type_enabled(v58, v59))
    {
      v61 = swift_slowAlloc();
      v104 = v59;
      v62 = v61;
      v63 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v120[0] = v105;
      *v62 = 138543874;
      v64 = [v57 objectID];
      *(v62 + 4) = v64;
      *v63 = v64;
      *(v62 + 12) = 2114;
      v65 = [v57 list];
      v66 = [v65 objectID];

      *(v62 + 14) = v66;
      v63[1] = v66;
      *(v62 + 22) = 2082;
      if (v115)
      {
        v67 = 0x6D6F74746F62;
      }

      else
      {
        v67 = 7368564;
      }

      if (v115)
      {
        v68 = 0xE600000000000000;
      }

      else
      {
        v68 = 0xE300000000000000;
      }

      v69 = sub_261B879C8(v67, v68, v120);

      *(v62 + 24) = v69;
      v70 = v60;
      _os_log_impl(&dword_261AE2000, v60, v104, "[MoveRemindersToListAppIntent] Target list is nil, so we move reminder with id: %{public}@, within its original list: %{public}@, to position: %{public}s", v62, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v63, -1, -1);
      v71 = v105;
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x26671D560](v71, -1, -1);
      MEMORY[0x26671D560](v62, -1, -1);
    }

    else
    {
    }

LABEL_39:
    v34 = v106;
  }

  v92 = 0;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v93 = MEMORY[0x26671CA10](v92, v47);
    }

    else
    {
      v93 = *(v47 + 8 * v92 + 32);
    }

    v94 = v93;
    ++v92;
    v95 = [v93 storage];

    sub_261D00374();
    v96 = *(*&v120[0] + 16);
    sub_261D003B4();
    sub_261D003C4();
    sub_261D00384();
  }

  while (v91 != v92);

  a3 = v119;
  v97 = *&v120[0];
  v31 = v105;
LABEL_75:
  v98 = v109;
  v99 = v113;
  v100 = v112;
  sub_261AE7A78(a3, v109);
  sub_261C7EDC4(v116, v117, v115, v107, v97, v98, v100);
  v101 = v118;

  sub_261AE6A40(a3, &qword_27FEDA108, &unk_261D020C0);
  v102 = [v31 objectID];
  sub_261B4C910(v100, v99);
  (*(v110 + 56))(v99, 0, 1, v111);
  sub_261BF39C0(v99, v102);

  sub_261B4C974(v100);
}

uint64_t sub_261B900C8(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v45 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_45:
    v32 = a1;
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a4;
    v34 = sub_261D00274();
    a4 = v33;
    v5 = v34;
    a1 = v32;
  }

  else
  {
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v35 = a1;
    v41 = a1 + 32;
    v42 = a1 & 0xC000000000000001;
    v7 = a2 + 56;
    v36 = MEMORY[0x277D84F90];
    v38 = a4;
    v39 = a4 & 0xC000000000000001;
    v40 = v5;
    while (1)
    {
      if (v42)
      {
        a1 = MEMORY[0x26671CA10](v6, v35);
      }

      else
      {
        if (v6 >= *(v43 + 16))
        {
          goto LABEL_44;
        }

        a1 = *(v41 + 8 * v6);
      }

      v8 = a1;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = a1;
        v11 = sub_261D002B4();

        if (v11)
        {
          goto LABEL_13;
        }
      }

      else if (*(a2 + 16))
      {
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        v18 = *(a2 + 40);
        v19 = sub_261D000E4();
        v20 = -1 << *(a2 + 32);
        v21 = v19 & ~v20;
        if ((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            v23 = *(*(a2 + 48) + 8 * v21);
            v24 = sub_261D000F4();

            if (v24)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v7 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_13:
          v12 = *a3;
          if (*a3 >> 62)
          {
            if (v12 < 0)
            {
              v30 = *a3;
            }

            if (sub_261D00274())
            {
LABEL_15:
              v13 = *a3;
              result = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (!result || v13 < 0 || (v13 & 0x4000000000000000) != 0)
              {
                result = sub_261BA00C0(v13);
                v13 = result;
              }

              v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v15)
              {
                __break(1u);
                return result;
              }

              v16 = v15 - 1;
              v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v16 + 0x20);
              *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) = v16;
              *a3 = v13;

LABEL_33:
              MEMORY[0x26671C310]();
              if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v31 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_261CFFC84();
              }

              a1 = sub_261CFFCB4();
              v36 = v45;
              goto LABEL_6;
            }
          }

          else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

LABEL_5:

          goto LABEL_6;
        }
      }

LABEL_26:
      if (v39)
      {
        v25 = v8;
        v26 = sub_261D004A4();

        if (!v26)
        {
          goto LABEL_5;
        }

        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();

        if (v44)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!*(v38 + 16))
        {
          goto LABEL_5;
        }

        v27 = sub_261B37CA4(v8);
        if ((v28 & 1) == 0)
        {
          goto LABEL_5;
        }

        v29 = *(*(v38 + 56) + 8 * v27);

        if (v29)
        {
          goto LABEL_33;
        }
      }

LABEL_6:
      if (v6 == v40)
      {
        return v36;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_261B90474(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v7 = *(type metadata accessor for ReminderEntity() - 8);
  *(v5 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v9 = sub_261CFFF44();
  *(v5 + 104) = v9;
  v10 = *(v9 - 8);
  *(v5 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v12 = sub_261CFF204();
  *(v5 + 128) = v12;
  v13 = *(v12 - 8);
  *(v5 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0F0, &qword_261D05718);
  *(v5 + 152) = v15;
  v16 = *(v15 - 8);
  *(v5 + 160) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v19 = sub_261CFDBE4();
  *(v5 + 184) = v19;
  v20 = *(v19 - 8);
  *(v5 + 192) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB248, &qword_261D05728) - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v23 = sub_261CFE814();
  *(v5 + 216) = v23;
  v24 = *(v23 - 8);
  *(v5 + 224) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 329) = *a3;

  return MEMORY[0x2822009F8](sub_261B90788, 0, 0);
}

uint64_t sub_261B90788()
{
  v1 = *(v0 + 56);
  *(v0 + 240) = *(*(v0 + 80) + 24);
  sub_261B9DCEC();
  v4 = sub_261B9BAD4(3, v2, v3);
  *(v0 + 248) = v4;
  v5 = *(v0 + 329);
  v6 = v4;

  *(v0 + 328) = v5;
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_261B90940;
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 64);

  return sub_261B8BBA0(v6, v10, (v0 + 328), v8);
}

uint64_t sub_261B90940(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v8 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  v5 = v3[31];

  if (v1)
  {
    v6 = sub_261B91E98;
  }

  else
  {
    v6 = sub_261B90A64;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261B90A64()
{
  v131 = v0;
  if (qword_27FED9950 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 64);
  v3 = sub_261CFF7A4();
  __swift_project_value_buffer(v3, qword_27FEDB208);
  sub_261CFD104();
  v4 = v2;
  v5 = sub_261CFF784();
  v6 = sub_261CFFE84();

  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_21;
  }

  v7 = *(v0 + 264);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v129 = v10;
  *v8 = 136446722;
  if (v7 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v12 = MEMORY[0x277D84F90];
    LODWORD(v127) = v6;
    v121 = v9;
    v124 = v10;
    if (!i)
    {
      break;
    }

    v130 = MEMORY[0x277D84F90];
    sub_261D003A4();
    if ((i & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = *(v0 + 264) + 32;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26671CA10](v13, *(v0 + 264));
        }

        else
        {
          v15 = *(v14 + 8 * v13);
        }

        v16 = v15;
        ++v13;
        v17 = [v15 objectID];

        sub_261D00374();
        v18 = *(v130 + 16);
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      while (i != v13);
      v12 = v130;
      break;
    }

    __break(1u);
LABEL_87:
    for (j = sub_261D00274(); ; j = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v49 = MEMORY[0x277D84F90];
      if (!j)
      {
        break;
      }

      v130 = MEMORY[0x277D84F90];
      sub_261D003A4();
      if ((j & 0x8000000000000000) == 0)
      {
        v83 = 0;
        v84 = *(v0 + 264) + 32;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x26671CA10](v83, *(v0 + 264));
          }

          else
          {
            v85 = *(v84 + 8 * v83);
          }

          v86 = v85;
          ++v83;
          v87 = [v85 objectID];

          sub_261D00374();
          v88 = *(v130 + 16);
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (j != v83);
        break;
      }

      __break(1u);
LABEL_89:
      if (*(v0 + 264) < 0)
      {
        v120 = *(v0 + 264);
      }

      v52 = sub_261D00274();
LABEL_30:
      v53 = MEMORY[0x277D84F90];
      if (v52)
      {
        v122 = v10;
        v130 = MEMORY[0x277D84F90];
        v54 = sub_261D003A4();
        if (v52 < 0)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v54, v55, v56);
        }

        v57 = 0;
        v58 = v49 & 0xC000000000000001;
        v59 = *(v0 + 264) + 32;
        do
        {
          if (v58)
          {
            v60 = MEMORY[0x26671CA10](v57, *(v0 + 264));
          }

          else
          {
            v60 = *(v59 + 8 * v57);
          }

          v61 = v60;
          ++v57;
          v62 = [v60 objectID];

          sub_261D00374();
          v63 = *(v130 + 16);
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (v52 != v57);
        v53 = v130;
        LOBYTE(v10) = v122;
      }

      v76 = *(v0 + 64);
      v77 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v78 = MEMORY[0x26671C340](v53, v77);
      v80 = v79;

      v81 = sub_261B879C8(v78, v80, &v129);

      *(v6 + 4) = v81;
      *(v6 + 12) = 2114;
      v82 = [v76 objectID];
      *(v6 + 14) = v82;
      *v124 = v82;
      _os_log_impl(&dword_261AE2000, j, v10, "[MoveRemindersToListAppIntent] Cannot move reminders to custom smart list without a paramsForREMManualOrdering {reminderIDs: %{public}s, customSmartList: %{public}@", v6, 0x16u);
      sub_261AE6A40(v124, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v124, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x26671D560](v127, -1, -1);
      MEMORY[0x26671D560](v6, -1, -1);
LABEL_42:

      v10 = *(v0 + 264);
      v5 = (v10 >> 62);
      if (v10 >> 62)
      {
        goto LABEL_87;
      }
    }

    v89 = *(v0 + 280);
    v90 = *(v0 + 240);
    v91 = sub_261CFC0B8();
    if (v89)
    {
      v92 = *(v0 + 264);

      goto LABEL_23;
    }

    v93 = v91;

    v94 = sub_261B88278(v93);

    if (*(v94 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
      v95 = sub_261D00544();
    }

    else
    {
      v95 = MEMORY[0x277D84F98];
    }

    v130 = v95;
    v96 = sub_261CFD104();
    sub_261CB5FD4(v96, 1, &v130);

    v97 = v130;
    if (v5)
    {
      v98 = *(v0 + 264);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v99 = *(v0 + 264);
      }

      v6 = sub_261D00274();
    }

    else
    {
      v6 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v6)
    {
      v7 = MEMORY[0x277D84F90];
LABEL_78:
      v111 = *(v0 + 264);
      v112 = *(v0 + 232);
      v114 = *(v0 + 200);
      v113 = *(v0 + 208);
      v116 = *(v0 + 168);
      v115 = *(v0 + 176);
      v117 = *(v0 + 144);
      v126 = *(v0 + 120);
      v128 = *(v0 + 96);

      v118 = *(v0 + 8);

      return v118(v7);
    }

    v8 = 0;
    v9 = v10 & 0xC000000000000001;
    v5 = (v10 & 0xFFFFFFFFFFFFFF8);
    v125 = *(v0 + 88);
    v127 = (*(v0 + 264) + 32);
    v7 = MEMORY[0x277D84F90];
    v123 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v100 = MEMORY[0x26671CA10](v8, *(v0 + 264));
      }

      else
      {
        if (v8 >= v5[2].isa)
        {
          goto LABEL_82;
        }

        v100 = v127[v8];
      }

      v101 = v100;
      v102 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v103 = [v100 objectID];
      v10 = v103;
      if (*(v97 + 16) && (v104 = sub_261B37CA4(v103), (v105 & 1) != 0))
      {
        v106 = v9;
        v107 = v6;
        v108 = *(v125 + 72);
        sub_261B4C910(*(v97 + 56) + v108 * v104, *(v0 + 96));

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_261B41560(0, *(v7 + 16) + 1, 1, v7);
        }

        v10 = *(v7 + 16);
        v109 = *(v7 + 24);
        if (v10 >= v109 >> 1)
        {
          v7 = sub_261B41560(v109 > 1, v10 + 1, 1, v7);
        }

        v110 = *(v0 + 96);
        *(v7 + 16) = v10 + 1;
        sub_261B837B0(v110, v7 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + v10 * v108);
        v6 = v107;
        v9 = v106;
        v5 = v123;
      }

      else
      {
      }

      ++v8;
      if (v102 == v6)
      {
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    if (*(v0 + 264) < 0)
    {
      v119 = *(v0 + 264);
    }
  }

  v19 = *(v0 + 329);
  v20 = *(v0 + 64);
  v21 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v22 = MEMORY[0x26671C340](v12, v21);
  v24 = v23;

  v25 = sub_261B879C8(v22, v24, &v129);

  *(v8 + 4) = v25;
  *(v8 + 12) = 2114;
  v26 = [v20 remObjectID];
  *(v8 + 14) = v26;
  *v121 = v26;
  *(v8 + 22) = 2082;
  if (v19)
  {
    v27 = 0x6D6F74746F62;
  }

  else
  {
    v27 = 7368564;
  }

  if (v19)
  {
    v28 = 0xE600000000000000;
  }

  else
  {
    v28 = 0xE300000000000000;
  }

  v29 = sub_261B879C8(v27, v28, &v129);

  *(v8 + 24) = v29;
  _os_log_impl(&dword_261AE2000, v5, v127, "[MoveRemindersToListAppIntent] Move reminders to CSL {reminderIDs: %{public}s, smartList: %{public}@, insertPosition: %{public}s", v8, 0x20u);
  sub_261AE6A40(v121, &unk_27FEDA730, &unk_261D035C0);
  MEMORY[0x26671D560](v121, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x26671D560](v124, -1, -1);
  MEMORY[0x26671D560](v8, -1, -1);
LABEL_21:

  v30 = *(v0 + 272);
  v31 = *(v0 + 64);
  sub_261B8D450(*(v0 + 208));
  *(v0 + 280) = v30;
  if (v30)
  {
    v32 = *(v0 + 264);
LABEL_23:

    v33 = *(v0 + 232);
    v34 = *(v0 + 200);
    v35 = *(v0 + 208);
    v37 = *(v0 + 168);
    v36 = *(v0 + 176);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v40 = *(v0 + 96);

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {
    v43 = *(v0 + 216);
    v44 = *(v0 + 224);
    v45 = *(v0 + 208);
    if ((*(v44 + 48))(v45, 1, v43) == 1)
    {
      v6 = *(v0 + 264);
      v46 = *(v0 + 64);
      sub_261AE6A40(v45, &qword_27FEDB248, &qword_261D05728);
      sub_261CFD104();
      v47 = v46;
      j = sub_261CFF784();
      LOBYTE(v10) = sub_261CFFE64();

      if (os_log_type_enabled(j, v10))
      {
        v49 = *(v0 + 264);
        v6 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v6 = 136446466;
        v127 = v51;
        v129 = v51;
        v124 = v50;
        if (!(v49 >> 62))
        {
          v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_30;
        }

        goto LABEL_89;
      }

      goto LABEL_42;
    }

    v65 = *(v0 + 192);
    v64 = *(v0 + 200);
    v67 = *(v0 + 176);
    v66 = *(v0 + 184);
    v68 = *(v0 + 72);
    v69 = *(v0 + 80);
    (*(v44 + 32))(*(v0 + 232), v45, v43);
    v70 = *(v69 + 16);
    *(v0 + 288) = v70;
    (*(v65 + 104))(v64, *MEMORY[0x277D45C20], v66);
    sub_261AE498C(v68, v0 + 16);
    v71 = sub_261CFE474();
    (*(*(v71 - 8) + 56))(v67, 1, 1, v71);
    *(v0 + 296) = sub_261CFFD24();
    v72 = v70;
    *(v0 + 304) = sub_261CFFD14();
    v73 = sub_261CFFCF4();
    v75 = v74;
    v54 = sub_261B91688;
    v55 = v73;
    v56 = v75;

    return MEMORY[0x2822009F8](v54, v55, v56);
  }
}

uint64_t sub_261B91688()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[25];
  v4 = v0[22];

  objc_allocWithZone(sub_261CFE424());
  v0[39] = sub_261CFE414();

  return MEMORY[0x2822009F8](sub_261B91734, 0, 0);
}

uint64_t sub_261B91734()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  if (*(v0 + 329))
  {
    v7 = MEMORY[0x277D45DB0];
  }

  else
  {
    v7 = MEMORY[0x277D45DB8];
  }

  (*(*(v0 + 160) + 104))(*(v0 + 168), *v7, *(v0 + 152));
  v8 = [v6 sortingStyle];
  sub_261CFFEA4();

  (*(v4 + 104))(v3, *MEMORY[0x277D45EC0], v5);
  *(v0 + 320) = sub_261CFFD14();
  v10 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261B91860, v10, v9);
}

uint64_t sub_261B91860()
{
  v1 = v0[40];
  v2 = v0[33];
  v3 = v0[29];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v14 = v0[19];
  v7 = v0[17];
  v12 = v0[39];
  v13 = v0[16];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];

  sub_261CFE404();
  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v6, v13);
  (*(v5 + 8))(v4, v14);

  return MEMORY[0x2822009F8](sub_261B91978, 0, 0);
}

uint64_t sub_261B91978()
{
  v64 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 264);
  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v60 = v5;
    if (i)
    {
      v63 = MEMORY[0x277D84F90];
      result = sub_261D003A4();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v8 = 0;
      v9 = *(v0 + 264) + 32;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26671CA10](v8, *(v0 + 264));
        }

        else
        {
          v10 = *(v9 + 8 * v8);
        }

        v11 = v10;
        ++v8;
        v12 = [v10 objectID];

        sub_261D00374();
        v13 = *(v63 + 16);
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      while (i != v8);
    }

    v14 = *(v0 + 280);
    v15 = *(v0 + 240);
    v16 = sub_261CFC0B8();
    if (v14)
    {
      v17 = *(v0 + 264);

      v18 = *(v0 + 232);
      v19 = *(v0 + 200);
      v20 = *(v0 + 208);
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      v23 = *(v0 + 144);
      v24 = *(v0 + 120);
      v25 = *(v0 + 96);

      v26 = *(v0 + 8);

      return v26();
    }

    v27 = v16;

    v28 = sub_261B88278(v27);

    if (*(v28 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
      v29 = sub_261D00544();
    }

    else
    {
      v29 = MEMORY[0x277D84F98];
    }

    v63 = v29;
    v30 = sub_261CFD104();
    sub_261CB5FD4(v30, 1, &v63);

    v31 = v63;
    if (v60)
    {
      break;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_37;
    }

LABEL_19:
    v32 = 0;
    v33 = v4 & 0xC000000000000001;
    v34 = v4 & 0xFFFFFFFFFFFFFF8;
    v58 = *(v0 + 88);
    v61 = *(v0 + 264) + 32;
    v35 = MEMORY[0x277D84F90];
    v57 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33)
      {
        v36 = MEMORY[0x26671CA10](v32, *(v0 + 264));
      }

      else
      {
        if (v32 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        v36 = *(v61 + 8 * v32);
      }

      v37 = v36;
      v38 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v39 = [v36 objectID];
      v4 = v39;
      if (*(v31 + 16) && (v40 = sub_261B37CA4(v39), (v41 & 1) != 0))
      {
        v42 = v33;
        v43 = v5;
        v44 = *(v58 + 72);
        sub_261B4C910(*(v31 + 56) + v44 * v40, *(v0 + 96));

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_261B41560(0, v35[2] + 1, 1, v35);
        }

        v4 = v35[2];
        v45 = v35[3];
        if (v4 >= v45 >> 1)
        {
          v35 = sub_261B41560(v45 > 1, v4 + 1, 1, v35);
        }

        v46 = *(v0 + 96);
        v35[2] = v4 + 1;
        sub_261B837B0(v46, v35 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + v4 * v44);
        v5 = v43;
        v33 = v42;
        v34 = v57;
      }

      else
      {
      }

      ++v32;
      if (v38 == v5)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v47 = *(v0 + 264);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v48 = *(v0 + 264);
  }

  v5 = sub_261D00274();
  if (v5)
  {
    goto LABEL_19;
  }

LABEL_37:
  v35 = MEMORY[0x277D84F90];
LABEL_38:
  v49 = *(v0 + 264);
  v50 = *(v0 + 232);
  v52 = *(v0 + 200);
  v51 = *(v0 + 208);
  v54 = *(v0 + 168);
  v53 = *(v0 + 176);
  v55 = *(v0 + 144);
  v59 = *(v0 + 120);
  v62 = *(v0 + 96);

  v56 = *(v0 + 8);

  return v56(v35);
}

uint64_t sub_261B91E98()
{
  v1 = v0[34];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

void *sub_261B91F60(void *a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_261B49FA0(a1, a2);
  }

  return a1;
}

uint64_t sub_261B91F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B91FE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_261B91FF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OpenReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v95 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v81 = v75 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = v75 - v6;
  v7 = sub_261CFD184();
  v8 = *(v7 - 8);
  v96 = v7;
  v97 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v94 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v87 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v85 = v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v90 = v75 - v21;
  v22 = sub_261CFD674();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_261CFD884();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_261CFFA44();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = sub_261CFD6A4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v88 = v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v75 - v36;
  v75[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  v38 = *MEMORY[0x277CC9110];
  v89 = v23;
  v39 = *(v23 + 104);
  v39(v26, v38, v22);
  v79 = v37;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v78) = v38;
  v40 = v38;
  v41 = v22;
  v77 = v23 + 104;
  v76 = v39;
  v39(v26, v40, v22);
  v42 = v90;
  v43 = v26;
  sub_261CFD6C4();
  v44 = *(v32 + 56);
  v45 = v42;
  v92 = v32 + 56;
  v93 = v31;
  v91 = v44;
  v44(v42, 0, 1, v31);
  v46 = type metadata accessor for ReminderEntity();
  (*(*(v46 - 8) + 56))(v85, 1, 1, v46);
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v41, qword_280D27028);
  v89[2](v26, v47, v41);
  sub_261CFD874();
  sub_261CFD6C4();
  v48 = v86;
  sub_261CFC844();
  v49 = sub_261CFC834();
  v88 = v49;
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v83 = v51;
  v84 = v50 + 56;
  v51(v48, 0, 1, v49);
  v51(v87, 1, 1, v49);
  v82 = *MEMORY[0x277CBA308];
  v52 = *(v97 + 104);
  v97 += 104;
  v89 = v52;
  v53 = v94;
  (v52)(v94);
  sub_261B94EA4(&qword_280D22358);
  *v95 = sub_261CFCC34();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v76(v43, v78, v41);
  sub_261CFD6C4();
  v54 = v45;
  v55 = v93;
  v91(v45, 1, 1, v93);
  LOBYTE(v99) = 2;
  v56 = sub_261CFFCE4();
  (*(*(v56 - 8) + 56))(v80, 1, 1, v56);
  v57 = v88;
  v58 = v83;
  v83(v48, 1, 1, v88);
  v59 = v53;
  v60 = v82;
  (v89)(v59, v82, v96);
  v95[1] = sub_261CFCD44();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v61 = v91;
  v91(v54, 1, 1, v55);
  v79 = sub_261CFF994();
  v99 = 0;
  v100 = 0;
  v62 = *(v79 - 8);
  v78 = *(v62 + 56);
  v80 = (v62 + 56);
  v63 = v81;
  v78(v81, 1, 1, v79);
  v58(v48, 1, 1, v57);
  v64 = v96;
  v65 = v89;
  (v89)(v94, v60, v96);
  v66 = v90;
  v67 = sub_261CFCD04();
  v68 = v95;
  v95[2] = v67;
  v61(v66, 1, 1, v93);
  v99 = 0;
  v100 = 0;
  v78(v63, 1, 1, v79);
  v69 = v86;
  v70 = v83;
  v83(v86, 1, 1, v88);
  v71 = v94;
  (v65)(v94, v60, v64);
  v72 = v90;
  v68[3] = sub_261CFCD04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB290, &qword_261D05770);
  v91(v72, 1, 1, v93);
  LOBYTE(v99) = 6;
  v73 = v88;
  v70(v69, 1, 1, v88);
  v70(v87, 1, 1, v73);
  (v89)(v71, v82, v96);
  sub_261B94D00();
  v68[4] = sub_261CFCBF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB298, &qword_261D05778);
  v98 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v68[5] = result;
  return result;
}

uint64_t sub_261B92C70()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDB278);
  __swift_project_value_buffer(v9, qword_27FEDB278);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9958 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261B93218(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ReminderEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_261B4C910(a1, &v18 - v9);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  sub_261B4C910(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B4C974(v10);
}

uint64_t OpenReminderAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for ReminderEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B4C910(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B4C974(a1);
}

uint64_t (*OpenReminderAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenReminderAppIntent.showDetail.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B934AC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.showDetail.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenReminderAppIntent.title.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B9365C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenReminderAppIntent.caption.getter()
{
  v1 = *(v0 + 24);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B93810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.caption.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B939B4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t OpenReminderAppIntent.inSmartList.setter(char *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.inSmartList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  sub_261CFFD24();
  *(v2 + 120) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 128) = v5;
  *(v2 + 136) = v4;

  return MEMORY[0x2822009F8](sub_261B93BDC, v5, v4);
}

uint64_t sub_261B93BDC()
{
  sub_261B94D54(v0 + 2, v0 + 8);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_261B93CA4;
  v2 = v0[14];

  return sub_261C57E74(v2, "OpenReminderAppIntent", 21, 2, (v0 + 2));
}

uint64_t sub_261B93CA4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_261B953C4;
  }

  else
  {
    v7 = sub_261B953C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B93DE0(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  sub_261CFFD24();
  v2[15] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[16] = v4;
  v2[17] = v3;

  return MEMORY[0x2822009F8](sub_261B93E78, v4, v3);
}

uint64_t sub_261B93E78()
{
  v1 = *(v0 + 112);
  sub_261B1A690(0);
  v2 = *(v1 + 5);
  sub_261CFC664();
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v3);
  v5 = *v1;
  v6 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v6;
  *(v0 + 16) = v5;
  v7 = *(v4 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_261B93FDC;
  v10 = *(v0 + 104);

  return v12(v10, v0 + 16, v3, v4);
}

uint64_t sub_261B93FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  v4 = *(v2 + 128);
  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_261B9415C;
  }

  else
  {
    v6 = sub_261B940F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261B940F0()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = v0[1];

  return v2();
}

uint64_t sub_261B9415C()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t static OpenReminderAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A0, &qword_261D057A8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A8, &qword_261D057B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B3199C();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2B0, &qword_261D057E0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261B9437C()
{
  swift_getKeyPath();
  sub_261B3199C();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

uint64_t sub_261B94438()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*sub_261B944A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261B94514()
{
  v1 = *(v0 + 24);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*sub_261B9457C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B945F0(uint64_t a1)
{
  v3 = type metadata accessor for ReminderEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B4C910(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B4C974(a1);
}

uint64_t (*sub_261B94680(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B946F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9958 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B9479C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A0, &qword_261D057A8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A8, &qword_261D057B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2B0, &qword_261D057E0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261B9494C(uint64_t a1)
{
  *(v2 + 112) = a1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  sub_261CFFD24();
  *(v2 + 120) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 128) = v5;
  *(v2 + 136) = v4;

  return MEMORY[0x2822009F8](sub_261B949F4, v5, v4);
}

uint64_t sub_261B949F4()
{
  sub_261B94D54(v0 + 2, v0 + 8);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_261B94ABC;
  v2 = v0[14];

  return sub_261C57E74(v2, "OpenReminderAppIntent", 21, 2, (v0 + 2));
}

uint64_t sub_261B94ABC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_261B94C5C;
  }

  else
  {
    v7 = sub_261B94BF8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B94BF8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261B94C5C()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_261B94CC4(uint64_t a1)
{
  v2 = sub_261B3199C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B94D00()
{
  result = qword_280D223D8;
  if (!qword_280D223D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223D8);
  }

  return result;
}

unint64_t sub_261B94D90()
{
  result = qword_27FEDB2B8;
  if (!qword_27FEDB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2B8);
  }

  return result;
}

unint64_t sub_261B94E1C()
{
  result = qword_27FEDB2C0;
  if (!qword_27FEDB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2C0);
  }

  return result;
}

uint64_t sub_261B94EA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReminderEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261B94EF0()
{
  result = qword_27FEDB2C8;
  if (!qword_27FEDB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2C8);
  }

  return result;
}

unint64_t sub_261B94F48()
{
  result = qword_27FEDB2D0;
  if (!qword_27FEDB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2D0);
  }

  return result;
}

uint64_t destroy for OpenReminderAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];
}

void *initializeWithCopy for OpenReminderAppIntent(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for OpenReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v7 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v8 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v9 = a2[5];
  v10 = a1[5];
  a1[5] = v9;
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void *assignWithTake for OpenReminderAppIntent(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for OpenReminderAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for OpenReminderAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of OpenReminderAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t *sub_261B953CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = (v24 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = a2[3];
    a1[2] = a2[2];
    a1[3] = v7;
    v8 = a2[5];
    a1[4] = a2[4];
    a1[5] = v8;
    v9 = type metadata accessor for ReminderEntity();
    v10 = v9[10];
    v11 = a1 + v10;
    v12 = a2 + v10;
    v13 = *(a2 + v10 + 8);
    *v11 = *(a2 + v10);
    *(v11 + 1) = v13;
    v14 = type metadata accessor for AppEntityID();
    v15 = *(v14 + 20);
    v16 = sub_261CFD844();
    v38 = *(*(v16 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v38(&v11[v15], &v12[v15], v16);
    v17 = *(v14 + 24);
    v18 = &v11[v17];
    v19 = &v12[v17];
    v20 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v19, 1, v20);
    if (EnumCaseMultiPayload == 1)
    {
      if (v22)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v26 = sub_261CFD4E4();
        (*(*(v26 - 8) + 16))(v18, v19, v26);
        v18[*(v20 + 20)] = v19[*(v20 + 20)];
        (*(v21 + 56))(v18, 0, 1, v20);
      }

      *(a1 + v9[11]) = *(a2 + v9[11]);
      *(a1 + v9[12]) = *(a2 + v9[12]);
      *(a1 + v9[13]) = *(a2 + v9[13]);
      *(a1 + v9[14]) = *(a2 + v9[14]);
      *(a1 + v9[15]) = *(a2 + v9[15]);
      *(a1 + v9[16]) = *(a2 + v9[16]);
      *(a1 + v9[17]) = *(a2 + v9[17]);
      *(a1 + v9[18]) = *(a2 + v9[18]);
      *(a1 + v9[19]) = *(a2 + v9[19]);
      *(a1 + v9[20]) = *(a2 + v9[20]);
      *(a1 + v9[21]) = *(a2 + v9[21]);
      *(a1 + v9[22]) = *(a2 + v9[22]);
      *(a1 + v9[23]) = *(a2 + v9[23]);
      *(a1 + v9[24]) = *(a2 + v9[24]);
      *(a1 + v9[25]) = *(a2 + v9[25]);
      *(a1 + v9[26]) = *(a2 + v9[26]);
      *(a1 + v9[27]) = *(a2 + v9[27]);
      *(a1 + v9[28]) = *(a2 + v9[28]);
      *(a1 + v9[29]) = *(a2 + v9[29]);
      *(a1 + v9[30]) = *(a2 + v9[30]);
      v27 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v28 = *(a2 + v27);
      *(a1 + v27) = v28;
      v29 = *(_s20CategorizedRemindersV17RecurrentInstanceVMa(0) + 20);
      v30 = *(a2 + v29);
      *(a1 + v29) = v30;
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      v31 = v28;
      v32 = v30;
    }

    else
    {
      if (v22)
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v18, v19, *(*(v25 - 8) + 64));
      }

      else
      {
        v33 = sub_261CFD4E4();
        (*(*(v33 - 8) + 16))(v18, v19, v33);
        v18[*(v20 + 20)] = v19[*(v20 + 20)];
        (*(v21 + 56))(v18, 0, 1, v20);
      }

      *(a1 + v9[11]) = *(a2 + v9[11]);
      *(a1 + v9[12]) = *(a2 + v9[12]);
      *(a1 + v9[13]) = *(a2 + v9[13]);
      *(a1 + v9[14]) = *(a2 + v9[14]);
      *(a1 + v9[15]) = *(a2 + v9[15]);
      *(a1 + v9[16]) = *(a2 + v9[16]);
      *(a1 + v9[17]) = *(a2 + v9[17]);
      *(a1 + v9[18]) = *(a2 + v9[18]);
      *(a1 + v9[19]) = *(a2 + v9[19]);
      *(a1 + v9[20]) = *(a2 + v9[20]);
      *(a1 + v9[21]) = *(a2 + v9[21]);
      *(a1 + v9[22]) = *(a2 + v9[22]);
      *(a1 + v9[23]) = *(a2 + v9[23]);
      *(a1 + v9[24]) = *(a2 + v9[24]);
      *(a1 + v9[25]) = *(a2 + v9[25]);
      *(a1 + v9[26]) = *(a2 + v9[26]);
      *(a1 + v9[27]) = *(a2 + v9[27]);
      *(a1 + v9[28]) = *(a2 + v9[28]);
      *(a1 + v9[29]) = *(a2 + v9[29]);
      *(a1 + v9[30]) = *(a2 + v9[30]);
      v34 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v35 = *(a2 + v34);
      *(a1 + v34) = v35;
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      v36 = v35;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_261B95B34(uint64_t *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *a1;

  v4 = a1[1];

  v5 = a1[2];

  v6 = a1[3];

  v7 = a1[4];

  v8 = a1[5];

  v9 = type metadata accessor for ReminderEntity();
  v10 = a1 + v9[10];
  v11 = *(v10 + 1);

  v12 = type metadata accessor for AppEntityID();
  v13 = *(v12 + 20);
  v14 = sub_261CFD844();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = *(v12 + 24);
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = (*(*(v16 - 8) + 48))(&v10[v15], 1, v16);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v17)
    {
      v18 = sub_261CFD4E4();
      (*(*(v18 - 8) + 8))(&v10[v15], v18);
    }

    v19 = *(a1 + v9[11]);

    v20 = *(a1 + v9[12]);

    v21 = *(a1 + v9[13]);

    v22 = *(a1 + v9[14]);

    v23 = *(a1 + v9[15]);

    v24 = *(a1 + v9[16]);

    v25 = *(a1 + v9[17]);

    v26 = *(a1 + v9[18]);

    v27 = *(a1 + v9[19]);

    v28 = *(a1 + v9[20]);

    v29 = *(a1 + v9[21]);

    v30 = *(a1 + v9[22]);

    v31 = *(a1 + v9[23]);

    v32 = *(a1 + v9[24]);

    v33 = *(a1 + v9[25]);

    v34 = *(a1 + v9[26]);

    v35 = *(a1 + v9[27]);

    v36 = *(a1 + v9[28]);

    v37 = *(a1 + v9[29]);

    v38 = *(a1 + v9[30]);

    v39 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  }

  else
  {
    if (!v17)
    {
      v40 = sub_261CFD4E4();
      (*(*(v40 - 8) + 8))(&v10[v15], v40);
    }

    v41 = *(a1 + v9[11]);

    v42 = *(a1 + v9[12]);

    v43 = *(a1 + v9[13]);

    v44 = *(a1 + v9[14]);

    v45 = *(a1 + v9[15]);

    v46 = *(a1 + v9[16]);

    v47 = *(a1 + v9[17]);

    v48 = *(a1 + v9[18]);

    v49 = *(a1 + v9[19]);

    v50 = *(a1 + v9[20]);

    v51 = *(a1 + v9[21]);

    v52 = *(a1 + v9[22]);

    v53 = *(a1 + v9[23]);

    v54 = *(a1 + v9[24]);

    v55 = *(a1 + v9[25]);

    v56 = *(a1 + v9[26]);

    v57 = *(a1 + v9[27]);

    v58 = *(a1 + v9[28]);

    v59 = *(a1 + v9[29]);

    v60 = *(a1 + v9[30]);

    v39 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  }

  v61 = *(a1 + *(v39 + 20));
}

void *sub_261B95EE0(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  v7 = type metadata accessor for ReminderEntity();
  v8 = v7[10];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(a2 + v8 + 8);
  *v9 = *(a2 + v8);
  *(v9 + 1) = v11;
  v12 = type metadata accessor for AppEntityID();
  v13 = *(v12 + 20);
  v14 = sub_261CFD844();
  v33 = *(*(v14 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v33(&v9[v13], &v10[v13], v14);
  v15 = *(v12 + 24);
  v16 = &v9[v15];
  v17 = &v10[v15];
  v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  if (EnumCaseMultiPayload == 1)
  {
    if (v20)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v23 = sub_261CFD4E4();
      (*(*(v23 - 8) + 16))(v16, v17, v23);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    *(a1 + v7[14]) = *(a2 + v7[14]);
    *(a1 + v7[15]) = *(a2 + v7[15]);
    *(a1 + v7[16]) = *(a2 + v7[16]);
    *(a1 + v7[17]) = *(a2 + v7[17]);
    *(a1 + v7[18]) = *(a2 + v7[18]);
    *(a1 + v7[19]) = *(a2 + v7[19]);
    *(a1 + v7[20]) = *(a2 + v7[20]);
    *(a1 + v7[21]) = *(a2 + v7[21]);
    *(a1 + v7[22]) = *(a2 + v7[22]);
    *(a1 + v7[23]) = *(a2 + v7[23]);
    *(a1 + v7[24]) = *(a2 + v7[24]);
    *(a1 + v7[25]) = *(a2 + v7[25]);
    *(a1 + v7[26]) = *(a2 + v7[26]);
    *(a1 + v7[27]) = *(a2 + v7[27]);
    *(a1 + v7[28]) = *(a2 + v7[28]);
    *(a1 + v7[29]) = *(a2 + v7[29]);
    *(a1 + v7[30]) = *(a2 + v7[30]);
    v24 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
    v25 = *(a2 + v24);
    *(a1 + v24) = v25;
    v26 = *(_s20CategorizedRemindersV17RecurrentInstanceVMa(0) + 20);
    v27 = *(a2 + v26);
    *(a1 + v26) = v27;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v28 = v25;
  }

  else
  {
    if (v20)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v22 - 8) + 64));
    }

    else
    {
      v29 = sub_261CFD4E4();
      (*(*(v29 - 8) + 16))(v16, v17, v29);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    *(a1 + v7[14]) = *(a2 + v7[14]);
    *(a1 + v7[15]) = *(a2 + v7[15]);
    *(a1 + v7[16]) = *(a2 + v7[16]);
    *(a1 + v7[17]) = *(a2 + v7[17]);
    *(a1 + v7[18]) = *(a2 + v7[18]);
    *(a1 + v7[19]) = *(a2 + v7[19]);
    *(a1 + v7[20]) = *(a2 + v7[20]);
    *(a1 + v7[21]) = *(a2 + v7[21]);
    *(a1 + v7[22]) = *(a2 + v7[22]);
    *(a1 + v7[23]) = *(a2 + v7[23]);
    *(a1 + v7[24]) = *(a2 + v7[24]);
    *(a1 + v7[25]) = *(a2 + v7[25]);
    *(a1 + v7[26]) = *(a2 + v7[26]);
    *(a1 + v7[27]) = *(a2 + v7[27]);
    *(a1 + v7[28]) = *(a2 + v7[28]);
    *(a1 + v7[29]) = *(a2 + v7[29]);
    *(a1 + v7[30]) = *(a2 + v7[30]);
    v30 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
    v27 = *(a2 + v30);
    *(a1 + v30) = v27;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
  }

  v31 = v27;
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_261B965B4(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_261B98750(a1, _s20CategorizedRemindersV12EditableItemOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    a1[5] = a2[5];
    v4 = type metadata accessor for ReminderEntity();
    v5 = v4[10];
    v6 = a1 + v5;
    v7 = a2 + v5;
    *v6 = *(a2 + v5);
    *(v6 + 1) = *(a2 + v5 + 8);
    v29 = type metadata accessor for AppEntityID();
    v8 = *(v29 + 20);
    v9 = sub_261CFD844();
    v28 = *(*(v9 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v28(&v6[v8], &v7[v8], v9);
    v10 = *(v29 + 24);
    v11 = &v6[v10];
    v12 = &v7[v10];
    v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v12, 1, v13);
    if (EnumCaseMultiPayload == 1)
    {
      if (v15)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v11, v12, *(*(v16 - 8) + 64));
      }

      else
      {
        v18 = sub_261CFD4E4();
        (*(*(v18 - 8) + 16))(v11, v12, v18);
        v11[*(v13 + 20)] = v12[*(v13 + 20)];
        (*(v14 + 56))(v11, 0, 1, v13);
      }

      *(a1 + v4[11]) = *(a2 + v4[11]);
      *(a1 + v4[12]) = *(a2 + v4[12]);
      *(a1 + v4[13]) = *(a2 + v4[13]);
      *(a1 + v4[14]) = *(a2 + v4[14]);
      *(a1 + v4[15]) = *(a2 + v4[15]);
      *(a1 + v4[16]) = *(a2 + v4[16]);
      *(a1 + v4[17]) = *(a2 + v4[17]);
      *(a1 + v4[18]) = *(a2 + v4[18]);
      *(a1 + v4[19]) = *(a2 + v4[19]);
      *(a1 + v4[20]) = *(a2 + v4[20]);
      *(a1 + v4[21]) = *(a2 + v4[21]);
      *(a1 + v4[22]) = *(a2 + v4[22]);
      *(a1 + v4[23]) = *(a2 + v4[23]);
      *(a1 + v4[24]) = *(a2 + v4[24]);
      *(a1 + v4[25]) = *(a2 + v4[25]);
      *(a1 + v4[26]) = *(a2 + v4[26]);
      *(a1 + v4[27]) = *(a2 + v4[27]);
      *(a1 + v4[28]) = *(a2 + v4[28]);
      *(a1 + v4[29]) = *(a2 + v4[29]);
      *(a1 + v4[30]) = *(a2 + v4[30]);
      v19 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v20 = *(a2 + v19);
      *(a1 + v19) = v20;
      v21 = *(_s20CategorizedRemindersV17RecurrentInstanceVMa(0) + 20);
      v22 = *(a2 + v21);
      *(a1 + v21) = v22;
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      v23 = v20;
    }

    else
    {
      if (v15)
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v11, v12, *(*(v17 - 8) + 64));
      }

      else
      {
        v24 = sub_261CFD4E4();
        (*(*(v24 - 8) + 16))(v11, v12, v24);
        v11[*(v13 + 20)] = v12[*(v13 + 20)];
        (*(v14 + 56))(v11, 0, 1, v13);
      }

      *(a1 + v4[11]) = *(a2 + v4[11]);
      *(a1 + v4[12]) = *(a2 + v4[12]);
      *(a1 + v4[13]) = *(a2 + v4[13]);
      *(a1 + v4[14]) = *(a2 + v4[14]);
      *(a1 + v4[15]) = *(a2 + v4[15]);
      *(a1 + v4[16]) = *(a2 + v4[16]);
      *(a1 + v4[17]) = *(a2 + v4[17]);
      *(a1 + v4[18]) = *(a2 + v4[18]);
      *(a1 + v4[19]) = *(a2 + v4[19]);
      *(a1 + v4[20]) = *(a2 + v4[20]);
      *(a1 + v4[21]) = *(a2 + v4[21]);
      *(a1 + v4[22]) = *(a2 + v4[22]);
      *(a1 + v4[23]) = *(a2 + v4[23]);
      *(a1 + v4[24]) = *(a2 + v4[24]);
      *(a1 + v4[25]) = *(a2 + v4[25]);
      *(a1 + v4[26]) = *(a2 + v4[26]);
      *(a1 + v4[27]) = *(a2 + v4[27]);
      *(a1 + v4[28]) = *(a2 + v4[28]);
      *(a1 + v4[29]) = *(a2 + v4[29]);
      *(a1 + v4[30]) = *(a2 + v4[30]);
      v25 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v22 = *(a2 + v25);
      *(a1 + v25) = v22;
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
    }

    v26 = v22;
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_OWORD *sub_261B96CF0(_OWORD *a1, _OWORD *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  v6 = type metadata accessor for ReminderEntity();
  v7 = v6[10];
  v8 = a1 + v7;
  v9 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v10 = type metadata accessor for AppEntityID();
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v8[v13];
  v15 = &v9[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  if (EnumCaseMultiPayload == 1)
  {
    if (v18)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v14, v15, *(*(v19 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 32))(v14, v15, v21);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    *(a1 + v6[11]) = *(a2 + v6[11]);
    *(a1 + v6[12]) = *(a2 + v6[12]);
    *(a1 + v6[13]) = *(a2 + v6[13]);
    *(a1 + v6[14]) = *(a2 + v6[14]);
    *(a1 + v6[15]) = *(a2 + v6[15]);
    *(a1 + v6[16]) = *(a2 + v6[16]);
    *(a1 + v6[17]) = *(a2 + v6[17]);
    *(a1 + v6[18]) = *(a2 + v6[18]);
    *(a1 + v6[19]) = *(a2 + v6[19]);
    *(a1 + v6[20]) = *(a2 + v6[20]);
    *(a1 + v6[21]) = *(a2 + v6[21]);
    *(a1 + v6[22]) = *(a2 + v6[22]);
    *(a1 + v6[23]) = *(a2 + v6[23]);
    *(a1 + v6[24]) = *(a2 + v6[24]);
    *(a1 + v6[25]) = *(a2 + v6[25]);
    *(a1 + v6[26]) = *(a2 + v6[26]);
    *(a1 + v6[27]) = *(a2 + v6[27]);
    *(a1 + v6[28]) = *(a2 + v6[28]);
    *(a1 + v6[29]) = *(a2 + v6[29]);
    *(a1 + v6[30]) = *(a2 + v6[30]);
    v22 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
    *(a1 + *(v22 + 20)) = *(a2 + *(v22 + 20));
    v23 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  }

  else
  {
    if (v18)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v14, v15, *(*(v20 - 8) + 64));
    }

    else
    {
      v24 = sub_261CFD4E4();
      (*(*(v24 - 8) + 32))(v14, v15, v24);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      (*(v17 + 56))(v14, 0, 1, v16);
    }

    *(a1 + v6[11]) = *(a2 + v6[11]);
    *(a1 + v6[12]) = *(a2 + v6[12]);
    *(a1 + v6[13]) = *(a2 + v6[13]);
    *(a1 + v6[14]) = *(a2 + v6[14]);
    *(a1 + v6[15]) = *(a2 + v6[15]);
    *(a1 + v6[16]) = *(a2 + v6[16]);
    *(a1 + v6[17]) = *(a2 + v6[17]);
    *(a1 + v6[18]) = *(a2 + v6[18]);
    *(a1 + v6[19]) = *(a2 + v6[19]);
    *(a1 + v6[20]) = *(a2 + v6[20]);
    *(a1 + v6[21]) = *(a2 + v6[21]);
    *(a1 + v6[22]) = *(a2 + v6[22]);
    *(a1 + v6[23]) = *(a2 + v6[23]);
    *(a1 + v6[24]) = *(a2 + v6[24]);
    *(a1 + v6[25]) = *(a2 + v6[25]);
    *(a1 + v6[26]) = *(a2 + v6[26]);
    *(a1 + v6[27]) = *(a2 + v6[27]);
    *(a1 + v6[28]) = *(a2 + v6[28]);
    *(a1 + v6[29]) = *(a2 + v6[29]);
    *(a1 + v6[30]) = *(a2 + v6[30]);
    v23 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  }

  *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
  swift_storeEnumTagMultiPayload();
  return a1;
}

_OWORD *sub_261B971A0(_OWORD *a1, _OWORD *a2)
{
  if (a1 != a2)
  {
    sub_261B98750(a1, _s20CategorizedRemindersV12EditableItemOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    a1[2] = a2[2];
    v6 = type metadata accessor for ReminderEntity();
    v7 = v6[10];
    v8 = a1 + v7;
    v9 = a2 + v7;
    *(a1 + v7) = *(a2 + v7);
    v10 = type metadata accessor for AppEntityID();
    v11 = *(v10 + 20);
    v12 = sub_261CFD844();
    (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
    v13 = *(v10 + 24);
    v14 = &v8[v13];
    v15 = &v9[v13];
    v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    if (EnumCaseMultiPayload == 1)
    {
      if (v18)
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v14, v15, *(*(v19 - 8) + 64));
      }

      else
      {
        v21 = sub_261CFD4E4();
        (*(*(v21 - 8) + 32))(v14, v15, v21);
        v14[*(v16 + 20)] = v15[*(v16 + 20)];
        (*(v17 + 56))(v14, 0, 1, v16);
      }

      *(a1 + v6[11]) = *(a2 + v6[11]);
      *(a1 + v6[12]) = *(a2 + v6[12]);
      *(a1 + v6[13]) = *(a2 + v6[13]);
      *(a1 + v6[14]) = *(a2 + v6[14]);
      *(a1 + v6[15]) = *(a2 + v6[15]);
      *(a1 + v6[16]) = *(a2 + v6[16]);
      *(a1 + v6[17]) = *(a2 + v6[17]);
      *(a1 + v6[18]) = *(a2 + v6[18]);
      *(a1 + v6[19]) = *(a2 + v6[19]);
      *(a1 + v6[20]) = *(a2 + v6[20]);
      *(a1 + v6[21]) = *(a2 + v6[21]);
      *(a1 + v6[22]) = *(a2 + v6[22]);
      *(a1 + v6[23]) = *(a2 + v6[23]);
      *(a1 + v6[24]) = *(a2 + v6[24]);
      *(a1 + v6[25]) = *(a2 + v6[25]);
      *(a1 + v6[26]) = *(a2 + v6[26]);
      *(a1 + v6[27]) = *(a2 + v6[27]);
      *(a1 + v6[28]) = *(a2 + v6[28]);
      *(a1 + v6[29]) = *(a2 + v6[29]);
      *(a1 + v6[30]) = *(a2 + v6[30]);
      v22 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
      *(a1 + *(v22 + 20)) = *(a2 + *(v22 + 20));
      v23 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
    }

    else
    {
      if (v18)
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v14, v15, *(*(v20 - 8) + 64));
      }

      else
      {
        v24 = sub_261CFD4E4();
        (*(*(v24 - 8) + 32))(v14, v15, v24);
        v14[*(v16 + 20)] = v15[*(v16 + 20)];
        (*(v17 + 56))(v14, 0, 1, v16);
      }

      *(a1 + v6[11]) = *(a2 + v6[11]);
      *(a1 + v6[12]) = *(a2 + v6[12]);
      *(a1 + v6[13]) = *(a2 + v6[13]);
      *(a1 + v6[14]) = *(a2 + v6[14]);
      *(a1 + v6[15]) = *(a2 + v6[15]);
      *(a1 + v6[16]) = *(a2 + v6[16]);
      *(a1 + v6[17]) = *(a2 + v6[17]);
      *(a1 + v6[18]) = *(a2 + v6[18]);
      *(a1 + v6[19]) = *(a2 + v6[19]);
      *(a1 + v6[20]) = *(a2 + v6[20]);
      *(a1 + v6[21]) = *(a2 + v6[21]);
      *(a1 + v6[22]) = *(a2 + v6[22]);
      *(a1 + v6[23]) = *(a2 + v6[23]);
      *(a1 + v6[24]) = *(a2 + v6[24]);
      *(a1 + v6[25]) = *(a2 + v6[25]);
      *(a1 + v6[26]) = *(a2 + v6[26]);
      *(a1 + v6[27]) = *(a2 + v6[27]);
      *(a1 + v6[28]) = *(a2 + v6[28]);
      *(a1 + v6[29]) = *(a2 + v6[29]);
      *(a1 + v6[30]) = *(a2 + v6[30]);
      v23 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
    }

    *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_261B976C4()
{
  result = _s20CategorizedRemindersV15FetchedReminderVMa(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = _s20CategorizedRemindersV17RecurrentInstanceVMa(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_261B97788(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
    sub_261CFCDA4();
  }

  else
  {
    v6 = a1;
    v27 = a2[2];
    a1[1] = a2[1];
    a1[2] = v27;
    v28 = a2[4];
    a1[3] = a2[3];
    a1[4] = v28;
    a1[5] = a2[5];
    v7 = type metadata accessor for ReminderEntity();
    v8 = v7[10];
    v9 = v6 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID();
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v26 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v26(&v9[v13], &v10[v13], v14);
    v15 = *(v12 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    *(v6 + v7[11]) = *(a2 + v7[11]);
    *(v6 + v7[12]) = *(a2 + v7[12]);
    *(v6 + v7[13]) = *(a2 + v7[13]);
    *(v6 + v7[14]) = *(a2 + v7[14]);
    *(v6 + v7[15]) = *(a2 + v7[15]);
    *(v6 + v7[16]) = *(a2 + v7[16]);
    *(v6 + v7[17]) = *(a2 + v7[17]);
    *(v6 + v7[18]) = *(a2 + v7[18]);
    *(v6 + v7[19]) = *(a2 + v7[19]);
    *(v6 + v7[20]) = *(a2 + v7[20]);
    *(v6 + v7[21]) = *(a2 + v7[21]);
    *(v6 + v7[22]) = *(a2 + v7[22]);
    *(v6 + v7[23]) = *(a2 + v7[23]);
    *(v6 + v7[24]) = *(a2 + v7[24]);
    *(v6 + v7[25]) = *(a2 + v7[25]);
    *(v6 + v7[26]) = *(a2 + v7[26]);
    *(v6 + v7[27]) = *(a2 + v7[27]);
    *(v6 + v7[28]) = *(a2 + v7[28]);
    *(v6 + v7[29]) = *(a2 + v7[29]);
    *(v6 + v7[30]) = *(a2 + v7[30]);
    v22 = *(a3 + 20);
    v23 = *(a2 + v22);
    *(v6 + v22) = v23;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v24 = v23;
  }

  return v6;
}

void sub_261B97BC8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];

  v6 = a1[2];

  v7 = a1[3];

  v8 = a1[4];

  v9 = a1[5];

  v10 = type metadata accessor for ReminderEntity();
  v11 = a1 + v10[10];
  v12 = *(v11 + 1);

  v13 = type metadata accessor for AppEntityID();
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v17 - 8) + 48))(&v11[v16], 1, v17))
  {
    v18 = sub_261CFD4E4();
    (*(*(v18 - 8) + 8))(&v11[v16], v18);
  }

  v19 = *(a1 + v10[11]);

  v20 = *(a1 + v10[12]);

  v21 = *(a1 + v10[13]);

  v22 = *(a1 + v10[14]);

  v23 = *(a1 + v10[15]);

  v24 = *(a1 + v10[16]);

  v25 = *(a1 + v10[17]);

  v26 = *(a1 + v10[18]);

  v27 = *(a1 + v10[19]);

  v28 = *(a1 + v10[20]);

  v29 = *(a1 + v10[21]);

  v30 = *(a1 + v10[22]);

  v31 = *(a1 + v10[23]);

  v32 = *(a1 + v10[24]);

  v33 = *(a1 + v10[25]);

  v34 = *(a1 + v10[26]);

  v35 = *(a1 + v10[27]);

  v36 = *(a1 + v10[28]);

  v37 = *(a1 + v10[29]);

  v38 = *(a1 + v10[30]);

  v39 = *(a1 + *(a2 + 20));
}

void *sub_261B97E14(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;
  v8 = type metadata accessor for ReminderEntity();
  v9 = v8[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v13 = type metadata accessor for AppEntityID();
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  v27 = *(*(v15 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v27(&v10[v14], &v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v17, v18, v22);
    v17[*(v19 + 20)] = v18[*(v19 + 20)];
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  *(a1 + v8[11]) = *(a2 + v8[11]);
  *(a1 + v8[12]) = *(a2 + v8[12]);
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  *(a1 + v8[15]) = *(a2 + v8[15]);
  *(a1 + v8[16]) = *(a2 + v8[16]);
  *(a1 + v8[17]) = *(a2 + v8[17]);
  *(a1 + v8[18]) = *(a2 + v8[18]);
  *(a1 + v8[19]) = *(a2 + v8[19]);
  *(a1 + v8[20]) = *(a2 + v8[20]);
  *(a1 + v8[21]) = *(a2 + v8[21]);
  *(a1 + v8[22]) = *(a2 + v8[22]);
  *(a1 + v8[23]) = *(a2 + v8[23]);
  *(a1 + v8[24]) = *(a2 + v8[24]);
  *(a1 + v8[25]) = *(a2 + v8[25]);
  *(a1 + v8[26]) = *(a2 + v8[26]);
  *(a1 + v8[27]) = *(a2 + v8[27]);
  *(a1 + v8[28]) = *(a2 + v8[28]);
  *(a1 + v8[29]) = *(a2 + v8[29]);
  *(a1 + v8[30]) = *(a2 + v8[30]);
  v23 = *(a3 + 20);
  v24 = *(a2 + v23);
  *(a1 + v23) = v24;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v25 = v24;
  return a1;
}

uint64_t *sub_261B9820C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v6 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v7 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v8 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v9 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v10 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v11 = type metadata accessor for ReminderEntity();
  v12 = v11[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  *v13 = *(a2 + v12);
  v15 = *(a1 + v12 + 8);
  *(v13 + 1) = *(a2 + v12 + 8);
  sub_261CFD104();

  v16 = type metadata accessor for AppEntityID();
  v17 = *(v16 + 20);
  v18 = sub_261CFD844();
  (*(*(v18 - 8) + 24))(&v13[v17], &v14[v17], v18);
  v19 = *(v16 + 24);
  v20 = &v13[v19];
  v21 = &v14[v19];
  v22 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  LODWORD(v17) = v24(v20, 1, v22);
  v25 = v24(v21, 1, v22);
  if (!v17)
  {
    if (!v25)
    {
      v73 = sub_261CFD4E4();
      (*(*(v73 - 8) + 24))(v20, v21, v73);
      v20[*(v22 + 20)] = v21[*(v22 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v20, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v25)
  {
LABEL_6:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v20, v21, *(*(v27 - 8) + 64));
    goto LABEL_7;
  }

  v26 = sub_261CFD4E4();
  (*(*(v26 - 8) + 16))(v20, v21, v26);
  v20[*(v22 + 20)] = v21[*(v22 + 20)];
  (*(v23 + 56))(v20, 0, 1, v22);
LABEL_7:
  v28 = v11[11];
  v29 = *(a1 + v28);
  *(a1 + v28) = *(a2 + v28);
  sub_261CFCDA4();

  v30 = v11[12];
  v31 = *(a1 + v30);
  *(a1 + v30) = *(a2 + v30);
  sub_261CFCDA4();

  v32 = v11[13];
  v33 = *(a1 + v32);
  *(a1 + v32) = *(a2 + v32);
  sub_261CFCDA4();

  v34 = v11[14];
  v35 = *(a1 + v34);
  *(a1 + v34) = *(a2 + v34);
  sub_261CFCDA4();

  v36 = v11[15];
  v37 = *(a1 + v36);
  *(a1 + v36) = *(a2 + v36);
  sub_261CFCDA4();

  v38 = v11[16];
  v39 = *(a1 + v38);
  *(a1 + v38) = *(a2 + v38);
  sub_261CFCDA4();

  v40 = v11[17];
  v41 = *(a1 + v40);
  *(a1 + v40) = *(a2 + v40);
  sub_261CFCDA4();

  v42 = v11[18];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);
  sub_261CFCDA4();

  v44 = v11[19];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);
  sub_261CFCDA4();

  v46 = v11[20];
  v47 = *(a1 + v46);
  *(a1 + v46) = *(a2 + v46);
  sub_261CFCDA4();

  v48 = v11[21];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);
  sub_261CFCDA4();

  v50 = v11[22];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);
  sub_261CFCDA4();

  v52 = v11[23];
  v53 = *(a1 + v52);
  *(a1 + v52) = *(a2 + v52);
  sub_261CFCDA4();

  v54 = v11[24];
  v55 = *(a1 + v54);
  *(a1 + v54) = *(a2 + v54);
  sub_261CFCDA4();

  v56 = v11[25];
  v57 = *(a1 + v56);
  *(a1 + v56) = *(a2 + v56);
  sub_261CFCDA4();

  v58 = v11[26];
  v59 = *(a1 + v58);
  *(a1 + v58) = *(a2 + v58);
  sub_261CFCDA4();

  v60 = v11[27];
  v61 = *(a1 + v60);
  *(a1 + v60) = *(a2 + v60);
  sub_261CFCDA4();

  v62 = v11[28];
  v63 = *(a1 + v62);
  *(a1 + v62) = *(a2 + v62);
  sub_261CFCDA4();

  v64 = v11[29];
  v65 = *(a1 + v64);
  *(a1 + v64) = *(a2 + v64);
  sub_261CFCDA4();

  v66 = v11[30];
  v67 = *(a1 + v66);
  *(a1 + v66) = *(a2 + v66);
  sub_261CFCDA4();

  v68 = *(a3 + 20);
  v69 = *(a2 + v68);
  v70 = *(a1 + v68);
  *(a1 + v68) = v69;
  v71 = v69;

  return a1;
}

uint64_t sub_261B98750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_261B987B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = a1[1];
  a1[1] = a2[1];

  v7 = a1[2];
  a1[2] = a2[2];

  v8 = a1[3];
  a1[3] = a2[3];

  v9 = a1[4];
  a1[4] = a2[4];

  v10 = a1[5];
  a1[5] = a2[5];

  v11 = type metadata accessor for ReminderEntity();
  v12 = v11[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a2 + v12 + 8);
  v16 = *(a1 + v12 + 8);
  *v13 = *(a2 + v12);
  *(v13 + 1) = v15;

  v17 = type metadata accessor for AppEntityID();
  v18 = *(v17 + 20);
  v19 = sub_261CFD844();
  (*(*(v19 - 8) + 40))(&v13[v18], &v14[v18], v19);
  v20 = *(v17 + 24);
  v21 = &v13[v20];
  v22 = &v14[v20];
  v23 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  LODWORD(v18) = v25(v21, 1, v23);
  v26 = v25(v22, 1, v23);
  if (!v18)
  {
    if (!v26)
    {
      v72 = sub_261CFD4E4();
      (*(*(v72 - 8) + 40))(v21, v22, v72);
      v21[*(v23 + 20)] = v22[*(v23 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v21, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v26)
  {
LABEL_6:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v21, v22, *(*(v28 - 8) + 64));
    goto LABEL_7;
  }

  v27 = sub_261CFD4E4();
  (*(*(v27 - 8) + 32))(v21, v22, v27);
  v21[*(v23 + 20)] = v22[*(v23 + 20)];
  (*(v24 + 56))(v21, 0, 1, v23);
LABEL_7:
  v29 = v11[11];
  v30 = *(a1 + v29);
  *(a1 + v29) = *(a2 + v29);

  v31 = v11[12];
  v32 = *(a1 + v31);
  *(a1 + v31) = *(a2 + v31);

  v33 = v11[13];
  v34 = *(a1 + v33);
  *(a1 + v33) = *(a2 + v33);

  v35 = v11[14];
  v36 = *(a1 + v35);
  *(a1 + v35) = *(a2 + v35);

  v37 = v11[15];
  v38 = *(a1 + v37);
  *(a1 + v37) = *(a2 + v37);

  v39 = v11[16];
  v40 = *(a1 + v39);
  *(a1 + v39) = *(a2 + v39);

  v41 = v11[17];
  v42 = *(a1 + v41);
  *(a1 + v41) = *(a2 + v41);

  v43 = v11[18];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = v11[19];
  v46 = *(a1 + v45);
  *(a1 + v45) = *(a2 + v45);

  v47 = v11[20];
  v48 = *(a1 + v47);
  *(a1 + v47) = *(a2 + v47);

  v49 = v11[21];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = v11[22];
  v52 = *(a1 + v51);
  *(a1 + v51) = *(a2 + v51);

  v53 = v11[23];
  v54 = *(a1 + v53);
  *(a1 + v53) = *(a2 + v53);

  v55 = v11[24];
  v56 = *(a1 + v55);
  *(a1 + v55) = *(a2 + v55);

  v57 = v11[25];
  v58 = *(a1 + v57);
  *(a1 + v57) = *(a2 + v57);

  v59 = v11[26];
  v60 = *(a1 + v59);
  *(a1 + v59) = *(a2 + v59);

  v61 = v11[27];
  v62 = *(a1 + v61);
  *(a1 + v61) = *(a2 + v61);

  v63 = v11[28];
  v64 = *(a1 + v63);
  *(a1 + v63) = *(a2 + v63);

  v65 = v11[29];
  v66 = *(a1 + v65);
  *(a1 + v65) = *(a2 + v65);

  v67 = v11[30];
  v68 = *(a1 + v67);
  *(a1 + v67) = *(a2 + v67);

  v69 = *(a3 + 20);
  v70 = *(a1 + v69);
  *(a1 + v69) = *(a2 + v69);

  return a1;
}

uint64_t *sub_261B98C5C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
    sub_261CFCDA4();
  }

  else
  {
    v6 = a1;
    v30 = a2[2];
    a1[1] = a2[1];
    a1[2] = v30;
    v31 = a2[4];
    a1[3] = a2[3];
    a1[4] = v31;
    a1[5] = a2[5];
    v7 = type metadata accessor for ReminderEntity();
    v8 = v7[10];
    v9 = v6 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID();
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v29 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v29(&v9[v13], &v10[v13], v14);
    v15 = *(v12 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    *(v6 + v7[11]) = *(a2 + v7[11]);
    *(v6 + v7[12]) = *(a2 + v7[12]);
    *(v6 + v7[13]) = *(a2 + v7[13]);
    *(v6 + v7[14]) = *(a2 + v7[14]);
    *(v6 + v7[15]) = *(a2 + v7[15]);
    *(v6 + v7[16]) = *(a2 + v7[16]);
    *(v6 + v7[17]) = *(a2 + v7[17]);
    *(v6 + v7[18]) = *(a2 + v7[18]);
    *(v6 + v7[19]) = *(a2 + v7[19]);
    *(v6 + v7[20]) = *(a2 + v7[20]);
    *(v6 + v7[21]) = *(a2 + v7[21]);
    *(v6 + v7[22]) = *(a2 + v7[22]);
    *(v6 + v7[23]) = *(a2 + v7[23]);
    *(v6 + v7[24]) = *(a2 + v7[24]);
    *(v6 + v7[25]) = *(a2 + v7[25]);
    *(v6 + v7[26]) = *(a2 + v7[26]);
    *(v6 + v7[27]) = *(a2 + v7[27]);
    *(v6 + v7[28]) = *(a2 + v7[28]);
    *(v6 + v7[29]) = *(a2 + v7[29]);
    *(v6 + v7[30]) = *(a2 + v7[30]);
    v22 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
    v23 = *(a2 + v22);
    *(v6 + v22) = v23;
    v24 = *(a3 + 20);
    v25 = *(a2 + v24);
    *(v6 + v24) = v25;
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v26 = v23;
    v27 = v25;
  }

  return v6;
}

void sub_261B990C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];

  v6 = a1[2];

  v7 = a1[3];

  v8 = a1[4];

  v9 = a1[5];

  v10 = type metadata accessor for ReminderEntity();
  v11 = a1 + v10[10];
  v12 = *(v11 + 1);

  v13 = type metadata accessor for AppEntityID();
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v17 - 8) + 48))(&v11[v16], 1, v17))
  {
    v18 = sub_261CFD4E4();
    (*(*(v18 - 8) + 8))(&v11[v16], v18);
  }

  v19 = *(a1 + v10[11]);

  v20 = *(a1 + v10[12]);

  v21 = *(a1 + v10[13]);

  v22 = *(a1 + v10[14]);

  v23 = *(a1 + v10[15]);

  v24 = *(a1 + v10[16]);

  v25 = *(a1 + v10[17]);

  v26 = *(a1 + v10[18]);

  v27 = *(a1 + v10[19]);

  v28 = *(a1 + v10[20]);

  v29 = *(a1 + v10[21]);

  v30 = *(a1 + v10[22]);

  v31 = *(a1 + v10[23]);

  v32 = *(a1 + v10[24]);

  v33 = *(a1 + v10[25]);

  v34 = *(a1 + v10[26]);

  v35 = *(a1 + v10[27]);

  v36 = *(a1 + v10[28]);

  v37 = *(a1 + v10[29]);

  v38 = *(a1 + v10[30]);

  v39 = *(a1 + *(a2 + 20));
}

void *sub_261B99324(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;
  v8 = type metadata accessor for ReminderEntity();
  v9 = v8[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v13 = type metadata accessor for AppEntityID();
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  v30 = *(*(v15 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v30(&v10[v14], &v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v17, v18, v22);
    v17[*(v19 + 20)] = v18[*(v19 + 20)];
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  *(a1 + v8[11]) = *(a2 + v8[11]);
  *(a1 + v8[12]) = *(a2 + v8[12]);
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  *(a1 + v8[15]) = *(a2 + v8[15]);
  *(a1 + v8[16]) = *(a2 + v8[16]);
  *(a1 + v8[17]) = *(a2 + v8[17]);
  *(a1 + v8[18]) = *(a2 + v8[18]);
  *(a1 + v8[19]) = *(a2 + v8[19]);
  *(a1 + v8[20]) = *(a2 + v8[20]);
  *(a1 + v8[21]) = *(a2 + v8[21]);
  *(a1 + v8[22]) = *(a2 + v8[22]);
  *(a1 + v8[23]) = *(a2 + v8[23]);
  *(a1 + v8[24]) = *(a2 + v8[24]);
  *(a1 + v8[25]) = *(a2 + v8[25]);
  *(a1 + v8[26]) = *(a2 + v8[26]);
  *(a1 + v8[27]) = *(a2 + v8[27]);
  *(a1 + v8[28]) = *(a2 + v8[28]);
  *(a1 + v8[29]) = *(a2 + v8[29]);
  *(a1 + v8[30]) = *(a2 + v8[30]);
  v23 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
  v24 = *(a2 + v23);
  *(a1 + v23) = v24;
  v25 = *(a3 + 20);
  v26 = *(a2 + v25);
  *(a1 + v25) = v26;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v27 = v24;
  v28 = v26;
  return a1;
}

uint64_t *sub_261B99744(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v6 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v7 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v8 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v9 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v10 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v11 = type metadata accessor for ReminderEntity();
  v12 = v11[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  *v13 = *(a2 + v12);
  v15 = *(a1 + v12 + 8);
  *(v13 + 1) = *(a2 + v12 + 8);
  sub_261CFD104();

  v16 = type metadata accessor for AppEntityID();
  v17 = *(v16 + 20);
  v18 = sub_261CFD844();
  (*(*(v18 - 8) + 24))(&v13[v17], &v14[v17], v18);
  v19 = *(v16 + 24);
  v20 = &v13[v19];
  v21 = &v14[v19];
  v22 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  LODWORD(v17) = v24(v20, 1, v22);
  v25 = v24(v21, 1, v22);
  if (!v17)
  {
    if (!v25)
    {
      v77 = sub_261CFD4E4();
      (*(*(v77 - 8) + 24))(v20, v21, v77);
      v20[*(v22 + 20)] = v21[*(v22 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v20, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v25)
  {
LABEL_6:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v20, v21, *(*(v27 - 8) + 64));
    goto LABEL_7;
  }

  v26 = sub_261CFD4E4();
  (*(*(v26 - 8) + 16))(v20, v21, v26);
  v20[*(v22 + 20)] = v21[*(v22 + 20)];
  (*(v23 + 56))(v20, 0, 1, v22);
LABEL_7:
  v28 = v11[11];
  v29 = *(a1 + v28);
  *(a1 + v28) = *(a2 + v28);
  sub_261CFCDA4();

  v30 = v11[12];
  v31 = *(a1 + v30);
  *(a1 + v30) = *(a2 + v30);
  sub_261CFCDA4();

  v32 = v11[13];
  v33 = *(a1 + v32);
  *(a1 + v32) = *(a2 + v32);
  sub_261CFCDA4();

  v34 = v11[14];
  v35 = *(a1 + v34);
  *(a1 + v34) = *(a2 + v34);
  sub_261CFCDA4();

  v36 = v11[15];
  v37 = *(a1 + v36);
  *(a1 + v36) = *(a2 + v36);
  sub_261CFCDA4();

  v38 = v11[16];
  v39 = *(a1 + v38);
  *(a1 + v38) = *(a2 + v38);
  sub_261CFCDA4();

  v40 = v11[17];
  v41 = *(a1 + v40);
  *(a1 + v40) = *(a2 + v40);
  sub_261CFCDA4();

  v42 = v11[18];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);
  sub_261CFCDA4();

  v44 = v11[19];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);
  sub_261CFCDA4();

  v46 = v11[20];
  v47 = *(a1 + v46);
  *(a1 + v46) = *(a2 + v46);
  sub_261CFCDA4();

  v48 = v11[21];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);
  sub_261CFCDA4();

  v50 = v11[22];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);
  sub_261CFCDA4();

  v52 = v11[23];
  v53 = *(a1 + v52);
  *(a1 + v52) = *(a2 + v52);
  sub_261CFCDA4();

  v54 = v11[24];
  v55 = *(a1 + v54);
  *(a1 + v54) = *(a2 + v54);
  sub_261CFCDA4();

  v56 = v11[25];
  v57 = *(a1 + v56);
  *(a1 + v56) = *(a2 + v56);
  sub_261CFCDA4();

  v58 = v11[26];
  v59 = *(a1 + v58);
  *(a1 + v58) = *(a2 + v58);
  sub_261CFCDA4();

  v60 = v11[27];
  v61 = *(a1 + v60);
  *(a1 + v60) = *(a2 + v60);
  sub_261CFCDA4();

  v62 = v11[28];
  v63 = *(a1 + v62);
  *(a1 + v62) = *(a2 + v62);
  sub_261CFCDA4();

  v64 = v11[29];
  v65 = *(a1 + v64);
  *(a1 + v64) = *(a2 + v64);
  sub_261CFCDA4();

  v66 = v11[30];
  v67 = *(a1 + v66);
  *(a1 + v66) = *(a2 + v66);
  sub_261CFCDA4();

  v68 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
  v69 = *(a2 + v68);
  v70 = *(a1 + v68);
  *(a1 + v68) = v69;
  v71 = v69;

  v72 = *(a3 + 20);
  v73 = *(a2 + v72);
  v74 = *(a1 + v72);
  *(a1 + v72) = v73;
  v75 = v73;

  return a1;
}

_OWORD *sub_261B99CA8(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  v7 = type metadata accessor for ReminderEntity();
  v8 = v7[10];
  v9 = a1 + v8;
  v10 = a2 + v8;
  *(a1 + v8) = *(a2 + v8);
  v11 = type metadata accessor for AppEntityID();
  v12 = *(v11 + 20);
  v13 = sub_261CFD844();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v14 = *(v11 + 24);
  v15 = &v9[v14];
  v16 = &v10[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
  }

  else
  {
    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 32))(v15, v16, v20);
    v15[*(v17 + 20)] = v16[*(v17 + 20)];
    (*(v18 + 56))(v15, 0, 1, v17);
  }

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  *(a1 + v7[14]) = *(a2 + v7[14]);
  *(a1 + v7[15]) = *(a2 + v7[15]);
  *(a1 + v7[16]) = *(a2 + v7[16]);
  *(a1 + v7[17]) = *(a2 + v7[17]);
  *(a1 + v7[18]) = *(a2 + v7[18]);
  *(a1 + v7[19]) = *(a2 + v7[19]);
  *(a1 + v7[20]) = *(a2 + v7[20]);
  *(a1 + v7[21]) = *(a2 + v7[21]);
  *(a1 + v7[22]) = *(a2 + v7[22]);
  *(a1 + v7[23]) = *(a2 + v7[23]);
  *(a1 + v7[24]) = *(a2 + v7[24]);
  *(a1 + v7[25]) = *(a2 + v7[25]);
  *(a1 + v7[26]) = *(a2 + v7[26]);
  *(a1 + v7[27]) = *(a2 + v7[27]);
  *(a1 + v7[28]) = *(a2 + v7[28]);
  *(a1 + v7[29]) = *(a2 + v7[29]);
  *(a1 + v7[30]) = *(a2 + v7[30]);
  v21 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t *sub_261B99F7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = a1[1];
  a1[1] = a2[1];

  v7 = a1[2];
  a1[2] = a2[2];

  v8 = a1[3];
  a1[3] = a2[3];

  v9 = a1[4];
  a1[4] = a2[4];

  v10 = a1[5];
  a1[5] = a2[5];

  v11 = type metadata accessor for ReminderEntity();
  v12 = v11[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a2 + v12 + 8);
  v16 = *(a1 + v12 + 8);
  *v13 = *(a2 + v12);
  *(v13 + 1) = v15;

  v17 = type metadata accessor for AppEntityID();
  v18 = *(v17 + 20);
  v19 = sub_261CFD844();
  (*(*(v19 - 8) + 40))(&v13[v18], &v14[v18], v19);
  v20 = *(v17 + 24);
  v21 = &v13[v20];
  v22 = &v14[v20];
  v23 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  LODWORD(v18) = v25(v21, 1, v23);
  v26 = v25(v22, 1, v23);
  if (!v18)
  {
    if (!v26)
    {
      v74 = sub_261CFD4E4();
      (*(*(v74 - 8) + 40))(v21, v22, v74);
      v21[*(v23 + 20)] = v22[*(v23 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v21, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v26)
  {
LABEL_6:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v21, v22, *(*(v28 - 8) + 64));
    goto LABEL_7;
  }

  v27 = sub_261CFD4E4();
  (*(*(v27 - 8) + 32))(v21, v22, v27);
  v21[*(v23 + 20)] = v22[*(v23 + 20)];
  (*(v24 + 56))(v21, 0, 1, v23);
LABEL_7:
  v29 = v11[11];
  v30 = *(a1 + v29);
  *(a1 + v29) = *(a2 + v29);

  v31 = v11[12];
  v32 = *(a1 + v31);
  *(a1 + v31) = *(a2 + v31);

  v33 = v11[13];
  v34 = *(a1 + v33);
  *(a1 + v33) = *(a2 + v33);

  v35 = v11[14];
  v36 = *(a1 + v35);
  *(a1 + v35) = *(a2 + v35);

  v37 = v11[15];
  v38 = *(a1 + v37);
  *(a1 + v37) = *(a2 + v37);

  v39 = v11[16];
  v40 = *(a1 + v39);
  *(a1 + v39) = *(a2 + v39);

  v41 = v11[17];
  v42 = *(a1 + v41);
  *(a1 + v41) = *(a2 + v41);

  v43 = v11[18];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = v11[19];
  v46 = *(a1 + v45);
  *(a1 + v45) = *(a2 + v45);

  v47 = v11[20];
  v48 = *(a1 + v47);
  *(a1 + v47) = *(a2 + v47);

  v49 = v11[21];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = v11[22];
  v52 = *(a1 + v51);
  *(a1 + v51) = *(a2 + v51);

  v53 = v11[23];
  v54 = *(a1 + v53);
  *(a1 + v53) = *(a2 + v53);

  v55 = v11[24];
  v56 = *(a1 + v55);
  *(a1 + v55) = *(a2 + v55);

  v57 = v11[25];
  v58 = *(a1 + v57);
  *(a1 + v57) = *(a2 + v57);

  v59 = v11[26];
  v60 = *(a1 + v59);
  *(a1 + v59) = *(a2 + v59);

  v61 = v11[27];
  v62 = *(a1 + v61);
  *(a1 + v61) = *(a2 + v61);

  v63 = v11[28];
  v64 = *(a1 + v63);
  *(a1 + v63) = *(a2 + v63);

  v65 = v11[29];
  v66 = *(a1 + v65);
  *(a1 + v65) = *(a2 + v65);

  v67 = v11[30];
  v68 = *(a1 + v67);
  *(a1 + v67) = *(a2 + v67);

  v69 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
  v70 = *(a1 + v69);
  *(a1 + v69) = *(a2 + v69);

  v71 = *(a3 + 20);
  v72 = *(a1 + v71);
  *(a1 + v71) = *(a2 + v71);

  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261B9A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_261B9A654(uint64_t a1, int a2)
{
  v4 = v3;
  v122 = a2;
  v115 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  v5 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v120 = *(v7 - 8);
  v121 = v7;
  v8 = *(v120 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v128 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v119 = &v111 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v111 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v118 = &v111 - v18;
  v117 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
  v19 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v127 = (&v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  v21 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v131 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for AppEntityID();
  v23 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v135 = (&v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = type metadata accessor for ReminderEntity();
  v25 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v134 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _s27CategorizedReminderEntitiesV12EditableItemVMa(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8);
  v132 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v111 - v32;
  sub_261B9DCEC();
  v35 = v34;
  v36 = *(v34 + 16);
  v113 = v37;
  if (v36)
  {
    v126 = v3;
    v129 = v15;
    v130 = v2;
    v140 = MEMORY[0x277D84F90];
    sub_261CFD104();
    sub_261D003A4();
    v38 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v112 = v35;
    v39 = v35 + v38;
    v125 = v28;
    v136 = *(v28 + 72);
    v40 = v133;
    do
    {
      sub_261B9C2D4(v39, v33, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      v41 = &v33[*(v40 + 40)];
      v42 = *(v137 + 20);
      v43 = *v41;
      v44 = *(v41 + 1);
      v45 = objc_allocWithZone(MEMORY[0x277D44700]);
      v46 = sub_261CFD814();
      v47 = sub_261CFFA54();
      [v45 initWithUUID:v46 entityName:v47];

      sub_261B98750(v33, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      sub_261D00374();
      v48 = *(v140 + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v39 += v136;
      --v36;
    }

    while (v36);
    v15 = v129;
    v35 = v112;
    v28 = v125;
    v4 = v126;
  }

  else
  {
    sub_261CFD104();
  }

  v49 = sub_261CFC0B8();
  if (v4)
  {

    return swift_bridgeObjectRelease_n();
  }

  v51 = v28;
  v52 = v49;

  v140 = MEMORY[0x277D84FA0];
  v53 = *(v35 + 16);
  v54 = v137;
  if (v53)
  {
    v111 = 0;
    v55 = v51;
    v56 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v112 = v35;
    v57 = v35 + v56;
    v136 = v52 & 0xC000000000000001;
    v58 = *(v55 + 72);
    v129 = v52;
    v130 = v58;
    v59 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v52 < 0)
    {
      v59 = v52;
    }

    v125 = v59;
    v126 = MEMORY[0x277D84F90];
    v60 = v133;
    while (1)
    {
      v61 = v132;
      sub_261B9C2D4(v57, v132, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      v62 = v61;
      v63 = v134;
      sub_261B9C24C(v62, v134, type metadata accessor for ReminderEntity);
      v64 = v63 + *(v60 + 40);
      v65 = v135;
      sub_261B9C2D4(v64, v135, type metadata accessor for AppEntityID);
      v66 = *(v54 + 20);
      v68 = *v65;
      v67 = v65[1];
      v69 = objc_allocWithZone(MEMORY[0x277D44700]);
      v70 = sub_261CFD814();
      v71 = sub_261CFFA54();
      v72 = [v69 initWithUUID:v70 entityName:v71];

      if (v136)
      {
        v73 = v72;
        v74 = sub_261D004A4();

        if (v74)
        {
          v138 = v74;
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          swift_dynamicCast();
          v75 = v139[0];
          if (v139[0])
          {
            goto LABEL_21;
          }
        }
      }

      else if (*(v129 + 2))
      {
        v76 = sub_261B37CA4(v72);
        if (v77)
        {
          v75 = *(*(v129 + 7) + 8 * v76);
          if (v75)
          {
LABEL_21:
            v124 = v72;
            v78 = v131;
            sub_261B9C2D4(v134, v131, type metadata accessor for ReminderEntity);
            *(v78 + *(v116 + 20)) = v75;
            v79 = v15;
            v80 = objc_allocWithZone(MEMORY[0x277D44700]);
            v123 = v75;
            v81 = v135;
            v82 = sub_261CFD814();
            v83 = sub_261CFFA54();
            v84 = v80;
            v15 = v79;
            v85 = [v84 initWithUUID:v82 entityName:v83];

            v54 = v137;
            sub_261AFB668(v81 + *(v137 + 24), v79, &qword_27FEDA108, &unk_261D020C0);
            v86 = type metadata accessor for RecurrentInstanceSpecifier(0);
            if ((*(*(v86 - 8) + 48))(v79, 1, v86) == 1)
            {
              sub_261AE6A40(v79, &qword_27FEDA108, &unk_261D020C0);
              v87 = sub_261CFD4E4();
              v88 = v118;
              (*(*(v87 - 8) + 56))(v118, 1, 1, v87);
            }

            else
            {
              v89 = sub_261CFD4E4();
              v90 = *(v89 - 8);
              v88 = v118;
              (*(v90 + 16))(v118, v15, v89);
              sub_261B98750(v15, type metadata accessor for RecurrentInstanceSpecifier);
              (*(v90 + 56))(v88, 0, 1, v89);
            }

            v91 = v119;
            v92 = v127;
            *v127 = v85;
            sub_261B02380(v88, v92 + *(v117 + 20));
            v93 = v123;
            v94 = sub_261B026B0(v123, v122 & 1);

            v95 = v126;
            if (v94)
            {
              v96 = v114;
              sub_261B9C2D4(v131, v114, _s20CategorizedRemindersV15FetchedReminderVMa);
              *(v96 + *(v115 + 20)) = v94;
              sub_261B9C24C(v96, v91, _s20CategorizedRemindersV17RecurrentInstanceVMa);
            }

            else
            {
              sub_261B9C2D4(v131, v91, _s20CategorizedRemindersV15FetchedReminderVMa);
            }

            swift_storeEnumTagMultiPayload();
            sub_261B9C2D4(v91, v128, _s20CategorizedRemindersV12EditableItemOMa);
            v97 = v94;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_261B416D0(0, v95[2] + 1, 1, v95);
            }

            v99 = v95[2];
            v98 = v95[3];
            if (v99 >= v98 >> 1)
            {
              v95 = sub_261B416D0(v98 > 1, v99 + 1, 1, v95);
            }

            sub_261B98750(v91, _s20CategorizedRemindersV12EditableItemOMa);
            sub_261B98750(v127, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
            sub_261B98750(v131, _s20CategorizedRemindersV15FetchedReminderVMa);
            sub_261B98750(v134, type metadata accessor for ReminderEntity);
            v95[2] = v99 + 1;
            v100 = (*(v120 + 80) + 32) & ~*(v120 + 80);
            v126 = v95;
            sub_261B9C24C(v128, v95 + v100 + *(v120 + 72) * v99, _s20CategorizedRemindersV12EditableItemOMa);
            sub_261B98750(v135, type metadata accessor for AppEntityID);
            goto LABEL_13;
          }
        }
      }

      sub_261B9C850(v139, v72);

      sub_261B98750(v134, type metadata accessor for ReminderEntity);
      sub_261B98750(v135, type metadata accessor for AppEntityID);
      v54 = v137;
LABEL_13:
      v57 += v130;
      --v53;
      v60 = v133;
      if (!v53)
      {

        goto LABEL_34;
      }
    }
  }

  v126 = MEMORY[0x277D84F90];
LABEL_34:

  if ((v140 & 0xC000000000000001) != 0)
  {
    sub_261CFD104();
    v101 = sub_261D00274();

    if (v101)
    {
LABEL_36:
      if (qword_27FED9960 != -1)
      {
        swift_once();
      }

      v102 = sub_261CFF7A4();
      __swift_project_value_buffer(v102, qword_27FEDB2E8);
      v103 = sub_261CFF784();
      v104 = sub_261CFFE64();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v139[0] = v106;
        *v105 = 136315138;
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        sub_261B3B918();
        sub_261CFD104();
        v107 = sub_261CFFD74();
        v109 = v108;

        v110 = sub_261B879C8(v107, v109, v139);

        *(v105 + 4) = v110;
        _os_log_impl(&dword_261AE2000, v103, v104, "REMStoreIntentPerformer#fetchAndCategorizeReminders: missing reminders {objectIDs: %s}", v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v106);
        MEMORY[0x26671D560](v106, -1, -1);
        MEMORY[0x26671D560](v105, -1, -1);
      }

      return v126;
    }
  }

  else if (*(v140 + 16))
  {
    goto LABEL_36;
  }

  return v126;
}

uint64_t sub_261B9B45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB330, &unk_261D05A90);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  result = sub_261B9C33C(a1, a2, a3);
  if (!v4)
  {
    if (*(result + 16))
    {
      v17 = result;
      v18 = _s20CategorizedRemindersV12EditableItemOMa(0);
      v19 = *(v18 - 8);
      sub_261B9C2D4(v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v15, _s20CategorizedRemindersV12EditableItemOMa);

      (*(v19 + 56))(v15, 0, 1, v18);
    }

    else
    {

      v18 = _s20CategorizedRemindersV12EditableItemOMa(0);
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    }

    sub_261AFB668(v15, v13, &qword_27FEDB330, &unk_261D05A90);
    _s20CategorizedRemindersV12EditableItemOMa(0);
    if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
    {
      sub_261AE6A40(v13, &qword_27FEDB330, &unk_261D05A90);
      v20 = objc_opt_self();
      v21 = sub_261CFFA54();
      [v20 internalErrorWithDebugDescription_];

      swift_willThrow();
      return sub_261AE6A40(v15, &qword_27FEDB330, &unk_261D05A90);
    }

    else
    {
      sub_261AE6A40(v15, &qword_27FEDB330, &unk_261D05A90);
      return sub_261B9C24C(v13, a4, _s20CategorizedRemindersV12EditableItemOMa);
    }
  }

  return result;
}

uint64_t sub_261B9B744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  v17 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v37;
  v23 = sub_261B9C33C(a1, a2, a3);
  if (!v22)
  {
    v24 = v36;
    v34[2] = 0;
    v25 = *(v23 + 16);
    if (v25)
    {
      v35 = v9;
      v38 = MEMORY[0x277D84F90];
      v26 = v23;
      sub_261B3A234(0, v25, 0);
      a1 = v38;
      v27 = v24;
      v28 = *(v24 + 80);
      v34[1] = v26;
      v29 = v26 + ((v28 + 32) & ~v28);
      v36 = *(v27 + 72);
      v37 = v10;
      do
      {
        sub_261B9C2D4(v29, v16, _s20CategorizedRemindersV12EditableItemOMa);
        sub_261B9C24C(v16, v14, _s20CategorizedRemindersV12EditableItemOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v30 = v35;
          sub_261B9C24C(v14, v35, _s20CategorizedRemindersV17RecurrentInstanceVMa);
          sub_261B9C2D4(v30, v21, _s20CategorizedRemindersV15FetchedReminderVMa);
          sub_261B98750(v30, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        }

        else
        {
          sub_261B9C24C(v14, v21, _s20CategorizedRemindersV15FetchedReminderVMa);
        }

        v38 = a1;
        v32 = *(a1 + 16);
        v31 = *(a1 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_261B3A234(v31 > 1, v32 + 1, 1);
          a1 = v38;
        }

        *(a1 + 16) = v32 + 1;
        sub_261B9C24C(v21, a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v32, _s20CategorizedRemindersV15FetchedReminderVMa);
        v29 += v36;
        --v25;
      }

      while (v25);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

void *sub_261B9BAD4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for ReminderEntity();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s27CategorizedReminderEntitiesV12EditableItemVMa(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B9C5F8(a2, a3);
  if (!v3)
  {
    v24 = 0;
    v17 = a2[2];
    if (v17)
    {
      v25 = v8;
      v18 = *(v12 + 20);
      v19 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v20 = *(v13 + 72);
      a2 = MEMORY[0x277D84F90];
      v26 = a1;
      do
      {
        sub_261B9C2D4(v19, v16, _s27CategorizedReminderEntitiesV12EditableItemVMa);
        if ((*&v16[v18] & ~a1) != 0)
        {
          sub_261B98750(v16, _s27CategorizedReminderEntitiesV12EditableItemVMa);
        }

        else
        {
          sub_261B9C24C(v16, v11, type metadata accessor for ReminderEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_261B41560(0, a2[2] + 1, 1, a2);
          }

          v22 = a2[2];
          v21 = a2[3];
          if (v22 >= v21 >> 1)
          {
            a2 = sub_261B41560(v21 > 1, v22 + 1, 1, a2);
          }

          a2[2] = v22 + 1;
          sub_261B9C24C(v11, a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for ReminderEntity);
          a1 = v26;
        }

        v19 += v20;
        --v17;
      }

      while (v17);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_261B9BD84()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB2E8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB2E8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_261B9BE94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_261B9BEC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_261B9BF84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261B9BFB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_261C651A0();

  *a1 = v2;
  return result;
}

uint64_t sub_261B9BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v24 - v19;
  v21 = v24[1];
  result = sub_261B9B45C(a1, a2, a3, v24 - v19);
  if (!v21)
  {
    sub_261B9C24C(v20, v18, _s20CategorizedRemindersV12EditableItemOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_261B9C24C(v18, v9, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      sub_261B9C2D4(v9, v13, _s20CategorizedRemindersV15FetchedReminderVMa);
      sub_261B98750(v9, _s20CategorizedRemindersV17RecurrentInstanceVMa);
    }

    else
    {
      sub_261B9C24C(v18, v13, _s20CategorizedRemindersV15FetchedReminderVMa);
    }

    v23 = *&v13[*(v10 + 20)];
    sub_261B98750(v13, _s20CategorizedRemindersV15FetchedReminderVMa);
    return v23;
  }

  return result;
}

uint64_t sub_261B9C24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B9C2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B9C33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_261B9C5F8(a2, a3);
  if (!v3)
  {
    v29 = 0;
    v18 = *(a2 + 16);
    if (v18)
    {
      v32 = v12;
      v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v19 = a2 + v30;
      v20 = *(v8 + 72);
      a2 = MEMORY[0x277D84F90];
      v31 = v7;
      do
      {
        sub_261B9C2D4(v19, v17, _s20CategorizedRemindersV12EditableItemOMa);
        sub_261B9C2D4(v17, v15, _s20CategorizedRemindersV12EditableItemOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v22 = 1;
        if (EnumCaseMultiPayload == 1)
        {
          v22 = 2;
        }

        v23 = a1;
        v24 = v22 & a1;
        sub_261B98750(v15, _s20CategorizedRemindersV12EditableItemOMa);
        if (v24)
        {
          sub_261B9C24C(v17, v32, _s20CategorizedRemindersV12EditableItemOMa);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261B39E9C(0, *(a2 + 16) + 1, 1);
            a2 = v33;
          }

          v27 = *(a2 + 16);
          v26 = *(a2 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_261B39E9C(v26 > 1, v27 + 1, 1);
            a2 = v33;
          }

          *(a2 + 16) = v27 + 1;
          sub_261B9C24C(v32, a2 + v30 + v27 * v20, _s20CategorizedRemindersV12EditableItemOMa);
        }

        else
        {
          sub_261B98750(v17, _s20CategorizedRemindersV12EditableItemOMa);
        }

        v19 += v20;
        --v18;
        a1 = v23;
      }

      while (v18);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_261B9C5F8(uint64_t result, uint64_t a2)
{
  if (!*(result + 16) && *(a2 + 16))
  {
    if (qword_27FED9960 != -1)
    {
      swift_once();
    }

    v2 = sub_261CFF7A4();
    __swift_project_value_buffer(v2, qword_27FEDB2E8);
    v3 = sub_261CFF784();
    v4 = sub_261CFFE84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_261AE2000, v3, v4, "REMStoreIntentPerformer: input reminder entities are all disabled recurrent instances", v5, 2u);
      MEMORY[0x26671D560](v5, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v6 = 5;
    return swift_willThrow();
  }

  return result;
}

size_t sub_261B9C71C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261B9D820(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s27CategorizedReminderEntitiesV12EditableItemVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_261B9C24C(v11, a2, _s27CategorizedReminderEntitiesV12EditableItemVMa);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_261B9C850(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_261CFD104();
    v9 = sub_261D00284();

    if (v9)
    {

      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_261D00274();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_261B558DC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_261B9CBD8(v22 + 1);
    }

    v20 = v8;
    sub_261B9D060(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v11 = *(v6 + 40);
  v12 = sub_261D000E4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_261B9D0E4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_261D000F4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_261B9CA88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_261D006C4();
  sub_261CFFB14();
  v9 = sub_261D006F4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_261D00614() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;
    sub_261CFD104();
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_261CFD104();
    sub_261B9D254(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_261B9CBD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  result = sub_261D002F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_261D000E4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_261B9CE00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  result = sub_261D002F4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_261D006C4();
      sub_261CFFB14();
      result = sub_261D006F4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_261B9D060(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_261D000E4();
  v5 = -1 << *(a2 + 32);
  result = sub_261D00214();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_261B9D0E4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_261B9CBD8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_261CBAF08();
      goto LABEL_12;
    }

    sub_261B9D3D4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_261D000E4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_261D000F4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_261D00644();
  __break(1u);
}