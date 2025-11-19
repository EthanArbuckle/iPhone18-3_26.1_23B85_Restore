uint64_t sub_2696FAB74()
{
  OUTLINED_FUNCTION_2_7();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  OUTLINED_FUNCTION_8_9(v4);
  v6 = *(v5 + 64);
  v1[15] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v7);
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269853634();
  v1[17] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[18] = v11;
  v13 = *(v12 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v14 = sub_269853234();
  v1[20] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[21] = v15;
  v17 = *(v16 + 64);
  v1[22] = OUTLINED_FUNCTION_4_7();
  v18 = sub_2698548D4();
  v1[23] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[24] = v19;
  v21 = *(v20 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_2696FAD08()
{
  if (qword_2803226E0 != -1)
  {
LABEL_16:
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_28033D910);
  v0[27] = v4;
  v6 = *(v3 + 16);
  v5 = (v3 + 16);
  v0[28] = v6;
  v0[29] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v9);
    _os_log_impl(&dword_269684000, v7, v2, "DeviceDisambiguation: makePromptForDisambiguation", v5, 2u);
    OUTLINED_FUNCTION_18_7();
  }

  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[22];
  v14 = v0[13];
  v15 = v0[14];

  v0[30] = *(v12 + 8);
  v16 = OUTLINED_FUNCTION_22_3();
  v17(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A88, &unk_26985BF20);
  sub_269853544();
  sub_2696FBB6C();
  v19 = v18;
  v0[31] = v18;

  sub_269835D5C();
  sub_2696F3E90(v15 + 56, (v0 + 2));
  v20 = 0;
  v21 = *(v19 + 16);
  v22 = (v19 + 40);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[32] = v23;
    if (v21 == v20)
    {
      break;
    }

    if (v20 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v25 = *(v22 - 1);
    v24 = *v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v23 + 16);
      OUTLINED_FUNCTION_3_5();
      sub_26977BCE4();
      v23 = v30;
    }

    v27 = *(v23 + 16);
    v26 = *(v23 + 24);
    if (v27 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_9(v26);
      sub_26977BCE4();
      v23 = v31;
    }

    *(v23 + 16) = v27 + 1;
    v28 = v23 + 16 * v27;
    *(v28 + 32) = v25;
    *(v28 + 40) = v24;
    v22 += 3;
    ++v20;
  }

  v32 = swift_task_alloc();
  v0[33] = v32;
  *v32 = v0;
  v32[1] = sub_2696FAF78;
  OUTLINED_FUNCTION_71();

  return sub_2696BD220(v33);
}

uint64_t sub_2696FAF78()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;
  v5 = v2[33];
  v6 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v7 = v6;
  v3[34] = v8;
  v3[35] = v0;

  v9 = v2[32];
  if (v0)
  {
    v10 = v3[31];
    sub_2696D1E70((v3 + 2));

    v11 = sub_2696FB920;
  }

  else
  {
    sub_2696D1E70((v3 + 2));

    v11 = sub_2696FB0CC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2696FB0CC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[14];
  sub_269852E84();
  *(swift_task_alloc() + 16) = v1;
  sub_2698535C4();

  v5 = v4[5];
  v6 = v4[6];
  OUTLINED_FUNCTION_36_0(v4 + 2);
  OUTLINED_FUNCTION_22_3();
  if (sub_269852D14())
  {
    v7 = v0[34];
    v8 = v0[31];
    v9 = v0[14];

    v10 = v9[26];
    v11 = v9[27];
    OUTLINED_FUNCTION_36_0(v9 + 23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v12 = swift_allocObject();
    v0[38] = v12;
    *(v12 + 16) = xmmword_2698590C0;
    *(v12 + 32) = v7;
    v13 = *(MEMORY[0x277D5BE58] + 4);
    v14 = v7;
    v15 = swift_task_alloc();
    v0[39] = v15;
    *v15 = v0;
    v15[1] = sub_2696FB750;
    v16 = v0[19];
    v17 = v0[12];
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_71();

    return MEMORY[0x2821BB488](v18, v19, v20, v21, v22);
  }

  else
  {
    v24 = *(v0[14] + 176);
    sub_269830114();
    if (!v26)
    {
      v50 = v0[31];
      v52 = v0[28];
      v51 = v0[29];
      v53 = v0[27];
      v54 = v0[25];
      v55 = v0[23];

      v52(v54, v53, v55);
      v56 = sub_2698548B4();
      sub_269854F24();
      OUTLINED_FUNCTION_45_0();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v58);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v59, v60, "Unable to retieve localized string for 'WHICH_TV' label");
        OUTLINED_FUNCTION_18_7();
      }

      v61 = v0[34];
      v62 = v0[30];
      v64 = v0[24];
      v63 = v0[25];
      v65 = v0[23];
      v67 = v0[18];
      v66 = v0[19];
      v68 = v0[17];

      v69 = OUTLINED_FUNCTION_22_3();
      v62(v69);
      sub_2696BAE9C();
      swift_allocError();
      OUTLINED_FUNCTION_5_14(v70, 7);
      swift_willThrow();

      (*(v67 + 8))(v66, v68);
      v71 = OUTLINED_FUNCTION_26_3();
      v72(v71);

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_71();

      __asm { BRAA            X1, X16 }
    }

    v27 = v25;
    v28 = v26;
    v29 = v0[34];
    v30 = v0[31];
    v31 = v0[19];
    v33 = v0[14];
    v32 = v0[15];
    sub_2698535E4();
    sub_2696FC7B0(v30, v27, v28, 8);

    v34 = v33[26];
    v35 = v33[27];
    OUTLINED_FUNCTION_36_0(v33 + 23);
    v0[10] = type metadata accessor for VideoDataModels(0);
    v0[11] = sub_2696FD6AC(&qword_280323A28, type metadata accessor for VideoDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_2696FD5F0(v32, boxed_opaque_existential_1);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v37 = swift_allocObject();
    v0[36] = v37;
    *(v37 + 16) = xmmword_2698590C0;
    *(v37 + 32) = v29;
    v38 = *(MEMORY[0x277D5BE38] + 4);
    v39 = v29;
    v40 = swift_task_alloc();
    v0[37] = v40;
    *v40 = v0;
    v40[1] = sub_2696FB560;
    v41 = v0[19];
    v42 = v0[12];
    OUTLINED_FUNCTION_71();

    return MEMORY[0x2821BB468](v43, v44, v45, v46, v47, v48);
  }
}

uint64_t sub_2696FB560()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *(v4 + 288);
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2696FB660()
{
  v4 = *(v1 + 120);

  sub_2696FD654(v4, type metadata accessor for VideoDataModels.DisambiguateItemsModel);
  v5 = OUTLINED_FUNCTION_23_7();
  v6(v5);
  (*(v3 + 8))(v0, v2);

  OUTLINED_FUNCTION_7_7();

  return v7();
}

uint64_t sub_2696FB750()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 312);
  v3 = *(v1 + 304);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696FB850()
{
  v4 = OUTLINED_FUNCTION_23_7();
  v5(v4);
  (*(v3 + 8))(v0, v2);

  OUTLINED_FUNCTION_7_7();

  return v6();
}

uint64_t sub_2696FB920()
{
  v1 = *(v0 + 280);
  v2 = OUTLINED_FUNCTION_26_3();
  v3(v2);

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_2696FB9D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_269852F34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_2698535F4();
  sub_269853624();
  v12 = sub_269853234();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_269853604();
  (*(v4 + 104))(v7, *MEMORY[0x277D5BC50], v3);
  return sub_2698535D4();
}

void sub_2696FBB6C()
{

  v1 = 0;
  v2 = sub_2696FBEC4(v0);
  v3 = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);
    if (v17 >> 62)
    {
      v50 = v9;
      v52 = v1;
      v39 = *(*(v3 + 56) + 8 * v13);
      if (sub_269855324() <= 1)
      {
        v9 = v50;
        if (v15)
        {
          v41 = sub_269855324();
          v9 = v50;
          v42 = v41;
          v17 = v39;
          if (v42)
          {
LABEL_13:
            v51 = v1;
            if ((v17 & 0xC000000000000001) != 0)
            {
              v19 = v9;
              v43 = v17;

              v54 = MEMORY[0x26D646120](0, v43);
            }

            else
            {
              if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v19 = v9;
              v20 = *(v17 + 32);

              v54 = v20;
            }

            v21 = v10;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = *(v10 + 16);
              OUTLINED_FUNCTION_3_5();
              sub_26977C9D4();
              v21 = v45;
            }

            v1 = v51;
            v9 = v19;
            v23 = *(v21 + 16);
            v22 = *(v21 + 24);
            if (v23 >= v22 >> 1)
            {
              OUTLINED_FUNCTION_9(v22);
              v47 = v46;
              sub_26977C9D4();
              v9 = v47;
              v1 = v51;
              v21 = v48;
            }

            *(v21 + 16) = v23 + 1;
            v24 = (v21 + 24 * v23);
            v24[4] = v16;
            v24[5] = v15;
            v24[6] = v54;
            v10 = v21;
          }
        }
      }

      else
      {
        v40 = sub_269855324();
        v9 = v50;
        if (v40)
        {
          v18 = v40;
          v49 = v3;
          if (v40 < 1)
          {
            goto LABEL_46;
          }

          v17 = v39;
LABEL_22:
          v53 = v17 & 0xC000000000000001;
          v55 = v17;

          for (i = 0; i != v18; ++i)
          {
            if (v53)
            {
              v26 = MEMORY[0x26D646120](i, v55);
            }

            else
            {
              v26 = *(v55 + 8 * i + 32);
            }

            v27 = v26;
            v28 = sub_269854634();
            if (v29)
            {
              v30 = v28;
              v31 = v29;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = *(v10 + 16);
                OUTLINED_FUNCTION_3_5();
                sub_26977C9D4();
                v10 = v37;
              }

              v33 = *(v10 + 16);
              v32 = *(v10 + 24);
              v34 = v10;
              if (v33 >= v32 >> 1)
              {
                OUTLINED_FUNCTION_9(v32);
                sub_26977C9D4();
                v34 = v38;
              }

              *(v34 + 16) = v33 + 1;
              v10 = v34;
              v35 = (v34 + 24 * v33);
              v35[4] = v30;
              v35[5] = v31;
              v35[6] = v27;
            }

            else
            {
            }
          }

          v3 = v49;
          v9 = v50;
          v1 = v52;
        }
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 > 1)
      {
        v50 = v9;
        v52 = v1;
        v49 = v3;
        goto LABEL_22;
      }

      if (v15 && v18)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_2696FBEC4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_26975004C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D646120](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_269854644();
    v9 = v8;
    v11 = sub_26973CFEC(v7, v8);
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      sub_26980E3B0(v14);
      v2 = v26;
      v16 = sub_26973CFEC(v7, v9);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v11 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v11);
      MEMORY[0x26D645B90](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      sub_269854CF4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2698590C0;
      *(v20 + 32) = v6;
      v2[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v2[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v9;
      *(v2[7] + 8 * v11) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v24;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_2696FC100()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v6 = sub_269853634();
  v1[5] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698548D4();
  v1[8] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_4_7();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2696FC210()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v2 = v0[9];
  v1 = v0[10];
  __swift_project_value_buffer(v0[8], qword_28033D910);
  v3 = OUTLINED_FUNCTION_9_11();
  v4(v3);
  v5 = sub_2698548B4();
  sub_269854F14();
  OUTLINED_FUNCTION_45_0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v7);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v8, v9, "DeviceDisambiguationStrategy.makeFlowCancelledResponse called");
    OUTLINED_FUNCTION_18_7();
  }

  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  v13 = v0[3];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_22_3();
  v16(v15);
  v17 = *__swift_project_boxed_opaque_existential_1((v13 + 56), *(v13 + 80));
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_2696FC394;

  return sub_26977F2C4(0xD00000000000001BLL, 0x800000026987CD10);
}

uint64_t sub_2696FC394(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;

  if (v1)
  {
    v11 = v5[10];
    v12 = v5[7];
    v13 = v5[4];

    OUTLINED_FUNCTION_7_7();

    return v14();
  }

  else
  {
    v5[12] = a1;
    v16 = OUTLINED_FUNCTION_3_16();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_2696FC4D8()
{
  v1 = v0[12];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  sub_269852EA4();
  sub_2698535C4();
  v5 = v4[26];
  v6 = v4[27];
  OUTLINED_FUNCTION_36_0(v4 + 23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v7 = swift_allocObject();
  v0[13] = v7;
  *(v7 + 16) = xmmword_2698590C0;
  *(v7 + 32) = v1;
  v8 = *(MEMORY[0x277D5BE58] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2696FC608;
  v11 = v0[7];
  v12 = v0[2];
  OUTLINED_FUNCTION_9_10();

  return MEMORY[0x2821BB488](v13, v14, v15, v16, v17);
}

uint64_t sub_2696FC608()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2696FC708()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_22_3();
  v8(v7);

  OUTLINED_FUNCTION_7_7();

  return v9();
}

uint64_t sub_2696FC7B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v9 = OUTLINED_FUNCTION_5_12(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v27 = a4;
    v30 = MEMORY[0x277D84F90];
    sub_2698150D0(0, v17, 0);
    v18 = v30;
    v19 = (a1 + 40);
    do
    {
      v28 = *(v19 - 1);
      v29 = *v19;
      sub_2696FC9A0(&v28, v16);
      v30 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_9(v20);
        sub_2698150D0(v22, v21 + 1, 1);
        v18 = v30;
      }

      *(v18 + 16) = v21 + 1;
      sub_2696FD584(v16, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21);
      v19 = (v19 + 24);
      --v17;
    }

    while (v17);
    a4 = v27;
  }

  v28 = a2;
  *&v29 = a3;

  sub_269852674();
  v23 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  v24 = *(v23 + 20);
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A70, &unk_26985BEE0);
  sub_269852674();
  v25 = *(v23 + 24);
  LOBYTE(v28) = a4;
  return sub_269852674();
}

uint64_t sub_2696FC9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v3 = *(*(v55 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v55);
  v60 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = v43 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v43 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  v10 = *(*(v53 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v53);
  v51 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  MEMORY[0x28223BE20](v13);
  v56 = v43 - v16;
  v17 = sub_269852624();
  v50 = *(v17 - 8);
  v18 = v50;
  v19 = *(v50 + 64);
  MEMORY[0x28223BE20](v17);
  v57 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v52 = *a1;
  v48 = v21;
  v22 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
  v23 = swift_allocObject();
  v45 = xmmword_269857710;
  *(v23 + 16) = xmmword_269857710;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = v45;
  v58 = 0x696669746E656469;
  v59 = 0xEA00000000007265;

  v25 = MEMORY[0x277D837D0];
  sub_2698551B4();
  v26 = sub_269792A6C();
  *(inited + 96) = v25;
  *(inited + 72) = v26;
  *(inited + 80) = v27;
  sub_269854A04();
  v28 = sub_269852664();
  v29 = MEMORY[0x277D63778];
  *(v23 + 56) = v28;
  *(v23 + 64) = v29;
  __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  sub_269852654();

  v30 = v57;
  sub_269852634();
  *&v45 = sub_269854604();
  v44 = v31;
  v32 = v56;
  sub_269792AE0();
  v33 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  v34 = *(v18 + 16);
  v47 = v9;
  v35 = v17;
  v34(v9, v30, v17);
  v46 = v17;
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  v36 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v43[1] = v36[5];
  v58 = 0;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v37 = v36[6];
  v58 = 0;
  v59 = 0;
  sub_269852674();
  v43[2] = v36[7];
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v33);
  v38 = v51;
  sub_26969B138(v15, v51, &qword_280323A78, &unk_26985BEF0);
  sub_269852674();
  sub_26969B0C0(v15, &qword_280323A78, &unk_26985BEF0);
  v53 = v36[8];
  v39 = v54;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v35);
  sub_26969B138(v39, v60, &qword_2803239E0, &unk_26985D8B0);
  sub_269852674();
  sub_26969B0C0(v39, &qword_2803239E0, &unk_26985D8B0);
  v58 = v45;
  v59 = v44;
  sub_269852674();
  v58 = v52;
  v59 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v58 = 0;
  v59 = 0;
  sub_2698526A4();
  v40 = v56;
  sub_26969B138(v56, v15, &qword_280323A78, &unk_26985BEF0);
  sub_26969B138(v15, v38, &qword_280323A78, &unk_26985BEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  sub_2698526A4();
  sub_26969B0C0(v15, &qword_280323A78, &unk_26985BEF0);
  v41 = v47;
  sub_26969B138(v47, v39, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B138(v39, v60, &qword_2803239E0, &unk_26985D8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v39, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v41, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v40, &qword_280323A78, &unk_26985BEF0);
  return (*(v50 + 8))(v57, v46);
}

uint64_t *sub_2696FD088()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2696D1E70((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[22];

  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  return v0;
}

uint64_t sub_2696FD0D0()
{
  sub_2696FD088();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t sub_2696FD144()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696F99FC();
}

uint64_t sub_2696FD1F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_2696FAB74();
}

uint64_t sub_2696FD29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B6A0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BA098](a1, a2, v10, a4);
}

uint64_t sub_2696FD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B6A8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DeviceDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_2696DAF80;

  return MEMORY[0x2821BA0A0](a1, a2, v10, a4);
}

uint64_t sub_2696FD424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_2696FC100();
}

uint64_t sub_2696FD4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B698] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696DAF80;

  return MEMORY[0x2821BA090](a1, a2, a3, a4);
}

uint64_t sub_2696FD584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696FD5F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696FD654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2696FD6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_18_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_7()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[17];
  v8 = v0[15];
  v7 = v0[16];
  v9 = *(v0[18] + 8);
  return v0[19];
}

uint64_t OUTLINED_FUNCTION_26_3()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v7 = *(v0[21] + 8);
  return v0[22];
}

void OUTLINED_FUNCTION_41_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2696FD804(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B10, &qword_26985C1F0);
    v3 = sub_2698553C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_269701C68(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2696FD89C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      sub_2697017A0();
      OUTLINED_FUNCTION_11_11();
      return sub_269855064() & 1;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          if (a3 != 1)
          {
            return 0;
          }
        }

        else if (a1 == 2)
        {
          if (a3 != 2)
          {
            return 0;
          }
        }

        else if (a3 < 3 || (sub_26973CD58(a1, a3) & 1) == 0)
        {
          return 0;
        }

        return 1;
      }

      return !a3;
    }
  }

  else
  {
    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    if (a4 == 2)
    {
      return !a3;
    }
  }

  return 0;
}

uint64_t sub_2696FD970(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  return sub_26973CD58(a1, a2);
}

BOOL sub_2696FD9BC(uint64_t a1, char a2, unint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        goto LABEL_17;
      }

      return 0;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          if (a3 != 1)
          {
            return 0;
          }
        }

        else if (a1 == 2)
        {
          if (a3 != 2)
          {
            return 0;
          }
        }

        else if (a3 < 3 || (sub_26973CD58(a1, a3) & 1) == 0)
        {
          return 0;
        }

        return 1;
      }

      return !a3;
    case 3:
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_26_4();
          return v5 && a3 == 1;
        case 2:
          OUTLINED_FUNCTION_26_4();
          return v5 && a3 == 2;
        case 3:
          OUTLINED_FUNCTION_26_4();
          return v5 && a3 == 3;
        default:
          OUTLINED_FUNCTION_26_4();
          return v5 && a3 == 0;
      }

    default:
      if (a4)
      {
        return 0;
      }

LABEL_17:
      sub_2697017A0();
      OUTLINED_FUNCTION_11_11();
      return sub_269855064() & 1;
  }
}

BOOL sub_2696FDB38()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state);
  result = 1;
  switch(*(v0 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state + 8))
  {
    case 1:
      v3 = v1;
      goto LABEL_4;
    case 2:
      sub_2697017E4(*(v0 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state));
LABEL_4:
      result = v1;
      break;
    case 3:
      result = v1 != 2;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2696FDBB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = v1 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
  if (*(v1 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state + 8) < 3u || *v9)
  {
    return 0;
  }

  v12 = sub_269853854();
  OUTLINED_FUNCTION_4_3(v12);
  (*(v13 + 16))(v8, a1, v12);
  v10 = 1;
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  v14 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input;
  swift_beginAccess();
  sub_269702838(v8, v1 + v14);
  swift_endAccess();
  v15 = *v9;
  *v9 = 0;
  v16 = *(v9 + 8);
  *(v9 + 8) = 3;
  sub_2697017F4(v15, v16);
  return v10;
}

uint64_t sub_2696FDCFC()
{
  type metadata accessor for ExecutionDeviceResolutionFlow();
  sub_2697027F0(&qword_280323B20, type metadata accessor for ExecutionDeviceResolutionFlow);
  return sub_269852B54();
}

uint64_t sub_2696FDD8C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2698538B4();
  v2[9] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v2[10] = v4;
  v6 = *(v5 + 64);
  v2[11] = OUTLINED_FUNCTION_4_7();
  v7 = sub_269854774();
  v2[12] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v2[13] = v8;
  v10 = *(v9 + 64);
  v2[14] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269851DA4();
  v2[15] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v2[16] = v12;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v15 = sub_2698548D4();
  v2[19] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v2[20] = v16;
  v18 = *(v17 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v19 = sub_2698545B4();
  OUTLINED_FUNCTION_8_9(v19);
  v21 = *(v20 + 64);
  v2[25] = OUTLINED_FUNCTION_4_7();
  v22 = sub_2698545E4();
  v2[26] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v2[27] = v23;
  v25 = *(v24 + 64);
  v2[28] = OUTLINED_FUNCTION_4_7();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v26);
  v28 = *(v27 + 64);
  v2[29] = OUTLINED_FUNCTION_4_7();
  v29 = sub_269853854();
  v2[30] = v29;
  OUTLINED_FUNCTION_5_12(v29);
  v2[31] = v30;
  v32 = *(v31 + 64);
  v2[32] = OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

