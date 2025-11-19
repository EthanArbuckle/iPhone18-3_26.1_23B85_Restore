uint64_t sub_232266DB0()
{
  OUTLINED_FUNCTION_87_0();
  v1 = v0[8];
  v2 = *(v1 + 112);
  if (!v2)
  {
    v3 = sub_232267664();
    v4 = *(v1 + 112);
    *(v1 + 112) = v3;

    v2 = *(v1 + 112);
    if (!v2)
    {
      if (qword_2814C7F00 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v81 = v0[17];
      v82 = v0[15];
      __swift_project_value_buffer(v0[14], qword_2814C8D98);
      v83 = OUTLINED_FUNCTION_23_0();
      v84(v83);
      v85 = sub_232401108();
      v86 = sub_232401348();
      v87 = OUTLINED_FUNCTION_59_0(v86);
      v88 = v0[17];
      v89 = v0[14];
      v90 = v0[15];
      if (v87)
      {
        *OUTLINED_FUNCTION_57_0() = 0;
        OUTLINED_FUNCTION_58_0(&dword_23224A000, v91, v92, "PPTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_52_0();
      }

      v93 = *(v90 + 8);
      v94 = OUTLINED_FUNCTION_47();
      v95(v94);
LABEL_28:
      OUTLINED_FUNCTION_25_0();

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_70_0();

      __asm { BRAA            X1, X16 }
    }

    v1 = v0[8];
  }

  v0[22] = v2;
  v5 = OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress;
  if (*(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) == 1)
  {
    v6 = qword_2814C7F00;

    if (v6 != -1)
    {
      v7 = OUTLINED_FUNCTION_0_4();
    }

    v8 = v0[21];
    v9 = v0[14];
    v10 = v0[15];
    v11 = OUTLINED_FUNCTION_16_0(v7, qword_2814C8D98);
    v12(v11);
    v13 = sub_232401108();
    v14 = sub_232401338();
    v15 = OUTLINED_FUNCTION_59_0(v14);
    v16 = v0[21];
    v17 = v0[14];
    v18 = v0[15];
    if (v15)
    {
      *OUTLINED_FUNCTION_57_0() = 0;
      OUTLINED_FUNCTION_96(&dword_23224A000, v19, v20, "PPTextUnderstandingObserver: delayedResultsNotificationInProgress = true");
      OUTLINED_FUNCTION_54();
    }

    v21 = *(v18 + 8);
    v22 = OUTLINED_FUNCTION_37_0();
    v23(v22);
    goto LABEL_28;
  }

  v25 = v0[12];
  v24 = v0[13];
  v26 = v0[10];
  v27 = v0[11];

  sub_232400C78();
  OUTLINED_FUNCTION_81_0();
  v28 = OUTLINED_FUNCTION_72_0();
  v29(v28);
  sub_232400C58();
  v31 = v30;
  v32 = *(v27 + 8);
  v33 = OUTLINED_FUNCTION_37_0();
  v32(v33);
  v34 = (v32)(v24, v26);
  if (v31 < 2.0)
  {
    if (qword_2814C7F00 != -1)
    {
      v34 = OUTLINED_FUNCTION_0_4();
    }

    v35 = v0[20];
    v36 = v0[14];
    v37 = v0[15];
    v38 = OUTLINED_FUNCTION_16_0(v34, qword_2814C8D98);
    v39(v38);
    v40 = sub_232401108();
    v41 = sub_232401338();
    if (OUTLINED_FUNCTION_53_0(v41))
    {
      v42 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v42);
      OUTLINED_FUNCTION_19_0();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_30();
    }

    v48 = v0[20];
    v49 = v0[14];
    v50 = v0[15];
    v51 = v0[8];
    v52 = v0[9];

    v53 = *(v50 + 8);
    v54 = OUTLINED_FUNCTION_37_0();
    v55(v54);
    *(v1 + v5) = 1;
    v56 = *(v51 + 120);
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    *(v57 + 24) = v52;

    sub_232400D18();

    goto LABEL_28;
  }

  if (qword_2814C7F00 != -1)
  {
    v34 = OUTLINED_FUNCTION_0_4();
  }

  v58 = v0[19];
  v59 = v0[14];
  v60 = v0[15];
  v61 = OUTLINED_FUNCTION_28_0(v34, qword_2814C8D98);
  v62 = OUTLINED_FUNCTION_55_0(v61);
  v63(v62);
  v64 = sub_232401108();
  v65 = sub_232401328();
  if (OUTLINED_FUNCTION_53_0(v65))
  {
    v66 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_64_0(v66);
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
    OUTLINED_FUNCTION_30();
  }

  v72 = v0[19];
  v73 = v0[14];
  v74 = v0[15];

  v0[27] = *(v74 + 8);
  v75 = OUTLINED_FUNCTION_37_0();
  v76(v75);
  v77 = swift_task_alloc();
  v0[28] = v77;
  *v77 = v0;
  v77[1] = sub_232267278;
  v78 = v0[8];
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_70_0();

  return sub_232267FA8();
}

uint64_t sub_232267278()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *(v2 + 224);
  *v4 = *v1;
  *(v3 + 232) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_2322674C4;
  }

  else
  {
    v7 = sub_23226739C;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_23226739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = OUTLINED_FUNCTION_76_0();
  v12(v11);
  v13 = sub_232401108();
  v14 = sub_232401328();
  if (OUTLINED_FUNCTION_59_0(v14))
  {
    v15 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v15);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v16, v17, "PPTextUnderstandingObserver: results handler finished");
    OUTLINED_FUNCTION_54();
  }

  v18 = v10[18];
  OUTLINED_FUNCTION_91();
  v19 = v10[14];
  v20 = v10[15];
  v21 = v10[13];
  OUTLINED_FUNCTION_46_0();
  v22();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v23 = OUTLINED_FUNCTION_22_0();
  v24(v23);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_2322674C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v13 = OUTLINED_FUNCTION_61_0();
  v14(v13);
  v15 = v10;
  v16 = sub_232401108();
  v17 = sub_232401348();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v11[29];
  if (v18)
  {
    OUTLINED_FUNCTION_97();
    v20 = OUTLINED_FUNCTION_74();
    *v12 = 138412290;
    v21 = v19;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v22;
    *v20 = v22;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    sub_232257C68(v20, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  OUTLINED_FUNCTION_91();
  v29 = v11[15];
  v28 = v11[16];
  v31 = v11[13];
  v30 = v11[14];
  OUTLINED_FUNCTION_46_0();
  v32();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v33 = OUTLINED_FUNCTION_22_0();
  v34(v33);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

void *sub_232267664()
{
  v1 = sub_232401128();
  v2 = OUTLINED_FUNCTION_40(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_67();
  v9 = v8 - v7;
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for TextUnderstandingImporter();
    swift_allocObject();
    return TextUnderstandingImporter.init(database:)(v11);
  }

  else
  {
    if (qword_2814C7F00 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v13 = __swift_project_value_buffer(v1, qword_2814C8D98);
    (*(v4 + 16))(v9, v13, v1);
    v14 = sub_232401108();
    v15 = sub_232401348();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v16);
      _os_log_impl(&dword_23224A000, v14, v15, "PPTextUnderstandingObserver: PPSQLDatabase failed to initialize.", v0, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v4 + 8))(v9, v1);
    return 0;
  }
}

uint64_t sub_232267804(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_232401128();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_2324014D8();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23226792C);
}

uint64_t sub_23226792C()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 72);
  sub_232401618();
  sub_232401578();
  v2 = OUTLINED_FUNCTION_50(&unk_232417AC8);
  *(v0 + 80) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_0(v2);

  return v4(v3);
}

uint64_t sub_2322679D4()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = *v1;
  OUTLINED_FUNCTION_19();
  *v10 = v9;
  *(v11 + 88) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_47();
  v14(v13);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_232267B28()
{
  OUTLINED_FUNCTION_65_0();
  if (qword_2814C7F00 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = v0[6];
  v2 = v0[4];
  __swift_project_value_buffer(v0[3], qword_2814C8D98);
  v3 = OUTLINED_FUNCTION_23_0();
  v4(v3);
  v5 = sub_232401108();
  v6 = sub_232401338();
  if (OUTLINED_FUNCTION_59_0(v6))
  {
    v7 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v7);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v8, v9, "PPTextUnderstandingObserver: re-posting distributedResults");
    OUTLINED_FUNCTION_54();
  }

  v10 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  v14 = *(v12 + 8);
  v15 = OUTLINED_FUNCTION_47();
  v16(v15);

  return MEMORY[0x2822009F8](sub_232267DD0);
}

