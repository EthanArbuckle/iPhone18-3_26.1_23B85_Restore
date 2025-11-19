uint64_t sub_267E4F000()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  v6 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v7 = v6;
  *(v9 + 64) = v8;

  return MEMORY[0x2822009F8](sub_267E4F110, 0, 0);
}

uint64_t sub_267E4F110()
{
  v1 = sub_267BAF0DC(v0[8]);
  v2 = v0[8];
  v3 = v0[5];
  if (v1)
  {
    v4 = v0[3];
    v5 = *(v0[4] + 168);
    v6 = sub_267BAF0DC(v0[8]);

    sub_267C38BC8(v6);

    sub_267E4F9C0(v2, v3);
  }

  else
  {
    v7 = v0[8];

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v10))
    {
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v11);
      _os_log_impl(&dword_267B93000, v9, v10, "#NotificationAppendingAction Failed to fetch messages for current conversation", v2, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267E4F268(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E4F280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v23 = v18[10];
  v22 = v18[11];
  v24 = sub_267EF8A08();
  v18[13] = OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);

  v25 = sub_267EF89F8();
  v26 = sub_267EF95D8();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v18[10];
    v27 = v18[11];
    v29 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v29 = 136315394;
    v18[9] = v27;
    sub_267EF7C38();
    sub_267BE2AF4(&qword_28022A060, 255, MEMORY[0x277D55380]);
    v30 = sub_267EF9E58();
    v19 = sub_267BA33E8(v30, v31, &a9);

    *(v29 + 4) = v19;
    *(v29 + 12) = 2080;
    v32 = MEMORY[0x26D608FD0](v28, MEMORY[0x277D837D0]);
    v34 = sub_267BA33E8(v32, v33, &a9);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_267B93000, v25, v26, "#NotificationAppendingAction Fetching messages from %s for notification IDs: %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v35 = v18[10];
  v18[7] = MEMORY[0x277D84F90];
  v36 = *(v35 + 16);
  v18[14] = v36;
  if (v36)
  {
    v18[15] = *(v18[12] + 40);
    v18[16] = 0;
    OUTLINED_FUNCTION_3_71(v35);
    v37 = OUTLINED_FUNCTION_19_37();
    v19(v37);
    v38 = swift_task_alloc();
    v18[19] = v38;
    *v38 = v18;
    OUTLINED_FUNCTION_1_76(v38);
    OUTLINED_FUNCTION_36_0();

    return sub_267C86680(v39, v40, v41, v42);
  }

  else
  {
    v45 = v18[1];
    OUTLINED_FUNCTION_36_0();

    return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
  }
}

uint64_t sub_267E4F510()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;
  v3[21] = v0;

  __swift_destroy_boxed_opaque_existential_0(v3 + 2);
  if (v0)
  {
    v8 = sub_267E4F794;
  }

  else
  {
    v9 = v3[18];

    v8 = sub_267E4F628;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267E4F628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v12 = v10[20];
  v13 = v10[13];

  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  v16 = OUTLINED_FUNCTION_5_2(v15);
  v17 = v10[20];
  if (v16)
  {
    v18 = OUTLINED_FUNCTION_48();
    *v18 = 134217984;
    *(v18 + 4) = sub_267BAF0DC(v17);

    _os_log_impl(&dword_267B93000, v14, v15, "#NotificationAppendingAction Fetched %ld messages", v18, 0xCu);
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v19 = v10[20];
  }

  sub_267BD057C(v10[20]);
  OUTLINED_FUNCTION_24_33();
  if (v21)
  {
    v22 = v10[7];
    v23 = v10[1];
    OUTLINED_FUNCTION_36_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
    v10[16] = v20;
    v33 = v10[15];
    OUTLINED_FUNCTION_3_71(v10[10] + 16 * v20);
    v34 = OUTLINED_FUNCTION_19_37();
    v11(v34);
    v35 = swift_task_alloc();
    v10[19] = v35;
    *v35 = v10;
    OUTLINED_FUNCTION_1_76();
    OUTLINED_FUNCTION_36_0();

    return sub_267C86680(v36, v37, v38, v39);
  }
}

uint64_t sub_267E4F794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_29();
  a16 = v18;
  v22 = v18[21];
  v23 = v18[18];
  v24 = v18[13];

  v25 = v22;
  v26 = sub_267EF89F8();
  v27 = sub_267EF95E8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v18[21];
    v19 = v18[17];
    v29 = v18[18];
    v30 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    *v30 = 136315394;
    sub_267BA33E8(v19, v29, &a9);
    OUTLINED_FUNCTION_79();
    *(v30 + 4) = v19;
    *(v30 + 12) = 2080;
    v18[8] = v28;
    v31 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v32 = sub_267EF9098();
    sub_267BA33E8(v32, v33, &a9);
    OUTLINED_FUNCTION_79();
    *(v30 + 14) = v19;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v39 = v18[21];
    v40 = v18[18];
  }

  OUTLINED_FUNCTION_24_33();
  if (v42)
  {
    v43 = v18[7];
    v44 = v18[1];
    OUTLINED_FUNCTION_36_0();

    return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
  }

  else
  {
    v18[16] = v41;
    v54 = v18[15];
    OUTLINED_FUNCTION_3_71(v18[10] + 16 * v41);
    v55 = OUTLINED_FUNCTION_19_37();
    v19(v55);
    v56 = swift_task_alloc();
    v18[19] = v56;
    *v56 = v18;
    OUTLINED_FUNCTION_1_76();
    OUTLINED_FUNCTION_36_0();

    return sub_267C86680(v57, v58, v59, v60);
  }
}

void sub_267E4F9C0(uint64_t a1, void *a2)
{
  v65 = sub_267EF2E38();
  OUTLINED_FUNCTION_23();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  v61 = *(v2 + 32);
  v12 = v61[16];
  v60 = a2;
  if (a2[2])
  {
    v13 = a2[5];
    v63 = a2[4];
  }

  else
  {
    v63 = 0;
    v13 = 0;
  }

  v62 = v2;
  v14 = *(v2 + 40);
  v16 = v14[5];
  v15 = v14[6];
  __swift_project_boxed_opaque_existential_0(v14 + 2, v16);
  v17 = *(v15 + 8);

  v17(&v72, v16, v15);
  __swift_project_boxed_opaque_existential_0(&v72, *(&v73 + 1));
  sub_267EF3B68();
  LOBYTE(v17) = v14[11] != 0;
  sub_267EF42D8();
  sub_267EF6FF8();
  sub_267EF6FE8();
  sub_267EF6FB8();

  sub_267EF42C8();

  v18 = sub_267BDD444(a1, v12, v67, 0, 2u, v63, v13, v11, 0, 0, v17);

  __swift_destroy_boxed_opaque_existential_0(v67);
  (*(v5 + 8))(v11, v65);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  if (!sub_267BAF0DC(v18))
  {
    goto LABEL_12;
  }

  sub_267BBD0EC(0, (v18 & 0xC000000000000001) == 0, v18);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26D609870](0, v18);
  }

  else
  {
    v19 = *(v18 + 32);
  }

  v20 = v62;

  swift_beginAccess();
  v21 = *(v19 + 24);

  if (*(v21 + 16))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);

    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v24))
    {
      v25 = OUTLINED_FUNCTION_48();
      *v25 = 134217984;
      *(v25 + 4) = *(v21 + 16);

      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }

    v40 = v61[11];
    v41 = v61[12];

    sub_267E2C9F8(v40, v41, v21, v60);

    v42 = *(v21 + 16);
    if (v42)
    {
      v71 = MEMORY[0x277D84F90];
      sub_267BE50EC();
      v43 = v71;
      v66 = *(v62 + 48);
      v44 = v21 + 32;
      do
      {
        sub_267B9AFEC(v44, v70);
        sub_267B9AFEC(v70, v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v70);
          v72 = v67[0];
          v73 = v67[1];
          v74 = v67[2];
          v75 = v68;
          type metadata accessor for ReadAudioComponentAction();
          swift_allocObject();
          v45 = sub_267E38820(&v72, v14);
          v46 = type metadata accessor for ReadAudioComponentAction;
          v47 = &qword_280229268;
        }

        else
        {
          type metadata accessor for DefaultReadComponentAction();
          swift_allocObject();
          v45 = sub_267BF902C(v70, v14, v66);
          v46 = type metadata accessor for DefaultReadComponentAction;
          v47 = &qword_280229258;
        }

        v48 = sub_267BE2AF4(v47, 255, v46);

        __swift_destroy_boxed_opaque_existential_0(v69);
        v71 = v43;
        v49 = v43[2];
        if (v49 >= v43[3] >> 1)
        {
          sub_267BE50EC();
          v43 = v71;
        }

        v43[2] = v49 + 1;
        v50 = &v43[2 * v49];
        v50[4] = v45;
        v50[5] = v48;
        v44 += 40;
        --v42;
      }

      while (v42);

      v20 = v62;
    }

    else
    {

      v43 = MEMORY[0x277D84F90];
    }

    if (sub_267C96D2C(v43))
    {
      v52 = v51;
      swift_getObjectType();
      v53 = *(v20 + 48);
      type metadata accessor for NotificationAppendingAction();
      v54 = swift_allocObject();
      *(v54 + 56) = 0;
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      *(v54 + 32) = v61;
      *(v54 + 40) = v14;
      *(v54 + 48) = v53;
      sub_267BE2AF4(&qword_28022C9F0, v55, type metadata accessor for NotificationAppendingAction);
      v56 = *(v52 + 8);

      sub_267EF3DB8();
      swift_unknownObjectRelease();
    }

    sub_267C36888(v43);
    if (v43[2])
    {
      v57 = v43[4];
      v58 = *(*(v43[5] + 8) + 8);
      swift_unknownObjectRetain();
    }

    else
    {
      v57 = 0;
      v58 = 0;
    }

    swift_beginAccess();
    v59 = *(v20 + 16);
    *(v20 + 16) = v57;
    *(v20 + 24) = v58;
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_12:

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v33))
    {
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v34);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

void *sub_267E50108()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return v0;
}

uint64_t sub_267E50140()
{
  sub_267E50108();

  return swift_deallocClassInstance();
}

uint64_t sub_267E50198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267E2B1EC;

  return sub_267E4E000();
}

uint64_t sub_267E50224()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