void sub_2696FE040()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input;
  swift_beginAccess();
  sub_26970272C(v3 + v4, v1, &qword_280323AF8, &unk_26985C1D0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v5 = sub_26969B0C0(v0[29], &qword_280323AF8, &unk_26985C1D0);
    if (qword_2803226E0 != -1)
    {
      v5 = OUTLINED_FUNCTION_0_10();
    }

    v6 = v0[22];
    v7 = v0[19];
    v8 = v0[20];
    OUTLINED_FUNCTION_29_2(v5, qword_28033D910);
    (*(v8 + 16))(v6);
    v9 = sub_2698548B4();
    v10 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_269684000, v9, v10, "ExecutionDeviceResolutionFlow.execute() Input is nil. Error executing request", v11, 2u);
      OUTLINED_FUNCTION_10();
    }

    v12 = v0[22];
    v15 = v0 + 19;
    v14 = v0[19];
    v13 = v15[1];

    (*(v13 + 8))(v12, v14);
    sub_269855354();
    OUTLINED_FUNCTION_7_8();
  }

  else
  {
    v16 = v0[8];
    (*(v0[31] + 32))(v0[32], v0[29], v0[30]);
    v17 = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
    v0[33] = OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
    v18 = v16 + v17;
    if (*(v18 + 8) < 3u || *v18)
    {
      v20 = v0[31];
      v19 = v0[32];
      v21 = v0[30];
      v22 = v0[7];
      sub_269853164();
      (*(v20 + 8))(v19, v21);
      OUTLINED_FUNCTION_1_14();

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_7_8();

      __asm { BRAA            X1, X16 }
    }

    v25 = v0[8];
    v26 = v25[26];
    __swift_project_boxed_opaque_existential_1(v25 + 22, v25[25]);
    v27 = *__swift_project_boxed_opaque_existential_1(v25 + 2, v25[5]);
    v0[34] = sub_269702BDC();
    v28 = *(MEMORY[0x277D61F20] + 4);
    v29 = swift_task_alloc();
    v0[35] = v29;
    *v29 = v0;
    v29[1] = sub_2696FE3B8;
    OUTLINED_FUNCTION_7_8();

    MEMORY[0x2821C8A68]();
  }
}

uint64_t sub_2696FE3B8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 280);
  v9 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  v5[36] = v1;

  if (!v1)
  {
    v11 = v5[34];

    v5[37] = a1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2696FE4D4()
{
  v1 = v0[8];
  v0[5] = v0[37];
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v3 = OUTLINED_FUNCTION_11_11();
  if (sub_2696CB5D4(v3, v4))
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v9 = v0[8];
    sub_2698545D4();
    sub_2698545A4();
    sub_2698545C4();
    v10 = v9[25];
    v11 = v9[26];
    __swift_project_boxed_opaque_existential_1(v9 + 22, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B00, &unk_26985C1E0);
    v12 = *(v6 + 72);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    v0[38] = v14;
    *(v14 + 16) = xmmword_269857710;
    (*(v6 + 16))(v14 + v13, v5, v8);
    v15 = *(MEMORY[0x277D61F30] + 4);
    v16 = swift_task_alloc();
    v0[39] = v16;
    *v16 = v0;
    v16[1] = sub_2696FE6D4;

    return MEMORY[0x2821C8A78](v14, 0, v10, v11);
  }

  else
  {
    v0[42] = v0[37];
    v17 = v0[32];
    v18 = v0[11];
    v19 = __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
    sub_269853844();
    v20 = *v19;
    v21 = swift_task_alloc();
    v0[43] = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_7_18(v21);

    return sub_269702C44();
  }
}

uint64_t sub_2696FE6D4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v4 = v3;
  v5 = *(v2 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v7 = v6;
  *(v9 + 320) = v8;
  *(v9 + 328) = v0;

  v10 = *(v2 + 304);

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2696FE804(uint64_t a1)
{
  v79 = v1;
  if (qword_2803226E0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v3 = v1[40];
    v4 = v1[24];
    v5 = v1[19];
    v6 = v1[20];
    OUTLINED_FUNCTION_29_2(a1, qword_28033D910);
    v8 = *(v6 + 16);
    v7 = v6 + 16;
    v66 = v8;
    v67 = v9;
    (v8)(v4);

    v10 = sub_2698548B4();
    v11 = sub_269854F14();
    v12 = OUTLINED_FUNCTION_19_4(v11);
    v13 = v1[40];
    if (v12)
    {
      v14 = OUTLINED_FUNCTION_27_2();
      *v14 = 134217984;
      *(v14 + 4) = sub_26975004C(v13);

      _os_log_impl(&dword_269684000, v10, v11, "ExecutionDeviceResolutionFlow.execute() Found %ld matchpoint devices", v14, 0xCu);
      OUTLINED_FUNCTION_10();
    }

    else
    {
      v15 = v1[40];
    }

    v16 = v1[40];
    v17 = *(v1[20] + 8);
    v17(v1[24], v1[19]);
    v18 = sub_26975004C(v16);
    v68 = v17;
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v78 = MEMORY[0x277D84F90];
    result = sub_26981523C(0, v18 & ~(v18 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v65 = v7;
    v21 = 0;
    v22 = v1[40];
    v23 = v78;
    v74 = v1;
    v75 = v22 & 0xC000000000000001;
    v69 = v22 + 32;
    v70 = v22 & 0xFFFFFFFFFFFFFF8;
    v71 = (v1[13] + 8);
    v72 = (v1[16] + 8);
    v73 = v19;
    while (1)
    {
      v77 = v23;
      if (v75)
      {
        v24 = MEMORY[0x26D646120](v21, v1[40]);
        goto LABEL_13;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v21 >= *(v70 + 16))
      {
        goto LABEL_24;
      }

      v24 = *(v69 + 8 * v21);
LABEL_13:
      v25 = v24;
      v27 = v1[17];
      v26 = v1[18];
      v29 = v1[14];
      v28 = v1[15];
      v76 = v1[12];
      v30 = [v24 uniqueIdentifier];
      sub_269851D74();

      sub_269851D54();
      v2 = v31;
      v32 = *v72;
      (*v72)(v26, v28);
      v33 = [v25 uniqueIdentifier];
      sub_269851D74();

      sub_269851D54();
      v32(v27, v28);
      *(swift_allocObject() + 16) = v25;
      v34 = objc_allocWithZone(sub_269854664());
      v35 = v25;
      v36 = sub_2698545F4();
      sub_269854764();
      sub_269854744();
      v37 = sub_269854754();
      (*v71)(v29, v76);

      v23 = v77;
      v78 = v77;
      v39 = *(v77 + 16);
      v38 = *(v77 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_26981523C(v38 > 1, v39 + 1, 1);
        v23 = v78;
      }

      ++v21;
      *(v23 + 16) = v39 + 1;
      v40 = v23 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
      v1 = v74;
      if (v73 == v21)
      {
        v41 = v74[40];

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    a1 = OUTLINED_FUNCTION_0_10();
  }

  v42 = v1[40];

  v23 = MEMORY[0x277D84F90];
LABEL_18:
  v66(v1[23], v67, v1[19]);

  v43 = sub_2698548B4();
  v44 = sub_269854F14();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v1[23];
  v47 = v1[19];
  if (v45)
  {
    OUTLINED_FUNCTION_27_2();
    v48 = OUTLINED_FUNCTION_16_8();
    v78 = v48;
    *v2 = 136315138;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B08, &unk_269867D80);
    v50 = MEMORY[0x26D645BC0](v23, v49);
    v52 = sub_26974F520(v50, v51, &v78);

    *(v2 + 4) = v52;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v53, v54, "ExecutionDeviceResolutionFlow.execute() Found matchpoint devices: %s");
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v68(v46, v47);
  v55 = v1[41];
  v56 = v1[27];
  v57 = v1[28];
  v58 = v1[26];
  v59 = sub_2696FD804(v23);
  sub_269701F08(v59, sub_2697027B4, 0, v1 + 5);
  (*(v56 + 8))(v57, v58);
  v1[42] = v1[5];
  v60 = v1[32];
  v61 = v1[11];
  v62 = __swift_project_boxed_opaque_existential_1((v1[8] + 16), *(v1[8] + 40));
  sub_269853844();
  v63 = *v62;
  v64 = swift_task_alloc();
  v1[43] = v64;
  *v64 = v1;
  OUTLINED_FUNCTION_7_18(v64);

  return sub_269702C44();
}

uint64_t sub_2696FED84()
{
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = v3[43];
  v5 = v3[42];
  v6 = v3[11];
  v7 = v3[10];
  v8 = v3[9];
  v9 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  *(v12 + 352) = v11;
  *(v12 + 360) = v13;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2696FEEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  v15 = *(v14 + 352);
  v17 = *(v14 + 248);
  v16 = *(v14 + 256);
  v18 = *(v14 + 240);
  v19 = *(v14 + 64);
  v20 = *(v14 + 360);
  sub_2697007B0(v15, v20, *(v14 + 56));
  sub_26970277C(v15, v20);
  (*(v17 + 8))(v16, v18);
  OUTLINED_FUNCTION_1_14();
  v32 = v22;
  v33 = v21;

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_2696FEFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[34];

  v26 = v22[36];
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v28 = v22[20];
  v27 = v22[21];
  __swift_project_value_buffer(v22[19], qword_28033D910);
  v29 = OUTLINED_FUNCTION_11_4();
  v30(v29);
  v31 = v26;
  v32 = sub_2698548B4();
  v33 = sub_269854F24();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v22[20];
  v36 = v22[21];
  v37 = v22[19];
  if (v34)
  {
    OUTLINED_FUNCTION_27_2();
    v38 = OUTLINED_FUNCTION_16_8();
    a11 = v38;
    *v36 = 136315138;
    v22[6] = v26;
    v39 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v40 = sub_269854AE4();
    v42 = sub_26974F520(v40, v41, &a11);

    *(v36 + 4) = v42;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v43, v44, "Failure getting devicesMatching: %s");
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v35 + 8))(v36, v37);
  v45 = v22[36];
  v46 = v22[32];
  v47 = v22[30];
  v48 = v22[31];
  v49 = v22[7];
  v50 = OUTLINED_FUNCTION_2_14((v22[8] + v22[33]));
  sub_2697017F4(v50, v51);
  sub_269853164();

  (*(v48 + 8))(v46, v47);
  if (!v45)
  {
    v52 = v22[5];
  }

  OUTLINED_FUNCTION_1_14();
  v64 = v54;
  v65 = v53;

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, v64, v65, a11, a12, a13, a14);
}

uint64_t sub_2696FF250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  (*(v22[27] + 8))(v22[28], v22[26]);
  v25 = v22[41];
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v27 = v22[20];
  v26 = v22[21];
  __swift_project_value_buffer(v22[19], qword_28033D910);
  v28 = OUTLINED_FUNCTION_11_4();
  v29(v28);
  v30 = v25;
  v31 = sub_2698548B4();
  v32 = sub_269854F24();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v22[20];
  v35 = v22[21];
  v36 = v22[19];
  if (v33)
  {
    OUTLINED_FUNCTION_27_2();
    v37 = OUTLINED_FUNCTION_16_8();
    a11 = v37;
    *v35 = 136315138;
    v22[6] = v25;
    v38 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v39 = sub_269854AE4();
    v41 = sub_26974F520(v39, v40, &a11);

    *(v35 + 4) = v41;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v42, v43, "Failure getting devicesMatching: %s");
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v34 + 8))(v35, v36);
  v44 = v22[36];
  v45 = v22[32];
  v46 = v22[30];
  v47 = v22[31];
  v48 = v22[7];
  v49 = OUTLINED_FUNCTION_2_14((v22[8] + v22[33]));
  sub_2697017F4(v49, v50);
  sub_269853164();

  (*(v47 + 8))(v45, v46);
  if (!v44)
  {
    v51 = v22[5];
  }

  OUTLINED_FUNCTION_1_14();
  v63 = v53;
  v64 = v52;

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, v63, v64, a11, a12, a13, a14);
}

void sub_2696FF4BC(void *a1, id a2)
{
  v4 = [a2 room];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 name];

    sub_269854A94();
    v5 = sub_269854A64();
  }

  [a1 setRoomName_];

  v7 = [a2 name];
  if (!v7)
  {
    sub_269854A94();
    v7 = sub_269854A64();
  }

  [a1 setName_];

  v8 = [a2 deviceIdentifier];
  if (!v8)
  {
    sub_269854A94();
    v8 = sub_269854A64();
  }

  [a1 setMediaRouteIdentifier_];

  v9 = [a2 category];
  v10 = [v9 categoryType];

  if (!v10)
  {
    sub_269854A94();
    v10 = sub_269854A64();
  }

  [a1 setHomeKitAccessoryIdentifier_];
}

void sub_2696FF698(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v78 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v77 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AE8, &qword_26985C1C8);
  OUTLINED_FUNCTION_3_20();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_12();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = (&v72 - v24);
  v26 = v16[2];
  v26(&v72 - v24, a1, v14);
  v27 = v16[11];
  v28 = OUTLINED_FUNCTION_98();
  v30 = v29(v28);
  if (v30 == *MEMORY[0x277D5BC38])
  {
    v31 = v16[12];
    v32 = OUTLINED_FUNCTION_98();
    v33(v32);
    v34 = *v25;
    v35 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    if (sub_269852D14())
    {
      v36 = *__swift_project_boxed_opaque_existential_1(v2 + 27, v2[30]);
      sub_2696C78DC(v34, 0, 1);
    }

    v37 = OUTLINED_FUNCTION_6_15();
    *v38 = v34;
    v39 = *(v38 + 8);
    v40 = 1;
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D5BC30])
  {
    v41 = v16[1];
    v42 = OUTLINED_FUNCTION_98();
    v43(v42);
    goto LABEL_8;
  }

  if (v30 == *MEMORY[0x277D5BC40])
  {
    v37 = OUTLINED_FUNCTION_6_15();
    *v38 = 2;
    v39 = *(v38 + 8);
    v40 = 3;
LABEL_5:
    *(v38 + 8) = v40;
LABEL_9:
    sub_2697017F4(v37, v39);
    v45 = v78;
    goto LABEL_10;
  }

  if (v30 == *MEMORY[0x277D5BC28])
  {
LABEL_8:
    v22 = &unk_28033D000;
    v37 = OUTLINED_FUNCTION_2_14((v2 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state));
    goto LABEL_9;
  }

  if (qword_2803226E0 != -1)
  {
    v30 = OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_29_2(v30, qword_28033D910);
  (*(v78 + 16))(v77);
  v26(v22, a1, v14);
  v55 = sub_2698548B4();
  v56 = sub_269854F24();
  if (OUTLINED_FUNCTION_19_4(v56))
  {
    v57 = OUTLINED_FUNCTION_27_2();
    v75 = v57;
    v76 = swift_slowAlloc();
    v79 = v76;
    *v57 = 136315138;
    sub_269693204(&qword_280323AF0, &qword_280323AE8, &qword_26985C1C8);
    v74 = v55;
    v72 = sub_269855544();
    v59 = v58;
    v60 = v16[1];
    v73 = v56;
    v61 = OUTLINED_FUNCTION_24_5();
    v60(v61);
    v62 = v60;
    v63 = sub_26974F520(v72, v59, &v79);

    v65 = v74;
    v64 = v75;
    *(v75 + 1) = v63;
    _os_log_impl(&dword_269684000, v65, v73, "ExecutionDeviceResolutionFlow.processDisambigautionResult() received unknown result: %s. Setting flow to .failure state.", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    v66 = v16[1];
    v67 = OUTLINED_FUNCTION_24_5();
    v66(v67);
    v62 = v66;
  }

  v68 = v78;
  (*(v78 + 8))(v77, v4);
  v45 = v68;
  v22 = &unk_28033D000;
  v69 = OUTLINED_FUNCTION_2_14((v2 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state));
  sub_2697017F4(v69, v70);
  v71 = OUTLINED_FUNCTION_98();
  v44 = v62(v71);
LABEL_10:
  if (qword_280322700 != -1)
  {
    v44 = swift_once();
  }

  OUTLINED_FUNCTION_29_2(v44, qword_281571B38);
  (*(v45 + 16))(v11);

  v46 = sub_2698548B4();
  v47 = sub_269854F14();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_27_2();
    v49 = swift_slowAlloc();
    v81 = v49;
    *v48 = 136315138;
    v50 = v2 + *(v22 + 203);
    v51 = v50[8];
    v79 = *v50;
    v80 = v51;
    sub_269702708(v79, v51);
    v52 = sub_269854AE4();
    v54 = sub_26974F520(v52, v53, &v81);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_269684000, v46, v47, "ExecutionDeviceResolutionFlow.processDisambigautionResult() state after processDisambigautionResult: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  (*(v45 + 8))(v11, v4);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2696FFC6C(uint64_t a1, int a2)
{
  v101 = a2;
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  v107 = v4;
  v108 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v106 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v100 = &v98 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323540, &qword_26985B830);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = (&v98 - v15);
  v16 = sub_269853824();
  isa = v16[-1].isa;
  v104 = v16;
  v17 = *(isa + 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AD8, &qword_26985C1C0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v98 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v98 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v98 - v28;
  v105 = v2;
  if (*(v2 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state + 8))
  {
    result = sub_269855354();
    __break(1u);
    return result;
  }

  v109 = v2 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
  v30 = *(v2 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state);
  v31 = *(v21 + 16);
  v99 = a1;
  v31(&v98 - v28, a1, v20);
  v32 = (*(v21 + 88))(v29, v20);
  if (v32 == *MEMORY[0x277D5BC38])
  {
    (*(v21 + 96))(v29, v20);
    v34 = isa;
    v33 = v104;
    (*(isa + 4))(v19, v29, v104);
    v100 = v30;
    v35 = v30;
    v36 = v102;
    sub_269853794();
    v37 = sub_269853414();
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
    {
      (*(v34 + 1))(v19, v33);
      v38 = v107;
      v39 = v108;
      v40 = v106;
LABEL_5:
      v41 = v109;
      v42 = *v109;
      *v109 = 3;
      v43 = v41[8];
      v41[8] = 3;
      sub_2697017F4(v42, v43);
      v44 = v100;
LABEL_24:
      sub_26969B0C0(v36, &qword_280323540, &qword_26985B830);
      goto LABEL_25;
    }

    sub_26970272C(v36, v14, &qword_280323540, &qword_26985B830);
    v51 = *(v37 - 8);
    v52 = (*(v51 + 88))(v14, v37);
    v38 = v107;
    v39 = v108;
    v40 = v106;
    if (v52 == *MEMORY[0x277D5BED8])
    {
      v53 = v105;
      v54 = v105[11];
      __swift_project_boxed_opaque_existential_1(v105 + 7, v105[10]);
      if (sub_269852D14())
      {
        sub_2696A73F8((v53 + 27), &v110);
        v55 = *__swift_project_boxed_opaque_existential_1(&v110, v112);
        if (v101)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        sub_2696C78DC(v35, 0, v56);
        __swift_destroy_boxed_opaque_existential_0(&v110);
      }

      __swift_project_boxed_opaque_existential_1(v53 + 32, v53[35]);
      v57 = sub_269854654();
      sub_2697B4540(2, v57);
      (*(isa + 1))(v19, v104);
      v58 = v109;
      v59 = *v109;
      v44 = v100;
      *v109 = v100;
      v60 = v58[8];
      v58[8] = 1;
      v61 = v35;
      sub_2697017F4(v59, v60);
    }

    else
    {
      if (v52 != *MEMORY[0x277D5BED0])
      {
        (*(isa + 1))(v19, v104);
        (*(v51 + 8))(v14, v37);
        goto LABEL_5;
      }

      v63 = v105;
      v64 = v105[11];
      __swift_project_boxed_opaque_existential_1(v105 + 7, v105[10]);
      if (sub_269852D14() & 1) != 0 && (v101)
      {
        v65 = *__swift_project_boxed_opaque_existential_1(v63 + 27, v63[30]);
        sub_2696C78DC(v35, 0, 4);
      }

      __swift_project_boxed_opaque_existential_1(v63 + 32, v63[35]);
      v66 = sub_269854654();
      sub_2697B4540(4, v66);
      (*(isa + 1))(v19, v104);
      v67 = v109;
      v68 = *v109;
      *v109 = 2;
      v69 = v67[8];
      v67[8] = 3;
      sub_2697017F4(v68, v69);
      v44 = v100;
    }

    v36 = v102;
    goto LABEL_24;
  }

  v45 = v30;
  if (v32 == *MEMORY[0x277D5BC30])
  {
    v46 = *(v21 + 8);
    v44 = v30;
    v47 = v30;
    v46(v29, v20);
  }

  else
  {
    v44 = v30;
    if (v32 == *MEMORY[0x277D5BC40])
    {
      v39 = v108;
      v62 = v109;
      *v109 = 2;
      v62[8] = 3;
      v40 = v106;
      v38 = v107;
      goto LABEL_25;
    }

    if (v32 != *MEMORY[0x277D5BC28])
    {
      v81 = v109;
      *v109 = 3;
      v81[8] = 3;
      if (qword_2803226E0 != -1)
      {
        swift_once();
      }

      v82 = v107;
      v83 = __swift_project_value_buffer(v107, qword_28033D910);
      v84 = v108;
      v85 = v100;
      (*(v108 + 16))(v100, v83, v82);
      v31(v27, v99, v20);
      v86 = sub_2698548B4();
      LODWORD(isa) = sub_269854F24();
      v104 = v86;
      if (os_log_type_enabled(v86, isa))
      {
        v87 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v110 = v102;
        *v87 = 136315138;
        v88 = v98;
        v31(v98, v27, v20);
        v89 = *(v21 + 8);
        v89(v27, v20);
        sub_269693204(&qword_280323AE0, &qword_280323AD8, &qword_26985C1C0);
        v90 = sub_269855544();
        v92 = v91;
        v89(v88, v20);
        v93 = sub_26974F520(v90, v92, &v110);

        *(v87 + 4) = v93;
        v94 = v104;
        _os_log_impl(&dword_269684000, v104, isa, "ExecutionDeviceResolutionFlow.processConfirmationResult() received unknown result: %s. Setting flow to .failure state.", v87, 0xCu);
        v95 = v102;
        __swift_destroy_boxed_opaque_existential_0(v102);
        MEMORY[0x26D647170](v95, -1, -1);
        MEMORY[0x26D647170](v87, -1, -1);

        v96 = *(v108 + 8);
        v97 = v100;
      }

      else
      {
        v89 = *(v21 + 8);
        v89(v27, v20);

        v96 = *(v84 + 8);
        v97 = v85;
      }

      v38 = v107;
      v96(v97, v107);
      v89(v29, v20);
      v39 = v108;
      v40 = v106;
      v44 = v45;
      goto LABEL_25;
    }

    v80 = v30;
  }

  v40 = v106;
  v38 = v107;
  v48 = v109;
  v49 = *v109;
  *v109 = 3;
  v50 = v48[8];
  v48[8] = 3;
  sub_2697017F4(v49, v50);
  v39 = v108;
LABEL_25:
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v38, qword_281571B38);
  (*(v39 + 16))(v40, v70, v38);

  v71 = sub_2698548B4();
  v72 = sub_269854F14();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v113 = v74;
    *v73 = 136315138;
    v75 = v109[8];
    v110 = *v109;
    v111 = v75;
    sub_269702708(v110, v75);
    v76 = sub_269854AE4();
    v78 = sub_26974F520(v76, v77, &v113);

    *(v73 + 4) = v78;
    _os_log_impl(&dword_269684000, v71, v72, "ExecutionDeviceResolutionFlow.processConfirmationResult() state after processConfirmationResult: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x26D647170](v74, -1, -1);
    MEMORY[0x26D647170](v73, -1, -1);

    sub_2697017F4(v44, 0);
  }

  else
  {
    sub_2697017F4(v44, 0);
  }

  return (*(v39 + 8))(v40, v38);
}

void sub_2697007B0(void *a1@<X0>, unsigned __int8 a2@<W1>, uint8_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v73 - v18;
  switch(a2 >> 6)
  {
    case 1:
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v74 = a3;
      v44 = __swift_project_value_buffer(v8, qword_28033D910);
      (*(v10 + 16))(v16, v44, v8);
      v45 = sub_2698548B4();
      v46 = sub_269854F14();
      if (os_log_type_enabled(v45, v46))
      {
        a3 = swift_slowAlloc();
        *a3 = 0;
        _os_log_impl(&dword_269684000, v45, v46, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult() Prompting for device confirmation", a3, 2u);
        OUTLINED_FUNCTION_10();
      }

      (*(v10 + 8))(v16, v8);
      sub_2696A73F8(v4 + 56, v82);
      sub_2696A73F8(v4 + 96, v80);
      sub_2696A73F8(v4 + 56, &v78);
      sub_26968E5D4(&v78, v77);
      sub_2696A73F8(v4 + 336, v76);
      __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
      v73[1] = v73;
      OUTLINED_FUNCTION_3_20();
      v48 = *(v47 + 64);
      MEMORY[0x28223BE20](v49);
      OUTLINED_FUNCTION_3_1();
      v51 = OUTLINED_FUNCTION_20_8(v50);
      v52(v51);
      v53 = *a3;
      __swift_destroy_boxed_opaque_existential_0(v77);
      v54 = type metadata accessor for BaseDialogProvider();
      v75[3] = v54;
      v75[4] = &off_287A3DBA0;
      v75[0] = v53;
      type metadata accessor for DeviceConfirmationStrategy();
      v55 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v75, v54);
      OUTLINED_FUNCTION_3_20();
      v57 = *(v56 + 64);
      MEMORY[0x28223BE20](v58);
      OUTLINED_FUNCTION_3_1();
      v60 = OUTLINED_FUNCTION_20_8(v59);
      v61(v60);
      v62 = *a3;
      v55[10] = v54;
      v55[11] = &off_287A3DBA0;
      v55[7] = v62;
      sub_2696A73F8(v82, (v55 + 2));
      type metadata accessor for LocUtil();
      v63 = swift_allocObject();
      sub_26968E5D4(v82, v63 + 16);
      v55[12] = v63;
      sub_26968E5D4(v76, (v55 + 13));
      __swift_destroy_boxed_opaque_existential_0(v75);
      __swift_destroy_boxed_opaque_existential_0(v80);
      sub_2696A73F8(v4 + 136, v82);
      v80[0] = a1;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AA8, &qword_26985C1A8);
      v65 = *(v64 + 48);
      v66 = *(v64 + 52);
      swift_allocObject();
      sub_269701828(a1, a2);
      sub_2697027F0(&qword_280323AB0, type metadata accessor for DeviceConfirmationStrategy);

      v67 = sub_269852984();
      v68 = v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
      v69 = *(v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state);
      *v68 = a1;
      v70 = *(v68 + 8);
      *(v68 + 8) = 0;
      sub_269701828(a1, a2);
      sub_2697017F4(v69, v70);
      *&v82[0] = v67;
      v71 = swift_allocObject();
      *(v71 + 16) = v4;
      *(v71 + 24) = a2 & 1;
      sub_269693204(&qword_280323AB8, &qword_280323AA8, &qword_26985C1A8);

      sub_269853124();

      goto LABEL_17;
    case 2:
      v39 = v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
      v40 = *(v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state);
      *v39 = a1;
      v41 = *(v39 + 8);
      *(v39 + 8) = 1;
      v42 = a1;
      goto LABEL_22;
    case 3:
      v43 = v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
      v40 = *(v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state);
      v41 = *(v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state + 8);
      if (a1 == 2)
      {
        *v43 = 2;
        *(v43 + 8) = 2;
      }

      else
      {
        if (a1 == 1)
        {
          *v43 = 1;
          goto LABEL_19;
        }

        if (!a1)
        {
          *v43 = 0;
LABEL_19:
          *(v43 + 8) = 2;
          goto LABEL_22;
        }

        *v43 = a1;
        *(v43 + 8) = 2;
        sub_2697017E4(a1);
      }

LABEL_22:
      sub_2697017F4(v40, v41);
      OUTLINED_FUNCTION_21_0();

      sub_269853164();
      return;
    default:
      v20 = qword_2803226E0;

      if (v20 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v74 = a3;
      v21 = __swift_project_value_buffer(v8, qword_28033D910);
      (*(v10 + 16))(v19, v21, v8);
      v22 = sub_2698548B4();
      v23 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_4(v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_269684000, v22, v23, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult() Requesting device dismbiguation", v24, 2u);
        OUTLINED_FUNCTION_10();
      }

      (*(v10 + 8))(v19, v8);
      sub_2696A73F8(v4 + 56, v82);
      sub_2696A73F8(v4 + 96, v80);
      sub_2696A73F8(v4 + 256, &v78);
      sub_2696A73F8(v4 + 336, v76);
      __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
      OUTLINED_FUNCTION_3_20();
      v26 = *(v25 + 64);
      MEMORY[0x28223BE20](v27);
      OUTLINED_FUNCTION_3_1();
      v30 = (v29 - v28);
      (*(v31 + 16))(v29 - v28);
      __swift_mutable_project_boxed_opaque_existential_1(&v78, v79);
      sub_269702560(v82, *v30, v76);
      __swift_destroy_boxed_opaque_existential_0(&v78);
      __swift_destroy_boxed_opaque_existential_0(v80);
      sub_2696A73F8(v4 + 136, v82);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AC0, &unk_26985C1B0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      type metadata accessor for DeviceDisambiguationStrategy();
      sub_2697027F0(&qword_280323AC8, type metadata accessor for DeviceDisambiguationStrategy);

      v35 = sub_2698529D4();
      v36 = v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state;
      v37 = *(v4 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state);
      *v36 = 1;
      v38 = *(v36 + 8);
      *(v36 + 8) = 3;
      sub_2697017F4(v37, v38);
      *&v82[0] = v35;
      sub_269693204(&qword_280323AD0, &qword_280323AC0, &unk_26985C1B0);

      sub_269853124();

LABEL_17:

      OUTLINED_FUNCTION_21_0();
      return;
  }
}

uint64_t *sub_2697010BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_input, &qword_280323AF8, &unk_26985C1D0);
  sub_2697017F4(*(v0 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state), *(v0 + OBJC_IVAR____TtC16SiriVideoIntents29ExecutionDeviceResolutionFlow_state + 8));
  return v0;
}