uint64_t sub_232267C3C()
{
  OUTLINED_FUNCTION_65_0();
  if (qword_2814C7F00 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_4();
  }

  v2 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_16_0(v1, qword_2814C8D98);
  v7(v6);
  v8 = v2;
  v9 = sub_232401108();
  LOBYTE(v5) = sub_232401348();

  v10 = os_log_type_enabled(v9, v5);
  v11 = v0[11];
  if (v10)
  {
    OUTLINED_FUNCTION_97();
    v12 = OUTLINED_FUNCTION_74();
    *v4 = 138412290;
    v13 = v11;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    sub_232257C68(v12, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v20 = v0[9];
  v21 = v0[5];
  v22 = v0[6];

  OUTLINED_FUNCTION_15();

  return v23();
}

uint64_t sub_232267DD0()
{
  OUTLINED_FUNCTION_12();
  *(*(v0 + 16) + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_90(v1);
  *v2 = v3;
  v2[1] = sub_232267E64;
  OUTLINED_FUNCTION_24_0();

  return sub_232266C50();
}

uint64_t sub_232267E64()
{
  OUTLINED_FUNCTION_22();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_19();
  *v4 = v3;

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[5];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_232267FA8()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_232401018();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v7 = sub_232400E58();
  v1[7] = v7;
  OUTLINED_FUNCTION_2_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_62();
  v11 = sub_232401068();
  v1[10] = v11;
  OUTLINED_FUNCTION_2_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_62();
  v15 = sub_232400EE8();
  v1[13] = v15;
  OUTLINED_FUNCTION_2_0(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_62();
  v19 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_232268130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  if (qword_2814C7F30 != -1)
  {
    swift_once();
  }

  v12 = sub_232400DD8();
  *(v10 + 128) = v12;
  *(v10 + 136) = sub_23226E3A0(&qword_2814C7F80, MEMORY[0x277D203F0]);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_2_2();
  v19 = sub_23226AEDC(v15, v16, v17, v18);
  *(v10 + 144) = v19;
  *(v10 + 152) = v12;

  if (v12)
  {
    goto LABEL_4;
  }

  v29 = *(v19 + 2);
  *(v10 + 160) = v29;
  if (v29)
  {
    v30 = *(v10 + 104);
    v31 = *(v10 + 112);
    OUTLINED_FUNCTION_38_0();
    *(v10 + 424) = v32;
    OUTLINED_FUNCTION_7_0();
    *(v10 + 168) = v33;
    *(v10 + 176) = v11;
    *(v10 + 184) = 0;
    v34 = *(v10 + 144);
    v35 = *(v10 + 120);

    v36 = OUTLINED_FUNCTION_14_0();
    v11(v36);
    v37 = swift_task_alloc();
    *(v10 + 192) = v37;
    *v37 = v10;
    v37[1] = sub_232268638;
    v38 = *(v10 + 120);
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_36_0();

    return sub_2322602B4();
  }

  if (qword_2814C7F18 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v40 = sub_232400DB8();
  *(v10 + 200) = v40;
  OUTLINED_FUNCTION_34_0();
  *(v10 + 208) = sub_23226E3A0(v41, v42);
  v44 = *(v10 + 16);
  v43 = *(v10 + 24);
  swift_getKeyPath();
  v45 = OUTLINED_FUNCTION_2_2();
  v49 = sub_23226B5A8(v45, v46, v47, v48);
  *(v10 + 216) = v49;
  *(v10 + 224) = v40;

  if (v40)
  {
    goto LABEL_4;
  }

  v50 = *(v49 + 2);
  *(v10 + 232) = v50;
  if (v50)
  {
    v51 = *(v10 + 80);
    v52 = *(v10 + 88);
    OUTLINED_FUNCTION_38_0();
    *(v10 + 428) = v53;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_80_0(v54);
    v55 = OUTLINED_FUNCTION_14_0();
    v11(v55);
    v56 = swift_task_alloc();
    *(v10 + 264) = v56;
    *v56 = v10;
    OUTLINED_FUNCTION_8_0(v56);
    OUTLINED_FUNCTION_36_0();

    return sub_23226118C();
  }

  if (qword_2814C7F38 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v58 = sub_232400DC8();
  *(v10 + 272) = v58;
  OUTLINED_FUNCTION_11_0();
  v61 = sub_23226E3A0(v59, v60);
  OUTLINED_FUNCTION_66_0(v61);
  swift_getKeyPath();
  v62 = OUTLINED_FUNCTION_2_2();
  v66 = sub_23226BC74(v62, v63, v64, v65);
  OUTLINED_FUNCTION_79_0(v66);
  if (v58)
  {
LABEL_4:
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  OUTLINED_FUNCTION_86_0();
  if (v67)
  {
    v68 = *(v10 + 56);
    v69 = *(v10 + 64);
    OUTLINED_FUNCTION_38_0();
    *(v10 + 432) = v70;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_42_0(v71);
    v72 = OUTLINED_FUNCTION_14_0();
    v11(v72);
    v73 = swift_task_alloc();
    v74 = OUTLINED_FUNCTION_89(v73);
    *v74 = v75;
    OUTLINED_FUNCTION_4_2(v74);
    OUTLINED_FUNCTION_36_0();

    return sub_232261884();
  }

  else
  {

    if (qword_2814C7F20 != -1)
    {
      OUTLINED_FUNCTION_9_0();
    }

    v77 = sub_232400DE8();
    OUTLINED_FUNCTION_93(v77);
    OUTLINED_FUNCTION_5_0();
    v80 = sub_23226E3A0(v78, v79);
    OUTLINED_FUNCTION_49_0(v80);
    swift_getKeyPath();
    v81 = OUTLINED_FUNCTION_2_2();
    v85 = sub_23226C340(v81, v82, v83, v84);
    OUTLINED_FUNCTION_60_0(v85);
    OUTLINED_FUNCTION_73_0();
    if (v86)
    {
      v87 = *(v10 + 32);
      v88 = *(v10 + 40);
      OUTLINED_FUNCTION_38_0();
      *(v10 + 436) = v89;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_27_0(v90);
      v91 = OUTLINED_FUNCTION_14_0();
      v11(v91);
      v92 = swift_task_alloc();
      v93 = OUTLINED_FUNCTION_74_0(v92);
      *v93 = v94;
      OUTLINED_FUNCTION_1_3(v93);
      OUTLINED_FUNCTION_36_0();

      return sub_232261F20();
    }

    else
    {

      v96 = swift_task_alloc();
      v97 = OUTLINED_FUNCTION_75_0(v96);
      *v97 = v98;
      OUTLINED_FUNCTION_3_2(v97);
      OUTLINED_FUNCTION_36_0();

      return sub_232260BE4();
    }
  }
}

uint64_t sub_232268638()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v2 = v1[24];
  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_19();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_51_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_232268784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = *(v10 + 184);
  v12 = *(v10 + 160);
  OUTLINED_FUNCTION_92();
  if (!v14)
  {
    v37 = *(v10 + 168);
    v36 = *(v10 + 176);
    v38 = *(v10 + 424);
    v39 = *(v10 + 112);
LABEL_7:
    *(v10 + 184) = v13;
    v40 = *(v10 + 144);
    v41 = *(v10 + 120);
    v42 = *(v10 + 104);
    OUTLINED_FUNCTION_12_0();
    v36();
    v43 = swift_task_alloc();
    *(v10 + 192) = v43;
    *v43 = v10;
    v43[1] = sub_232268638;
    v44 = *(v10 + 120);
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_36_0();

    return sub_2322602B4();
  }

  v15 = *(v10 + 144);

  v16 = *(v10 + 144);
  v17 = *(v10 + 152);
  v18 = *(v10 + 128);
  v19 = *(v10 + 136);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_17_0();
  v26 = sub_23226AEDC(v22, v23, v24, v25);
  *(v10 + 144) = v26;
  *(v10 + 152) = v17;

  if (v17)
  {
    goto LABEL_4;
  }

  v46 = *(v26 + 2);
  *(v10 + 160) = v46;
  if (v46)
  {
    v47 = *(v10 + 112);
    *(v10 + 424) = *(v47 + 80);
    *(v10 + 168) = *(v47 + 72);
    v36 = *(v47 + 16);
    *(v10 + 176) = v36;

    v13 = 0;
    goto LABEL_7;
  }

  if (qword_2814C7F18 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v48 = sub_232400DB8();
  *(v10 + 200) = v48;
  OUTLINED_FUNCTION_34_0();
  *(v10 + 208) = sub_23226E3A0(v49, v50);
  v52 = *(v10 + 16);
  v51 = *(v10 + 24);
  swift_getKeyPath();
  v53 = OUTLINED_FUNCTION_2_2();
  v57 = sub_23226B5A8(v53, v54, v55, v56);
  *(v10 + 216) = v57;
  *(v10 + 224) = v48;

  if (v48)
  {
    goto LABEL_4;
  }

  v58 = *(v57 + 2);
  *(v10 + 232) = v58;
  if (v58)
  {
    v59 = *(v10 + 80);
    v60 = *(v10 + 88);
    OUTLINED_FUNCTION_38_0();
    *(v10 + 428) = v61;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_80_0(v62);
    v63 = OUTLINED_FUNCTION_14_0();
    v19(v63);
    v64 = swift_task_alloc();
    *(v10 + 264) = v64;
    *v64 = v10;
    OUTLINED_FUNCTION_8_0(v64);
    OUTLINED_FUNCTION_36_0();

    return sub_23226118C();
  }

  if (qword_2814C7F38 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v66 = sub_232400DC8();
  *(v10 + 272) = v66;
  OUTLINED_FUNCTION_11_0();
  v69 = sub_23226E3A0(v67, v68);
  OUTLINED_FUNCTION_66_0(v69);
  swift_getKeyPath();
  v70 = OUTLINED_FUNCTION_2_2();
  v74 = sub_23226BC74(v70, v71, v72, v73);
  OUTLINED_FUNCTION_79_0(v74);
  if (v66)
  {
LABEL_4:
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  OUTLINED_FUNCTION_86_0();
  if (v75)
  {
    v76 = *(v10 + 56);
    v77 = *(v10 + 64);
    OUTLINED_FUNCTION_38_0();
    *(v10 + 432) = v78;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_42_0(v79);
    v80 = OUTLINED_FUNCTION_14_0();
    v19(v80);
    v81 = swift_task_alloc();
    v82 = OUTLINED_FUNCTION_89(v81);
    *v82 = v83;
    OUTLINED_FUNCTION_4_2(v82);
    OUTLINED_FUNCTION_36_0();

    return sub_232261884();
  }

  else
  {

    if (qword_2814C7F20 != -1)
    {
      OUTLINED_FUNCTION_9_0();
    }

    v85 = sub_232400DE8();
    OUTLINED_FUNCTION_93(v85);
    OUTLINED_FUNCTION_5_0();
    v88 = sub_23226E3A0(v86, v87);
    OUTLINED_FUNCTION_49_0(v88);
    swift_getKeyPath();
    v89 = OUTLINED_FUNCTION_2_2();
    v93 = sub_23226C340(v89, v90, v91, v92);
    OUTLINED_FUNCTION_60_0(v93);
    OUTLINED_FUNCTION_73_0();
    if (v94)
    {
      v95 = *(v10 + 32);
      v96 = *(v10 + 40);
      OUTLINED_FUNCTION_38_0();
      *(v10 + 436) = v97;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_27_0(v98);
      v99 = OUTLINED_FUNCTION_14_0();
      v19(v99);
      v100 = swift_task_alloc();
      v101 = OUTLINED_FUNCTION_74_0(v100);
      *v101 = v102;
      OUTLINED_FUNCTION_1_3(v101);
      OUTLINED_FUNCTION_36_0();

      return sub_232261F20();
    }

    else
    {

      v104 = swift_task_alloc();
      v105 = OUTLINED_FUNCTION_75_0(v104);
      *v105 = v106;
      OUTLINED_FUNCTION_3_2(v105);
      OUTLINED_FUNCTION_36_0();

      return sub_232260BE4();
    }
  }
}

uint64_t sub_232268C58()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v2 = v1[33];
  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_19();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_51_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_232268DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = *(v10 + 256);
  v12 = *(v10 + 232);
  OUTLINED_FUNCTION_92();
  if (!v14)
  {
    v37 = *(v10 + 240);
    v36 = *(v10 + 248);
    v38 = *(v10 + 428);
    v39 = *(v10 + 88);
LABEL_7:
    *(v10 + 256) = v13;
    v40 = *(v10 + 216);
    v41 = *(v10 + 96);
    v42 = *(v10 + 80);
    OUTLINED_FUNCTION_12_0();
    v36();
    v43 = swift_task_alloc();
    *(v10 + 264) = v43;
    *v43 = v10;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_36_0();

    return sub_23226118C();
  }

  v15 = *(v10 + 216);

  v16 = *(v10 + 216);
  v17 = *(v10 + 224);
  v18 = *(v10 + 200);
  v19 = *(v10 + 208);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_17_0();
  v26 = sub_23226B5A8(v22, v23, v24, v25);
  *(v10 + 216) = v26;
  *(v10 + 224) = v17;

  if (v17)
  {
    goto LABEL_4;
  }

  v45 = *(v26 + 2);
  *(v10 + 232) = v45;
  if (v45)
  {
    v46 = *(v10 + 88);
    *(v10 + 428) = *(v46 + 80);
    *(v10 + 240) = *(v46 + 72);
    v36 = *(v46 + 16);
    *(v10 + 248) = v36;

    v13 = 0;
    goto LABEL_7;
  }

  if (qword_2814C7F38 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v47 = sub_232400DC8();
  *(v10 + 272) = v47;
  OUTLINED_FUNCTION_11_0();
  v50 = sub_23226E3A0(v48, v49);
  OUTLINED_FUNCTION_66_0(v50);
  swift_getKeyPath();
  v51 = OUTLINED_FUNCTION_2_2();
  v55 = sub_23226BC74(v51, v52, v53, v54);
  OUTLINED_FUNCTION_79_0(v55);
  if (v47)
  {
LABEL_4:
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
    if (v56)
    {
      v57 = *(v10 + 56);
      v58 = *(v10 + 64);
      OUTLINED_FUNCTION_38_0();
      *(v10 + 432) = v59;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_42_0(v60);
      v61 = OUTLINED_FUNCTION_14_0();
      v19(v61);
      v62 = swift_task_alloc();
      v63 = OUTLINED_FUNCTION_89(v62);
      *v63 = v64;
      OUTLINED_FUNCTION_4_2(v63);
      OUTLINED_FUNCTION_36_0();

      return sub_232261884();
    }

    else
    {

      if (qword_2814C7F20 != -1)
      {
        OUTLINED_FUNCTION_9_0();
      }

      v66 = sub_232400DE8();
      OUTLINED_FUNCTION_93(v66);
      OUTLINED_FUNCTION_5_0();
      v69 = sub_23226E3A0(v67, v68);
      OUTLINED_FUNCTION_49_0(v69);
      swift_getKeyPath();
      v70 = OUTLINED_FUNCTION_2_2();
      v74 = sub_23226C340(v70, v71, v72, v73);
      OUTLINED_FUNCTION_60_0(v74);
      OUTLINED_FUNCTION_73_0();
      if (v75)
      {
        v76 = *(v10 + 32);
        v77 = *(v10 + 40);
        OUTLINED_FUNCTION_38_0();
        *(v10 + 436) = v78;
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_27_0(v79);
        v80 = OUTLINED_FUNCTION_14_0();
        v19(v80);
        v81 = swift_task_alloc();
        v82 = OUTLINED_FUNCTION_74_0(v81);
        *v82 = v83;
        OUTLINED_FUNCTION_1_3(v82);
        OUTLINED_FUNCTION_36_0();

        return sub_232261F20();
      }

      else
      {

        v85 = swift_task_alloc();
        v86 = OUTLINED_FUNCTION_75_0(v85);
        *v86 = v87;
        OUTLINED_FUNCTION_3_2(v86);
        OUTLINED_FUNCTION_36_0();

        return sub_232260BE4();
      }
    }
  }
}

uint64_t sub_232269148()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v2 = v1[42];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_19();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_51_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_232269294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = *(v10 + 328);
  v12 = *(v10 + 304);
  OUTLINED_FUNCTION_92();
  if (!v14)
  {
    v36 = *(v10 + 312);
    v35 = *(v10 + 320);
    v37 = *(v10 + 432);
    v38 = *(v10 + 64);
LABEL_7:
    *(v10 + 328) = v13;
    v39 = *(v10 + 288);
    v40 = *(v10 + 72);
    v41 = *(v10 + 56);
    OUTLINED_FUNCTION_12_0();
    v35();
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_89(v42);
    *v43 = v44;
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_36_0();

    return sub_232261884();
  }

  v15 = *(v10 + 288);

  v16 = *(v10 + 288);
  v17 = *(v10 + 296);
  v18 = *(v10 + 272);
  v19 = *(v10 + 280);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_17_0();
  *(v10 + 288) = sub_23226BC74(v22, v23, v24, v25);
  *(v10 + 296) = v17;

  if (v17)
  {
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
    if (v46)
    {
      v47 = *(v10 + 64);
      *(v10 + 432) = *(v47 + 80);
      *(v10 + 312) = *(v47 + 72);
      v35 = *(v47 + 16);
      *(v10 + 320) = v35;

      v13 = 0;
      goto LABEL_7;
    }

    if (qword_2814C7F20 != -1)
    {
      OUTLINED_FUNCTION_9_0();
    }

    v48 = sub_232400DE8();
    OUTLINED_FUNCTION_93(v48);
    OUTLINED_FUNCTION_5_0();
    v51 = sub_23226E3A0(v49, v50);
    OUTLINED_FUNCTION_49_0(v51);
    swift_getKeyPath();
    v52 = OUTLINED_FUNCTION_2_2();
    v56 = sub_23226C340(v52, v53, v54, v55);
    OUTLINED_FUNCTION_60_0(v56);
    OUTLINED_FUNCTION_73_0();
    if (v57)
    {
      v58 = *(v10 + 32);
      v59 = *(v10 + 40);
      OUTLINED_FUNCTION_38_0();
      *(v10 + 436) = v60;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_27_0(v61);
      v62 = OUTLINED_FUNCTION_14_0();
      v19(v62);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_74_0(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_1_3(v64);
      OUTLINED_FUNCTION_36_0();

      return sub_232261F20();
    }

    else
    {

      v67 = swift_task_alloc();
      v68 = OUTLINED_FUNCTION_75_0(v67);
      *v68 = v69;
      OUTLINED_FUNCTION_3_2(v68);
      OUTLINED_FUNCTION_36_0();

      return sub_232260BE4();
    }
  }
}

uint64_t sub_232269540()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v2 = v1[51];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_19();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_51_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_23226968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = *(v10 + 400);
  v12 = *(v10 + 376);
  OUTLINED_FUNCTION_92();
  if (!v14)
  {
    v36 = *(v10 + 384);
    v35 = *(v10 + 392);
    v37 = *(v10 + 436);
    v38 = *(v10 + 40);
LABEL_7:
    *(v10 + 400) = v13;
    v39 = *(v10 + 360);
    v40 = *(v10 + 48);
    v41 = *(v10 + 32);
    OUTLINED_FUNCTION_12_0();
    v35();
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_74_0(v42);
    *v43 = v44;
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_36_0();

    return sub_232261F20();
  }

  v15 = *(v10 + 360);

  v16 = *(v10 + 360);
  v17 = *(v10 + 368);
  v18 = *(v10 + 344);
  v19 = *(v10 + 352);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_17_0();
  *(v10 + 360) = sub_23226C340(v22, v23, v24, v25);
  *(v10 + 368) = v17;

  if (v17)
  {
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    if (v46)
    {
      v47 = *(v10 + 40);
      *(v10 + 436) = *(v47 + 80);
      *(v10 + 384) = *(v47 + 72);
      v35 = *(v47 + 16);
      *(v10 + 392) = v35;

      v13 = 0;
      goto LABEL_7;
    }

    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_75_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_3_2(v49);
    OUTLINED_FUNCTION_36_0();

    return sub_232260BE4();
  }
}

uint64_t sub_23226984C()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v2 = v1[52];
  v3 = v1[15];
  v4 = v1[12];
  v5 = v1[9];
  v6 = v1[6];
  v7 = *v0;
  OUTLINED_FUNCTION_19();
  *v8 = v7;

  OUTLINED_FUNCTION_15();

  return v9();
}

uint64_t sub_2322699A8()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_232400C98();
  v1[10] = v2;
  OUTLINED_FUNCTION_2_0(v2);
  v1[11] = v3;
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_61();
  v1[13] = swift_task_alloc();
  v6 = sub_232401128();
  v1[14] = v6;
  OUTLINED_FUNCTION_2_0(v6);
  v1[15] = v7;
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_61();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_232269B08()
{
  OUTLINED_FUNCTION_87_0();
  v1 = v0[8];
  v2 = *(v1 + 112);
  if (!v2)
  {
    v3 = sub_232267664();
    v4 = *(v1 + 112);
    *(v1 + 112) = v3;

    v2 = *(v1 + 112);
    if (!v2)
    {
      if (qword_2814C7F00 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v81 = v0[17];
      v82 = v0[15];
      __swift_project_value_buffer(v0[14], qword_2814C8D98);
      v83 = OUTLINED_FUNCTION_23_0();
      v84(v83);
      v85 = sub_232401108();
      v86 = sub_232401348();
      v87 = OUTLINED_FUNCTION_59_0(v86);
      v88 = v0[17];
      v89 = v0[14];
      v90 = v0[15];
      if (v87)
      {
        *OUTLINED_FUNCTION_57_0() = 0;
        OUTLINED_FUNCTION_58_0(&dword_23224A000, v91, v92, "PPTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_52_0();
      }

      v93 = *(v90 + 8);
      v94 = OUTLINED_FUNCTION_47();
      v95(v94);
LABEL_28:
      OUTLINED_FUNCTION_25_0();

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_70_0();

      __asm { BRAA            X1, X16 }
    }

    v1 = v0[8];
  }

  v0[22] = v2;
  v5 = OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress;
  if (*(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) == 1)
  {
    v6 = qword_2814C7F00;

    if (v6 != -1)
    {
      v7 = OUTLINED_FUNCTION_0_4();
    }

    v8 = v0[21];
    v9 = v0[14];
    v10 = v0[15];
    v11 = OUTLINED_FUNCTION_16_0(v7, qword_2814C8D98);
    v12(v11);
    v13 = sub_232401108();
    v14 = sub_232401338();
    v15 = OUTLINED_FUNCTION_59_0(v14);
    v16 = v0[21];
    v17 = v0[14];
    v18 = v0[15];
    if (v15)
    {
      *OUTLINED_FUNCTION_57_0() = 0;
      OUTLINED_FUNCTION_96(&dword_23224A000, v19, v20, "PPTextUnderstandingObserver: delayedDeletionNotificationInProgress = true");
      OUTLINED_FUNCTION_54();
    }

    v21 = *(v18 + 8);
    v22 = OUTLINED_FUNCTION_37_0();
    v23(v22);
    goto LABEL_28;
  }

  v25 = v0[12];
  v24 = v0[13];
  v26 = v0[10];
  v27 = v0[11];

  sub_232400C78();
  OUTLINED_FUNCTION_81_0();
  v28 = OUTLINED_FUNCTION_72_0();
  v29(v28);
  sub_232400C58();
  v31 = v30;
  v32 = *(v27 + 8);
  v33 = OUTLINED_FUNCTION_37_0();
  v32(v33);
  v34 = (v32)(v24, v26);
  if (v31 < 2.0)
  {
    if (qword_2814C7F00 != -1)
    {
      v34 = OUTLINED_FUNCTION_0_4();
    }

    v35 = v0[20];
    v36 = v0[14];
    v37 = v0[15];
    v38 = OUTLINED_FUNCTION_16_0(v34, qword_2814C8D98);
    v39(v38);
    v40 = sub_232401108();
    v41 = sub_232401338();
    if (OUTLINED_FUNCTION_53_0(v41))
    {
      v42 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v42);
      OUTLINED_FUNCTION_19_0();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_30();
    }

    v48 = v0[20];
    v49 = v0[14];
    v50 = v0[15];
    v51 = v0[8];
    v52 = v0[9];

    v53 = *(v50 + 8);
    v54 = OUTLINED_FUNCTION_37_0();
    v55(v54);
    *(v1 + v5) = 1;
    v56 = *(v51 + 120);
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    *(v57 + 24) = v52;

    sub_232400D18();

    goto LABEL_28;
  }

  if (qword_2814C7F00 != -1)
  {
    v34 = OUTLINED_FUNCTION_0_4();
  }

  v58 = v0[19];
  v59 = v0[14];
  v60 = v0[15];
  v61 = OUTLINED_FUNCTION_28_0(v34, qword_2814C8D98);
  v62 = OUTLINED_FUNCTION_55_0(v61);
  v63(v62);
  v64 = sub_232401108();
  v65 = sub_232401328();
  if (OUTLINED_FUNCTION_53_0(v65))
  {
    v66 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_64_0(v66);
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
    OUTLINED_FUNCTION_30();
  }

  v72 = v0[19];
  v73 = v0[14];
  v74 = v0[15];

  v0[27] = *(v74 + 8);
  v75 = OUTLINED_FUNCTION_37_0();
  v76(v75);
  v77 = swift_task_alloc();
  v0[28] = v77;
  *v77 = v0;
  v77[1] = sub_232269FD0;
  v78 = v0[8];
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_70_0();

  return sub_23226A888();
}

uint64_t sub_232269FD0()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *(v2 + 224);
  *v4 = *v1;
  *(v3 + 232) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_23226A21C;
  }

  else
  {
    v7 = sub_23226A0F4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_23226A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = OUTLINED_FUNCTION_76_0();
  v12(v11);
  v13 = sub_232401108();
  v14 = sub_232401328();
  if (OUTLINED_FUNCTION_59_0(v14))
  {
    v15 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v15);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v16, v17, "PPTextUnderstandingObserver: deletion handler finished");
    OUTLINED_FUNCTION_54();
  }

  v18 = v10[18];
  OUTLINED_FUNCTION_91();
  v19 = v10[14];
  v20 = v10[15];
  v21 = v10[13];
  OUTLINED_FUNCTION_46_0();
  v22();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v23 = OUTLINED_FUNCTION_22_0();
  v24(v23);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_23226A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v13 = OUTLINED_FUNCTION_61_0();
  v14(v13);
  v15 = v10;
  v16 = sub_232401108();
  v17 = sub_232401348();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v11[29];
  if (v18)
  {
    OUTLINED_FUNCTION_97();
    v20 = OUTLINED_FUNCTION_74();
    *v12 = 138412290;
    v21 = v19;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v22;
    *v20 = v22;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    sub_232257C68(v20, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  OUTLINED_FUNCTION_91();
  v29 = v11[15];
  v28 = v11[16];
  v31 = v11[13];
  v30 = v11[14];
  OUTLINED_FUNCTION_46_0();
  v32();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v33 = OUTLINED_FUNCTION_22_0();
  v34(v33);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_23226A3BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_232401128();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_2324014D8();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23226A4E4);
}

uint64_t sub_23226A4E4()
{
  OUTLINED_FUNCTION_22();
  v1 = *(v0 + 72);
  sub_232401618();
  sub_232401578();
  v2 = OUTLINED_FUNCTION_50(&unk_232417AC8);
  *(v0 + 80) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_45_0(v2);

  return v4(v3);
}

uint64_t sub_23226A58C()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = *v1;
  OUTLINED_FUNCTION_19();
  *v10 = v9;
  *(v11 + 88) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_47();
  v14(v13);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_23226A6E0()
{
  OUTLINED_FUNCTION_65_0();
  if (qword_2814C7F00 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v1 = v0[6];
  v2 = v0[4];
  __swift_project_value_buffer(v0[3], qword_2814C8D98);
  v3 = OUTLINED_FUNCTION_23_0();
  v4(v3);
  v5 = sub_232401108();
  v6 = sub_232401338();
  if (OUTLINED_FUNCTION_59_0(v6))
  {
    v7 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v7);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v8, v9, "PPTextUnderstandingObserver: re-posting distributedDeletion");
    OUTLINED_FUNCTION_54();
  }

  v10 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  v14 = *(v12 + 8);
  v15 = OUTLINED_FUNCTION_47();
  v16(v15);

  return MEMORY[0x2822009F8](sub_23226A7F4);
}

uint64_t sub_23226A7F4()
{
  OUTLINED_FUNCTION_12();
  *(*(v0 + 16) + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_90(v1);
  *v2 = v3;
  v2[1] = sub_23226E3F0;
  OUTLINED_FUNCTION_24_0();

  return sub_2322699A8();
}

uint64_t sub_23226A888()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010B8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_23226A92C()
{
  OUTLINED_FUNCTION_87_0();
  if (qword_2814C7F08 != -1)
  {
    swift_once();
  }

  v1 = sub_232400DF8();
  v0[7] = v1;
  v2 = sub_23226E3A0(&qword_2814C7F70, MEMORY[0x277D20410]);
  v3 = 0;
  v0[8] = v2;
  while (1)
  {
    v5 = v0[2];
    v4 = v0[3];
    KeyPath = swift_getKeyPath();
    v7 = sub_23226CA0C(v1, v2, v5, KeyPath);
    v0[9] = v7;

    if (v3)
    {
    }

    v8 = *(v7 + 2);
    v0[10] = v8;
    v0[11] = 0;

    v10 = v0[9];
    if (v8)
    {
      break;
    }

    v11 = v0[9];

    v12 = v0[9];
    if (!*(v10 + 16))
    {
      v17 = v0[6];
      v18 = v0[9];

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_71_0();

      __asm { BRAA            X1, X16 }
    }

    v1 = v0[7];
    v2 = v0[8];
    v3 = 1;
  }

  if (*(v10 + 16))
  {
    (*(v0[5] + 16))(v0[6], v10 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)), v0[4]);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_90(v13);
    *v14 = v15;
    OUTLINED_FUNCTION_6_0(v14);
    OUTLINED_FUNCTION_71_0();

    return sub_23225F900();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23226AB60()
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_59();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[9];
    v11 = v3[5];
    v10 = v3[6];
    v14 = v3 + 3;
    v12 = v3[3];
    v13 = v14[1];

    v15 = *(v11 + 8);
    v16 = OUTLINED_FUNCTION_37_0();
    v17(v16);

    v18 = sub_23226AE80;
  }

  else
  {
    v19 = v3[3];
    (*(v3[5] + 8))(v3[6], v3[4]);
    v18 = sub_23226ACC0;
  }

  return MEMORY[0x2822009F8](v18);
}

void sub_23226ACC0()
{
  OUTLINED_FUNCTION_87_0();
  v1 = v0[13];
  v2 = v0[10];
  for (i = v0[11] + 1; ; i = 0)
  {
    v0[11] = i;
    v4 = v0[9];
    if (i != v2)
    {
      break;
    }

    v5 = v0[9];

    v6 = v0[9];
    if (!*(v4 + 16))
    {
      v17 = v0[6];
      v18 = v0[9];

      OUTLINED_FUNCTION_15();
      goto LABEL_12;
    }

    v7 = v0[7];
    v8 = v0[8];
    v10 = v0[2];
    v9 = v0[3];
    KeyPath = swift_getKeyPath();
    v12 = sub_23226CA0C(v7, v8, v10, KeyPath);
    v0[9] = v12;

    if (v1)
    {
      v19 = v0[6];

      OUTLINED_FUNCTION_20_0();
LABEL_12:
      OUTLINED_FUNCTION_71_0();

      __asm { BRAA            X1, X16 }
    }

    v2 = *(v12 + 2);
    v0[10] = v2;
  }

  if (i >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v4 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)) + *(v0[5] + 72) * i, v0[4]);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_90(v13);
    *v14 = v15;
    OUTLINED_FUNCTION_6_0(v14);
    OUTLINED_FUNCTION_71_0();

    sub_23225F900();
  }
}

uint64_t sub_23226AE80()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_15();

  return v3();
}