void sub_267E50300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_267EF2CC8();
  v8 = *(*(v39 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v33 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v37 = (v11 + 8);
    v40 = v14;
    v15 = v14 + 8 * a3 - 8;
    v16 = a1 - a3;
    while (2)
    {
      v35 = v15;
      v36 = a3;
      v17 = *(v40 + 8 * a3);
      v34 = v16;
      v18 = v16;
      do
      {
        v19 = *v15;
        v20 = v17;
        v21 = v19;
        v22 = [v20 date];
        if (!v22)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v23 = v22;
        sub_267EF2C98();

        v24 = [v21 date];
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = v24;
        v26 = v38;
        sub_267EF2C98();

        v41 = sub_267EF2C68();
        v27 = v18;
        v28 = *v37;
        v29 = v26;
        v30 = v39;
        (*v37)(v29, v39);
        v28(v13, v30);

        if ((v41 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          goto LABEL_13;
        }

        v31 = *v15;
        v17 = *(v15 + 8);
        *v15 = v17;
        *(v15 + 8) = v31;
        v15 -= 8;
        ++v18;
      }

      while (v27 != -1);
      a3 = v36 + 1;
      v15 = v35 + 8;
      v16 = v34 - 1;
      if (v36 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

void sub_267E5053C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v92 = v8 + 16;
      v91 = *(v8 + 2);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v93 = v8;
        v8 += 16 * v91;
        v94 = *v8;
        v95 = &v92[2 * v91];
        v96 = *(v95 + 1);
        sub_267E51518((*a3 + 8 * *v8), (*a3 + 8 * *v95), (*a3 + 8 * v96), v110);
        if (v5)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_117;
        }

        if (v91 - 2 >= *v92)
        {
          goto LABEL_118;
        }

        *v8 = v94;
        *(v8 + 1) = v96;
        v97 = *v92 - v91;
        if (*v92 < v91)
        {
          goto LABEL_119;
        }

        v91 = *v92 - 1;
        sub_267EAAFF4(v95 + 16, v97, v95);
        *v92 = v91;
        v8 = v93;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v8 = sub_267EAAFE0(v8);
    goto LABEL_93;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v99 = v8;
    v110 = v5;
    v11 = *(*a3 + 8 * v10);
    v12 = (*a3 + 8 * v7);
    v13 = 8 * v7;
    v15 = *v12;
    v14 = v12 + 2;
    v8 = v15;
    v106 = v6;
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v16 = v11;
    v17 = v10;
    v18 = v15;
    v5 = sub_267BDE844(v16, v18);

    v19 = v106;
    v10 = v17;
    v101 = v9;
    v20 = v9 + 2;
    do
    {
      v21 = v20;
      v22 = v10 + 1;
      if (v22 >= v19)
      {
        v10 = v19;
        if (v5)
        {
          goto LABEL_8;
        }

LABEL_20:
        v5 = v110;
        v8 = v99;
        v9 = v101;
        goto LABEL_22;
      }

      v23 = *(v14 - 1);
      v24 = *v14;
      v25 = v22;
      v26 = v23;
      v8 = sub_267BDE844(v24, v26);

      v10 = v25;
      ++v14;
      v20 = v21 + 1;
      v19 = v106;
    }

    while ((v5 & 1) == v8);
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v101;
    if (v10 < v101)
    {
      goto LABEL_123;
    }

    if (v101 >= v10)
    {
      v5 = v110;
      v8 = v99;
    }

    else
    {
      v27 = v19 >= v21 ? v21 : v19;
      v28 = 8 * v27 - 8;
      v29 = v10;
      v30 = v101;
      v5 = v110;
      v8 = v99;
      do
      {
        if (v30 != --v29)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v32 = *(v31 + v13);
          *(v31 + v13) = *(v31 + v28);
          *(v31 + v28) = v32;
        }

        ++v30;
        v28 -= 8;
        v13 += 8;
      }

      while (v30 < v29);
    }

LABEL_22:
    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_122;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_121;
    }

    v110 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = *(v8 + 2);
      sub_267C70730();
      v8 = v89;
    }

    v47 = *(v8 + 2);
    v5 = v47 + 1;
    v108 = v10;
    if (v47 >= *(v8 + 3) >> 1)
    {
      sub_267C70730();
      v8 = v90;
    }

    *(v8 + 2) = v5;
    v48 = v8 + 32;
    v49 = &v8[16 * v47 + 32];
    *v49 = v9;
    *(v49 + 1) = v108;
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v47)
    {
      while (1)
      {
        v50 = v5 - 1;
        v51 = &v48[16 * v5 - 16];
        v52 = &v8[16 * v5];
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_59:
          if (v56)
          {
            goto LABEL_108;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_111;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_116;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v5 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v5 < 2)
        {
          goto LABEL_110;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_74:
        if (v71)
        {
          goto LABEL_113;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v78 < v70)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v50 - 1 >= v5)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v82 = &v48[16 * v50 - 16];
        v83 = *v82;
        v84 = &v48[16 * v50];
        v85 = *(v84 + 1);
        sub_267E51518((*a3 + 8 * *v82), (*a3 + 8 * *v84), (*a3 + 8 * v85), v105);
        v5 = v110;
        if (v110)
        {
          goto LABEL_101;
        }

        if (v85 < v83)
        {
          goto LABEL_103;
        }

        v86 = v8;
        v8 = *(v8 + 2);
        if (v50 > v8)
        {
          goto LABEL_104;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        if (v50 >= v8)
        {
          goto LABEL_105;
        }

        v110 = 0;
        v5 = (v8 - 1);
        sub_267EAAFF4(v84 + 16, &v8[-v50 - 1], &v48[16 * v50]);
        *(v86 + 2) = v8 - 1;
        v87 = v8 > 2;
        v8 = v86;
        if (!v87)
        {
          goto LABEL_88;
        }
      }

      v57 = &v48[16 * v5];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_106;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_107;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_109;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_112;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_120;
        }

        if (v55 < v81)
        {
          v50 = v5 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v108;
    v6 = a3[1];
    v5 = v110;
    if (v108 >= v6)
    {
      goto LABEL_91;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_124;
  }

  if (v9 + a4 >= v33)
  {
    v34 = a3[1];
  }

  else
  {
    v34 = v9 + a4;
  }

  if (v34 < v9)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v10 == v34)
  {
    goto LABEL_39;
  }

  v100 = v8;
  v110 = v5;
  v35 = *a3;
  sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
  v36 = v35 + 8 * v10 - 8;
  v102 = v9;
  v37 = v9 - v10;
  v104 = v34;
LABEL_32:
  v107 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    v44 = sub_267BDE844(v42, v43);

    if (!v44)
    {
LABEL_37:
      v10 = v107 + 1;
      v36 += 8;
      --v37;
      if (v107 + 1 == v104)
      {
        v10 = v104;
        v5 = v110;
        v8 = v100;
        v9 = v102;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v45;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

void sub_267E50B94(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v135 = a1;
  v149 = sub_267EF2CC8();
  v6 = *(*(v149 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v149);
  v146 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v132 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v139 = &v132 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v134 = &v132 - v16;
  MEMORY[0x28223BE20](v15);
  v143 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v132 = a4;
    v133 = &v132 - v18;
    v138 = v19;
    v21 = 0;
    v148 = (v17 + 8);
    v22 = MEMORY[0x277D84F90];
    v23 = &selRef_personTypes;
    while (1)
    {
      v24 = v21;
      v25 = v21 + 1;
      v136 = v24;
      if (v25 < v20)
      {
        v147 = v20;
        v26 = *v143;
        v145 = v25;
        v27 = *(v26 + 8 * v24);
        v28 = *(v26 + 8 * v25);
        v29 = v27;
        v30 = [v28 v23[424]];
        if (!v30)
        {
          goto LABEL_140;
        }

        v31 = v30;
        v32 = v24;
        v150 = v28;
        v33 = v133;
        sub_267EF2C98();

        v34 = [v29 v23[424]];
        if (!v34)
        {
          goto LABEL_141;
        }

        v35 = v34;
        v36 = v134;
        sub_267EF2C98();

        LODWORD(v142) = sub_267EF2C68();
        v37 = *v148;
        v38 = v36;
        v39 = v149;
        (*v148)(v38, v149);
        v140 = v37;
        (v37)(v33, v39);

        v137 = 8 * v32;
        a4 = v26 + 8 * v32 + 16;
        v40 = (v32 + 2);
        v25 = v145;
        v23 = &selRef_personTypes;
        v41 = v147;
        v141 = v22;
        while (1)
        {
          v42 = v40;
          if (v25 + 1 >= v41)
          {
            break;
          }

          v145 = v25;
          v43 = *(a4 - 8);
          v44 = *a4;
          v45 = v43;
          v46 = [v44 v23[424]];
          if (!v46)
          {
            goto LABEL_135;
          }

          v47 = v46;
          v150 = v42;
          v48 = v138;
          sub_267EF2C98();

          v49 = [v45 v23[424]];
          if (!v49)
          {
            goto LABEL_134;
          }

          v50 = v49;
          v51 = v139;
          sub_267EF2C98();

          LODWORD(v50) = sub_267EF2C68() & 1;
          v52 = v51;
          v53 = v149;
          v54 = v140;
          (v140)(v52, v149);
          v54(v48, v53);

          a4 += 8;
          v25 = v145 + 1;
          v42 = v150;
          v40 = (v150 + 1);
          v23 = &selRef_personTypes;
          v22 = v141;
          v41 = v147;
          if ((v142 & 1) != v50)
          {
            goto LABEL_13;
          }
        }

        v25 = v41;
LABEL_13:
        if (v142)
        {
          v55 = v136;
          if (v25 < v136)
          {
            goto LABEL_127;
          }

          if (v136 < v25)
          {
            if (v41 >= v42)
            {
              v56 = v42;
            }

            else
            {
              v56 = v41;
            }

            v57 = 8 * v56 - 8;
            v58 = v25;
            v59 = v137;
            do
            {
              if (v55 != --v58)
              {
                v60 = *v143;
                if (!*v143)
                {
                  goto LABEL_138;
                }

                v61 = *(v60 + v59);
                *(v60 + v59) = *(v60 + v57);
                *(v60 + v57) = v61;
              }

              ++v55;
              v57 -= 8;
              v59 += 8;
            }

            while (v55 < v58);
          }
        }
      }

      v62 = v143[1];
      if (v25 < v62)
      {
        if (__OFSUB__(v25, v136))
        {
          goto LABEL_126;
        }

        if (v25 - v136 < v132)
        {
          v63 = v136 + v132;
          if (__OFADD__(v136, v132))
          {
            goto LABEL_128;
          }

          if (v63 >= v62)
          {
            v63 = v143[1];
          }

          if (v63 >= v136)
          {
            if (v25 == v63)
            {
              goto LABEL_43;
            }

            v141 = v22;
            v147 = *v143;
            v64 = v147 + 8 * v25 - 8;
            v65 = (v136 - v25);
            v137 = v63;
LABEL_33:
            v145 = v25;
            v66 = *(v147 + 8 * v25);
            v140 = v65;
            v67 = v65;
            v142 = v64;
            while (1)
            {
              v68 = *v64;
              v69 = v66;
              v70 = v68;
              v71 = [v69 v23[424]];
              if (!v71)
              {
                goto LABEL_132;
              }

              v72 = v71;
              sub_267EF2C98();

              v73 = [v70 v23[424]];
              if (!v73)
              {
                break;
              }

              v74 = v73;
              v150 = v69;
              a4 = v67;
              v75 = v146;
              sub_267EF2C98();

              LOBYTE(v74) = sub_267EF2C68();
              v76 = *v148;
              v77 = v75;
              v78 = v149;
              (*v148)(v77, v149);
              v76(v11, v78);

              if ((v74 & 1) == 0)
              {
                v23 = &selRef_personTypes;
LABEL_41:
                v25 = v145 + 1;
                v64 = v142 + 8;
                v65 = v140 - 1;
                if (v145 + 1 == v137)
                {
                  v25 = v137;
                  v22 = v141;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v147)
              {
                goto LABEL_133;
              }

              v79 = *v64;
              v66 = *(v64 + 8);
              *v64 = v66;
              *(v64 + 8) = v79;
              v64 -= 8;
              ++v67;
              v23 = &selRef_personTypes;
              if (a4 == -1)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v22 = sub_267EAAFE0(v22);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v25 < v136)
      {
        goto LABEL_125;
      }

      v145 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = *(v22 + 16);
        sub_267C70730();
        v22 = v122;
      }

      v80 = *(v22 + 16);
      a4 = v80 + 1;
      v81 = v145;
      if (v80 >= *(v22 + 24) >> 1)
      {
        sub_267C70730();
        v81 = v145;
        v22 = v123;
      }

      *(v22 + 16) = a4;
      v82 = v22 + 32;
      v83 = (v22 + 32 + 16 * v80);
      *v83 = v136;
      v83[1] = v81;
      v150 = *v135;
      if (!v150)
      {
        goto LABEL_139;
      }

      if (v80)
      {
        break;
      }

LABEL_92:
      v20 = v143[1];
      v21 = v145;
      if (v145 >= v20)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v84 = a4 - 1;
      v85 = (v82 + 16 * (a4 - 1));
      v86 = (v22 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v87 = *(v22 + 32);
        v88 = *(v22 + 40);
        v97 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        v90 = v97;
LABEL_63:
        if (v90)
        {
          goto LABEL_112;
        }

        v102 = *v86;
        v101 = v86[1];
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_115;
        }

        v106 = v85[1];
        v107 = v106 - *v85;
        if (__OFSUB__(v106, *v85))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v104, v107))
        {
          goto LABEL_120;
        }

        if (v104 + v107 >= v89)
        {
          if (v89 < v107)
          {
            v84 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v109 = *v86;
      v108 = v86[1];
      v97 = __OFSUB__(v108, v109);
      v104 = v108 - v109;
      v105 = v97;
LABEL_78:
      if (v105)
      {
        goto LABEL_117;
      }

      v111 = *v85;
      v110 = v85[1];
      v97 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if (v97)
      {
        goto LABEL_119;
      }

      if (v112 < v104)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v84 - 1 >= a4)
      {
        __break(1u);
LABEL_107:
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
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (!*v143)
      {
        goto LABEL_136;
      }

      v116 = v22;
      a4 = v82 + 16 * (v84 - 1);
      v117 = *a4;
      v118 = v82 + 16 * v84;
      v22 = *(v118 + 8);
      v119 = v144;
      sub_267E51754((*v143 + 8 * *a4), (*v143 + 8 * *v118), (*v143 + 8 * v22), v150);
      v144 = v119;
      if (v119)
      {
        goto LABEL_105;
      }

      if (v22 < v117)
      {
        goto LABEL_107;
      }

      v120 = *(v116 + 16);
      if (v84 > v120)
      {
        goto LABEL_108;
      }

      *a4 = v117;
      *(a4 + 8) = v22;
      if (v84 >= v120)
      {
        goto LABEL_109;
      }

      a4 = v120 - 1;
      sub_267EAAFF4((v118 + 16), v120 - 1 - v84, (v82 + 16 * v84));
      v22 = v116;
      *(v116 + 16) = v120 - 1;
      v23 = &selRef_personTypes;
      if (v120 <= 2)
      {
        goto LABEL_92;
      }
    }

    v91 = v82 + 16 * a4;
    v92 = *(v91 - 64);
    v93 = *(v91 - 56);
    v97 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    if (v97)
    {
      goto LABEL_110;
    }

    v96 = *(v91 - 48);
    v95 = *(v91 - 40);
    v97 = __OFSUB__(v95, v96);
    v89 = v95 - v96;
    v90 = v97;
    if (v97)
    {
      goto LABEL_111;
    }

    v98 = v86[1];
    v99 = v98 - *v86;
    if (__OFSUB__(v98, *v86))
    {
      goto LABEL_113;
    }

    v97 = __OFADD__(v89, v99);
    v100 = v89 + v99;
    if (v97)
    {
      goto LABEL_116;
    }

    if (v100 >= v94)
    {
      v114 = *v85;
      v113 = v85[1];
      v97 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v97)
      {
        goto LABEL_124;
      }

      if (v89 < v115)
      {
        v84 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v135;
  if (!*v135)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v125 = (v22 + 16);
  v124 = *(v22 + 16);
  while (v124 >= 2)
  {
    if (!*v143)
    {
      goto LABEL_137;
    }

    v126 = v22;
    v22 += 16 * v124;
    v127 = *v22;
    v128 = &v125[2 * v124];
    v129 = *(v128 + 1);
    v130 = v144;
    sub_267E51754((*v143 + 8 * *v22), (*v143 + 8 * *v128), (*v143 + 8 * v129), a4);
    v144 = v130;
    if (v130)
    {
      break;
    }

    if (v129 < v127)
    {
      goto LABEL_121;
    }

    if (v124 - 2 >= *v125)
    {
      goto LABEL_122;
    }

    *v22 = v127;
    *(v22 + 8) = v129;
    v131 = *v125 - v124;
    if (*v125 < v124)
    {
      goto LABEL_123;
    }

    v124 = *v125 - 1;
    sub_267EAAFF4(v128 + 16, v131, v128);
    *v125 = v124;
    v22 = v126;
  }

LABEL_105:
}

uint64_t sub_267E51518(void **a1, void **a2, void **a3, void **a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_267C74A34(a1, a2 - a1);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *a4;
      sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
      v15 = v13;
      v16 = v14;
      v17 = sub_267BDE844(v15, v16);

      if (!v17)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v18 = a4;
    v19 = v7 == a4++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v18;
    goto LABEL_13;
  }

  sub_267C74A34(a2, a3 - a2);
  v10 = &a4[v9];
  v36 = a4;
LABEL_15:
  v20 = v6 - 1;
  v21 = v5 - 1;
  while (v10 > a4 && v6 > v7)
  {
    v23 = v21;
    v24 = v7;
    v25 = *(v10 - 1);
    v26 = v20;
    v27 = *v20;
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v28 = v25;
    v29 = v27;
    v30 = sub_267BDE844(v28, v29);

    v5 = v23;
    v31 = v23 + 1;
    if (v30)
    {
      v19 = v31 == v6;
      v32 = v26;
      v6 = v26;
      v7 = v24;
      a4 = v36;
      if (!v19)
      {
        *v5 = *v32;
        v6 = v32;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v23 = *(v10 - 1);
    }

    v21 = v23 - 1;
    --v10;
    v20 = v26;
    v7 = v24;
    a4 = v36;
  }

LABEL_28:
  v33 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v33])
  {
    memmove(v6, a4, 8 * v33);
  }

  return 1;
}

uint64_t sub_267E51754(void **a1, void **a2, void **a3, void **a4)
{
  v64 = sub_267EF2CC8();
  v8 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v60 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  i = (&v57 - v16);
  v17 = a2 - a1;
  v63 = (v18 + 8);
  v19 = a3 - a2;
  if (v17 < v19)
  {
    sub_267C74A34(a1, a2 - a1);
    v20 = &a4[v17];
    v21 = &selRef_personTypes;
    v65 = v20;
    v66 = a3;
    while (1)
    {
      if (a4 >= v20 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v23 = a1;
      v67 = a2;
      v24 = *a2;
      v25 = *a4;
      v26 = v24;
      v27 = v25;
      result = [v26 v21[424]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v29 = result;
      v30 = a4;
      v31 = i;
      sub_267EF2C98();

      result = [v27 v21[424]];
      if (!result)
      {
        goto LABEL_40;
      }

      v32 = result;
      v33 = v60;
      sub_267EF2C98();

      LOBYTE(v32) = sub_267EF2C68();
      v34 = *v63;
      v35 = v33;
      v36 = v64;
      (*v63)(v35, v64);
      v34(v31, v36);

      if ((v32 & 1) == 0)
      {
        break;
      }

      v37 = v67;
      a2 = v67 + 1;
      v38 = v23;
      if (v23 != v67)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v38 + 1;
      v20 = v65;
      a3 = v66;
      v21 = &selRef_personTypes;
    }

    v37 = a4++;
    v38 = v23;
    a2 = v67;
    if (v23 == v30)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v38 = *v37;
    goto LABEL_14;
  }

  sub_267C74A34(a2, a3 - a2);
  v20 = &a4[v19];
  v39 = &selRef_personTypes;
  v58 = a4;
  v59 = a1;
LABEL_16:
  v40 = a2 - 1;
  v41 = a3 - 1;
  v67 = a2;
  for (i = a2 - 1; v20 > a4 && a2 > a1; v40 = i)
  {
    v66 = v41;
    v43 = v20 - 1;
    v44 = *v40;
    v45 = *(v20 - 1);
    v46 = v44;
    result = [v45 v39[424]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v47 = result;
    v65 = v20;
    sub_267EF2C98();

    result = [v46 v39[424]];
    if (!result)
    {
      goto LABEL_41;
    }

    v48 = result;
    v49 = v61;
    sub_267EF2C98();

    LOBYTE(v48) = sub_267EF2C68();
    v50 = *v63;
    v51 = v49;
    v52 = v64;
    (*v63)(v51, v64);
    v50(v13, v52);

    if (v48)
    {
      v20 = v65;
      a3 = v66;
      v54 = i;
      a2 = i;
      a4 = v58;
      a1 = v59;
      v39 = &selRef_personTypes;
      if (v66 + 1 != v67)
      {
        *v66 = *i;
        a2 = v54;
      }

      goto LABEL_16;
    }

    v53 = v66;
    a4 = v58;
    if (v65 != v66 + 1)
    {
      *v66 = *v43;
    }

    v41 = v53 - 1;
    v20 = v43;
    a2 = v67;
    a1 = v59;
    v39 = &selRef_personTypes;
  }

LABEL_31:
  v55 = v20 - a4;
  if (a2 != a4 || a2 >= &a4[v55])
  {
    memmove(a2, a4, 8 * v55);
  }

  return 1;
}

uint64_t sub_267E51BAC(void *a1)
{
  v1 = [a1 attachmentFiles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267E51C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setAfterNotificationId_];
}

void sub_267E51C74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setPriority_];
}

uint64_t sub_267E51CD8(void *a1)
{
  v2 = [a1 notifications];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022A398, 0x277D47608);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267E51D84()
{
  sub_267DDD74C();
  if (v0 <= 0x3F)
  {
    sub_267E51E78();
    if (v1 <= 0x3F)
    {
      sub_267C82D70();
      if (v2 <= 0x3F)
      {
        sub_267C82CB0();
        if (v3 <= 0x3F)
        {
          sub_267C82D18();
          if (v4 <= 0x3F)
          {
            sub_267EF2E38();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_267E51E78()
{
  if (!qword_28022C178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C180, &qword_267F096B0);
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_28022C178);
    }
  }
}

uint64_t sub_267E51EDC()
{
  OUTLINED_FUNCTION_12();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[28] = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64);
  v1[33] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF2BA8();
  v1[34] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[35] = v8;
  v10 = *(v9 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v11 = sub_267EF2E08();
  v1[38] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[39] = v12;
  v14 = *(v13 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A290, &qword_267F00A00) - 8) + 64);
  v1[41] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF2E38();
  v1[42] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[43] = v17;
  v19 = *(v18 + 64);
  v1[44] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_267E52098()
{
  v100 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  sub_267DB9740();
  *(v0 + 360) = v3;
  v4 = *(v1 + 72);
  *(v0 + 368) = v4;
  if (v4)
  {
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v7 = *(v0 + 336);
    v8 = *(v0 + 224);
    v9 = v8[5];
    v10 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v9);
    (*(v10 + 8))(v9, v10);
    v11 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    sub_267EF3B68();
    v12 = v8[52];

    v13 = sub_267BC20F4(v5, 0, 0, v12, v4);

    (*(v6 + 8))(v5, v7);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    v13 = 0;
  }

  *(v0 + 376) = v13;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 40) = &type metadata for Features;
  *(v0 + 48) = sub_267BAFCAC();
  *(v0 + 16) = 4;
  v14 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v14 & 1) == 0)
  {
    goto LABEL_30;
  }

  v15 = *(v0 + 320);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 256);
  v20 = v19 + *(type metadata accessor for ImageComponent() + 48);
  sub_267EF2E18();
  sub_267EF2DF8();
  (*(v18 + 8))(v15, v17);
  v21 = sub_267EF2D68();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v21);
  v23 = *(v0 + 328);
  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(*(v0 + 328), &unk_28022A290, &qword_267F00A00);
LABEL_30:
    v64 = *(v0 + 224);
    if (*(v64 + 88))
    {
      OUTLINED_FUNCTION_10(dword_267F08D50);
      v65 = swift_task_alloc();
      *(v0 + 448) = v65;
      *v65 = v0;
      OUTLINED_FUNCTION_1_77(v65);
      OUTLINED_FUNCTION_15();

      __asm { BR              X3 }
    }

    v68 = *(v0 + 376);
    v69 = *(v0 + 360);
    v70 = *(v0 + 256);
    v71 = *(v0 + 232);
    v72 = *(v0 + 240);
    v73 = __swift_project_boxed_opaque_existential_0(*(v0 + 248), *(*(v0 + 248) + 24));
    v98 = *v72;
    sub_267BB8364();
    v74 = swift_task_alloc();
    *(v0 + 488) = v74;
    v74[2] = v72;
    v74[3] = v0 + 184;
    v74[4] = v68;
    v74[5] = v69;
    v74[6] = v71;
    v74[7] = v64;
    v74[8] = v70;
    v75 = *v73;
    v76 = swift_task_alloc();
    *(v0 + 496) = v76;
    *v76 = v0;
    OUTLINED_FUNCTION_2_63(v76);
    OUTLINED_FUNCTION_15();

    return sub_267D430BC();
  }

  v24 = *(v0 + 328);
  v25 = sub_267EF2D58();
  v27 = v26;
  (*(*(v21 - 8) + 8))(v23, v21);
  if (v25 == 28261 && v27 == 0xE200000000000000)
  {

    if (!v4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v21 = sub_267EF9EA8();

    if (!v4 || (v21 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v29 = v4;
  if (sub_267DEAC40() || (v30 = *(*(v0 + 256) + 40), !sub_267BAF0DC(v30)) || ((v31 = OUTLINED_FUNCTION_45_23(), sub_267BBD0EC(v31, v32, v33), v21) ? (v34 = MEMORY[0x26D609870](0, v30)) : (v34 = *(v30 + 32)), (v35 = sub_267E5607C(v34)) == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v36 = v35;
  if (!sub_267BAF0DC(v35))
  {

    goto LABEL_29;
  }

  v37 = OUTLINED_FUNCTION_45_23();
  sub_267BBD0EC(v37, v38, v39);
  if (v21)
  {
    v40 = MEMORY[0x26D609870](0, v36);
  }

  else
  {
    v40 = *(v36 + 32);
  }

  v41 = v40;
  *(v0 + 384) = v40;

  v42 = [v41 fileURL];
  if (!v42)
  {

    goto LABEL_30;
  }

  v43 = v42;
  v44 = *(v0 + 296);
  sub_267EF2B48();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v45 = *(v0 + 288);
  v46 = *(v0 + 296);
  v47 = *(v0 + 272);
  v48 = *(v0 + 280);
  v49 = sub_267EF8A08();
  *(v0 + 392) = __swift_project_value_buffer(v49, qword_280240FB0);
  v50 = *(v48 + 16);
  v51 = OUTLINED_FUNCTION_61_0();
  v50(v51);
  v52 = sub_267EF89F8();
  v53 = sub_267EF95D8();
  v54 = os_log_type_enabled(v52, v53);
  v56 = *(v0 + 280);
  v55 = *(v0 + 288);
  v57 = *(v0 + 272);
  if (v54)
  {
    v58 = OUTLINED_FUNCTION_48();
    v96 = OUTLINED_FUNCTION_52();
    v99 = v96;
    *v58 = 136315138;
    sub_267E55B4C(&qword_28022AE70, MEMORY[0x277CC9260]);
    v59 = sub_267EF9E58();
    v97 = v50;
    v61 = v60;
    v62 = *(v56 + 8);
    v62(v55, v57);
    v63 = sub_267BA33E8(v59, v61, &v99);
    v50 = v97;

    *(v58 + 4) = v63;
    _os_log_impl(&dword_267B93000, v52, v53, "#ImageComponent image file url %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v96);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v62 = *(v56 + 8);
    v62(v55, v57);
  }

  *(v0 + 400) = v62;
  v79 = *(*(v0 + 224) + 416);
  if (v79 && (v80 = [*(*(v79 + 168) + 16) smsContext]) != 0)
  {
    v81 = v80;
    v82 = [v80 richAttachmentIntelligenceFeatureUsage];

    if (v82)
    {
      [v82 addIsReadingIntelligenceAttempted_];
    }
  }

  else
  {
    v82 = 0;
  }

  *(v0 + 408) = v82;
  v83 = *(v0 + 296);
  v85 = *(v0 + 264);
  v84 = *(v0 + 272);
  sub_267B9AFEC(*(v0 + 224) + 304, v0 + 56);
  (v50)(v85, v83, v84);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v84);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 416) = v89;
  *v89 = v90;
  v89[1] = sub_267E527D8;
  v92 = *(v0 + 256);
  v91 = *(v0 + 264);
  OUTLINED_FUNCTION_15();

  return sub_267E535F0(v93, v94);
}

uint64_t sub_267E527D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *(v4 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v11[53] = v9;
  v11[54] = v10;
  v11[55] = v0;

  sub_267B9F98C(v6, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E52904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_90();
  a20 = v23;
  v27 = v23[54];
  if (v27)
  {
    v28 = v23[49];
    v29 = v23[54];

    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v23[53];
      v33 = OUTLINED_FUNCTION_48();
      v34 = OUTLINED_FUNCTION_52();
      a11 = v34;
      *v33 = 136380675;

      v24 = sub_267BA33E8(v32, v27, &a11);

      *(v33 + 4) = v24;
      _os_log_impl(&dword_267B93000, v30, v31, "#ImageComponent Image caption is %{private}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v23[25] = v23[53];
    v23[26] = v27;
    if (qword_2802287D0 != -1)
    {
      swift_once();
    }

    v35 = sub_267EF2728();
    v22 = __swift_project_value_buffer(v35, qword_280240EC0);
    sub_267BB5034();
    OUTLINED_FUNCTION_22_0();
    sub_267EF9908();
    if (v36)
    {

      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = v23[53];
      v38 = v23[54];
    }

    v23[23] = v37;
    v23[24] = v38;
    v39 = v38 != 0;
  }

  else
  {
    v39 = 0;
  }

  v40 = v23[51];
  if (v40)
  {
    v27 = v40;
    [v27 addIsReadingIntelligenceUsed_];
  }

  OUTLINED_FUNCTION_41_18();

  __swift_destroy_boxed_opaque_existential_0(v23 + 7);
  v22(v39, v27);
  if (*(v23[28] + 88))
  {
    OUTLINED_FUNCTION_10(dword_267F08D50);
    v55 = v41;
    v42 = swift_task_alloc();
    v23[56] = v42;
    *v42 = v23;
    OUTLINED_FUNCTION_1_77(v42);
    OUTLINED_FUNCTION_64_3();

    return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, v55, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_39_21();
    sub_267BB8364();
    v52 = swift_task_alloc();
    OUTLINED_FUNCTION_24_34(v52);
    v53 = swift_task_alloc();
    v23[62] = v53;
    *v53 = v23;
    OUTLINED_FUNCTION_2_63(v53);
    OUTLINED_FUNCTION_11_44();
    OUTLINED_FUNCTION_64_3();

    return sub_267D430BC();
  }
}

uint64_t sub_267E52BD4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 448);
  *v2 = *v0;
  *(v1 + 456) = v5;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E52CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = *(v22 + 456);
  v26 = sub_267EF8A08();
  __swift_project_value_buffer(v26, qword_280240FB0);

  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v22 + 456);
    v30 = OUTLINED_FUNCTION_48();
    v31 = OUTLINED_FUNCTION_52();
    a11 = v31;
    *v30 = 136315138;
    *(v22 + 216) = v29;
    type metadata accessor for MessagesSpokenDialogContext();
    sub_267E55B4C(&qword_280228FB8, type metadata accessor for MessagesSpokenDialogContext);
    sub_267EF7B58();
    v32 = sub_267EF8F08();
    v34 = v33;

    v35 = sub_267BA33E8(v32, v34, &a11);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_267B93000, v27, v28, "#ImageComponent SpokenDialogContext: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v36 = *(v22 + 456);
  v37 = *(v22 + 376);
  v38 = *(v22 + 360);
  v39 = *(v22 + 256);
  v40 = *(v22 + 240);
  v41 = *(v22 + 224);
  v42 = __swift_project_boxed_opaque_existential_0(*(v22 + 248), *(*(v22 + 248) + 24));
  v48 = *v40;
  sub_267BB8364();
  v43 = swift_task_alloc();
  *(v22 + 464) = v43;
  v43[2] = v40;
  v43[3] = v22 + 184;
  v43[4] = v37;
  v43[5] = v38;
  v43[6] = v36;
  v43[7] = v41;
  v43[8] = v39;
  v44 = *v42;
  v45 = swift_task_alloc();
  *(v22 + 472) = v45;
  *v45 = v22;
  v45[1] = sub_267E52F3C;
  OUTLINED_FUNCTION_11_44();
  OUTLINED_FUNCTION_64_3();

  return sub_267D45894();
}

uint64_t sub_267E52F3C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  v6 = *(v5 + 472);
  v7 = *(v5 + 464);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 480) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E53058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = v10[45];

  v12 = v10[18];
  v13 = v10[57];
  v14 = v10[47];
  v15 = v10[44];
  v17 = v10[40];
  v16 = v10[41];
  v19 = v10[36];
  v18 = v10[37];
  v20 = v10[33];

  v21 = v10[24];

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_122();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267E53118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = v10[57];

  v12 = v10[60];
  OUTLINED_FUNCTION_19_38();

  v13 = v10[24];

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_267E531C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  v6 = *(v5 + 496);
  v7 = *(v5 + 488);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 504) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E532DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 168);
  OUTLINED_FUNCTION_19_38();

  v12 = *(v10 + 192);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_122();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E5337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 504);
  OUTLINED_FUNCTION_19_38();

  v12 = *(v10 + 192);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E5341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = v14[49];
  v17 = sub_267EF89F8();
  v18 = sub_267EF95E8();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v14[55];
  if (v19)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_267B93000, v17, v18, "#ImageComponent timed out fetching image caption!", v15, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v21 = v14[51];
  if (v21)
  {
    v17 = v21;
    [v17 addIsReadingIntelligenceUsed:0];
  }

  OUTLINED_FUNCTION_41_18();

  __swift_destroy_boxed_opaque_existential_0(v14 + 7);
  v18(v17, v20);
  if (*(v14[28] + 88))
  {
    OUTLINED_FUNCTION_10(dword_267F08D50);
    v36 = v22;
    v23 = swift_task_alloc();
    v14[56] = v23;
    *v23 = v14;
    OUTLINED_FUNCTION_1_77(v23);
    OUTLINED_FUNCTION_64_3();

    return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v36, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_39_21();
    sub_267BB8364();
    v33 = swift_task_alloc();
    OUTLINED_FUNCTION_24_34(v33);
    v34 = swift_task_alloc();
    v14[62] = v34;
    *v34 = v14;
    OUTLINED_FUNCTION_2_63(v34);
    OUTLINED_FUNCTION_11_44();
    OUTLINED_FUNCTION_64_3();

    return sub_267D430BC();
  }
}

uint64_t sub_267E535F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_267E53614, 0, 0);
}

