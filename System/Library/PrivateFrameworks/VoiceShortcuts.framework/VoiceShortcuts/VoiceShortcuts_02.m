uint64_t sub_23106C888()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 112);
  *(v2 + 616) = v5;
  if (v5)
  {
    v6 = *(v2 + 600);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23106C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();
  v14 = *(v10 + 608);
  v15 = *(v10 + 600);

  v17 = MEMORY[0x277D84F90];
  *(v10 + 400) = MEMORY[0x277D84F90];
  v18 = *(v10 + 576);
  *(v10 + 544) = v17;
  if (v18 != *(v10 + 536))
  {
    v30 = *(v10 + 416);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x231925080](v18);
      v31 = v16;
    }

    else
    {
      if (v18 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v31 = *(v30 + 8 * v18 + 32);
      v16 = swift_unknownObjectRetain();
    }

    *(v10 + 568) = v31;
    *(v10 + 576) = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      *(v10 + 16) = v10;
      OUTLINED_FUNCTION_28_2(v10 + 408);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C0, &qword_231162E78);
      OUTLINED_FUNCTION_7_5(v32);
      *(v10 + 216) = 1107296256;
      OUTLINED_FUNCTION_5_4(&block_descriptor_41);
      [v31 generateSearchableItemWithCompletionBlock_];
LABEL_11:
      OUTLINED_FUNCTION_55_1();

      return MEMORY[0x282200938](v16);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return MEMORY[0x282200938](v16);
  }

  if (sub_23106EEB4(MEMORY[0x277D84F90]))
  {
    OUTLINED_FUNCTION_60_0();
    v19 = sub_231158238();
    sub_2311592C8();
    OUTLINED_FUNCTION_38_0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_56_0(v21);
      OUTLINED_FUNCTION_25_2(&dword_23103C000, v22, v23, "Finished generating searchable items, triggering final index");
      OUTLINED_FUNCTION_35_0();
    }

    OUTLINED_FUNCTION_54_1();
    v13(v11, v12);
    sub_23106F9C8();
    *(v10 + 552) = sub_231158F38();

    OUTLINED_FUNCTION_52_1();
    *(v10 + 144) = v24;
    v25 = OUTLINED_FUNCTION_12_4();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    OUTLINED_FUNCTION_27_2(v26);
    *(v10 + 344) = 1107296256;
    OUTLINED_FUNCTION_8_4();
    *(v10 + 360) = v27;
    *(v10 + 368) = v25;
    v28 = OUTLINED_FUNCTION_23_3();
    [v28 v29];
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_0();

  v34 = sub_231158238();
  v35 = sub_2311592B8();
  v36 = OUTLINED_FUNCTION_20_2(v35);
  v37 = *(v10 + 416);
  if (v36)
  {
    v38 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v38, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v39, v40, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v41 = *(v10 + 416);
  }

  v42 = OUTLINED_FUNCTION_2_7();
  v43(v42);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_55_1();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}

uint64_t sub_23106CCAC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[74];
  swift_willThrow();

  v4 = v0[77];
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t CSSearchableIndex.index<A>(items:updatedIdentifiers:batchSize:transformerBlock:)()
{
  OUTLINED_FUNCTION_4_1();
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v1[38] = v5;
  v1[39] = v6;
  v1[37] = v7;
  v8 = *(v2 - 8);
  v1[44] = v8;
  v1[45] = *(v8 + 64);
  v1[46] = swift_task_alloc();
  v9 = sub_231158258();
  v1[47] = v9;
  v10 = *(v9 - 8);
  v1[48] = v10;
  v11 = *(v10 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23106CEBC()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v0[55];
  v4 = v0[37];
  v0[56] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v5 = sub_231158238();
  v6 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v6))
  {
    v7 = OUTLINED_FUNCTION_24_1();
    v8 = OUTLINED_FUNCTION_41_1(v7, 3.852e-34);
    OUTLINED_FUNCTION_61_1(v8);
    OUTLINED_FUNCTION_22_2(&dword_23103C000, v9, v10, "Starting indexing %ld items");
    OUTLINED_FUNCTION_16();
  }

  else
  {
    v11 = v0[37];
  }

  v12 = v0[55];
  v13 = v0[47];
  v14 = v0[48];
  v15 = v0[42];
  v16 = v0[37];
  v17 = *(v14 + 8);
  v0[57] = v17;
  v0[58] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v12, v13);
  v18 = MEMORY[0x277D84F90];
  v0[34] = MEMORY[0x277D84F90];
  v0[35] = sub_231158F58();
  v0[59] = v18;
  v19 = v0[42];
  v20 = v0[37];
  v21 = sub_231158FF8();
  v22 = v0[35];
  if (v22 != v21)
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_33_1();
    if (v1)
    {
      v36 = OUTLINED_FUNCTION_9_4();
      v37(v36);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_47_1();
      if (v16 != 8)
      {
        __break(1u);
        return MEMORY[0x282200938](v34);
      }

      v54 = OUTLINED_FUNCTION_14_3(v34);
      v55(v54);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_0_9();
    v38 = *(v22 + 4);
    v39 = swift_task_alloc();
    v0[60] = v39;
    *v39 = v0;
    OUTLINED_FUNCTION_1_5(v39);
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  if (!sub_23106EEB4(v0[59]))
  {
    v42 = v0[59];

    OUTLINED_FUNCTION_30_0();

    v43 = sub_231158238();
    v44 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v44))
    {
      v45 = OUTLINED_FUNCTION_24_1();
      v46 = OUTLINED_FUNCTION_41_1(v45, 3.852e-34);
      OUTLINED_FUNCTION_61_1(v46);
      OUTLINED_FUNCTION_22_2(&dword_23103C000, v47, v48, "Done indexing %ld items");
      OUTLINED_FUNCTION_16();
    }

    else
    {
      v49 = v0[37];
    }

    v50 = OUTLINED_FUNCTION_3_4();
    v51(v50);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_0();
  v23 = sub_231158238();
  sub_2311592C8();
  OUTLINED_FUNCTION_38_0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v25);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v26, v27, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_21_3();
  v28 = OUTLINED_FUNCTION_51_1();
  v2(v28);
  sub_23106F9C8();
  v29 = sub_231158F38();
  OUTLINED_FUNCTION_59_1(v29);
  OUTLINED_FUNCTION_52_1();
  v0[10] = v30;
  OUTLINED_FUNCTION_10_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v31);
  v0[27] = 1107296256;
  OUTLINED_FUNCTION_4_5();
  v32 = OUTLINED_FUNCTION_23_3();
  [v32 v33];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v34);
}

uint64_t sub_23106D26C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = v4[60];
  v7 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v8 = v7;
  v5[61] = v0;

  if (v0)
  {
    v9 = v5[59];
    (*(v5[44] + 8))(v5[46], v5[42]);
  }

  else
  {
    v10 = v5[46];
    v11 = v5[44];
    v12 = v5[42];
    v5[62] = v3;
    (*(v11 + 8))(v10, v12);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23106D3C0()
{
  v3 = v1[62];
  v4 = v1[56];
  if (!v3)
  {
    v24 = v1[51];
    sub_2311581C8();
    v25 = sub_231158238();
    v26 = sub_2311592C8();
    if (OUTLINED_FUNCTION_20_2(v26))
    {
      v27 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v27);
      _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_DEFAULT, "Failed to generate searchable item....skipping", v0, 2u);
      OUTLINED_FUNCTION_16();
    }

    v28 = v1[57];
    v13 = v1[58];
    v29 = v1[51];
    v30 = v1[47];

    v28(v29, v30);
    goto LABEL_24;
  }

  v5 = v1[54];
  sub_2311581C8();
  v6 = v3;
  v7 = sub_231158238();
  v8 = sub_2311592C8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[57];
  v10 = v1[58];
  v12 = v1[54];
  v2 = &selRef_setContentModificationDate_;
  v13 = v1[47];
  if (v9)
  {
    v111 = v1[57];
    v14 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_67_0();
    *v14 = 136315138;
    v15 = v6;
    v16 = OUTLINED_FUNCTION_71();
    sub_231158E58();
    v18 = v17;

    v19 = OUTLINED_FUNCTION_66_0();
    v2 = &selRef_setContentModificationDate_;
    v21 = sub_2310488F8(v19, v18, v20);

    *(v14 + 4) = v21;
    v6 = v15;
    OUTLINED_FUNCTION_69(&dword_23103C000, v22, v23, "Generated searchable item with identifier %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    v111(v110, v13);
  }

  else
  {

    v11(v12, v13);
  }

  v31 = v1[38];
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_71();
    v33 = sub_231158E58();
    v13 = v34;

    v35 = sub_23106EED8(v33, v13, v31);

    if (v35)
    {
      v36 = v1[56];
      v37 = v1[53];
      sub_2311581C8();
      v38 = v6;
      v39 = sub_231158238();
      v40 = sub_2311592C8();

      v41 = os_log_type_enabled(v39, v40);
      v13 = v1[57];
      v42 = v1[58];
      v43 = v1[53];
      v44 = v1[47];
      if (v41)
      {
        OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_67_0();
        v112 = v6;
        v45 = OUTLINED_FUNCTION_62_1();
        *v43 = 136315138;
        v46 = [v38 v2[403]];
        v2 = sub_231158E58();
        v109 = v13;
        v13 = v47;

        v48 = OUTLINED_FUNCTION_66_0();
        v50 = sub_2310488F8(v48, v13, v49);

        *(v43 + 4) = v50;
        OUTLINED_FUNCTION_68(&dword_23103C000, v51, v52, "Item identifier %s already exists in index, marking as update");
        __swift_destroy_boxed_opaque_existential_0(v45);
        v6 = v112;
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_16();

        v109(v110, v44);
      }

      else
      {

        (v13)(v43, v44);
      }

      [v38 setIsUpdate_];
    }
  }

  v53 = v6;
  MEMORY[0x2319249F0]();
  if (*((v1[34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_231158F98();
  }

  sub_231158FE8();
  v29 = v1[34];
  v1[63] = v29;
  if (!(v29 >> 62))
  {
    v54 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

  v54 = sub_2311594D8();
  if ((v54 & 0x8000000000000000) == 0)
  {
LABEL_18:
    if (v54 == v1[39])
    {
      v55 = v1[56];
      v56 = v1[52];
      sub_2311581C8();
      v57 = sub_231158238();
      sub_2311592C8();
      OUTLINED_FUNCTION_38_0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_65_0(v59);
        OUTLINED_FUNCTION_48_1(&dword_23103C000, v60, v61, "Searchable items set at batch capacity, triggering index");
        OUTLINED_FUNCTION_16();
      }

      v62 = v1[57];
      v63 = v1[58];
      v64 = v1[52];
      v65 = v1[47];
      v113 = v1[43];

      v66 = OUTLINED_FUNCTION_51_1();
      v62(v66);
      sub_23106F9C8();
      v67 = sub_231158F38();
      v1[64] = v67;
      v1[2] = v1;
      v1[3] = sub_23106DB78;
      v68 = swift_continuation_init();
      v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
      v1[18] = MEMORY[0x277D85DD0];
      v1[19] = 1107296256;
      v1[20] = sub_23106FF5C;
      v1[21] = &block_descriptor_4;
      v1[22] = v68;
      [v113 indexSearchableItems:v67 completionHandler:v1 + 18];
      goto LABEL_29;
    }
  }

  v1[59] = v29;
LABEL_24:
  v69 = v1[42];
  v70 = v1[37];
  v71 = sub_231158FF8();
  v72 = v1[35];
  if (v72 != v71)
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_33_1();
    if (v13)
    {
      v88 = OUTLINED_FUNCTION_9_4();
      v89(v88);
    }

    else
    {
      v86 = OUTLINED_FUNCTION_47_1();
      if (v29 != 8)
      {
        __break(1u);
        return MEMORY[0x282200938](v86);
      }

      v106 = OUTLINED_FUNCTION_14_3(v86);
      v107(v106);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_0_9();
    v90 = *(v72 + 4);
    v91 = swift_task_alloc();
    v1[60] = v91;
    *v91 = v1;
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X1, X16 }
  }

  if (!sub_23106EEB4(v1[59]))
  {
    v94 = v1[59];

    OUTLINED_FUNCTION_30_0();

    v95 = sub_231158238();
    v96 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v96))
    {
      v97 = OUTLINED_FUNCTION_24_1();
      v98 = OUTLINED_FUNCTION_41_1(v97, 3.852e-34);
      OUTLINED_FUNCTION_61_1(v98);
      OUTLINED_FUNCTION_22_2(&dword_23103C000, v99, v100, "Done indexing %ld items");
      OUTLINED_FUNCTION_16();
    }

    else
    {
      v101 = v1[37];
    }

    v102 = OUTLINED_FUNCTION_3_4();
    v103(v102);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_0();
  v73 = sub_231158238();
  sub_2311592C8();
  OUTLINED_FUNCTION_38_0();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v75);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v76, v77, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_21_3();
  v78 = OUTLINED_FUNCTION_51_1();
  (v2)(v78);
  sub_23106F9C8();
  v79 = sub_231158F38();
  OUTLINED_FUNCTION_59_1(v79);
  OUTLINED_FUNCTION_52_1();
  v1[10] = v80;
  OUTLINED_FUNCTION_10_4();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v81);
  v1[27] = 1107296256;
  OUTLINED_FUNCTION_4_5();
  v82 = OUTLINED_FUNCTION_23_3();
  [v82 v83];
LABEL_29:
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x282200938](v86);
}

uint64_t sub_23106DB78()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 520) = v5;
  if (v5)
  {
    v6 = *(v2 + 504);
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23106DC80()
{
  OUTLINED_FUNCTION_6_2();
  v3 = *(v0 + 504);
  v4 = *(v0 + 496);

  v5 = MEMORY[0x277D84F90];
  *(v0 + 272) = MEMORY[0x277D84F90];
  *(v0 + 472) = v5;
  v6 = *(v0 + 336);
  v7 = *(v0 + 296);
  v8 = sub_231158FF8();
  v9 = *(v0 + 280);
  if (v9 != v8)
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_33_1();
    if (v1)
    {
      v23 = OUTLINED_FUNCTION_9_4();
      v24(v23);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_47_1();
      if (v4 != 8)
      {
        __break(1u);
        return MEMORY[0x282200938](v21);
      }

      v41 = OUTLINED_FUNCTION_14_3(v21);
      v42(v41);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_0_9();
    v25 = *(v9 + 4);
    v26 = swift_task_alloc();
    *(v0 + 480) = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  if (!sub_23106EEB4(*(v0 + 472)))
  {
    v29 = *(v0 + 472);

    OUTLINED_FUNCTION_30_0();

    v30 = sub_231158238();
    v31 = sub_2311592B8();
    if (OUTLINED_FUNCTION_20_2(v31))
    {
      v32 = OUTLINED_FUNCTION_24_1();
      v33 = OUTLINED_FUNCTION_41_1(v32, 3.852e-34);
      OUTLINED_FUNCTION_61_1(v33);
      OUTLINED_FUNCTION_22_2(&dword_23103C000, v34, v35, "Done indexing %ld items");
      OUTLINED_FUNCTION_16();
    }

    else
    {
      v36 = *(v0 + 296);
    }

    v37 = OUTLINED_FUNCTION_3_4();
    v38(v37);

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_39_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_57_0();
  v10 = sub_231158238();
  sub_2311592C8();
  OUTLINED_FUNCTION_38_0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_56_0(v12);
    OUTLINED_FUNCTION_25_2(&dword_23103C000, v13, v14, "Finished generating searchable items, triggering final index");
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_21_3();
  v15 = OUTLINED_FUNCTION_51_1();
  v2(v15);
  sub_23106F9C8();
  v16 = sub_231158F38();
  OUTLINED_FUNCTION_59_1(v16);
  OUTLINED_FUNCTION_52_1();
  *(v0 + 80) = v17;
  OUTLINED_FUNCTION_10_4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  OUTLINED_FUNCTION_6_5(v18);
  *(v0 + 216) = 1107296256;
  OUTLINED_FUNCTION_4_5();
  v19 = OUTLINED_FUNCTION_23_3();
  [v19 v20];
  OUTLINED_FUNCTION_39_1();

  return MEMORY[0x282200938](v21);
}

uint64_t sub_23106DF90()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 536) = *(v3 + 112);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_30_0();

  v11 = sub_231158238();
  v12 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v12))
  {
    v13 = OUTLINED_FUNCTION_24_1();
    v14 = OUTLINED_FUNCTION_41_1(v13, 3.852e-34);
    OUTLINED_FUNCTION_61_1(v14);
    OUTLINED_FUNCTION_22_2(&dword_23103C000, v15, v16, "Done indexing %ld items");
    OUTLINED_FUNCTION_16();
  }

  else
  {
    v17 = *(v10 + 296);
  }

  v18 = OUTLINED_FUNCTION_3_4();
  v19(v18);

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_55_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_23106E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_28_0();
  v11 = v10[61];
  v13 = v10[54];
  v12 = v10[55];
  OUTLINED_FUNCTION_16_4();
  v14 = v10[46];

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_55_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_23106E23C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[62];
  swift_willThrow();

  v4 = v0[65];
  v6 = v0[54];
  v5 = v0[55];
  OUTLINED_FUNCTION_16_4();
  v7 = v0[46];

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_23106E310()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0[67];
  v2 = v0[66];
  swift_willThrow();

  v3 = v0[67];
  v5 = v0[54];
  v4 = v0[55];
  OUTLINED_FUNCTION_16_4();
  v6 = v0[46];

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_23106E3DC(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  v13 = a5;
  v14 = a1;

  return sub_23106E59C(&unk_231162E60, v11);
}