char *sub_23226AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = a1;
  v61 = a2;
  v53 = *v4;
  v6 = sub_232401128();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232400C98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextUnderstandingBookmarks();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v59 = v18;
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = v18 + 16;
  sub_23226EB94();
  v54 = a4;
  v20 = swift_readAtKeyPath();
  v22 = *v21;
  v20(v63, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v25 = sub_232400C68();
  (*(v10 + 8))(v13, v9);
  [v24 setStartDate_];

  [v24 setMaxEvents_];
  v26 = "otificationInProgress";
  v27 = v24;
  v28 = v58;
  sub_232400E18();
  if (v28)
  {
    sub_23226DADC(v17);
  }

  else
  {
    v52 = 0;
    v58 = v19;
    v51 = v27;

    v50[1] = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v29 = swift_allocObject();
    v30 = v53;
    *(v29 + 16) = v53;
    v31 = swift_allocObject();
    v31[2] = v22;
    v32 = v59;
    v31[3] = v59;
    v31[4] = v23;
    v31[5] = v30;

    sub_232401138();

    swift_beginAccess();
    v62 = *(v23 + 16);
    swift_setAtWritableKeyPath();
    v33 = v17;
    v34 = v32;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v35 = v56;
    v36 = __swift_project_value_buffer(v56, qword_2814C8D98);
    v37 = v55;
    v38 = v57;
    (*(v55 + 16))(v57, v36, v35);

    v39 = sub_232401108();
    v40 = sub_232401368();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v41 = 134218242;
      swift_beginAccess();
      *(v41 + 4) = *(*(v34 + 16) + 16);

      *(v41 + 12) = 2080;
      LODWORD(v53) = v40;
      v42 = sub_232400E08();
      v43 = [v42 streamIdentifier];

      v44 = sub_232401178();
      v61 = v33;
      v46 = v45;

      v47 = sub_23224ED04(v44, v46, &v62);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_23224A000, v39, v53, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v41, 0x16u);
      v48 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x2383841F0](v48, -1, -1);
      MEMORY[0x2383841F0](v41, -1, -1);

      (*(v37 + 8))(v57, v56);
      sub_23226DADC(v61);
    }

    else
    {

      (*(v37 + 8))(v38, v35);
      sub_23226DADC(v33);
    }

    swift_beginAccess();
    v26 = *(v34 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v63);
  }

  return v26;
}

char *sub_23226B5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = a1;
  v61 = a2;
  v53 = *v4;
  v6 = sub_232401128();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232400C98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextUnderstandingBookmarks();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v59 = v18;
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = v18 + 16;
  sub_23226EB94();
  v54 = a4;
  v20 = swift_readAtKeyPath();
  v22 = *v21;
  v20(v63, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v25 = sub_232400C68();
  (*(v10 + 8))(v13, v9);
  [v24 setStartDate_];

  [v24 setMaxEvents_];
  v26 = "otificationInProgress";
  v27 = v24;
  v28 = v58;
  sub_232400E18();
  if (v28)
  {
    sub_23226DADC(v17);
  }

  else
  {
    v52 = 0;
    v58 = v19;
    v51 = v27;

    v50[1] = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v29 = swift_allocObject();
    v30 = v53;
    *(v29 + 16) = v53;
    v31 = swift_allocObject();
    v31[2] = v22;
    v32 = v59;
    v31[3] = v59;
    v31[4] = v23;
    v31[5] = v30;

    sub_232401138();

    swift_beginAccess();
    v62 = *(v23 + 16);
    swift_setAtWritableKeyPath();
    v33 = v17;
    v34 = v32;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v35 = v56;
    v36 = __swift_project_value_buffer(v56, qword_2814C8D98);
    v37 = v55;
    v38 = v57;
    (*(v55 + 16))(v57, v36, v35);

    v39 = sub_232401108();
    v40 = sub_232401368();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v41 = 134218242;
      swift_beginAccess();
      *(v41 + 4) = *(*(v34 + 16) + 16);

      *(v41 + 12) = 2080;
      LODWORD(v53) = v40;
      v42 = sub_232400E08();
      v43 = [v42 streamIdentifier];

      v44 = sub_232401178();
      v61 = v33;
      v46 = v45;

      v47 = sub_23224ED04(v44, v46, &v62);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_23224A000, v39, v53, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v41, 0x16u);
      v48 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x2383841F0](v48, -1, -1);
      MEMORY[0x2383841F0](v41, -1, -1);

      (*(v37 + 8))(v57, v56);
      sub_23226DADC(v61);
    }

    else
    {

      (*(v37 + 8))(v38, v35);
      sub_23226DADC(v33);
    }

    swift_beginAccess();
    v26 = *(v34 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v63);
  }

  return v26;
}

char *sub_23226BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = a1;
  v61 = a2;
  v53 = *v4;
  v6 = sub_232401128();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232400C98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextUnderstandingBookmarks();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v59 = v18;
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = v18 + 16;
  sub_23226EB94();
  v54 = a4;
  v20 = swift_readAtKeyPath();
  v22 = *v21;
  v20(v63, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v25 = sub_232400C68();
  (*(v10 + 8))(v13, v9);
  [v24 setStartDate_];

  [v24 setMaxEvents_];
  v26 = "otificationInProgress";
  v27 = v24;
  v28 = v58;
  sub_232400E18();
  if (v28)
  {
    sub_23226DADC(v17);
  }

  else
  {
    v52 = 0;
    v58 = v19;
    v51 = v27;

    v50[1] = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v29 = swift_allocObject();
    v30 = v53;
    *(v29 + 16) = v53;
    v31 = swift_allocObject();
    v31[2] = v22;
    v32 = v59;
    v31[3] = v59;
    v31[4] = v23;
    v31[5] = v30;

    sub_232401138();

    swift_beginAccess();
    v62 = *(v23 + 16);
    swift_setAtWritableKeyPath();
    v33 = v17;
    v34 = v32;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v35 = v56;
    v36 = __swift_project_value_buffer(v56, qword_2814C8D98);
    v37 = v55;
    v38 = v57;
    (*(v55 + 16))(v57, v36, v35);

    v39 = sub_232401108();
    v40 = sub_232401368();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v41 = 134218242;
      swift_beginAccess();
      *(v41 + 4) = *(*(v34 + 16) + 16);

      *(v41 + 12) = 2080;
      LODWORD(v53) = v40;
      v42 = sub_232400E08();
      v43 = [v42 streamIdentifier];

      v44 = sub_232401178();
      v61 = v33;
      v46 = v45;

      v47 = sub_23224ED04(v44, v46, &v62);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_23224A000, v39, v53, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v41, 0x16u);
      v48 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x2383841F0](v48, -1, -1);
      MEMORY[0x2383841F0](v41, -1, -1);

      (*(v37 + 8))(v57, v56);
      sub_23226DADC(v61);
    }

    else
    {

      (*(v37 + 8))(v38, v35);
      sub_23226DADC(v33);
    }

    swift_beginAccess();
    v26 = *(v34 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v63);
  }

  return v26;
}

char *sub_23226C340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = a1;
  v61 = a2;
  v53 = *v4;
  v6 = sub_232401128();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232400C98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextUnderstandingBookmarks();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v59 = v18;
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = v18 + 16;
  sub_23226EB94();
  v54 = a4;
  v20 = swift_readAtKeyPath();
  v22 = *v21;
  v20(v63, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v25 = sub_232400C68();
  (*(v10 + 8))(v13, v9);
  [v24 setStartDate_];

  [v24 setMaxEvents_];
  v26 = "otificationInProgress";
  v27 = v24;
  v28 = v58;
  sub_232400E18();
  if (v28)
  {
    sub_23226DADC(v17);
  }

  else
  {
    v52 = 0;
    v58 = v19;
    v51 = v27;

    v50[1] = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v29 = swift_allocObject();
    v30 = v53;
    *(v29 + 16) = v53;
    v31 = swift_allocObject();
    v31[2] = v22;
    v32 = v59;
    v31[3] = v59;
    v31[4] = v23;
    v31[5] = v30;

    sub_232401138();

    swift_beginAccess();
    v62 = *(v23 + 16);
    swift_setAtWritableKeyPath();
    v33 = v17;
    v34 = v32;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v35 = v56;
    v36 = __swift_project_value_buffer(v56, qword_2814C8D98);
    v37 = v55;
    v38 = v57;
    (*(v55 + 16))(v57, v36, v35);

    v39 = sub_232401108();
    v40 = sub_232401368();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v41 = 134218242;
      swift_beginAccess();
      *(v41 + 4) = *(*(v34 + 16) + 16);

      *(v41 + 12) = 2080;
      LODWORD(v53) = v40;
      v42 = sub_232400E08();
      v43 = [v42 streamIdentifier];

      v44 = sub_232401178();
      v61 = v33;
      v46 = v45;

      v47 = sub_23224ED04(v44, v46, &v62);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_23224A000, v39, v53, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v41, 0x16u);
      v48 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x2383841F0](v48, -1, -1);
      MEMORY[0x2383841F0](v41, -1, -1);

      (*(v37 + 8))(v57, v56);
      sub_23226DADC(v61);
    }

    else
    {

      (*(v37 + 8))(v38, v35);
      sub_23226DADC(v33);
    }

    swift_beginAccess();
    v26 = *(v34 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v63);
  }

  return v26;
}

char *sub_23226CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = a1;
  v61 = a2;
  v53 = *v4;
  v6 = sub_232401128();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232400C98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextUnderstandingBookmarks();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v59 = v18;
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = v18 + 16;
  sub_23226EB94();
  v54 = a4;
  v20 = swift_readAtKeyPath();
  v22 = *v21;
  v20(v63, 0);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v25 = sub_232400C68();
  (*(v10 + 8))(v13, v9);
  [v24 setStartDate_];

  [v24 setMaxEvents_];
  v26 = "otificationInProgress";
  v27 = v24;
  v28 = v58;
  sub_232400E18();
  if (v28)
  {
    sub_23226DADC(v17);
  }

  else
  {
    v52 = 0;
    v58 = v19;
    v51 = v27;

    v50[1] = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v29 = swift_allocObject();
    v30 = v53;
    *(v29 + 16) = v53;
    v31 = swift_allocObject();
    v31[2] = v22;
    v32 = v59;
    v31[3] = v59;
    v31[4] = v23;
    v31[5] = v30;

    sub_232401138();

    swift_beginAccess();
    v62 = *(v23 + 16);
    swift_setAtWritableKeyPath();
    v33 = v17;
    v34 = v32;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v35 = v56;
    v36 = __swift_project_value_buffer(v56, qword_2814C8D98);
    v37 = v55;
    v38 = v57;
    (*(v55 + 16))(v57, v36, v35);

    v39 = sub_232401108();
    v40 = sub_232401368();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v41 = 134218242;
      swift_beginAccess();
      *(v41 + 4) = *(*(v34 + 16) + 16);

      *(v41 + 12) = 2080;
      LODWORD(v53) = v40;
      v42 = sub_232400E08();
      v43 = [v42 streamIdentifier];

      v44 = sub_232401178();
      v61 = v33;
      v46 = v45;

      v47 = sub_23224ED04(v44, v46, &v62);

      *(v41 + 14) = v47;
      _os_log_impl(&dword_23224A000, v39, v53, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v41, 0x16u);
      v48 = v54;
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x2383841F0](v48, -1, -1);
      MEMORY[0x2383841F0](v41, -1, -1);

      (*(v37 + 8))(v57, v56);
      sub_23226DADC(v61);
    }

    else
    {

      (*(v37 + 8))(v38, v35);
      sub_23226DADC(v33);
    }

    swift_beginAccess();
    v26 = *(v34 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v63);
  }

  return v26;
}

uint64_t sub_23226D0D8(void **a1)
{
  v2 = sub_232401128();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *a1;
  if (!*a1)
  {
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v2, qword_2814C8D98);
    (*(v3 + 16))(v9, v19, v2);
    v13 = sub_232401108();
    v20 = sub_232401328();
    if (!os_log_type_enabled(v13, v20))
    {
      v7 = v9;
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_23224A000, v13, v20, "PPTextUnderstandingObserver: importEventBatch finished", v15, 2u);
    v7 = v9;
    goto LABEL_10;
  }

  if (qword_2814C7F00 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_2814C8D98);
  (*(v3 + 16))(v7, v11, v2);
  v12 = v10;
  v13 = sub_232401108();
  v14 = sub_232401348();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_23224A000, v13, v14, "PPTextUnderstandingObserver: importEventBatch failed: %@", v15, 0xCu);
    sub_232257C68(v16, &qword_27DD91290, &qword_232417860);
    MEMORY[0x2383841F0](v16, -1, -1);
LABEL_10:
    MEMORY[0x2383841F0](v15, -1, -1);
  }