uint64_t sub_267E53614()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  v5 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v6;
  *v6 = v7;
  v6[1] = sub_267E53714;
  v8 = MEMORY[0x277D837D0];
  v9 = MEMORY[0x277D837D0];

  return MEMORY[0x282200740](v0 + 16, v8, v4, 0, 0, &unk_267F0C778, v2, v9);
}

uint64_t sub_267E53714()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E53830()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_267E5388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E539CC, 0, 0);
}

void sub_267E539CC()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  SpokenImageComponentParameters = type metadata accessor for SearchForMessagesReadSpokenImageComponentParameters(0);
  *(v0 + 192) = SpokenImageComponentParameters;
  v6 = SpokenImageComponentParameters[8];
  sub_267B9F98C(v3 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 200) = v9;
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_47_16();
  v13(v12);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  OUTLINED_FUNCTION_34_27();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(SpokenImageComponentParameters[12]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(SpokenImageComponentParameters[13]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(SpokenImageComponentParameters[15]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v45 = *(v0 + 160);
  v46 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  v47 = sub_267BD3DDC(v45, v46 + SpokenImageComponentParameters[17]);
  *(v0 + 208) = 0;
  v23 = *(v0 + 72);
  if (v23[1])
  {
    v46 = *(v0 + 152);
    v6 = *v23;
    v24 = v23[1];

    sub_267EF90F8();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  OUTLINED_FUNCTION_25_35(v47, v25);
  v26 = SpokenImageComponentParameters[14];
  v27 = *(v1 + v26);

  OUTLINED_FUNCTION_52_15();

  *(v1 + v26) = ComponentPatternCommonParameters;
  v28 = SpokenImageComponentParameters[16];
  v29 = *(v1 + v28);

  *(v1 + v28) = v6;
  v30 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_51_16(v30, v31);
  v32 = sub_267BDAF74();
  *(v0 + 256) = v32 & 1;
  if (v32)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v33 = swift_task_alloc();
    *(v0 + 248) = v33;
    *v33 = v0;
    v33[1] = sub_267E53EE8;
    OUTLINED_FUNCTION_89();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v46)
  {
    v36 = OUTLINED_FUNCTION_6_46();
    v37(v36);
  }

  else
  {
    OUTLINED_FUNCTION_21_28();
    v38 = OUTLINED_FUNCTION_13_41();
    v39(v38);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v40, v41, v42);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_89();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E53EE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 257) = v5;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E53FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 257);
  v16 = *(v14 + 256);
  v17 = *(v14 + 232);
  v18 = *(v14 + 240);
  v20 = *(v14 + 216);
  v19 = *(v14 + 224);
  v44 = *(v14 + 208);
  v22 = *(v14 + 136);
  v21 = *(v14 + 144);
  v23 = *(v14 + 120);
  sub_267EF7C18();
  v25 = 0xE000000000000000;
  if (v24)
  {
    v25 = v24;
  }

  v43 = v25;
  sub_267EF8238();
  sub_267EF8348();
  if (v44)
  {
    v26 = OUTLINED_FUNCTION_6_46();
    v27(v26);
  }

  else
  {
    OUTLINED_FUNCTION_21_28();
    v44 = v28;
    v29 = OUTLINED_FUNCTION_13_41();
    v30(v29);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v31, v32, v33);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, a11, a12, a13, a14);
}

uint64_t sub_267E54160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = sub_267EF8248();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E542A0, 0, 0);
}

void sub_267E542A0()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  ImageComponentParameters = type metadata accessor for SearchForMessagesReadImageComponentParameters(0);
  *(v0 + 192) = ImageComponentParameters;
  v6 = ImageComponentParameters[8];
  sub_267B9F98C(v3 + v6, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v8 = ComponentPatternCommonParameters[5];
  v9 = sub_267EF79B8();
  *(v0 + 200) = v9;
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 16);
  v12 = OUTLINED_FUNCTION_47_16();
  v13(v12);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
  OUTLINED_FUNCTION_34_27();
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(ImageComponentParameters[13]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_23_0();
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(ImageComponentParameters[14]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_23_0();
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  OUTLINED_FUNCTION_3_72();
  OUTLINED_FUNCTION_24_5(ImageComponentParameters[16]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_23_0();
  v45 = *(v0 + 160);
  v46 = *(v0 + 56);
  OUTLINED_FUNCTION_2_1();
  v47 = sub_267BD3DDC(v45, v46 + ImageComponentParameters[17]);
  *(v0 + 208) = 0;
  v23 = *(v0 + 72);
  if (v23[1])
  {
    v46 = *(v0 + 152);
    v6 = *v23;
    v24 = v23[1];

    sub_267EF90F8();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  OUTLINED_FUNCTION_25_35(v47, v25);
  v26 = ImageComponentParameters[15];
  v27 = *(v1 + v26);

  OUTLINED_FUNCTION_52_15();

  *(v1 + v26) = ComponentPatternCommonParameters;
  v28 = ImageComponentParameters[9];
  v29 = *(v1 + v28);

  *(v1 + v28) = v6;
  v30 = sub_267EF7998();
  *(v0 + 240) = OUTLINED_FUNCTION_51_16(v30, v31);
  v32 = sub_267BDAF74();
  *(v0 + 256) = v32 & 1;
  if (v32)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v33 = swift_task_alloc();
    *(v0 + 248) = v33;
    *v33 = v0;
    v33[1] = sub_267E547BC;
    OUTLINED_FUNCTION_89();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_40_21();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v46)
  {
    v36 = OUTLINED_FUNCTION_6_46();
    v37(v36);
  }

  else
  {
    OUTLINED_FUNCTION_21_28();
    v38 = OUTLINED_FUNCTION_13_41();
    v39(v38);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_36_2(v40, v41, v42);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_89();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E547BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 257) = v5;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E548A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_267E548C8, 0, 0);
}

uint64_t sub_267E548C8()
{
  OUTLINED_FUNCTION_12();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  OUTLINED_FUNCTION_10(&unk_267F00578);
  v5 = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_267E5498C;

  return v5(sub_267E565A8, v1);
}

uint64_t sub_267E5498C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 48) = v8;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E54A90()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  if (v1)
  {
    if (sub_267BAF0DC(*(v0 + 48)))
    {
      v2 = *(v0 + 48) & 0xC000000000000001;
      sub_267BBD0EC(0, v2 == 0, v1);
      if (v2)
      {
        v3 = MEMORY[0x26D609870](0, v1);
      }

      else
      {
        v3 = *(v1 + 32);
      }

      v4 = v3;

      v1 = sub_267EF67A8();
      v6 = v5;

      goto LABEL_8;
    }

    v1 = 0;
  }

  v6 = 0xE000000000000000;
LABEL_8:
  v7 = *(v0 + 8);

  return v7(v1, v6);
}

uint64_t sub_267E54B74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *__swift_project_boxed_opaque_existential_0(a3, a3[3]);

  sub_267EF67E8();
}

uint64_t sub_267E54C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8);
  v5[14] = v6;
  v5[15] = *(v6 + 64);
  v5[16] = swift_task_alloc();
  v7 = *(type metadata accessor for ImageComponent() - 8);
  v5[17] = v7;
  v5[18] = *(v7 + 64);
  v5[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E54D88, 0, 0);
}

uint64_t sub_267E54D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v16 = *(v14 + 152);
  v15 = *(v14 + 160);
  v17 = *(v14 + 136);
  v18 = *(v14 + 144);
  v19 = *(v14 + 128);
  v21 = *(v14 + 104);
  v20 = *(v14 + 112);
  v23 = *(v14 + 88);
  v22 = *(v14 + 96);
  v41 = *(v14 + 120);
  v42 = *(v14 + 80);
  v43 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v43);
  sub_267E562D4(v23, v16);
  sub_267B9AFEC(v22, v14 + 16);
  sub_267BB170C(v21, v19, &qword_280229E20, &unk_267EFDCC0);
  v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v25 = (v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v20 + 80) + v25 + 40) & ~*(v20 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_267E56338(v16, v27 + v24);
  sub_267B9A5E8((v14 + 16), v27 + v25);
  sub_267C26704(v19, v27 + v26);
  sub_267E55494(v15, &unk_267F0C788, v27);
  sub_267B9F98C(v15, &unk_28022AE50, &unk_267EFD130);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v43);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_267E55494(v15, &unk_267F0C798, v28);
  sub_267B9F98C(v15, &unk_28022AE50, &unk_267EFD130);
  v29 = *(MEMORY[0x277D85818] + 4);
  v30 = swift_task_alloc();
  *(v14 + 168) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CA18, &unk_267F0C7A0);
  *v30 = v14;
  v30[1] = sub_267E54FC4;
  v31 = *(v14 + 80);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_64_3();

  return MEMORY[0x2822004D0](v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, a12, a13, a14);
}

uint64_t sub_267E54FC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E550BC()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    v4 = *(v0 + 128);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = **(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    sub_267EF9468();
    *v5 = v6;
    v5[1] = v1;
  }

  else
  {
    sub_267C266B0();
    swift_allocError();
    *v9 = 0xD00000000000002FLL;
    v9[1] = 0x8000000267F1BEA0;
    swift_willThrow();
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 128);
  }

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267E551F8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E55270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = sub_267E55320;

  return sub_267E548A8(a5, a6);
}

uint64_t sub_267E55320(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_9_1();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v3;
  OUTLINED_FUNCTION_5();
  *v12 = v11;

  if (v2)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 32) = a2;
    *(v7 + 40) = a1;
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_267E55464()
{
  v1 = v0[4];
  v2 = v0[2];
  *v2 = v0[5];
  v2[1] = v1;
  OUTLINED_FUNCTION_17();
  return v3();
}

uint64_t sub_267E55494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_267BB170C(a1, v20 - v9, &unk_28022AE50, &unk_267EFD130);
  v11 = sub_267EF93F8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_267B9F98C(v10, &unk_28022AE50, &unk_267EFD130);
  }

  else
  {
    sub_267EF93E8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_267EF93A8();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_267E5565C()
{
  v1 = sub_267EF9C38();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E55718, 0, 0);
}

uint64_t sub_267E55718()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 32);
  sub_267EF9F58();
  OUTLINED_FUNCTION_10(dword_267F0C7B0);
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_267E557D4;
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_22_0();

  return v6();
}

uint64_t sub_267E557D4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = v4[2];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 48) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E55928()
{
  OUTLINED_FUNCTION_56();
  sub_267C266B0();
  swift_allocError();
  *v1 = 0xD000000000000032;
  v1[1] = 0x8000000267F1BED0;
  swift_willThrow();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E559CC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E55A28()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267E55A5C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267E55A88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267E51EDC();
}

uint64_t sub_267E55B4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E55B94(uint64_t a1)
{
  result = sub_267E55B4C(&qword_28022CA10, type metadata accessor for ImageComponent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267E55BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_267EF9C28();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_267E55CEC, 0, 0);
}

uint64_t sub_267E55CEC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_267EF9C38();
  v7 = sub_267E55B4C(&qword_28022CA20, MEMORY[0x277D85928]);
  sub_267EF9F38();
  sub_267E55B4C(&qword_28022CA28, MEMORY[0x277D858F8]);
  sub_267EF9C48();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_267E55E78;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_267E55E78()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_5();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    OUTLINED_FUNCTION_17();

    return v18();
  }
}

uint64_t sub_267E56018()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_17();
  v4 = v0[15];

  return v3();
}

uint64_t sub_267E5607C(void *a1)
{
  v2 = [a1 attachmentFiles];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E560F4()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_18_34(v1);
  OUTLINED_FUNCTION_122();

  return sub_267E54160(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267E56184()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_18_34(v1);
  OUTLINED_FUNCTION_122();

  return sub_267E5388C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267E56214(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_267BBD07C;

  return sub_267E54C18(a1, a2, v6, v7, v8);
}

uint64_t sub_267E562D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E56338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E5639C()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ImageComponent();
  OUTLINED_FUNCTION_30_0(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8);
  v11 = (v9 + *(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_267BBD07C;

  return sub_267E55270(v4, v12, v13, v0 + v7, v0 + v9, v0 + v11);
}

uint64_t sub_267E56504()
{
  OUTLINED_FUNCTION_56();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_267BAEBEC;

  return sub_267E5565C();
}

uint64_t type metadata accessor for EditMessageCATsSimple()
{
  result = qword_28022CA30;
  if (!qword_28022CA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E56644(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E56674()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_267EFCC90;
  *(v2 + 32) = 0x70756F7267;
  *(v2 + 40) = 0xE500000000000000;
  if (v1)
  {
    type metadata accessor for MessagesGroup(0);
    v3 = v1;
  }

  else
  {
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[3];
  *(v2 + 48) = v3;
  OUTLINED_FUNCTION_22_3();
  *(v2 + 72) = v5;
  *(v2 + 80) = v6;
  *(v2 + 88) = 0xE900000000000074;
  v7 = 0;
  if (v4)
  {
    v7 = sub_267EF77C8();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v4;
  *(v2 + 120) = v7;
  v8 = *(MEMORY[0x277D55C70] + 4);
  v12 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_267E56800;
  v10 = v0[4];

  return v12(0xD000000000000019, 0x8000000267F13280, v2);
}

uint64_t sub_267E56800()
{
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_15_0();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v4 + 40);

    v14 = *(v8 + 8);

    return v14(v1);
  }
}

uint64_t sub_267E56944()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_267E569A4()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 88) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E56A4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267F01440);
  sub_267BB16A4(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 56), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_18_0();
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_26_3();
    v7();
  }

  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_22_3();
  *(v3 + 80) = v11;
  *(v3 + 88) = 0xEA00000000007374;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v9;
  *(v3 + 120) = v12;
  *(v3 + 128) = 0x64616F6C796170;
  *(v3 + 136) = 0xE700000000000000;
  sub_267BB16A4(v10, v8, &unk_28022AE30, &qword_267EFC0B0);
  v13 = OUTLINED_FUNCTION_23_11();
  v14 = *(v0 + 48);
  v15 = *(v0 + 24);
  if (v13 == 1)
  {
    v16 = *(v0 + 24);

    sub_267B9FF34(v14, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_18_0();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_26_3();
    v19();
  }

  v20 = *(v0 + 88);
  *(v3 + 176) = 0xD000000000000011;
  *(v3 + 184) = 0x8000000267F13240;
  *(v3 + 216) = MEMORY[0x277D839B0];
  *(v3 + 192) = v20;
  v21 = *(MEMORY[0x277D55C70] + 4);
  v25 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v22 = swift_task_alloc();
  *(v0 + 72) = v22;
  *v22 = v0;
  v22[1] = sub_267E56CF4;
  v23 = *(v0 + 40);

  return v25(0xD000000000000017, 0x8000000267F131A0, v3);
}

uint64_t sub_267E56CF4()
{
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = OUTLINED_FUNCTION_5_3();

    return v16(v15);
  }
}

uint64_t sub_267E56E3C()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_267E56EB0()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E56F48()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[6] = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267EFCC90);
  sub_267BB16A4(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(v0[5], &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_18_0();
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_26_3();
    v7();
  }

  v8 = v0[3];
  OUTLINED_FUNCTION_22_3();
  *(v3 + 80) = v9;
  *(v3 + 88) = 0xEA00000000007374;
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v8;
  v10 = *(MEMORY[0x277D55C70] + 4);
  v14 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_267E5711C;
  v12 = v0[4];

  return v14(0xD000000000000019, 0x8000000267F13100, v3);
}

uint64_t sub_267E5711C()
{
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_5_3();

    return v15(v14);
  }
}

uint64_t sub_267E57258()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_267E572C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_26_3();
  return sub_267E57310(v3, v4);
}

uint64_t sub_267E57310(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_267BB16A4(a1, &v18 - v15, &qword_280229E20, &unk_267EFDCC0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_267EF79C8();
  (*(v8 + 8))(a2, v2);
  sub_267B9FF34(a1, &qword_280229E20, &unk_267EFDCC0);
  return v16;
}

uint64_t sub_267E5748C(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_267EF79D8();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_267E57594()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267B93000, v1, v2, "Trial factors updated. Refreshing.", v3, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_267B9AFEC(result + 16, v7);

    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    (*(v6 + 24))(v5, v6);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return result;
}

uint64_t sub_267E576F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_267EF79B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = [v0 amount];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  [v13 doubleValue];

  sub_267E5793C(v0);
  v16 = v15;
  if (v15)
  {
    sub_267EF90F8();

    (*(v6 + 32))(v12, v10, v5);
    v17 = sub_267EF7838();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_267EF7828();
    (*(v6 + 16))(v4, v12, v5);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    sub_267EF7608();

    sub_267BBD6F0(v4);
    v16 = sub_267EF75F8();

    (*(v6 + 8))(v12, v5);
  }

  return v16;
}