uint64_t sub_23106E47C(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B8, &qword_231162E70);
  v5[4] = sub_231158F48();
  v5[5] = sub_231159178();
  a5;
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_23106FF54;

  return CSSearchableIndex.index(searchableItems:batchSize:updatedIdentifiers:)();
}

uint64_t sub_23106E59C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_231162E28;
  v10[5] = v9;
  sub_23106F554(0, 0, v7, &unk_231162E38, v10);
}

uint64_t CSSearchableIndex.index(searchableItems:updatedIdentifiers:)()
{
  OUTLINED_FUNCTION_4_1();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_231158258();
  v1[21] = v4;
  v5 = *(v4 - 8);
  v1[22] = v5;
  v6 = *(v5 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23106E780()
{
  v65 = v0;
  v1 = v0[25];
  v2 = v0[18];
  v3 = *MEMORY[0x277D7A4C8];
  v0[26] = *MEMORY[0x277D7A4C8];
  sub_2311581C8();

  v4 = sub_231158238();
  v5 = sub_2311592C8();
  if (OUTLINED_FUNCTION_20_2(v5))
  {
    v6 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v6, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v7, v8, "Starting indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v9 = v0[18];
  }

  v10 = v0[25];
  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[18];
  v14 = *(v12 + 8);
  v0[27] = v14;
  v0[28] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60 = v14;
  v14(v10, v11);
  v15 = sub_23106EEB4(v13);
  v63 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = v0[18];
    v18 = v0[19];
    v62 = v17 & 0xC000000000000001;
    v54 = v17 + 32;
    v55 = v17 & 0xFFFFFFFFFFFFFF8;
    v53 = v0;
    while (1)
    {
      if (v62)
      {
        v15 = MEMORY[0x231925080](v16, v0[18]);
      }

      else
      {
        if (v16 >= *(v55 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v54 + 8 * v16);
      }

      v19 = v15;
      if (__OFADD__(v16++, 1))
      {
        break;
      }

      v21 = [v15 uniqueIdentifier];
      v22 = sub_231158E58();
      v24 = v23;

      if (*(v18 + 16))
      {
        v25 = *(v18 + 40);
        sub_231159918();
        sub_231158EA8();
        v26 = sub_231159948();
        v27 = ~(-1 << *(v18 + 32));
        while (1)
        {
          v28 = v26 & v27;
          if (((*(v18 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
          {
            break;
          }

          v29 = (*(v18 + 48) + 16 * v28);
          if (*v29 != v22 || v29[1] != v24)
          {
            v31 = sub_231159818();
            v26 = v28 + 1;
            if ((v31 & 1) == 0)
            {
              continue;
            }
          }

          v32 = v0[24];

          sub_2311581C8();
          v33 = v19;
          v34 = sub_231158238();
          v35 = sub_2311592C8();

          v61 = v35;
          v36 = os_log_type_enabled(v34, v35);
          v37 = v0[24];
          v38 = v0[21];
          if (v36)
          {
            v58 = v0[24];
            v39 = OUTLINED_FUNCTION_45_1();
            v56 = OUTLINED_FUNCTION_62_1();
            v64 = v56;
            *v39 = 136315138;
            v59 = v33;
            v40 = [v33 uniqueIdentifier];
            v57 = v38;
            v41 = sub_231158E58();
            v42 = v3;
            v44 = v43;

            v45 = sub_2310488F8(v41, v44, &v64);
            v3 = v42;
            v0 = v53;

            *(v39 + 4) = v45;
            v33 = v59;
            _os_log_impl(&dword_23103C000, v34, v61, "Item identifier %s already exists in index, marking as update", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_35_0();

            v47 = v57;
            v46 = v58;
          }

          else
          {

            v46 = v37;
            v47 = v38;
          }

          v60(v46, v47);
          [v33 setIsUpdate_];
          goto LABEL_24;
        }
      }

LABEL_24:

      if (v16 == v63)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_25:
    v48 = v0[20];
    v49 = v0[18];
    sub_23106F9C8();
    v50 = sub_231158F38();
    v0[29] = v50;
    v0[2] = v0;
    v0[3] = sub_23106EC20;
    v51 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23106FF5C;
    v0[13] = &block_descriptor_10_0;
    v0[14] = v51;
    [v48 indexSearchableItems:v50 completionHandler:v0 + 10];
    v15 = v0 + 2;
  }

  return MEMORY[0x282200938](v15);
}

uint64_t sub_23106EC20()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23106ED1C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);

  sub_2311581C8();

  v4 = sub_231158238();
  v5 = sub_2311592B8();
  if (OUTLINED_FUNCTION_20_2(v5))
  {
    v6 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_13_5(v6, 3.852e-34);
    OUTLINED_FUNCTION_17_3(&dword_23103C000, v7, v8, "Done indexing %ld items");
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v9 = *(v0 + 144);
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  (*(v0 + 216))(*(v0 + 184), *(v0 + 168));

  OUTLINED_FUNCTION_46_0();

  return v13();
}

uint64_t sub_23106EE24()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  v7 = v0[30];

  return v6();
}

uint64_t sub_23106EEB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2311594D8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_23106EED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_231159918();
  sub_231158EA8();
  v7 = sub_231159948();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_231159818();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_23106EFC4(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;

  return sub_23106E59C(&unk_231162E18, v9);
}

uint64_t sub_23106F05C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_23106F9C8();
  v4[4] = sub_231158F48();
  v4[5] = sub_231159178();
  a4;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_23106F15C;

  return CSSearchableIndex.index(searchableItems:updatedIdentifiers:)();
}

uint64_t sub_23106F15C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[2];
  v10 = *v1;
  *v5 = *v1;

  v11 = v3[3];
  if (v2)
  {
    v12 = sub_231157928();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(v3[3], 0);
  }

  _Block_release(v4[3]);
  v13 = v10[1];

  return v13();
}

uint64_t sub_23106F314(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_231060450(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_23106F384(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23106044C;

  return v7();
}

uint64_t sub_23106F46C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23105FDEC;

  return v8();
}

uint64_t sub_23106F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23106FC70(a3, v25 - v11);
  v13 = sub_2311590C8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_23106FCE0(v12);
  }

  else
  {
    sub_2311590B8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_231159048();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_231158E88() + 32;
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

      sub_23106FCE0(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23106FCE0(a3);
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

uint64_t sub_23106F7F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23106F8E8;

  return v7(a1);
}

uint64_t sub_23106F8E8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  OUTLINED_FUNCTION_46_0();

  return v5();
}

unint64_t sub_23106F9C8()
{
  result = qword_280CCAF38;
  if (!qword_280CCAF38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAF38);
  }

  return result;
}

uint64_t sub_23106FA14()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43_0(v5);
  *v6 = v7;
  v6[1] = sub_23106044C;
  v8 = OUTLINED_FUNCTION_36_1();

  return v9(v8);
}

uint64_t sub_23106FAC0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43_0(v5);
  *v6 = v7;
  v6[1] = sub_23106044C;
  v8 = OUTLINED_FUNCTION_36_1();

  return v9(v8);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23106FBAC()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_43_0(v7);
  *v8 = v9;
  v8[1] = sub_23105FDEC;

  return sub_23106F46C(v2, v3, v4, v6);
}

uint64_t sub_23106FC70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23106FCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23106FD48()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_42_0(v4);

  return v7(v6);
}

uint64_t sub_23106FDE0()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_42_0(v4);

  return v7(v6);
}

uint64_t sub_23106FE78()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *v7 = v8;
  v7[1] = sub_23106044C;
  v9 = OUTLINED_FUNCTION_36_1();

  return v10(v9);
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  *(a1 + 8) = sub_23106D26C;
  v2 = *(v1 + 328);
  return *(v1 + 368);
}

uint64_t OUTLINED_FUNCTION_2_7()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[62];
  v4 = v0[63];
  v5 = v0[60];
  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[56];
  return v0[61];
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v8 = v0[50];
  v7 = v0[51];
  v10 = v0[46];
  v9 = v0[47];
  return v0[49];
}

void OUTLINED_FUNCTION_4_5()
{
  v1[28] = sub_23106FF5C;
  v1[29] = v0;
  v1[30] = v2;
}

void OUTLINED_FUNCTION_5_4(uint64_t a1@<X8>)
{
  v1[28] = sub_23106B754;
  v1[29] = a1;
  v1[30] = v2;
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 208) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_4()
{
  result = v1[46];
  v3 = v1[44];
  v4 = v1[42];
  v5 = *(v3 + 16);
  v6 = v1[37] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4()
{
  *(v0 + 88) = sub_23106DF90;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1)
{
  result = v1[46];
  v4 = v1[44];
  v5 = v1[42];
  v1[36] = a1;
  v6 = *(v4 + 16);
  return result;
}

void OUTLINED_FUNCTION_16_4()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_20_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_21_3()
{
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[57];
  v6 = v0[50];
  v7 = v0[47];
  v8 = v0[43];
}

void OUTLINED_FUNCTION_22_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_25_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t result)
{
  *(v1 + 392) = result;
  *(v1 + 336) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_28_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_23106BF40;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_29_2()
{

  JUMPOUT(0x2319267C0);
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v2 = v0[56];
  v3 = v0[49];
  v4 = v0[37];

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_32_0()
{
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[52];

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_231158F88();
}

void OUTLINED_FUNCTION_35_0()
{

  JUMPOUT(0x2319267C0);
}

uint64_t OUTLINED_FUNCTION_41_1(float *a1, float a2)
{
  *a1 = a2;

  return sub_231158FF8();
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_1()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);

  return sub_231158FD8();
}

uint64_t OUTLINED_FUNCTION_47_1()
{
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[37];

  return sub_2311595A8();
}

void OUTLINED_FUNCTION_48_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_50_1()
{
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[37];

  return sub_231159028();
}

void OUTLINED_FUNCTION_54_1()
{
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[62];
  v6 = v0[55];
  v7 = v0[56];
}

uint64_t OUTLINED_FUNCTION_57_0()
{
  v2 = *(v0 + 448);
  v3 = *(v0 + 400);

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  v3 = v0[62];
  v2 = v0[63];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1)
{
  *(v1 + 528) = a1;
}

uint64_t OUTLINED_FUNCTION_60_0()
{
  v2 = *(v0 + 512);
  v3 = *(v0 + 496);

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1)
{
  *(v1 + 4) = a1;
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_71()
{

  return [v0 (v1 + 2040)];
}

uint64_t WFContextualActionSpotlightSyncService.tasks.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x70757472617453;
  *(v2 + 24) = 0xE700000000000000;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_231072004;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231162E98;
  *(v4 + 24) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000002CLL;
  *(inited + 40) = 0x8000000231168B00;
  *(inited + 48) = sub_23107200C;
  *(inited + 56) = v3;
  *(inited + 64) = 0;
  *(inited + 72) = &unk_231162EA0;
  *(inited + 80) = v4;
  OUTLINED_FUNCTION_9_0();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_9_0();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2310720A0;
  *(v8 + 24) = v6;
  OUTLINED_FUNCTION_26_1();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_231162EB8;
  *(v9 + 24) = v7;
  v10 = v5;
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_231161B80;
  *(v107 + 32) = 0xD00000000000003BLL;
  *(v107 + 40) = 0x8000000231168B30;
  *(v107 + 48) = sub_23107212C;
  *(v107 + 56) = v8;
  *(v107 + 64) = 1;
  *(v107 + 72) = &unk_231162EC0;
  *(v107 + 80) = v9;
  v11 = sub_231158E58();
  v13 = v12;
  OUTLINED_FUNCTION_9_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v13;
  OUTLINED_FUNCTION_26_1();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_231072328;
  *(v16 + 24) = v15;
  OUTLINED_FUNCTION_26_1();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_231162ED0;
  *(v17 + 24) = v14;
  v117 = v10;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_231161B80;
  *(v18 + 32) = 0xD00000000000004ELL;
  *(v18 + 40) = 0x8000000231168B70;
  *(v18 + 48) = sub_231072330;
  *(v18 + 56) = v16;
  *(v18 + 64) = 0;
  *(v18 + 72) = &unk_231162ED8;
  *(v18 + 80) = v17;
  OUTLINED_FUNCTION_9_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_231162EE8;
  *(v20 + 24) = v19;
  v21 = v0;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_231161B80;
  *(v22 + 32) = 0xD00000000000003CLL;
  *(v22 + 40) = 0x8000000231168BC0;
  *(v22 + 48) = sub_2310DCDF8;
  *(v22 + 56) = 0;
  *(v22 + 64) = 1;
  *(v22 + 72) = &unk_231162EF0;
  *(v22 + 80) = v20;
  v23 = sub_231158E58();
  v25 = v24;
  OUTLINED_FUNCTION_9_0();
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  OUTLINED_FUNCTION_26_1();
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = v25;
  OUTLINED_FUNCTION_26_1();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_231072558;
  *(v28 + 24) = v27;
  OUTLINED_FUNCTION_26_1();
  v29 = swift_allocObject();
  *(v29 + 16) = &unk_231162F00;
  *(v29 + 24) = v26;
  v30 = v21;
  v31 = swift_initStackObject();
  OUTLINED_FUNCTION_6_6(v31, v32, v33, v34, v35, v36, v37, v38, v103, v107, inited, v117, v39);
  v41[4] = v40 - 2;
  v41[5] = 0x8000000231168C00;
  v41[6] = sub_231072560;
  v41[7] = v28;
  v41[8] = 0;
  v41[9] = &unk_231165BE0;
  v41[10] = v29;
  v42 = sub_231158E58();
  v44 = v43;
  OUTLINED_FUNCTION_9_0();
  v45 = swift_allocObject();
  *(v45 + 16) = v30;
  OUTLINED_FUNCTION_26_1();
  v46 = swift_allocObject();
  *(v46 + 16) = v42;
  *(v46 + 24) = v44;
  OUTLINED_FUNCTION_26_1();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_231072870;
  *(v47 + 24) = v46;
  OUTLINED_FUNCTION_26_1();
  v48 = swift_allocObject();
  *(v48 + 16) = &unk_231162F18;
  *(v48 + 24) = v45;
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_6_6(v49, v50, v51, v52, v53, v54, v55, v56, v104, v108, v113, v118, v57);
  v58[4] = v59;
  v58[5] = 0x8000000231168C40;
  v58[6] = sub_23107286C;
  v58[7] = v47;
  v58[8] = 0;
  v58[9] = &unk_231162F20;
  v58[10] = v48;
  v60 = v30;
  v61 = sub_231158E58();
  v63 = v62;
  OUTLINED_FUNCTION_9_0();
  v64 = swift_allocObject();
  *(v64 + 16) = v60;
  OUTLINED_FUNCTION_26_1();
  v65 = swift_allocObject();
  *(v65 + 16) = v61;
  *(v65 + 24) = v63;
  OUTLINED_FUNCTION_26_1();
  v66 = swift_allocObject();
  *(v66 + 16) = sub_231072870;
  *(v66 + 24) = v65;
  OUTLINED_FUNCTION_26_1();
  v67 = swift_allocObject();
  *(v67 + 16) = &unk_231162F30;
  *(v67 + 24) = v64;
  v68 = swift_allocObject();
  OUTLINED_FUNCTION_6_6(v68, v69, v70, v71, v72, v73, v74, v75, 0x8000000231168C80, v109, v114, v119, v76);
  v78[4] = v77 + 6;
  v78[5] = v105;
  v78[6] = sub_23107286C;
  v78[7] = v66;
  v78[8] = 0;
  v78[9] = &unk_231162F38;
  v78[10] = v67;
  v79 = v60;
  v80 = sub_231158E58();
  v82 = v81;
  OUTLINED_FUNCTION_9_0();
  v83 = swift_allocObject();
  *(v83 + 16) = v79;
  OUTLINED_FUNCTION_26_1();
  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  *(v84 + 24) = v82;
  OUTLINED_FUNCTION_26_1();
  v85 = swift_allocObject();
  *(v85 + 16) = sub_231072870;
  *(v85 + 24) = v84;
  OUTLINED_FUNCTION_26_1();
  v86 = swift_allocObject();
  *(v86 + 16) = &unk_231162F48;
  *(v86 + 24) = v83;
  v87 = swift_allocObject();
  OUTLINED_FUNCTION_6_6(v87, v88, v89, v90, v91, v92, v93, v94, 0x8000000231168CD0, v110, v115, v120, v95);
  v97[4] = v96 | 2;
  v97[5] = v106;
  v97[6] = sub_23107286C;
  v97[7] = v85;
  v97[8] = 0;
  v97[9] = &unk_231162F50;
  v97[10] = v86;
  v98 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_231162E80;
  *(v99 + 32) = v116;
  *(v99 + 40) = v111;
  *(v99 + 48) = v18;
  *(v99 + 56) = v22;
  *(v99 + 64) = v31;
  *(v99 + 72) = v49;
  *(v99 + 80) = v68;
  *(v99 + 88) = v87;
  v100 = v98;
  v101 = static TaskBuilder.buildBlock(_:)(v99);
  swift_setDeallocating();
  sub_2310639FC();
  return v101;
}

uint64_t sub_231070DCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231070E68, 0, 0);
}