LABEL_12:

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_23226D3CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  v48 = a8;
  v49 = a3;
  v13 = sub_232401128();
  v14 = OUTLINED_FUNCTION_40(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_68_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v47 - v28;
  a6(v27);
  v30 = sub_232400C98();
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_232257C68(v29, &qword_27DD91248, &qword_2324176E0);
    if (qword_2814C7F00 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v31 = __swift_project_value_buffer(v13, qword_2814C8D98);
    (*(v16 + 16))(v24, v31, v13);
    v32 = sub_232401108();
    v33 = sub_232401348();
    if (OUTLINED_FUNCTION_53_0(v33))
    {
      v34 = OUTLINED_FUNCTION_57_0();
      *v34 = 0;
      _os_log_impl(&dword_23224A000, v32, v21, "PPTextUnderstandingObserver: importEventBatch: event missing writeTimestamp", v34, 2u);
      OUTLINED_FUNCTION_54();
    }

    return (*(v16 + 8))(v24, v13);
  }

  else
  {
    sub_232400C38();
    v37 = v36;
    (*(*(v30 - 8) + 8))(v29, v30);
    if (v37 <= a4)
    {
      if (qword_2814C7F00 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v43 = __swift_project_value_buffer(v13, qword_2814C8D98);
      (*(v16 + 16))(v21, v43, v13);
      v44 = sub_232401108();
      v45 = sub_232401338();
      if (OUTLINED_FUNCTION_59_0(v45))
      {
        v46 = OUTLINED_FUNCTION_97();
        *v46 = 134217984;
        *(v46 + 4) = v37;
        _os_log_impl(&dword_23224A000, v44, v45, "PPTextUnderstandingObserver: importEventBatch: skipping event at %f", v46, 0xCu);
        OUTLINED_FUNCTION_30();
      }

      return (*(v16 + 8))(v21, v13);
    }

    else
    {
      swift_beginAccess();
      sub_23226E000(a7);
      v38 = *(*(a2 + 16) + 16);
      sub_23226E088(v38, a7);
      v39 = *(a2 + 16);
      *(v39 + 16) = v38 + 1;
      v40 = v48(0);
      OUTLINED_FUNCTION_69_0(v40);
      (*(v41 + 16))(v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38, a1);
      *(a2 + 16) = v39;
      swift_endAccess();
      v42 = v49;
      result = swift_beginAccess();
      *(v42 + 16) = v37;
    }
  }

  return result;
}

uint64_t sub_23226D7C8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_lastResultsPostTime;
  v4 = sub_232400C98();
  OUTLINED_FUNCTION_69_0(v4);
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_lastDeletionPostTime, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23226D868()
{
  sub_23226D7C8();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TextUnderstandingObserver()
{
  result = qword_2814C7908;
  if (!qword_2814C7908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23226D8E0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_36(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_63_0(v3);

  return sub_23226616C();
}

uint64_t sub_23226D968()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_36(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_63_0(v3);

  return sub_232266450();
}

uint64_t sub_23226DA1C()
{
  result = sub_232400C98();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23226DADC(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingBookmarks();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23226DB98()
{
  OUTLINED_FUNCTION_65_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_2324014C8();
  *(v1 + 64) = v12;
  OUTLINED_FUNCTION_2_0(v12);
  *(v1 + 72) = v13;
  v15 = *(v14 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_23226DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[8];
  v14 = v10[9];
  v15 = v10[7];
  sub_2324014D8();
  sub_23226E3A0(&qword_2814C7748, MEMORY[0x277D85928]);
  OUTLINED_FUNCTION_47();
  sub_232401558();
  sub_23226E3A0(&qword_2814C7750, MEMORY[0x277D858F8]);
  sub_2324014E8();
  v16 = *(v14 + 8);
  v10[12] = v16;
  v10[13] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v13);
  v17 = *(MEMORY[0x277D85A58] + 4);
  v18 = swift_task_alloc();
  v10[14] = v18;
  *v18 = v10;
  v18[1] = sub_23226DE00;
  v19 = v10[11];
  v20 = v10[7];
  OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822008C8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_23226DE00()
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_59();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_19();
  *v12 = v11;
  v3[15] = v0;

  v13 = OUTLINED_FUNCTION_37_0();
  v8(v13);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v14);
  }

  else
  {
    v16 = v3[10];
    v15 = v3[11];

    OUTLINED_FUNCTION_15();

    return v17();
  }
}

uint64_t sub_23226DF9C()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_15();
  v4 = v0[15];

  return v3();
}

uint64_t sub_23226E000(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_23226E05C(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_23226E088(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_23226E0D0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_36(v3);
  *v4 = v5;
  v4[1] = sub_232264398;
  v6 = OUTLINED_FUNCTION_62_0();

  return sub_23226A3BC(v6);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23226E2FC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_36(v3);
  *v4 = v5;
  v4[1] = sub_2322638D8;
  v6 = OUTLINED_FUNCTION_62_0();

  return sub_232267804(v6);
}

uint64_t sub_23226E394()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_232266A20();
}

uint64_t sub_23226E3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{
  *(a1 + 8) = sub_232269148;
  v2 = *(v1 + 16);
  return *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v3, a2);
  v5 = *(v4 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t a1@<X8>)
{
  v1[48] = a1;
  v1[49] = v2;
  v1[50] = 0;
  v4 = v1[45];
  v5 = v1[6];
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[6];
}

double OUTLINED_FUNCTION_32_0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

void OUTLINED_FUNCTION_40_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 72);
  return v2;
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t result)
{
  v1[44] = result;
  v3 = v1[2];
  v2 = v1[3];
  return result;
}

void OUTLINED_FUNCTION_52_0()
{

  JUMPOUT(0x2383841F0);
}

BOOL OUTLINED_FUNCTION_53_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = *(v3 + 16);
  v2[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_58_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_59_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = v1;
}

uint64_t OUTLINED_FUNCTION_61_0()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[14];
  return v0[16];
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t result)
{
  v1[35] = result;
  v3 = v1[2];
  v2 = v1[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_76_0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[14];
  return v0[18];
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
}

uint64_t OUTLINED_FUNCTION_81_0()
{
  *(v0 + 184) = v1;

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_91()
{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
}

void OUTLINED_FUNCTION_96(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_slowAlloc();
}

double sub_23226E88C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  sub_232400D48();
  return v1;
}

double sub_23226E908()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v2;
}

uint64_t sub_23226E954()
{
  v0 = *(OUTLINED_FUNCTION_2_3() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5();
}

double sub_23226E998()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v2;
}

uint64_t sub_23226E9E4()
{
  v0 = *(OUTLINED_FUNCTION_2_3() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5();
}

double sub_23226EA28()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v2;
}

uint64_t sub_23226EA74()
{
  v0 = *(OUTLINED_FUNCTION_2_3() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5();
}

double sub_23226EAB8()
{
  v0 = *(type metadata accessor for TextUnderstandingBookmarks() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v2;
}

uint64_t sub_23226EB04()
{
  v0 = *(OUTLINED_FUNCTION_2_3() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5();
}

uint64_t type metadata accessor for TextUnderstandingBookmarks()
{
  result = qword_2814C78D0;
  if (!qword_2814C78D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23226EB94()
{
  sub_23226ECD0();
  OUTLINED_FUNCTION_1_4();
  v0 = type metadata accessor for TextUnderstandingBookmarks();
  v1 = v0[5];
  sub_23226ECD0();
  sub_232400D68();
  v2 = v0[6];
  sub_23226ECD0();
  OUTLINED_FUNCTION_1_4();
  v3 = v0[7];
  sub_23226ECD0();
  sub_232400D68();
  v4 = v0[8];
  sub_23226ECD0();
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_23226ECD0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_23226ED7C(0xD00000000000003BLL, 0x8000000232419100);
  if (!result)
  {
    result = sub_232401508();
    __break(1u);
  }

  return result;
}

id sub_23226ED7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_232401168();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void sub_23226EE08()
{
  sub_23226EE80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23226EE80()
{
  if (!qword_2814C7C38)
  {
    v0 = sub_232400D78();
    if (!v1)
    {
      atomic_store(v0, &qword_2814C7C38);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return type metadata accessor for TextUnderstandingBookmarks();
}

void sub_23226EEE8()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultStore];
  v1 = [v0 meCard];

  if (!v1)
  {
    goto LABEL_5;
  }

  v11[0] = 0;
  v2 = [v1 contactsContactIdentifierWithError_];

  v3 = v11[0];
  if (!v2)
  {
    v8 = v11[0];
    v9 = sub_232400C18();

    swift_willThrow();
LABEL_5:
    qword_2814C7C28 = 0;
    qword_2814C7C30 = 0;
    goto LABEL_6;
  }

  v4 = sub_232401178();
  v6 = v5;
  v7 = v3;

  qword_2814C7C28 = v4;
  qword_2814C7C30 = v6;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23226F010()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 donationBlockedApps];

  v2 = sub_232401268();
  result = sub_23226F094(v2);
  qword_2814C7C10 = result;
  return result;
}

uint64_t sub_23226F094(uint64_t a1)
{
  result = MEMORY[0x238382890](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_232270B30(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_23226F154(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v1 subject];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    MEMORY[0x238382770](2570, 0xE200000000000000);
    v4 = [v2 textContent];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    OUTLINED_FUNCTION_6_1();

    v5 = OUTLINED_FUNCTION_0_6();
    v6 = sub_232279678(v5);
    MEMORY[0x238382730](v6);
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
    v7 = sub_232271428(v1, &selRef_textContent);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = [v1 subject];
      sub_232401178();

      OUTLINED_FUNCTION_1_5();
      MEMORY[0x238382770](v9, v10);

      v12 = OUTLINED_FUNCTION_0_6();
      v13 = sub_232279678(v12);
      MEMORY[0x238382730](v13);
      OUTLINED_FUNCTION_3_4();

      return OUTLINED_FUNCTION_5_1();
    }

    v2 = [v1 subject];
    sub_232401178();
    OUTLINED_FUNCTION_3_4();
  }

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_23226F2D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_232400D08();
  v5 = OUTLINED_FUNCTION_9_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  if (a1)
  {
    v21 = a1;
    v22 = [v21 textContent];
    v23 = sub_232401178();
    v25 = v24;

    v26 = MEMORY[0x238382790](v23, v25);

    if (v26 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_232400CD8();
      v28 = [v21 quotedRegions];
      v38 = v18;
      sub_232400CF8();

      sub_23226F5F4(v18, v15);
      v29 = *(v7 + 8);
      v30 = OUTLINED_FUNCTION_60();
      v29(v30);
      v31 = *(v7 + 32);
      v31(v20, v15, v2);
      v32 = [v21 tabularRegions];
      sub_232400CF8();

      sub_23226F5F4(v12, v15);
      (v29)(v12, v2);
      v33 = OUTLINED_FUNCTION_60();
      v29(v33);
      v31(v20, v15, v2);
      v34 = [v21 signatureRegions];
      sub_232400CF8();

      v35 = v39;
      sub_23226F5F4(v15, v39);

      (v29)(v15, v2);
      (v29)(v38, v2);
      v36 = OUTLINED_FUNCTION_60();
      v29(v36);
      return __swift_storeEnumTagSinglePayload(v35, 0, 1, v2);
    }
  }

  else
  {
    v37 = v39;

    return __swift_storeEnumTagSinglePayload(v37, 1, 1, v2);
  }

  return result;
}

uint64_t sub_23226F5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20[1] = a2;
  v5 = sub_232400D08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v20 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v20 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = *(v6 + 16);
  v17(v20 - v18, v3, v5);
  v17(v13, v3, v5);
  v17(v10, a1, v5);
  sub_232271774();
  sub_2324013F8();
  sub_2324013E8();
  return (*(v6 + 8))(v16, v5);
}

uint64_t sub_23226F7BC()
{
  v2 = sub_232400CC8();
  v3 = OUTLINED_FUNCTION_9_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 isMultilingual];

  if (v11 && (v12 = [v1 subject], sub_232401178(), v12, v13 = sub_2324011C8(), , v13 >= 51))
  {
    v14 = objc_opt_self();
    v15 = [v1 subject];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    v20[0] = v9;
    v20[1] = v13;
    sub_232401218();
    v16 = sub_232401168();

    v17 = [v14 detectLanguageFromTextHeuristically_];

    if (v17)
    {
      v18 = sub_232401178();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_232400CB8();
    v18 = sub_232400CA8();
    (*(v5 + 8))(v9, v0);
  }

  return v18;
}

id sub_23226F9D8()
{
  v0 = *MEMORY[0x277D41E50];
  sub_232401178();
  if (qword_2814C7C08 != -1)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v1, v2, v3))
  {

    return 0;
  }

  else
  {
    v5 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    v6 = sub_232401168();

    v4 = [v5 bundleIdentifierIsAllowedForSearchableItems_];
  }

  return v4;
}

uint64_t sub_23226FAC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91478, &unk_232418240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232417BB0;
  *(inited + 32) = [v1 fromHandle];
  v3 = sub_2322713CC(v1, &selRef_toHandles);
  v4 = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_12_1(v3);
  sub_23227B74C(v5);
  v6 = sub_2322713CC(v1, &selRef_ccHandles);
  v7 = OUTLINED_FUNCTION_12_1(v6);
  sub_23227B74C(v7);
  v8 = sub_2322713CC(v1, &selRef_bccHandles);
  v9 = OUTLINED_FUNCTION_12_1(v8);
  sub_23227B74C(v9);
  v10 = inited;
  v11 = sub_232252E38(inited);
  if (!v11)
  {

    return MEMORY[0x277D84F90];
  }

  v12 = v11;
  result = sub_2322708D8(0, v11 & ~(v11 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v4;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2383829D0](0, v10);
      }

      else
      {
        v15 = *(v10 + 32);
      }

      v16 = v15;
      v17 = [v15 handle];
      sub_232401178();

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2322708D8(v18 > 1, v19 + 1, 1);
      }

      OUTLINED_FUNCTION_10_0();
    }

    while (!v20);

    return v14;
  }

  __break(1u);
  return result;
}

void sub_23226FCA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v34 = sub_232400C98();
  v5 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814C7C20 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v8 = qword_2814C7C30;
  if (qword_2814C7C30 && (v9 = qword_2814C7C28, v10 = sub_232253088([v0 fromHandle], &selRef_contactIdentifier), v11))
  {
    if (v9 == v10 && v8 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_232401528();
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_23226FAC4();
  v15 = *MEMORY[0x277D41E50];
  v16 = sub_232401178();
  v18 = v17;
  if (([v0 respondsToSelector_] & 1) != 0 && (v19 = objc_msgSend(v0, sel_domainId)) != 0)
  {
    v20 = v19;
    v21 = sub_232401178();
    v33 = v22;
  }

  else
  {
    v21 = 0;
    v33 = 0;
  }

  if (*(v14 + 16) >> 16)
  {
    __break(1u);
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:0 donationCount:0 contactHandleCount:*(v14 + 16) flags:v13 & 1];
    v23 = [v0 uniqueId];
    v24 = sub_232401178();
    v26 = v25;

    [v0 absoluteTimestamp];
    sub_232400C28();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v34);

    v27 = sub_23226F7BC();
    v29 = v28;
    v30 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    sub_232253BEC(v16, v18, v21, v33, v24, v26, v7, v4, v14, v27, v29, v32, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
  }
}

uint64_t sub_23226FFDC()
{
  v1 = v0;
  v2 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v2, v3);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v4 = [v0 summary];
  sub_232401178();
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_6_1();

  OUTLINED_FUNCTION_1_5();
  v5 = [v1 content];
  sub_232401178();
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_6_1();

  v6 = OUTLINED_FUNCTION_0_6();
  v7 = sub_232279678(v6);
  MEMORY[0x238382730](v7);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_2322700EC()
{
  v1 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v1, v2);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v3 = [v0 content];
  sub_232401178();
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_6_1();

  v4 = OUTLINED_FUNCTION_0_6();
  v5 = sub_232279678(v4);
  MEMORY[0x238382730](v5);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_2322701C4()
{
  v1 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v1, v2);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v3 = sub_232271428(v0, &selRef_notes);
  v5 = OUTLINED_FUNCTION_2_4(v3, v4);
  if (v7)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x238382770](v5, v8);

  v9 = OUTLINED_FUNCTION_0_6();
  v10 = sub_232279678(v9);
  MEMORY[0x238382730](v10);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232270294()
{
  v1 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v1, v2);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v3 = sub_232271428(v0, &selRef_desc);
  OUTLINED_FUNCTION_2_4(v3, v4);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v5 = sub_232271428(v0, &selRef_comment);
  OUTLINED_FUNCTION_2_4(v5, v6);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v7 = sub_232271428(v0, &selRef_content);
  v9 = OUTLINED_FUNCTION_2_4(v7, v8);
  if (v11)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x238382770](v9, v12);

  v13 = OUTLINED_FUNCTION_0_6();
  v14 = sub_232279678(v13);
  MEMORY[0x238382730](v14);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232270448()
{
  if ([v0 contentIsReaderText])
  {
    v1 = sub_232271428(v0, &selRef_title);
    OUTLINED_FUNCTION_2_4(v1, v2);
    OUTLINED_FUNCTION_11_1();

    MEMORY[0x238382770](2570, 0xE200000000000000);
    v3 = [v0 content];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    OUTLINED_FUNCTION_6_1();

    v4 = OUTLINED_FUNCTION_0_6();
  }

  else
  {
    sub_232271428(v0, &selRef_title);
    v4 = 819200;
  }

  v5 = sub_232279678(v4);
  MEMORY[0x238382730](v5);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232270570(SEL *a1)
{
  v2 = [v1 *a1];
  sub_232401178();
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_2322705BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91478, &unk_232418240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232417BB0;
  *(inited + 32) = [v0 fromHandle];
  v2 = sub_2322713CC(v0, &selRef_toHandles);
  v3 = MEMORY[0x277D84F90];
  v4 = OUTLINED_FUNCTION_12_1(v2);
  sub_23227B74C(v4);
  v5 = sub_232252E38(inited);
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v15 = v3;
  result = sub_2322708D8(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v3;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383829D0](0, inited);
      }

      else
      {
        v9 = *(inited + 32);
      }

      v10 = v9;
      v11 = [v9 handle];
      sub_232401178();

      v15 = v3;
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2322708D8(v12 > 1, v13 + 1, 1);
      }

      OUTLINED_FUNCTION_10_0();
    }

    while (!v14);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_232270760()
{
  if (qword_2814C7C20 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v1 = qword_2814C7C30;
  if (qword_2814C7C30)
  {
    v2 = qword_2814C7C28;
    v3 = sub_232253088([v0 fromHandle], &selRef_contactIdentifier);
    if (v4)
    {
      if (v2 != v3 || v1 != v4)
      {
        sub_232401528();
      }
    }
  }

  sub_2322705BC();
  v6 = OUTLINED_FUNCTION_5_1();
  sub_2322714CC(v6, v7, v8);
  v10 = v9;

  return v10;
}

uint64_t sub_232270874(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_232417BC0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2322708D8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_232270918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2322708F8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_232270A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_232270918(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD915C0, &qword_232417E40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_23227B63C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_232270A18(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91488, &qword_232417E48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23227B65C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91490, &unk_232417E50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

BOOL sub_232270B30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2324015D8();
  sub_2324011B8();
  v9 = sub_232401608();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_232401528() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_232270ED8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_232270C7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91470, &qword_232417E38);
  result = sub_232401418();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_232270874(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2324015D8();
    sub_2324011B8();
    result = sub_232401608();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_232270ED8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_232270C7C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_232271198(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2324015D8();
      sub_2324011B8();
      result = sub_232401608();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_232401528() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_232271040();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_232401538();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_232271040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91470, &qword_232417E38);
  v2 = *v0;
  v3 = sub_232401408();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_232271198(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91470, &qword_232417E38);
  result = sub_232401418();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2324015D8();

        sub_2324011B8();
        result = sub_232401608();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2322713CC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_232271488();
  v4 = sub_232401268();

  return v4;
}

uint64_t sub_232271428(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_232401178();

  return v4;
}

unint64_t sub_232271488()
{
  result = qword_2814C7800;
  if (!qword_2814C7800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814C7800);
  }

  return result;
}

void sub_2322714CC(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_232400C98();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 content];
  sub_232401178();

  v15 = sub_2324011C8();

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v15))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v16 = sub_23227C038();
  if (v17)
  {
    v18 = v17;
    v36 = v16;
    if (([a1 respondsToSelector_] & 1) != 0 && (v19 = objc_msgSend(a1, sel_domainId)) != 0)
    {
      v20 = v19;
      v21 = sub_232401178();
      v34 = v22;
      v35 = v21;

      if (!a2)
      {
LABEL_7:
        LOWORD(v23) = 0;
LABEL_10:
        v24 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:v15 donationCount:0 contactHandleCount:v23 flags:a3 & 1];
        v25 = [a1 uniqueId];
        v26 = sub_232401178();
        v28 = v27;

        [a1 absoluteTimestamp];
        sub_232400C28();
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);

        v29 = sub_232279280();
        v31 = v30;
        v32 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
        sub_232253BEC(v36, v18, v35, v34, v26, v28, v13, v9, a2, v29, v31, v24, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, vars0, vars8);
        return;
      }
    }

    else
    {
      v34 = 0;
      v35 = 0;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v23 = *(a2 + 16);
    if (!(v23 >> 16))
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }
}

unint64_t sub_232271774()
{
  result = qword_27DD91480;
  if (!qword_27DD91480)
  {
    sub_232400D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD91480);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return swift_once();
}