uint64_t sub_267E5793C(void *a1)
{
  v1 = [a1 currencyCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267E579A0@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_267BEB478(0xD000000000000017, 0x8000000267F18AD0);
  if (v3)
  {
    v4 = v3;
    result = sub_267BEB4DC();
    a1[3] = result;
    a1[4] = &off_2878D36E8;
    *a1 = v4;
    a1[5] = 0xD000000000000017;
    a1[6] = 0x8000000267F18AD0;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD00000000000004ALL, 0x8000000267F1BFE0);
    MEMORY[0x26D608E60](0xD000000000000017, 0x8000000267F18AD0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_267BA33E8(0, 0xE000000000000000, v11);
      _os_log_impl(&dword_267B93000, v7, v8, "Fatal error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

uint64_t sub_267E57BAC(char a1)
{
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v4 = sub_267E57D38(a1 & 1);
  v5 = (*(v3 + 8))(v4);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    v11 = sub_267E57D38(a1 & 1);
    v13 = sub_267BA33E8(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5 & 1;
    _os_log_impl(&dword_267B93000, v7, v8, "#ManualTestFlagStore Flag %s isEnabled is '%{BOOL}d'", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return v5 & 1;
}

uint64_t sub_267E57D38(char a1)
{
  sub_267EF9B68();
  if (a1)
  {
    v2 = 0x73746E6968;
  }

  else
  {
    v2 = 0x646E65536F747561;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x26D608E60](v2, v3);

  MEMORY[0x26D608E60](0x546C61756E614D2ELL, 0xEF67616C46747365);
  return 0;
}

double sub_267E57DFC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v3 = sub_267EF4C68();
  v4 = OUTLINED_FUNCTION_58(v3);
  v75 = v5;
  v76 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v74 - v12;
  v14 = sub_267EF4C08();
  v15 = OUTLINED_FUNCTION_58(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_267EF6718();
  v23 = OUTLINED_FUNCTION_58(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_60();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v74 - v32;
  (*(v17 + 16))(v21, a1, v14);
  OUTLINED_FUNCTION_35_26();
  v35 = v34(v21, v14);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v36 = OUTLINED_FUNCTION_17_28();
    v37(v36);
    goto LABEL_5;
  }

  if (v35 == *MEMORY[0x277D5C158])
  {
    v38 = OUTLINED_FUNCTION_17_28();
    v39(v38);
    v40 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D50, &qword_267F0C8C0) + 48)];

LABEL_5:
    v41 = *(v25 + 32);
    v41(v33, v21, v22);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v42 = sub_267EF8A08();
    __swift_project_value_buffer(v42, qword_280240FB0);
    v43 = sub_267EF89F8();
    v44 = sub_267EF95D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v46, v47, "#SmsIntentHelper building SmsNLv3Intent");
      MEMORY[0x26D60A7B0](v45, -1, -1);
    }

    v41(v30, v33, v22);
    v48 = type metadata accessor for SmsNLv3Intent();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = sub_267EC41AC(v30);
    if (v51)
    {
      v53 = v77;
      v77[3] = v48;
      v53[4] = &off_2878D9000;
      *v53 = v51;
      return result;
    }

    return OUTLINED_FUNCTION_29_29();
  }

  if (v35 == *MEMORY[0x277D5C160])
  {
    v54 = OUTLINED_FUNCTION_17_28();
    v55(v54);
    v57 = v75;
    v56 = v76;
    (*(v75 + 32))(v13, v21, v76);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v58 = sub_267EF8A08();
    __swift_project_value_buffer(v58, qword_280240FB0);
    v59 = sub_267EF89F8();
    v60 = sub_267EF95D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_267B93000, v59, v60, "#SmsIntentHelper building an SmsNLv4Intent from usoParse", v61, 2u);
      MEMORY[0x26D60A7B0](v61, -1, -1);
    }

    (*(v57 + 16))(v10, v13, v56);
    v62 = type metadata accessor for SmsNLv4Intent();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    sub_267DD5530();
    if (v65)
    {
      v66 = v77;
      v77[3] = v62;
      v66[4] = &off_2878D5AD8;
      *v66 = v65;
      (*(v57 + 8))(v13, v56);
      return result;
    }

    (*(v57 + 8))(v13, v56);
    return OUTLINED_FUNCTION_29_29();
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v67 = sub_267EF8A08();
  __swift_project_value_buffer(v67, qword_280240FB0);
  v68 = sub_267EF89F8();
  v69 = sub_267EF95D8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v71, v72, "#SmsIntentHelper unrecognized parse type, not building SmsIntent");
    MEMORY[0x26D60A7B0](v70, -1, -1);
  }

  v73 = OUTLINED_FUNCTION_29_29();
  (*(v17 + 8))(v21, v14, v73);
  return result;
}