uint64_t sub_231070E68()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  sub_2311590A8();
  v4 = v2;
  v5 = sub_231159098();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  v8 = sub_231079B6C();
  v0[4] = v8;
  v9 = *(MEMORY[0x277D857E0] + 4);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_231070FA0;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 6, v8, v11);
}

uint64_t sub_231070FA0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231071088()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2310710F0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231070DCC(v3, v4);
}

uint64_t sub_231071174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  sub_2311590A8();
  v4[20] = sub_231159098();
  v6 = sub_231159048();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_23107120C, v6, v5);
}

uint64_t sub_23107120C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v2 = *(v0 + 152);
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_19_1(v0 + 184);
  OUTLINED_FUNCTION_12_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v4);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v5, sel_startWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2310712D8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2310713D8, v3, v2);
}

uint64_t sub_2310713D8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  *v2 = *(v0 + 184);
  v3 = *(v0 + 8);

  return v3();
}

double sub_231071440(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = sub_2310A0BF0(&unk_2845D7748);
  v5 = [a2 databaseProvider];
  sub_2310A1D98(v4, v5);
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_231161E80;
  *(v8 + 32) = v7;
  return result;
}

uint64_t sub_231071510()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v2 = v0[18];
  v0[2] = v3;
  v4 = OUTLINED_FUNCTION_12_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C0D0, &qword_231162FA8);
  OUTLINED_FUNCTION_0_10(v5);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  v0[12] = sub_2310716B8;
  v0[13] = &block_descriptor_130;
  v0[14] = v4;
  OUTLINED_FUNCTION_20_3(v6, sel_collectionsDidChangeWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2310715E8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_4();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310716B8(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_2310716EC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_231157818();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310717AC, 0, 0);
}

uint64_t sub_2310717AC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  sub_2311580E8();
  v6 = sub_2311577D8();
  v0[23] = v6;
  (*(v2 + 8))(v1, v4);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_231071914;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231093D08;
  v0[13] = &block_descriptor_127;
  v0[14] = v7;
  [v3 receiveAutoShortcutsUpdatedNotification:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_231071914()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_4();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310719E0()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_231071A68()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v2 = *(v0 + 144);
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v4);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v5, sel_applicationWasRegisteredWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071B34()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_4();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231071C20()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v2 = *(v0 + 144);
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v4);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v5, sel_migrateAppShortcutsAndReindexAllItemsIfNeededWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071D0C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v2 = *(v0 + 144);
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v4);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v5, sel_systemLanguageUpdatedWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071DF8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v2 = *(v0 + 144);
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v4);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v5, sel_spotlightPreferencesChangedWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231071EE4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_5_5();
  v2 = *(v0 + 144);
  *(v0 + 16) = v3;
  OUTLINED_FUNCTION_19_1(v0 + 152);
  OUTLINED_FUNCTION_12_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0C8, &qword_231162FA0);
  OUTLINED_FUNCTION_0_10(v4);
  OUTLINED_FUNCTION_18_2(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20_3(v5, sel_cellularSettingsUpdatedWithCompletion_);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_231072014()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_8(v1);

  return sub_231062EBC(v3, v4, v5);
}

uint64_t sub_2310720A8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_2310714F0(v3, v4);
}

uint64_t sub_231072134()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_8(v1);

  return sub_231062B70(v3, v4, v5);
}

uint64_t sub_2310721C0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2310722A4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_2310716EC(v3, v4);
}

uint64_t sub_231072338()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_8(v1);

  return sub_231062834();
}

uint64_t sub_2310723C4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071A48(v3, v4);
}

uint64_t sub_231072448()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_8(v1);

  return sub_2310625A0(v3, v4, v5);
}

uint64_t sub_2310724D4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071C00(v3, v4);
}

uint64_t sub_231072568()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071CEC(v3, v4);
}

uint64_t sub_2310725EC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_8(v1);

  return sub_231062180();
}

uint64_t sub_231072678()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071DD8(v3, v4);
}

uint64_t sub_2310726FC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_14_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_5(v1);

  return sub_231071EC4(v3, v4);
}

uint64_t sub_231072788()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *v7 = v8;
  v7[1] = sub_2310721C0;

  return sub_231071174(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_1_6()
{
  v1[12] = sub_231093D08;
  v1[13] = v0;
  v1[14] = v2;
}

__n128 OUTLINED_FUNCTION_6_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

id OUTLINED_FUNCTION_20_3(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t DaemonStartupEventDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231158EA8();
}

uint64_t DaemonStartupEvent.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t _s14VoiceShortcuts28DaemonStartupEventDescriptorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
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

uint64_t _s14VoiceShortcuts28DaemonStartupEventDescriptorV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t TerminationEventSource.__allocating_init()()
{
  v0 = swift_allocObject();
  TerminationEventSource.init()();
  return v0;
}

uint64_t TerminationEventSource.init()()
{
  v1 = sub_231158318();
  signal(15, v1);
  sub_231072B28();
  *(v0 + 16) = sub_231159378();
  return v0;
}

unint64_t sub_231072B28()
{
  result = qword_280CCAF00;
  if (!qword_280CCAF00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAF00);
  }

  return result;
}

uint64_t sub_231072B6C(uint64_t a1)
{
  v22 = sub_231158CF8();
  v3 = OUTLINED_FUNCTION_4(v22);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231158D48();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 16);
  swift_getObjectType();
  aBlock[4] = sub_231072EF4;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231040F30;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);

  sub_231158D08();
  sub_231072F04();
  sub_231159388();
  _Block_release(v19);
  (*(v5 + 8))(v9, v22);
  (*(v13 + 8))(v17, v10);

  return sub_231159398();
}

uint64_t sub_231072D80()
{
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277D7A490];
  sub_2311581C8();
  v6 = sub_231158238();
  v7 = sub_2311592F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23103C000, v6, v7, "Received SIGTERM", v8, 2u);
    MEMORY[0x2319267C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_23107B080();
  return xpc_transaction_exit_clean();
}

uint64_t sub_231072F04()
{
  sub_231158CF8();
  sub_231073400();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  sub_231073458();
  return sub_231159498();
}

uint64_t TerminationEventSource.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TerminationEventSource.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_231072FE8(uint64_t a1)
{
  result = sub_231073010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231073010()
{
  result = qword_280CCB698;
  if (!qword_280CCB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB698);
  }

  return result;
}

unint64_t sub_231073068()
{
  result = qword_280CCB690;
  if (!qword_280CCB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB690);
  }

  return result;
}

unint64_t sub_2310730BC(uint64_t a1)
{
  result = sub_2310730E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310730E4()
{
  result = qword_280CCBD98[0];
  if (!qword_280CCBD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CCBD98);
  }

  return result;
}

unint64_t sub_231073138(uint64_t a1)
{
  result = sub_231073160();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231073160()
{
  result = qword_280CCB5E0;
  if (!qword_280CCB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5E0);
  }

  return result;
}

unint64_t sub_2310731B8()
{
  result = qword_280CCB5D8;
  if (!qword_280CCB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB5D8);
  }

  return result;
}

unint64_t sub_23107320C(uint64_t a1)
{
  result = sub_231073234();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231073234()
{
  result = qword_27DD3C0F0;
  if (!qword_27DD3C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C0F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TerminationEventSource.Event(_BYTE *result, int a2, int a3)
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

unint64_t sub_231073400()
{
  result = qword_280CCB090;
  if (!qword_280CCB090)
  {
    sub_231158CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB090);
  }

  return result;
}

unint64_t sub_231073458()
{
  result = qword_280CCAFD0[0];
  if (!qword_280CCAFD0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C750, &qword_231161B50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CCAFD0);
  }

  return result;
}

uint64_t sub_231073540(char a1)
{
  sub_231159918();
  MEMORY[0x2319253F0](a1 & 1);
  return sub_231159948();
}

void sub_2310735A4(uint64_t a1, void *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231158258();
  v5 = OUTLINED_FUNCTION_4(v4);
  v59 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v58 = v9 - v10;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D7C210]) init];
  [objc_opt_self() hydrateItem:v14 withRecord:a1 setNilValues:0];
  v15 = [a2 latestLibraryIdentifier];
  v16 = sub_231158E58();
  v18 = v17;

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v19 = sub_231073A68(v16, v18, 10);
  v60[0] = 0;
  v20 = [a2 recordWithDescriptor:v19 error:v60];
  v21 = v60[0];
  if (!v20)
  {
    v28 = v60[0];
    sub_231157938();

    swift_willThrow();
    v29 = v19;
    v19 = v14;
LABEL_15:

    goto LABEL_16;
  }

  v22 = v20;
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v24 = v21;
  if (!v23)
  {

    v30 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v31 = sub_231158238();
    v32 = sub_2311592D8();
    if (os_log_type_enabled(v31, v32))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_18_3(&dword_23103C000, v33, v34, "Failed to handle saved library because database record is invalid");
      OUTLINED_FUNCTION_16();
    }

    (*(v59 + 8))(v13, v4);
    sub_231079498();
    OUTLINED_FUNCTION_13_1();
    *v35 = 0;
    swift_willThrow();
    v29 = v14;
    goto LABEL_15;
  }

  v57 = v4;
  v25 = sub_23107930C(v14, &selRef_recordSystemFieldsData);
  if (v26 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v36 = v25;
    v37 = v26;
    v27 = sub_231157998();
    sub_231054A4C(v36, v37);
  }

  [v23 setCloudKitRecordMetadata_];

  [v23 setLastSyncedHash_];
  v60[0] = 0;
  v38 = [a2 saveRecord:v23 withDescriptor:v19 error:v60];
  v39 = v57;
  if ((v38 & 1) == 0)
  {
    v41 = v60[0];
    v42 = sub_231157938();

    swift_willThrow();
    v43 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v44 = v42;
    v45 = sub_231158238();
    v46 = sub_2311592D8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = v42;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      OUTLINED_FUNCTION_19_2(&dword_23103C000, v51, v52, "Failed to handle saved library because trying to save library record failed: %@");
      sub_2310794EC(v48);
      v39 = v57;
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }

    (*(v59 + 8))(v58, v39);
    sub_231079498();
    v53 = OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_20_4(v53, v54);

    v29 = v19;
    v19 = v22;
    goto LABEL_15;
  }

  v40 = v60[0];

LABEL_16:
  v55 = *MEMORY[0x277D85DE8];
}

id sub_231073A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_231158E28();

  v6 = [v4 initWithIdentifier:v5 objectType:a3];

  return v6;
}

void sub_231073B78(void *a1, void *a2, uint64_t a3)
{
  v69[1] = *MEMORY[0x277D85DE8];
  v7 = sub_231158258();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  sub_231055E7C(a1, &selRef_version);
  if (v18)
  {

    v19 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v20 = a1;
    v21 = sub_231158238();
    v22 = sub_2311592F8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v69[0] = v24;
      *v23 = 136315138;
      v68[0] = sub_231055E7C(v20, &selRef_version);
      v68[1] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCA8, &unk_231161CD0);
      v26 = sub_231158E68();
      v28 = sub_2310488F8(v26, v27, v69);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_23103C000, v21, v22, "Received library with unsupported version: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2319267C0](v24, -1, -1);
      MEMORY[0x2319267C0](v23, -1, -1);
    }

    (*(v8 + 8))(v15, v7);
  }

  else
  {
    v65 = a2;
    v66 = v3;
    v29 = [a1 dataFileRepresentation];
    if (v29)
    {
      v30 = v29;
      v68[0] = 0;
      v31 = [a1 libraryIdentifierWithError_];
      v32 = v68[0];
      if (v31)
      {
        v33 = v31;
        v63 = v7;
        sub_231158E58();
        v34 = v32;

        v35 = [v30 data];
        sub_2311579A8();
        v64 = v30;

        v36 = objc_allocWithZone(sub_231157BA8());
        v37 = sub_231157B48();
        v38 = MEMORY[0x28223BE20](v37);
        v39 = v66;
        *(&v62 - 6) = v65;
        *(&v62 - 5) = a1;
        *(&v62 - 4) = v38;
        *(&v62 - 3) = a3;
        *(&v62 - 2) = v39;
        v40 = v67;
        sub_231159238();
        if (!v40)
        {

          goto LABEL_17;
        }

        v41 = v64;
        v42 = *MEMORY[0x277D7A450];
        sub_2311581C8();
        v43 = v40;
        v44 = sub_231158238();
        v45 = sub_2311592D8();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = v37;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v40;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_23103C000, v44, v45, "Failed to merge libraries because trying to save library record failed: %@", v47, 0xCu);
          sub_2310794EC(v48);
          MEMORY[0x2319267C0](v48, -1, -1);
          v51 = v47;
          v37 = v46;
          MEMORY[0x2319267C0](v51, -1, -1);
        }

        (*(v8 + 8))(v12, v63);
        sub_231079498();
        swift_allocError();
        *v52 = 1;
        swift_willThrow();
      }

      else
      {
        v60 = v68[0];
        sub_231157938();

        swift_willThrow();
        v37 = v30;
      }
    }

    else
    {
      v53 = *MEMORY[0x277D7A450];
      sub_2311581C8();
      v54 = sub_231158238();
      v55 = sub_2311592D8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_23103C000, v54, v55, "Received library with no data blob. Not handling it and scheduling sync of ours", v56, 2u);
        MEMORY[0x2319267C0](v56, -1, -1);
      }

      (*(v8 + 8))(v17, v7);
      v57 = sub_23107930C(a1, &selRef_recordSystemFieldsData);
      v59 = v58;
      sub_231074774(v57, v58, v65);
      sub_231054A4C(v57, v59);
    }
  }

LABEL_17:
  v61 = *MEMORY[0x277D85DE8];
}

void sub_231074198(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D7C210]) init];
  [objc_opt_self() hydrateItem:v6 withRecord:a1 setNilValues:0];
  sub_231073B78(v6, a2, a3);
}

uint64_t sub_231074234(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_231074198(v8, v9, a5);

  return 1;
}

void sub_2310742FC(uint64_t a1, void *a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = sub_231158258();
  v4 = OUTLINED_FUNCTION_4(v3);
  v47 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = [a2 latestLibrary];
  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v15 = sub_231157B58();
  v17 = sub_231073A68(v15, v16, 10);
  v48[0] = 0;
  v18 = [a2 recordWithDescriptor:v17 error:v48];
  v19 = v48[0];
  if (!v18)
  {
    v24 = v48[0];
    sub_231157938();

LABEL_9:
    swift_willThrow();
LABEL_13:

    goto LABEL_14;
  }

  v20 = v18;
  v46 = v3;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  v22 = v19;
  if (!v21)
  {

    v25 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v26 = sub_231158238();
    v27 = sub_2311592D8();
    if (os_log_type_enabled(v26, v27))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_18_3(&dword_23103C000, v28, v29, "Failed to handle unknown item error for library because database record is invalid");
      OUTLINED_FUNCTION_16();
    }

    (*(v47 + 8))(v13, v46);
    sub_231079498();
    OUTLINED_FUNCTION_13_1();
    *v30 = 0;
    goto LABEL_9;
  }

  [v21 setCloudKitRecordMetadata_];
  v48[0] = 0;
  if (([a2 saveRecord:v21 withDescriptor:v17 error:v48] & 1) == 0)
  {
    v31 = v48[0];
    v32 = sub_231157938();

    swift_willThrow();
    v33 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v34 = v32;
    v35 = sub_231158238();
    v36 = sub_2311592D8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v32;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      OUTLINED_FUNCTION_19_2(&dword_23103C000, v41, v42, "Failed to handle unknown item error for library because trying to save library record failed: %@");
      sub_2310794EC(v38);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }

    (*(v47 + 8))(v10, v46);
    sub_231079498();
    v43 = OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_20_4(v43, v44);

    v14 = v17;
    v17 = v20;
    goto LABEL_13;
  }

  v23 = v48[0];

LABEL_14:
  v45 = *MEMORY[0x277D85DE8];
}

void sub_231074774(uint64_t a1, unint64_t a2, void *a3)
{
  v44 = a1;
  v48[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231158258();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = [a3 latestLibrary];
  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v47 = v12;
  v13 = sub_231157B58();
  v15 = sub_231073A68(v13, v14, 10);
  v48[0] = 0;
  v16 = [a3 recordWithDescriptor:v15 error:v48];
  v17 = v48[0];
  if (!v16)
  {
    v23 = v48[0];
    sub_231157938();

LABEL_9:
    swift_willThrow();
    v30 = v47;
LABEL_16:

    goto LABEL_17;
  }

  v18 = v16;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    v24 = v17;

    v25 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v26 = sub_231158238();
    v27 = sub_2311592D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23103C000, v26, v27, "Failed to force local library sync for library because database record is invalid", v28, 2u);
      MEMORY[0x2319267C0](v28, -1, -1);
    }

    (*(v45 + 8))(v11, v46);
    sub_231079498();
    swift_allocError();
    *v29 = 0;
    goto LABEL_9;
  }

  v20 = v19;
  v21 = v17;
  if (a2 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_231157998();
  }

  [v20 setCloudKitRecordMetadata_];

  [v20 setLastSyncedHash_];
  v48[0] = 0;
  if (([a3 saveRecord:v20 withDescriptor:v15 error:v48] & 1) == 0)
  {
    v32 = v48[0];
    v33 = sub_231157938();

    swift_willThrow();
    v34 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v35 = v33;
    v36 = sub_231158238();
    v37 = sub_2311592D8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v33;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_23103C000, v36, v37, "Failed to force local library sync for library because trying to save library record failed: %@", v38, 0xCu);
      sub_2310794EC(v39);
      MEMORY[0x2319267C0](v39, -1, -1);
      MEMORY[0x2319267C0](v38, -1, -1);
    }

    (*(v45 + 8))(v9, v46);
    sub_231079498();
    swift_allocError();
    *v42 = 1;
    swift_willThrow();

    v30 = v15;
    v15 = v18;
    goto LABEL_16;
  }

  v31 = v48[0];