uint64_t sub_232271804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_232273828(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_232271854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_232273828(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_232271B08()
{
  v1 = (v0 + OBJC_IVAR___PPSWStringDonation_uniqueId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232271B78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PPSWStringDonation_uniqueId);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232271BD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232271B78(v2, v3);
}

double sub_232271C8C()
{
  v1 = OBJC_IVAR___PPSWStringDonation_absoluteTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_232271CF4(double a1)
{
  v3 = OBJC_IVAR___PPSWStringDonation_absoluteTimestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_232271DCC()
{
  v1 = *(v0 + OBJC_IVAR___PPSWStringDonation_source);
  v2 = v1;
  return v1;
}

uint64_t sub_232271E58(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PPSWStringDonation_source);
  *(v1 + OBJC_IVAR___PPSWStringDonation_source) = a1;
  return MEMORY[0x2821F96F8]();
}

id sub_232271E84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_232401168();

  return v3;
}

uint64_t sub_232271ED4()
{
  v1 = *(v0 + OBJC_IVAR___PPSWStringDonation_extractionContent);
  v2 = *(v0 + OBJC_IVAR___PPSWStringDonation_extractionContent + 8);

  return v1;
}

void sub_232271F28(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_232401178();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232271FA0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___PPSWStringDonation_extractionContent);
  v4 = *(v2 + OBJC_IVAR___PPSWStringDonation_extractionContent + 8);
  *v3 = a1;
  v3[1] = a2;
}

unint64_t sub_23227253C()
{
  result = qword_2814C7820;
  if (!qword_2814C7820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD914B8, &qword_232417E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C7820);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id StringDonation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StringDonationConsumer.__allocating_init(topicStore:entityStore:locationStore:entityDissector:topicDissector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(v5);
  v11 = OUTLINED_FUNCTION_40_1();
  return sub_2322780EC(v11, a2, a3, 0, a4, a5);
}

id StringDonationConsumer.init()()
{
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = [objc_opt_self() defaultStore];
  v4 = [objc_opt_self() sharedInstance];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v0 initWithTopicStore:v1 entityStore:v2 locationStore:v3 entityDissector:v4 topicDissector:v5];

  return v6;
}

uint64_t sub_2322729F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_232272A18);
}

uint64_t sub_232272A18()
{
  v37 = v0;
  v1 = *(*(v0 + 16) + OBJC_IVAR___PPSWStringDonation_source);
  if (!v1)
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = sub_232401128();
    OUTLINED_FUNCTION_31_1(v11, qword_2814C8DC8);
    v12 = sub_232401108();
    v13 = sub_232401358();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23224A000, v12, v13, "StringDonationConsumer: encountered a sourceless donation", v14, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    goto LABEL_33;
  }

  v2 = v1;
  v3 = sub_232273BBC(v2);
  v5 = v4;
  v6 = *MEMORY[0x277D3A700];
  v7 = sub_232401178();
  if (!v5)
  {

    goto LABEL_19;
  }

  if (v3 == v7 && v5 == v8)
  {
  }

  else
  {
    v10 = sub_232401528();

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = [objc_opt_self() sharedInstance];
  v15 = [v5 notificationExtractionEnabled];

  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = [objc_opt_self() defaultPolicy];
  OUTLINED_FUNCTION_39_1();
  v18 = [v2 v17];
  if (!v18)
  {
    sub_232401178();
    sub_232401168();
    OUTLINED_FUNCTION_38_1();
  }

  v19 = [v5 bundleIdentifierIsAllowedForNotifications_];

  if ((v19 & 1) == 0)
  {
LABEL_23:
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = sub_232401128();
    OUTLINED_FUNCTION_31_1(v24, qword_2814C8DC8);
    v12 = sub_232401108();
    v25 = sub_232401368();
    if (!os_log_type_enabled(v12, v25))
    {
      goto LABEL_32;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_23224A000, v12, v25, "StringDonationConsumer: ignoring notification as notification consumption is not enabled either globally or for this bundle ID.", v26, 2u);
LABEL_31:
    OUTLINED_FUNCTION_30();
LABEL_32:

LABEL_33:
    goto LABEL_36;
  }

LABEL_19:
  v20 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_39_1();
  v22 = [v2 v21];
  if (!v22)
  {
    sub_232401178();
    sub_232401168();
    OUTLINED_FUNCTION_38_1();
  }

  v23 = [v5 bundleIdentifierIsEnabledForDonation_];

  if ((v23 & 1) == 0)
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = sub_232401128();
    OUTLINED_FUNCTION_31_1(v27, qword_2814C8DC8);
    v2 = v2;
    v12 = sub_232401108();
    v28 = sub_232401368();

    if (!os_log_type_enabled(v12, v28))
    {

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_97();
    v36 = OUTLINED_FUNCTION_21_0();
    *v23 = 136315138;
    v29 = [v2 bundleId];
    v30 = sub_232401178();
    v32 = v31;

    v33 = sub_23224ED04(v30, v32, &v36);

    *(v23 + 4) = v33;
    _os_log_impl(&dword_23224A000, v12, v28, "StringDonationConsumer: _donateNotificationFromLabeledStrings: ignoring notification string from %s due to settings.", v23, 0xCu);
    OUTLINED_FUNCTION_11_2();
    goto LABEL_31;
  }

LABEL_35:
LABEL_36:
  OUTLINED_FUNCTION_15();

  return v34();
}

uint64_t sub_232272F34(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_232272FF8;

  return sub_2322729F8(v6);
}

uint64_t sub_232272FF8()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2];
  v6 = *v0;
  OUTLINED_FUNCTION_19();
  *v7 = v6;

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_15();

  return v8();
}

uint64_t sub_23227313C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2324012B8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_232417F20;
  v10[5] = v9;
  sub_232273508(0, 0, v7, &unk_232417F30, v10);
}

id sub_2322732DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232273338(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_232264398;

  return v7();
}

uint64_t sub_232273420(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2322638D8;

  return v8();
}

uint64_t sub_232273508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_232276FE4(a3, v25 - v11, &qword_27DD91288, &qword_232417830);
  v13 = sub_2324012B8();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_232257C68(v12, &qword_27DD91288, &qword_232417830);
  }

  else
  {
    sub_2324012A8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_232401298();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_232401198() + 32;
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

      sub_232257C68(a3, &qword_27DD91288, &qword_232417830);

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

  sub_232257C68(a3, &qword_27DD91288, &qword_232417830);
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

unint64_t sub_2322737E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2324013A8();

  return sub_232273970(a1, v5);
}

unint64_t sub_232273828(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2324015D8();
  sub_2324011B8();
  v6 = sub_232401608();

  return sub_232273A48(a1, a2, v6);
}

unint64_t sub_2322738A0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2324015D8();
  MEMORY[0x238382B70](a1);
  sub_232401608();
  v4 = OUTLINED_FUNCTION_46_1();
  return sub_232273AFC(v4, v5);
}

unint64_t sub_232273904(unsigned __int16 a1)
{
  v3 = *(v1 + 40);
  sub_2324015D8();
  sub_2324015F8();
  v4 = sub_232401608();

  return sub_232273B5C(a1, v4);
}

unint64_t sub_232273970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2324013B8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_232273A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_232401528() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_232273AFC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_232273B5C(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_232273BBC(void *a1)
{
  v1 = [a1 groupId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232401178();

  return v3;
}

id sub_232273C20(char *a1, int a2, unsigned __int8 a3, uint64_t (*a4)(void), void *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v132 = a6;
  v134 = a5;
  v135 = a4;
  v133 = a2;
  ObjectType = swift_getObjectType();
  v13 = sub_232400CC8();
  v130 = *(v13 - 8);
  v131 = v13;
  v14 = *(v130 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v122 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v122 - v25;
  if (a1[OBJC_IVAR___PPSWStringDonation_shouldConsume] == 1)
  {
    v27 = *&a1[OBJC_IVAR___PPSWStringDonation_source];
    if (v27)
    {
      v129 = a8;
      v28 = v27;
      if ((v135)())
      {
        v128 = v26;
        v141 = MEMORY[0x277D84F90];
        v29 = swift_getObjectType();
        *&v136 = a1;
        v30 = a1;
        v31 = sub_2322538EC(&v136, a7, ObjectType, v29, &off_284754880);
        v33 = v32;

        if (v33)
        {
          v34 = v28;
          v125 = v31;
          LODWORD(v127) = a3;
          v35 = sub_232400D08();
          v36 = v128;
          v126 = v35;
          __swift_storeEnumTagSinglePayload(v128, 1, 1, v35);
          v139 = v30;
          v140 = &off_284754880;
          v37 = v30;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
          v39 = swift_dynamicCast();
          v124 = v38;
          v123 = v37;
          if (v39)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v136);
            v139 = v37;
            v140 = &off_284754880;
            v40 = v37;
            v41 = swift_dynamicCast();
            v42 = v134;
            if (v41)
            {
              v43 = v33;
              v44 = *(&v137 + 1);
              v45 = v138;
              __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
              v46 = *(v45 + 24);
              v47 = v44;
              v36 = v128;
              v48 = v45;
              v33 = v43;
              v49 = v34;
              v46(0, v47, v48);
              sub_232257C68(v36, &qword_27DD914C8, &unk_232417F50);
              __swift_destroy_boxed_opaque_existential_0Tm(&v136);
              v50 = v129;
            }

            else
            {
              sub_232257C68(v36, &qword_27DD914C8, &unk_232417F50);
              v136 = 0u;
              v137 = 0u;
              v138 = 0;
              sub_232257C68(&v136, &qword_27DD914E8, &qword_2324181A0);
              __swift_storeEnumTagSinglePayload(v24, 1, 1, v126);
              v50 = v129;
              v49 = v34;
            }

            v39 = sub_232277044(v24, v36);
          }

          else
          {
            v50 = v129;
            v42 = v134;
            v49 = v34;
          }

          v83 = v127;
          if ((v127 | 2) == 2)
          {
            v84 = *(v50 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector);
            if (v84)
            {
              v85 = v84;
              v127 = v33;
              v86 = sub_232401168();
              sub_232276FE4(v36, v21, &qword_27DD914C8, &unk_232417F50);
              v87 = v126;
              if (__swift_getEnumTagSinglePayload(v21, 1, v126) == 1)
              {
                v88 = 0;
              }

              else
              {
                v88 = sub_232400CE8();
                (*(*(v87 - 1) + 8))(v21, v87);
              }

              v89 = [v85 entitiesInPlainText:v86 eligibleRegions:v88 source:v49 cloudSync:v133 & 1];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v90 = sub_232401268();

              sub_232252D4C(v90);
              v36 = v128;
              v33 = v127;
            }
          }

          if (v135(v39))
          {
            if ((v83 - 1) < 2 && (v91 = *(v129 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector)) != 0)
            {
              v127 = v33;
              v92 = objc_opt_self();
              v126 = v91;
              v93 = [v92 sharedInstance];
              v94 = [v49 bundleId];
              if (!v94)
              {
                sub_232401178();
                v94 = sub_232401168();
              }

              sub_232263718(v49);
              if (v95)
              {
                v96 = sub_232401168();
              }

              else
              {
                v96 = 0;
              }

              v99 = [v93 extractionAlgorithmsForBundleId:v94 sourceLanguage:v96 conservative:0 domain:0];

              sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
              sub_232253ABC();
              v122[1] = sub_2324012F8();

              v100 = [v92 sharedInstance];
              v101 = [v49 bundleId];
              if (!v101)
              {
                sub_232401178();
                v101 = sub_232401168();
              }

              sub_232263718(v49);
              if (v102)
              {
                v103 = sub_232401168();
              }

              else
              {
                v103 = 0;
              }

              v104 = [v100 extractionAlgorithmsForBundleId:v101 sourceLanguage:v103 conservative:0 domain:1];

              sub_2324012F8();
              v105 = sub_232401168();

              v139 = v123;
              v140 = &off_284754880;
              v106 = v123;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
              v107 = swift_dynamicCast();
              if (v107)
              {
                __swift_destroy_boxed_opaque_existential_0Tm(&v136);
              }

              sub_232263718(v49);
              v108 = v134;
              if (v109 || (sub_232400CB8(), sub_232400CA8(), v111 = v110, (*(v130 + 8))(v16, v131), v111))
              {
                v112 = v108;
              }

              else
              {
                v112 = v108;
              }

              v113 = sub_232401168();

              v114 = sub_2324012E8();

              v115 = sub_2324012E8();

              v116 = v126;
              v117 = [v126 topicsInText:v105 isPlainText:v107 source:v49 cloudSync:v133 & 1 language:v113 topicAlgorithms:v114 namedEntityAlgorithms:1.0 weight:v115];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v118 = sub_232401268();

              sub_232252D4C(v118);
              v36 = v128;
              v42 = v112;
            }

            else
            {
            }

            v119 = v135;
            if (v135(v98))
            {
              sub_23225764C(v141, v119, v42, v132);
              v121 = v120;
              sub_232257C68(v128, &qword_27DD914C8, &unk_232417F50);

              return v121;
            }

            v97 = [objc_opt_self() interrupted];
          }

          else
          {

            v97 = [objc_opt_self() interrupted];
          }

          v82 = v97;

          sub_232257C68(v36, &qword_27DD914C8, &unk_232417F50);
          return v82;
        }

        if (qword_2814C7F68 != -1)
        {
          swift_once();
        }

        v71 = sub_232401128();
        __swift_project_value_buffer(v71, qword_2814C8DC8);
        v72 = v30;
        v73 = sub_232401108();
        v74 = sub_232401368();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *&v136 = v76;
          *v75 = 136315138;
          v77 = [v72 uniqueId];
          v78 = sub_232401178();
          v80 = v79;

          v81 = sub_23224ED04(v78, v80, &v136);

          *(v75 + 4) = v81;
          _os_log_impl(&dword_23224A000, v73, v74, "Consumer: ignoring item with no content with id %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          MEMORY[0x2383841F0](v76, -1, -1);
          MEMORY[0x2383841F0](v75, -1, -1);
        }

        v67 = [objc_opt_self() ignored];
      }

      else
      {
        v67 = [objc_opt_self() interrupted];
      }

      v82 = v67;

      return v82;
    }
  }

  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v51 = sub_232401128();
  __swift_project_value_buffer(v51, qword_2814C8DC8);
  v52 = a1;
  v53 = sub_232401108();
  v54 = sub_232401368();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v136 = v56;
    *v55 = 136315394;
    v57 = [v52 uniqueId];
    v58 = sub_232401178();
    v60 = v59;

    v61 = sub_23224ED04(v58, v60, &v136);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    v62 = *&v52[OBJC_IVAR___PPSWStringDonation_source];
    if (v62)
    {
      v63 = [v62 bundleId];
      v64 = sub_232401178();
      v66 = v65;
    }

    else
    {
      v66 = 0xEC00000044492065;
      v64 = 0x6C646E7542206F4ELL;
    }

    v68 = sub_23224ED04(v64, v66, &v136);

    *(v55 + 14) = v68;
    _os_log_impl(&dword_23224A000, v53, v54, "Consumer: ignoring ineligible item %s from %s.", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383841F0](v56, -1, -1);
    MEMORY[0x2383841F0](v55, -1, -1);
  }

  v69 = [objc_opt_self() ignored];

  return v69;
}

uint64_t dispatch thunk of StringDonationConsumer.consume(donation:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_36(v5);
  *v6 = v7;
  v6[1] = sub_2322638D8;

  return v9(v2);
}

uint64_t sub_232274E64()
{
  OUTLINED_FUNCTION_22();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_36(v4);
  *v5 = v6;
  v5[1] = sub_232264398;
  v7 = OUTLINED_FUNCTION_47();

  return v8(v7);
}

uint64_t sub_232274F0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_36(v5);
  *v6 = v7;
  v6[1] = sub_232264398;
  v8 = OUTLINED_FUNCTION_47();

  return v9(v8);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232275004(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_36(v7);
  *v8 = v9;
  v8[1] = sub_232264398;

  return sub_232273420(a1, v3, v4, v6);
}