uint64_t sub_269701154()
{
  sub_2697010BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecutionDeviceResolutionFlow()
{
  result = qword_280323A90;
  if (!qword_280323A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269701200()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2697012B4()
{
  if (!qword_280323AA0)
  {
    sub_269853854();
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280323AA0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents24DeviceNoneSelectedReasonO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents29ExecutionDeviceResolutionFlowC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_269701354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_269701394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2697013D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_269701428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2697014D8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2697014D8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

uint64_t sub_2697015EC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269701688;

  return sub_2696FDD8C(a1);
}

uint64_t sub_269701688()
{
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_7_7();

  return v5();
}

BOOL sub_26970176C@<W0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_2696FDB38();
  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

unint64_t sub_2697017A0()
{
  result = qword_2815718B8;
  if (!qword_2815718B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2815718B8);
  }

  return result;
}

unint64_t sub_2697017E4(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void sub_2697017F4(id a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    sub_269701818(a1);
  }

  else if (a2 <= 1u)
  {
  }
}

unint64_t sub_269701818(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

id sub_269701828(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:
      result = a1;
      break;
    case 3:
      result = sub_2697017E4(a1);
      break;
    default:

      break;
  }

  return result;
}

uint64_t sub_269701858(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_2696FFC6C(a1, v2);
}

uint64_t sub_269701884(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B10, &qword_26985C1F0);
    v2 = sub_2698553B4();
    v18 = v2;
    sub_269855314();
    while (1)
    {
      v3 = sub_269855334();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      sub_269854664();
      swift_dynamicCast();
      sub_269854704();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_26980E594(v4 + 1, 1);
      }

      v2 = v18;
      v5 = *(v18 + 40);
      result = sub_269855054();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_269701A78(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_26970203C(a1, a2, a3, &v29);

  while (1)
  {
    sub_2697023F8();
    if (!v7)
    {
      sub_26968E614();
    }

    v9 = v7;
    v10 = v8;
    v11 = *a5;
    v13 = sub_26973D178();
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B18, &qword_26985C1F8);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E594(v16, a4 & 1);
      v18 = *a5;
      v19 = sub_26973D178();
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_16;
      }

      v13 = v19;
    }

    v21 = *a5;
    if (v17)
    {
      v22 = *(v21[7] + 8 * v13);

      v23 = v21[7];
      v24 = *(v23 + 8 * v13);
      *(v23 + 8 * v13) = v22;

      a4 = 1;
    }

    else
    {
      v21[(v13 >> 6) + 8] |= 1 << v13;
      *(v21[6] + 8 * v13) = v9;
      *(v21[7] + 8 * v13) = v10;
      v25 = v21[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_15;
      }

      v21[2] = v27;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_269854664();
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_269701C68(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);

    v11 = sub_26973D178();
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v8[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B18, &qword_26985C1F8);
        sub_2698552F4();
      }
    }

    else
    {
      sub_26980E594(v14, a2 & 1);
      v16 = *a3;
      v17 = sub_26973D178();
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v11 = v17;
    }

    v19 = *a3;
    if (v15)
    {

      v20 = v19[7];
      v21 = *(v20 + 8 * v11);
      *(v20 + 8 * v11) = v7;
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      *(v19[6] + 8 * v11) = v9;
      *(v19[7] + 8 * v11) = v7;
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v19[2] = v24;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_269854664();
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_269701E10(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_269701E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_269853904();
  OUTLINED_FUNCTION_4_3(v7);
  (*(v8 + 16))(a1, a4);

  return a2;
}

id sub_269701ED0(void *a1, void *a2, uint64_t a3)
{
  *a1 = a3;
  v3 = a2;

  return v3;
}

uint64_t sub_269701F08(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *a4;

    v12 = sub_269855324();
    v16 = sub_269701884(v10, v12);
    sub_269701A78(a1, a2, a3, 1, &v16);
    if (v4)
    {
    }
  }

  else
  {
    v14 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a4;
    result = sub_269701A78(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v16);
  }

  *a4 = v16;
  return result;
}

uint64_t sub_269702000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_26970203C@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_269855314();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2697020D4(uint64_t a1@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  v3 = OUTLINED_FUNCTION_4_3(v51);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - v6;
  v8 = sub_269853904();
  OUTLINED_FUNCTION_3_20();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B30, &qword_26985C368);
  v18 = OUTLINED_FUNCTION_8_9(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12();
  v53 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  v26 = *v1;
  v27 = v1[1];
  v28 = v1[2];
  v29 = v1[3];
  v30 = v1[4];
  v48 = v7;
  v52 = v28;
  if (v30)
  {
    v50 = a1;
    v31 = v29;
LABEL_7:
    v49 = (v30 - 1) & v30;
    v32 = __clz(__rbit64(v30)) | (v31 << 6);
    v33 = (*(v26 + 48) + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    (*(v10 + 16))(v16, *(v26 + 56) + *(v10 + 72) * v32, v8);
    v36 = v51;
    v37 = *(v51 + 48);
    *v25 = v34;
    *(v25 + 1) = v35;
    v38 = v16;
    v39 = v36;
    (*(v10 + 32))(&v25[v37], v38, v8);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v39);

    v40 = v49;
    a1 = v50;
LABEL_8:
    *v1 = v26;
    v1[1] = v27;
    v41 = v53;
    v1[2] = v52;
    v1[3] = v29;
    v1[4] = v40;
    v42 = v1[5];
    v43 = v1[6];
    sub_269702A58(v25, v41, &qword_280323B30, &qword_26985C368);
    v44 = 1;
    if (__swift_getEnumTagSinglePayload(v41, 1, v39) != 1)
    {
      v45 = v41;
      v46 = v48;
      sub_269702A58(v45, v48, &qword_280323B28, &qword_26985C360);
      v42(v46);
      sub_26969B0C0(v46, &qword_280323B28, &qword_26985C360);
      v44 = 0;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B38, &qword_26985C370);
    __swift_storeEnumTagSinglePayload(a1, v44, 1, v47);
    OUTLINED_FUNCTION_21_0();
  }

  else
  {
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= ((v28 + 64) >> 6))
      {
        v39 = v51;
        __swift_storeEnumTagSinglePayload(&v48 - v24, 1, 1, v51);
        v40 = 0;
        goto LABEL_8;
      }

      v30 = *(v27 + 8 * v31);
      ++v29;
      if (v30)
      {
        v50 = a1;
        v29 = v31;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_2697023F8()
{
  v1 = v0;
  v2 = *v0;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    if (sub_269855334())
    {
      v7 = v6;
      sub_269854664();
      swift_dynamicCast();
      v8 = v16[0];
      v15 = v7;
      sub_269854704();
      swift_dynamicCast();
      v9 = v16[0];
      if (v16[0])
      {
LABEL_13:
        v13 = v1[5];
        v14 = v1[6];
        v16[0] = v8;
        v16[1] = v9;
        v13(&v15, v16);
      }
    }
  }

  else
  {
    v4 = v0[3];
    v3 = v1[4];
    if (v3)
    {
      v5 = v1[3];
LABEL_11:
      v10 = (v3 - 1) & v3;
      v11 = (v5 << 9) | (8 * __clz(__rbit64(v3)));
      v8 = *(*(v2 + 48) + v11);
      v9 = *(*(v2 + 56) + v11);
      v12 = v8;

LABEL_12:
      v1[3] = v4;
      v1[4] = v10;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      while (1)
      {
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v5 >= ((v1[2] + 64) >> 6))
        {
          v9 = 0;
          v8 = 0;
          v10 = 0;
          goto LABEL_12;
        }

        v3 = *(v1[1] + 8 * v5);
        ++v4;
        if (v3)
        {
          v4 = v5;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void *sub_269702560(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v6 = type metadata accessor for BaseDialogProvider();
  v19[3] = v6;
  v19[4] = &off_287A3DBA0;
  v19[0] = a2;
  v17 = &type metadata for CoreAnalyticsService;
  v18 = &xmmword_287A41610;
  type metadata accessor for DeviceDisambiguationStrategy();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v19, v6);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v13 = *v11;
  v7[15] = v6;
  v7[16] = &off_287A3DBA0;
  v7[12] = v13;
  v7[20] = &type metadata for CoreAnalyticsService;
  v7[21] = &xmmword_287A41610;
  sub_2696A73F8(a1, (v7 + 2));
  sub_2696A73F8((v7 + 12), (v7 + 7));
  type metadata accessor for LocUtil();
  v14 = swift_allocObject();
  sub_26968E5D4(a1, v14 + 16);
  v7[22] = v14;
  sub_26968E5D4(a3, (v7 + 23));
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v7;
}

id sub_269702708(id result, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return sub_2697017E4(result);
  }

  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_26970272C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

void sub_26970277C(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:

      break;
    case 3:
      sub_269701818(a1);
      break;
    default:

      break;
  }
}

id sub_2697027B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_269701ED0(&v5, *a1, *(a1 + 8));
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2697027F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269702838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents31ExecutionDeviceResolutionResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2697028C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_269702904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_269702948(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_26970297C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2697029D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_269702A28(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_269702A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_30_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_3(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_1_14()
{
  result = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];
  v12 = v0[11];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_14@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *a1 = 3;
  v2 = *(a1 + 8);
  *(a1 + 8) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_30_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_269702BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2698590C0;
  sub_269854794();
  *(v0 + 32) = sub_269854784();
  return v0;
}

uint64_t sub_269702C44()
{
  OUTLINED_FUNCTION_2_7();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = sub_2698548D4();
  v1[19] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[20] = v5;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269702D30()
{
  v209 = v0;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[17];
  v0[27] = OUTLINED_FUNCTION_33_0(v0[19], qword_28033D910);
  v4 = *(v2 + 16);
  v0[28] = v4;
  v0[29] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v206 = v5;
  v207 = v4;
  (v4)(v1);

  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v7))
  {
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_9_3();
    v208 = v10;
    *v9 = 134218242;
    v11 = v0[17];
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = v0[17];
      }

      v13 = sub_269855324();
      v14 = v0[17];
    }

    else
    {
      v13 = *(v11 + 16);
    }

    v20 = v0[20];
    v200 = v0[19];
    v205 = v0[26];
    *(v9 + 4) = v13;

    *(v9 + 12) = 2080;

    sub_2697E2660(v21);

    sub_2697F056C();
    v23 = v22;
    v25 = v24;

    v26 = sub_26974F520(v23, v25, &v208);

    *(v9 + 14) = v26;
    _os_log_impl(&dword_269684000, v6, v7, "PlayVideoDeviceResolutionStrategy.processDevices() Found %ld video playback capable remote devices: %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v19 = *(v20 + 8);
    v19(v205, v200);
  }

  else
  {
    v15 = v0[26];
    v16 = v0[19];
    v17 = v0[20];
    v18 = v0[17];

    v19 = *(v17 + 8);
    v19(v15, v16);
  }

  v0[30] = v19;
  v27 = v0[16];
  v28 = v0[17];
  sub_269706734();
  v29 = sub_269792FF4((v0 + 2));
  v0[31] = v29;
  if (v30)
  {
    sub_269706F70((v0 + 2));
    if ((v29 - 1) < 2)
    {
      v31 = swift_task_alloc();
      v0[34] = v31;
      *v31 = v0;
      v31[1] = sub_2697039C4;
      v32 = v0[18];
      OUTLINED_FUNCTION_84();

      return sub_269706094();
    }

    if (!v29)
    {
      v73 = 0;
      v74 = 1;
LABEL_36:
      sub_269707264(v73, v74);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v35 = v0[18];

  sub_269703DAC();
  v37 = v36;
  v39 = v38;
  if (sub_26975004C(v29) < 2)
  {
    if (!sub_26975004C(v29))
    {

      sub_269706F70((v0 + 2));
      v107 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v107, v108);
      v73 = OUTLINED_FUNCTION_6_16();
      goto LABEL_36;
    }

    sub_269750050(0);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x26D646120](0, v29);
    }

    else
    {
      v75 = *(v29 + 32);
    }

    v76 = v75;
    v77 = v0[18];
    v78 = OUTLINED_FUNCTION_6_16();
    sub_269707264(v78, v79);
    sub_269703B8C();
    v81 = v80;
    sub_269706F70((v0 + 2));
    if (v37)
    {
      sub_2697017A0();
      v82 = v37;
      v83 = sub_269855064();

      if (v83)
      {
        v81 = v39;
      }
    }

    v207(v0[22], v206, v0[19]);
    v84 = v76;
    v85 = sub_2698548B4();
    v86 = sub_269854F14();

    HIDWORD(v197) = v86;
    v87 = os_log_type_enabled(v85, v86);
    v88 = v0[22];
    v89 = v0[19];
    v199 = v0[20];
    v202 = v84;
    if (v87)
    {
      swift_slowAlloc();
      v194 = v89;
      v90 = OUTLINED_FUNCTION_8_12();
      v208 = v90;
      *v37 = 136315394;
      v91 = sub_269854604();
      v99 = v81;
      v100 = OUTLINED_FUNCTION_49_1(v91, v92, v93, v94, v95, v96, v97, v98, v88, v194);

      *(v37 + 1) = v100;
      v81 = v99;
      *(v37 + 6) = 1024;
      *(v37 + 14) = v99 & 1;
      _os_log_impl(&dword_269684000, v85, BYTE4(v197), "PlayVideoDeviceResolutionStrategy.processDevices() isConfirmationRequired for device %s: %{BOOL}d", v37, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v90);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_9_12();

      v101 = v188;
      v102 = v192;
    }

    else
    {

      v101 = v88;
      v102 = v89;
    }

    v19(v101, v102);
    if (v81)
    {

      v138 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v138, v139);
    }

    else
    {
      v207(v0[21], v206, v0[19]);
      v140 = v202;
      v141 = sub_2698548B4();
      v142 = sub_269854F14();

      v143 = os_log_type_enabled(v141, v142);
      v145 = v0[20];
      v144 = v0[21];
      v146 = v0[19];
      if (v143)
      {
        OUTLINED_FUNCTION_27_2();
        v208 = OUTLINED_FUNCTION_8_12();
        v147 = v208;
        v148 = OUTLINED_FUNCTION_32_1(4.8149e-34);
        v204 = v145;
        v156 = OUTLINED_FUNCTION_49_1(v148, v149, v150, v151, v152, v153, v154, v155, v188, v192);

        *(v37 + 1) = v156;
        OUTLINED_FUNCTION_42_0(&dword_269684000, v157, v158, "PlayVideoDeviceResolutionStrategy.processDevices() Auto-selecting device: %s");
        __swift_destroy_boxed_opaque_existential_0(v147);
        OUTLINED_FUNCTION_16_9();
        OUTLINED_FUNCTION_9_12();

        v167 = OUTLINED_FUNCTION_26_5(v159, v160, v161, v162, v163, v164, v165, v166, v191, v196, v197, v199, v204, v205, v206);
      }

      else
      {

        v167 = v144;
        v168 = v146;
      }

      v19(v167, v168);
      v176 = __swift_project_boxed_opaque_existential_1((v0[18] + 56), *(v0[18] + 80));
      OUTLINED_FUNCTION_45_1(v176);

      v177 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v177, v178);
    }

LABEL_50:
    v180 = v0[25];
    v179 = v0[26];
    v182 = v0[23];
    v181 = v0[24];
    v184 = v0[21];
    v183 = v0[22];

    v185 = v0[1];
    OUTLINED_FUNCTION_84();

    __asm { BRAA            X3, X16 }
  }

  if (v37)
  {
    v40 = v37;
    sub_269706F70((v0 + 2));
    v41 = OUTLINED_FUNCTION_6_16();
    sub_269707264(v41, v42);
    v43 = v0[19];
    if (v39)
    {
      v207(v0[25], v206, v0[19]);
      v44 = v40;
      v45 = sub_2698548B4();
      v46 = sub_269854F14();
      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[25];
      v49 = v0[19];
      v50 = v0[20];
      if (v47)
      {
        OUTLINED_FUNCTION_27_2();
        v208 = OUTLINED_FUNCTION_8_12();
        v51 = v208;
        v52 = OUTLINED_FUNCTION_32_1(4.8149e-34);
        v201 = v50;
        v60 = OUTLINED_FUNCTION_49_1(v52, v53, v54, v55, v56, v57, v58, v59, v188, v192);

        *(v37 + 1) = v60;
        _os_log_impl(&dword_269684000, v45, v46, "PlayVideoDeviceResolutionStrategy.processDevices() Confirmation is required for auto-selection of device %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_9_12();

        v61 = OUTLINED_FUNCTION_6_16();
        sub_269707264(v61, v62);

        v71 = OUTLINED_FUNCTION_26_5(v63, v64, v65, v66, v67, v68, v69, v70, v189, v193, v197, v198, v201, v205, v206);
      }

      else
      {

        v169 = OUTLINED_FUNCTION_6_16();
        sub_269707264(v169, v170);
        v71 = v48;
        v72 = v49;
      }

      v19(v71, v72);
    }

    else
    {
      v109 = v0[24];

      v207(v109, v206, v43);
      v110 = v40;
      v111 = sub_2698548B4();
      LOBYTE(v109) = sub_269854F14();

      v112 = os_log_type_enabled(v111, v109);
      v113 = v0[24];
      v114 = v0[19];
      v115 = v0[20];
      if (v112)
      {
        OUTLINED_FUNCTION_27_2();
        v208 = OUTLINED_FUNCTION_8_12();
        v116 = v208;
        v117 = OUTLINED_FUNCTION_32_1(4.8149e-34);
        v203 = v115;
        v125 = OUTLINED_FUNCTION_49_1(v117, v118, v119, v120, v121, v122, v123, v124, v188, v192);

        *(v37 + 1) = v125;
        OUTLINED_FUNCTION_42_0(&dword_269684000, v126, v127, "PlayVideoDeviceResolutionStrategy.processDevices() Auto-selecting device: %s");
        __swift_destroy_boxed_opaque_existential_0(v116);
        OUTLINED_FUNCTION_16_9();
        OUTLINED_FUNCTION_9_12();

        v136 = OUTLINED_FUNCTION_26_5(v128, v129, v130, v131, v132, v133, v134, v135, v190, v195, v197, v198, v203, v205, v206);
      }

      else
      {

        v136 = v113;
        v137 = v114;
      }

      v19(v136, v137);
      v171 = v0[18];
      v172 = __swift_project_boxed_opaque_existential_1((v171 + 56), *(v171 + 80));
      OUTLINED_FUNCTION_45_1(v172);
      sub_2696A73F8(v171 + 136, (v0 + 11));
      __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
      v173 = sub_269854654();
      sub_2697B4540(3, v173);
      v174 = OUTLINED_FUNCTION_6_16();
      sub_269707264(v174, v175);
      __swift_destroy_boxed_opaque_existential_0(v0 + 11);
    }

    goto LABEL_50;
  }

  v103 = swift_task_alloc();
  v0[32] = v103;
  *v103 = v0;
  v103[1] = sub_26970366C;
  v104 = v0[18];
  OUTLINED_FUNCTION_84();

  return sub_269705490(v105);
}

uint64_t sub_26970366C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 256);
  *v2 = *v0;
  *(v1 + 264) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269703758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, void), uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[33];
  v26 = v22[31];
  if (v25)
  {
    v28 = v22[28];
    v27 = v22[29];
    v29 = v22[27];
    v30 = v22[23];
    v31 = v22[19];
    sub_269707264(v22[31], 0);
    v28(v30, v29, v31);
    v32 = v25;
    v33 = sub_2698548B4();
    v34 = sub_269854F14();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v22[30];
    v37 = v22[23];
    v39 = v22[19];
    v38 = v22[20];
    if (v35)
    {
      a10 = v22[23];
      v40 = OUTLINED_FUNCTION_27_2();
      v41 = OUTLINED_FUNCTION_9_3();
      a11 = v41;
      *v40 = 136315138;
      a9 = v36;
      v42 = sub_269854604();
      v44 = sub_26974F520(v42, v43, &a11);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_269684000, v33, v34, "PlayVideoDeviceResolutionStrategy.processDevices() Auto-selecting device based on proximity: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v36(a10, v39);
    }

    else
    {

      v36(v37, v39);
    }

    v45 = v22[18];
    sub_269703B8C();
    LOBYTE(v45) = v46;
    sub_269706F70((v22 + 2));
    v47 = v22[31];
    if ((v45 & 1) == 0)
    {
      v51 = *__swift_project_boxed_opaque_existential_1((v22[18] + 56), *(v22[18] + 80));
      sub_2696C78DC(v32, 0, 3);
    }

    v48 = OUTLINED_FUNCTION_6_16();
    sub_269707264(v48, v49);
    v50 = v22[33];
  }

  else
  {
    sub_269706F70((v22 + 2));
    sub_2697E26D0(v26);
    sub_269707264(v26, 0);
  }

  v53 = v22[25];
  v52 = v22[26];
  v55 = v22[23];
  v54 = v22[24];
  v57 = v22[21];
  v56 = v22[22];

  v58 = v22[1];
  OUTLINED_FUNCTION_116();

  return v62(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697039C4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 272);
  *v2 = *v0;
  *(v1 + 280) = v5;

  v6 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_269703AB0()
{
  v1 = v0[31];
  v2 = sub_26975004C(v0[35]);

  v3 = 1;
  sub_269707264(v1, 1);
  if (v2)
  {
    v3 = 2;
  }

  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];

  v10 = v0[1];

  return v10(v3, 192);
}