LABEL_17:
  v43 = *MEMORY[0x277D85DE8];
}

void sub_231074C1C(NSObject *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v201 = a2;
  v202 = a5;
  v205 = a4;
  v210 = a3;
  v212[1] = *MEMORY[0x277D85DE8];
  v8 = sub_231157A08();
  v197 = *(v8 - 8);
  v198 = v8;
  v9 = *(v197 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v183 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v199 = &v183 - v17;
  MEMORY[0x28223BE20](v16);
  v200 = &v183 - v18;
  v19 = sub_231158258();
  v20 = *(v19 - 8);
  v208 = v19;
  v209 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v204 = &v183 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v203 = &v183 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v195 = &v183 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v183 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v183 - v31;
  v33 = [a1 latestLibrary];
  v34 = sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  v35 = sub_231157B58();
  v196 = v34;
  v37 = sub_231073A68(v35, v36, 10);
  v212[0] = 0;
  v206 = a1;
  v38 = [a1 recordWithDescriptor:v37 error:v212];
  v39 = v212[0];
  if (!v38)
  {
    v56 = v212[0];
    sub_231157938();

    swift_willThrow();
    goto LABEL_46;
  }

  v40 = v38;
  v207 = v33;
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  v42 = v39;
  v43 = v40;
  if (!v41)
  {

    v57 = *MEMORY[0x277D7A450];
    sub_2311581C8();
    v58 = sub_231158238();
    v59 = sub_2311592D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_23103C000, v58, v59, "Failed to merge libraries because database record is invalid", v60, 2u);
      MEMORY[0x2319267C0](v60, -1, -1);
    }

    (*(v209 + 8))(v32, v208);
    sub_231079498();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();

    goto LABEL_46;
  }

  v44 = v41;
  v191 = v12;
  v45 = v43;
  v194 = v37;
  v46 = sub_23107930C(v44, &selRef_cloudKitRecordMetadata);
  v192 = v44;
  if (v47 >> 60 == 15)
  {
LABEL_25:
    v88 = MEMORY[0x277D84F90];
    v212[0] = MEMORY[0x277D84F90];
    v89 = v207;
    v90 = [v207 collections];
    sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
    v91 = sub_231158F48();

    sub_2310A9360(v91);
    v92 = [v89 folders];
    v93 = sub_231158F48();

    sub_2310A9360(v93);
    v94 = v212[0];
    v95 = sub_23106FF58(v212[0]);
    if (v95)
    {
      v96 = v95;
      v200 = v45;
      v193 = v6;
      v211 = v88;
      sub_23104CA0C(0, v95 & ~(v95 >> 63), 0);
      if (v96 < 0)
      {
        __break(1u);
      }

      v97 = v211;
      v98 = 32;
      do
      {
        v99 = *&v94[v98];
        v100 = [v99 identifier];
        v101 = sub_231158E58();
        v103 = v102;

        v211 = v97;
        v105 = v97[2];
        v104 = v97[3];
        if (v105 >= v104 >> 1)
        {
          sub_23104CA0C((v104 > 1), v105 + 1, 1);
          v97 = v211;
        }

        v97[2] = v105 + 1;
        v106 = &v97[2 * v105];
        v106[4] = v101;
        v106[5] = v103;
        v98 += 8;
        --v96;
      }

      while (v96);

      v6 = v193;
      v89 = v207;
      v45 = v200;
    }

    else
    {

      v97 = MEMORY[0x277D84F90];
    }

    v107 = sub_231157B78();
    v108 = *MEMORY[0x277D7A450];
    v37 = v194;
    if (v107)
    {
      sub_2311581C8();
      v109 = sub_231158238();
      v110 = sub_2311592F8();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_23103C000, v109, v110, "Merging local library with remote, since we share history", v111, 2u);
        MEMORY[0x2319267C0](v111, -1, -1);
      }

      (*(v209 + 8))(v203, v208);
      v112 = v205;
      if (v205)
      {
        v113 = sub_231158E28();
        [v112 logEvent_];
      }

      v114 = sub_231157B88();
      if (!v6)
      {
        v115 = v114;
        v116 = sub_231157B08();

        v117 = v89;
LABEL_49:
        v124 = v117;
        [v206 persistenceMode];
        v125 = sub_231157B68();
        v127 = v126;
        v200 = v45;
        v193 = 0;

        v128 = sub_231157998();
        [v192 setData_];

        v129 = sub_23107930C(v201, &selRef_recordSystemFieldsData);
        v210 = v127;
        if (v130 >> 60 == 15)
        {
          v131 = 0;
        }

        else
        {
          v132 = v129;
          v133 = v130;
          v131 = sub_231157998();
          sub_231054A4C(v132, v133);
        }

        v134 = v192;
        [v192 setCloudKitRecordMetadata_];

        if (v116)
        {
          v135 = objc_opt_self();
          v136 = sub_231157998();
          v137 = [v135 syncHashFromData_];

          [v134 setSyncHash_];
        }

        v211 = 0;
        v138 = v194;
        if ([v206 saveRecord:v134 withDescriptor:v194 error:&v211])
        {
          v139 = v97[2];
          if (v139)
          {
            v140 = v211;
            v141 = v97 + 5;
            v142 = v206;
            do
            {
              v144 = *(v141 - 1);
              v143 = *v141;

              v145 = sub_231073A68(v144, v143, 2);
              [v142 addPendingUpdatedDescriptor:v145];

              v141 += 2;
              --v139;
            }

            while (v139);
          }

          else
          {
            v147 = v211;
          }

          sub_231054A60(v125, v210);
        }

        else
        {
          v146 = v211;

          sub_231157938();

          swift_willThrow();
          sub_231054A60(v125, v210);
        }

        goto LABEL_47;
      }
    }

    else
    {
      sub_2311581C8();
      v118 = sub_231158238();
      v119 = sub_2311592F8();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_23103C000, v118, v119, "Reconciling local library with remote, since we don't share history", v120, 2u);
        MEMORY[0x2319267C0](v120, -1, -1);
      }

      (*(v209 + 8))(v204, v208);
      v121 = v205;
      if (v205)
      {
        v122 = sub_231158E28();
        [v121 logEvent_];
      }

      v117 = static VCCKLibrarySyncCoordinator.reconcile(localDatabase:with:)(v206, v210);
      if (!v6)
      {
        v116 = 1;
        goto LABEL_49;
      }
    }

LABEL_46:

    goto LABEL_47;
  }

  v48 = v46;
  v49 = v47;
  v187 = v15;
  v50 = objc_opt_self();
  v51 = sub_231157998();
  v212[0] = 0;
  v52 = [v50 recordFromSystemFieldsData:v51 error:v212];

  v190 = v52;
  if (!v52)
  {
    v62 = v212[0];
    v63 = sub_231157938();

    swift_willThrow();
    sub_231054A4C(v48, v49);
    v64 = v63;
LABEL_24:

    v6 = 0;
    goto LABEL_25;
  }

  v188 = v48;
  v189 = v49;
  v53 = v212[0];
  v54 = sub_23107930C(v201, &selRef_recordSystemFieldsData);
  if (v55 >> 60 == 15)
  {

    sub_231054A4C(v188, v189);
    goto LABEL_25;
  }

  v65 = v54;
  v66 = v55;
  v67 = sub_231157998();
  v212[0] = 0;
  v68 = [v50 recordFromSystemFieldsData:v67 error:v212];

  if (!v68)
  {
    v86 = v212[0];
    v87 = sub_231157938();

    swift_willThrow();
    sub_231054A4C(v188, v189);

    sub_231054A4C(v65, v66);
    v64 = v87;
    goto LABEL_24;
  }

  v69 = v212[0];
  v70 = v190;
  v71 = [v190 modificationDate];
  if (!v71)
  {
    sub_231054A4C(v188, v189);

    sub_231054A4C(v65, v66);
    goto LABEL_25;
  }

  v72 = v71;
  v73 = v68;
  v74 = v200;
  sub_2311579D8();

  v75 = [v73 modificationDate];
  if (!v75)
  {
    (*(v197 + 8))(v74, v198);
    sub_231054A4C(v188, v189);

    sub_231054A4C(v65, v66);
    goto LABEL_25;
  }

  v76 = v75;
  v184 = v65;
  v185 = v66;
  sub_2311579D8();

  v77 = sub_231055E7C(v190, &selRef_recordChangeTag);
  v79 = v78;
  v186 = v73;
  v80 = sub_231055E7C(v73, &selRef_recordChangeTag);
  if (!v79)
  {
    v82 = v191;
    v83 = v187;
    if (!v81)
    {
      goto LABEL_71;
    }

LABEL_65:

    goto LABEL_66;
  }

  v82 = v191;
  v83 = v187;
  if (!v81)
  {
    goto LABEL_65;
  }

  if (v77 != v80 || v79 != v81)
  {
    v85 = sub_231159818();

    if (v85)
    {
      goto LABEL_71;
    }

LABEL_66:
    v148 = v199;
    if (sub_2311579E8() != -1)
    {
      v149 = *MEMORY[0x277D7A450];
      sub_2311581C8();
      v150 = v148;
      v151 = v197;
      v152 = v198;
      v153 = v83;
      v154 = *(v197 + 16);
      v154(v153, v150, v198);
      v155 = v200;
      v154(v82, v200, v152);
      v156 = sub_231158238();
      v157 = sub_2311592E8();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v206 = v156;
        v159 = v158;
        v210 = swift_slowAlloc();
        v212[0] = v210;
        *v159 = 136315394;
        sub_231079578();
        v193 = v5;
        v160 = v187;
        LODWORD(v205) = v157;
        v161 = sub_2311597C8();
        v162 = v151;
        v164 = v163;
        v165 = *(v162 + 8);
        v165(v160, v152);
        v166 = sub_2310488F8(v161, v164, v212);

        *(v159 + 4) = v166;
        *(v159 + 12) = 2080;
        v167 = v191;
        v168 = sub_2311597C8();
        v170 = v169;
        v165(v167, v152);
        v171 = sub_2310488F8(v168, v170, v212);

        *(v159 + 14) = v171;
        v172 = v206;
        _os_log_impl(&dword_23103C000, v206, v205, "Remote record modification date %s is not greater than local record modification date %s", v159, 0x16u);
        v173 = v210;
        swift_arrayDestroy();
        MEMORY[0x2319267C0](v173, -1, -1);
        MEMORY[0x2319267C0](v159, -1, -1);
        sub_231054A4C(v188, v189);

        sub_231054A4C(v184, v185);
        (*(v209 + 8))(v195, v208);
        v165(v199, v152);
        v165(v200, v152);
      }

      else
      {
        sub_231054A4C(v188, v189);

        sub_231054A4C(v184, v185);
        v182 = *(v151 + 8);
        v182(v191, v152);
        v182(v187, v152);
        (*(v209 + 8))(v195, v208);
        v182(v199, v152);
        v182(v155, v152);
      }

      goto LABEL_47;
    }

    sub_231054A4C(v188, v189);

    sub_231054A4C(v184, v185);
    v174 = v198;
    v175 = *(v197 + 8);
    v175(v148, v198);
    v175(v200, v174);
    goto LABEL_25;
  }

LABEL_71:
  v176 = *MEMORY[0x277D7A450];
  sub_2311581C8();
  v177 = sub_231158238();
  v178 = sub_2311592B8();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&dword_23103C000, v177, v178, "Local library with identifier has the same recordChangeTag as fetched library, this is likely our own change, discarding it.", v179, 2u);
    MEMORY[0x2319267C0](v179, -1, -1);
  }

  sub_231054A4C(v188, v189);

  sub_231054A4C(v184, v185);
  (*(v209 + 8))(v30, v208);
  v180 = v198;
  v181 = *(v197 + 8);
  v181(v199, v198);
  v181(v200, v180);
LABEL_47:
  v123 = *MEMORY[0x277D85DE8];
}