uint64_t sub_2322750CC()
{
  OUTLINED_FUNCTION_22();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_36(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_48(v4);

  return v7(v6);
}

uint64_t sub_232275164()
{
  OUTLINED_FUNCTION_22();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_36(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_48(v4);

  return v7(v6);
}

void sub_2322752C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), uint64_t (*a22)(void), uint64_t a23)
{
  OUTLINED_FUNCTION_36_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v157 = v27;
  v162 = v29;
  v163 = v28;
  v31 = v30;
  v158 = v32;
  v34 = v33;
  v35 = a22;
  v160 = v36;
  v161 = a23;
  v37 = a21;
  ObjectType = swift_getObjectType();
  v39 = sub_232400CC8();
  v40 = OUTLINED_FUNCTION_5_2(v39, &a18);
  v155 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_6();
  v154 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v46 = OUTLINED_FUNCTION_70(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_10_1();
  v159 = v49;
  OUTLINED_FUNCTION_45_1();
  v51 = MEMORY[0x28223BE20](v50);
  v53 = &v147 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v147 - v54;
  v56 = swift_getObjectType();
  if (v37())
  {
    v57 = v35();
    if (v57)
    {
      v58 = v57;
      if ((v163)())
      {
        v167 = MEMORY[0x277D84F90];
        v164[0] = v34;
        v59 = v34;
        v60 = v56;
        v61 = v161;
        v62 = sub_2322538EC(v164, v26, ObjectType, v60, v161);
        v64 = v63;

        if (v64)
        {
          v153 = v58;
          v152 = v62;
          v65 = v31;
          sub_232400D08();
          OUTLINED_FUNCTION_8_1();
          v67 = v66;
          __swift_storeEnumTagSinglePayload(v68, v69, v70, v66);
          v165 = v59;
          v166 = v61;
          v71 = v59;
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
          v73 = OUTLINED_FUNCTION_2_5();
          v151 = v72;
          v150 = v71;
          if (v73)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v164);
            v165 = v71;
            v166 = v61;
            v74 = v71;
            v75 = OUTLINED_FUNCTION_2_5();
            v76 = v162;
            v77 = v159;
            if (v75)
            {
              OUTLINED_FUNCTION_50_0();
              v78(0, v61, v64);
              sub_232257C68(v55, &qword_27DD914C8, &unk_232417F50);
              __swift_destroy_boxed_opaque_existential_0Tm(v164);
            }

            else
            {
              sub_232257C68(v55, &qword_27DD914C8, &unk_232417F50);
              OUTLINED_FUNCTION_24_1();
              sub_232257C68(v164, &qword_27DD914E8, &qword_2324181A0);
              OUTLINED_FUNCTION_8_1();
              __swift_storeEnumTagSinglePayload(v110, v111, v112, v67);
            }

            v73 = sub_232277044(v53, v55);
          }

          else
          {
            v76 = v162;
            v77 = v159;
          }

          if ((v65 | 2) == 2)
          {
            v113 = *(v160 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector);
            if (v113)
            {
              v114 = v113;
              v115 = v64;
              v116 = sub_232401168();
              sub_232276FE4(v55, v77, &qword_27DD914C8, &unk_232417F50);
              if (__swift_getEnumTagSinglePayload(v77, 1, v67) == 1)
              {
                v117 = 0;
              }

              else
              {
                v117 = sub_232400CE8();
                (*(*(v67 - 8) + 8))(v77, v67);
              }

              v118 = [v114 entitiesInPlainText:v116 eligibleRegions:v117 source:v153 cloudSync:v158 & 1];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v61 = sub_232401268();

              sub_232252D4C(v61);
              v64 = v115;
            }
          }

          if (v163(v73))
          {
            if ((v65 - 1) >= 2)
            {

              v120 = v153;
            }

            else
            {
              v119 = *(v160 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector);
              v120 = v153;
              if (v119)
              {
                v149 = v64;
                v121 = objc_opt_self();
                v148 = v119;
                v122 = OUTLINED_FUNCTION_49_1();
                v123 = [v120 bundleId];
                if (!v123)
                {
                  sub_232401178();
                  v61 = v124;
                  v123 = sub_232401168();
                }

                sub_232263718(v120);
                if (v125)
                {
                  sub_232401168();
                  OUTLINED_FUNCTION_38_1();
                }

                else
                {
                  v61 = 0;
                }

                v127 = [v122 extractionAlgorithmsForBundleId:v123 sourceLanguage:v61 conservative:0 domain:0];

                v128 = sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
                sub_232253ABC();
                v159 = v128;
                OUTLINED_FUNCTION_43_0();
                v147 = sub_2324012F8();

                v129 = OUTLINED_FUNCTION_49_1();
                OUTLINED_FUNCTION_39_1();
                v131 = [v120 v130];
                if (!v131)
                {
                  sub_232401178();
                  v128 = v132;
                  v131 = sub_232401168();
                }

                sub_232263718(v120);
                v76 = v162;
                if (v133)
                {
                  sub_232401168();
                  OUTLINED_FUNCTION_38_1();
                }

                else
                {
                  v128 = 0;
                }

                v134 = [v121 extractionAlgorithmsForBundleId:v131 sourceLanguage:v128 conservative:0 domain:1];

                sub_2324012F8();
                v152 = sub_232401168();

                v165 = v150;
                v166 = v161;
                v135 = v150;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
                OUTLINED_FUNCTION_9_2();
                v136 = swift_dynamicCast();
                if (v136)
                {
                  __swift_destroy_boxed_opaque_existential_0Tm(v164);
                }

                sub_232263718(v120);
                if (!v137)
                {
                  v138 = v154;
                  sub_232400CB8();
                  sub_232400CA8();
                  (*(v155 + 8))(v138, v156);
                }

                v139 = sub_232401168();

                OUTLINED_FUNCTION_43_0();
                v140 = sub_2324012E8();

                OUTLINED_FUNCTION_43_0();
                v141 = sub_2324012E8();

                v142 = v148;
                v143 = v152;
                v144 = [v148 topicsInText:v152 isPlainText:v136 source:v120 cloudSync:v158 & 1 language:v139 topicAlgorithms:v140 namedEntityAlgorithms:1.0 weight:v141];

                sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
                OUTLINED_FUNCTION_46_1();
                v145 = sub_232401268();

                sub_232252D4C(v145);
              }

              else
              {
              }
            }

            v146 = v163;
            if (v163(v126))
            {
              sub_23225764C(v167, v146, v76, v157);
              sub_232257C68(v55, &qword_27DD914C8, &unk_232417F50);

              goto LABEL_59;
            }

            [objc_opt_self() interrupted];
          }

          else
          {

            [objc_opt_self() interrupted];
          }

          sub_232257C68(v55, &qword_27DD914C8, &unk_232417F50);
          goto LABEL_59;
        }

        if (qword_2814C7F68 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v100 = sub_232401128();
        __swift_project_value_buffer(v100, qword_2814C8DC8);
        v101 = v59;
        v102 = sub_232401108();
        v103 = sub_232401368();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = OUTLINED_FUNCTION_97();
          v105 = OUTLINED_FUNCTION_26_0();
          v164[0] = v105;
          *v104 = 136315138;
          v106 = [v101 uniqueId];
          sub_232401178();
          OUTLINED_FUNCTION_30_1();

          v107 = OUTLINED_FUNCTION_23_1();

          *(v104 + 4) = v107;
          OUTLINED_FUNCTION_15_0(&dword_23224A000, v108, v109, "Consumer: ignoring item with no content with id %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v105);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_7_2();
        }

        v94 = [objc_opt_self() ignored];
      }

      else
      {
        v94 = [objc_opt_self() interrupted];
      }

      v94;

LABEL_59:
      OUTLINED_FUNCTION_18_0();
      return;
    }
  }

  v79 = v35;
  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v80 = sub_232401128();
  OUTLINED_FUNCTION_31_1(v80, qword_2814C8DC8);
  v81 = v34;
  v82 = sub_232401108();
  v83 = sub_232401368();

  if (OUTLINED_FUNCTION_37_1())
  {
    swift_slowAlloc();
    v164[0] = OUTLINED_FUNCTION_34_1();
    *v56 = 136315394;
    v84 = [v81 uniqueId];
    v85 = sub_232401178();
    v87 = v86;

    sub_23224ED04(v85, v87, v164);

    OUTLINED_FUNCTION_25_1();
    v88 = v79();
    if (v88)
    {
      v89 = v88;
      v90 = [v88 bundleId];

      v91 = sub_232401178();
      v93 = v92;
    }

    else
    {
      v93 = 0xEC00000044492065;
      v91 = 0x6C646E7542206F4ELL;
    }

    v95 = sub_23224ED04(v91, v93, v164);

    *(v56 + 14) = v95;
    OUTLINED_FUNCTION_35_0(&dword_23224A000, v96, v83, "Consumer: ignoring ineligible item %s from %s.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_7_2();
  }

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v99 = v97;
}

void sub_2322760A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(void), uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  OUTLINED_FUNCTION_36_1();
  a20 = v26;
  a21 = v27;
  v171 = v28;
  v166 = v29;
  v173 = v30;
  v174 = v31;
  LODWORD(v168) = v32;
  v167 = v33;
  v35 = v34;
  v36 = a25;
  v172 = a26;
  v38 = a23;
  v37 = a24;
  v39 = a22;
  v170 = v40;
  ObjectType = swift_getObjectType();
  v42 = sub_232400CC8();
  v43 = OUTLINED_FUNCTION_5_2(v42, &a16);
  v164 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_6();
  v163 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v49 = OUTLINED_FUNCTION_70(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10_1();
  v169 = v52;
  OUTLINED_FUNCTION_45_1();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = v161 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = v161 - v57;
  v59 = swift_getObjectType();
  if (v39())
  {
    v60 = sub_2322718AC(v38, v37, v36);
    if (v60)
    {
      v61 = v60;
      if ((v173)())
      {
        v178 = MEMORY[0x277D84F90];
        v175[0] = v35;
        v62 = v35;
        v63 = ObjectType;
        v64 = v172;
        v65 = sub_2322538EC(v175, v171, v63, v59, v172);
        v67 = v66;

        if (v67)
        {
          v171 = v61;
          v68 = v168;
          v69 = sub_232400D08();
          v70 = v58;
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v71, v72, v73, v69);
          v176 = v62;
          v177 = v64;
          v74 = v62;
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
          OUTLINED_FUNCTION_9_2();
          v76 = swift_dynamicCast();
          v168 = v75;
          v162 = v74;
          if (v76)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v175);
            v176 = v74;
            v177 = v64;
            v77 = v74;
            OUTLINED_FUNCTION_9_2();
            if (swift_dynamicCast())
            {
              v78 = v175[4];
              __swift_project_boxed_opaque_existential_1(v175, v175[3]);
              v79 = *(v78 + 24);
              OUTLINED_FUNCTION_32_1();
              v80();
              v81 = v70;
              sub_232257C68(v70, &qword_27DD914C8, &unk_232417F50);
              __swift_destroy_boxed_opaque_existential_0Tm(v175);
            }

            else
            {
              v81 = v70;
              sub_232257C68(v70, &qword_27DD914C8, &unk_232417F50);
              OUTLINED_FUNCTION_24_1();
              sub_232257C68(v175, &qword_27DD914E8, &qword_2324181A0);
              OUTLINED_FUNCTION_8_1();
              __swift_storeEnumTagSinglePayload(v115, v116, v117, v69);
            }

            v114 = v169;
            v76 = sub_232277044(v56, v81);
          }

          else
          {
            v81 = v70;
            v114 = v169;
          }

          if ((v68 | 2) == 2)
          {
            v118 = *(v170 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector);
            if (v118)
            {
              v119 = v118;
              v120 = v65;
              v121 = sub_232401168();
              sub_232276FE4(v81, v114, &qword_27DD914C8, &unk_232417F50);
              if (__swift_getEnumTagSinglePayload(v114, 1, v69) == 1)
              {
                v122 = 0;
              }

              else
              {
                v122 = sub_232400CE8();
                (*(*(v69 - 8) + 8))(v114, v69);
              }

              v123 = OUTLINED_FUNCTION_27_1(&a19);
              v125 = [v123 v124];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v126 = sub_232401268();

              sub_232252D4C(v126);
              v65 = v120;
            }
          }

          v128 = v173;
          v127 = v174;
          if (v173(v76))
          {
            if ((v68 - 1) >= 2)
            {

              v129 = v171;
            }

            else
            {
              v129 = v171;
              v130 = *(v170 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector);
              if (v130)
              {
                v131 = objc_opt_self();
                v169 = v130;
                v132 = OUTLINED_FUNCTION_49_1();
                v133 = [v129 bundleId];
                if (!v133)
                {
                  sub_232401178();
                  v133 = sub_232401168();
                }

                v161[2] = v65;
                sub_232263718(v129);
                v161[3] = v67;
                if (v134)
                {
                  v135 = sub_232401168();
                }

                else
                {
                  v135 = 0;
                }

                v137 = [v132 extractionAlgorithmsForBundleId:v133 sourceLanguage:v135 conservative:0 domain:0];

                sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
                sub_232253ABC();
                OUTLINED_FUNCTION_43_0();
                v161[1] = sub_2324012F8();

                v138 = OUTLINED_FUNCTION_49_1();
                OUTLINED_FUNCTION_39_1();
                v140 = [v129 v139];
                if (!v140)
                {
                  sub_232401178();
                  v140 = sub_232401168();
                }

                sub_232263718(v129);
                v141 = v162;
                if (v142)
                {
                  v143 = sub_232401168();
                }

                else
                {
                  v143 = 0;
                }

                v144 = [v131 extractionAlgorithmsForBundleId:v140 sourceLanguage:v143 conservative:0 domain:1];

                sub_2324012F8();
                v145 = sub_232401168();

                v176 = v141;
                v177 = v172;
                v146 = v141;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
                OUTLINED_FUNCTION_9_2();
                v147 = swift_dynamicCast();
                if (v147)
                {
                  __swift_destroy_boxed_opaque_existential_0Tm(v175);
                }

                v148 = sub_232263718(v129);
                if (v149)
                {
                  v150 = v148;
                }

                else
                {
                  v151 = v163;
                  sub_232400CB8();
                  v150 = sub_232400CA8();
                  v153 = v152;
                  (*(v164 + 8))(v151, v165);
                  if (!v153)
                  {
                    v150 = 0;
                  }
                }

                sub_232401168();
                OUTLINED_FUNCTION_40_1();

                v154 = sub_2324012E8();

                v155 = sub_2324012E8();

                v156 = v169;
                v157 = [v169 topicsInText:v145 isPlainText:v147 source:v129 cloudSync:v167 & 1 language:v150 topicAlgorithms:v154 namedEntityAlgorithms:1.0 weight:v155];

                sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
                OUTLINED_FUNCTION_46_1();
                v158 = sub_232401268();

                sub_232252D4C(v158);
                v128 = v173;
                v127 = v174;
              }

              else
              {
              }
            }

            if (v128(v136))
            {
              v159 = OUTLINED_FUNCTION_47();
              sub_23225764C(v159, v160, v127, v166);
              sub_232257C68(v81, &qword_27DD914C8, &unk_232417F50);

              goto LABEL_61;
            }

            [objc_opt_self() interrupted];
          }

          else
          {

            [objc_opt_self() interrupted];
          }

          sub_232257C68(v81, &qword_27DD914C8, &unk_232417F50);
          goto LABEL_61;
        }

        if (qword_2814C7F68 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v104 = sub_232401128();
        __swift_project_value_buffer(v104, qword_2814C8DC8);
        v105 = v62;
        v106 = sub_232401108();
        v107 = sub_232401368();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = OUTLINED_FUNCTION_97();
          v109 = OUTLINED_FUNCTION_26_0();
          v175[0] = v109;
          *v108 = 136315138;
          v110 = [v105 uniqueId];
          sub_232401178();
          OUTLINED_FUNCTION_30_1();

          v111 = OUTLINED_FUNCTION_23_1();

          *(v108 + 4) = v111;
          OUTLINED_FUNCTION_15_0(&dword_23224A000, v112, v113, "Consumer: ignoring item with no content with id %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v109);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_7_2();
        }

        v98 = [objc_opt_self() ignored];
      }

      else
      {
        v98 = [objc_opt_self() interrupted];
      }

      v98;

LABEL_61:
      OUTLINED_FUNCTION_18_0();
      return;
    }
  }

  v82 = v38;
  v174 = v36;
  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v83 = sub_232401128();
  OUTLINED_FUNCTION_31_1(v83, qword_2814C8DC8);
  v84 = v35;
  v85 = sub_232401108();
  v86 = sub_232401368();

  if (OUTLINED_FUNCTION_37_1())
  {
    swift_slowAlloc();
    v87 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_44_0(v87);
    *v82 = 136315394;
    v88 = [v84 uniqueId];
    v89 = sub_232401178();
    v91 = v90;

    sub_23224ED04(v89, v91, v175);

    OUTLINED_FUNCTION_25_1();
    v92 = sub_2322718AC(v82, v37, v174);
    if (v92)
    {
      v93 = v92;
      v94 = [v92 bundleId];

      v95 = sub_232401178();
      v97 = v96;
    }

    else
    {
      v97 = 0xEC00000044492065;
      v95 = 0x6C646E7542206F4ELL;
    }

    v99 = sub_23224ED04(v95, v97, v175);

    *(v82 + 14) = v99;
    OUTLINED_FUNCTION_35_0(&dword_23224A000, v100, v86, "Consumer: ignoring ineligible item %s from %s.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_7_2();
  }

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v103 = v101;
}