uint64_t sub_267E583C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_58(a1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  a3(0);
  if (swift_dynamicCast())
  {
    return v10[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E584A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_267EFA0A8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 0;
    v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v6 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_267EF9B58();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v25[0] = a1;
          v25[1] = v24;
          v13 = v25 + v10;
          v15 = *(v25 + v10);
          if (*(v25 + v10) < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v19 = v13[1] & 0x3F | ((v15 & 0x1F) << 6);
                v17 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v20 = ((v15 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3Fu;
                v17 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v21 = ((v15 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3Fu;
                v17 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v23;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v12 = sub_267EF9BC8();
          }

          v13 = (v12 + v10);
          v14 = *(v12 + v10);
          v15 = *(v12 + v10);
          if (v14 < 0)
          {
            switch(__clz(v15 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v17 = 1;
      }

LABEL_15:
      sub_267EFA0B8();
      v18 = sub_267EFA098();
      (*v11)(v8, v4);
      if ((v18 & 1) == 0)
      {
        v10 += v17;
        if (v10 < v9)
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_267E58714(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_36_24(a1, a2);
  if (v3() & 1) != 0 && (v4 = v2[7], v5 = OUTLINED_FUNCTION_3(), (v6(v5)) && (v7 = v2[35], v8 = OUTLINED_FUNCTION_3(), (v9(v8)))
  {
    v10 = v2[17];
    v11 = OUTLINED_FUNCTION_3();
    v13 = v12(v11) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_267E587AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_36_24(a1, a2);
  if ((v3() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 72);
  v5 = OUTLINED_FUNCTION_3();
  if ((v6(v5) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 296);
  v8 = OUTLINED_FUNCTION_3();

  return v9(v8);
}

uint64_t sub_267E58838@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_60();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v12 = sub_267EF8198();
  v13 = OUTLINED_FUNCTION_58(v12);
  v68 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_60();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v23 = a1[2];
  v24 = OUTLINED_FUNCTION_17_4();
  if (v25(v24) & 1) != 0 || (v26 = a1[4], v27 = OUTLINED_FUNCTION_2_64(), (v28(v27)))
  {
    v69 = a2;
    v29 = a1[5];
    v30 = OUTLINED_FUNCTION_2_64();
    v67 = v31;
    if (v31(v30))
    {
      sub_267EAC924(v11);

      if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
      {
        v32 = *(v68 + 32);
        v32(v22, v11, v12);
        v33 = v69;
        v34 = v69;
        v35 = v22;
LABEL_23:
        v32(v34, v35, v12);
        __swift_storeEnumTagSinglePayload(v33, 0, 1, v12);
        v64 = type metadata accessor for TapbackAction(0);
        swift_storeEnumTagMultiPayload();
        v65 = v33;
        return __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    }

    sub_267E59E60(v11);
    v36 = a1[6];
    v37 = OUTLINED_FUNCTION_2_64();
    v39 = v38(v37);
    if (v40)
    {
      sub_267D704A0(v39, v40, v8);

      if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
      {
        v32 = *(v68 + 32);
        v32(v19, v8, v12);
        v33 = v69;
        v34 = v69;
        v35 = v19;
        goto LABEL_23;
      }

      sub_267E59E60(v8);
    }

    v41 = OUTLINED_FUNCTION_2_64();
    v42 = v67;
    if (v67(v41) && (v43 = sub_267EF60C8(), , v43))
    {
      v44 = a1[1];
      v45 = v69;
      v46 = OUTLINED_FUNCTION_2_64();
      v47(v46);
    }

    else
    {
      v55 = OUTLINED_FUNCTION_2_64();
      if (!v42(v55) || (v56 = sub_267EF60D8(), v58 = v57, , !v58) || (v59 = sub_267E584A8(v56, v58), , (v59 & 1) == 0))
      {
        v45 = v69;
        __swift_storeEnumTagSinglePayload(v69, 1, 1, v12);
        v64 = type metadata accessor for TapbackAction(0);
        goto LABEL_21;
      }

      v60 = a1[1];
      v45 = v69;
      v61 = OUTLINED_FUNCTION_2_64();
      v62(v61);
    }

    v63 = sub_267EF4BA8();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v63);
    v64 = type metadata accessor for TapbackAction(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    v65 = v45;
    return __swift_storeEnumTagSinglePayload(v65, 0, 1, v64);
  }

  v48 = a1[3];
  v49 = OUTLINED_FUNCTION_2_64();
  v51 = v50(v49);
  v52 = type metadata accessor for TapbackAction(0);
  if (v51)
  {
    swift_storeEnumTagMultiPayload();
    v53 = a2;
    v54 = 0;
  }

  else
  {
    v53 = a2;
    v54 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v53, v54, 1, v52);
}

BOOL sub_267E58CE8(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = 1684957542;
    v9 = 0xE400000000000000;
    switch(*v5)
    {
      case 1:
        v8 = 2003789939;
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_43_22();
        break;
      case 3:
        v8 = 1684104562;
        break;
      case 4:
        v8 = 1684956531;
        break;
      case 5:
        v8 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x796C700000;
        break;
      case 6:
        v8 = OUTLINED_FUNCTION_19_39();
        break;
      case 7:
        v8 = OUTLINED_FUNCTION_516();
        break;
      case 8:
        v9 = 0xE600000000000000;
        v11 = 1701602660;
        goto LABEL_29;
      case 9:
        v9 = 0xE600000000000000;
        v10 = 1701867617;
        goto LABEL_33;
      case 0xA:
        v8 = OUTLINED_FUNCTION_20_29();
        break;
      case 0xB:
        v8 = OUTLINED_FUNCTION_7_47();
        break;
      case 0xC:
        v8 = OUTLINED_FUNCTION_18_35();
        break;
      case 0xD:
        v8 = 1886352499;
        break;
      case 0xE:
        v8 = OUTLINED_FUNCTION_40_22();
        break;
      case 0xF:
        v8 = 2036427888;
        break;
      case 0x10:
        v8 = OUTLINED_FUNCTION_44_23();
        break;
      case 0x11:
        v8 = OUTLINED_FUNCTION_15_40();
        break;
      case 0x12:
        v9 = 0xE600000000000000;
        v11 = 1633972341;
LABEL_29:
        v8 = v11 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 0x13:
        v12 = OUTLINED_FUNCTION_38_26();
        goto LABEL_35;
      case 0x14:
        v8 = OUTLINED_FUNCTION_14_41();
        goto LABEL_21;
      case 0x15:
        v8 = OUTLINED_FUNCTION_12_42();
        break;
      case 0x16:
        v8 = OUTLINED_FUNCTION_21_29();
        break;
      case 0x17:
        v9 = 0xE600000000000000;
        v10 = 1702063733;
LABEL_33:
        v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
        break;
      case 0x18:
        v8 = OUTLINED_FUNCTION_45_24();
        break;
      case 0x19:
        v8 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x7463610000;
        break;
      case 0x1A:
        v12 = OUTLINED_FUNCTION_39_22();
LABEL_35:
        v8 = v12 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 0x1B:
        v8 = OUTLINED_FUNCTION_13_42();
LABEL_21:
        v9 = 0xEE00000000000000;
        break;
      default:
        break;
    }

    v13 = 1684957542;
    v14 = 0xE400000000000000;
    switch(a1)
    {
      case 1:
        v13 = 2003789939;
        break;
      case 2:
        OUTLINED_FUNCTION_32_21();
        break;
      case 3:
        v13 = 1684104562;
        break;
      case 4:
        v13 = 1684956531;
        break;
      case 5:
        OUTLINED_FUNCTION_27_31();
        v13 = v17 & 0xFFFF00000000FFFFLL | 0x796C700000;
        break;
      case 6:
        OUTLINED_FUNCTION_25_36();
        break;
      case 7:
        OUTLINED_FUNCTION_31_25();
        break;
      case 8:
        v14 = 0xE600000000000000;
        v18 = 1701602660;
        goto LABEL_61;
      case 9:
        v14 = 0xE600000000000000;
        v15 = 1701867617;
        goto LABEL_65;
      case 10:
        OUTLINED_FUNCTION_23_27();
        break;
      case 11:
        OUTLINED_FUNCTION_8_51();
        break;
      case 12:
        OUTLINED_FUNCTION_22_30();
        break;
      case 13:
        v13 = 1886352499;
        break;
      case 14:
        OUTLINED_FUNCTION_28_33();
        break;
      case 15:
        v13 = 2036427888;
        break;
      case 16:
        OUTLINED_FUNCTION_33_21();
        break;
      case 17:
        OUTLINED_FUNCTION_16_37();
        break;
      case 18:
        v14 = 0xE600000000000000;
        v18 = 1633972341;
LABEL_61:
        v13 = v18 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 19:
        OUTLINED_FUNCTION_47_17();
        goto LABEL_67;
      case 20:
        OUTLINED_FUNCTION_11_45();
        goto LABEL_53;
      case 21:
        OUTLINED_FUNCTION_9_49();
        break;
      case 22:
        OUTLINED_FUNCTION_24_35();
        break;
      case 23:
        v14 = 0xE600000000000000;
        v15 = 1702063733;
LABEL_65:
        v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
        break;
      case 24:
        OUTLINED_FUNCTION_30_33();
        break;
      case 25:
        OUTLINED_FUNCTION_27_31();
        v13 = v16 & 0xFFFF00000000FFFFLL | 0x7463610000;
        break;
      case 26:
        OUTLINED_FUNCTION_48_26();
LABEL_67:
        v13 = v19 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 27:
        OUTLINED_FUNCTION_10_43();
LABEL_53:
        v14 = 0xEE00000000000000;
        break;
      default:
        break;
    }

    if (v8 == v13 && v9 == v14)
    {

      return v6 != 0;
    }

    sub_267EF9EA8();
    OUTLINED_FUNCTION_51_17();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v6 != 0;
}

BOOL sub_267E59030(unsigned __int8 a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  while (v4)
  {
    v6 = a1;
    if (*v5 == 28)
    {
      if (a1 == 28)
      {
        return v4 != 0;
      }
    }

    else
    {
      v7 = 1684957542;
      v8 = 0xE400000000000000;
      switch(*v5)
      {
        case 1:
          v7 = 2003789939;
          break;
        case 2:
          v7 = OUTLINED_FUNCTION_43_22();
          break;
        case 3:
          v7 = 1684104562;
          break;
        case 4:
          v7 = 1684956531;
          break;
        case 5:
          v7 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x796C700000;
          break;
        case 6:
          v7 = OUTLINED_FUNCTION_19_39();
          break;
        case 7:
          v7 = OUTLINED_FUNCTION_516();
          break;
        case 8:
          v8 = 0xE600000000000000;
          v10 = 1701602660;
          goto LABEL_31;
        case 9:
          v8 = 0xE600000000000000;
          v9 = 1701867617;
          goto LABEL_35;
        case 0xA:
          v7 = OUTLINED_FUNCTION_20_29();
          break;
        case 0xB:
          v7 = OUTLINED_FUNCTION_7_47();
          break;
        case 0xC:
          v7 = OUTLINED_FUNCTION_18_35();
          break;
        case 0xD:
          v7 = 1886352499;
          break;
        case 0xE:
          v7 = OUTLINED_FUNCTION_40_22();
          break;
        case 0xF:
          v7 = 2036427888;
          break;
        case 0x10:
          v7 = OUTLINED_FUNCTION_44_23();
          break;
        case 0x11:
          v7 = OUTLINED_FUNCTION_15_40();
          break;
        case 0x12:
          v8 = 0xE600000000000000;
          v10 = 1633972341;
LABEL_31:
          v7 = v10 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
          break;
        case 0x13:
          v11 = OUTLINED_FUNCTION_38_26();
          goto LABEL_37;
        case 0x14:
          v7 = OUTLINED_FUNCTION_14_41();
          goto LABEL_23;
        case 0x15:
          v7 = OUTLINED_FUNCTION_12_42();
          break;
        case 0x16:
          v7 = OUTLINED_FUNCTION_21_29();
          break;
        case 0x17:
          v8 = 0xE600000000000000;
          v9 = 1702063733;
LABEL_35:
          v7 = v9 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
          break;
        case 0x18:
          v7 = OUTLINED_FUNCTION_45_24();
          break;
        case 0x19:
          v7 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x7463610000;
          break;
        case 0x1A:
          v11 = OUTLINED_FUNCTION_39_22();
LABEL_37:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 0x1B:
          v7 = OUTLINED_FUNCTION_13_42();
LABEL_23:
          v8 = 0xEE00000000000000;
          break;
        default:
          break;
      }

      v12 = 1684957542;
      v13 = 0xE400000000000000;
      switch(v6)
      {
        case 0:
          break;
        case 1:
          v12 = 2003789939;
          break;
        case 2:
          OUTLINED_FUNCTION_32_21();
          break;
        case 3:
          v12 = 1684104562;
          break;
        case 4:
          v12 = 1684956531;
          break;
        case 5:
          OUTLINED_FUNCTION_27_31();
          v12 = v16 & 0xFFFF00000000FFFFLL | 0x796C700000;
          break;
        case 6:
          OUTLINED_FUNCTION_25_36();
          break;
        case 7:
          OUTLINED_FUNCTION_31_25();
          break;
        case 8:
          v13 = 0xE600000000000000;
          v17 = 1701602660;
          goto LABEL_63;
        case 9:
          v13 = 0xE600000000000000;
          v14 = 1701867617;
          goto LABEL_67;
        case 10:
          OUTLINED_FUNCTION_23_27();
          break;
        case 11:
          OUTLINED_FUNCTION_8_51();
          break;
        case 12:
          OUTLINED_FUNCTION_22_30();
          break;
        case 13:
          v12 = 1886352499;
          break;
        case 14:
          OUTLINED_FUNCTION_28_33();
          break;
        case 15:
          v12 = 2036427888;
          break;
        case 16:
          OUTLINED_FUNCTION_33_21();
          break;
        case 17:
          OUTLINED_FUNCTION_16_37();
          break;
        case 18:
          v13 = 0xE600000000000000;
          v17 = 1633972341;
LABEL_63:
          v12 = v17 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
          break;
        case 19:
          OUTLINED_FUNCTION_47_17();
          goto LABEL_69;
        case 20:
          OUTLINED_FUNCTION_11_45();
          goto LABEL_55;
        case 21:
          OUTLINED_FUNCTION_9_49();
          break;
        case 22:
          OUTLINED_FUNCTION_24_35();
          break;
        case 23:
          v13 = 0xE600000000000000;
          v14 = 1702063733;
LABEL_67:
          v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
          break;
        case 24:
          OUTLINED_FUNCTION_30_33();
          break;
        case 25:
          OUTLINED_FUNCTION_27_31();
          v12 = v15 & 0xFFFF00000000FFFFLL | 0x7463610000;
          break;
        case 26:
          OUTLINED_FUNCTION_48_26();
LABEL_69:
          v12 = v18 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 27:
          OUTLINED_FUNCTION_10_43();
LABEL_55:
          v13 = 0xEE00000000000000;
          break;
        default:
          goto LABEL_75;
      }

      if (v7 == v12 && v8 == v13)
      {

        return v4 != 0;
      }

      sub_267EF9EA8();
      OUTLINED_FUNCTION_51_17();

      if (v2)
      {
        return v4 != 0;
      }
    }

LABEL_75:
    ++v5;
    --v4;
  }

  return v4 != 0;
}

uint64_t sub_267E59398(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 440))();
  if (v4 == 17)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    sub_267E6EF84(&unk_2878CB9B8);
    v8 = v7;
    if ((*(a2 + 480))(a1, a2))
    {
      v5 = sub_267EE9664(v6, v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_267E5944C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_46_20(a1, a2);
  v3();
  OUTLINED_FUNCTION_34_28();
  if (v8)
  {
    return 0;
  }

  v6 = sub_267BB9308(v4);
  v8 = v6 == 28526 && v7 == 0xE200000000000000;
  if (v8)
  {

    return 1;
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
    return v2 & 1;
  }
}

uint64_t sub_267E594D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_46_20(a1, a2);
  v2();
  OUTLINED_FUNCTION_34_28();
  if (v5)
  {
    return 0;
  }

  sub_267BB9308(v3);
  OUTLINED_FUNCTION_37_21();
  if (v5)
  {
    v7 = v6 == 0xE300000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267E59558(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_46_20(a1, a2);
  v2();
  OUTLINED_FUNCTION_34_28();
  if (v5)
  {
    return 0;
  }

  sub_267BB9308(v3);
  OUTLINED_FUNCTION_37_21();
  if (v5)
  {
    v7 = v6 == 0xE800000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

BOOL sub_267E595E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a2 + 416))();

  return sub_267E59030(v4, a3);
}

uint64_t sub_267E5965C(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 216))() & 1) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 352);
  v4 = OUTLINED_FUNCTION_3();
  v6 = v5(v4);
  if (v6 != 35)
  {
    sub_267D6C8B0(v6);
    v15 = v14 == 0x74736574616CLL && v13 == 0xE600000000000000;
    if (v15)
    {
      goto LABEL_18;
    }

    v16 = sub_267EF9EA8();

    if (v16)
    {
      return 1;
    }
  }

  v7 = *(a2 + 408);
  v8 = OUTLINED_FUNCTION_3();
  v9 = v7(v8);
  if (v9 != 37)
  {
    sub_267D6C0D4(v9);
    if (v18 != 1953718636 || v17 != 0xE400000000000000)
    {
      v20 = sub_267EF9EA8();

      if ((v20 & 1) == 0)
      {
        goto LABEL_4;
      }

      return 1;
    }

LABEL_18:

    return 1;
  }

LABEL_4:
  v10 = OUTLINED_FUNCTION_3();
  v11 = v7(v10);
  if (v11 == 37)
  {
    return 0;
  }

  sub_267D6C0D4(v11);
  OUTLINED_FUNCTION_37_21();
  if (!v15 || v21 != 0xE500000000000000)
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }

  return 1;
}

uint64_t sub_267E5981C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_61(a1, a2);
  if (v4())
  {
    v5 = *(v2 + 72);
    v6 = OUTLINED_FUNCTION_3();
    if (v7(v6))
    {
      goto LABEL_3;
    }
  }

  v9 = OUTLINED_FUNCTION_3();
  if (((v4)(v9) & 1) == 0 || (OUTLINED_FUNCTION_35_26(), v10 = OUTLINED_FUNCTION_3(), (v11(v10) & 1) == 0) || (v12 = *(v2 + 368), v13 = OUTLINED_FUNCTION_3(), v12(v13), !v14))
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v15 = OUTLINED_FUNCTION_3();
  v16 = (v12)(v15);
  if (v17)
  {
    if (v16 != 0xD000000000000012 || v17 != 0x8000000267F1C060)
    {
      OUTLINED_FUNCTION_49_22();
      OUTLINED_FUNCTION_20_19();
      v8 = v3 ^ 1;
      return v8 & 1;
    }

    goto LABEL_14;
  }

LABEL_3:
  v8 = 1;
  return v8 & 1;
}

uint64_t sub_267E5992C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_61(a1, a2);
  if (v3())
  {
    v4 = v2[10];
    v5 = OUTLINED_FUNCTION_3();
    if (v6(v5))
    {
      goto LABEL_6;
    }
  }

  v7 = OUTLINED_FUNCTION_3();
  if (((v3)(v7) & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_35_26();
  v8 = OUTLINED_FUNCTION_3();
  if ((v9(v8) & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = v2[30];
  v11 = OUTLINED_FUNCTION_3();
  if (v12(v11))
  {
LABEL_6:
    v13 = 1;
    return v13 & 1;
  }

  v14 = v2[46];
  v15 = OUTLINED_FUNCTION_3();
  v17 = v16(v15);
  if (!v18)
  {
LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  if (v17 == 0xD000000000000012 && v18 == 0x8000000267F1C060)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_49_22();
  }

  return v13 & 1;
}

uint64_t sub_267E59A40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_61(a1, a2);
  if (v3())
  {
    v4 = v2[10];
    v5 = OUTLINED_FUNCTION_3();
    if (v6(v5))
    {
      return 1;
    }
  }

  v7 = OUTLINED_FUNCTION_3();
  if ((v3)(v7))
  {
    OUTLINED_FUNCTION_35_26();
    v8 = OUTLINED_FUNCTION_3();
    if (v9(v8))
    {
      v10 = v2[30];
      v11 = OUTLINED_FUNCTION_3();
      if (v12(v11))
      {
        return 1;
      }

      v13 = v2[47];
      v14 = OUTLINED_FUNCTION_3();
      v15(v14);
      if (v16)
      {

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_267E59B14(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 392))();
  v4 = *(a2 + 408);
  v5 = OUTLINED_FUNCTION_17_4();
  v7 = v6(v5);
  v8 = *(a2 + 56);
  v9 = OUTLINED_FUNCTION_17_4();
  if ((v10(v9) & 1) == 0)
  {
    v11 = *(a2 + 64);
    v12 = OUTLINED_FUNCTION_17_4();
    if ((v13(v12) & 1) == 0)
    {
      v14 = *(a2 + 184);
      v15 = OUTLINED_FUNCTION_17_4();
      if ((v16(v15) & 1) == 0)
      {
        v17 = *(a2 + 136);
        v18 = OUTLINED_FUNCTION_17_4();
        if ((v19(v18) & 1) == 0)
        {
          v20 = *(a2 + 192);
          v21 = OUTLINED_FUNCTION_17_4();
          if ((v22(v21) & 1) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  v23 = *(a2 + 296);
  v24 = OUTLINED_FUNCTION_17_4();
  if (v25(v24))
  {
    return 0;
  }

  if (v7 != 37)
  {
    sub_267D6C0D4(v7);
    if (v28 == 6645876 && v27 == 0xE300000000000000)
    {
      goto LABEL_25;
    }

    sub_267EF9EA8();
    OUTLINED_FUNCTION_51_17();
    if (a2)
    {
      goto LABEL_26;
    }

    sub_267D6C0D4(v7);
    if (v31 == 6647407 && v30 == 0xE300000000000000)
    {
      goto LABEL_25;
    }

    sub_267EF9EA8();
    OUTLINED_FUNCTION_51_17();
    if (a2)
    {
      goto LABEL_26;
    }

    sub_267D6C0D4(v7);
    if (v34 == 1936287860 && v33 == 0xE400000000000000)
    {
LABEL_25:
    }

    else
    {
      v36 = sub_267EF9EA8();

      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_26:
  if (v3 != 6)
  {
    sub_267D6CE3C(v3);
    if (v38 == 0x6567617373656DLL && v37 == 0xE700000000000000)
    {
LABEL_37:

      return 1;
    }

    v40 = sub_267EF9EA8();

    if ((v40 & 1) == 0)
    {
      sub_267D6CE3C(v3);
      if (v42 != 0x656D5F6F69647561 || v41 != 0xED00006567617373)
      {
        sub_267EF9EA8();
        OUTLINED_FUNCTION_20_19();
        return 1;
      }

      goto LABEL_37;
    }
  }

  return 1;
}

uint64_t sub_267E59DD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_46_20(a1, a2);
  v2();
  OUTLINED_FUNCTION_34_28();
  if (v5)
  {
    return 0;
  }

  sub_267BB9308(v3);
  OUTLINED_FUNCTION_37_21();
  if (v5)
  {
    v7 = v6 == 0xE600000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267E59E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_267E59EF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = sub_267EF2A58();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  sub_267EF2A48();
  sub_267BE28D0(v0, &selRef_firstNamePhonetic);
  sub_267EF2998();
  sub_267BE28D0(v0, &selRef_lastNamePhonetic);
  sub_267EF29B8();
  sub_267EF2A48();
  v16 = v9[2];
  v16(v7, v15, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_267EF2A08();
  sub_267BE28D0(v0, &selRef_firstName);
  sub_267EF2998();
  sub_267BE28D0(v0, &selRef_lastName);
  sub_267EF29B8();
  v17 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v33 = sub_267E7605C(0, 0, 0);
  v16(v5, v13, v8);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v18 = sub_267BE28D0(v0, &selRef_fullName);
  v31 = v19;
  v32 = v18;
  v20 = sub_267BE28D0(v0, &selRef_internalGUID);
  v22 = v21;
  v23 = [v0 me];
  sub_267E5A3C8();
  v24 = sub_267EF97F8();
  if (v23)
  {
    v25 = sub_267EF9818();

    v24 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_allocWithZone(MEMORY[0x277CD3E90]);
  v27 = sub_267E5A238(v33, v5, v32, v31, 0, v20, v22, 0, 0, v25 & 1);
  v28 = v9[1];
  v28(v13, v8);
  v28(v15, v8);
  return v27;
}

id sub_267E5A238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = v10;
  v17 = sub_267EF2A58();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v17) != 1)
  {
    v18 = sub_267EF29E8();
    (*(*(v17 - 8) + 8))(a2, v17);
  }

  if (a4)
  {
    v19 = sub_267EF8FF8();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = sub_267EF8FF8();
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = sub_267EF8FF8();
  }

  else
  {
    v21 = 0;
  }

  LOBYTE(v24) = a10 & 1;
  v22 = [v11 initWithPersonHandle:a1 nameComponents:v18 displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 isMe:v24];

  return v22;
}

unint64_t sub_267E5A3C8()
{
  result = qword_280229538;
  if (!qword_280229538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229538);
  }

  return result;
}

uint64_t sub_267E5A40C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F8, &qword_267F068F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_267EF80E8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CA48, &qword_267F0C8C8);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_267EF80E8();

  sub_267EF80F8();

  return v6;
}

uint64_t sub_267E5A528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v3 = sub_267EF3868();
  v4 = OUTLINED_FUNCTION_58(v3);
  v171 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v170 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v11 = OUTLINED_FUNCTION_18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v168 = &v166 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_60();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v176 = (&v166 - v23);
  v24 = sub_267EF4C08();
  v25 = OUTLINED_FUNCTION_58(v24);
  v178 = v26;
  v179 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v173 = v29 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  v175 = &v166 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v166 - v34;
  v36 = sub_267EF4BE8();
  v37 = OUTLINED_FUNCTION_58(v36);
  v181 = v38;
  v182 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_60();
  v174 = v41 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v166 - v44;
  v46 = sub_267EF4BA8();
  v47 = OUTLINED_FUNCTION_58(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0_0();
  v54 = v53 - v52;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v177 = v45;
  v55 = sub_267EF8A08();
  v56 = __swift_project_value_buffer(v55, qword_280240FB0);
  OUTLINED_FUNCTION_72_14();
  v180 = a1;
  v57(v54, a1, v46);
  v184 = v56;
  v58 = sub_267EF89F8();
  v59 = sub_267EF95C8();
  v60 = os_log_type_enabled(v58, v59);
  v172 = v3;
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_48();
    v167 = v21;
    v62 = v61;
    v187[0] = swift_slowAlloc();
    *v62 = 136315138;
    sub_267BC4228(&qword_28022AF50, MEMORY[0x277D5C118]);
    v63 = sub_267EF9E58();
    v65 = v64;
    (*(v49 + 8))(v54, v46);
    v66 = sub_267BA33E8(v63, v65, v187);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_267B93000, v58, v59, "#EditMessageConfirmIntentFlowStrategy received input: %s", v62, 0xCu);
    OUTLINED_FUNCTION_11_42();
    v21 = v167;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v49 + 8))(v54, v46);
  }

  sub_267EF4B88();
  v68 = v178;
  v67 = v179;
  v69 = *(v178 + 88);
  v70 = v69(v35, v179);
  v71 = v181;
  v72 = v182;
  if (v70 == *MEMORY[0x277D5C150])
  {
    (*(v68 + 96))(v35, v67);
    v73 = v177;
    (*(v71 + 32))(v177, v35, v72);
    v74 = sub_267EF89F8();
    v75 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v75))
    {
      v76 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v76);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v77, v78, "#EditMessageConfirmIntentFlowStrategy received directInvocation");
      OUTLINED_FUNCTION_26();
    }

    v79 = v176;
    sub_267B9CC04(v73, v176);
    v80 = type metadata accessor for DirectInvocationUseCases();
    if (__swift_getEnumTagSinglePayload(v79, 1, v80) == 1)
    {
      goto LABEL_10;
    }

    sub_267B9A598(v79, v21, &unk_28022BBE0, qword_267EFD030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 11) < 2)
    {
      OUTLINED_FUNCTION_35_27();
      sub_267B9F98C(v79, &unk_28022BBE0, qword_267EFD030);
      sub_267EF3E68();
      return (*(v71 + 8))(v73, v72);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v118 = sub_267EF8228();
      OUTLINED_FUNCTION_58(v118);
      v120 = v119;
      v122 = (*(v121 + 88))(v21, v118);
      if (v122 == *MEMORY[0x277D5D4E8])
      {
        v123 = *MEMORY[0x277D5BED8];
        v124 = sub_267EF44F8();
        OUTLINED_FUNCTION_22(v124);
        v126 = *(v125 + 104);
        v127 = OUTLINED_FUNCTION_58_16();
        v128(v127);
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v129, v130, v131, v124);
        v132 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse;
        v133 = v169;
        swift_beginAccess();
        sub_267C26980(v67, v133 + v132, &qword_280229310, &unk_267EFCF70);
        swift_endAccess();
        sub_267EF3E58();
LABEL_45:
        (*(v71 + 8))(v73, v72);
        return sub_267B9F98C(v79, &unk_28022BBE0, qword_267EFD030);
      }

      if (v122 == *MEMORY[0x277D5D4D8])
      {
        v156 = sub_267EF89F8();
        v157 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v157))
        {
          v158 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v158);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v159, v160, "#EditMessageConfirmIntentFlowStrategy prompt is cancelled by button press");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E48();
        goto LABEL_45;
      }

      (*(v120 + 8))(v21, v118);
    }

    else
    {
      OUTLINED_FUNCTION_35_27();
    }

LABEL_10:
    OUTLINED_FUNCTION_72_14();
    v81 = v174;
    v82(v174, v73, v72);
    v83 = sub_267EF89F8();
    v84 = sub_267EF95D8();
    if (os_log_type_enabled(v83, v84))
    {
      OUTLINED_FUNCTION_48();
      v187[0] = OUTLINED_FUNCTION_64_2();
      *v67 = 136315138;
      v85 = sub_267EF4BC8();
      v87 = v86;
      v88 = *(v71 + 8);
      v88(v81, v72);
      v89 = sub_267BA33E8(v85, v87, v187);
      v79 = v176;

      *(v67 + 4) = v89;
      _os_log_impl(&dword_267B93000, v83, v84, "#EditMessageConfirmIntentFlowStrategy ignoring direct invocation: %s", v67, 0xCu);
      OUTLINED_FUNCTION_11_42();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v88 = *(v71 + 8);
      v88(v81, v72);
    }

    sub_267EF3E68();
    v88(v177, v72);
    return sub_267B9F98C(v79, &unk_28022BBE0, qword_267EFD030);
  }

  v90 = v67;
  v91 = *(v68 + 8);
  v91(v35, v90);
  v92 = v175;
  sub_267EF4B88();
  v93 = v69(v92, v90);
  v94 = *MEMORY[0x277D5C168];
  v91(v92, v90);
  if (v93 == v94)
  {
    v95 = sub_267EF89F8();
    v96 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v96))
    {
      v97 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v97);
      v100 = "#EditMessageConfirmIntentFlowStrategy empty input";
LABEL_30:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v98, v99, v100);
      OUTLINED_FUNCTION_26();
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v103 = v173;
  sub_267EF4B88();
  v104 = sub_267E57DFC(v103, &v185);
  (v91)(v103, v90, v104);
  if (!v186)
  {
    sub_267B9F98C(&v185, &unk_28022BBF0, &unk_267F01C60);
    v95 = sub_267EF89F8();
    v134 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v134))
    {
      v135 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v135);
      v100 = "#EditMessageConfirmIntentFlowStrategy unsupported input";
      goto LABEL_30;
    }

LABEL_31:

    return sub_267EF3E68();
  }

  sub_267B9A5E8(&v185, v187);
  v105 = v189;
  __swift_project_boxed_opaque_existential_0(v187, v188);
  v106 = *(v105 + 320);
  v107 = v170;
  v108 = OUTLINED_FUNCTION_38_0();
  v109(v108);
  v110 = v171;
  v111 = v172;
  v112 = (*(v171 + 88))(v107, v172);
  if (v112 == *MEMORY[0x277D5B970])
  {
    v113 = sub_267EF89F8();
    v114 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v114))
    {
      v115 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v115);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v116, v117, "#EditMessageConfirmIntentFlowStrategy request is cancelled");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
  }

  else
  {
    if (v112 == *MEMORY[0x277D5B978])
    {
      v136 = MEMORY[0x277D5BED8];
    }

    else
    {
      if (v112 != *MEMORY[0x277D5B968])
      {
        v161 = sub_267EF89F8();
        v162 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v162))
        {
          v163 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v163);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v164, v165, "#EditMessageConfirmIntentFlowStrategy no valid confirmation in the intent, ignoring");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E68();
        (*(v110 + 8))(v107, v111);
        return __swift_destroy_boxed_opaque_existential_0(v187);
      }

      v105 = v189;
      __swift_project_boxed_opaque_existential_0(v187, v188);
      v148 = *(v105 + 288);
      v149 = OUTLINED_FUNCTION_38_0();
      if (v150(v149))
      {
        v151 = sub_267EF89F8();
        v152 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v152))
        {
          v153 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v153);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v154, v155, "#EditMessageConfirmIntentFlowStrategy 'no' with fresh verb, ignoring");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E68();
        return __swift_destroy_boxed_opaque_existential_0(v187);
      }

      v136 = MEMORY[0x277D5BED0];
    }

    v137 = *v136;
    v138 = sub_267EF44F8();
    OUTLINED_FUNCTION_22(v138);
    v140 = *(v139 + 104);
    v141 = OUTLINED_FUNCTION_58_16();
    v142(v141);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v143, v144, v145, v138);
    v146 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse;
    v147 = v169;
    swift_beginAccess();
    sub_267C26980(v105, v147 + v146, &qword_280229310, &unk_267EFCF70);
    swift_endAccess();
    sub_267EF3E58();
  }

  return __swift_destroy_boxed_opaque_existential_0(v187);
}

uint64_t sub_267E5B1CC()
{
  OUTLINED_FUNCTION_12();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[8] = v4;
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = sub_267EF44F8();
  v1[11] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E5B2B8()
{
  v48 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267B9A598(v3 + v4, v1, &qword_280229310, &unk_267EFCF70);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_267B9F98C(v0[10], &qword_280229310, &unk_267EFCF70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_26();
    }

    v14 = v0[13];
    v16 = v0[9];
    v15 = v0[10];

    sub_267C4BE60();
    swift_allocError();
    *v17 = 0;
    v17[1] = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = v0[7];
    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);

    v21 = sub_267EF89F8();
    v22 = sub_267EF95D8();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[8];
      v23 = v0[9];
      OUTLINED_FUNCTION_48();
      v25 = OUTLINED_FUNCTION_64_2();
      v47 = v25;
      *v19 = 136315138;
      sub_267B9A598(v3 + v4, v23, &qword_280229310, &unk_267EFCF70);
      v26 = sub_267EF9098();
      v28 = sub_267BA33E8(v26, v27, &v47);

      *(v19 + 4) = v28;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v35 = v0[12];
    v34 = v0[13];
    v36 = v0[10];
    v37 = v0[11];
    v38 = v0[9];
    v40 = v0[5];
    v39 = v0[6];
    OUTLINED_FUNCTION_72_14();
    v41 = OUTLINED_FUNCTION_290();
    v42(v41);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
    sub_267EF4668();
    sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
    sub_267EF4468();
    (*(v35 + 8))(v34, v37);

    OUTLINED_FUNCTION_1();
  }

  return v18();
}

uint64_t sub_267E5B634(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E5B660()
{
  OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags), *(v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags + 24));
  if ((sub_267CC8B28() & 1) == 0)
  {
    goto LABEL_6;
  }

  v1 = v0[9];
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_129(v1 + 2);
  v4 = OUTLINED_FUNCTION_38_0();
  v5(v4);
  v7 = v0[5];
  v6 = v0[6];
  OUTLINED_FUNCTION_131(v0 + 2);
  LOBYTE(v7) = sub_267BF30D0();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v7)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[10] = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_60_0(v8);

    return sub_267E5B7BC();
  }

  else
  {
LABEL_6:
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[11] = v11;
    *v11 = v12;
    OUTLINED_FUNCTION_60_0(v11);

    return sub_267E5CAB0();
  }
}