uint64_t static VCCKLibrarySyncCoordinator.reconcile(localDatabase:with:)(void *a1, void *a2)
{
  v271[1] = *MEMORY[0x277D85DE8];
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C160, &unk_231163270);
  v6 = OUTLINED_FUNCTION_4(v257);
  v259 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  v253 = (v10 - v11);
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v12);
  v256 = &v245 - v13;
  v14 = sub_231158258();
  v15 = OUTLINED_FUNCTION_4(v14);
  v260 = v16;
  v261 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v255 = (v19 - v20);
  OUTLINED_FUNCTION_15_4();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v245 - v23;
  MEMORY[0x28223BE20](v22);
  v258 = &v245 - v25;
  OUTLINED_FUNCTION_15_4();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v245 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v245 - v30;
  v263 = a1;
  v32 = [a1 latestLibrary];
  OUTLINED_FUNCTION_14_5();
  if (sub_231157B98())
  {
    v33 = a2;
LABEL_3:
    v34 = v33;

    goto LABEL_108;
  }

  v268 = a2;
  v35 = [v3 shortcutIdentifiers];
  v36 = sub_231158F48();

  v37 = *(v36 + 16);

  if (!v37)
  {
    v38 = [v3 folders];
    sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
    v39 = sub_231158F48();

    v40 = sub_23106FF58(v39);

    if (!v40)
    {
      v33 = v268;
      goto LABEL_3;
    }
  }

  v264 = v24;
  v267 = v3;
  v41 = v268;
  v34 = sub_231157B58();
  v43 = v42;
  [v263 persistenceMode];
  sub_231157B68();
  v254 = v2;
  if (v2)
  {

    goto LABEL_108;
  }

  v44 = v260;
  v45 = objc_allocWithZone(sub_231157BA8());
  v265 = sub_231157B48();
  v46 = [v267 folders];
  sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
  OUTLINED_FUNCTION_14_5();
  v47 = sub_231158F48();

  v48 = [v41 folders];
  v250 = v43;
  v49 = sub_231158F48();

  v50 = sub_2310775E8(v47, v49);
  v51 = MEMORY[0x277D7A458];
  if ((v50 & 1) == 0)
  {
    v269 = v49;
    v251 = *MEMORY[0x277D7A458];
    sub_2311581C8();
    v60 = sub_231158238();
    v61 = sub_2311592C8();
    if (OUTLINED_FUNCTION_20_2(v61))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_5_6(&dword_23103C000, v62, v63, "Reconciling folders");
      OUTLINED_FUNCTION_16();
    }

    v64 = MEMORY[0x277D84F90];

    v252 = *(v44 + 8);
    v247 = v44 + 8;
    v252(v29, v261);
    v65 = sub_23106FF58(v47);
    v66 = v263;
    if (v65)
    {
      v67 = v65;
      v271[0] = v64;
      OUTLINED_FUNCTION_3_6(v65);
      if (v67 < 0)
      {
        goto LABEL_136;
      }

      v68 = 0;
      v69 = v271[0];
      v262 = v47 & 0xC000000000000001;
      v70 = v47;
      v71 = v67;
      do
      {
        if (v262)
        {
          v72 = MEMORY[0x231925080](v68, v47);
        }

        else
        {
          v72 = *(v47 + 8 * v68 + 32);
        }

        v73 = v72;
        v74 = [v72 identifier];
        v75 = sub_231158E58();
        v77 = v76;

        v271[0] = v69;
        v79 = *(v69 + 2);
        v78 = *(v69 + 3);
        if (v79 >= v78 >> 1)
        {
          v81 = OUTLINED_FUNCTION_2_9(v78);
          sub_23104CA0C(v81, v79 + 1, 1);
          v69 = v271[0];
        }

        ++v68;
        *(v69 + 2) = v79 + 1;
        v80 = &v69[16 * v79];
        *(v80 + 4) = v75;
        *(v80 + 5) = v77;
        v47 = v70;
      }

      while (v71 != v68);

      v66 = v263;
      v64 = MEMORY[0x277D84F90];
    }

    else
    {

      v69 = MEMORY[0x277D84F90];
    }

    v82 = sub_23106FF58(v269);
    if (v82)
    {
      v83 = v82;
      v271[0] = v64;
      OUTLINED_FUNCTION_3_6(v82);
      if (v83 < 0)
      {
        goto LABEL_137;
      }

      v84 = 0;
      v85 = v271[0];
      v86 = v269;
      v262 = v269 & 0xC000000000000001;
      v87 = v83;
      do
      {
        if (v262)
        {
          v88 = MEMORY[0x231925080](v84);
        }

        else
        {
          v88 = *(v86 + 8 * v84 + 32);
        }

        v89 = v88;
        v90 = [v88 identifier];
        v91 = sub_231158E58();
        v93 = v92;

        v271[0] = v85;
        v95 = *(v85 + 2);
        v94 = *(v85 + 3);
        if (v95 >= v94 >> 1)
        {
          v97 = OUTLINED_FUNCTION_2_9(v94);
          sub_23104CA0C(v97, v95 + 1, 1);
          v85 = v271[0];
        }

        ++v84;
        *(v85 + 2) = v95 + 1;
        v96 = &v85[16 * v95];
        *(v96 + 4) = v91;
        *(v96 + 5) = v93;
        v86 = v269;
      }

      while (v87 != v84);

      v66 = v263;
    }

    else
    {

      v85 = MEMORY[0x277D84F90];
    }

    v98 = [v66 lastRemoteFolderOrderingForCollection_];
    if (v98)
    {
      v99 = v98;
      v100 = sub_231158F48();
    }

    else
    {
      v100 = 0;
    }

    sub_231158E58();

    v101 = sub_2310777BC(v69, v100, v85);

    v270 = v85;
    v271[0] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
    sub_231079400();
    v102 = v253;
    sub_231158DF8();

    v104 = v256;
    v103 = v257;
    sub_231159738();
    v105 = v259[1];
    ++v259;
    v246 = v105;
    v105(v102, v103);
    v51 = sub_231159728();
    sub_231159718();
    v106 = OUTLINED_FUNCTION_10_0();
    sub_231077AC4(v106, v104);
    OUTLINED_FUNCTION_14_5();

    v107 = v103;
    v262 = *(v103 + 16);
    if (!v262)
    {
      v59 = v268;
LABEL_67:

      v141 = OUTLINED_FUNCTION_13_6();
      v142(v141);
      v55 = v254;
      v58 = v267;
      goto LABEL_68;
    }

    v108 = 0;
    v109 = (v103 + 65);
    *(&v110 + 1) = 2;
    v248 = xmmword_231161B80;
    *&v110 = 136315138;
    v245 = v110;
    v253 = v103;
    while (1)
    {
      if (v108 >= v107[2])
      {
        goto LABEL_132;
      }

      v111 = *(v109 - 33);
      v112 = *(v109 - 25);
      v113 = *(v109 - 17);
      v114 = *(v109 - 9);
      v115 = *(v109 - 1);
      if (*v109 == 1)
      {
        if (v115)
        {
          v116 = *(v109 - 17);

          v51 = sub_231158E28();
          [v265 deleteFolderWithIdentifier_];
          OUTLINED_FUNCTION_0_12();
          sub_23107946C();
        }

        else if (v111 < v114)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
          v124 = swift_allocObject();
          *(v124 + 16) = v248;
          *(v124 + 32) = v112;
          *(v124 + 40) = v113;
          OUTLINED_FUNCTION_0_12();
          sub_231079464();

          sub_231158F38();
          OUTLINED_FUNCTION_10_0();

          v271[0] = 0;
          v125 = [v265 moveFolders:v107 toIndex:v114 error:v271];
          LODWORD(v269) = v115;
          v126 = v125;

          v51 = v271[0];
          if (!v126)
          {
            v241 = v271[0];

            v34 = sub_231157938();

            swift_willThrow();
            OUTLINED_FUNCTION_0_12();
            goto LABEL_129;
          }

          v127 = v271[0];
          OUTLINED_FUNCTION_0_12();
          goto LABEL_59;
        }
      }

      else
      {
        if (v115)
        {
          LODWORD(v269) = *(v109 - 1);

          v117 = sub_231158E28();
          v271[0] = 0;
          v118 = [v267 folderWithIdentifier:v117 error:v271];

          if (v118)
          {
            v249 = v114;
            v119 = v271[0];
            v120 = [v118 name];
            if (!v120)
            {
              sub_231158E58();
              sub_231158E28();
              OUTLINED_FUNCTION_14_5();
            }

            v121 = [v118 glyphCharacter];
            v122 = sub_231158E28();
            v271[0] = 0;
            v51 = [v265 insertFolderWithName:v120 icon:v121 identifier:v122 insertAt:v111 error:v271];

            if (!v51)
            {
              v34 = v271[0];

              sub_231157938();

              swift_willThrow();
              OUTLINED_FUNCTION_8_5();
              goto LABEL_128;
            }

            v123 = v271[0];

            OUTLINED_FUNCTION_8_5();
            goto LABEL_58;
          }

          v132 = v271[0];
          OUTLINED_FUNCTION_10_0();
          v133 = sub_231157938();

          swift_willThrow();
          v254 = 0;

          v51 = v258;
          sub_2311581C8();

          v134 = sub_231158238();
          v135 = sub_2311592D8();
          OUTLINED_FUNCTION_0_12();
          OUTLINED_FUNCTION_7_6();
          sub_23107946C();
          if (os_log_type_enabled(v134, v135))
          {
            v51 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            v249 = v111;
            v137 = v136;
            v271[0] = v136;
            *v51 = v245;
            *(v51 + 4) = sub_2310488F8(v112, v113, v271);
            _os_log_impl(&dword_23103C000, v134, v135, "Inserted folder %s not found in local library.", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v137);
            v138 = v253;
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_16();

            OUTLINED_FUNCTION_7_6();
            sub_23107946C();
            OUTLINED_FUNCTION_17_5();
            v139();
            v107 = v138;
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_0_12();
          OUTLINED_FUNCTION_7_6();
          sub_23107946C();
          OUTLINED_FUNCTION_17_5();
          v140();
          goto LABEL_60;
        }

        if (v111 < v114)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
          v128 = swift_allocObject();
          *(v128 + 16) = v248;
          *(v128 + 32) = v112;
          *(v128 + 40) = v113;
          OUTLINED_FUNCTION_0_12();
          sub_231079464();

          sub_231158F38();
          OUTLINED_FUNCTION_10_0();

          v271[0] = 0;
          v129 = [v265 moveFolders:v107 toIndex:v111 error:v271];
          LODWORD(v269) = v115;
          v130 = v129;

          v51 = v271[0];
          if (!v130)
          {
            v242 = v271[0];

            v34 = sub_231157938();

            swift_willThrow();
            OUTLINED_FUNCTION_0_12();
LABEL_128:
            OUTLINED_FUNCTION_7_6();
LABEL_129:
            sub_23107946C();
            v243 = OUTLINED_FUNCTION_13_6();
            v244(v243);
LABEL_108:
            v217 = *MEMORY[0x277D85DE8];
            return v34;
          }

          v131 = v271[0];
          OUTLINED_FUNCTION_0_12();
LABEL_58:
          OUTLINED_FUNCTION_7_6();
LABEL_59:
          sub_23107946C();
LABEL_60:
          v107 = v253;
        }
      }

LABEL_61:
      ++v108;
      v109 += 40;
      v59 = v268;
      if (v262 == v108)
      {
        goto LABEL_67;
      }
    }
  }

  v251 = *v51;
  sub_2311581C8();
  v52 = sub_231158238();
  v53 = sub_2311592C8();
  v54 = OUTLINED_FUNCTION_20_2(v53);
  v55 = v254;
  if (v54)
  {
    *OUTLINED_FUNCTION_53() = 0;
    OUTLINED_FUNCTION_5_6(&dword_23103C000, v56, v57, "No folders need to be reconciled.");
    OUTLINED_FUNCTION_16();
  }

  v252 = *(v44 + 8);
  v252(v31, v261);
  v58 = v267;
  v59 = v268;