uint64_t sub_232276FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_69_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232277044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x2383841F0);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_16_1(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_17_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_38_1()
{
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_49_1()
{

  return [v0 (v1 + 744)];
}

void *OUTLINED_FUNCTION_50_0()
{
  v1 = *(v0 - 128);
  result = __swift_project_boxed_opaque_existential_1((v0 - 160), *(v0 - 136));
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_2322772A0(uint64_t a1)
{
  result = sub_2322773A8(&unk_2814C7780, type metadata accessor for PPNamedEntityAlgorithm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2322772F8(uint64_t a1)
{
  result = sub_2322773A8(&qword_2814C77E8, type metadata accessor for PPTopicAlgorithm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_232277350(uint64_t a1)
{
  result = sub_2322773A8(&qword_2814C77C0, type metadata accessor for PPLocationAlgorithm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2322773A8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2322773F0()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_5(v1, *MEMORY[0x277D85DE8], v16, v18, v20, v21, v22, v23, v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914F0, &qword_2324180A8);
  type metadata accessor for PPNamedEntityAlgorithm(0);
  OUTLINED_FUNCTION_2_6(v2, v3, v4, v5, v6, v7, v8, v9, v17, v19);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_23227762C(v0);
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
      v11 = sub_232401248();

      v12 = OUTLINED_FUNCTION_0_7();
      v14 = [v12 v13];

      result = 0;
      if (!v14)
      {
        OUTLINED_FUNCTION_4_4();

        result = swift_willThrow();
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232277520(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_232401498();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_2322533B0(v3, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91490, &unk_232417E50);
    sub_232277A74();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_232401478();
    v4 = *(v7 + 16);
    sub_2324014A8();
    sub_2324014B8();
    sub_232401488();
    v3 += 40;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_23227762C(uint64_t a1)
{
  v17 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_232401498();
  v3 = a1 + 32;
  if (!v2)
  {
    return v17;
  }

  while (1)
  {
    sub_2322533B0(v3, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91490, &unk_232417E50);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
    OUTLINED_FUNCTION_2_6(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_232401478();
    v12 = *(v17 + 16);
    sub_2324014A8();
    sub_2324014B8();
    sub_232401488();
    v3 += 40;
    if (!--v2)
    {
      return v17;
    }
  }

  return 0;
}

id sub_23227774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_232277B1C(a1, a2, a3, a4, &selRef_deleteAllNamedEntitiesFromSourcesWithBundleId_documentIds_deletedCount_error_, &selRef_deleteAllNamedEntitiesFromSourcesWithBundleId_groupIds_deletedCount_error_, &selRef_deleteAllNamedEntitiesFromSourcesWithBundleId_deletedCount_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2322777B0()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_5(v1, *MEMORY[0x277D85DE8], v16, v18, v20, v21, v22, v23, v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914F0, &qword_2324180A8);
  type metadata accessor for PPTopicAlgorithm(0);
  OUTLINED_FUNCTION_2_6(v2, v3, v4, v5, v6, v7, v8, v9, v17, v19);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_23227762C(v0);
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
      v11 = sub_232401248();

      v12 = OUTLINED_FUNCTION_0_7();
      v14 = [v12 v13];

      result = 0;
      if (!v14)
      {
        OUTLINED_FUNCTION_4_4();

        result = swift_willThrow();
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2322778E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_232277B1C(a1, a2, a3, a4, &selRef_deleteAllTopicsFromSourcesWithBundleId_documentIds_deletedCount_error_, &selRef_deleteAllTopicsFromSourcesWithBundleId_groupIds_deletedCount_error_, &selRef_deleteAllTopicsFromSourcesWithBundleId_deletedCount_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_232277948()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_5(v1, *MEMORY[0x277D85DE8], v8, v9, v10, v11, v12, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914F0, &qword_2324180A8);
  type metadata accessor for PPLocationAlgorithm(0);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_232277520(v0);
    if (result)
    {
      sub_232277A74();
      v3 = sub_232401248();

      v4 = OUTLINED_FUNCTION_0_7();
      v6 = [v4 v5];

      result = 0;
      if (!v6)
      {
        OUTLINED_FUNCTION_4_4();

        result = swift_willThrow();
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_232277A74()
{
  result = qword_2814C77F0;
  if (!qword_2814C77F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814C77F0);
  }

  return result;
}

id sub_232277AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_232277B1C(a1, a2, a3, a4, &selRef_deleteAllLocationsFromSourcesWithBundleId_documentIds_deletedCount_error_, &selRef_deleteAllLocationsFromSourcesWithBundleId_groupIds_deletedCount_error_, &selRef_deleteAllLocationsFromSourcesWithBundleId_deletedCount_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_232277B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6, SEL *a7)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = sub_232401168();
    v10 = sub_232401248();
    v20[0] = 0;
    v11 = [v7 *a5];
  }

  else
  {
    if (a3)
    {
      v15 = sub_232401168();
      v16 = sub_232401248();
      v20[0] = 0;
      v9 = [v7 *a6];

      v12 = v20[0];
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_7:
      v17 = v12;
      OUTLINED_FUNCTION_4_4();

      result = swift_willThrow();
      goto LABEL_8;
    }

    v9 = sub_232401168();
    v20[0] = 0;
    v11 = [v7 *a7];
  }

  v12 = v20[0];
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_4:
  result = v12;
LABEL_8:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_232400C18();
}

uint64_t SpotlightAttributes.init(score:featureVector:featureVectorVersion:scoredNamedEntities:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_232277D04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_232277D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232277D9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    v8 = v5 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
    {

      return 4;
    }

    else
    {
      OUTLINED_FUNCTION_3_6();
      v10 = a1 == 0xD000000000000016 && v9 == a2;
      if (v10 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
      {

        return 5;
      }

      else
      {
        OUTLINED_FUNCTION_2_7();
        v12 = v5 && a2 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
        {

          return 15;
        }

        else
        {
          OUTLINED_FUNCTION_3_6();
          if (a1 == 0xD000000000000012 && v13 == a2)
          {

            return 16;
          }

          else
          {
            v15 = OUTLINED_FUNCTION_0_3();

            if (v15)
            {
              return 16;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_232277ED0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_7();
  v6 = v6 && v4 == v5;
  if (v6 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_3_6();
    v9 = a1 == 0xD000000000000018 && v8 == a2;
    if (v9 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
    {

      return 6;
    }

    else
    {
      OUTLINED_FUNCTION_3_6();
      if (a1 == 0xD000000000000012 && v10 == a2)
      {

        return 10;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_0_3();

        if (v12)
        {
          return 10;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t sub_232277FB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_6();
  v5 = v3 == 0xD000000000000012 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_0_3() & 1) != 0))
  {

    return 11;
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    v8 = v5 && a2 == 0xE700000000000000;
    if (v8 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_1_8();
      v10 = v5 && a2 == v9;
      if (v10 || (OUTLINED_FUNCTION_0_3() & 1) != 0)
      {

        return 4;
      }

      else
      {
        OUTLINED_FUNCTION_3_6();
        if (v6 == 0xD000000000000016 && v11 == a2)
        {

          return 5;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_0_3();

          if (v13)
          {
            return 5;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

id sub_2322780EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicStoreOverride] = a1;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityStoreOverride] = a2;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_locationStoreOverride] = a3;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_writebackDissector] = a4;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector] = a5;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector] = a6;
  v8.receiver = v6;
  v8.super_class = type metadata accessor for Consumer();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_232278168()
{
  v30[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23224F160();
  if (v0)
  {
    v1 = v0;
    v2 = sub_232401168();
    v9 = OUTLINED_FUNCTION_2_8(v2, sel_deleteAllTopicsFromSourcesWithBundleId_deletedCount_error_, v3, v4, v5, v6, v7, v8, 0);

    v10 = v30[0];
    if (!v9)
    {
      goto LABEL_10;
    }

    v11 = v30[0];
  }

  v12 = sub_23224FDAC();
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = sub_232401168();
  v21 = OUTLINED_FUNCTION_2_8(v14, sel_deleteAllNamedEntitiesFromSourcesWithBundleId_deletedCount_error_, v15, v16, v17, v18, v19, v20, 0);

  v10 = v30[0];
  if (!v21)
  {
LABEL_10:
    v27 = v10;
    sub_232400C18();

    goto LABEL_12;
  }

  v22 = v30[0];
LABEL_7:
  result = sub_23224FDC0();
  if (result)
  {
    v24 = result;
    v25 = sub_232401168();
    v30[0] = 0;
    v26 = [v24 deleteAllLocationsFromSourcesWithBundleId:v25 deletedCount:0 error:v30];

    if (v26)
    {
      result = v30[0];
      goto LABEL_13;
    }

    v28 = v30[0];
    sub_232400C18();

LABEL_12:
    result = swift_willThrow();
  }

LABEL_13:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2322782FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

id sub_23227833C(uint64_t a1, unint64_t a2)
{
  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v4 = sub_232401128();
  __swift_project_value_buffer(v4, qword_2814C8DC8);

  v5 = sub_232401108();
  v6 = sub_232401368();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23224ED04(a1, a2, &v10);
    _os_log_impl(&dword_23224A000, v5, v6, "Consumer: beginning deletion from from %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2383841F0](v8, -1, -1);
    MEMORY[0x2383841F0](v7, -1, -1);
  }

  return sub_232278168();
}

uint64_t sub_232278638(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_232401178();
  v2(v3);
}

void sub_232278688(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v45[1] = *MEMORY[0x277D85DE8];
  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v9 = sub_232401128();
  __swift_project_value_buffer(v9, qword_2814C8DC8);

  v10 = sub_232401108();
  v11 = sub_232401368();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45[0] = v13;
    *v12 = 134218242;
    *(v12 + 4) = *(a3 + 16);

    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_23224ED04(a1, a2, v45);
    _os_log_impl(&dword_23224A000, v10, v11, "Consumer: beginning deletion from %ld documents from %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2383841F0](v13, -1, -1);
    MEMORY[0x2383841F0](v12, -1, -1);
  }

  else
  {
  }

  sub_23224EE94(v14);
  v15 = sub_23224F160();
  if (v15)
  {
    v16 = v15;
    v17 = sub_232401168();
    v18 = sub_232401248();
    v45[0] = 0;
    v19 = [v16 deleteAllTopicsFromSourcesWithBundleId:v17 documentIds:v18 deletedCount:0 error:v45];

    v20 = v45[0];
    if (!v19)
    {
      goto LABEL_17;
    }

    v21 = v45[0];
  }

  v22 = sub_23224FDAC();
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v22;
  v24 = sub_232401168();
  v25 = sub_232401248();
  v45[0] = 0;
  v26 = [v23 deleteAllNamedEntitiesFromSourcesWithBundleId:v24 documentIds:v25 deletedCount:0 error:v45];

  v20 = v45[0];
  if (!v26)
  {
LABEL_17:
    v36 = v20;

    v37 = sub_232400C18();

LABEL_20:
    swift_willThrow();
    v39 = *a5;
    *a5 = v37;
    v40 = v37;

    v41 = sub_232401108();
    v42 = sub_232401348();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23224A000, v41, v42, "Consumer: failed to delete data on request to delete by group IDs from ", v43, 2u);
      MEMORY[0x2383841F0](v43, -1, -1);
    }

    goto LABEL_23;
  }

  v27 = v45[0];
LABEL_12:
  v28 = sub_23224FDC0();
  if (!v28)
  {

LABEL_23:
    v44 = *MEMORY[0x277D85DE8];
    return;
  }

  v29 = v28;
  v30 = sub_232401168();
  v31 = sub_232401248();

  v45[0] = 0;
  v32 = [v29 deleteAllLocationsFromSourcesWithBundleId:v30 documentIds:v31 deletedCount:0 error:v45];

  v33 = v45[0];
  if ((v32 & 1) == 0)
  {
    v38 = v45[0];
    v37 = sub_232400C18();

    goto LABEL_20;
  }

  v34 = *MEMORY[0x277D85DE8];

  v35 = v33;
}

uint64_t sub_232278AE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_232401178();
  v5 = v4;
  v6 = sub_2324012F8();
  v2(v3, v5, v6);
}

id Consumer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Consumer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Consumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232278CE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_232278D48(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_23227833C(a1, a2);
}

uint64_t sub_232278D50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_232278D80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id OUTLINED_FUNCTION_2_8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

id sub_232278DD0()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_10_2())
  {
    v1 = MEMORY[0x277D41E50];
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_10_2())
    {
      v1 = MEMORY[0x277D41E60];
    }

    else
    {
      objc_opt_self();
      v2 = OUTLINED_FUNCTION_10_2();
      v1 = MEMORY[0x277D41E68];
      if (!v2)
      {
        v1 = MEMORY[0x277D41E88];
      }
    }
  }

  v3 = *v1;
  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v4 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v4, v5, v6))
  {

    return 0;
  }

  else
  {
    v8 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v9 = OUTLINED_FUNCTION_7_3();
    v7 = [v9 v10];
  }

  return v7;
}

id sub_232278F00()
{
  objc_opt_self();
  v1 = OUTLINED_FUNCTION_10_2();
  v2 = MEMORY[0x277D41E60];
  if (v1)
  {
    v2 = MEMORY[0x277D41E50];
  }

  v3 = *v2;
  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v4 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v4, v5, v6))
  {

    return 0;
  }

  else
  {
    v8 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v9 = OUTLINED_FUNCTION_7_3();
    v7 = [v9 v10];
  }

  return v7;
}

id sub_232278FF0()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_10_2())
  {
    v1 = MEMORY[0x277D41E50];
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_10_2())
    {
      v1 = MEMORY[0x277D41E60];
    }

    else
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_10_2())
      {
        v1 = MEMORY[0x277D41E68];
      }

      else
      {
        objc_opt_self();
        v2 = OUTLINED_FUNCTION_10_2();
        v1 = MEMORY[0x277D41E88];
        if (!v2)
        {
          v1 = MEMORY[0x277D41E80];
        }
      }
    }
  }

  v3 = *v1;
  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v4 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v4, v5, v6))
  {

    return 0;
  }

  else
  {
    v8 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v9 = OUTLINED_FUNCTION_7_3();
    v7 = [v9 v10];
  }

  return v7;
}

id sub_232279140()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_10_2())
  {
    v1 = MEMORY[0x277D41E50];
  }

  else
  {
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_10_2();
    v1 = MEMORY[0x277D41E60];
    if (!v2)
    {
      v1 = MEMORY[0x277D41E68];
    }
  }

  v3 = *v1;
  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v4 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v4, v5, v6))
  {

    return 0;
  }

  else
  {
    v8 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v9 = OUTLINED_FUNCTION_7_3();
    v7 = [v9 v10];
  }

  return v7;
}

uint64_t sub_232279280()
{
  v1 = sub_232400CC8();
  v2 = OUTLINED_FUNCTION_40(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_67();
  v9 = v8 - v7;
  v10 = [v0 content];
  sub_232401178();

  v11 = sub_2324011C8();

  if (v11 < 51)
  {
    sub_232400CB8();
    v17 = sub_232400CA8();
    (*(v4 + 8))(v9, v1);
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v0 content];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    v14 = sub_232279678(500);
    MEMORY[0x238382730](v14);
    OUTLINED_FUNCTION_7_1();

    v15 = sub_232401168();

    v16 = [v12 detectLanguageFromTextHeuristically_];

    if (v16)
    {
      v17 = sub_232401178();
    }

    else
    {
      return 0;
    }
  }

  return v17;
}

uint64_t sub_2322794D4(void (*a1)(void))
{
  v2 = sub_232400CC8();
  v3 = OUTLINED_FUNCTION_40(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_67();
  v10 = v9 - v8;
  a1();
  v11 = sub_2324011C8();

  if (v11 < 51)
  {
    sub_232400CB8();
    v16 = sub_232400CA8();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v12 = objc_opt_self();
    a1();
    v13 = sub_232279678(500);
    MEMORY[0x238382730](v13);
    OUTLINED_FUNCTION_7_1();

    v14 = sub_232401168();

    v15 = [v12 detectLanguageFromTextHeuristically_];

    if (v15)
    {
      v16 = sub_232401178();
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

uint64_t sub_232279678(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2324011D8();
    v1 = sub_232401228();

    return v1;
  }

  return result;
}

void sub_232279738()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = objc_allocWithZone(type metadata accessor for StructuredConsumer());
  v4 = OUTLINED_FUNCTION_18_1();
  sub_2322797E4(v4, v5, v2);
  qword_2814C8DC0 = v6;
}

void sub_2322797E4(void *a1, void *a2, void *a3)
{
  v6 = sub_232400D88();
  v7 = OUTLINED_FUNCTION_40(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v28 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = objc_opt_self();
  v31 = a3;
  v30 = a1;
  v29 = a2;
  v17 = [v16 sharedInstance];
  v18 = [objc_opt_self() sharedInstance];
  v19 = sub_2322780EC(a1, a2, a3, 0, v17, v18);
  v20 = *(v9 + 104);
  v20(v15, *MEMORY[0x277D3A208], v6);
  sub_23227C6A4();
  LOBYTE(v17) = sub_232400DA8();
  v21 = *(v9 + 8);
  v21(v15, v6);
  if (v17 & 1) != 0 && (v22 = v28, v20(v28, *MEMORY[0x277D3A210], v6), v23 = sub_232400DA8(), v21(v22, v6), (v23))
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = sub_232401128();
    __swift_project_value_buffer(v24, qword_2814C8DC8);
    v25 = sub_232401108();
    v26 = sub_232401368();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23224A000, v25, v26, "StructuredConsumer: TextUnderstanding flags enabled, not registering for interactions.", v27, 2u);
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    v25 = [objc_opt_self() defaultCoordinator];
    [v25 registerInteractionConsumer:v19 levelOfService:3];
  }

  OUTLINED_FUNCTION_18_0();
}

id sub_232279AE0(_DWORD *a1)
{
  v148 = *MEMORY[0x277D85DE8];
  v3 = sub_232400C98();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_67();
  v7 = v6 - v5;
  v143 = sub_232400CC8();
  v8 = OUTLINED_FUNCTION_40(v143);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_67();
  v142 = v14 - v13;
  v15 = [a1 interaction];
  v16 = [v15 intent];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v139 = v7;
    v19 = OUTLINED_FUNCTION_4_6();
    if ((sub_2322519D0(v19) & 1) == 0)
    {
      v40 = [objc_opt_self() ignored];

LABEL_83:
      v122 = *MEMORY[0x277D85DE8];
      return v40;
    }

    v20 = sub_23227BA50(v18);
    v136 = a1;
    v137 = v16;
    v138 = v18;
    if (v20)
    {
      v21 = v20;
      v140 = v10;
      v22 = sub_232252E40(v20);
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      while (v22 != v23)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x2383829D0](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v25 = *(v21 + 8 * v23 + 32);
        }

        v26 = v25;
        a1 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v27 = sub_23227BB24(v25, &selRef_namedEntities);

        ++v23;
        if (v27)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_23227B410(0, v24[2] + 1, 1, v24);
          }

          v29 = v24[2];
          v28 = v24[3];
          if (v29 >= v28 >> 1)
          {
            v30 = OUTLINED_FUNCTION_14_1(v28);
            v24 = sub_23227B410(v30, v31, v32, v24);
          }

          v24[2] = v29 + 1;
          v24[v29 + 4] = v27;
          v23 = a1;
        }
      }

      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      v146 = MEMORY[0x277D84F90];
      v43 = v24[2];
      while (v43 != v41)
      {
        if (v41 >= v24[2])
        {
          goto LABEL_90;
        }

        a1 = (v41 + 1);
        v44 = v24[v41 + 4];

        sub_23227B778(v45);
        v41 = a1;
      }

      v46 = v146;
      v47 = v146[2];
      if (v47)
      {
        v145 = v42;
        sub_232401498();
        v48 = 0;
        v141 = (v140 + 8);
        v49 = (v146 + 6);
        while (v48 < v46[2])
        {
          v51 = *(v49 - 2);
          v50 = *(v49 - 1);
          v52 = *v49;
          v49 += 3;
          swift_bridgeObjectRetain_n();
          v53 = v52;
          sub_232400CB8();
          sub_232400CA8();
          (*v141)(v142, v143);
          v54 = objc_allocWithZone(MEMORY[0x277D3A420]);
          v55 = sub_23227AEF8(v51, v50, 6);
          v146 = 0;
          v147 = 1;
          MEMORY[0x238382860](v53, &v146);
          OUTLINED_FUNCTION_16_2();
          ++v48;
          [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v55 score:v1];

          sub_232401478();
          a1 = *(v145 + 16);
          sub_2324014A8();
          sub_2324014B8();
          sub_232401488();
          if (v47 == v48)
          {

            v56 = v145;
            goto LABEL_35;
          }
        }

        goto LABEL_94;
      }

      v56 = MEMORY[0x277D84F90];
LABEL_35:
      v16 = v137;
      v18 = v138;
    }

    else
    {
      v56 = MEMORY[0x277D84F90];
    }

    v57 = sub_23227BA50(v18);
    if (v57)
    {
      v58 = v57;
      v144 = v56;
      v59 = sub_232252E40(v57);
      v60 = 0;
      v61 = MEMORY[0x277D84F90];
      while (v59 != v60)
      {
        if ((v58 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x2383829D0](v60, v58);
        }

        else
        {
          if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_92;
          }

          v62 = *(v58 + 8 * v60 + 32);
        }

        v63 = v62;
        v64 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_91;
        }

        v65 = sub_23227BB24(v62, &selRef_topics);

        ++v60;
        if (v65)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_23227B410(0, v61[2] + 1, 1, v61);
          }

          v67 = v61[2];
          v66 = v61[3];
          if (v67 >= v66 >> 1)
          {
            v68 = OUTLINED_FUNCTION_14_1(v66);
            v61 = sub_23227B410(v68, v69, v70, v61);
          }

          v61[2] = v67 + 1;
          v61[v67 + 4] = v65;
          v60 = v64;
        }
      }

      v71 = 0;
      v72 = MEMORY[0x277D84F90];
      v146 = MEMORY[0x277D84F90];
      v73 = v61[2];
      v16 = v137;
      v18 = v138;
      while (v73 != v71)
      {
        if (v71 >= v61[2])
        {
          goto LABEL_93;
        }

        v74 = v71 + 1;
        v75 = v61[v71 + 4];

        sub_23227B778(v76);
        v71 = v74;
      }

      v77 = v146;
      a1 = v146[2];
      if (a1)
      {
        sub_232401498();
        sub_232252D0C(0, &qword_27DD91250, 0x277D3A530);
        v78 = (v77 + 6);
        do
        {
          v79 = *(v78 - 2);
          v80 = *(v78 - 1);
          v81 = *v78;
          v78 += 3;
          swift_bridgeObjectRetain_n();
          v82 = v81;
          v83 = sub_232261EAC();
          v146 = 0;
          v147 = 1;
          MEMORY[0x238382860](v82, &v146);
          OUTLINED_FUNCTION_16_2();
          [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v83 score:v1];

          sub_232401478();
          v84 = *(v72 + 16);
          sub_2324014A8();
          sub_2324014B8();
          sub_232401488();
          a1 = (a1 - 1);
        }

        while (a1);

        v85 = v72;
        v16 = v137;
        v18 = v138;
      }

      else
      {

        v85 = MEMORY[0x277D84F90];
      }

      v56 = v144;
    }

    else
    {
      v85 = MEMORY[0x277D84F90];
    }

    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v86 = sub_232401128();
    v87 = __swift_project_value_buffer(v86, qword_2814C8DC8);

    v88 = v16;
    v89 = sub_232401108();
    v90 = sub_232401368();
    if (os_log_type_enabled(v89, v90))
    {
      a1 = OUTLINED_FUNCTION_26_0();
      *a1 = 134218496;
      *(a1 + 1) = sub_232252E38(v56);

      v16 = 2048;
      *(a1 + 6) = 2048;
      *(a1 + 14) = sub_232252E38(v85);

      *(a1 + 11) = 2048;
      v91 = sub_23227BA50(v18);
      if (v91)
      {
        v16 = v91;
        v92 = sub_232252E38(v91);
      }

      else
      {
        v92 = 0;
      }

      *(a1 + 3) = v92;
      v93 = v88;

      _os_log_impl(&dword_23224A000, v89, v90, "StructuredConsumer: identified %ld entities and %ld topics in %ld Podcasts items", a1, 0x20u);
      OUTLINED_FUNCTION_54();
    }

    else
    {

      v93 = v88;
      v89 = v88;
    }

    v94 = v56;

    v95 = *MEMORY[0x277D41E78];
    sub_232401178();
    OUTLINED_FUNCTION_12_2();
    sub_23227BAC0(v136);
    OUTLINED_FUNCTION_7_1();
    v96 = [v136 uniqueId];
    v97 = sub_232401178();
    v99 = v98;

    [v136 absoluteTimestamp];
    sub_232400C28();
    v100 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    v101 = OUTLINED_FUNCTION_18_1();
    v103 = sub_23227AF88(v101, v102, a1, v16, v97, v99, v139);
    if (sub_232252E40(v94))
    {
      v104 = sub_23224FDAC();
      if (v104)
      {
        v105 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
        v106 = sub_232401248();
        v146 = 0;
        v107 = [v105 donateNamedEntities:v106 source:v103 algorithm:13 cloudSync:0 sentimentScore:&v146 error:0.0];

        if (!v107)
        {
          v115 = v146;

LABEL_85:

          v123 = sub_232400C18();

          swift_willThrow();
          v124 = v123;
          v125 = v87;
          v126 = sub_232401108();
          v127 = sub_232401348();

          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = OUTLINED_FUNCTION_26_0();
            v146 = v129;
            *v128 = 136315138;
            swift_getErrorValue();
            v130 = sub_232401588();
            v125 = v131;
            v132 = sub_23224ED04(v130, v131, &v146);

            *(v128 + 4) = v132;
            _os_log_impl(&dword_23224A000, v126, v127, "StructuredConsumer: failed to write podcast entities to the database: %s", v128, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v129);
            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_54();
          }

          objc_opt_self();
          OUTLINED_FUNCTION_9_3();
          v133 = sub_232400C08();
          v134 = [v125 failedWithError_];

          v135 = *MEMORY[0x277D85DE8];
          return v134;
        }

        v108 = v146;
      }

      v109 = sub_23224F160();
      if (v109)
      {
        v110 = v109;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
        v111 = sub_232401248();

        v146 = 0;
        v112 = [v110 donateTopics:v111 source:v103 algorithm:8 cloudSync:0 sentimentScore:0 exactMatchesInSourceText:&v146 error:0.0];

        v113 = v146;
        if (!v112)
        {
LABEL_84:
          v115 = v113;
          goto LABEL_85;
        }

        v114 = v146;
      }

      else
      {
      }

      v116 = sub_23224FDAC();
      if (v116)
      {
        v117 = v116;
        v146 = 0;
        v118 = [v116 flushDonationsWithError_];

        v113 = v146;
        if (v118)
        {
          v119 = v146;
          goto LABEL_82;
        }

        goto LABEL_84;
      }
    }

    else
    {
    }