uint64_t sub_267E5B7BC()
{
  OUTLINED_FUNCTION_12();
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v1[29] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[30] = v5;
  v1[31] = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF48A8();
  v1[33] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[34] = v8;
  v10 = *(v9 + 64);
  v1[35] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[36] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  OUTLINED_FUNCTION_18(v14);
  v16 = *(v15 + 64);
  v1[37] = OUTLINED_FUNCTION_2();
  v17 = sub_267EF84F8();
  v1[38] = v17;
  OUTLINED_FUNCTION_30_0(v17);
  v1[39] = v18;
  v20 = *(v19 + 64);
  v1[40] = OUTLINED_FUNCTION_2();
  v21 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  v1[41] = OUTLINED_FUNCTION_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_267E5B9C8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  *(v0 + 352) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = *(v0 + 224);

  v11 = v10 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext;
  v12 = type metadata accessor for TimedSentMessageContext(0);
  v13 = *(v11 + *(v12 + 28));
  v14 = sub_267EF97C8();
  *(v0 + 360) = v14;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_267ECE290();
  sub_267B9F98C(v0 + 176, &qword_28022AEF0, &qword_267EFCDE0);
  v15 = [v14 speakableGroupName];
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 344);
    v18 = [v15 spokenPhrase];

    sub_267EF9028();
    sub_267EF90F8();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 224);
  v47 = *(v0 + 216);
  v48 = *(v0 + 232);
  v23 = sub_267EF79B8();
  v24 = 1;
  __swift_storeEnumTagSinglePayload(v20, v19, 1, v23);
  *(v0 + 368) = *(v11 + *(v12 + 36));
  v26 = v22[5];
  v25 = v22[6];
  __swift_project_boxed_opaque_existential_0(v22 + 2, v26);
  OUTLINED_FUNCTION_14_4();
  v27(v26, v25);
  v28 = OUTLINED_FUNCTION_26_0();
  sub_267ED9AEC(v28, v29, v30, v31, v32, v33, v34, v35, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v0);
  *(v0 + 376) = v36;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  type metadata accessor for EditMessageCATsSimple();
  sub_267EF7B68();
  *(v0 + 384) = sub_267EF79E8();
  v37 = sub_267EF4668();
  sub_267E97F78(v37);
  if (v38)
  {
    v39 = *(v0 + 336);
    sub_267EF90F8();

    v24 = 0;
  }

  v40 = *(v0 + 224);
  __swift_storeEnumTagSinglePayload(*(v0 + 336), v24, 1, v23);
  v41 = *(*(v40 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_editMessageState) + 18);
  v42 = swift_task_alloc();
  *(v0 + 392) = v42;
  *v42 = v0;
  v42[1] = sub_267E5BCE8;
  v43 = *(v0 + 336);
  v44 = *(v0 + 344);

  return sub_267E569A4();
}

uint64_t sub_267E5BCE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[49];
  v6 = v4[48];
  v7 = v4[47];
  v8 = v4[42];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v12 + 400) = v11;
  *(v12 + 408) = v0;

  sub_267B9F98C(v8, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267E5BE54()
{
  v1 = v0[45];
  v2 = v0[28];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_290();
  v6(v5);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider), *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v7 = [v1 speakableGroupName];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 spokenPhrase];
    v56 = sub_267EF9028();
    v58 = v10;
  }

  else
  {
    v11 = v0[45];
    v12 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_10_3();
    v13 = sub_267EF3C48();
    v14 = sub_267BCEA0C(v11);
    if (v13)
    {
      v15 = sub_267DA2578(v14);
    }

    else
    {
      v17 = v0[46];
      sub_267DA2180();
    }

    v56 = v15;
    v58 = v16;
  }

  v55 = v0[50];
  v18 = v0[45];
  v50 = v0[38];
  v51 = v0[39];
  v45 = v0[37];
  v46 = v0[36];
  v48 = v0[40];
  v49 = v0[35];
  v53 = v0[32];
  v54 = v0[31];
  v19 = v0[30];
  v57 = v0[29];
  v20 = v0[28];
  v47 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v22 = v20[5];
  v21 = v20[6];
  __swift_project_boxed_opaque_existential_0(v20 + 2, v22);
  v23 = *(v21 + 8);
  v52 = v18;

  v23(v22, v21);
  v25 = v0[15];
  v24 = v0[16];
  OUTLINED_FUNCTION_131(v0 + 12);
  sub_267BCD18C();
  v26 = sub_267EF4668();
  sub_267E97F78(v26);
  v27 = sub_267EF81F8();
  OUTLINED_FUNCTION_79_5(v45, v28, v29, v27);
  v30 = sub_267EF82A8();
  OUTLINED_FUNCTION_79_5(v46, v31, v32, v30);
  sub_267EF84E8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_267E5FAF8();
  v0[20] = v50;
  v0[21] = sub_267BC4228(&unk_28022BB30, MEMORY[0x277D5D8A8]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  (*(v51 + 16))(boxed_opaque_existential_0, v48, v50);
  OUTLINED_FUNCTION_72_14();
  v34(v53, v47, v57);
  v35 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v36 = swift_allocObject();
  v0[52] = v36;
  *(v36 + 2) = v52;
  *(v36 + 3) = v56;
  *(v36 + 4) = v58;
  *(v36 + 5) = v20;
  (*(v19 + 32))(&v36[v35], v53, v57);
  v37 = v52;
  v38 = v55;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[53] = v39;
  *v39 = v40;
  v39[1] = sub_267E5C28C;
  v41 = v0[35];
  v42 = v0[28];
  v43 = v0[26];

  return (sub_267ECC1D0)(v43, v55, v41, v0 + 17, &unk_267F0CAB8, v36);
}

uint64_t sub_267E5C28C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 432) = v0;

  if (v0)
  {
    v9 = *(v3 + 416);
    v10 = *(v3 + 400);
  }

  else
  {
    v11 = *(v3 + 416);

    sub_267B9F98C(v3 + 136, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E5C3C4()
{
  v1 = v0[44];
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#EditMessageConfirmIntentFlowStrategy returning SMART output", v4, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v5 = v0[50];
  v6 = v0[45];
  v7 = v0[43];
  v8 = v0[40];
  v16 = v0[42];
  v17 = v0[41];
  v9 = v0[39];
  v15 = v0[38];
  v18 = v0[37];
  v19 = v0[36];
  v10 = v0[34];
  v11 = v0[35];
  v12 = v0[33];
  v20 = v0[32];

  (*(v10 + 8))(v11, v12);
  (*(v9 + 8))(v8, v15);
  sub_267B9F98C(v7, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();

  return v13();
}

uint64_t sub_267E5C558()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 344);

  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
  v2 = *(v0 + 408);
  OUTLINED_FUNCTION_65_14();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E5C624()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 264);

  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_26_0();
  v11(v10);
  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  sub_267B9F98C(v0 + 136, &qword_280229330, &qword_267F092F0);
  v12 = *(v0 + 432);
  OUTLINED_FUNCTION_65_14();

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267E5C74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E5C828, 0, 0);
}

uint64_t sub_267E5C828()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v25 = v0[9];
  v5 = v0[7];
  v23 = v0[10];
  v24 = v0[8];
  v6 = sub_267EF8178();
  v5[3] = v6;
  v5[4] = sub_267BC4228(qword_280229338, MEMORY[0x277D5D3A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v7);
  OUTLINED_FUNCTION_14_4();
  v9(v7, v8);
  v10 = v0[5];
  v11 = v0[6];
  OUTLINED_FUNCTION_131(v0 + 2);
  sub_267BCD18C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v12 = sub_267EF4668();
  sub_267E97F78(v12);
  sub_267EF8308();
  sub_267EF82F8();
  sub_267EF4648();
  sub_267EF7C18();

  sub_267EF82E8();

  v13 = sub_267EF81F8();
  OUTLINED_FUNCTION_79_5(v2, v14, v15, v13);
  v16 = sub_267EF82A8();
  OUTLINED_FUNCTION_79_5(v1, v17, v18, v16);

  v19 = v24;
  sub_267EF84C8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D370], v6);

  OUTLINED_FUNCTION_17();

  return v20();
}

uint64_t sub_267E5CAB0()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_267EF48A8();
  v1[25] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[26] = v5;
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  v1[28] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[29] = OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267E5CE80()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = v4[33];
  v6 = v4[32];
  v7 = v4[30];
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v11 + 272) = v10;
  *(v11 + 280) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E5CFC0()
{
  OUTLINED_FUNCTION_29();
  v35 = v1;
  v2 = *(v1 + 248);
  v3 = *(v1 + 272);
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v5))
  {
    v6 = *(v1 + 272);
    OUTLINED_FUNCTION_48();
    v34 = OUTLINED_FUNCTION_64_2();
    *v0 = 136315138;
    v7 = [v6 patternId];
    v8 = sub_267EF9028();
    v10 = v9;

    v11 = sub_267BA33E8(v8, v10, &v34);

    *(v0 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_26();
  }

  v17 = *(v1 + 216);
  v19 = *(v1 + 184);
  v18 = *(v1 + 192);
  v20 = sub_267EF4198();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v1 + 288) = sub_267EF4188();
  OUTLINED_FUNCTION_74_12();
  sub_267E5FAF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v23 = sub_267EF4648();
  *(v1 + 296) = v23;
  v24 = v18[6];
  __swift_project_boxed_opaque_existential_0(v18 + 2, v18[5]);
  v25 = OUTLINED_FUNCTION_9_50();
  v26(v25);
  v27 = *(v1 + 168);
  __swift_project_boxed_opaque_existential_0((v1 + 136), *(v1 + 160));
  OUTLINED_FUNCTION_10_3();
  v28 = sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 304) = v29;
  *v29 = v30;
  v29[1] = sub_267E5D264;
  v31 = *(v1 + 272);
  v32 = *(v1 + 216);

  return sub_267BCF3A4(v1 + 96, v31, v32, v23, v28 & 1);
}

uint64_t sub_267E5D1C8()
{
  OUTLINED_FUNCTION_56();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[35];
  v2 = v0[28];
  v3 = v0[27];
  sub_267B9F98C(v0[29], &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E5D264()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = v5[38];
  v7 = v5[37];
  v8 = v5[36];
  v9 = v5[34];
  v10 = v5[27];
  v11 = v5[26];
  v12 = v5[25];
  v13 = *v1;
  OUTLINED_FUNCTION_5();
  *v14 = v13;
  *(v3 + 312) = v0;

  (*(v11 + 8))(v10, v12);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267E5D434()
{
  v1 = *(v0 + 248);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  v13 = *(v0 + 176);

  sub_267B9A5E8((v0 + 96), v13);
  sub_267B9F98C(v10, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();

  return v14();
}

uint64_t sub_267E5D52C()
{
  OUTLINED_FUNCTION_56();

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1 = *(v0 + 312);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  sub_267B9F98C(*(v0 + 232), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267E5D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[60] = a1;
  v4[61] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0) - 8) + 64) + 15;
  v4[64] = swift_task_alloc();
  v6 = sub_267EF8488();
  v4[65] = v6;
  v7 = *(v6 - 8);
  v4[66] = v7;
  v8 = *(v7 + 64) + 15;
  v4[67] = swift_task_alloc();
  v9 = sub_267EF8228();
  v4[68] = v9;
  v10 = *(v9 - 8);
  v4[69] = v10;
  v11 = *(v10 + 64) + 15;
  v4[70] = swift_task_alloc();
  v12 = sub_267EF8248();
  v4[71] = v12;
  v13 = *(v12 - 8);
  v4[72] = v13;
  v14 = *(v13 + 64) + 15;
  v4[73] = swift_task_alloc();
  v15 = sub_267EF8368();
  v4[74] = v15;
  v16 = *(v15 - 8);
  v4[75] = v16;
  v17 = *(v16 + 64) + 15;
  v4[76] = swift_task_alloc();
  v18 = sub_267EF81B8();
  v4[77] = v18;
  v19 = *(v18 - 8);
  v4[78] = v19;
  v20 = *(v19 + 64) + 15;
  v4[79] = swift_task_alloc();
  v21 = sub_267EF81D8();
  v4[80] = v21;
  v22 = *(v21 - 8);
  v4[81] = v22;
  v23 = *(v22 + 64) + 15;
  v4[82] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v4[83] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v4[84] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90) - 8) + 64) + 15;
  v4[85] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E5D9B0, 0, 0);
}

void sub_267E5D9B0()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v4 = type metadata accessor for EditMessageConfirmEditParameters(0);
  *(v0 + 768) = v4;
  sub_267BE855C(v2, v3 + *(v4 + 52));
  v5 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext;
  v6 = type metadata accessor for TimedSentMessageContext(0);
  v7 = *(v5 + *(v6 + 28));
  *(v0 + 776) = v7;
  sub_267D29870();
  if (v8)
  {
    v9 = *(v0 + 760);
    sub_267EF90F8();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(v0 + 760);
  v13 = *(v0 + 496);
  v12 = *(v0 + 504);
  v14 = *(v0 + 480);
  v98 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v11, v10, 1, v98);
  v99 = v4;
  v15 = *(v4 + 28);
  *(v0 + 888) = v15;
  sub_267C26980(v11, v14 + v15, &unk_28022AE30, &qword_267EFC0B0);
  sub_267EF7958();
  *(v0 + 784) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v16 = sub_267EF4648();
  v17 = sub_267E80518(v16);
  v18 = *v14;

  *v14 = v17;
  v19 = v13[5];
  v20 = v13[6];
  OUTLINED_FUNCTION_80_12();
  OUTLINED_FUNCTION_14_4();
  v21(v19, v20);
  v22 = *(v5 + *(v6 + 36));
  v23 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider;
  *(v0 + 792) = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider;
  v97 = v13;
  __swift_project_boxed_opaque_existential_0((v13 + v23), *(v13 + v23 + 24));
  sub_267BB4A3C();
  v24 = [v7 speakableGroupName];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 spokenPhrase];
    v27 = sub_267EF9028();
    v29 = v28;
  }

  else
  {
    v30 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v31 = sub_267EF3C48();
    v32 = sub_267BCEA0C(v7);
    if (v31)
    {
      v33 = sub_267DA2578(v32);
    }

    else
    {
      sub_267DA2180();
    }

    v27 = v33;
    v29 = v34;
  }

  v35 = *(v0 + 752);
  v36 = *(v0 + 744);
  v37 = *(v0 + 504);
  v38 = *(v0 + 480);
  *(v0 + 800) = v29;
  *(v0 + 808) = v27;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_63();
  sub_267EF90F8();
  *(v0 + 816) = v98;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v98);
  sub_267C26980(v35, v38 + *(v99 + 44), &unk_28022AE30, &qword_267EFC0B0);
  sub_267EF4648();
  v42 = sub_267EF7C18();
  v44 = v43;

  if (v44)
  {
    v45 = v42;
  }

  else
  {
    v45 = 0;
  }

  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0xE000000000000000;
  }

  v47 = sub_267DA133C(v7, v45, v46);

  *(v0 + 456) = v47;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  sub_267EF8348();
  *(v0 + 824) = 0;
  v53 = *(v0 + 744);
  v54 = *(v0 + 480);

  v55 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v98);
  sub_267C26980(v53, v54 + *(v99 + 68), &unk_28022AE30, &qword_267EFC0B0);
  v58 = sub_267E76140(v7);
  *(v0 + 832) = v58;
  if (v58)
  {
    v59 = v97[5];
    v60 = v97[6];
    OUTLINED_FUNCTION_129(v97 + 2);
    v61 = OUTLINED_FUNCTION_38_0();
    v62(v61);
    *(v0 + 840) = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v63 = OUTLINED_FUNCTION_47_18(&dword_267F0DF30);
    *(v0 + 848) = v63;
    *v63 = v0;
    v63[1] = sub_267E5E68C;
    OUTLINED_FUNCTION_538();

    __asm { BR              X0 }
  }

  v66 = *(v0 + 816);
  v67 = *(v0 + 784);
  v68 = *(v0 + 768);
  v69 = *(v0 + 752);
  v71 = *(v0 + 496);
  v70 = *(v0 + 504);
  v72 = *(v0 + 480);
  v73 = sub_267EF4668();
  sub_267E97F78(v73);
  OUTLINED_FUNCTION_26_0();
  sub_267EF90F8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v66);
  sub_267C26980(v69, v72 + *(v68 + 60), &unk_28022AE30, &qword_267EFC0B0);
  v77 = v71[6];
  __swift_project_boxed_opaque_existential_0(v71 + 2, v71[5]);
  v78 = *(v77 + 8);
  v79 = OUTLINED_FUNCTION_10_3();
  v80(v79);
  v81 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_3();
  LOBYTE(v70) = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (v70)
  {
    v82 = *(v0 + 728);
    v83 = *(v0 + 656);
    v84 = *(v0 + 640);
    v85 = *(v0 + 632);
    v86 = *(v0 + 624);
    v87 = *(v0 + 616);

    (*(v86 + 104))(v85, *MEMORY[0x277D5D410], v87);
    OUTLINED_FUNCTION_26_0();
    sub_267EF81C8();
    OUTLINED_FUNCTION_143();
    v88 = *(v0 + 800);
    v89 = *(v0 + 656);
    v90 = *(v0 + 648);
    v91 = *(v0 + 640);
  }

  else
  {
    v92 = *(v0 + 832);
    v93 = *(v0 + 720);
    v94 = *(v0 + 608);
    v95 = *(v0 + 592);
    OUTLINED_FUNCTION_26_0();
    sub_267EF8358();
    OUTLINED_FUNCTION_143();
    v96 = *(v0 + 800);
    v89 = *(v0 + 608);
    v90 = *(v0 + 600);
    v91 = *(v0 + 592);
  }

  (*(v90 + 8))(v89, v91);
  OUTLINED_FUNCTION_56_19();
  v48 = *(v0 + 736);
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_34_29();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_538();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E5E68C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 848);
  *v2 = *v0;
  *(v1 + 856) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void *sub_267E5E778()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 832);
  sub_267EF8458();

  if (*(v0 + 400))
  {
    v3 = *(v0 + 856);
    v4 = *(v0 + 680);
    sub_267B9A5E8((v0 + 376), v0 + 336);
    sub_267B9AFEC(v0 + 336, v0 + 416);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  }

  else
  {
    v5 = *(v0 + 680);

    sub_267B9F98C(v0 + 376, &qword_28022BB10, &qword_267EFDCF0);
    v6 = sub_267EF8338();
    OUTLINED_FUNCTION_79_5(v5, v7, v8, v6);
  }

  v9 = *(v0 + 680);
  v10 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  v12 = *(v0 + 840);
  if (EnumTagSinglePayload == 1)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    sub_267B9F98C(v9, &unk_28022BB00, &unk_267EFCF90);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