LABEL_68:
  v143 = [v58 collections];
  v144 = OUTLINED_FUNCTION_10_5();

  v269 = v144;
  v145 = sub_23106FF58(v144);
  v146 = MEMORY[0x277D84F90];
  if (v145)
  {
    v147 = v145;
    v254 = v55;
    v271[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_6(v145);
    if (v147 < 0)
    {
      goto LABEL_134;
    }

    v148 = 0;
    v146 = v271[0];
    v149 = v269 & 0xC000000000000001;
    do
    {
      if (v149)
      {
        v150 = MEMORY[0x231925080](v148, v269);
      }

      else
      {
        v150 = *(v269 + 8 * v148 + 32);
      }

      v151 = v150;
      v152 = [v151 identifier];
      v153 = sub_231158E58();
      v155 = v154;

      v271[0] = v146;
      v157 = *(v146 + 2);
      v156 = *(v146 + 3);
      v51 = (v157 + 1);
      if (v157 >= v156 >> 1)
      {
        v159 = OUTLINED_FUNCTION_2_9(v156);
        sub_23104CA0C(v159, v157 + 1, 1);
        v146 = v271[0];
      }

      ++v148;
      *(v146 + 2) = v51;
      v158 = &v146[16 * v157];
      *(v158 + 4) = v153;
      *(v158 + 5) = v155;
    }

    while (v147 != v148);
    v59 = v268;
    v55 = v254;
  }

  v271[0] = v146;

  sub_2310787F8(v271);
  v160 = v264;
  if (!v55)
  {

    v161 = v271[0];
    v162 = [v59 collections];
    v163 = OUTLINED_FUNCTION_10_5();

    v164 = sub_23106FF58(v163);
    if (v164)
    {
      v165 = v164;
      v259 = 0;
      v262 = v161;
      v271[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_3_6(v164);
      if (v165 < 0)
      {
        goto LABEL_135;
      }

      v166 = 0;
      v167 = v271[0];
      do
      {
        if ((v163 & 0xC000000000000001) != 0)
        {
          v168 = MEMORY[0x231925080](v166, v163);
        }

        else
        {
          v168 = *(v163 + 8 * v166 + 32);
        }

        v169 = v168;
        v170 = [v169 identifier];
        v171 = sub_231158E58();
        v173 = v172;

        v271[0] = v167;
        v175 = *(v167 + 2);
        v174 = *(v167 + 3);
        if (v175 >= v174 >> 1)
        {
          v177 = OUTLINED_FUNCTION_2_9(v174);
          sub_23104CA0C(v177, v175 + 1, 1);
          v167 = v271[0];
        }

        ++v166;
        *(v167 + 2) = v175 + 1;
        v176 = &v167[16 * v175];
        *(v176 + 4) = v171;
        *(v176 + 5) = v173;
        v160 = v264;
      }

      while (v165 != v166);

      v161 = v262;
      v55 = v259;
    }

    else
    {

      v167 = MEMORY[0x277D84F90];
    }

    v271[0] = v167;

    sub_2310787F8(v271);
    v178 = v268;
    if (!v55)
    {

      v179 = v271[0];
      if (sub_23107755C(v161, v271[0]))
      {
      }

      else
      {
        sub_2311581C8();

        v180 = sub_231158238();
        v181 = sub_2311592D8();

        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v264 = swift_slowAlloc();
          v270 = v161;
          v271[0] = v264;
          *v182 = 136315394;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
          LODWORD(v262) = v181;
          sub_231079400();
          v183 = OUTLINED_FUNCTION_9_5();
          v184 = v160;
          v186 = v185;

          v187 = sub_2310488F8(v183, v186, v271);

          *(v182 + 4) = v187;
          *(v182 + 12) = 2080;
          v270 = v179;
          v188 = OUTLINED_FUNCTION_9_5();
          v190 = v189;

          v191 = sub_2310488F8(v188, v190, v271);

          *(v182 + 14) = v191;
          _os_log_impl(&dword_23103C000, v180, v262, "Local categories (%s) do not match remote categories (%s)", v182, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_16();

          v192 = v184;
        }

        else
        {

          v192 = v160;
        }

        v252(v192, v261);
        v178 = v268;
      }

      v193 = v255;
      sub_2311581C8();
      v194 = sub_231158238();
      v195 = sub_2311592C8();
      v196 = OUTLINED_FUNCTION_20_2(v195);
      v197 = v266;
      if (v196)
      {
        *OUTLINED_FUNCTION_53() = 0;
        OUTLINED_FUNCTION_5_6(&dword_23103C000, v198, v199, "Reconciling categories.");
        OUTLINED_FUNCTION_16();
      }

      v252(v193, v261);
      v200 = v269;
      v201 = sub_23106FF58(v269);
      v202 = 0;
      v203 = v200 & 0xC000000000000001;
      v204 = v200 & 0xFFFFFFFFFFFFFF8;
      while (v201 != v202)
      {
        if (v203)
        {
          v205 = MEMORY[0x231925080](v202, v269);
        }

        else
        {
          if (v202 >= *(v204 + 16))
          {
            goto LABEL_131;
          }

          v205 = *(v269 + 8 * v202 + 32);
        }

        v206 = v205;
        if (__OFADD__(v202, 1))
        {
          __break(1u);
LABEL_131:
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
        }

        v207 = [v205 identifier];
        v208 = sub_231158E58();
        v210 = v209;

        v178 = v268;
        v211 = v208;
        v197 = v266;
        sub_231077B4C(v211, v210, v267, v268, v266, v265);

        ++v202;
      }

      v212 = *MEMORY[0x277D7D090];
      v213 = sub_231158E58();
      v215 = v214;
      v216 = v265;
      sub_231078038(v213, v214, v267, v178, v263, v197, v265);

      v219 = [v216 folders];
      v220 = OUTLINED_FUNCTION_10_5();

      v221 = sub_23106FF58(v220);
      if (v221)
      {
        v222 = v221;
        v271[0] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_3_6(v221);
        if (v222 < 0)
        {
          goto LABEL_138;
        }

        v223 = 0;
        v224 = v271[0];
        v269 = v220 & 0xC000000000000001;
        v225 = v220;
        do
        {
          if (v269)
          {
            v226 = MEMORY[0x231925080](v223, v220);
          }

          else
          {
            v226 = *(v220 + 8 * v223 + 32);
          }

          v227 = v226;
          v228 = [v227 identifier];
          v229 = sub_231158E58();
          v231 = v230;

          v271[0] = v224;
          v233 = *(v224 + 2);
          v232 = *(v224 + 3);
          if (v233 >= v232 >> 1)
          {
            v235 = OUTLINED_FUNCTION_2_9(v232);
            sub_23104CA0C(v235, v233 + 1, 1);
            v224 = v271[0];
          }

          ++v223;
          *(v224 + 2) = v233 + 1;
          v234 = &v224[16 * v233];
          *(v234 + 4) = v229;
          *(v234 + 5) = v231;
          v197 = v266;
          v220 = v225;
        }

        while (v222 != v223);

        v178 = v268;
      }

      else
      {

        v224 = MEMORY[0x277D84F90];
      }

      v236 = 0;
      v237 = *(v224 + 2);
      v238 = (v224 + 40);
      while (v237 != v236)
      {
        if (v236 >= *(v224 + 2))
        {
          goto LABEL_133;
        }

        v240 = *(v238 - 1);
        v239 = *v238;

        sub_231078038(v240, v239, v267, v178, v263, v197, v265);

        ++v236;
        v238 += 2;
      }

      v34 = v265;
      goto LABEL_108;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23107755C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_231159818() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2310775E8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2311594D8())
  {
    if (a2 >> 62)
    {
      result = sub_2311594D8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_231054A0C(0, &qword_27DD3C168, 0x277D7A1C0);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x231925080](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x231925080](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_231159418();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_2310777BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (sub_23107755C(v5, v4))
  {
  }

  else if (sub_23107755C(v3, v4) & 1) != 0 || (sub_23107755C(v5, v3))
  {

    return v5;
  }

  else
  {
    sub_231054A0C(0, &qword_27DD3C198, 0x277CBEB70);

    sub_2310614A8(v3);

    v6 = sub_231078690();
    sub_2310614A8(v4);

    v7 = sub_231078690();
    sub_2310614A8(v5);

    v8 = sub_231078690();
    v9 = [objc_opt_self() wf:v8 orderedSetByMergingOrderedSet:v6 withOrderedSet:v7 baseOrderedSet:?];
    v10 = [v9 array];
    v11 = sub_231158F48();

    v12 = *(v11 + 16);
    if (v12)
    {
      v22 = v9;
      v23 = v8;
      v24 = v7;
      v25 = v6;
      v13 = v11 + 32;
      v3 = MEMORY[0x277D84F90];
      do
      {
        sub_231040B98(v13, v29);
        sub_231040B88(v29, &v26);
        if (swift_dynamicCast())
        {
          v14 = v28;
          if (v28)
          {
            v15 = v27;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = *(v3 + 16);
              sub_2310CC1BC();
              v3 = v19;
            }

            v16 = *(v3 + 16);
            if (v16 >= *(v3 + 24) >> 1)
            {
              sub_2310CC1BC();
              v3 = v20;
            }

            *(v3 + 16) = v16 + 1;
            v17 = v3 + 16 * v16;
            *(v17 + 32) = v15;
            *(v17 + 40) = v14;
          }
        }

        v13 += 32;
        --v12;
      }

      while (v12);

      v7 = v24;
      v6 = v25;
    }

    else
    {

      v3 = MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_231077AC4(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*(a2 + 16), *(result + 16)))
  {
    __break(1u);
  }

  else
  {
    sub_2310CC36C();
    v5 = v2;

    sub_2310A9108(v3);

    sub_2310A9018(v4);
    return v5;
  }

  return result;
}

id sub_231077B4C(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v47 = a5;
  v48 = a6;
  v50[1] = *MEMORY[0x277D85DE8];
  v11 = sub_231158258();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  v18 = *MEMORY[0x277D7D090];
  if (sub_231158E58() == a1 && v19 == a2)
  {
  }

  else
  {
    v46 = v11;
    v21 = sub_231159818();

    if ((v21 & 1) == 0)
    {
      v45[1] = v6;
      v23 = sub_231158E28();
      v24 = [a3 shortcutsInCategoryWithIdentifier_];

      v25 = sub_231158F48();
      v26 = sub_231158E28();
      v27 = v25;
      v28 = [a4 shortcutsInCategoryWithIdentifier_];

      v29 = sub_231158F48();
      if (sub_23107755C(v27, v29))
      {

        v30 = *MEMORY[0x277D7A458];
        sub_2311581C8();

        v31 = sub_231158238();
        v32 = sub_2311592C8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v50[0] = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_2310488F8(a1, a2, v50);
          _os_log_impl(&dword_23103C000, v31, v32, "Shortcuts in %s don't need to be reconciled.", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x2319267C0](v34, -1, -1);
          MEMORY[0x2319267C0](v33, -1, -1);
        }

        result = (*(v49 + 8))(v17, v46);
      }

      else
      {
        v36 = *MEMORY[0x277D7A458];
        sub_2311581C8();

        v37 = sub_231158238();
        v38 = sub_2311592C8();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v50[0] = v40;
          *v39 = 136315138;
          *(v39 + 4) = sub_2310488F8(a1, a2, v50);
          _os_log_impl(&dword_23103C000, v37, v38, "Reconciling shortcuts in %s.", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x2319267C0](v40, -1, -1);
          MEMORY[0x2319267C0](v39, -1, -1);
        }

        (*(v49 + 8))(v15, v46);
        sub_2310777BC(v27, MEMORY[0x277D84F90], v29);

        v41 = sub_231158F38();

        v42 = sub_231158E28();
        v50[0] = 0;
        v43 = [v48 setShortcutOrdering:v41 forCollectionIdentifier:v42 error:v50];

        if (v43)
        {
          result = v50[0];
        }

        else
        {
          v44 = v50[0];
          sub_231157938();

          result = swift_willThrow();
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_231078038(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v56 = a6;
  v57 = a7;
  v55 = a5;
  v60[1] = *MEMORY[0x277D85DE8];
  v13 = sub_231158258();
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v54 - v18;
  v19 = sub_231158E28();
  v60[0] = 0;
  v20 = [a3 shortcutsInFolderWithIdentifier:v19 error:v60];

  v21 = v60[0];
  if (v20)
  {
    v22 = sub_231158F48();
    v23 = v21;
  }

  else
  {
    v24 = v60[0];
    v25 = sub_231157938();

    swift_willThrow();
    v22 = 0;
    v8 = 0;
  }

  v26 = sub_231158E28();
  v60[0] = 0;
  v27 = [a4 shortcutsInFolderWithIdentifier:v26 error:v60];

  v28 = v60[0];
  if (v27)
  {
    v29 = sub_231158F48();
    v30 = v28;

    if (v22)
    {
      if (v29 && (sub_23107755C(v22, v29) & 1) != 0)
      {

LABEL_20:
        v47 = *MEMORY[0x277D7A458];
        v48 = v54;
        sub_2311581C8();

        v49 = sub_231158238();
        v50 = sub_2311592C8();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v60[0] = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_2310488F8(a1, a2, v60);
          _os_log_impl(&dword_23103C000, v49, v50, "Shortcuts in folder %s don't need to be reconciled.", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x2319267C0](v52, -1, -1);
          MEMORY[0x2319267C0](v51, -1, -1);
        }

        result = (*(v58 + 8))(v48, v59);
        goto LABEL_23;
      }
    }

    else if (!v29)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v31 = v60[0];
    v32 = sub_231157938();

    swift_willThrow();
    if (!v22)
    {
      goto LABEL_20;
    }

    v29 = 0;
    v8 = 0;
  }

  v33 = *MEMORY[0x277D7A458];
  sub_2311581C8();

  v34 = sub_231158238();
  v35 = sub_2311592C8();

  v36 = os_log_type_enabled(v34, v35);
  v54 = v8;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_2310488F8(a1, a2, v60);
    _os_log_impl(&dword_23103C000, v34, v35, "Reconciling shortcuts in folder %s.", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2319267C0](v38, -1, -1);
    MEMORY[0x2319267C0](v37, -1, -1);
  }

  (*(v58 + 8))(v17, v59);
  v39 = sub_231158E28();
  v40 = [v55 lastRemoteShortcutOrderingForCollection_];

  if (v40)
  {
    v41 = sub_231158F48();
  }

  else
  {
    v41 = 0;
  }

  sub_2310777BC(v22, v41, v29);

  v42 = sub_231158F38();

  v43 = sub_231158E28();
  v60[0] = 0;
  v44 = [v57 setShortcutOrdering:v42 forCollectionIdentifier:v43 error:v60];

  if (v44)
  {
    result = v60[0];
  }

  else
  {
    v46 = v60[0];
    sub_231157938();

    result = swift_willThrow();
  }

LABEL_23:
  v53 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_231078690()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231158F38();

  v2 = [v0 initWithArray_];

  return v2;
}

id VCCKLibrarySyncCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VCCKLibrarySyncCoordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCCKLibrarySyncCoordinator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VCCKLibrarySyncCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VCCKLibrarySyncCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2310787D4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2310787F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2310795D0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_231078864(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_231078864(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2311597B8();
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
        v6 = sub_231158FC8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_231078A20(v7, v8, a1, v4);
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
    return sub_231078958(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231078958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_231159818();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_231078A20(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_231159818();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_231159818()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_231159818() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_2310CC2B0();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2310CC2B0();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_231079054((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_231078F28(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_231078F28(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2310791F8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_231079054((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_231079054(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_23104C774(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_231159818() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_23104C774(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_231159818() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_23107920C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C190, &unk_2311632B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_23107930C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2311579A8();

  return v4;
}

void (*sub_23107936C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_2310787C8(a3);
  sub_2310787D4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x231925080](a2, a3);
  }

  *a1 = v7;
  return sub_2310793F8;
}

unint64_t sub_231079400()
{
  result = qword_27DD3C178;
  if (!qword_27DD3C178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD3C170, &qword_2311667A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C178);
  }

  return result;
}

unint64_t sub_231079498()
{
  result = qword_27DD3C180;
  if (!qword_27DD3C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C180);
  }

  return result;
}

uint64_t sub_2310794EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC40, &qword_231162750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231079578()
{
  result = qword_27DD3C188;
  if (!qword_27DD3C188)
  {
    sub_231157A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCKLibrarySyncCoordinatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VCCKLibrarySyncCoordinatorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23107974C()
{
  result = qword_27DD3C1A0;
  if (!qword_27DD3C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C1A0);
  }

  return result;
}

char *OUTLINED_FUNCTION_3_6(uint64_t a1)
{

  return sub_23104CA0C(0, a1 & ~(a1 >> 63), 0);
}

void OUTLINED_FUNCTION_5_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_8_5()
{
  result = v0;
  v3 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return MEMORY[0x2821FBB70](8236, 0xE200000000000000, v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  v2 = *(v0 - 272);

  return sub_231158F48();
}

void OUTLINED_FUNCTION_17_5()
{
  v1 = *(v0 - 184);
  v2 = *(v0 - 256);
  v3 = *(v0 - 312);
}

void OUTLINED_FUNCTION_18_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_19_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_2310798FC()
{
  OUTLINED_FUNCTION_25_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31_1(v11, v20);
  v12 = sub_2311590C8();
  OUTLINED_FUNCTION_34_2(v12);
  if (v6 == 1)
  {
    sub_231060190(v1, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    OUTLINED_FUNCTION_11(v5);
    (*(v13 + 8))(v1, v5);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);
    OUTLINED_FUNCTION_26_1();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_231159048();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_231158E88();
  OUTLINED_FUNCTION_26_1();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_39_2(v16);
  v18 = swift_task_create();

  sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);

  return v18;
}

uint64_t sub_231079B6C()
{
  OUTLINED_FUNCTION_25_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31_1(v11, v20);
  v12 = sub_2311590C8();
  OUTLINED_FUNCTION_34_2(v12);
  if (v6 == 1)
  {
    sub_231060190(v1, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    OUTLINED_FUNCTION_11(v5);
    (*(v13 + 8))(v1, v5);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);
    OUTLINED_FUNCTION_26_1();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_231159048();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_231158E88();
  OUTLINED_FUNCTION_26_1();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_39_2(v16);
  v18 = swift_task_create();

  sub_231060190(v3, &qword_27DD3C1D0, &qword_231162D50);

  return v18;
}

uint64_t sub_231079DD4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_231079E30();
    v2 = *(v0 + 32);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_231079E30()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = sub_231158098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C290, &unk_231165E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231163390;
  v6 = type metadata accessor for TerminationEventSource();
  swift_allocObject();
  v7 = TerminationEventSource.init()();
  *(inited + 56) = v6;
  *(inited + 64) = sub_23107F0A8(qword_280CCBBD8, type metadata accessor for TerminationEventSource);
  *(inited + 32) = v7;
  *(inited + 96) = sub_2311580D8();
  *(inited + 104) = sub_23107F0A8(&unk_280CCB100, MEMORY[0x277D79D00]);
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  sub_2311580C8();
  *(inited + 136) = sub_231158138();
  *(inited + 144) = sub_23107F0A8(&qword_280CCB0C8, MEMORY[0x277D79D30]);
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  sub_231158128();
  *(inited + 176) = sub_231158188();
  *(inited + 184) = sub_23107F0A8(&unk_280CCB0B0, MEMORY[0x277D79D58]);
  __swift_allocate_boxed_opaque_existential_1((inited + 152));
  sub_231158178();
  *(inited + 216) = sub_231157E28();
  *(inited + 224) = sub_23107F0A8(qword_280CCB158, MEMORY[0x277D79B98]);
  __swift_allocate_boxed_opaque_existential_1((inited + 192));
  sub_231157E18();
  *(inited + 256) = sub_231157F78();
  *(inited + 264) = sub_23107F0A8(&qword_27DD3C2A0, MEMORY[0x277D79C98]);
  __swift_allocate_boxed_opaque_existential_1((inited + 232));
  sub_231157F68();
  sub_231158088();
  sub_2310CC430();
  v9 = v8;
  v14 = v0;
  v15 = sub_23107F0A8(&qword_280CCB138, MEMORY[0x277D79CD8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(v1 + 16))(boxed_opaque_existential_1, v4, v0);
  *(v9 + 16) = 7;
  sub_23104613C(&v13, v9 + 272);
  (*(v1 + 8))(v4, v0);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t DaemonTaskScheduler.__allocating_init()()
{
  v0 = swift_allocObject();
  DaemonTaskScheduler.init()();
  return v0;
}

void *DaemonTaskScheduler.init()()
{
  type metadata accessor for DaemonTaskExecutor();
  swift_allocObject();
  v0[2] = sub_23107DF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B0, &qword_2311633A0);
  v0[3] = sub_231158DB8();
  v0[4] = 0;
  return v0;
}

uint64_t sub_23107A2D8(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return OUTLINED_FUNCTION_4_6(sub_23107A2F4, 0);
}

uint64_t sub_23107A2F4()
{
  v74 = v1;
  v2 = v1[19];
  v3 = *(v2 + 16);
  v1[21] = v3;
  if (!v3)
  {
LABEL_6:
    v11 = v1[20];
    v12 = sub_231079DD4();
    v14 = *(v12 + 16);
    if (v14)
    {
      v67 = v12;
      v15 = v12 + 32;
      v16 = qword_280CCDF80;
      v17 = &unk_280CCB000;
      *&v13 = 136315394;
      v69 = v13;
      do
      {
        v18 = v1[20];
        sub_23107E8A4(v15, (v1 + 2));
        v19 = v1[6];
        __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
        v20 = OUTLINED_FUNCTION_13_7();
        v21(v20);
        if (v0)
        {
          if (v17[130] != -1)
          {
            OUTLINED_FUNCTION_1_8();
            swift_once();
          }

          v22 = sub_231158258();
          __swift_project_value_buffer(v22, v16);
          sub_23107E8A4((v1 + 2), (v1 + 9));
          v23 = v0;
          v24 = sub_231158238();
          v25 = sub_2311592D8();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v27 = OUTLINED_FUNCTION_62_1();
            OUTLINED_FUNCTION_27_3(v27, v28, v29, v30, v31, v32, v33, v34, v65, v67, v69);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C1C0, &qword_2311633B8);
            v70 = v24;
            v35 = v17;
            v36 = OUTLINED_FUNCTION_42_1();
            v37 = v16;
            v39 = v38;
            __swift_destroy_boxed_opaque_existential_0(v1 + 9);
            v17 = sub_2310488F8(v36, v39, &v73);
            v16 = v37;

            OUTLINED_FUNCTION_26_3();
            v40 = _swift_stdlib_bridgeErrorToNSError();
            OUTLINED_FUNCTION_36_2(v40, v41, v42, v43, v44, v45, v46, v47, v66, v68, v69, *(&v69 + 1), v70, v71);
            _os_log_impl(&dword_23103C000, v37, v48, "Failed to start listening to events for %s. Received error: %@.", v26, 0x16u);
            sub_231060190(v35, &unk_27DD3CC40, &qword_231162750);
            OUTLINED_FUNCTION_16();
            __swift_destroy_boxed_opaque_existential_0(v72);
            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_16();
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(v1 + 9);
          }
        }

        __swift_destroy_boxed_opaque_existential_0(v1 + 2);
        v15 += 40;
        --v14;
      }

      while (v14);
    }

    OUTLINED_FUNCTION_15_5();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_4();

    __asm { BRAA            X1, X16 }
  }

  v4 = 0;
  while (1)
  {
    v1[22] = v4;
    sub_23107E8A4(v2 + 40 * v4 + 32, (v1 + 9));
    v0 = v1[13];
    __swift_project_boxed_opaque_existential_0(v1 + 9, v1[12]);
    v5 = OUTLINED_FUNCTION_23_4();
    v7 = v6(v5);
    v1[23] = v7;
    v8 = v7[2];
    v1[24] = v8;
    if (v8)
    {
      break;
    }

    v9 = v1[21];
    v10 = v1[22];

    __swift_destroy_boxed_opaque_existential_0(v1 + 9);
    if (v10 + 1 == v9)
    {
      goto LABEL_6;
    }

    v4 = v1[22] + 1;
    v2 = v1[19];
  }

  v1[25] = *(v1[20] + 16);
  v1[26] = 0;
  v51 = v7[4];
  v52 = v7[5];
  v1[27] = v52;
  v53 = v7[6];
  v54 = v7[7];
  v1[28] = v54;
  v55 = v7[8];
  v56 = v7[9];
  v57 = v7[10];
  v1[29] = v57;
  v1[2] = v51;
  v1[3] = v52;
  v1[4] = v53;
  v1[5] = v54;
  v1[6] = v55;
  v1[7] = v56;
  v1[8] = v57;
  sub_23107E8A4((v1 + 9), (v1 + 14));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B8, &qword_2311633B0);
  v58 = OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_9_6(v58, v59);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x2822009F8](v60, v61, v62);
}

uint64_t sub_23107A684()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[25];
  sub_23107C248(v0 + 2, v0[30], v0[31], v0[20]);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23107A6FC()
{
  v79 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];

  if (v4 + 1 == v5)
  {
    v6 = v0[23];
    do
    {
      v7 = v0[21];
      v8 = v0[22];

      __swift_destroy_boxed_opaque_existential_0(v0 + 9);
      if (v8 + 1 == v7)
      {
        v29 = v0[20];
        v30 = sub_231079DD4();
        v32 = *(v30 + 16);
        if (v32)
        {
          v72 = v30;
          v33 = v30 + 32;
          v34 = qword_280CCDF80;
          v35 = &unk_280CCB000;
          *&v31 = 136315394;
          v74 = v31;
          do
          {
            v36 = v0[20];
            sub_23107E8A4(v33, (v0 + 2));
            v37 = v0[6];
            __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
            v38 = OUTLINED_FUNCTION_13_7();
            v39(v38);
            if (v4)
            {
              if (v35[130] != -1)
              {
                OUTLINED_FUNCTION_1_8();
                swift_once();
              }

              v40 = sub_231158258();
              __swift_project_value_buffer(v40, v34);
              sub_23107E8A4((v0 + 2), (v0 + 9));
              v41 = v4;
              v42 = sub_231158238();
              v43 = sub_2311592D8();

              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                v76 = swift_slowAlloc();
                v45 = OUTLINED_FUNCTION_62_1();
                OUTLINED_FUNCTION_27_3(v45, v46, v47, v48, v49, v50, v51, v52, v70, v72, v74);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C1C0, &qword_2311633B8);
                v75 = v42;
                v53 = v35;
                v54 = OUTLINED_FUNCTION_42_1();
                v55 = v34;
                v57 = v56;
                __swift_destroy_boxed_opaque_existential_0(v0 + 9);
                v35 = sub_2310488F8(v54, v57, &v78);
                v34 = v55;

                OUTLINED_FUNCTION_26_3();
                v58 = _swift_stdlib_bridgeErrorToNSError();
                OUTLINED_FUNCTION_36_2(v58, v59, v60, v61, v62, v63, v64, v65, v71, v73, v74, *(&v74 + 1), v75, v76);
                _os_log_impl(&dword_23103C000, v55, v66, "Failed to start listening to events for %s. Received error: %@.", v44, 0x16u);
                sub_231060190(v53, &unk_27DD3CC40, &qword_231162750);
                OUTLINED_FUNCTION_16();
                __swift_destroy_boxed_opaque_existential_0(v77);
                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_16();
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_0(v0 + 9);
              }
            }

            __swift_destroy_boxed_opaque_existential_0(v0 + 2);
            v33 += 40;
            --v32;
          }

          while (v32);
        }

        OUTLINED_FUNCTION_15_5();
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_21_4();

        __asm { BRAA            X1, X16 }
      }

      v9 = v0[22];
      v0[22] = v9 + 1;
      sub_23107E8A4(v0[19] + 40 * v9 + 72, (v0 + 9));
      v4 = v0[13];
      __swift_project_boxed_opaque_existential_0(v0 + 9, v0[12]);
      v10 = OUTLINED_FUNCTION_23_4();
      v12 = v11(v10);
      v0[23] = v12;
      v13 = *(v12 + 16);
      v0[24] = v13;
    }

    while (!v13);
    v14 = 0;
    v0[25] = *(v0[20] + 16);
  }

  else
  {
    v15 = v0[25];
    v14 = v0[26] + 1;
    v12 = v0[23];
  }

  v0[26] = v14;
  v16 = (v12 + 56 * v14);
  v17 = v16[4];
  v18 = v16[5];
  v0[27] = v18;
  v19 = v16[6];
  v20 = v16[7];
  v0[28] = v20;
  v21 = v16[8];
  v22 = v16[9];
  v23 = v16[10];
  v0[29] = v23;
  v0[2] = v17;
  v0[3] = v18;
  v0[4] = v19;
  v0[5] = v20;
  v0[6] = v21;
  v0[7] = v22;
  v0[8] = v23;
  sub_23107E8A4((v0 + 9), (v0 + 14));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B8, &qword_2311633B0);
  v24 = OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_9_6(v24);
  OUTLINED_FUNCTION_21_4();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_23107AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a5 + 8);
  v12 = sub_231158DE8();
  if (((*(a5 + 32))(a4, a5) & 1) == 0)
  {
    swift_beginAccess();
    if (sub_23104AE04(v12, *(v5 + 24)))
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_32_1();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  OUTLINED_FUNCTION_26_1();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23107EB5C;
  *(v14 + 24) = v13;
  swift_beginAccess();

  v15 = *(v5 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v5 + 24);
  v16 = v29;
  *(v6 + 24) = 0x8000000000000000;
  v17 = sub_231092CB0(v12);
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C258, &qword_231163650);
  v21 = v29;
  if (sub_231159698())
  {
    v22 = sub_231092CB0(v12);
    if ((v20 & 1) == (v23 & 1))
    {
      v19 = v22;
      goto LABEL_7;
    }

LABEL_12:
    result = sub_231159888();
    __break(1u);
    return result;
  }

LABEL_7:
  *(v6 + 24) = v29;
  if ((v20 & 1) == 0)
  {
    sub_231080234(&v29);
    sub_231086194(v19, v12, v29, v21);
  }

  v24 = v21[7] + 8 * v19;
  sub_231086018();
  v25 = *(*v24 + 16);
  sub_2310860EC(v25);
  v26 = *v24;
  *(v26 + 16) = v25 + 1;
  v27 = v26 + 16 * v25;
  *(v27 + 32) = sub_23107EB68;
  *(v27 + 40) = v14;
  swift_endAccess();
}

uint64_t sub_23107AD00(uint64_t a1, void (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_231159448();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17[-v9 - 8];
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v17[-v13 - 8];
  sub_23107E8A4(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    a2(v14);
    return (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, AssociatedTypeWitness);
    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t sub_23107AF20(uint64_t a1)
{
  v2 = v1;
  sub_231159918();
  sub_231158EA8();
  v4 = sub_231159948();
  OUTLINED_FUNCTION_29_3();
  result = sub_23104AE04(v4, *(v2 + 24));
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    if (v7)
    {
      v8 = sub_2311580B8();
      v9 = sub_23107F0A8(&qword_280CCB120, MEMORY[0x277D79CE0]);
      v10 = (v6 + 40);
      do
      {
        v12 = *(v10 - 1);
        v11 = *v10;
        v14[3] = v8;
        v14[4] = v9;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
        (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);

        v12(v14);

        __swift_destroy_boxed_opaque_existential_0(v14);
        v10 += 2;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_23107B080()
{
  v1 = v0;
  sub_231159918();
  sub_231158EA8();
  v2 = sub_231159948();
  OUTLINED_FUNCTION_29_3();
  result = sub_23104AE04(v2, *(v1 + 24));
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = sub_2310642E0();
      v7 = (v4 + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10[3] = &type metadata for TerminationEventSource.Event;
        v10[4] = v6;

        v9(v10);

        __swift_destroy_boxed_opaque_existential_0(v10);
        v7 += 2;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_23107B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = v6;
  sub_231159918();
  sub_231158EA8();
  v12 = sub_231159948();
  OUTLINED_FUNCTION_29_3();
  result = sub_23104AE04(v12, *(v10 + 24));
  if (result)
  {
    v14 = result;
    v15 = *(result + 16);
    if (v15)
    {
      v16 = a4(0);
      v17 = sub_23107F0A8(a5, a6);
      v18 = (v14 + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v22[3] = v16;
        v22[4] = v17;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
        (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, a1, v16);

        v20(v22);

        __swift_destroy_boxed_opaque_existential_0(v22);
        v18 += 2;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_23107B420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_231159918();
  sub_231158EA8();
  v6 = sub_231159948();
  swift_beginAccess();
  result = sub_23104AE04(v6, *(v3 + 24));
  if (result)
  {
    v8 = result;
    v9 = *(result + 16);
    if (v9)
    {
      v10 = sub_23106462C();
      v11 = (v8 + 40);
      do
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        v14[3] = &type metadata for DaemonStartupEvent;
        v14[4] = v10;
        v14[0] = a1;
        v14[1] = a2;

        v13(v14);

        __swift_destroy_boxed_opaque_existential_0(v14);
        v11 += 2;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_23107B530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *(a5 + 8);
  v10 = sub_231158DE8();
  swift_beginAccess();
  result = sub_23104AE04(v10, *(v6 + 24));
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v15 = (v12 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        v19[3] = a3;
        v19[4] = AssociatedConformanceWitness;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
        (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);

        v17(v19);

        __swift_destroy_boxed_opaque_existential_0(v19);
        v15 += 2;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_23107B670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return OUTLINED_FUNCTION_4_6(sub_23107B690, 0);
}

uint64_t sub_23107B690()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 40) = v1;
  return OUTLINED_FUNCTION_4_6(sub_23107B6B0, v1);
}

uint64_t sub_23107B6B0()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 40);
  sub_23107C4E4(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_1();

  return v2();
}

void *DaemonTaskScheduler.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t DaemonTaskScheduler.__deallocating_deinit()
{
  DaemonTaskScheduler.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t DaemonTaskScheduler.executeAsyncTask(withIdentifier:priority:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v18 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v6;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;

  sub_2310798FC();
}

uint64_t sub_23107B88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v10;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  return MEMORY[0x2822009F8](sub_23107B8BC, 0, 0);
}

uint64_t sub_23107B8BC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = *(v0[9] + 16);
  v0[15] = v6;
  OUTLINED_FUNCTION_32_1();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v1;
  v7[4] = v5;
  v7[5] = v3;
  OUTLINED_FUNCTION_26_1();
  v8 = swift_allocObject();
  *(v8 + 16) = 0x7974706D45;
  *(v8 + 24) = 0xE500000000000000;
  OUTLINED_FUNCTION_26_1();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_23107EF78;
  *(v9 + 24) = v8;
  OUTLINED_FUNCTION_26_1();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_231163670;
  *(v10 + 24) = v7;
  v0[2] = v5;
  v0[3] = v3;
  v0[4] = sub_23107EF80;
  v0[5] = v9;
  v0[6] = v4;
  v0[7] = &unk_231163678;
  v0[8] = v10;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2822009F8](sub_23107BA20, v6, 0);
}

uint64_t sub_23107BA20()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[15];
  sub_23107C370(v0 + 2);
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[8];

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_23107BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_23107BAC0, 0, 0);
}

uint64_t sub_23107BAC0()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_23107BBB4;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23107BBB4()
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

uint64_t sub_23107BCE0()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_1();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_23107BD3C(uint64_t a1, void (*a2)(uint64_t (*)(void *a1), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);

  a2(sub_23107F02C, v15);
}

uint64_t sub_23107BEA8(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_280CCB410 != -1)
    {
      swift_once();
    }

    v7 = sub_231158258();
    __swift_project_value_buffer(v7, qword_280CCDF80);
    v8 = a1;

    v9 = sub_231158238();
    v10 = sub_2311592D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_2310488F8(a2, a3, &v17);
      *(v11 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      *v12 = v15;
      _os_log_impl(&dword_23103C000, v9, v10, "Task %s completed with error: %@", v11, 0x16u);
      sub_231060190(v12, &unk_27DD3CC40, &qword_231162750);
      MEMORY[0x2319267C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2319267C0](v13, -1, -1);
      MEMORY[0x2319267C0](v11, -1, -1);
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    return sub_231159058();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    return sub_231159068();
  }
}

uint64_t sub_23107C18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2310903D8;
  v7[3] = &block_descriptor_7;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_23107C248(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v20 = a1[4];
  v19 = a1[5];
  v12 = a1[6];
  swift_beginAccess();
  v13 = *(*(v5 + 136) + 16);

  v14 = v10(a4, v13);
  swift_beginAccess();
  sub_231086048();
  v15 = *(*(v5 + 136) + 16);
  sub_23108611C(v15);
  v16 = *(v5 + 136);
  *(v16 + 16) = v15 + 1;
  v17 = (v16 + 80 * v15);
  v17[4] = v9;
  v17[5] = v8;
  v17[6] = v10;
  v17[7] = v11;
  v17[8] = v20;
  v17[9] = v19;
  v17[10] = v12;
  v17[11] = a2;
  v17[12] = a3;
  v17[13] = v14;
  *(v5 + 136) = v16;
  return swift_endAccess();
}

uint64_t sub_23107C370(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  __dst[128] = 1;
  v13[3] = &type metadata for EmptyEvent;
  v13[4] = sub_2310643C8();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  __src[0] = v4;
  *&__src[1] = *(a1 + 1);
  __src[3] = v5;
  __src[4] = v6;
  __src[5] = v8;
  __src[6] = v7;
  LOBYTE(__src[7]) = 1;
  sub_23107E8A4(v13, &__src[8]);
  __src[13] = v4;
  __src[14] = __src[1];
  sub_231158E88();
  swift_bridgeObjectRetain_n();

  v9 = os_transaction_create();

  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
    __src[15] = v9;
    memcpy(__dst, __src, 0x80uLL);
    if (v6 < 3)
    {
      v10 = *(v2 - 8 * v6 + 128);

      sub_23107DB54(__dst);

      sub_23107C884();
      return sub_23107E64C(__dst);
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for VCDaemonTaskPriority(0);
  __src[0] = v6;
  result = sub_231159868();
  __break(1u);
  return result;
}

uint64_t sub_23107C4E4(unint64_t a1, void *a2)
{
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(v2 + 136);
  if (*(v6 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  memcpy(__dst, (v6 + 80 * a1 + 32), 0x50uLL);
  v3 = __dst[4];
  if (__dst[4] >= 3uLL)
  {
LABEL_14:
    type metadata accessor for VCDaemonTaskPriority(0);
    v24[0] = v3;
    sub_23107EAE4(__dst, v26);
    result = sub_231159868();
    __break(1u);
    return result;
  }

  v3 = *(v2 - 8 * __dst[4] + 128);
  sub_23107EAE4(__dst, v26);

  if (sub_23107D81C(a1, a2))
  {

    return sub_23107EB1C(__dst);
  }

  v8 = *(v2 + 136);
  if (*(v8 + 16) <= a1)
  {
    goto LABEL_12;
  }

  memcpy(v27, (v8 + 80 * a1 + 32), sizeof(v27));
  v9 = v27[7];
  v10 = v27[8];
  v12 = v27[0];
  v11 = v27[1];
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_23107EAE4(v27, v26);
  sub_231159588();

  v26[0] = 0x203A656C75646F6DLL;
  v26[1] = 0xE800000000000000;

  MEMORY[0x231924980](v9, v10);

  MEMORY[0x231924980](0x3A6B736174207C20, 0xE900000000000020);

  MEMORY[0x231924980](v12, v11);

  MEMORY[0x231924980](0x746E657665207C20, 0xEA0000000000203ALL);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_project_boxed_opaque_existential_0(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v14 + 8);
  v20 = sub_231158E78();
  MEMORY[0x231924980](v20);

  v21 = v26[0];
  v22 = v26[1];
  v28 = 0;
  sub_23107E8A4(a2, v25);
  v24[0] = a1;
  *&v24[1] = v29;
  *&v24[3] = v30;
  *&v24[5] = v31;
  LOBYTE(v24[7]) = v28;
  sub_23107E8A4(v25, &v24[8]);
  v24[13] = v21;
  v24[14] = v22;
  sub_231158E88();
  v23 = os_transaction_create();

  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  v24[15] = v23;
  memcpy(v26, v24, sizeof(v26));
  sub_23107DB54(v26);
  sub_23107C884();

  sub_23107EB1C(v27);
  sub_23107EB1C(__dst);
  return sub_23107E64C(v26);
}

uint64_t sub_23107C884()
{
  v1 = v0;
  while (1)
  {
    v2 = v1[14];

    sub_23107DC50(v8);

    if (!*(&v8[5] + 1))
    {
      break;
    }

    memcpy(__dst, v8, sizeof(__dst));
    v3 = v1[14];

    sub_23107CA24(__dst, v3);

    sub_23107E64C(__dst);
  }

  result = sub_231060190(v8, &qword_27DD3C248, &qword_231163648);
  if (*(v1[14] + 16) <= 0)
  {
    v5 = v1[15];

    sub_23107DC50(v8);

    if (*(&v8[5] + 1))
    {
      memcpy(__dst, v8, sizeof(__dst));
      v6 = v1[15];
LABEL_7:

      sub_23107CA24(__dst, v6);

      return sub_23107E64C(__dst);
    }

    result = sub_231060190(v8, &qword_27DD3C248, &qword_231163648);
    if (*(v1[15] + 16) <= 0)
    {
      v7 = v1[16];

      sub_23107DC50(v8);

      if (*(&v8[5] + 1))
      {
        memcpy(__dst, v8, sizeof(__dst));
        v6 = v1[16];
        goto LABEL_7;
      }

      return sub_231060190(v8, &qword_27DD3C248, &qword_231163648);
    }
  }

  return result;
}

uint64_t sub_23107CA24(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &__src[-v7];
  v9 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_23107E67C(a1, __src);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  memcpy(v10 + 4, __src, 0x80uLL);
  v10[20] = v2;
  v10[21] = a2;

  sub_23107D518(0, 0, v8, &unk_231163628, v10);

  return sub_231060190(v8, &qword_27DD3C1D0, &qword_231162D50);
}

uint64_t sub_23107CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[54] = a5;
  v6[55] = a6;
  v6[53] = a4;
  return MEMORY[0x2822009F8](sub_23107CB80, 0, 0);
}

uint64_t sub_23107CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v13 = v12[53];
  v14 = *v13;
  v12[56] = *v13;
  if (*(v13 + 56) == 1)
  {
    v16 = *(v13 + 40);
    v15 = *(v13 + 48);
    v17 = *(v13 + 24);
    v18 = *(v13 + 8);
    sub_23107EA94(v14, v18, *(v13 + 16), v17, *(v13 + 32), v16, v15, 1);
    v12[59] = v18;
    v12[60] = v17;
    v12[58] = v15;
    v19 = qword_280CCB410;

    if (v19 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v20 = v12[53];
    v21 = sub_231158258();
    v22 = __swift_project_value_buffer(v21, qword_280CCDF80);
    OUTLINED_FUNCTION_41_2(v22);
    v23 = sub_231158238();
    v24 = sub_2311592F8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      a10 = OUTLINED_FUNCTION_62_1();
      *v25 = 136315138;
      v26 = v12[15];
      v27 = v12[16];

      v28 = sub_23107E64C((v12 + 2));
      v29 = OUTLINED_FUNCTION_30_1(v28);

      *(v25 + 4) = v29;
      OUTLINED_FUNCTION_40_1(&dword_23103C000, v30, v31, "<Task executing: %s>");
      __swift_destroy_boxed_opaque_existential_0(a10);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }

    else
    {

      sub_23107E64C((v12 + 2));
    }

    OUTLINED_FUNCTION_6_7();
    v49 = v37;
    v38 = *(v16 + 4);
    v39 = swift_task_alloc();
    v12[62] = v39;
    *v39 = v12;
    OUTLINED_FUNCTION_7_7(v39);
    OUTLINED_FUNCTION_3_0();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, v49, a10, a11, a12);
  }

  else
  {
    v32 = v12[54];
    OUTLINED_FUNCTION_3_0();

    return MEMORY[0x2822009F8](v33, v34, v35);
  }
}

uint64_t sub_23107CD9C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 432);
  swift_beginAccess();
  *(v0 + 456) = *(v1 + 136);

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23107CE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v14 = v13[56];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = v13[57];
    if (v14 < *(v15 + 16))
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_6_2();
      v17 = (v15 + 80 * v16);
      v18 = v17[5];
      v19 = v17[7];
      v12 = v17[9];
      v20 = v17[10];
      v21 = v17[12];
      v22 = v17[13];

      swift_retain_n();

      v13[59] = v18;
      v13[60] = v19;
      v13[58] = v20;
      if (qword_280CCB410 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  OUTLINED_FUNCTION_1_8();
  swift_once();
LABEL_4:
  v23 = v13[53];
  v24 = sub_231158258();
  v25 = __swift_project_value_buffer(v24, qword_280CCDF80);
  OUTLINED_FUNCTION_41_2(v25);
  v26 = sub_231158238();
  v27 = sub_2311592F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    a10 = OUTLINED_FUNCTION_62_1();
    *v28 = 136315138;
    v29 = v13[15];
    v30 = v13[16];

    v31 = sub_23107E64C((v13 + 2));
    v32 = OUTLINED_FUNCTION_30_1(v31);

    *(v28 + 4) = v32;
    OUTLINED_FUNCTION_40_1(&dword_23103C000, v33, v34, "<Task executing: %s>");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {

    sub_23107E64C((v13 + 2));
  }

  OUTLINED_FUNCTION_6_7();
  v47 = v35;
  v36 = *(v12 + 4);
  v37 = swift_task_alloc();
  v13[62] = v37;
  *v37 = v13;
  OUTLINED_FUNCTION_7_7(v37);
  OUTLINED_FUNCTION_3_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, a10, a11, a12);
}

uint64_t sub_23107D034()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = *(v2 + 496);
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23107D134()
{
  v17 = v0;
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[53];

  sub_23107E67C(v3, (v0 + 34));
  v4 = sub_231158238();
  v5 = sub_2311592F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_62_1();
    v16 = v7;
    *v6 = 136315138;
    v8 = v0[47];
    v9 = v0[48];

    sub_23107E64C((v0 + 34));
    v10 = sub_2310488F8(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23103C000, v4, v5, "<Task completed: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {

    v11 = sub_23107E64C((v0 + 34));
  }

  v14 = v0[55];
  if (__OFSUB__(*(v14 + 16), 1))
  {
    __break(1u);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_8_6(v14);
  }

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23107D294()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 432);
  sub_23107C884();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23107D2F4()
{
  OUTLINED_FUNCTION_4_1();
  v1 = v0[59];
  v2 = v0[60];
  v3 = v0[58];

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_23107D360()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v1 = v0[63];
  v2 = v0[61];
  v3 = v0[58];
  v4 = v0[53];

  sub_23107E67C(v4, (v0 + 18));
  v5 = v1;
  v6 = sub_231158238();
  v7 = sub_2311592F8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[63];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_62_1();
    *v10 = 136315394;
    v12 = v0[31];
    v13 = v0[32];

    v14 = sub_23107E64C((v0 + 18));
    v15 = OUTLINED_FUNCTION_30_1(v14);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_23103C000, v6, v7, "<Task failed: %s, reason: %@", v10, 0x16u);
    sub_231060190(v11, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16();
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  else
  {

    v18 = sub_23107E64C((v0 + 18));
  }

  v21 = v0[55];
  if (__OFSUB__(*(v21 + 16), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_6(v21);
    OUTLINED_FUNCTION_3_0();
  }

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_23107D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_23106FC70(a3, v26 - v11);
  v13 = sub_2311590C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v12, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_231159048();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_231158E88() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23107D7AC(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  type metadata accessor for DaemonTaskExecutor.TaskQueue.QueuedTask();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = sub_231158DB8();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return v2;
}

uint64_t sub_23107D81C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_231092CB0(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_beginAccess();
  sub_23107E8A4(v8 + 80, v13);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_0(v13, v14);

  sub_23107D92C(a2, v9, v10, v12);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v8 + 80));
  sub_23104613C(v12, v8 + 80);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v13);
  return 1;
}

uint64_t sub_23107D92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_231159448();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21[-v12 - 8];
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_23107E8A4(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v14 + 32))(v17, v13, a2);
    v18 = *(a3 + 16);
    a4[3] = a2;
    a4[4] = a3;
    __swift_allocate_boxed_opaque_existential_1(a4);
    v18(v17, a2, a3);
    return (*(v14 + 8))(v17, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v9 + 8))(v13, v8);
    return sub_23107E8A4(a1, a4);
  }
}

uint64_t sub_23107DB54(uint64_t a1)
{
  v2 = v1;
  sub_23107E67C(a1, __src);
  type metadata accessor for DaemonTaskExecutor.TaskQueue.QueuedTask();
  v4 = swift_allocObject();
  *(v4 + 144) = 0;
  memcpy((v4 + 16), __src, 0x80uLL);
  if ((*(a1 + 56) & 1) == 0)
  {
    v5 = *a1;
    swift_beginAccess();

    v6 = v2[7];
    swift_isUniquelyReferenced_nonNull_native();
    v12 = v2[7];
    sub_23107E780(v4, v5);
    v2[7] = v12;
    swift_endAccess();
  }

  v7 = v2[6];
  if (v7)
  {
    v8 = *(v7 + 144);
    *(v7 + 144) = v4;
  }

  else
  {
    v9 = v2[5];
    v2[5] = v4;
  }

  v10 = v2[6];
  v2[6] = v4;
}

uint64_t sub_23107DC50@<X0>(_OWORD *a1@<X8>)
{
  if (((*(v1 + 32) & 1) != 0 || *(v1 + 16) != *(v1 + 24)) && (v3 = *(v1 + 40)) != 0)
  {
    v4 = *(v3 + 144);
    *(v1 + 40) = v4;
    if (!v4)
    {
      v5 = *(v1 + 48);
      *(v1 + 48) = 0;
    }

    v7 = *(v1 + 16);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 16) = v9;
      swift_beginAccess();
      if (*(v3 + 72) == 1)
      {
      }

      else
      {
        v10 = *(v3 + 16);
        swift_beginAccess();

        sub_23107E6B4(v10);
        swift_endAccess();
      }

      sub_23107E67C(v3 + 16, a1);
    }
  }

  else
  {
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_23107DD68()
{
  v1 = *(v0 + 16);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

uint64_t sub_23107DDA0()
{
  sub_23107E64C(v0 + 16);
  v1 = *(v0 + 144);
  *(v0 + 144) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 144);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_23107DE20()
{
  v0 = sub_23107DDA0();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

void *sub_23107DE50()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t sub_23107DE80()
{
  v0 = sub_23107DE50();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *sub_23107DEB0()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23107DEF0()
{
  v0 = sub_23107DEB0();

  return MEMORY[0x282200960](v0);
}

void *sub_23107DF18()
{
  swift_defaultActor_initialize();
  type metadata accessor for DaemonTaskExecutor.TaskQueue();
  swift_allocObject();
  v0[14] = sub_23107D7AC(0, 1);
  swift_allocObject();
  v0[15] = sub_23107D7AC(1, 0);
  swift_allocObject();
  v1 = sub_23107D7AC(1, 0);
  v2 = MEMORY[0x277D84F90];
  v0[16] = v1;
  v0[17] = v2;
  return v0;
}

unint64_t sub_23107DFD8()
{
  sub_231159588();

  MEMORY[0x231924980](*(v0 + 104), *(v0 + 112));
  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t sub_23107E05C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23107E154;

  return v7(a1);
}

uint64_t sub_23107E154()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v4 = v3;

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_23107E238()
{
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_37_1();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_2(v8);
  *v9 = v10;
  v9[1] = sub_23106044C;
  v11 = OUTLINED_FUNCTION_3_7();

  return sub_23107B88C(v11, v12, v1, v2, v3, v4, v5, v7);
}

uint64_t dispatch thunk of DaemonTaskScheduler.start(with:)()
{
  OUTLINED_FUNCTION_21();
  v2 = *(*v0 + 160);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_19_3(v4);

  return v7(v5);
}

uint64_t sub_23107E4F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23107E530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23107E5A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23107E5E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23107E6B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_231092CB0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C238, &unk_231163610);
  sub_231159698();
  v9 = *(*(v11 + 56) + 8 * v6);
  type metadata accessor for DaemonTaskExecutor.TaskQueue.QueuedTask();
  sub_2311596B8();
  *v2 = v11;
  return v9;
}

unint64_t sub_23107E780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_231092CB0(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C238, &unk_231163610);
  if ((sub_231159698() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_231092CB0(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_231159888();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {

    return sub_231086194(v9, a2, a1, v14);
  }
}

uint64_t sub_23107E8A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_11(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_23107E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  return result;
}

uint64_t sub_23107E954()
{
  OUTLINED_FUNCTION_37_1();
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23105FDEC;
  v7 = OUTLINED_FUNCTION_3_7();

  return sub_23107CB5C(v7, v8, v1, v9, v2, v3);
}

uint64_t sub_23107EA04()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_23107EA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  return result;
}

uint64_t sub_23107EB5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_23107AD00(a1, *(v1 + 32));
}

uint64_t sub_23107EB70()
{
  OUTLINED_FUNCTION_37_1();
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v7 = OUTLINED_FUNCTION_19_3(v6);

  return sub_23107BA9C(v7, v1, v3, v5, v4);
}

uint64_t sub_23107EC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  v20[3] = a4;
  v20[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_11(a4);
  (*(v15 + 16))();
  v16 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  sub_23107E8A4(v20, v19);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a3;
  v17[5] = a1;
  sub_23104613C(v19, (v17 + 6));

  sub_2310798FC();

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_23107ED74(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23107EE68;

  return v6(v2 + 32);
}

uint64_t sub_23107EE68()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;

  *v4 = *(v2 + 32);
  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_23107EF88()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = OUTLINED_FUNCTION_19_3(v3);

  return sub_231061F1C(v4, v1, v0);
}

uint64_t sub_23107F02C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_23107BEA8(a1, v6, v7);
}

uint64_t sub_23107F0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23107F0F0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23107F19C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_23107F1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t (*OUTLINED_FUNCTION_8_6@<X0>(uint64_t a1@<X8>))()
{
  v3 = *(v2 + 432);
  *(a1 + 16) = v1;
  return sub_23107D294;
}

uint64_t (*OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2))()
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return sub_23107A684;
}

uint64_t OUTLINED_FUNCTION_15_5()
{
  v2 = *(v0 + 160);

  return sub_23107B420(0x70757472617453, 0xE700000000000000);
}

id OUTLINED_FUNCTION_26_3()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *v12 = a11;

  return sub_23107E8A4(v11 + 72, v11 + 112);
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_2310488F8(v1, v2, va);
}

uint64_t OUTLINED_FUNCTION_31_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_23106FC70(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  *(v14 + 14) = result;
  *a14 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void OUTLINED_FUNCTION_40_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1)
{
  *(v2 + 488) = a1;

  return sub_23107E67C(v1, v2 + 16);
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return sub_231158E68();
}

uint64_t sub_23107F530()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_19_4(v1, v2, sub_231086340, v3, &unk_2845DA1A8, &unk_2845DA1D0, sub_231086348, sub_231086930);

  return v0;
}

uint64_t sub_23107F5EC()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_19_4(v1, v2, sub_231086388, v3, &unk_2845DA220, &unk_2845DA248, sub_2310863CC, sub_231086930);

  return v0;
}