void sub_269703B8C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  sub_269854634();
  if (v4)
  {
    if (v3[8] && (v15 = v3[7], v17 = v3[8], sub_269693054(), !OUTLINED_FUNCTION_44_1()))
    {
    }

    else if (v3[4])
    {
      v16 = v3[3];
      v18 = v3[4];
      sub_269693054();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
    }
  }

  if (!v3[6])
  {
    sub_269854654();
    v5 = sub_2698547B4();
    if (v5 != sub_2698547B4())
    {
      sub_269854654();
      v6 = sub_2698547B4();
      if (v6 != sub_2698547B4())
      {
        goto LABEL_18;
      }

      v7 = *(v1 + 40);
      v8 = __swift_project_boxed_opaque_existential_1((v1 + 16), v7);
      v9 = *(v7 - 8);
      v10 = *(v9 + 64);
      MEMORY[0x28223BE20](v8);
      OUTLINED_FUNCTION_3_1();
      v13 = v12 - v11;
      (*(v9 + 16))(v12 - v11);
      v14 = sub_269852D14();
      (*(v9 + 8))(v13, v7);
      if (v14)
      {
LABEL_18:
        if (v3[4])
        {
          sub_269854654();
          sub_2698547B4();
          sub_2698547B4();
        }
      }
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_269703DAC()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2698548D4();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_35_2(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B50, &unk_26985C450);
  v17 = OUTLINED_FUNCTION_8_9(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_13();
  v138 = v23;
  v136 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  v24 = OUTLINED_FUNCTION_4_3(v136);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_35_2(v34);
  v35 = *(v0 + 40);
  v36 = __swift_project_boxed_opaque_existential_1((v0 + 16), v35);
  v37 = *(v35 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v41 = v40 - v39;
  v42 = *(v37 + 16);
  v43 = OUTLINED_FUNCTION_38_1();
  v44(v43);
  v45 = sub_269852D14();
  (*(v37 + 8))(v41, v35);
  if (v45)
  {
    v130 = sub_26975004C(v3);
    if (v130)
    {
      v46 = v3;
      v118 = v29;
      v117 = v12;
      v128 = v3 & 0xC000000000000001;
      v142 = (v7 + 16);
      v143 = (v7 + 8);
      v47 = MEMORY[0x277D84F98];
      v153 = MEMORY[0x277D84F90];
      v154 = MEMORY[0x277D84F90];
      v48 = 4;
      v152 = MEMORY[0x277D84F90];
      v129 = v1;
      v126 = *(v1 + 176);
      v120 = MEMORY[0x277D84F90];
      v121 = MEMORY[0x277D84F90];
      v144 = MEMORY[0x277D84F90];
      v127 = v46;
      v49 = v138;
      v50 = v137;
      do
      {
        v51 = (v48 - 4);
        sub_269750050(v48 - 4);
        v149 = v48;
        if (v128)
        {
          v52 = MEMORY[0x26D646120](v48 - 4, v46);
        }

        else
        {
          v52 = *(v46 + 8 * v48);
        }

        v53 = v52;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
          return;
        }

        v147 = v51 + 1;
        sub_2696A73F8(v129 + 56, v151);
        OUTLINED_FUNCTION_50_1();
        sub_2697F22F8(&unk_287A39840);
        v54 = *v51;
        OUTLINED_FUNCTION_19_7();

        OUTLINED_FUNCTION_30_4();
        if (v55)
        {
          sub_26969B0C0(v49, &qword_280323B50, &unk_26985C450);
          __swift_destroy_boxed_opaque_existential_0(v151);
          v145 = 0;
          v146 = 0;
        }

        else
        {
          sub_2697070F4(v49, v50);
          __swift_destroy_boxed_opaque_existential_0(v151);
          v145 = *(v50 + *(v136 + 24));
          v146 = *(v50 + *(v136 + 28));
          v56 = v53;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9(v154);
          if (v57)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          sub_269854CF4();
          v144 = v154;
          OUTLINED_FUNCTION_1_15();
          sub_26970720C(v50, v58);
        }

        v59 = v126;
        if (sub_2697B91A8())
        {
          if (qword_2803226E0 != -1)
          {
            OUTLINED_FUNCTION_0_22();
            swift_once();
          }

          OUTLINED_FUNCTION_33_0(v4, qword_28033D910);
          (*v142)();
          v60 = sub_2698548B4();
          v61 = sub_269854F14();
          if (OUTLINED_FUNCTION_19_4(v61))
          {
            v62 = OUTLINED_FUNCTION_16_2();
            *v62 = 0;
            _os_log_impl(&dword_269684000, v60, v61, "PlayVideoDeviceResolutionStrategy.preferredDevice overridding rejectedCounts with default values as deviceHasRejectedDonations is set", v62, 2u);
            OUTLINED_FUNCTION_10();
          }

          (*v143)(v134, v4);
          v63 = v53;
          v59 = &v154;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9(v154);
          if (v57)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          sub_269854CF4();
          v146 = 1;
          v144 = v154;
          v145 = 1;
        }

        sub_2696A73F8(v129 + 56, v151);
        OUTLINED_FUNCTION_50_1();
        sub_2697F22F8(&unk_287A39868);
        v64 = *v59;
        OUTLINED_FUNCTION_19_7();

        OUTLINED_FUNCTION_30_4();
        if (v55)
        {
          sub_26969B0C0(v132, &qword_280323B50, &unk_26985C450);
          __swift_destroy_boxed_opaque_existential_0(v151);
          v140 = 0;
          v141 = 0;
        }

        else
        {
          sub_2697070F4(v132, v122);
          __swift_destroy_boxed_opaque_existential_0(v151);
          v65 = v53;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9(v153);
          if (v66)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          sub_269854CF4();
          v120 = v153;
          v140 = *(v122 + *(v136 + 24));
          v141 = *(v122 + *(v136 + 28));
          sub_269707090(v122, v123);
          v67 = v65;
          swift_isUniquelyReferenced_nonNull_native();
          v151[0] = v47;
          v64 = v151;
          v68 = OUTLINED_FUNCTION_24_6();
          sub_26984063C(v68, v69);

          v47 = v151[0];
          OUTLINED_FUNCTION_1_15();
          sub_26970720C(v122, v70);
          v50 = v137;
        }

        sub_2696A73F8(v129 + 56, v151);
        OUTLINED_FUNCTION_50_1();
        sub_2697F22F8(&unk_287A39890);
        v71 = *v64;
        OUTLINED_FUNCTION_19_7();

        OUTLINED_FUNCTION_30_4();
        if (v55)
        {
          sub_26969B0C0(v133, &qword_280323B50, &unk_26985C450);
          __swift_destroy_boxed_opaque_existential_0(v151);
          v72 = 0;
          v139 = 0;
        }

        else
        {
          sub_2697070F4(v133, v131);
          __swift_destroy_boxed_opaque_existential_0(v151);
          v73 = v53;
          MEMORY[0x26D645B90]();
          OUTLINED_FUNCTION_13_9(v152);
          if (v74)
          {
            OUTLINED_FUNCTION_7_19();
          }

          OUTLINED_FUNCTION_24_6();
          v75 = sub_269854CF4();
          v121 = v152;
          v76 = *(v131 + *(v136 + 24));
          v72 = *(v131 + *(v136 + 28));
          v151[0] = v73;
          MEMORY[0x28223BE20](v75);
          OUTLINED_FUNCTION_0_3();
          *(v77 - 16) = v151;
          v139 = v76;
          if (sub_26983387C(sub_269707270, v78, v144))
          {
            v79 = v72;
          }

          else
          {
            v79 = v76;
          }

          if (v79 >= 3)
          {
            sub_269707090(v131, v123);
            v80 = v73;
            swift_isUniquelyReferenced_nonNull_native();
            v151[0] = v47;
            v81 = OUTLINED_FUNCTION_24_6();
            sub_26984063C(v81, v82);

            v47 = v151[0];
          }

          OUTLINED_FUNCTION_1_15();
          sub_26970720C(v131, v83);
        }

        v150 = v47;
        if (qword_2803226E0 != -1)
        {
          OUTLINED_FUNCTION_0_22();
          swift_once();
        }

        OUTLINED_FUNCTION_33_0(v4, qword_28033D910);
        v124 = v84;
        v125 = *v142;
        (*v142)();
        v85 = v53;
        v86 = sub_2698548B4();
        v87 = sub_269854F14();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = v72;
          v89 = swift_slowAlloc();
          v90 = v4;
          v91 = OUTLINED_FUNCTION_9_3();
          v151[0] = v91;
          *v89 = 136316674;
          v92 = sub_269854604();
          v94 = sub_26974F520(v92, v93, v151);

          *(v89 + 4) = v94;
          *(v89 + 12) = 2048;
          *(v89 + 14) = v145;
          *(v89 + 22) = 2048;
          *(v89 + 24) = v146;
          *(v89 + 32) = 2048;
          *(v89 + 34) = v140;
          *(v89 + 42) = 2048;
          *(v89 + 44) = v141;
          *(v89 + 52) = 2048;
          *(v89 + 54) = v139;
          *(v89 + 62) = 2048;
          *(v89 + 64) = v88;
          _os_log_impl(&dword_269684000, v86, v87, "PlayVideoDeviceResolutionStrategy.preferredDevice() device %s donations - rejected (total:%ld seven-days:%ld), auto-selected (total:%ld seven-days:%ld), confirmedOrDisambiguated (total:%ld seven-days:%ld)", v89, 0x48u);
          __swift_destroy_boxed_opaque_existential_0(v91);
          v4 = v90;
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          v95 = *v143;
          v50 = v137;
          (*v143)(v135, v90);
        }

        else
        {

          v95 = *v143;
          (*v143)(v135, v4);
        }

        v46 = v127;
        v49 = v138;
        v48 = v149 + 1;
        v47 = v150;
      }

      while (v147 != v130);
      sub_269704B04();
      if (!v96)
      {

        goto LABEL_49;
      }

      v97 = v96;
      sub_26981D2F0(v96, v150);
      if (__swift_getEnumTagSinglePayload(v119, 1, v136) == 1)
      {

        sub_26969B0C0(v119, &qword_280323B50, &unk_26985C450);
LABEL_49:

        goto LABEL_50;
      }

      v98 = sub_2697070F4(v119, v118);
      v151[0] = v97;
      MEMORY[0x28223BE20](v98);
      OUTLINED_FUNCTION_0_3();
      *(v99 - 16) = v151;
      v101 = sub_26983387C(sub_269707270, v100, v120);
      if (v101)
      {

        v102 = 1;
      }

      else
      {
        v151[0] = v97;
        MEMORY[0x28223BE20](v101);
        OUTLINED_FUNCTION_0_3();
        *(v103 - 16) = v151;
        v102 = sub_26983387C(sub_269707270, v104, v121);
      }

      sub_269705008(v118, v102 & 1);
      (v125)(v117, v124, v4);
      v105 = v4;
      v106 = v97;
      v107 = sub_2698548B4();
      v108 = sub_269854F14();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = OUTLINED_FUNCTION_27_2();
        v148 = v105;
        v110 = OUTLINED_FUNCTION_9_3();
        v151[0] = v110;
        *v109 = 136315138;
        v111 = sub_269854604();
        v113 = sub_26974F520(v111, v112, v151);

        *(v109 + 4) = v113;
        _os_log_impl(&dword_269684000, v107, v108, "PlayVideoDeviceResolutionStrategy.preferredDevice() selected: %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v110);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v114 = v117;
        v115 = v148;
      }

      else
      {

        v114 = v117;
        v115 = v105;
      }

      v95(v114, v115);
      OUTLINED_FUNCTION_1_15();
      sub_26970720C(v118, v116);
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_21_0();
}

void sub_269704B04()
{
  OUTLINED_FUNCTION_19_1();
  v66 = v0;
  v2 = v1;
  v65 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  v3 = OUTLINED_FUNCTION_8(v65);
  v62 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  v68 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_13();
  v61 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B40, &qword_26985C438);
  v12 = OUTLINED_FUNCTION_8_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = (&v60 - v19);
  v21 = v2 + 64;
  v22 = 1 << *(v2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v2 + 64);
  v25 = (v22 + 63) >> 6;
  v63 = v2;

  v26 = 0;
  v27 = 0;
  v69 = MEMORY[0x277D84F98];
  v28 = &qword_280323B48;
  v60 = xmmword_2698590C0;
  v67 = v20;
  v64 = v17;
  while (1)
  {
    v70 = v26;
    if (!v24)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v25)
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B48, &unk_26985C440);
          __swift_storeEnumTagSinglePayload(v17, 1, 1, v57);
          v24 = 0;
          goto LABEL_11;
        }

        v24 = *(v21 + 8 * v29);
        ++v27;
        if (v24)
        {
          v27 = v29;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v29 = v27;
LABEL_10:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v29 << 6);
    v32 = *(*(v63 + 48) + 8 * v31);
    v33 = v61;
    sub_269707090(*(v63 + 56) + *(v62 + 72) * v31, v61);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B48, &unk_26985C440);
    v35 = *(v34 + 48);
    *v17 = v32;
    sub_2697070F4(v33, v17 + v35);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v34);
    v36 = v32;
    v20 = v67;