LABEL_82:
    v120 = objc_opt_self();
    sub_232252E38(v94);

    v121 = sub_232401318();
    v40 = [v120 successWithNumberOfExtractions_];

    goto LABEL_83;
  }

  if (qword_2814C7F68 != -1)
  {
LABEL_95:
    OUTLINED_FUNCTION_0();
  }

  v33 = sub_232401128();
  __swift_project_value_buffer(v33, qword_2814C8DC8);
  v34 = sub_232401108();
  v35 = sub_232401328();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23224A000, v34, v35, "StructuredConsumer: ignoring non PlayMedia intent from Podcasts.", v36, 2u);
    OUTLINED_FUNCTION_54();
  }

  v37 = [objc_opt_self() ignored];
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

void sub_23227A83C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v63 - v4;
  v6 = sub_232400C98();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_67();
  v10 = v9 - v8;
  sub_232253174();
  v12 = v11;
  v13 = sub_2324011C8();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    OUTLINED_FUNCTION_0();
    v46 = sub_232401128();
    __swift_project_value_buffer(v46, qword_2814C8DC8);
    v47 = v12;
    v48 = sub_232401108();
    v49 = sub_232401348();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = OUTLINED_FUNCTION_26_0();
      v70[0] = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = sub_232401588();
      v54 = sub_23224ED04(v52, v53, v70);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_23224A000, v48, v49, "StructuredConsumer: could not donate maps interactions to stores %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    v55 = objc_opt_self();
    v56 = sub_232400C08();
    [v55 failedWithError_];

    goto LABEL_22;
  }

  if (HIDWORD(v13))
  {
    goto LABEL_24;
  }

  v14 = sub_23227BE3C(a1);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = [a1 respondsToSelector_];
    v65 = v16;
    if ((v18 & 1) != 0 && (v19 = [a1 domainId]) != 0)
    {
      v20 = v19;
      v64 = sub_232401178();
      v22 = v21;
    }

    else
    {
      v64 = 0;
      v22 = 0;
    }

    v23 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:v13 donationCount:0 contactHandleCount:0 flags:0];
    v24 = [a1 uniqueId];
    v25 = sub_232401178();
    v27 = v26;

    [a1 absoluteTimestamp];
    sub_232400C28();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v28 = sub_2322794D4(sub_232253174);
    v30 = v29;
    v31 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    sub_232253BEC(v65, v17, v64, v22, v25, v27, v10, v5, 0, v28, v30, v23, v63[0], v63[1], v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7]);
    if (v32)
    {
      v33 = v32;
      v34 = OUTLINED_FUNCTION_4_6();
      if (sub_2322519D0(v34))
      {
        v35 = objc_opt_self();
        v36 = [a1 interaction];
        v37 = [v36 intent];

        v38 = [v35 scoredEntitiesFromMapsIntent_];
        v39 = v38;
        if (!v38)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
          sub_232401268();
          v39 = sub_232401248();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
        v40 = sub_232401268();
        v41 = sub_232252E40(v40);

        if (v41)
        {
          v42 = [objc_allocWithZone(PPScoredExtractionSet) init];
          [v42 setEntities_];

          [v42 setEntityAlgorithm_];
          [v42 setSource_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91478, &unk_232418240);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_232417BB0;
          *(v43 + 32) = v42;
          v44 = *MEMORY[0x277CCA1B8];
          v45 = v42;
          sub_23225764C(v43, sub_232259614, 0, v44);
        }

        else
        {

          objc_opt_self();
          sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
          v60 = sub_232401398();
          v61 = OUTLINED_FUNCTION_7_3();
          [v61 v62];
        }

LABEL_22:
        OUTLINED_FUNCTION_18_0();
        return;
      }
    }
  }

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v59 = v57;
}

id sub_23227AE9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StructuredConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23227AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232401168();

  v6 = sub_232401168();

  v7 = [v3 initWithName:v5 category:a3 language:v6];

  return v7;
}

id sub_23227AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = sub_232401168();

  if (a4)
  {
    v12 = sub_232401168();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_232401168();

  v14 = sub_232400C68();
  v15 = [v8 initWithBundleId:v11 groupId:v12 documentId:v13 date:v14];

  v16 = sub_232400C98();
  (*(*(v16 - 8) + 8))(a7, v16);
  return v15;
}

size_t sub_23227B114(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_23227B540(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_23227B684(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_23227B2D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91550, &qword_2324181D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91558, &qword_2324181D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23227B410(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91560, &qword_2324181E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91568, &qword_2324181E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23227B540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_23227B63C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_3(a3, result);
  }

  return result;
}

char *sub_23227B65C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_3(a3, result);
  }

  return result;
}

uint64_t sub_23227B684(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_15_1();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_15_1();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

void *sub_23227B778(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  result = (v7 + v6);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_23227B9E8(result, 1);
  v1 = *v2;
  v9 = *(*v2 + 16);
  v10 = (*(*v2 + 24) >> 1) - v9;
  result = sub_23227C4D8(v32, (*v2 + 24 * v9 + 32), v10, v5);
  if (result < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result)
  {
    v12 = v1[2];
    v13 = __OFADD__(v12, result);
    v14 = result + v12;
    if (v13)
    {
      __break(1u);
LABEL_13:
      v17 = (v11 + 64) >> 6;
      while (1)
      {
        v18 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v18 >= v17)
        {
          v34 = v4;
          v35 = 0;
          goto LABEL_7;
        }

        v19 = *(v10 + 8 * v18);
        ++v4;
        if (v19)
        {
          v15 = (v19 - 1) & v19;
          v16 = __clz(__rbit64(v19)) | (v18 << 6);
          v4 = v18;
          goto LABEL_18;
        }
      }
    }

    v1[2] = v14;
  }

  v5 = v32[0];
  if (result != v10)
  {
LABEL_7:
    result = sub_23224F158();
    *v2 = v1;
    return result;
  }

LABEL_10:
  v3 = v1[2];
  v10 = v32[1];
  v11 = v33;
  v4 = v34;
  v29 = v33;
  if (!v35)
  {
    goto LABEL_13;
  }

  v15 = (v35 - 1) & v35;
  v16 = __clz(__rbit64(v35)) | (v34 << 6);
  v17 = (v33 + 64) >> 6;
LABEL_18:
  v20 = (*(v5 + 48) + 16 * v16);
  v21 = v20[1];
  v31 = *v20;
  v22 = *(*(v5 + 56) + 8 * v16);

  result = v22;
LABEL_19:
  v23 = v1[3];
  v30 = v23 >> 1;
  if ((v23 >> 1) < v3 + 1)
  {
    result = sub_23227B2D8((v23 > 1), v3 + 1, 1, v1);
    v1 = result;
    v30 = result[3] >> 1;
  }

  while (1)
  {
    if (v3 >= v30)
    {
      v1[2] = v3;
      goto LABEL_19;
    }

    v24 = &v1[3 * v3 + 4];
    *v24 = v31;
    v24[1] = v21;
    v24[2] = v22;
    ++v3;
    if (!v15)
    {
      break;
    }

    v25 = v4;
LABEL_28:
    v26 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v27 = v26 | (v25 << 6);
    v28 = (*(v5 + 48) + 16 * v27);
    v21 = v28[1];
    v31 = *v28;
    v22 = *(*(v5 + 56) + 8 * v27);

    result = v22;
  }

  while (1)
  {
    v25 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v25 >= v17)
    {
      v33 = v29;
      v34 = v4;
      v35 = 0;
      v1[2] = v3;
      goto LABEL_7;
    }

    v15 = *(v10 + 8 * v25);
    ++v4;
    if (v15)
    {
      v4 = v25;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_23227B9E8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_23227B2D8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_23227BA50(void *a1)
{
  v1 = [a1 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_232252D0C(0, &qword_27DD91570, 0x277CD3DB8);
  v3 = sub_232401268();

  return v3;
}

uint64_t sub_23227BAC0(void *a1)
{
  v1 = [a1 domainId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232401178();

  return v3;
}

uint64_t sub_23227BB24(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
  v4 = sub_232401148();

  return v4;
}

uint64_t sub_23227BBA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232401518();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232252E38(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_232252D0C(0, &qword_2814C7800, 0x277CF19E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_23227C650(&qword_2814C7818, &unk_27DD915B0, &unk_232418220);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD915B0, &unk_232418220);
          v9 = sub_23227BD24(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_23227BD24(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_232258704(a3);
  v7 = OUTLINED_FUNCTION_7_3();
  sub_232258710(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v10 = MEMORY[0x2383829D0](a2, a3);
  }

  *a1 = v10;
  return sub_23227BDAC;
}

uint64_t (*sub_23227BDB4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_232258704(a3);
  v7 = OUTLINED_FUNCTION_7_3();
  sub_232258710(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v10 = MEMORY[0x2383829D0](a2, a3);
  }

  *a1 = v10;
  return sub_23227C700;
}

uint64_t sub_23227BE3C(void *a1)
{
  objc_opt_self();
  if (!OUTLINED_FUNCTION_8_2())
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v2 = MEMORY[0x277D41E60];
      goto LABEL_13;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v2 = MEMORY[0x277D41E68];
      goto LABEL_13;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v2 = MEMORY[0x277D41E88];
      goto LABEL_13;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v2 = MEMORY[0x277D41E80];
      goto LABEL_13;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v2 = MEMORY[0x277D41E70];
      goto LABEL_13;
    }

    objc_opt_self();
    v5 = OUTLINED_FUNCTION_8_2();
    if (!v5)
    {
      objc_opt_self();
      v9 = OUTLINED_FUNCTION_8_2();
      if (v9)
      {
        v10 = v9;
        v7 = a1;
        v8 = [v10 bundleID];
        goto LABEL_23;
      }

      objc_opt_self();
      v5 = OUTLINED_FUNCTION_8_2();
      if (!v5)
      {
        objc_opt_self();
        v11 = OUTLINED_FUNCTION_8_2();
        v12 = a1;
        v7 = v12;
        if (v11)
        {
          v8 = [v11 bundleId];
        }

        else
        {
          v8 = [v12 bundleId];
        }

        goto LABEL_23;
      }
    }

    v6 = v5;
    v7 = a1;
    v8 = [v6 bundleId];
LABEL_23:
    v13 = v8;
    sub_232401178();
    OUTLINED_FUNCTION_12_2();

    return OUTLINED_FUNCTION_18_1();
  }

  v2 = MEMORY[0x277D41E50];
LABEL_13:
  v3 = *v2;
  sub_232401178();
  OUTLINED_FUNCTION_12_2();
  return OUTLINED_FUNCTION_18_1();
}

uint64_t sub_23227C038()
{
  objc_opt_self();
  v0 = OUTLINED_FUNCTION_8_2();
  v1 = MEMORY[0x277D41E60];
  if (v0)
  {
    v1 = MEMORY[0x277D41E50];
  }

  v2 = *v1;

  return sub_232401178();
}

uint64_t sub_23227C094()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v0 = MEMORY[0x277D41E50];
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v0 = MEMORY[0x277D41E60];
    }

    else
    {
      objc_opt_self();
      v1 = OUTLINED_FUNCTION_8_2();
      v0 = MEMORY[0x277D41E68];
      if (!v1)
      {
        v0 = MEMORY[0x277D41E88];
      }
    }
  }

  v2 = *v0;

  return sub_232401178();
}

uint64_t sub_23227C130()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v0 = MEMORY[0x277D41E50];
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v0 = MEMORY[0x277D41E60];
    }

    else
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_8_2())
      {
        v0 = MEMORY[0x277D41E68];
      }

      else
      {
        objc_opt_self();
        v1 = OUTLINED_FUNCTION_8_2();
        v0 = MEMORY[0x277D41E88];
        if (!v1)
        {
          v0 = MEMORY[0x277D41E80];
        }
      }
    }
  }

  v2 = *v0;

  return sub_232401178();
}

uint64_t sub_23227C1EC()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v0 = MEMORY[0x277D41E50];
  }

  else
  {
    objc_opt_self();
    v1 = OUTLINED_FUNCTION_8_2();
    v0 = MEMORY[0x277D41E60];
    if (!v1)
    {
      v0 = MEMORY[0x277D41E68];
    }
  }

  v2 = *v0;

  return sub_232401178();
}

uint64_t sub_23227C268()
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v0 = MEMORY[0x277D41E50];
  }

  else
  {
    objc_opt_self();
    if (OUTLINED_FUNCTION_8_2())
    {
      v0 = MEMORY[0x277D41E60];
    }

    else
    {
      objc_opt_self();
      if (OUTLINED_FUNCTION_8_2())
      {
        v0 = MEMORY[0x277D41E68];
      }

      else
      {
        objc_opt_self();
        if (OUTLINED_FUNCTION_8_2())
        {
          v0 = MEMORY[0x277D41E88];
        }

        else
        {
          objc_opt_self();
          v1 = OUTLINED_FUNCTION_8_2();
          v0 = MEMORY[0x277D41E80];
          if (!v1)
          {
            v0 = MEMORY[0x277D41E70];
          }
        }
      }
    }
  }

  v2 = *v0;

  return sub_232401178();
}

uint64_t sub_23227C344(void *a1)
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v2 = MEMORY[0x277D41E50];
LABEL_13:
    v3 = *v2;
    sub_232401178();
    OUTLINED_FUNCTION_12_2();
    return OUTLINED_FUNCTION_18_1();
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v2 = MEMORY[0x277D41E60];
    goto LABEL_13;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v2 = MEMORY[0x277D41E68];
    goto LABEL_13;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v2 = MEMORY[0x277D41E88];
    goto LABEL_13;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v2 = MEMORY[0x277D41E80];
    goto LABEL_13;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_8_2())
  {
    v2 = MEMORY[0x277D41E70];
    goto LABEL_13;
  }

  objc_opt_self();
  v5 = OUTLINED_FUNCTION_8_2();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = [v6 bundleId];
  }

  else
  {
    objc_opt_self();
    v9 = OUTLINED_FUNCTION_8_2();
    v10 = a1;
    v7 = v10;
    if (v9)
    {
      v8 = [v9 bundleID];
    }

    else
    {
      v8 = [v10 bundleId];
    }
  }

  v11 = v8;
  sub_232401178();
  OUTLINED_FUNCTION_12_2();

  return OUTLINED_FUNCTION_18_1();
}