uint64_t sub_23107F6A8()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_21_5();

  OUTLINED_FUNCTION_19_4(v1, v2, sub_23108640C, v3, &unk_2845DA298, &unk_2845DA2C0, sub_231086414, sub_231086930);

  return v0;
}

uint64_t sub_23107F764(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v5 = swift_allocObject();
  swift_weakInit();

  sub_23107FCB4(a1, a2, sub_231086330, v5, &unk_2845DA130, &unk_2845DA158, sub_231086338, sub_231066790);

  return v2;
}

uint64_t sub_23107F84C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v5 = swift_allocObject();
  swift_weakInit();

  sub_23107FCB4(a1, a2, sub_231086388, v5, &unk_2845DA338, &unk_2845DA360, sub_23108676C, sub_231086930);

  return v2;
}

uint64_t sub_23107F934(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v5 = swift_allocObject();
  swift_weakInit();

  sub_23107FCB4(a1, a2, sub_23108640C, v5, &unk_2845DA3B0, &unk_2845DA3D8, sub_2310867F4, sub_231086930);

  return v2;
}

uint64_t sub_23107FA1C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 16);
    sub_231042684(v4);

    if (v4)
    {
      v4(a1);
      return sub_231046164(v4);
    }
  }

  return result;
}

uint64_t sub_23107FAC0(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 16);
    sub_231042684(v4);

    if (v4)
    {
      v4(v5);
      return sub_231046164(v4);
    }
  }

  return result;
}