LABEL_11:
    sub_269707158(v17, v20);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B48, &unk_26985C440);
    OUTLINED_FUNCTION_20_9(v20);
    if (v38)
    {
      break;
    }

    v39 = *v20;
    v40 = v20 + *(v37 + 48);
    v41 = v68;
    v42 = sub_2697070F4(v40, v68);
    v72 = v39;
    MEMORY[0x28223BE20](v42);
    OUTLINED_FUNCTION_0_3();
    *(v43 - 16) = &v72;
    v45 = sub_26983387C(sub_2697071EC, v44, v66);
    v46 = 24;
    if (v45)
    {
      v46 = 28;
    }

    v47 = *(v41 + *(v65 + v46));
    v48 = v69;
    if (*(v69 + 16) && (v49 = sub_26973ED38(v47), (v50 & 1) != 0))
    {
      v72 = *(*(v48 + 56) + 8 * v49);

      v51 = v39;
      MEMORY[0x26D645B90]();
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      OUTLINED_FUNCTION_23_8();
      sub_269854CF4();
      swift_isUniquelyReferenced_nonNull_native();
      v71 = v48;
      sub_269840550();

      OUTLINED_FUNCTION_1_15();
      sub_26970720C(v68, v52);
      v53 = v71;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v54 = swift_allocObject();
      *(v54 + 16) = v60;
      *(v54 + 32) = v39;
      v55 = v39;
      swift_isUniquelyReferenced_nonNull_native();
      v72 = v48;
      sub_269840550();

      OUTLINED_FUNCTION_1_15();
      sub_26970720C(v68, v56);
      v53 = v72;
    }

    v69 = v53;
    v26 = v70;
    if (v70 <= v47)
    {
      v26 = v47;
    }

    v17 = v64;
    v20 = v67;
    v28 = &qword_280323B48;
  }

  v58 = sub_26981D2A4(v70, v69);
  if (v58)
  {
    v28 = v58;
    if (sub_26975004C(v58) == 1 && sub_26975004C(v28))
    {
      sub_269750050(0);
      if ((v28 & 0xC000000000000001) == 0)
      {
        v59 = *(v28 + 32);
LABEL_29:

        goto LABEL_32;
      }

LABEL_34:
      MEMORY[0x26D646120](0, v28);
      goto LABEL_29;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269705008(uint64_t a1, int a2)
{
  v67 = a2;
  v63 = a1;
  v2 = sub_2698548D4();
  v3 = OUTLINED_FUNCTION_8(v2);
  v65 = v4;
  v66 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v64 = v8 - v7;
  v9 = sub_269851D34();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = sub_269851E64();
  v19 = OUTLINED_FUNCTION_8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v26 = v25 - v24;
  v68 = sub_269851E84();
  v27 = OUTLINED_FUNCTION_8(v68);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v36 = OUTLINED_FUNCTION_8_9(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v62 - v43;
  sub_269851E54();
  (*(v21 + 104))(v26, *MEMORY[0x277CC9968], v18);
  sub_269851D24();
  sub_269851E44();
  v45 = *(v12 + 8);
  v46 = OUTLINED_FUNCTION_23_8();
  v62[1] = v47;
  v45(v46);
  (*(v21 + 8))(v26, v18);
  (*(v29 + 8))(v34, v68);
  OUTLINED_FUNCTION_20_9(v44);
  if (v48)
  {
    sub_269851D24();
    v41 = v17;
  }

  else
  {
    sub_269707020(v44, v41);
    result = OUTLINED_FUNCTION_20_9(v41);
    if (v48)
    {
      __break(1u);
      return result;
    }
  }

  sub_269851D04();
  v51 = v50;
  (v45)(v41, v9);
  v52 = v63 + *(type metadata accessor for DeviceSelectionDonationAggregations(0) + 20);
  sub_269851D04();
  v54 = v53;
  v55 = v67;
  v56 = v66;
  v57 = v64;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v56, qword_28033D910);
  v58 = v65;
  (*(v65 + 16))(v57);
  v59 = sub_2698548B4();
  v60 = sub_269854F14();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 67109376;
    *(v61 + 4) = v55 & 1;
    *(v61 + 8) = 1024;
    *(v61 + 10) = v51 < v54;
    _os_log_impl(&dword_269684000, v59, v60, "PlayVideoDeviceResolutionStrategy.preferredDeviceRequiresConfirmation hasPreviousSelections:%{BOOL}d isLastSelectionWithinSevenDays: %{BOOL}d", v61, 0xEu);
    OUTLINED_FUNCTION_10();
  }

  (*(v58 + 8))(v57, v56);
  sub_26969B0C0(v44, &unk_280322D50, &unk_2698583F0);
  return (v51 >= v54) | ((v55 & 1) == 0);
}

uint64_t sub_269705490(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_3_16();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_2697054B8()
{
  v1 = v0[2];
  v13 = MEMORY[0x277D84F90];
  v2 = sub_26975004C(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x26D646120](v3, v0[2]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    sub_269854654();
    v9 = sub_2698547B4();
    if (v9 == sub_2698547B4())
    {
      sub_269855284();
      v10 = *(v13 + 16);
      sub_2698552B4();
      sub_2698552C4();
      sub_269855294();
    }

    else
    {
    }

    ++v3;
  }

  v0[4] = v13;
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_269705648;
  v12 = v0[3];

  sub_269705750();
}

uint64_t sub_269705648()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_6_13();
  *v7 = v6;

  OUTLINED_FUNCTION_28_2();

  return v8(v2);
}

uint64_t sub_269705750()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_2698548D4();
  v1[10] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[11] = v4;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_269705814()
{
  sub_2696A73F8(v0[9] + 96, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x277D61F28] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2697058E0;

  return MEMORY[0x2821C8A70](4000, 4000, v1, v2);
}

uint64_t sub_2697058E0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  if (v0)
  {
    v7 = sub_269705EA0;
  }

  else
  {
    v7 = sub_2697059E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2697059E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  v15 = v14[16];
  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  v16 = sub_26975004C(v15);
  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v19 = v15 & 0xFFFFFFFFFFFFFF8;
  v20 = v15 + 32;
  while (1)
  {
    if (v16 == v17)
    {
      v24 = v14[16];

      v18 = 0;
      v25 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    if (v18)
    {
      v21 = MEMORY[0x26D646120](v17, v14[16]);
    }

    else
    {
      if (v17 >= *(v19 + 16))
      {
        goto LABEL_53;
      }

      v21 = *(v20 + 8 * v17);
    }

    v22 = v21;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    sub_269854654();
    v23 = sub_2698547B4();
    if (v23 == sub_2698547B4())
    {
      break;
    }

    ++v17;
  }

  v26 = v14[16];
  a10 = v14;
  v27 = v14[8];

  a11 = MEMORY[0x277D84F90];
  v28 = sub_26975004C(v27);
  v29 = v27 & 0xC000000000000001;
  v30 = v27 & 0xFFFFFFFFFFFFFF8;
  v31 = v27 + 32;
  v14 = v22;
  for (i = 0; v28 != i; ++i)
  {
    if (v29)
    {
      v33 = MEMORY[0x26D646120](i, a10[8]);
    }

    else
    {
      if (i >= *(v30 + 16))
      {
        goto LABEL_55;
      }

      v33 = *(v31 + 8 * i);
    }

    v34 = v33;
    if (__OFADD__(i, 1))
    {
      goto LABEL_54;
    }

    v18 = sub_269854644();
    v36 = v35;
    v37 = sub_269854644();
    if (v36)
    {
      if (!v38)
      {
        goto LABEL_26;
      }

      if (v18 == v37 && v36 == v38)
      {
      }

      else
      {
        v18 = sub_269855584();

        if ((v18 & 1) == 0)
        {

          continue;
        }
      }
    }

    else if (v38)
    {
LABEL_26:

      continue;
    }

    sub_269855284();
    v40 = *(a11 + 16);
    sub_2698552B4();
    sub_2698552C4();
    sub_269855294();
  }

  v18 = v14;

  v14 = a10;
  v25 = a11;
LABEL_32:
  if (!sub_26975004C(v25))
  {

    goto LABEL_42;
  }

  sub_269750050(0);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x26D646120](0, v25);
  }

  else
  {
    v41 = *(v25 + 32);
  }

  v42 = v41;
  v43 = sub_26975004C(v25);

  if (v43 != 1)
  {

LABEL_42:
    if (qword_2803226E0 == -1)
    {
LABEL_43:
      v50 = v14[13];
      v51 = v14[11];
      OUTLINED_FUNCTION_33_0(v14[10], qword_28033D910);
      v52 = *(v51 + 16);
      v53 = OUTLINED_FUNCTION_38_1();
      v54(v53);
      v55 = sub_2698548B4();
      v56 = sub_269854F14();
      v57 = os_log_type_enabled(v55, v56);
      v58 = v14[13];
      v60 = v14[10];
      v59 = v14[11];
      if (v57)
      {
        v61 = OUTLINED_FUNCTION_16_2();
        *v61 = 0;
        _os_log_impl(&dword_269684000, v55, v56, "PlayVideoDeviceResolutionStrategy.selectDeviceInSameRoomAsCurrentDevice None or more than one device is in same room as current device, unable to select a single one.", v61, 2u);
        OUTLINED_FUNCTION_16_9();
      }

      else
      {
      }

      (*(v59 + 8))(v58, v60);
      goto LABEL_49;
    }

LABEL_56:
    OUTLINED_FUNCTION_0_22();
    swift_once();
    goto LABEL_43;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v44 = v14[14];
  v45 = v14[11];
  OUTLINED_FUNCTION_33_0(v14[10], qword_28033D910);
  (*(v45 + 16))(v44);
  v46 = sub_2698548B4();
  v47 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v47))
  {
    v48 = OUTLINED_FUNCTION_16_2();
    *v48 = 0;
    _os_log_impl(&dword_269684000, v46, v47, "PlayVideoDeviceResolutionStrategy.selectDeviceInSameRoomAsCurrentDevice Returning single device in same room as current device.", v48, 2u);
    OUTLINED_FUNCTION_10();
    v49 = v18;
  }

  else
  {
    v49 = v46;
    v46 = v18;
  }

  v62 = v14[14];
  v63 = v14[10];
  v64 = v14[11];

  (*(v64 + 8))(v62, v63);
LABEL_49:
  v66 = v14[13];
  v65 = v14[14];
  v67 = v14[12];

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269705EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  __swift_destroy_boxed_opaque_existential_0(v22 + 2);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v25 = v22[17];
  v27 = v22[11];
  v26 = v22[12];
  OUTLINED_FUNCTION_33_0(v22[10], qword_28033D910);
  v28 = *(v27 + 16);
  v29 = OUTLINED_FUNCTION_38_1();
  v30(v29);
  v31 = v25;
  v32 = sub_2698548B4();
  v33 = sub_269854F24();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v22[17];
  v36 = v22[11];
  v37 = v22[12];
  v38 = v22[10];
  if (v34)
  {
    a10 = v22[12];
    v39 = OUTLINED_FUNCTION_27_2();
    v40 = OUTLINED_FUNCTION_9_3();
    a11 = v40;
    *v39 = 136315138;
    v22[7] = v35;
    v41 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v42 = sub_269854AE4();
    v44 = sub_26974F520(v42, v43, &a11);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_269684000, v32, v33, "Failure getting devicesWithProximity: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_16_9();

    (*(v36 + 8))(a10, v38);
  }

  else
  {

    (*(v36 + 8))(v37, v38);
  }

  v46 = v22[13];
  v45 = v22[14];
  v47 = v22[12];

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269706094()
{
  OUTLINED_FUNCTION_2_7();
  v1[8] = v0;
  v2 = sub_2698548D4();
  v1[9] = v2;
  OUTLINED_FUNCTION_5_12(v2);
  v1[10] = v3;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = sub_2698545B4();
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = sub_2698545E4();
  v1[13] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[14] = v10;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2697061BC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[8];
  sub_2698545D4();
  sub_269854594();
  sub_2698545C4();
  sub_2696A73F8(v5 + 96, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B00, &unk_26985C1E0);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 16) = xmmword_269857710;
  (*(v2 + 16))(v10 + v9, v1, v4);
  v11 = *(MEMORY[0x277D61F38] + 4);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_269706318;

  return MEMORY[0x2821C8A80](v10, v6, v7);
}

uint64_t sub_269706318(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v2;
  OUTLINED_FUNCTION_6_13();
  *v10 = v9;
  v5[18] = v1;

  if (v1)
  {
    v11 = sub_2697064F4;
  }

  else
  {
    v12 = v5[16];

    v5[19] = a1;
    v11 = sub_26970643C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26970643C()
{
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = sub_2697E2660(v1);

  v3 = v0[12];
  v4 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_28_2();

  return v5(v2);
}

uint64_t sub_2697064F4()
{
  v30 = v0;
  v1 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  OUTLINED_FUNCTION_33_0(*(v0 + 72), qword_28033D910);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_38_1();
  v7(v6);
  v8 = v2;
  v9 = sub_2698548B4();
  v10 = sub_269854F24();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 144);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);
    v15 = OUTLINED_FUNCTION_27_2();
    v16 = OUTLINED_FUNCTION_9_3();
    v29 = v16;
    *v15 = 136315138;
    *(v0 + 56) = v11;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v18 = sub_269854AE4();
    v20 = sub_26974F520(v18, v19, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_269684000, v9, v10, "Error gettinig Apple TV devices: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_10();

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);
    v23 = *(v0 + 72);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 96);
  v25 = *(v0 + 88);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

  OUTLINED_FUNCTION_28_2();
  v27 = MEMORY[0x277D84F90];

  return v26(v27);
}

void sub_269706734()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v76 = v2;
  v74 = sub_2698548D4();
  v3 = OUTLINED_FUNCTION_8(v74);
  v73 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_35_2(v8 - v7);
  v71 = sub_2698525E4();
  v9 = OUTLINED_FUNCTION_8(v71);
  v70 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_35_2(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  v16 = OUTLINED_FUNCTION_8_9(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v69 - v19;
  v75 = type metadata accessor for MediaNLIntent();
  v21 = OUTLINED_FUNCTION_4_3(v75);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v26 = v25 - v24;
  v27 = sub_269853F44();
  v28 = OUTLINED_FUNCTION_8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  v35 = v34 - v33;
  v36 = sub_2698538B4();
  v37 = OUTLINED_FUNCTION_8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_1();
  v44 = v43 - v42;
  (*(v39 + 16))(v43 - v42, v1, v36);
  v45 = *(v39 + 88);
  v46 = OUTLINED_FUNCTION_23_8();
  v48 = v47(v46);
  if (v48 == *MEMORY[0x277D5C128])
  {
    v49 = *(v39 + 96);
    v50 = OUTLINED_FUNCTION_23_8();
    v51(v50);
    (*(v30 + 32))(v35, v44, v27);
    (*(v30 + 16))(v26, v35, v27);
    if (qword_2803225E8 != -1)
    {
      swift_once();
    }

    sub_2696DAEF8();
    OUTLINED_FUNCTION_34_2();
    v20 = v80;
    if (v80)
    {
      v44 = v79;
      v52 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v52 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
      }

      else
      {

        v44 = 0;
        v20 = 0;
      }
    }

    else
    {
      v44 = 0;
    }

    if (qword_2803225E0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_34_2();
    v36 = v80;
    if (v80)
    {
      v1 = v79;
      OUTLINED_FUNCTION_10_11();
      (*(v30 + 8))(v35, v27);
LABEL_37:
      v68 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v68 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v68)
      {
      }

      else
      {

        v1 = 0;
        v36 = 0;
      }

      goto LABEL_43;
    }

    if (qword_2803225F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_10_11();
    (*(v30 + 8))(v35, v27);
    v36 = v80;
    if (v80)
    {
      v1 = v79;
      goto LABEL_37;
    }

    v1 = 0;
LABEL_43:
    v64 = 0;
    v66 = 0;
    goto LABEL_44;
  }

  v53 = v48 == *MEMORY[0x277D5C140] || v48 == *MEMORY[0x277D5C148];
  if (!v53)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      swift_once();
    }

    v1 = v74;
    OUTLINED_FUNCTION_33_0(v74, qword_28033D910);
    v57 = v73;
    v58 = v72;
    (*(v73 + 16))(v72);
    v59 = sub_2698548B4();
    v20 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v20))
    {
      v60 = OUTLINED_FUNCTION_16_2();
      *v60 = 0;
      _os_log_impl(&dword_269684000, v59, v20, "Unexpected parse type, using default filter", v60, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v57 + 8))(v58, v1);
    v61 = *(v39 + 8);
    v62 = OUTLINED_FUNCTION_23_8();
    v63(v62);
    goto LABEL_22;
  }

  v54 = *(v39 + 8);
  v55 = OUTLINED_FUNCTION_23_8();
  v56(v55);
  sub_2696CB644(v20);
  v36 = sub_269852474();
  OUTLINED_FUNCTION_20_9(v20);
  if (v53)
  {
    sub_26969B0C0(v20, &qword_280323360, &unk_26985AB80);
LABEL_22:
    OUTLINED_FUNCTION_37_2();
    goto LABEL_43;
  }

  v1 = v69[1];
  sub_269852414();
  (*(*(v36 - 8) + 8))(v20, v36);
  v64 = sub_269851FD4();
  v66 = v65;
  (*(v70 + 8))(v1, v71);
  v67 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v67 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (!v67)
  {

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_37_2();
LABEL_44:
  v78[0] = 0;
  v78[1] = 0;
  LOBYTE(v78[2]) = 1;
  *(&v78[2] + 1) = *v89;
  HIDWORD(v78[2]) = *&v89[3];
  v78[3] = v1;
  v78[4] = v36;
  v78[5] = v44;
  v78[6] = v20;
  v78[7] = v64;
  v78[8] = v66;
  v79 = 0;
  v80 = 0;
  v81 = 1;
  *&v82[3] = *&v89[3];
  *v82 = *v89;
  v83 = v1;
  v84 = v36;
  v85 = v44;
  v86 = v20;
  v87 = v64;
  v88 = v66;
  sub_269706F14(v78, &v77);
  sub_269706F70(&v79);
  memcpy(v76, v78, 0x48uLL);
  OUTLINED_FUNCTION_21_0();
}

uint64_t *sub_269706E7C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[22];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_269706EBC()
{
  sub_269706E7C();

  return MEMORY[0x2821FE8D8](v0, 200, 7);
}

uint64_t sub_269706FC4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_269854664();
      result = sub_269854CE4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_269707020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269707090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697070F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269707158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B40, &qword_26985C438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697071C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_269833D38() & 1;
}

uint64_t sub_26970720C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_269707264(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_269701818(result);
  }

  else
  {
  }
}

uint64_t OUTLINED_FUNCTION_7_19()
{

  return sub_269854CD4();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x26D647170);
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_26970720C(v0, type metadata accessor for MediaNLIntent);
}

void OUTLINED_FUNCTION_13_9(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_16_9()
{

  JUMPOUT(0x26D647170);
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_2696C8108(0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_1(float a1)
{
  *v1 = a1;

  return sub_269854604();
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return sub_269853D54();
}

void OUTLINED_FUNCTION_42_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_269855114();
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t *a1)
{
  v3 = *a1;

  return sub_2696C78DC(v1, 0, 3);
}

uint64_t OUTLINED_FUNCTION_49_1(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_26974F520(a1, a2, va);
}

uint64_t sub_269707524()
{
  qword_28033D660 = qword_280323D80;
  *algn_28033D668 = off_280323D88;
}

uint64_t sub_269707540(uint64_t a1)
{
  sub_269852C84();
  sub_269852BB4();
  v2 = type metadata accessor for ExecutePlayVideoIntentFlow();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_2697075A4(&v8, a1, &v7);
  return v5;
}

uint64_t sub_2697075A4(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input;
  v8 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  sub_26968E5D4(a1, v3 + 56);
  *(v3 + 96) = a2;
  sub_26968E5D4(a3, v3 + 16);
  return v3;
}

uint64_t sub_269707620(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_269853854();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input;
  swift_beginAccess();
  sub_269702838(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_269707724()
{
  OUTLINED_FUNCTION_2_7();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_2698548D4();
  v1[12] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[13] = v4;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_2698519C4();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269851A44();
  v1[19] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[20] = v12;
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_4_7();
  v15 = sub_2698538B4();
  v1[22] = v15;
  OUTLINED_FUNCTION_5_12(v15);
  v1[23] = v16;
  v18 = *(v17 + 64);
  v1[24] = OUTLINED_FUNCTION_4_7();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0) - 8) + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v20 = sub_269853854();
  v1[26] = v20;
  OUTLINED_FUNCTION_5_12(v20);
  v1[27] = v21;
  v23 = *(v22 + 64);
  v1[28] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_269707944, 0, 0);
}

uint64_t sub_269707944()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2697089EC(v0[25]);
    return sub_269855354();
  }

  else
  {
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[22];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    sub_269853844();
    sub_2696CB944();
    v10 = v9;
    (*(v7 + 8))(v6, v8);
    if (v10)
    {
      v11 = v0[21];
      v12 = v0[11];

      sub_269851A34();
      v13 = *(v12 + 96);
      v14 = sub_2698543F4();
      if (v15)
      {
        v18 = v0[18];

        sub_2698519B4();
        v19 = *(MEMORY[0x277CB9BC8] + 4);
        v20 = swift_task_alloc();
        v0[29] = v20;
        v17 = sub_269708A54(&qword_280323B78, MEMORY[0x277CBA370]);
        *v20 = v0;
        v20[1] = sub_269707D00;
        v21 = v0[21];
        v15 = v0[18];
        v16 = v0[19];
        v14 = (v0 + 2);
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x28210B3D0](v14, v15, v16, v17);
    }

    else
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v22 = v0[15];
      v23 = v0[12];
      v24 = v0[13];
      v25 = __swift_project_value_buffer(v23, qword_281571B38);
      (*(v24 + 16))(v22, v25, v23);
      v26 = sub_2698548B4();
      v27 = sub_269854F24();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_269684000, v26, v27, "Unable to extract searach term from input", v28, 2u);
        MEMORY[0x26D647170](v28, -1, -1);
      }

      v29 = v0[15];
      v30 = v0[12];
      v31 = v0[13];
      v32 = v0[10];

      v33 = *(v31 + 8);
      v34 = OUTLINED_FUNCTION_22_3();
      v35(v34);
      sub_269853164();
      v36 = OUTLINED_FUNCTION_0_23();
      v37(v36);

      OUTLINED_FUNCTION_28_2();

      return v38(2);
    }
  }
}