LABEL_9:
    v26 = *(v0 + 800);

    sub_267B9F98C(v0 + 256, &qword_28022BB10, &qword_267EFDCF0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_267EF8A08();
    __swift_project_value_buffer(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v29))
    {
      v30 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v30);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v36 = 0xD00000000000002FLL;
    v36[1] = 0x8000000267F19C10;
    swift_willThrow();
    goto LABEL_14;
  }

  sub_267EF8318();

  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  (*(*(v10 - 8) + 8))(v9, v10);
  if (!*(v0 + 280))
  {
    goto LABEL_9;
  }

  v13 = *(v0 + 824);
  v14 = *(v0 + 816);
  v15 = *(v0 + 888);
  v16 = *(v0 + 752);
  v17 = *(v0 + 736);
  v18 = *(v0 + 480);
  sub_267B9A5E8((v0 + 256), v0 + 216);
  __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  swift_getDynamicType();
  v19 = *(*(v0 + 248) + 8);
  sub_267EF83B8();
  sub_267EF90F8();

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v14);
  sub_267C26980(v16, v18 + v15, &unk_28022AE30, &qword_267EFC0B0);
  v23 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v24 = *(*(v23 + 8) + 8);
  sub_267EF8348();
  if (v13)
  {
    v25 = *(v0 + 800);

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
LABEL_14:
    OUTLINED_FUNCTION_56_19();
    v37 = *(v0 + 736);
    v38 = *(v0 + 728);
    v39 = *(v0 + 720);
    OUTLINED_FUNCTION_10_44();
    OUTLINED_FUNCTION_34_29();

    OUTLINED_FUNCTION_17();
    goto LABEL_15;
  }

  v42 = *(v0 + 816);
  v43 = *(v0 + 768);
  v44 = *(v0 + 736);
  v45 = *(v0 + 672);
  v46 = *(v0 + 664);
  v47 = *(v0 + 480);
  v48 = (*(v0 + 496) + *(v0 + 792));
  v49 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  sub_267C26980(v44, v47 + *(v43 + 24), &unk_28022AE30, &qword_267EFC0B0);
  __swift_project_boxed_opaque_existential_0(v48, v48[3]);
  sub_267BB4A3C();
  sub_267C7FEC8();

  v170 = sub_267EFA028();
  sub_267B9F98C(v45, &qword_2802295B8, &qword_267EFDCB0);
  v53 = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v54 = *(v0 + 816);
  v55 = *(v0 + 784);
  v56 = *(v0 + 768);
  v57 = *(v0 + 752);
  v59 = *(v0 + 496);
  v58 = *(v0 + 504);
  v60 = *(v0 + 480);
  v61 = sub_267EF4668();
  sub_267E97F78(v61);
  if (v62)
  {
    v53 = v62;
  }

  OUTLINED_FUNCTION_63();
  sub_267EF90F8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v54);
  sub_267C26980(v57, v60 + *(v56 + 60), &unk_28022AE30, &qword_267EFC0B0);
  v66 = v59[5];
  v67 = v59[6];
  __swift_project_boxed_opaque_existential_0(v59 + 2, v66);
  (*(v67 + 8))(v66, v67);
  v68 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  v69 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (v69)
  {
    v70 = *(v0 + 728);
    v71 = *(v0 + 656);
    v72 = *(v0 + 640);
    v73 = *(v0 + 632);
    v74 = *(v0 + 624);
    v75 = *(v0 + 616);

    v76 = *(v74 + 104);
    v60 = v74 + 104;
    v76(v73, *MEMORY[0x277D5D410], v75);
    OUTLINED_FUNCTION_63();
    sub_267EF81C8();
    OUTLINED_FUNCTION_78_16();
    if (v71)
    {
      v77 = *(v0 + 800);
      v78 = *(v0 + 656);
      v79 = *(v0 + 648);
      v80 = *(v0 + 640);
LABEL_25:

      (*(v79 + 8))(v78, v80);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_63_13();
  }

  else
  {
    v81 = *(v0 + 832);
    v70 = *(v0 + 720);
    v82 = *(v0 + 608);
    v83 = *(v0 + 592);
    OUTLINED_FUNCTION_63();
    sub_267EF8358();
    OUTLINED_FUNCTION_78_16();
    if (v82)
    {
      v84 = *(v0 + 800);
      v78 = *(v0 + 608);
      v79 = *(v0 + 600);
      v80 = *(v0 + 592);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_62_13();
  }

  v86 = OUTLINED_FUNCTION_176(v85);
  v87(v86);
  v88 = *v70;
  *(v0 + 864) = 0;
  v89 = *(v0 + 816);
  v90 = *(v0 + 768);
  v91 = *(v0 + 496);
  v92 = *(v0 + 480);
  v93 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
  sub_267C26980(v88, v92 + *(v90 + v60), &unk_28022AE30, &qword_267EFC0B0);
  v97 = *(v91 + 40);
  v98 = *(v91 + 48);
  OUTLINED_FUNCTION_129((v91 + 16));
  v99 = OUTLINED_FUNCTION_38_0();
  v100(v99);
  v101 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v88) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if ((v88 & 1) == 0)
  {
    v116 = *(v0 + 800);

    goto LABEL_39;
  }

  v102 = *(v0 + 784);
  v103 = *(v0 + 776);
  v104 = *(v0 + 504);
  sub_267EF4648();
  v105 = sub_267BDAF74();
  OUTLINED_FUNCTION_76_13(v105);
  v106 = sub_267BCEA0C(v103);
  v107 = MEMORY[0x277D84F90];
  if (!v106)
  {
LABEL_41:
    *(v0 + 872) = v107;
    if (v92)
    {
      v141 = OUTLINED_FUNCTION_47_18(&dword_267F00478);
      *(v0 + 880) = v141;
      *v141 = v0;
      OUTLINED_FUNCTION_28_34(v141);
      OUTLINED_FUNCTION_538();

      __asm { BR              X2 }
    }

    OUTLINED_FUNCTION_39_23();
    sub_267EF7C18();
    OUTLINED_FUNCTION_67_13();
    OUTLINED_FUNCTION_18_23();
    sub_267EF8238();
    OUTLINED_FUNCTION_79_12();
    if (v103)
    {
      v144 = OUTLINED_FUNCTION_13_43();
LABEL_52:
      (*(v145 + 8))(v144);
      goto LABEL_14;
    }

    v146 = *(v0 + 816);
    v147 = *(v0 + 768);
    v148 = OUTLINED_FUNCTION_12_43();
    v149(v148);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v150, v151, v152, v146);
    sub_267C26980(v107, v91 + *(v147 + 40), &unk_28022AE30, &qword_267EFC0B0);
LABEL_39:
    v117 = *(v0 + 704);
    v118 = *(v0 + 560);
    v119 = *(v0 + 552);
    v120 = *(v0 + 544);
    v121 = *(v0 + 496);
    v171 = *(v119 + 104);
    v171(v118, *MEMORY[0x277D5D4E8], v120);
    v122 = v121[6];
    __swift_project_boxed_opaque_existential_0(v121 + 2, v121[5]);
    v123 = OUTLINED_FUNCTION_9_50();
    v124(v123);
    v125 = sub_267BEA714(v118, (v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v126 = *(v119 + 8);
    v126(v118, v120);
    *(v0 + 464) = v125;
    v127 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    sub_267EF8348();
    v128 = *(v0 + 816);
    v168 = *(v0 + 768);
    v129 = *(v0 + 704);
    v169 = *(v0 + 696);
    v130 = *(v0 + 560);
    v131 = *(v0 + 544);
    v132 = *(v0 + 496);
    v167 = *(v0 + 480);

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v128);
    sub_267C26980(v129, v167 + *(v168 + 48), &unk_28022AE30, &qword_267EFC0B0);
    v171(v130, *MEMORY[0x277D5D4D8], v131);
    v136 = *(v132 + 40);
    v137 = *(v132 + 48);
    OUTLINED_FUNCTION_80_12();
    v138 = OUTLINED_FUNCTION_42_22();
    v139(v138, v137);
    v140 = sub_267BEA714(v130, (v0 + 176));
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v126(v130, v131);
    *(v0 + 472) = v140;
    sub_267EF8348();
    OUTLINED_FUNCTION_26_33();
    v153 = 1;
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v132);
    sub_267C26980(v127, v137 + *(v131 + 36), &unk_28022AE30, &qword_267EFC0B0);
    sub_267EF4648();
    sub_267BE84FC();

    v157 = sub_267EF6FF8();
    v158 = sub_267EF6FC8();
    if (v158)
    {
      v157 = v158;
      v159 = *(v0 + 512);
      sub_267EF6FA8();

      OUTLINED_FUNCTION_74_12();
      sub_267EF8698();

      v153 = 0;
    }

    v160 = OUTLINED_FUNCTION_37_22();
    OUTLINED_FUNCTION_5_62(v160);
    OUTLINED_FUNCTION_143();
    if (!v153)
    {
      OUTLINED_FUNCTION_3_74();
      v162 = OUTLINED_FUNCTION_15_41();
      v163(v162);
      v164 = OUTLINED_FUNCTION_118();
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v137);
      sub_267C26980(v157, v140 + *(v131 + 32), &unk_28022AE30, &qword_267EFC0B0);

      OUTLINED_FUNCTION_1();
LABEL_15:
      OUTLINED_FUNCTION_538();

      __asm { BRAA            X1, X16 }
    }

    v161 = *(v0 + 536);
    OUTLINED_FUNCTION_52_16();
    goto LABEL_52;
  }

  v108 = v106;
  v109 = sub_267BAF0DC(v106);
  if (!v109)
  {

    goto LABEL_41;
  }

  result = OUTLINED_FUNCTION_51_18(v109);
  if ((v91 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_60_13();
    do
    {
      v111 = MEMORY[0x26D609870](v53, v108);
      sub_267BBD380(v111);
      v108 = v112;

      OUTLINED_FUNCTION_70_12();
      if (v114)
      {
        OUTLINED_FUNCTION_64_14(v113);
        v107 = v172;
      }

      OUTLINED_FUNCTION_50_16();
    }

    while (!v115);

    LOBYTE(v92) = v170;
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_267E5F3F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 880);
  *v2 = *v0;
  *(v1 + 893) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E5F4E4()
{
  v1 = *(v0 + 893);
  v2 = *(v0 + 872);
  v3 = *(v0 + 892);
  v83 = *(v0 + 864);
  v4 = *(v0 + 808);
  v5 = *(v0 + 800);
  v6 = *(v0 + 784);
  v7 = *(v0 + 584);
  v75 = *(v0 + 568);
  v79 = *(v0 + 712);
  v8 = *(v0 + 504);
  sub_267EF4648();
  sub_267EF7C18();
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_18_23();
  sub_267EF8238();
  sub_267EF8348();
  if (v83)
  {
    v9 = OUTLINED_FUNCTION_13_43();
LABEL_3:
    (*(v10 + 8))(v9);
    OUTLINED_FUNCTION_56_19();
    v40 = *(v0 + 736);
    v41 = *(v0 + 728);
    v42 = *(v0 + 720);
    OUTLINED_FUNCTION_10_44();
    v62 = *(v0 + 656);
    v64 = *(v0 + 632);
    v67 = *(v0 + 608);
    v70 = *(v0 + 584);
    v73 = *(v0 + 560);
    v77 = *(v0 + 536);
    v81 = *(v0 + 512);

    OUTLINED_FUNCTION_17();
    goto LABEL_5;
  }

  v11 = *(v0 + 816);
  v12 = *(v0 + 768);
  v13 = OUTLINED_FUNCTION_12_43();
  v14(v13);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  sub_267C26980(v2, v3 + *(v12 + 40), &unk_28022AE30, &qword_267EFC0B0);
  v18 = *(v0 + 704);
  v19 = *(v0 + 560);
  v20 = *(v0 + 552);
  v21 = *(v0 + 544);
  v22 = *(v0 + 496);
  v80 = *(v20 + 104);
  v80(v19, *MEMORY[0x277D5D4E8], v21);
  v23 = v22[5];
  v24 = v22[6];
  __swift_project_boxed_opaque_existential_0(v22 + 2, v23);
  (*(v24 + 8))(v23, v24);
  v25 = sub_267BEA714(v19, (v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v26 = *(v20 + 8);
  v26(v19, v21);
  *(v0 + 464) = v25;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v27 = *(v0 + 816);
  v69 = *(v0 + 768);
  v72 = v26;
  v28 = *(v0 + 704);
  v76 = *(v0 + 696);
  v29 = *(v0 + 560);
  v30 = *(v0 + 544);
  v31 = *(v0 + 496);
  v66 = *(v0 + 480);

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v27);
  sub_267C26980(v28, v66 + *(v69 + 48), &unk_28022AE30, &qword_267EFC0B0);
  v80(v29, *MEMORY[0x277D5D4D8], v30);
  v35 = *(v31 + 40);
  v36 = *(v31 + 48);
  OUTLINED_FUNCTION_80_12();
  v37 = OUTLINED_FUNCTION_42_22();
  v38(v37, v36);
  v39 = sub_267BEA714(v29, (v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v72(v29, v30);
  *(v0 + 472) = v39;
  sub_267EF8348();
  OUTLINED_FUNCTION_26_33();
  v45 = 1;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v31);
  sub_267C26980(v20 + 8, v36 + *(v29 + 36), &unk_28022AE30, &qword_267EFC0B0);
  sub_267EF4648();
  sub_267BE84FC();

  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    v49 = *(v0 + 512);
    sub_267EF6FA8();

    OUTLINED_FUNCTION_74_12();
    sub_267EF8698();

    v45 = 0;
  }

  v50 = OUTLINED_FUNCTION_37_22();
  OUTLINED_FUNCTION_5_62(v50);
  OUTLINED_FUNCTION_143();
  if (v45)
  {
    v51 = *(v0 + 536);
    OUTLINED_FUNCTION_52_16();
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_3_74();
  v59 = *(v0 + 712);
  v60 = *(v0 + 704);
  v52 = *(v0 + 688);
  v61 = *(v0 + 696);
  v63 = *(v0 + 680);
  v65 = *(v0 + 672);
  v68 = *(v0 + 656);
  v71 = *(v0 + 632);
  v74 = *(v0 + 608);
  v78 = *(v0 + 584);
  v82 = *(v0 + 560);
  v53 = *(v0 + 536);
  OUTLINED_FUNCTION_52_16();
  v84 = *(v0 + 512);
  v54 = *(v0 + 480);
  (*(v55 + 8))(v53);
  v56 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v36);
  sub_267C26980(v52, v54 + *(v29 + 32), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();
LABEL_5:

  return v43();
}

uint64_t sub_267E5FAF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - v5;
  v7 = sub_267EF3CF8();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3C98();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267E5FC7C(v6);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_267EF4818();
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v15);
  (*(v16 + 8))(v19, v15, v16);
  OUTLINED_FUNCTION_131(v19);
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_267E5FC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  sub_267EF4148();
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v17 = swift_allocObject();
  v54 = xmmword_267EFC020;
  *(v17 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v17 + 32) = sub_267BC9500();
  *(v17 + 40) = v18;
  sub_267EF4118();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_267EFCE30;
  *(v19 + 32) = sub_267BB90E4(0);
  *(v19 + 40) = v20;
  *(v19 + 48) = sub_267BB90E4(1);
  *(v19 + 56) = v21;
  *(v19 + 64) = sub_267BB90E4(2);
  *(v19 + 72) = v22;
  sub_267EF4108();
  v23 = sub_267EF6448();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_267EF6438();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v26 = sub_267EF8A08();
  __swift_project_value_buffer(v26, qword_280240FB0);
  v27 = *(v5 + 16);
  v55 = v16;
  v27(v14, v16, v2);
  v28 = sub_267EF89F8();
  v29 = sub_267EF95D8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_48();
    v53 = a1;
    v31 = v30;
    v51 = v30;
    v52 = swift_slowAlloc();
    v57 = v52;
    *v31 = 136315138;
    v27(v10, v14, v2);
    sub_267EF5458();
    v56[3] = v2;
    v56[4] = sub_267BC4228(&qword_28022BAF0, MEMORY[0x277D5DC70]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
    v27(boxed_opaque_existential_0, v10, v2);
    v49 = sub_267EF5448();
    v33 = v14;
    v34 = v2;
    v36 = v35;
    v50 = v29;
    v37 = *(v5 + 8);
    v38 = v10;
    v39 = v5;
    v37(v38, v34);
    v37(v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v40 = sub_267BA33E8(v49, v36, &v57);

    v41 = v51;
    *(v51 + 4) = v40;
    _os_log_impl(&dword_267B93000, v28, v50, "#EditMessageConfirmIntentFlowStrategy sending system dialog act: %s", v41, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v37 = *(v5 + 8);
    v39 = v5;
    v37(v14, v2);
    v34 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v42 = *(v39 + 72);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v54;
  v45 = v44 + v43;
  v46 = v55;
  v27(v45, v55, v34);
  sub_267EF4088();
  return (v37)(v46, v34);
}

uint64_t sub_267E6015C()
{
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_editMessageState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags));
  return sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
}

uint64_t sub_267E601EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_editMessageState);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
  return v0;
}

uint64_t sub_267E60288()
{
  sub_267E601EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageConfirmIntentFlowStrategy()
{
  result = qword_28022CA80;
  if (!qword_28022CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267E60334()
{
  v0 = type metadata accessor for TimedSentMessageContext(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_267C25DD4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_267E60440()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267E5B1CC();
}

uint64_t sub_267E604EC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267BBD07C;

  return sub_267E5B634(a1, a2);
}

uint64_t sub_267E60598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B430] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D08](a1, a2, v10, a4);
}

uint64_t sub_267E60660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B438] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D10](a1, a2, v10, a4);
}

uint64_t sub_267E60728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B440] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D18](a1, a2, v10, a4);
}

uint64_t sub_267E607F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B420] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for EditMessageConfirmIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9CF8](a1, a2, v10, a4);
}

uint64_t sub_267E608B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B428] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EditMessageConfirmIntentFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D00](a1, a2, a3, v12, a5);
}

uint64_t sub_267E60988()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_267BAEBEC;
  v6 = OUTLINED_FUNCTION_26_0();

  return sub_267E5D5D0(v6, v7, v3, v4);
}

uint64_t sub_267E60A30()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  OUTLINED_FUNCTION_18(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_267BAEBEC;

  return sub_267E5C74C(v3, v7, v8, v9, v10, v0 + v6);
}

unint64_t sub_267E60B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x74737269467369;
  v7 = a1 == 0x74737269467369 && a2 == 0xE700000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v9 = *(v3 + 24);
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  result = 0x646E6F6365537369;
  v10 = a1 == 0x646E6F6365537369 && a2 == 0xE800000000000000;
  if (v10 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v9 = *(v3 + 25);
    goto LABEL_7;
  }

  result = 0x7473614C7369;
  v11 = a1 == 0x7473614C7369 && a2 == 0xE600000000000000;
  if (v11 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v9 = *(v3 + 26);
    goto LABEL_7;
  }

  result = 0x646E657070417369;
  v12 = a1 == 0x646E657070417369 && a2 == 0xEA00000000006465;
  if (v12 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v9 = *(v3 + 27);
    goto LABEL_7;
  }

  v13 = a1 == 0xD00000000000001ELL && 0x8000000267F11A30 == a2;
  if (v13 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v9 = *(v3 + 28);
    goto LABEL_7;
  }

  result = 0x70756F72477369;
  v14 = a1 == 0x70756F72477369 && a2 == 0xE700000000000000;
  if (v14 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    v9 = *(v3 + 29);
    goto LABEL_7;
  }

  result = 0x70756F7267;
  if (a1 != 0x70756F7267 || a2 != 0xE500000000000000)
  {
    result = OUTLINED_FUNCTION_2_6();
    if ((result & 1) == 0)
    {
      v17 = a1 == 0xD00000000000001ELL && 0x8000000267F10140 == a2;
      if (v17 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
      {
        v9 = *(v3 + 40);
        goto LABEL_7;
      }

      result = 0xD000000000000019;
      v18 = a1 == 0xD000000000000019 && 0x8000000267F11A60 == a2;
      if (v18 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
      {
        v9 = *(v3 + 41);
        goto LABEL_7;
      }

      goto LABEL_59;
    }
  }

  v16 = *(v3 + 32);
  if (!v16)
  {
LABEL_59:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = type metadata accessor for MessagesGroup(0);
  *a3 = v16;
}

uint64_t sub_267E60DB0()
{
  v0 = sub_267EF9D38();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267E60E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267E60DB0();
  *a2 = result;
  return result;
}

uint64_t sub_267E60E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267BFBD50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E60E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267E60DFC();
  *a1 = result;
  return result;
}

uint64_t sub_267E60EB8(uint64_t a1)
{
  v2 = sub_267BFBCE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267E60EF4(uint64_t a1)
{
  v2 = sub_267BFBCE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267E60F30(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_267E60F80(a1);
  return v2;
}

uint64_t sub_267E60F80(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CAA0, &qword_267F0CC40);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  *(v1 + 16) = 0;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BFBCE0();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesConversationDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16) = 0;
    *(v1 + 24) = sub_267EF9DA8() & 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_79(1) & 1;
    *(v1 + 26) = OUTLINED_FUNCTION_1_79(2) & 1;
    *(v1 + 27) = OUTLINED_FUNCTION_1_79(3) & 1;
    *(v1 + 28) = OUTLINED_FUNCTION_1_79(4) & 1;
    *(v1 + 29) = OUTLINED_FUNCTION_1_79(5) & 1;
    type metadata accessor for MessagesGroup(0);
    OUTLINED_FUNCTION_3_75();
    sub_267BFBE6C(v10, 255, v11);
    sub_267EF9D88();
    *(v1 + 32) = v16;
    *(v1 + 40) = OUTLINED_FUNCTION_1_79(7) & 1;
    v13 = OUTLINED_FUNCTION_1_79(8);
    v14 = OUTLINED_FUNCTION_8_32();
    v15(v14);
    *(v3 + 41) = v13 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267E6128C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267E60F30(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesConversationDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267E61428()
{
  result = qword_28022CAB8;
  if (!qword_28022CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAB8);
  }

  return result;
}

unint64_t sub_267E61480()
{
  result = qword_28022CAC0;
  if (!qword_28022CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAC0);
  }

  return result;
}

unint64_t sub_267E614D8()
{
  result = qword_28022CAC8;
  if (!qword_28022CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAC8);
  }

  return result;
}