uint64_t sub_23107FB60()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 16);
    sub_231042684(v2);

    if (v2)
    {
      v2(result);
      return sub_231046164(v2);
    }
  }

  return result;
}

uint64_t sub_23107FBF8(uint64_t a1, uint64_t a2, void (*a3)(void (*)(uint64_t), uint64_t), uint64_t (*a4)(void (*)(uint64_t), uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    a3(v9, v10);

    if (v9)
    {
      v9(a1);
      return a4(v9, v10);
    }
  }

  return result;
}

uint64_t sub_23107FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_231159918();
  sub_231158EA8();
  v13 = sub_231159948();
  OUTLINED_FUNCTION_26_1();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  OUTLINED_FUNCTION_26_1();
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  *(v15 + 24) = v14;
  swift_beginAccess();

  v16 = *(v8 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v8 + 24);
  *(v8 + 24) = 0x8000000000000000;
  v17 = sub_231092CB0(v13);
  if (__OFADD__(v28[2], (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C258, &qword_231163650);
  if (sub_231159698())
  {
    v21 = sub_231092CB0(v13);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_231159888();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v8 + 24) = v28;
  if ((v20 & 1) == 0)
  {
    sub_231086194(v19, v13, MEMORY[0x277D84F90], v28);
  }

  v23 = v28[7] + 8 * v19;
  sub_231086078(sub_2310CBFB8);
  v24 = *(*v23 + 16);
  sub_23108614C(v24, sub_2310CBFB8);
  v25 = *v23;
  *(v25 + 16) = v24 + 1;
  v26 = v25 + 16 * v24;
  *(v26 + 32) = a8;
  *(v26 + 40) = v15;
  swift_endAccess();
}

uint64_t sub_23107FEAC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25[-v13 - 8];
  v15 = a6(0);
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v25[-v21 - 8];
  sub_2310548A0(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    (*(v18 + 32))(v22, v14, v15);
    a2(v22);
    return (*(v18 + 8))(v22, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    return sub_231051B38(v14, a4, a5);
  }
}

uint64_t sub_231080074(uint64_t a1, void (*a2)(void *))
{
  sub_2310548A0(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast() && v5)
  {
    v7[0] = v4;
    v7[1] = v5;
    a2(v7);
  }
}

uint64_t sub_23108010C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_2310548A0(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  result = swift_dynamicCast();
  if (result)
  {
    return a2();
  }

  return result;
}

uint64_t sub_23108017C(uint64_t a1, void (*a2)(void *))
{
  sub_2310548A0(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  if (swift_dynamicCast())
  {
    v7[0] = v4;
    v7[1] = v5;
    a2(v7);
  }
}

uint64_t sub_231080244(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2A8, &unk_2311637F8);
  OUTLINED_FUNCTION_9_0();
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 0;
  *(v2 + 16) = v5;
  v6 = OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason;
  v7 = sub_231157F28();
  OUTLINED_FUNCTION_13_0(v7);
  (*(v8 + 32))(v2 + v6, a1);
  sub_231086424(a2, v2 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_continuation);
  return v2;
}

uint64_t sub_2310802EC()
{
  sub_231080378();
  v1 = *(v0 + 16);

  sub_231051B38(v0 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_continuation, &unk_27DD3CE00, &qword_2311637F0);
  v2 = OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_reason;
  v3 = sub_231157F28();
  OUTLINED_FUNCTION_13_0(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_231080378()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 20));
  sub_231086494((v1 + 16));
  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_2310803E4()
{
  sub_2310802EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23108043C(_BYTE *a1, void *a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v18 - v11;
  if ((*a1 & 1) == 0)
  {
    if (a3 == -1)
    {
      sub_2310864B8();
      v13 = swift_allocError();
      v14 = 1;
      *v15 = 1;
    }

    else
    {
      v13 = a2;
      v14 = a3;
    }

    *a1 = 1;
    sub_23108650C(a4 + OBJC_IVAR____TtCC14VoiceShortcuts24ToolKitIndexingScheduler15DebouncedReason_continuation, v12);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v16);
    sub_23108657C(a2, a3);
    if (EnumTagSinglePayload == 1)
    {
      sub_2310865A0(v13, v14 & 1);
      return sub_231051B38(v12, &unk_27DD3CE00, &qword_2311637F0);
    }

    else
    {
      sub_2310CF3B4(v13, v14 & 1);
      sub_2310865A0(v13, v14 & 1);
      return (*(*(v16 - 8) + 8))(v12, v16);
    }
  }

  return result;
}

uint64_t sub_2310805EC(void *a1)
{
  v2 = v1;
  v24 = sub_231159328();
  v4 = OUTLINED_FUNCTION_4(v24);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  v12 = sub_231159318();
  v13 = OUTLINED_FUNCTION_13_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v16 = sub_231158D48();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC30, &unk_231163850);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v1 + 40) = v18;
  *(v1 + 16) = a1;
  sub_231054A0C(0, &qword_280CCAF08, 0x277D85C78);
  v19 = a1;
  sub_231158D18();
  *&v25[0] = MEMORY[0x277D84F90];
  sub_2310867AC(&unk_280CCAF10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  (*(v6 + 104))(v11, *MEMORY[0x277D85260], v24);
  v20 = sub_231159358();
  *(v2 + 24) = v20;
  memset(v25, 0, sizeof(v25));
  objc_allocWithZone(MEMORY[0x277D79F00]);
  v21 = v20;
  v22 = sub_231085E8C(v20, v25, 1, 3.0, 10.0);
  *(v2 + 32) = v22;
  [v22 addTarget:v2 action:sel_reindexWithDebouncer_error_];

  return v2;
}