uint64_t sub_269707D00()
{
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = v2[29];
  v5 = v2[18];
  v6 = v2[17];
  v7 = v2[16];
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  v3[30] = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v10 = sub_269707F98;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v10 = sub_269707E74;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_269707E74()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v7 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_269853494();

  sub_269853164();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10(v9);
  v11 = OUTLINED_FUNCTION_0_23();
  v12(v11);

  OUTLINED_FUNCTION_28_2();

  return v13(0);
}

uint64_t sub_269707F98()
{
  v41 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = v0[30];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[30];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    v0[9] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, &v40);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_269684000, v7, v8, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D647170](v14, -1, -1);
    MEMORY[0x26D647170](v13, -1, -1);

    v19 = *(v11 + 8);
    v20 = OUTLINED_FUNCTION_22_3();
    v21(v20);
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_22_3();
    v27(v26);
  }

  v28 = v0[30];
  v30 = v0[20];
  v29 = v0[21];
  v31 = v0[19];
  v32 = v0[10];
  sub_269853164();

  v33 = *(v30 + 8);
  v34 = OUTLINED_FUNCTION_22_3();
  v35(v34);
  v36 = OUTLINED_FUNCTION_0_23();
  v37(v36);

  OUTLINED_FUNCTION_28_2();

  return v38(2);
}

uint64_t sub_26970821C()
{
  type metadata accessor for ExecutePlayVideoIntentFlow();
  sub_269708A54(&qword_280323B70, type metadata accessor for ExecutePlayVideoIntentFlow);
  return sub_269852B54();
}

uint64_t *sub_2697082AC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  sub_2697089EC(v0 + OBJC_IVAR____TtC16SiriVideoIntents26ExecutePlayVideoIntentFlow_input);
  return v0;
}

uint64_t sub_2697082EC()
{
  sub_2697082AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecutePlayVideoIntentFlow()
{
  result = qword_280323B60;
  if (!qword_280323B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269708398()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269708444()
{
  if (qword_280322458 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D660;

  return v0;
}

uint64_t sub_2697084BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708558;

  return sub_269707724();
}

uint64_t sub_269708558()
{
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  OUTLINED_FUNCTION_28_2();

  return v7(v2);
}

uint64_t sub_269708640(uint64_t a1)
{
  v2 = *v1;
  sub_269707620(a1);
  return 1;
}

uint64_t sub_269708668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_269708558;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26970873C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_269708804;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269708804()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2697088E8()
{
  type metadata accessor for ExecutePlayVideoIntentFlow();

  return sub_269852B84();
}

uint64_t sub_269708924(uint64_t a1)
{
  result = sub_269708A54(&qword_280323B70, type metadata accessor for ExecutePlayVideoIntentFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26970897C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697089EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269708A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_23()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v8 = *(v0[27] + 8);
  return v0[28];
}

uint64_t sub_269708AC0()
{
  qword_28033D670 = qword_280323D18;
  *algn_28033D678 = off_280323D20;
}

uint64_t sub_269708ADC(uint64_t a1)
{
  sub_269852C84();
  sub_269852BB4();
  v2 = type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_269708B40(&v8, a1, &v7);
  return v5;
}

uint64_t sub_269708B40(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v7 = OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input;
  v8 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  sub_26968E5D4(a1, v3 + 56);
  *(v3 + 96) = a2;
  sub_26968E5D4(a3, v3 + 16);
  return v3;
}

uint64_t sub_269708BBC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_269853854();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input;
  swift_beginAccess();
  sub_269702838(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_269708CC0()
{
  OUTLINED_FUNCTION_2_7();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_2698548D4();
  v1[12] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[13] = v4;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = sub_2698519C4();
  v1[16] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[17] = v8;
  v10 = *(v9 + 64);
  v1[18] = OUTLINED_FUNCTION_4_7();
  v11 = *(*(sub_269851A24() - 8) + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269851994();
  v1[20] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[21] = v13;
  v15 = *(v14 + 64);
  v1[22] = OUTLINED_FUNCTION_4_7();
  v16 = sub_2698538B4();
  v1[23] = v16;
  OUTLINED_FUNCTION_5_12(v16);
  v1[24] = v17;
  v19 = *(v18 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0) - 8) + 64);
  v1[26] = OUTLINED_FUNCTION_4_7();
  v21 = sub_269853854();
  v1[27] = v21;
  OUTLINED_FUNCTION_5_12(v21);
  v1[28] = v22;
  v24 = *(v23 + 64);
  v1[29] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_269708F04, 0, 0);
}

void sub_269708F04()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2697089EC(v0[26]);
    sub_269855354();
    OUTLINED_FUNCTION_28_1();
  }

  else
  {
    v6 = v0[24];
    v5 = v0[25];
    v7 = v0[23];
    (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
    sub_269853844();
    sub_2696CB944();
    v9 = v8;
    (*(v6 + 8))(v5, v7);
    if (!v9)
    {
      if (qword_280322700 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v25 = v0[15];
      v26 = v0[12];
      v27 = v0[13];
      v28 = __swift_project_value_buffer(v26, qword_281571B38);
      (*(v27 + 16))(v25, v28, v26);
      v29 = sub_2698548B4();
      v30 = sub_269854F24();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_269684000, v29, v30, "Unable to extract searach term from input", v31, 2u);
        MEMORY[0x26D647170](v31, -1, -1);
      }

      v32 = v0[15];
      v33 = v0[12];
      v34 = v0[13];
      v35 = v0[10];

      v36 = *(v34 + 8);
      v37 = OUTLINED_FUNCTION_22_3();
      v38(v37);
      sub_269853164();
      v39 = OUTLINED_FUNCTION_0_24();
      v40(v39);

      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_28_1();

      __asm { BRAA            X2, X16 }
    }

    v10 = v0[22];
    v11 = v0[19];
    v12 = v0[11];

    sub_269851A14();
    MEMORY[0x26D642880](v11);
    v13 = *(v12 + 96);
    v14 = sub_2698543F4();
    if (v15)
    {
      v18 = v0[18];

      sub_2698519B4();
      v19 = *(MEMORY[0x277CB9BC8] + 4);
      v20 = swift_task_alloc();
      v0[30] = v20;
      sub_269709CC8(&qword_280323BA0, MEMORY[0x277CB9B78]);
      *v20 = v0;
      v20[1] = sub_2697092C8;
      v21 = v0[22];
      v22 = v0[20];
      v23 = v0[18];
      OUTLINED_FUNCTION_28_1();
    }

    else
    {
      __break(1u);
    }

    MEMORY[0x28210B3D0](v14, v15, v16, v17);
  }
}

uint64_t sub_2697092C8()
{
  OUTLINED_FUNCTION_14_6();
  v3 = v2;
  v4 = v2[30];
  v5 = v2[18];
  v6 = v2[17];
  v7 = v2[16];
  v8 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v9 = v8;
  v3[31] = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v10 = sub_269709568;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v10 = sub_26970943C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26970943C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v7 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_269853494();

  sub_269853164();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10(v9);
  v11 = OUTLINED_FUNCTION_0_24();
  v12(v11);

  OUTLINED_FUNCTION_28_2();

  return v13(0);
}

uint64_t sub_269709568()
{
  v41 = v0;
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = v0[31];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    v0[9] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, &v40);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_269684000, v7, v8, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D647170](v14, -1, -1);
    MEMORY[0x26D647170](v13, -1, -1);

    v19 = *(v11 + 8);
    v20 = OUTLINED_FUNCTION_22_3();
    v21(v20);
  }

  else
  {
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[12];

    v25 = *(v23 + 8);
    v26 = OUTLINED_FUNCTION_22_3();
    v27(v26);
  }

  v28 = v0[31];
  v30 = v0[21];
  v29 = v0[22];
  v31 = v0[20];
  v32 = v0[10];
  sub_269853164();

  v33 = *(v30 + 8);
  v34 = OUTLINED_FUNCTION_22_3();
  v35(v34);
  v36 = OUTLINED_FUNCTION_0_24();
  v37(v36);

  OUTLINED_FUNCTION_28_2();

  return v38(2);
}

uint64_t sub_2697097F4()
{
  type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow();
  sub_269709CC8(&qword_280323B98, type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow);
  return sub_269852B54();
}

uint64_t *sub_269709884()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  sub_2697089EC(v0 + OBJC_IVAR____TtC16SiriVideoIntents39ExecuteShowInAppSearchResultsIntentFlow_input);
  return v0;
}