BOOL sub_267E61530(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_267EF9A68();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_267E61584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = sub_267EF8AE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_267BE8214())
  {
    v17 = [v1 groupName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_267EF8A78();
      OUTLINED_FUNCTION_4_60(v19);
      sub_267EB8B0C(v7, v11);

      sub_267B9FF34(v7, &unk_28022BAE0, &unk_267F07D80);
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
      {
        v20 = *(v13 + 32);
        v20(v16, v11, v12);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v21 = sub_267EF8A08();
        __swift_project_value_buffer(v21, qword_280240FB0);
        v22 = sub_267EF89F8();
        v23 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v23))
        {
          v24 = OUTLINED_FUNCTION_32();
          *v24 = 0;
          _os_log_impl(&dword_267B93000, v22, v23, "#INMessage Made group RR entity", v24, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        v20(a1, v16, v12);
LABEL_17:
        v32 = 0;
        return __swift_storeEnumTagSinglePayload(a1, v32, 1, v12);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    }

    sub_267B9FF34(v11, &qword_2802294B0, &qword_267F001F0);
  }

  v25 = [v2 sender];
  if (v25)
  {
    v26 = v25;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_267EF8A08();
    __swift_project_value_buffer(v27, qword_280240FB0);
    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v29))
    {
      v30 = OUTLINED_FUNCTION_32();
      *v30 = 0;
      _os_log_impl(&dword_267B93000, v28, v29, "#INMessage Made sender RR entity", v30, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v31 = sub_267EF8A78();
    OUTLINED_FUNCTION_4_60(v31);
    sub_267BF66B0();

    sub_267B9FF34(v7, &unk_28022BAE0, &unk_267F07D80);
    goto LABEL_17;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v33 = sub_267EF8A08();
  __swift_project_value_buffer(v33, qword_280240FB0);
  v34 = sub_267EF89F8();
  v35 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v35))
  {
    v36 = OUTLINED_FUNCTION_32();
    *v36 = 0;
    _os_log_impl(&dword_267B93000, v34, v35, "#INMessage No RR entity", v36, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v32 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v32, 1, v12);
}

uint64_t sub_267E619C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267BA9F38(0, &qword_28022CAD0, 0x277D479E8);
  v5 = sub_267BF20D0(a1, v4, a2);
  if (sub_267BAF0DC(v5))
  {
    sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    for (i = *(v5 + 32); ; i = MEMORY[0x26D609870](0, v5))
    {
      v7 = i;

      result = [v7 views];
      if (!result)
      {
        break;
      }

      v9 = result;
      sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
      v5 = sub_267EF92F8();

      v10 = sub_267BAF0DC(v5);
      for (j = 0; ; ++j)
      {
        if (v10 == j)
        {

          return 0;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D609870](j, v5);
        }

        else
        {
          if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v12 = *(v5 + 8 * j + 32);
        }

        v13 = v12;
        if (__OFADD__(j, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
        {

          return 1;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void sub_267E61BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7, uint64_t a8, void **a9)
{
  v11 = a1;
  v12 = [a1 views];
  if (!v12)
  {
LABEL_31:
    [v11 setViews_];

    return;
  }

  sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
  v13 = sub_267EF92F8();

  v14 = sub_267BAF0DC(v13);
  v38 = a3;
  if (!v14)
  {

LABEL_30:
    v12 = sub_267EF92D8();

    goto LABEL_31;
  }

  v15 = v14;
  v44 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  if (v15 < 0)
  {
    goto LABEL_36;
  }

  v35 = v11;
  v37 = a8;
  v16 = 0;
  v36 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D609870](v16, v13);
      goto LABEL_10;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

    v17 = *(v13 + 8 * v16 + 32);
LABEL_10:
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = sub_267E61F74(v20);
      if (v23)
      {
        if (v22 == a2 && v23 == a3)
        {
        }

        else
        {
          v25 = sub_267EF9EA8();

          if ((v25 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_267E61FD8(a4, a5, v20);
        if (!a6 && *a7 == 1)
        {
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v26 = sub_267EF8A08();
          __swift_project_value_buffer(v26, qword_280240FB0);
          v27 = sub_267EF89F8();
          v28 = sub_267EF95D8();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_267B93000, v27, v28, "#SendMessageConfirmIntentFlowStrategy for voiceOnly, setting delay dismissal to 5 second, and preserving the cancel command", v29, 2u);
            MEMORY[0x26D60A7B0](v29, -1, -1);
          }

          v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          [v20 setDelayDismissalMs_];

          v31 = *a9;
          v32 = *(v37 + v36);
          *(v37 + v36) = *a9;
          v33 = v31;

          v21 = v32;
          a3 = v38;
        }
      }

LABEL_26:
    }

    ++v16;
    sub_267EF9BD8();
    v34 = *(v44 + 16);
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
    if (v15 == v16)
    {

      v11 = v35;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_267E61F74(void *a1)
{
  v1 = [a1 aceId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

void sub_267E61FD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setAceId_];
}

uint64_t sub_267E62030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_267E62098(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);

  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  if (os_log_type_enabled(v16, v17))
  {
    v31 = a8;
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315394;
    if (a4)
    {
      v20 = a4;
    }

    else
    {
      a3 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_267BA33E8(a3, v20, &v33);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (a6)
    {
      v22 = a5;
    }

    else
    {
      v22 = 7104878;
    }

    if (a6)
    {
      v23 = a6;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_267BA33E8(v22, v23, &v33);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_267B93000, v16, v17, "#ReadComponentAction creating multilingual sayIt for language: %s, with voice: %s", v18, 0x16u);
    swift_arrayDestroy();
    v25 = v19;
    a2 = v30;
    MEMORY[0x26D60A7B0](v25, -1, -1);
    v26 = v18;
    a8 = v31;
    MEMORY[0x26D60A7B0](v26, -1, -1);
  }

  sub_267E62364();

  v27 = sub_267E7E88C(a1, a2, a7, a8, 0, 0, 0);
  if (a6)
  {
    v28 = sub_267EF8FF8();
  }

  else
  {
    v28 = 0;
  }

  [v27 setVoiceName_];

  if (a4)
  {
    a4 = sub_267EF8FF8();
  }

  [v27 setLanguageCode_];

  return v27;
}

unint64_t sub_267E62364()
{
  result = qword_28022A0B0;
  if (!qword_28022A0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022A0B0);
  }

  return result;
}

void *sub_267E623A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = type metadata accessor for ConversationActionGroup();
    OUTLINED_FUNCTION_97(v5);

    v6 = sub_267BE6480(a2, a3, 0, 1);
    v7 = &unk_28022BC80;
    v8 = type metadata accessor for ConversationActionGroup;
  }

  else if (sub_267E2B428())
  {
    v9 = type metadata accessor for ConversationAppendingActionGroup();
    OUTLINED_FUNCTION_97(v9);

    v6 = sub_267DA7BA4(v10, a3);
    v7 = &unk_28022CAF0;
    v8 = type metadata accessor for ConversationAppendingActionGroup;
  }

  else
  {
    v11 = type metadata accessor for RequestConclusionActionGroup(0);
    OUTLINED_FUNCTION_97(v11);

    v6 = sub_267DFA04C(v12);
    v7 = &qword_28022BD38;
    v8 = type metadata accessor for RequestConclusionActionGroup;
  }

  sub_267E638F4(v7, v8);
  return v6;
}

uint64_t sub_267E624F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v239 = a2;
  v238 = sub_267EF4548();
  v3 = *(v238 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v238);
  v7 = &v231 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v236 = (&v231 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v235 = (&v231 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v231 - v14;
  v16 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v231 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v231 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v231 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v231 - v29;
  sub_267DA0E58(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_267B9F98C(v15, &qword_28022BC68, &unk_267F08710);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v33))
    {
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v34);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_26();
    }

    v40 = v239;
    v41 = 1;
  }

  else
  {
    sub_267E637D8(v15, v30);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v42 = sub_267EF8A08();
    v43 = __swift_project_value_buffer(v42, qword_280240FB0);
    sub_267E0BAE4(v30, v28);
    v234 = v43;
    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    v46 = OUTLINED_FUNCTION_5_2(v45);
    v233 = v7;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v231 = v3;
      v48 = v47;
      v49 = swift_slowAlloc();
      v232 = v30;
      v50 = v49;
      *&v241 = v49;
      *v48 = 136315138;
      sub_267E0BAE4(v28, v25);
      v51 = sub_267EF9098();
      v53 = v52;
      sub_267BA1B7C(v28);
      v16 = sub_267BA33E8(v51, v53, &v241);

      *(v48 + 4) = v16;
      _os_log_impl(&dword_267B93000, v44, v45, "#OfferReplyReturnGroup acting on exit value for offer reply: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      v30 = v232;
      OUTLINED_FUNCTION_32_0();
      v3 = v231;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      sub_267BA1B7C(v28);
    }

    sub_267E0BAE4(v30, v22);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 9, v54);
    v56 = v237;
    switch(EnumTagSinglePayload)
    {
      case 1:
        v16 = v237[2];
        v153 = *(v16 + 80);
        v241 = *(v16 + 64);
        v242 = v153;
        v243 = *(v16 + 96);
        v244 = *(v16 + 112);
        *&v240[0] = *(&v153 + 1);
        v154 = v241;
        sub_267E6383C(v240, v245);

        v155 = sub_267E2B2D0();

        sub_267E63898(v240);

        if ((v155 & 1) == 0)
        {
          goto LABEL_51;
        }

        v156 = OUTLINED_FUNCTION_9_51();
        v157 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v157))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_28_11(&dword_267B93000, v158, v159, "#OfferReplyReturnGroup request to read a single thread. No need to summarize.");
          OUTLINED_FUNCTION_32_0();
        }

LABEL_49:
        v160 = v56[3];
        v161 = type metadata accessor for ReadingTerminatedActionGroup(0);
        OUTLINED_FUNCTION_97(v161);

        sub_267DFA1D0(v16, v160);
        OUTLINED_FUNCTION_15_42();
        v140 = &unk_28022BC70;
        v141 = type metadata accessor for ReadingTerminatedActionGroup;
LABEL_50:
        v162 = sub_267E638F4(v140, v141);
        v163 = v239;
        *v239 = v16;
        v163[1] = v162;
        v164 = v238;
        (*(v3 + 104))(v163, *MEMORY[0x277D5BF58], v238);
        OUTLINED_FUNCTION_9();
        v94 = v164;
        return __swift_storeEnumTagSinglePayload(v40, v41, v93, v94);
      case 2:
        v117 = OUTLINED_FUNCTION_9_51();
        v118 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v118))
        {
          v119 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v119);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v120, v121, v122, v123, v124, 2u);
          OUTLINED_FUNCTION_26();
        }

        v16 = v56[2];
        goto LABEL_49;
      case 3:
        v125 = OUTLINED_FUNCTION_9_51();
        v126 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v126))
        {
          v127 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v127);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v128, v129, v130, v131, v132, 2u);
          OUTLINED_FUNCTION_26();
        }

        v133 = v56[2];
        v134 = *(v133 + 416);
        if (v134)
        {
          *(v134 + 82) = 0;
        }

        *(&v242 + 1) = &type metadata for Features;
        v135 = sub_267BAFCAC();
        v136 = OUTLINED_FUNCTION_13_44(v135);
        __swift_destroy_boxed_opaque_existential_0(&v241);
        if (v136)
        {
          v137 = *(v133 + 416);
          if (v137)
          {
            v138 = *(v133 + 416);

            sub_267E2B73C(0, v137);
          }
        }

        v16 = v56[3];
        v139 = type metadata accessor for ConversationActionGroup();
        OUTLINED_FUNCTION_97(v139);

        sub_267BE6480(v16, v133, 0, 0);
        OUTLINED_FUNCTION_15_42();
        v140 = &unk_28022BC80;
        v141 = type metadata accessor for ConversationActionGroup;
        goto LABEL_50;
      case 4:
        v102 = v3;
        v103 = v30;
        v104 = v237[2];
        if (*(v104 + 88))
        {
          OUTLINED_FUNCTION_12_44();
          v105 = v103;
          goto LABEL_52;
        }

        v188 = OUTLINED_FUNCTION_9_51();
        v189 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v189))
        {
          v190 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v190);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v191, v192, v193, v194, v195, 2u);
          OUTLINED_FUNCTION_26();
        }

        *(&v242 + 1) = &type metadata for Features;
        v196 = sub_267BAFCAC();
        v197 = OUTLINED_FUNCTION_13_44(v196);
        __swift_destroy_boxed_opaque_existential_0(&v241);
        if ((v197 & 1) != 0 && (v198 = *(v104 + 416)) != 0 && *(v198 + 82) == 1)
        {

          v199 = OUTLINED_FUNCTION_9_51();
          v200 = sub_267EF95C8();

          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            *&v240[0] = v202;
            *v201 = 136315138;
            v203 = *(v104 + 416);
            if (v203)
            {
              v205 = *(v203 + 88);
              v204 = *(v203 + 96);
            }

            else
            {
              v205 = 0;
              v206 = 0;
            }

            *&v241 = v205;
            *(&v241 + 1) = v206;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
            v223 = sub_267EF9098();
            v225 = sub_267BA33E8(v223, v224, v240);

            *(v201 + 4) = v225;
            OUTLINED_FUNCTION_64_1();
            _os_log_impl(v226, v227, v228, v229, v230, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v202);
            OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_26();

            v207 = MEMORY[0x277D84F90];
          }

          else
          {

            v207 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
          v207 = swift_allocObject();
          *(v207 + 16) = xmmword_267EFC020;
          v208 = v56[3];
          sub_267DE2198();
          v210 = v209;
          v211 = *(v208 + 128);
          type metadata accessor for MarkMessagesAsReadAction();
          swift_allocObject();
          v212 = sub_267C138B4(v210, v211, v104);
          v213 = sub_267E638F4(&qword_28022BCC8, type metadata accessor for MarkMessagesAsReadAction);
          *(v207 + 32) = v212;
          *(v207 + 40) = v213;
        }

        sub_267E6362C(v235);
        OUTLINED_FUNCTION_9();
        v214 = v238;
        __swift_storeEnumTagSinglePayload(v215, v216, v217, v238);
        v218 = sub_267EF4338();
        OUTLINED_FUNCTION_97(v218);
        sub_267EF4328();
        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_4_61();
        v221 = sub_267E638F4(v219, v220);
        v222 = v239;
        *v239 = v207;
        v222[1] = v221;
        (*(v102 + 104))(v222, *MEMORY[0x277D5BF58], v214);
        OUTLINED_FUNCTION_9();
        v94 = v214;
        return __swift_storeEnumTagSinglePayload(v40, v41, v93, v94);
      case 5:
      case 6:
        v57 = v237[2];
        v58 = *(v57 + 80);
        v241 = *(v57 + 64);
        v242 = v58;
        v243 = *(v57 + 96);
        v244 = *(v57 + 112);
        *&v240[0] = *(&v58 + 1);
        v59 = v241;
        sub_267E6383C(v240, v245);

        v60 = sub_267E2B2D0();

        sub_267E63898(v240);

        if (v60)
        {
          v61 = OUTLINED_FUNCTION_9_51();
          v62 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v62))
          {
            v63 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v63);
            OUTLINED_FUNCTION_64_1();
            _os_log_impl(v64, v65, v66, v67, v68, 2u);
            OUTLINED_FUNCTION_26();
          }

          sub_267CAB4D0(v57, v239);
          return sub_267BA1B7C(v30);
        }

        v16 = sub_267E624E8();
        type metadata accessor for ConversationActionGroup();
        v95 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v95 && (v16 = v56[4]) != 0)
        {
          v96 = v56[4];

          v97 = OUTLINED_FUNCTION_9_51();
          v98 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v98))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_28_11(&dword_267B93000, v99, v100, "#OfferReplyReturnGroup creating offer transition for native flow");
            OUTLINED_FUNCTION_32_0();
          }

          v101 = v239;
          sub_267CAA1C0(v16, v57, v239);

          sub_267BA1B7C(v30);
          v40 = v101;
        }

        else
        {
LABEL_51:
          OUTLINED_FUNCTION_12_44();
          v105 = v30;
LABEL_52:
          sub_267BA1B7C(v105);
          v40 = v16;
        }

        v41 = 0;
        break;
      case 7:
        v106 = OUTLINED_FUNCTION_9_51();
        v107 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v107))
        {
          v108 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v108);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v109, v110, v111, v112, v113, 2u);
          OUTLINED_FUNCTION_26();
        }

        v114 = v56[3];
        v115 = type metadata accessor for FlowLocatorPhoneFlowFinder();
        inited = swift_initStackObject();
        *(&v242 + 1) = v115;
        *&v243 = &off_2878D76D0;
        *&v241 = inited;
        sub_267CAA984(v239);
        sub_267BA1B7C(v30);
        return __swift_destroy_boxed_opaque_existential_0(&v241);
      case 8:
        v165 = OUTLINED_FUNCTION_9_51();
        v166 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v166))
        {
          v167 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v167);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v168, v169, v170, v171, v172, 2u);
          OUTLINED_FUNCTION_26();
        }

        v173 = type metadata accessor for OfferTransitionActionGroup();
        OUTLINED_FUNCTION_97(v173);

        v174 = sub_267CFB440(sub_267E638EC, v56);
        v175 = sub_267E638F4(&qword_280229990, type metadata accessor for OfferTransitionActionGroup);
        v176 = v236;
        *v236 = v174;
        v176[1] = v175;
        v177 = *MEMORY[0x277D5BF58];
        v178 = v3;
        v235 = *(v3 + 104);
        v179 = v238;
        v235(v176, v177, v238);
        v180 = v56[2];
        v181 = v56[3];
        v182 = *(v3 + 16);
        v183 = v233;
        v182(v233, v176, v179);
        SenderInfoActionGroup = type metadata accessor for ReadSenderInfoActionGroup();
        OUTLINED_FUNCTION_97(SenderInfoActionGroup);

        v185 = sub_267C4BF48(v180, v181, v183);
        (*(v178 + 8))(v176, v179);
        sub_267BA1B7C(v30);
        v186 = sub_267E638F4(&qword_28022BC78, type metadata accessor for ReadSenderInfoActionGroup);
        v187 = v239;
        *v239 = v185;
        v187[1] = v186;
        v235(v187, v177, v179);
        OUTLINED_FUNCTION_9();
        v94 = v179;
        return __swift_storeEnumTagSinglePayload(v40, v41, v93, v94);
      case 9:
        v70 = v237[2];
        v71 = *(v70 + 80);
        v241 = *(v70 + 64);
        v242 = v71;
        v243 = *(v70 + 96);
        v244 = *(v70 + 112);
        v16 = v243;
        v245[0] = *(&v71 + 1);
        v72 = v241;
        sub_267E6383C(v245, v240);

        v73 = sub_267E2B2D0();

        sub_267E63898(v245);

        if ((v73 & 1) == 0)
        {
          goto LABEL_51;
        }

        v74 = OUTLINED_FUNCTION_9_51();
        v75 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v75))
        {
          v76 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v76);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v77, v78, v79, v80, v81, 2u);
          OUTLINED_FUNCTION_26();
        }

        v82 = *(v70 + 40);
        v83 = *(v70 + 48);
        __swift_project_boxed_opaque_existential_0((v70 + 16), v82);
        (*(v83 + 16))(v240, v82, v83);
        type metadata accessor for CloseAssistantAction();
        v84 = swift_allocObject();
        *(v84 + 16) = 0;
        *(v84 + 24) = 0;
        sub_267B9A5E8(v240, v84 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_267EFC020;
        v86 = sub_267E638F4(&qword_28022CAE8, type metadata accessor for CloseAssistantAction);
        *(v85 + 32) = v84;
        *(v85 + 40) = v86;
        v87 = v238;
        __swift_storeEnumTagSinglePayload(v235, 1, 1, v238);
        v88 = sub_267EF4338();
        OUTLINED_FUNCTION_97(v88);
        sub_267EF4328();
        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_4_61();
        v91 = sub_267E638F4(v89, v90);
        v92 = v239;
        *v239 = "MessagesDataStore#";
        v92[1] = v91;
        (*(v3 + 104))(v92, *MEMORY[0x277D5BF58], v87);
        OUTLINED_FUNCTION_9();
        v94 = v87;
        return __swift_storeEnumTagSinglePayload(v40, v41, v93, v94);
      default:
        v142 = OUTLINED_FUNCTION_9_51();
        v143 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v143))
        {
          v144 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v144);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v145, v146, v147, v148, v149, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_12_44();
        sub_267BA1B7C(v30);
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v150, v151, v152, v238);
        return sub_267B9F98C(v22, &qword_280229920, &unk_267F0ABD0);
    }
  }

  v93 = 1;
  v94 = v238;
  return __swift_storeEnumTagSinglePayload(v40, v41, v93, v94);
}