uint64_t sub_2697098C4()
{
  sub_269709884();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow()
{
  result = qword_280323B88;
  if (!qword_280323B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269709970()
{
  sub_2697012B4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269709A1C()
{
  if (qword_280322460 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D670;

  return v0;
}

uint64_t sub_269709A84()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269708558;

  return sub_269708CC0();
}

uint64_t sub_269709B20(uint64_t a1)
{
  v2 = *v1;
  sub_269708BBC(a1);
  return 1;
}

uint64_t sub_269709B6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_269708804;

  return sub_269738544(a1, a2, WitnessTable);
}

uint64_t sub_269709C34()
{
  type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow();

  return sub_269852B84();
}

uint64_t sub_269709C70(uint64_t a1)
{
  result = sub_269709CC8(&qword_280323B98, type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269709CC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_24()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = *(v0[28] + 8);
  return v0[29];
}

uint64_t sub_269709D34()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  sub_2698538C4();
  sub_269852C84();
  if (qword_2803226B0 != -1)
  {
    swift_once();
  }

  v2 = qword_28033D8E0;
  v3 = sub_269853264();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_269853254();
  v49[3] = v0;
  v49[4] = &off_287A3DBA0;
  v49[0] = v1;
  v47 = &type metadata for AppInfoProvider;
  v48 = &off_287A41388;
  v7 = type metadata accessor for SiriSignalsRecorder();
  v44 = v7;
  v45 = &off_287A44CA0;
  v43[0] = v2;
  v41 = &type metadata for CoreAnalyticsService;
  v42 = &xmmword_287A41610;
  v38 = v3;
  v39 = MEMORY[0x277D5BD58];
  *&v37 = v6;
  v8 = type metadata accessor for ThirdPartyAppDisambiguationStrategy();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v49, v0);
  v36[1] = v36;
  OUTLINED_FUNCTION_3_20();
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = (v16 - v15);
  (*(v18 + 16))(v16 - v15);
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  OUTLINED_FUNCTION_3_20();
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v24 = (v23 - v22);
  (*(v25 + 16))(v23 - v22);
  __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  v26 = *v17;
  v27 = *v24;
  v28 = (v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider);
  v28[3] = v0;
  v28[4] = &off_287A3DBA0;
  *v28 = v26;
  v29 = v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appInfoProvider;
  *(v29 + 24) = &type metadata for AppInfoProvider;
  *(v29 + 32) = &off_287A41388;
  v30 = (v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder);
  v30[3] = v7;
  v30[4] = &off_287A44CA0;
  *v30 = v27;
  v31 = v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService;
  *(v31 + 24) = &type metadata for CoreAnalyticsService;
  *(v31 + 32) = &xmmword_287A41610;
  v32 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
  v33 = type metadata accessor for AppDisambiguationContext(0);
  __swift_storeEnumTagSinglePayload(v11 + v32, 1, 1, v33);
  sub_26970EF58(v51, v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState);
  sub_26968E5D4(&v50, v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_aceServiceInvoker);
  sub_26968E5D4(&v37, v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator);
  type metadata accessor for LocUtil();
  v34 = swift_allocObject();
  sub_26968E5D4(v51, v34 + 16);
  *(v11 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_locUtil) = v34;

  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v49);
  return v11;
}

uint64_t sub_26970A0FC()
{
  v429 = *MEMORY[0x277D85DE8];
  v388 = type metadata accessor for SignalRecordingContext();
  v0 = OUTLINED_FUNCTION_8(v388);
  v387 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_1();
  v420 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_15_1(&v385 - v10);
  v394 = type metadata accessor for AppDisambiguationContext(v11);
  v12 = OUTLINED_FUNCTION_4_3(v394);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v16 - v15);
  v404 = sub_2698523C4();
  v17 = OUTLINED_FUNCTION_8(v404);
  v403 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v402 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  OUTLINED_FUNCTION_8_9(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_15_1(&v385 - v27);
  v408 = sub_269851EF4();
  v28 = OUTLINED_FUNCTION_8(v408);
  v407 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v33 - v32);
  v412 = sub_269852474();
  v34 = OUTLINED_FUNCTION_8(v412);
  v401 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15_1(&v385 - v39);
  v413 = sub_269853874();
  v40 = OUTLINED_FUNCTION_8(v413);
  v411 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v45 - v44);
  v418 = sub_2698538A4();
  v46 = OUTLINED_FUNCTION_8(v418);
  v417 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v50);
  v422 = &v385 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  OUTLINED_FUNCTION_8_9(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v55);
  v405 = &v385 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v60);
  v62 = &v385 - v61;
  v423 = sub_2698548D4();
  v63 = OUTLINED_FUNCTION_8(v423);
  v421 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  v77 = MEMORY[0x28223BE20](v76);
  v79 = &v385 - v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_15_1(&v385 - v82);
  v419 = type metadata accessor for MediaNLIntent();
  v83 = OUTLINED_FUNCTION_4_3(v419);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3_1();
  v88 = v87 - v86;
  v89 = sub_269853F44();
  v90 = OUTLINED_FUNCTION_8(v89);
  v92 = v91;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_3_1();
  v97 = v96 - v95;
  v98 = sub_2698538B4();
  v99 = OUTLINED_FUNCTION_8(v98);
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_3_1();
  v106 = (v105 - v104);
  sub_269853844();
  v107 = (*(v101 + 88))(v106, v98);
  if (v107 == *MEMORY[0x277D5C128])
  {
    v108 = OUTLINED_FUNCTION_16_10();
    v109(v108);
    v110 = *(v92 + 4);
    v111 = OUTLINED_FUNCTION_24_6();
    v112(v111);
    v422 = v92;
    (*(v92 + 2))(v88, v97, v89);
    if (qword_280322628 != -1)
    {
      swift_once();
    }

    sub_26970F014(qword_280323548, type metadata accessor for MediaNLIntent);
    sub_269853D54();
    v113 = v423;
    v114 = v420;
    if (v426 == 7)
    {
      goto LABEL_5;
    }

    if (sub_2697A9738(v426) == 0x6C65636E6163 && v164 == 0xE600000000000000)
    {
    }

    else
    {
      v166 = sub_269855584();

      if ((v166 & 1) == 0)
      {
LABEL_5:
        v418 = v89;
        sub_269853F24();
        v115 = sub_269853D94();
        if (__swift_getEnumTagSinglePayload(v62, 1, v115) == 1)
        {
          sub_26969B0C0(v62, &qword_280323330, qword_26985B080);
          v116 = 0;
          v117 = 0;
          v118 = 0x280322000uLL;
LABEL_7:
          if (*(v118 + 1760) != -1)
          {
            OUTLINED_FUNCTION_0_10();
          }

          v119 = __swift_project_value_buffer(v113, qword_28033D910);
          v120 = v421;
          v121 = v113;
          v122 = v414;
          (*(v421 + 16))(v414, v119, v121);

          v123 = sub_2698548B4();
          v124 = sub_269854F14();

          if (os_log_type_enabled(v123, v124))
          {
            v125 = OUTLINED_FUNCTION_27_2();
            v420 = v88;
            v126 = v97;
            v127 = v125;
            v128 = OUTLINED_FUNCTION_9_3();
            *&v426 = v128;
            *v127 = 136315138;
            if (v117)
            {
              v129 = v116;
            }

            else
            {
              v129 = 7104878;
            }

            if (!v117)
            {
              v117 = 0xE300000000000000;
            }

            v130 = sub_26974F520(v129, v117, &v426);

            *(v127 + 4) = v130;
            _os_log_impl(&dword_269684000, v123, v124, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse NLv3 intent domain %s is not media", v127, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v128);
            OUTLINED_FUNCTION_10();
            v97 = v126;
            v88 = v420;
            OUTLINED_FUNCTION_10();
          }

          else
          {
          }

          (*(v120 + 8))(v122, v121);
          v225 = v422;
          sub_269853694();
          v187 = sub_269853674();
          OUTLINED_FUNCTION_1_16();
          sub_26970F05C(v88, v226);
          (*(v225 + 1))(v97, v418);
          goto LABEL_141;
        }

        v417 = v97;
        v116 = sub_269853D74();
        v117 = v188;
        OUTLINED_FUNCTION_3_14(v115);
        v190 = *(v189 + 8);
        v191 = OUTLINED_FUNCTION_0_17();
        v192(v191);
        if (v116 == 0x616964656DLL && v117 == 0xE500000000000000)
        {

          v195 = v415;
        }

        else
        {
          v194 = sub_269855584();
          v195 = v415;
          v97 = v417;
          v118 = 0x280322000;
          if ((v194 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v227 = v405;
        if (qword_2803225D0 != -1)
        {
          swift_once();
        }

        v228 = _s10MediaNLAppVMa(0);
        sub_26970F014(qword_280323708, _s10MediaNLAppVMa);
        v229 = v88;
        sub_269853D44();
        if (__swift_getEnumTagSinglePayload(v227, 1, v228) == 1)
        {
          sub_26969B0C0(v227, &qword_280323700, qword_26985B120);
          v201 = v421;
LABEL_102:
          OUTLINED_FUNCTION_34_3();
          if (!v143)
          {
            v281 = OUTLINED_FUNCTION_0_10();
          }

          OUTLINED_FUNCTION_15_8(v281, qword_28033D910);
          v282 = v400;
          v283(v400);
          v284 = sub_2698548B4();
          v285 = sub_269854F14();
          v286 = OUTLINED_FUNCTION_17_2(v285);
          v287 = v418;
          v288 = v422;
          if (v286)
          {
            v289 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_30_2(v289);
            OUTLINED_FUNCTION_10_12();
            _os_log_impl(v290, v291, v292, v293, v294, 2u);
            OUTLINED_FUNCTION_18_7();
          }

          (*(v201 + 8))(v282, v113);
          sub_269853694();
          sub_2696BAE9C();
          v295 = swift_allocError();
          OUTLINED_FUNCTION_5_14(v296, 1);
          v187 = sub_269853654();
          OUTLINED_FUNCTION_1_16();
          sub_26970F05C(v229, v297);
          (*(v288 + 1))(v417, v287);
          goto LABEL_140;
        }

        v247 = sub_2697A5220();
        v199 = v248;
        sub_26970F05C(v227, _s10MediaNLAppVMa);
        v201 = v421;
        if (!v199)
        {
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_1_16();
        sub_26970F05C(v229, v249);
        (*(v422 + 1))(v417, v418);

        v200 = v247;
        goto LABEL_90;
      }
    }

    v202 = v88;
    v203 = v97;
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v204 = __swift_project_value_buffer(v113, qword_28033D910);
    v205 = v421;
    v206 = v416;
    (*(v421 + 16))(v416, v204, v113);
    v207 = sub_2698548B4();
    v208 = sub_269854F14();
    v209 = OUTLINED_FUNCTION_17_2(v208);
    v210 = v422;
    if (v209)
    {
      v211 = OUTLINED_FUNCTION_16_2();
      *v211 = 0;
      _os_log_impl(&dword_269684000, v207, v206, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse NLv3IntentOnly cancel", v211, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v205 + 8))(v416, v113);
    sub_269853694();
    v187 = sub_269853664();
    OUTLINED_FUNCTION_1_16();
    sub_26970F05C(v202, v212);
    (*(v210 + 1))(v203, v89);
    goto LABEL_141;
  }

  if (v107 == *MEMORY[0x277D5C150])
  {
    v131 = OUTLINED_FUNCTION_16_10();
    v132(v131);
    (*(v417 + 32))(v422, v106, v418);
    OUTLINED_FUNCTION_34_3();
    if (!v143)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v133 = v423;
    v134 = __swift_project_value_buffer(v423, qword_28033D910);
    v135 = v421;
    v136 = *(v421 + 16);
    v136(v79, v134, v133);
    v137 = sub_2698548B4();
    v138 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v138))
    {
      v139 = OUTLINED_FUNCTION_16_2();
      *v139 = 0;
      _os_log_impl(&dword_269684000, v137, v138, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse directInvocation", v139, 2u);
      OUTLINED_FUNCTION_10();
    }

    v140 = *(v135 + 8);
    v141 = v79;
    v113 = v423;
    v140(v141, v423);
    v143 = sub_269853884() == 0xD00000000000002CLL && 0x800000026987A070 == v142;
    v144 = MEMORY[0x277D84F70];
    if (v143)
    {
    }

    else
    {
      v145 = sub_269855584();

      if ((v145 & 1) == 0)
      {
        if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v146)
        {
        }

        else
        {
          v148 = sub_269855584();

          if ((v148 & 1) == 0)
          {
            v149 = v389;
            v136(v389, v134, v113);
            v150 = v417;
            v151 = v386;
            v152 = v418;
            (*(v417 + 16))(v386, v422, v418);
            v153 = sub_2698548B4();
            v154 = sub_269854F14();
            if (os_log_type_enabled(v153, v154))
            {
              v155 = v151;
              v156 = OUTLINED_FUNCTION_27_2();
              v157 = OUTLINED_FUNCTION_9_3();
              *&v426 = v157;
              *v156 = 136315138;
              v421 = sub_269853884();
              v159 = v158;
              v160 = *(v150 + 8);
              v160(v155, v418);
              v161 = sub_26974F520(v421, v159, &v426);
              v152 = v418;

              *(v156 + 4) = v161;
              _os_log_impl(&dword_269684000, v153, v154, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse ignoring unsupported directInvocation %s", v156, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v157);
              OUTLINED_FUNCTION_10();
              OUTLINED_FUNCTION_18_7();

              v162 = v389;
              v163 = v423;
            }

            else
            {
              v346 = v113;

              v160 = *(v150 + 8);
              v160(v151, v152);
              v162 = v149;
              v163 = v346;
            }

            v140(v162, v163);
            sub_269853694();
            v187 = sub_269853674();
            v160(v422, v152);
            goto LABEL_141;
          }
        }

        if (sub_269853894())
        {
          v308 = objc_opt_self();
          v144 = sub_2698549D4();

          *&v426 = 0;
          v309 = [v308 dataWithJSONObject:v144 options:0 error:&v426];

          v310 = v426;
          if (v309)
          {
            sub_269851C94();

            if (qword_280322440 != -1)
            {
              swift_once();
            }

            sub_2696CC3A4();
            sub_269851A84();
            v347 = OUTLINED_FUNCTION_24_6();
            sub_2696C1F3C(v347, v348);
            v144 = *(&v426 + 1);
            if (*(&v426 + 1))
            {
              v349 = *(&v427 + 1);

              if (v349)
              {
                sub_269853694();
                sub_269854404();
                sub_2698543E4();
                v187 = sub_269853684();

                v350 = OUTLINED_FUNCTION_8_13();
                v351(v350);
                goto LABEL_141;
              }
            }
          }

          else
          {
            v331 = v310;
            v332 = sub_269851BD4();

            swift_willThrow();
          }
        }

        v333 = OUTLINED_FUNCTION_36_2(&v423);
        v136(v333, v134, v113);
        v231 = sub_2698548B4();
        v334 = sub_269854F24();
        if (!OUTLINED_FUNCTION_17_2(v334))
        {
          goto LABEL_139;
        }

        goto LABEL_138;
      }
    }

    v196 = sub_269853894();
    if (v196)
    {
      sub_26981CFD4(0x696669746E656469, 0xEA00000000007265, v196);

      if (*(&v427 + 1))
      {
        if (swift_dynamicCast())
        {
          v197 = OUTLINED_FUNCTION_8_13();
          v198(v197);
          v200 = v424[0];
          v199 = v424[1];

          v201 = v421;
LABEL_81:
          v114 = v420;
          goto LABEL_82;
        }

LABEL_78:
        v230 = OUTLINED_FUNCTION_36_2(&v430);
        v136(v230, v134, v113);
        v231 = sub_2698548B4();
        v232 = sub_269854F14();
        if (!OUTLINED_FUNCTION_17_2(v232))
        {
LABEL_139:

          v140(v144, v113);
          sub_269853694();
          sub_2696BAE9C();
          v295 = swift_allocError();
          OUTLINED_FUNCTION_5_14(v341, 1);
          v187 = sub_269853654();
          v342 = OUTLINED_FUNCTION_8_13();
          v343(v342);
LABEL_140:

          goto LABEL_141;
        }

LABEL_138:
        v335 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v335);
        OUTLINED_FUNCTION_10_12();
        _os_log_impl(v336, v337, v338, v339, v340, 2u);
        OUTLINED_FUNCTION_18_7();
        goto LABEL_139;
      }
    }

    else
    {
      v426 = 0u;
      v427 = 0u;
    }

    sub_26969B0C0(&v426, &qword_280322F88, qword_26985AB90);
    goto LABEL_78;
  }

  if (v107 == *MEMORY[0x277D5C140])
  {
    v167 = OUTLINED_FUNCTION_16_10();
    v168(v167);
    v169 = v411;
    v170 = *(v411 + 32);
    v171 = v410;
    v172 = OUTLINED_FUNCTION_24_6();
    v173 = v413;
    v174(v172);
    v175 = v406;
    sub_269853864();
    v176 = v409;
    sub_2696D3C74();
    OUTLINED_FUNCTION_3_15(&v428 + 8);
    v177(v175, v408);
    v178 = v412;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v176, 1, v412);
    v113 = v423;
    v180 = v421;
    if (EnumTagSinglePayload == 1)
    {
      v181 = sub_26969B0C0(v176, &qword_280323360, &unk_26985AB80);
      if (qword_2803226E0 != -1)
      {
        v181 = OUTLINED_FUNCTION_0_10();
      }

      OUTLINED_FUNCTION_15_8(v181, qword_28033D910);
      v182 = v396;
      v183(v396);
      v184 = sub_2698548B4();
      v185 = sub_269854F14();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v186);
        _os_log_impl(&dword_269684000, v184, v185, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse, pegasusResults has no videoClientComponent", v175, 2u);
        OUTLINED_FUNCTION_18_7();
      }

      (*(v180 + 8))(v182, v113);
      sub_269853694();
      v187 = sub_269853674();
      (*(v169 + 8))(v171, v173);
      goto LABEL_141;
    }

    v233 = v401;
    v234 = v421;
    v235 = v397;
    (*(v401 + 32))(v397, v176, v178);
    v236 = v402;
    sub_269852424();
    v237 = sub_2698521E4();
    v238 = v171;
    v199 = v239;
    OUTLINED_FUNCTION_3_15(&v426);
    v240(v236, v404);
    v241 = v235;
    v201 = v234;
    (*(v233 + 8))(v241, v178);
    v200 = v237;
    (*(v169 + 8))(v238, v413);

    goto LABEL_81;
  }

  v113 = v423;
  v213 = v421;
  if (v107 != *MEMORY[0x277D5C148])
  {
    OUTLINED_FUNCTION_34_3();
    if (!v143)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v242 = __swift_project_value_buffer(v113, qword_28033D910);
    v243 = v395;
    (*(v213 + 16))(v395, v242, v113);
    v244 = sub_2698548B4();
    v245 = sub_269854F24();
    if (os_log_type_enabled(v244, v245))
    {
      v246 = OUTLINED_FUNCTION_16_2();
      *v246 = 0;
      _os_log_impl(&dword_269684000, v244, v245, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse, unsupported parse type, will ignore", v246, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v213 + 8))(v243, v113);
    sub_269853694();
    v187 = sub_269853674();
    (*(v101 + 8))(v106, v98);
    goto LABEL_141;
  }

  v214 = OUTLINED_FUNCTION_16_10();
  v215(v214);
  v216 = *v106;
  sub_2696D6C54();
  v114 = v420;
  v201 = v213;
  if (!v217)
  {
LABEL_124:
    if (qword_2803226E0 != -1)
    {
      v217 = OUTLINED_FUNCTION_0_10();
    }

    OUTLINED_FUNCTION_15_8(v217, qword_28033D910);
    v321 = v391;
    v322(v391);
    v323 = sub_2698548B4();
    v324 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v324))
    {
      v325 = OUTLINED_FUNCTION_16_2();
      *v325 = 0;
      _os_log_impl(&dword_269684000, v323, v324, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse, pommesResponse has no appBundleIdentifier", v325, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v201 + 8))(v321, v113);
    sub_269853694();
    v187 = sub_269853674();

    goto LABEL_141;
  }

  v218 = v217;
  v219 = v392;
  sub_269854544();

  v220 = v402;
  sub_269852424();
  OUTLINED_FUNCTION_3_15(v425);
  v221(v219, v412);
  v200 = sub_2698521E4();
  v199 = v222;
  OUTLINED_FUNCTION_3_15(&v426);
  v223(v220, v404);
  v224 = HIBYTE(v199) & 0xF;
  if ((v199 & 0x2000000000000000) == 0)
  {
    v224 = v200 & 0xFFFFFFFFFFFFLL;
  }

  if (!v224)
  {

    goto LABEL_124;
  }

LABEL_82:
  v195 = v415;
LABEL_90:
  OUTLINED_FUNCTION_34_3();
  if (!v143)
  {
    v250 = OUTLINED_FUNCTION_0_10();
  }

  OUTLINED_FUNCTION_15_8(v250, qword_28033D910);
  v418 = v251;
  v422 = v252;
  v419 = v253;
  v253(v195);

  v254 = sub_2698548B4();
  v255 = sub_269854F14();

  if (os_log_type_enabled(v254, v255))
  {
    v256 = OUTLINED_FUNCTION_27_2();
    v257 = OUTLINED_FUNCTION_9_3();
    *&v426 = v257;
    *v256 = 136315138;
    v258 = OUTLINED_FUNCTION_37_3();
    *(v256 + 4) = sub_26974F520(v258, v259, v260);
    OUTLINED_FUNCTION_10_12();
    _os_log_impl(v261, v262, v263, v264, v265, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v257);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18_7();
  }

  v266 = *(v201 + 8);
  v266(v195, v113);
  if (v200 == 0xD000000000000020 && 0x800000026987D5B0 == v199)
  {
  }

  else
  {
    OUTLINED_FUNCTION_37_3();
    v268 = sub_269855584();

    if ((v268 & 1) == 0)
    {
      swift_beginAccess();
      v269 = v393;
      sub_26970EEA0();
      v270 = __swift_getEnumTagSinglePayload(v269, 1, v394);
      v417 = v199;
      v416 = v266;
      if (v270 == 1)
      {
        sub_26969B0C0(v269, &qword_280323798, &unk_26985C770);
        OUTLINED_FUNCTION_36_2(&v415);
        OUTLINED_FUNCTION_9_13();
        v271();
        v272 = sub_2698548B4();
        v273 = sub_269854F24();
        if (OUTLINED_FUNCTION_17_2(v273))
        {
          v274 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v274);
          OUTLINED_FUNCTION_10_12();
          _os_log_impl(v275, v276, v277, v278, v279, 2u);
          OUTLINED_FUNCTION_18_7();
        }

        v280 = OUTLINED_FUNCTION_27_4();
        (v266)(v280);
        v314 = MEMORY[0x277D84F90];
      }

      else
      {
        v311 = v399;
        sub_26970EEFC();
        v312 = *v311;
        v313 = *(*v311 + 16);
        v314 = MEMORY[0x277D84F90];
        if (v313)
        {
          *&v426 = MEMORY[0x277D84F90];
          sub_269814F0C(0, v313, 0);
          v314 = v426;
          v315 = (v312 + 40);
          do
          {
            v317 = *(v315 - 1);
            v316 = *v315;
            *&v426 = v314;
            v319 = *(v314 + 16);
            v318 = *(v314 + 24);

            if (v319 >= v318 >> 1)
            {
              sub_269814F0C(v318 > 1, v319 + 1, 1);
              v314 = v426;
            }

            *(v314 + 16) = v319 + 1;
            v320 = v314 + 16 * v319;
            *(v320 + 32) = v317;
            *(v320 + 40) = v316;
            v315 += 3;
            --v313;
          }

          while (v313);
          v114 = v420;
        }

        v326 = sub_2698054AC(v312);
        v328 = v327;
        v329 = *(v399 + 16);
        sub_26970EF58(v398 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService, v424);
        __swift_project_boxed_opaque_existential_1(v424, v424[3]);
        if ((v329 & 1) != 0 && v328 && (v200 != v326 || v328 != v417))
        {
          OUTLINED_FUNCTION_38_2();
        }

        if ((v329 & 6) != 0)
        {
          if (v328)
          {
            if (v200 != v326 || v328 != v417)
            {
              OUTLINED_FUNCTION_38_2();
            }
          }
        }

        else
        {
        }

        v353 = v399 + *(v394 + 28);
        v354 = (v353 + *(type metadata accessor for ModelParams(0) + 28));
        v355 = v354[2];
        v427 = v354[1];
        v428 = v355;
        v426 = *v354;
        sub_2697B3690();
        __swift_destroy_boxed_opaque_existential_0(v424);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C08, &unk_26985C780);
        v356 = *(v387 + 72);
        v357 = (*(v387 + 80) + 32) & ~*(v387 + 80);
        v358 = swift_allocObject();
        *(v358 + 16) = xmmword_2698580D0;
        v415 = v358;
        v359 = (v358 + v357);
        v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
        v361 = *(v360 + 48);
        v362 = v417;
        *v359 = v200;
        v359[1] = v362;
        sub_26970EFB8();
        swift_storeEnumTagMultiPayload();
        v363 = (v359 + v356);
        v364 = *(v360 + 48);
        v420 = v200;
        v365 = v417;
        *v363 = v200;
        v363[1] = v365;
        sub_26970EFB8();
        swift_storeEnumTagMultiPayload();
        v366 = (v398 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder);
        swift_bridgeObjectRetain_n();
        v367 = 0;
        do
        {
          v368 = v367;
          sub_26970EFB8();
          v369 = *__swift_project_boxed_opaque_existential_1(v366, v366[3]);
          sub_2697F9524();
          if (v370)
          {
            v371 = *__swift_project_boxed_opaque_existential_1(v366, v366[3]);
            sub_2697F9BE8();
          }

          sub_26970F05C(v114, type metadata accessor for SignalRecordingContext);
          v367 = 1;
        }

        while ((v368 & 1) == 0);
        swift_setDeallocating();
        sub_269819D6C();
        sub_26970F05C(v399, type metadata accessor for AppDisambiguationContext);

        v113 = v423;
      }

      OUTLINED_FUNCTION_37_3();
      sub_26970C48C();
      v373 = v372;

      if (v373)
      {
        v374 = v390;
        OUTLINED_FUNCTION_9_13();
        v375();

        v376 = sub_2698548B4();
        v377 = sub_269854F24();

        if (os_log_type_enabled(v376, v377))
        {
          v378 = OUTLINED_FUNCTION_27_2();
          v379 = OUTLINED_FUNCTION_9_3();
          v424[0] = v379;
          *v378 = 136315138;
          MEMORY[0x26D645BC0](v314, MEMORY[0x277D837D0]);

          v380 = OUTLINED_FUNCTION_0_17();
          v383 = sub_26974F520(v380, v381, v382);

          *(v378 + 4) = v383;
          _os_log_impl(&dword_269684000, v376, v377, "ThirdPartyAppDisambiguationStrategy#parseDisambiguationResponse could not find appId in disambiguationAppIds (%s", v378, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v379);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();

          v384 = v390;
        }

        else
        {

          v384 = v374;
        }

        v416(v384, v113);
      }

      else
      {
      }

      sub_269853694();
      sub_269854404();
      OUTLINED_FUNCTION_37_3();
      sub_2698543E4();
      v187 = sub_269853684();

      goto LABEL_141;
    }
  }

  OUTLINED_FUNCTION_36_2(&v427 + 8);
  OUTLINED_FUNCTION_9_13();
  v298();
  v299 = sub_2698548B4();
  v300 = sub_269854F14();
  if (OUTLINED_FUNCTION_17_2(v300))
  {
    v301 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v301);
    OUTLINED_FUNCTION_10_12();
    _os_log_impl(v302, v303, v304, v305, v306, 2u);
    OUTLINED_FUNCTION_10();
  }

  v307 = OUTLINED_FUNCTION_27_4();
  (v266)(v307);
  sub_269853694();
  v187 = sub_269853674();
LABEL_141:
  v344 = *MEMORY[0x277D85DE8];
  return v187;
}

uint64_t sub_26970C48C()
{
  OUTLINED_FUNCTION_31_2();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  while (v4 != v2)
  {
    v6 = *(v5 - 1) == v1 && *v5 == v0;
    if (v6 || (sub_269855584() & 1) != 0)
    {
      return v2;
    }

    ++v2;
    v5 += 2;
  }

  return 0;
}

uint64_t sub_26970C514()
{
  OUTLINED_FUNCTION_2_7();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  OUTLINED_FUNCTION_5_12(v4);
  v1[18] = v5;
  v7 = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v8);
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_4_7();
  v11 = sub_269853634();
  v1[21] = v11;
  OUTLINED_FUNCTION_5_12(v11);
  v1[22] = v12;
  v14 = *(v13 + 64);
  v1[23] = OUTLINED_FUNCTION_4_7();
  v15 = type metadata accessor for VideoDataModels.DisambiguateItemsModel(0);
  v1[24] = v15;
  OUTLINED_FUNCTION_8_9(v15);
  v17 = *(v16 + 64);
  v1[25] = OUTLINED_FUNCTION_4_7();
  v18 = sub_269851E24();
  v1[26] = v18;
  OUTLINED_FUNCTION_5_12(v18);
  v1[27] = v19;
  v21 = *(v20 + 64);
  v1[28] = OUTLINED_FUNCTION_4_7();
  v22 = sub_269853234();
  v1[29] = v22;
  OUTLINED_FUNCTION_5_12(v22);
  v1[30] = v23;
  v25 = *(v24 + 64);
  v1[31] = OUTLINED_FUNCTION_4_7();
  v26 = sub_2698548D4();
  v1[32] = v26;
  OUTLINED_FUNCTION_5_12(v26);
  v1[33] = v27;
  v29 = *(v28 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26970C748, 0, 0);
}

uint64_t sub_26970C748()
{
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = v0[35];
  v2 = v0[33];
  v36 = __swift_project_value_buffer(v0[32], qword_28033D910);
  v35 = *(v2 + 16);
  v35(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    *v5 = 0;
    _os_log_impl(&dword_269684000, v3, v4, "ThirdPartyAppDisambiguationStrategy#makeDisambiguationPrompt", v5, 2u);
    OUTLINED_FUNCTION_10();
  }

  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v11 = v0[27];
  v10 = v0[28];
  v37 = v0[26];
  v13 = v0[16];
  v12 = v0[17];

  v14 = *(v7 + 8);
  v15 = OUTLINED_FUNCTION_0_17();
  v14(v15);
  v16 = v14;
  v17 = *(v12 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState + 32);
  __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState), *(v12 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState + 24));
  OUTLINED_FUNCTION_0_17();
  sub_269852C94();
  sub_26970E7D4(v13, v10);
  sub_269836F4C();
  sub_269837944();

  (*(v11 + 8))(v10, v37);
  v18 = *(v12 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_locUtil);
  sub_269830114();
  v0[12] = v19;
  v0[13] = v20;
  v0[36] = v20;
  if (v20)
  {
    v21 = *__swift_project_boxed_opaque_existential_1((v0[17] + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider), *(v0[17] + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider + 24));
    v22 = swift_task_alloc();
    v0[37] = v22;
    *v22 = v0;
    v22[1] = sub_26970CB28;

    return sub_26977F2C4(0xD000000000000017, 0x800000026987D590);
  }

  else
  {
    v24 = v16;
    (v35)(v0[34], v36, v0[32]);
    v25 = sub_2698548B4();
    v26 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v26))
    {
      v27 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v27);
      _os_log_impl(&dword_269684000, v25, v26, "Unable to get localized label for app disambiguation snippet", v10, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v29 = v0[33];
    v28 = v0[34];
    v30 = v0[32];

    (v24)(v28, v30);
    sub_2696BAE9C();
    swift_allocError();
    OUTLINED_FUNCTION_5_14(v31, 7);
    swift_willThrow();
    v32 = OUTLINED_FUNCTION_20_10();
    v33(v32);

    OUTLINED_FUNCTION_7_7();

    return v34();
  }
}

uint64_t sub_26970CB28()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  v3 = *v1;
  v3[7] = v1;
  v3[8] = v4;
  v3[9] = v0;
  v5 = v2[37];
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  v3[38] = v0;

  if (v0)
  {
    v8 = v3[36];

    v9 = sub_26970D124;
  }

  else
  {
    v9 = sub_26970CC40;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26970CC40()
{
  v53 = v0;
  v1 = v0[16];
  v2 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v3 = sub_26975004C(v1);
  v9 = v3;
  v10 = 0;
  v49 = v0;
  while (v9 != v10)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D646120](v10, v0[16]);
    }

    else
    {
      if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v11 = *(v1 + 32 + 8 * v10);
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    sub_2698543F4();
    if (v12)
    {

      MEMORY[0x26D645B90](v13);
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      v3 = sub_269854CF4();
      v2 = v52;
      ++v10;
      v0 = v49;
    }

    else
    {

      ++v10;
    }
  }

  v14 = sub_26975004C(v2);
  if (v14)
  {
    v15 = v14;
    v51 = MEMORY[0x277D84F90];
    sub_2698150D0(0, v14 & ~(v14 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = v0[18];
      v18 = v51;
      v47 = v2 & 0xC000000000000001;
      v48 = v2;
      v46 = v2 & 0xFFFFFFFFFFFFFF8;
      v19 = v0[38];
      while (1)
      {
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_31;
        }

        if (v47)
        {
          v21 = MEMORY[0x26D646120](v16, v48);
        }

        else
        {
          if (v16 >= *(v46 + 16))
          {
            goto LABEL_32;
          }

          v21 = *(v48 + 8 * v16 + 32);
        }

        v22 = v49[19];
        v52 = v21;
        sub_26970D430(&v52);

        v24 = *(v51 + 16);
        v23 = *(v51 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2698150D0(v23 > 1, v24 + 1, 1);
        }

        v25 = v49[19];
        *(v51 + 16) = v24 + 1;
        v26 = v51 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v27 = *(v17 + 72);
        v3 = sub_26970EEFC();
        ++v16;
        if (v20 == v15)
        {

          v0 = v49;
          goto LABEL_26;
        }
      }
    }

LABEL_33:
    __break(1u);
    return MEMORY[0x2821BB468](v3, v4, v5, v6, v7, v8);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_26:
  v50 = v0[8];
  v28 = v0[36];
  v29 = v0[12];
  v30 = v0[31];
  v32 = v0[24];
  v31 = v0[25];
  v33 = v0;
  v34 = v0[23];
  v35 = v0[20];
  v36 = v0[17];
  v33[39] = v50;
  v33[10] = v29;
  v33[11] = v28;
  sub_269852674();
  v37 = *(v32 + 20);
  v33[14] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A70, &unk_26985BEE0);
  sub_269852674();
  v38 = *(v32 + 24);
  *(v33 + 336) = 10;
  sub_269852674();
  sub_269852E84();
  *(swift_task_alloc() + 16) = v30;
  sub_2698535C4();

  v39 = *(v36 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator + 24);
  v40 = *(v36 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator), v39);
  v33[5] = type metadata accessor for VideoDataModels(0);
  v33[6] = sub_26970F014(&qword_280323A28, type metadata accessor for VideoDataModels);
  __swift_allocate_boxed_opaque_existential_1(v33 + 2);
  sub_26970EFB8();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v41 = swift_allocObject();
  v33[40] = v41;
  *(v41 + 16) = xmmword_2698590C0;
  *(v41 + 32) = v50;
  v42 = *(MEMORY[0x277D5BE38] + 4);
  v43 = v50;
  v44 = swift_task_alloc();
  v33[41] = v44;
  *v44 = v33;
  v44[1] = sub_26970D1EC;
  v6 = v33[23];
  v3 = v33[15];
  v4 = v33 + 2;
  v5 = v41;
  v7 = v39;
  v8 = v40;

  return MEMORY[0x2821BB468](v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26970D124()
{
  v1 = *(v0 + 304);
  v2 = OUTLINED_FUNCTION_20_10();
  v3(v2);

  OUTLINED_FUNCTION_7_7();

  return v4();
}

uint64_t sub_26970D1EC()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v5;

  __swift_destroy_boxed_opaque_existential_0((v5 + 16));

  return MEMORY[0x2822009F8](sub_26970D300, 0, 0);
}

uint64_t sub_26970D300()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 168);
  v12 = *(v0 + 224);
  v13 = *(v0 + 160);
  v14 = *(v0 + 152);

  (*(v7 + 8))(v8, v9);
  sub_26970F05C(v6, type metadata accessor for VideoDataModels.DisambiguateItemsModel);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_7_7();

  return v10();
}

uint64_t sub_26970D430(uint64_t *a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239E0, &unk_26985D8B0);
  v2 = *(*(v59 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v59);
  v64 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v62 = &v50 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A78, &unk_26985BEF0);
  v9 = *(*(v58 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v50 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v50 - v14);
  v68 = sub_269852624();
  v65 = *(v68 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v68);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
  v20 = swift_allocObject();
  v56 = xmmword_269857710;
  *(v20 + 16) = xmmword_269857710;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = v56;
  v66 = 0x696669746E656469;
  v67 = 0xEA00000000007265;
  v22 = MEMORY[0x277D837D0];
  sub_2698551B4();
  v23 = sub_2698543F4();
  *(inited + 96) = v22;
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  *(inited + 72) = v25;
  *(inited + 80) = v26;
  sub_269854A04();
  v27 = sub_269852664();
  v28 = MEMORY[0x277D63778];
  *(v20 + 56) = v27;
  *(v20 + 64) = v28;
  __swift_allocate_boxed_opaque_existential_1((v20 + 32));
  sub_269852654();

  sub_269852634();
  v29 = sub_2698543F4();
  v31 = v30;
  *&v56 = sub_2696CB408();
  v55 = v32;
  v33 = sub_2698543F4();
  v63 = v15;
  if (v34)
  {
    *v15 = v33;
    v15[1] = v34;
    v35 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
    swift_storeEnumTagMultiPayload();
    v36 = v15;
    v37 = 0;
  }

  else
  {
    v35 = type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
    v36 = v15;
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  v38 = 0xE000000000000000;
  if (v31)
  {
    v38 = v31;
  }

  v53 = v38;
  if (v31)
  {
    v39 = v29;
  }

  else
  {
    v39 = 0;
  }

  v51 = v39;
  v40 = *(v65 + 16);
  v41 = v18;
  v57 = v18;
  v42 = v68;
  v40(v8, v41, v68);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v42);
  v43 = type metadata accessor for VideoDataModels.BasicDisambiguationItem(0);
  v50 = v43[5];
  v66 = 0;
  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  sub_269852674();
  v54 = v8;
  v44 = v43[6];
  v66 = 0;
  v67 = 0;
  sub_269852674();
  v52 = v43[7];
  type metadata accessor for VideoDataModels.BasicDisambiguationItem.Thumbnail(0);
  v45 = v60;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v35);
  sub_26970EEA0();
  sub_269852674();
  sub_26969B0C0(v45, &qword_280323A78, &unk_26985BEF0);
  v58 = v43[8];
  v46 = v62;
  __swift_storeEnumTagSinglePayload(v62, 1, 1, v42);
  sub_26970EEA0();
  sub_269852674();
  sub_26969B0C0(v46, &qword_2803239E0, &unk_26985D8B0);
  v66 = v51;
  v67 = v53;
  sub_269852674();
  v66 = v56;
  v67 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A00, &unk_26985BF00);
  sub_2698526A4();
  v66 = 0;
  v67 = 0;
  sub_2698526A4();
  v47 = v63;
  sub_26970EEA0();
  sub_26970EEA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A80, &unk_269868860);
  sub_2698526A4();
  sub_26969B0C0(v45, &qword_280323A78, &unk_26985BEF0);
  v48 = v54;
  sub_26970EEA0();
  sub_26970EEA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A10, &unk_26985BF10);
  sub_2698526A4();
  sub_26969B0C0(v46, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v48, &qword_2803239E0, &unk_26985D8B0);
  sub_26969B0C0(v47, &qword_280323A78, &unk_26985BEF0);
  return (*(v65 + 8))(v57, v68);
}

uint64_t sub_26970DB6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_269852F34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_2698535F4();
  sub_269853624();
  v12 = sub_269853234();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_269853604();
  sub_2698535E4();
  (*(v4 + 104))(v7, *MEMORY[0x277D5BC50], v3);
  return sub_2698535D4();
}

uint64_t sub_26970DD24()
{
  sub_26969B0C0(v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext, &qword_280323798, &unk_26985C770);
  sub_2696D1E70(v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appInfoProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_aceServiceInvoker));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService));
  v1 = *(v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_locUtil);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator));
  return v0;
}

uint64_t sub_26970DDDC()
{
  sub_26970DD24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ThirdPartyAppDisambiguationStrategy()
{
  result = qword_280323BE8;
  if (!qword_280323BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26970DE88()
{
  sub_26970DF3C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26970DF3C()
{
  if (!qword_280323BF8)
  {
    type metadata accessor for AppDisambiguationContext(255);
    v0 = sub_2698550A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280323BF8);
    }
  }
}

uint64_t sub_26970DFB8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2696BBFF8;

  return sub_26970C514();
}

uint64_t sub_26970E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C078] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_26970E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C080] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_26970E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C070] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2696BBFF8;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_26970E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5C068] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2696BBE14;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

uint64_t sub_26970E37C(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v66 = a9;
  v67 = a14;
  __swift_allocate_boxed_opaque_existential_1(v65);
  OUTLINED_FUNCTION_3_14(a9);
  (*(v18 + 32))();
  v63 = a10;
  v64 = a15;
  __swift_allocate_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_3_14(a10);
  (*(v19 + 32))();
  v60 = a11;
  v61 = a16;
  __swift_allocate_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_3_14(a11);
  (*(v20 + 32))();
  v57 = a13;
  v58 = a18;
  __swift_allocate_boxed_opaque_existential_1(v56);
  OUTLINED_FUNCTION_3_14(a13);
  (*(v21 + 32))();
  v54 = a12;
  v55 = a17;
  __swift_allocate_boxed_opaque_existential_1(&v53);
  OUTLINED_FUNCTION_3_14(a12);
  (*(v22 + 32))();
  v23 = type metadata accessor for ThirdPartyAppDisambiguationStrategy();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  OUTLINED_FUNCTION_3_20();
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_1();
  v32 = (v31 - v30);
  (*(v33 + 16))(v31 - v30);
  __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  OUTLINED_FUNCTION_3_20();
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v39 = (v38 - v37);
  (*(v40 + 16))(v38 - v37);
  __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v41 = *v32;
  v42 = *v39;
  v43 = (v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_dialogProvider);
  v43[3] = type metadata accessor for BaseDialogProvider();
  v43[4] = &off_287A3DBA0;
  *v43 = v41;
  v44 = v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appInfoProvider;
  *(v44 + 24) = &type metadata for AppInfoProvider;
  *(v44 + 32) = &off_287A41388;
  v45 = (v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_signalRecorder);
  v45[3] = type metadata accessor for SiriSignalsRecorder();
  v45[4] = &off_287A44CA0;
  *v45 = v42;
  v46 = v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_analyticsService;
  *(v46 + 24) = &type metadata for CoreAnalyticsService;
  *(v46 + 32) = &xmmword_287A41610;
  v47 = OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_appDisambiguationContext;
  v48 = type metadata accessor for AppDisambiguationContext(0);
  __swift_storeEnumTagSinglePayload(v26 + v47, 1, 1, v48);
  sub_26970EF58(a2, v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_deviceState);
  sub_26968E5D4(a4, v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_aceServiceInvoker);
  sub_26968E5D4(&v53, v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_responseGenerator);
  type metadata accessor for LocUtil();
  v49 = swift_allocObject();
  sub_26968E5D4(a2, v49 + 16);
  *(v26 + OBJC_IVAR____TtC16SiriVideoIntents35ThirdPartyAppDisambiguationStrategy_locUtil) = v49;
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v65);
  return v26;
}

uint64_t sub_26970E7D4(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C00, qword_26986AA30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v51 - v5;
  v61 = sub_269852EF4();
  v64 = *(v61 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v68 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269852FE4();
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  v18 = sub_269853714();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  v70 = a1;
  result = sub_26975004C(a1);
  v53 = v19;
  v54 = v18;
  v52 = v22;
  if (!result)
  {
    v72 = v23;
LABEL_28:
    v49 = v52;
    sub_2698536F4();
    v50 = sub_269853704();

    (*(v53 + 8))(v49, v54);
    sub_26980B9A4(v50);
    return v73;
  }

  v25 = result;
  if (result >= 1)
  {
    v26 = 0;
    v69 = v70 & 0xC000000000000001;
    v66 = (v63 + 16);
    v56 = (v63 + 8);
    v57 = v63 + 32;
    v55 = v64 + 32;
    v27 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    v58 = result;
    v59 = v17;
    do
    {
      if (v69)
      {
        MEMORY[0x26D646120](v26, v70);
      }

      else
      {
        v28 = *(v70 + 8 * v26 + 32);
      }

      sub_2698543F4();
      if (v29)
      {
        v30 = sub_2698534D4();
        v31 = *(v30 + 48);
        v32 = *(v30 + 52);
        swift_allocObject();
        swift_retain_n();
        sub_2698534C4();
        sub_2698534B4();
        v34 = v33;

        if (v34)
        {
          if (qword_280322550 != -1)
          {
            swift_once();
          }

          sub_269853BC4();
          v35 = v59;
          sub_269852F84();
          if (qword_280322548 != -1)
          {
            swift_once();
          }

          sub_269853BC4();
          sub_269852F84();
          v36 = *v66;
          (*v66)(v67, v35, v8);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = v72;
          }

          else
          {
            v43 = *(v72 + 16);
            sub_26977C5AC();
            v37 = v44;
          }

          v38 = *(v37 + 16);
          if (v38 >= *(v37 + 24) >> 1)
          {
            sub_26977C5AC();
            v37 = v45;
          }

          *(v37 + 16) = v38 + 1;
          v39 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v72 = v37;
          (*(v63 + 32))(v37 + v39 + *(v63 + 72) * v38, v67, v8);
          v40 = v62;
          v36(v62, v35, v8);
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v8);
          v36(v60, v71, v8);
          sub_269852ED4();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = *(v27 + 16);
            sub_26977C4D4();
            v27 = v47;
          }

          v41 = *(v27 + 16);
          if (v41 >= *(v27 + 24) >> 1)
          {
            sub_26977C4D4();
            v27 = v48;
          }

          v42 = *v56;
          (*v56)(v71, v8);
          v42(v35, v8);
          *(v27 + 16) = v41 + 1;
          (*(v64 + 32))(v27 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v41, v68, v61);
          v73 = v27;
          v25 = v58;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v26;
    }

    while (v25 != v26);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_26970EEA0()
{
  OUTLINED_FUNCTION_31_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4_3(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26970EEFC()
{
  OUTLINED_FUNCTION_31_2();
  v3 = v2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26970EF58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_3_14(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_26970EFB8()
{
  OUTLINED_FUNCTION_31_2();
  v3 = v2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26970F014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26970F05C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_13()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 232);
  v3 = *(v0 - 264);
  return result;
}

void OUTLINED_FUNCTION_9_13()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 232);
  v3 = *(v0 - 256);
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v3, a2);
  v5 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_10()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = *(v0[30] + 8);
  return v0[31];
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return sub_269855584();
}

uint64_t sub_26970F1C8(char a1)
{
  if (!a1)
  {
    return 0x6E65746E49707061;
  }

  if (a1 == 1)
  {
    return 0x4974694B69726973;
  }

  return 0x726F707075736E75;
}

uint64_t sub_26970F238()
{
  v0 = sub_2698553E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26970F2A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26970F238();
  *a2 = result;
  return result;
}

uint64_t sub_26970F2D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26970F1C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26970F31C(int a1)
{
  v52 = a1;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v51 = sub_2697B9550();
  if (qword_280322680 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D8B0;
  v81 = type metadata accessor for RoutingAppPredictor();
  v82 = &off_287A445F8;
  *&v80 = v1;
  v2 = qword_2803226B0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_2_15();
  }

  v3 = qword_28033D8E0;
  v50[2] = qword_28033D8E0;
  v75 = &type metadata for LSApplicationRecordProvider;
  v76 = &xmmword_287A41430;
  v78 = &type metadata for AppIntentsMetadataProvider;
  v79 = &off_287A413C0;
  v77 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  sub_269852C84();
  v4 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v5 = sub_269853264();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_269853254();
  v71 = v5;
  v72 = MEMORY[0x277D5BD58];
  v69[4] = &xmmword_287A41430;
  *&v70 = v8;
  v69[3] = &type metadata for LSApplicationRecordProvider;
  v9 = type metadata accessor for SiriSignalsRecorder();
  v68[3] = v9;
  v68[4] = &off_287A44CA0;
  v68[0] = v3;
  v66 = &type metadata for ThirdPartyIntentSupportProvider;
  v67 = &off_287A47040;
  v65[0] = swift_allocObject();
  sub_2696B6ED8(v74, v65[0] + 16);
  v63 = &type metadata for RunningBoardForegroundAppProvider;
  v64 = &off_287A41CC0;
  v60 = &type metadata for CoreAnalyticsService;
  v61 = &xmmword_287A41610;
  v57 = &type metadata for AppIntentsMetadataProvider;
  v58 = &off_287A413C0;
  v56[0] = v4;
  v54 = &type metadata for FeatureFlagServiceImpl;
  v55 = &off_287A41BD8;
  v10 = type metadata accessor for ThirdPartyAppResolutionFlow();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v69, &type metadata for LSApplicationRecordProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v68, v9);
  v50[1] = v50;
  OUTLINED_FUNCTION_3_20();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = (v18 - v17);
  (*(v20 + 16))(v18 - v17);
  __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  OUTLINED_FUNCTION_3_20();
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  OUTLINED_FUNCTION_3_20();
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_1();
  v33 = (v32 - v31);
  (*(v34 + 16))(v32 - v31);
  __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v35 = *v19;
  v36 = *v33;
  v37 = v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_applicationRecordProvider;
  *(v37 + 24) = &type metadata for LSApplicationRecordProvider;
  *(v37 + 32) = &xmmword_287A41430;
  v38 = (v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_signalRecorder);
  v38[3] = v9;
  v38[4] = &off_287A44CA0;
  *v38 = v35;
  v39 = (v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider);
  v39[3] = &type metadata for ThirdPartyIntentSupportProvider;
  v39[4] = &off_287A47040;
  v40 = swift_allocObject();
  *v39 = v40;
  memcpy((v40 + 16), v26, 0x50uLL);
  v41 = v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_foregroundAppProvider;
  *(v41 + 24) = &type metadata for RunningBoardForegroundAppProvider;
  *(v41 + 32) = &off_287A41CC0;
  v42 = v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_analyticsService;
  *(v42 + 24) = &type metadata for CoreAnalyticsService;
  *(v42 + 32) = &xmmword_287A41610;
  v43 = (v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_appIntentsMetadata);
  v43[3] = &type metadata for AppIntentsMetadataProvider;
  v43[4] = &off_287A413C0;
  *v43 = v36;
  v44 = v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_featureFlags;
  *(v44 + 24) = &type metadata for FeatureFlagServiceImpl;
  *(v44 + 32) = &off_287A41BD8;
  v45 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input;
  v46 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v13 + v45, 1, 1, v46);
  v47 = v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  *v47 = xmmword_26985C790;
  *(v47 + 16) = 0;
  *(v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_usecase) = v52;
  v48 = (v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_userDefaultsProvider);
  *v48 = v51;
  v48[1] = &off_287A41E38;
  sub_26968E5D4(&v80, v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_smartAppSelector);
  sub_26968E5D4(&v73, v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_aceServiceInvoker);
  sub_26968E5D4(&v70, v13 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_responseGenerator);

  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v69);
  sub_2696B6F40(v74);
  return v13;
}

uint64_t sub_26970F95C()
{
  v1 = (v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state);
  if ((*(v0 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8) - 1) < 3)
  {
    return 0;
  }

  v3 = *(v1 + 8);
  v2 = *v1;

  return v2;
}

BOOL sub_26970F9C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = v1 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  v10 = *(v1 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state + 8);
  if (v10 == 1)
  {
    v11 = sub_269853854();
    (*(*(v11 - 8) + 16))(v8, a1, v11);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
    v12 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input;
    swift_beginAccess();
    sub_269702838(v8, v1 + v12);
    swift_endAccess();
    v13 = *v9;
    v14 = *(v9 + 8);
    *v9 = xmmword_26985C7A0;
    v15 = *(v9 + 16);
    *(v9 + 16) = 0;
    sub_2697114F0(v13, v14);
  }

  return v10 == 1;
}

uint64_t sub_26970FB08()
{
  type metadata accessor for ThirdPartyAppResolutionFlow();
  sub_269711574(&qword_280323CB8, type metadata accessor for ThirdPartyAppResolutionFlow);
  return sub_269852B54();
}

uint64_t sub_26970FB98()
{
  OUTLINED_FUNCTION_2_7();
  v1[71] = v0;
  v1[70] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323798, &unk_26985C770);
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64);
  v1[72] = OUTLINED_FUNCTION_4_7();
  v6 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse.Action(0);
  v1[73] = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v8 = *(v7 + 64);
  v1[74] = OUTLINED_FUNCTION_4_7();
  v9 = type metadata accessor for ThirdPartyAppResolutionUtil.ResolveResponse(0);
  OUTLINED_FUNCTION_8_9(v9);
  v11 = *(v10 + 64);
  v1[75] = OUTLINED_FUNCTION_4_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323AF8, &unk_26985C1D0);
  OUTLINED_FUNCTION_8_9(v12);
  v14 = *(v13 + 64);
  v1[76] = OUTLINED_FUNCTION_4_7();
  v15 = sub_269853854();
  v1[77] = v15;
  v16 = *(v15 - 8);
  v1[78] = v16;
  v17 = *(v16 + 64);
  v1[79] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_26970FCEC, 0, 0);
}

uint64_t sub_26970FCEC()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 568);
  v4 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_input;
  swift_beginAccess();
  sub_26970897C(v3 + v4, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_269698048(*(v0 + 608), &qword_280323AF8, &unk_26985C1D0);
    return sub_269855354();
  }

  v5 = *(v0 + 568);
  (*(*(v0 + 624) + 32))(*(v0 + 632), *(v0 + 608), *(v0 + 616));
  v6 = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  *(v0 + 640) = OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_state;
  v7 = v5 + v6;
  *(v0 + 648) = *(v5 + v6);
  v8 = *(v5 + v6 + 8);
  *(v0 + 664) = *(v7 + 16);
  if (v8 == 1)
  {
    return sub_269855354();
  }

  if (v8 == 2)
  {
    v9 = *(v0 + 568);
    v10 = *(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_usecase);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_smartAppSelector, v0 + 24);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_signalRecorder, v0 + 64);
    v20 = *(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_userDefaultsProvider);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_intentSupportProvider, v0 + 120);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_foregroundAppProvider, v0 + 160);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_analyticsService, v0 + 200);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_aceServiceInvoker, v0 + 240);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_applicationRecordProvider, v0 + 280);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_appIntentsMetadata, v0 + 320);
    sub_2696A73F8(v9 + OBJC_IVAR____TtC16SiriVideoIntents27ThirdPartyAppResolutionFlow_featureFlags, v0 + 360);
    *(v0 + 16) = v10;
    *(v0 + 104) = v20;
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    *(v0 + 656) = v11;
    *v11 = v0;
    v11[1] = sub_269710044;
    v12 = *(v0 + 632);
    v13 = *(v0 + 600);

    return sub_2697118DC(v13, v12);
  }

  else
  {
    v15 = *(v0 + 632);
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    v18 = *(v0 + 560);
    sub_269853164();
    (*(v16 + 8))(v15, v17);
    OUTLINED_FUNCTION_8_14();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_269710044()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *(*v0 + 656);
  v2 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_269710134, 0, 0);
}