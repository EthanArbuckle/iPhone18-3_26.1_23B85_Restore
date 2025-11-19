uint64_t OUTLINED_FUNCTION_507()
{
}

uint64_t sub_231DA6BFC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CEB6D0]) init];
  return v0;
}

uint64_t sub_231DA6C4C()
{
  OUTLINED_FUNCTION_18();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_231E10340();
  v1[26] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[27] = v4;
  v6 = *(v5 + 64);
  v1[28] = OUTLINED_FUNCTION_69();
  v1[29] = swift_task_alloc();
  v7 = sub_231E10E30();
  v1[30] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_69();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v11 = sub_231E10210();
  v1[35] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[36] = v12;
  v14 = *(v13 + 64);
  v1[37] = OUTLINED_FUNCTION_55();
  v15 = *(*(sub_231E0F950() - 8) + 64);
  v1[38] = OUTLINED_FUNCTION_55();
  v16 = sub_231E10400();
  v1[39] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[40] = v17;
  v19 = *(v18 + 64);
  v1[41] = OUTLINED_FUNCTION_69();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_231DA6E50()
{
  v1[21] = &unk_2846F07A0;
  v2 = sub_231CC7270();
  v3 = OUTLINED_FUNCTION_12_15(v2);
  __swift_destroy_boxed_opaque_existential_0(v0);
  if (v3)
  {
    v5 = v1[44];
    v4 = v1[45];
    v6 = v1[42];
    v7 = v1[43];
    v8 = v1[39];
    v9 = v1[40];
    v10 = v1[24];
    sub_231E100E0();
    v115 = sub_231E103E0();
    v112 = v11;
    v12 = *(v9 + 8);
    v12(v4, v8);
    sub_231E100E0();
    v13 = sub_231E103F0();
    v110 = v14;
    v12(v5, v8);
    sub_231E100E0();
    v15 = sub_231E103B0();
    v109 = v1;
    v17 = v16;
    v12(v7, v8);
    sub_231E100E0();
    v18 = sub_231E103A0();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_90_0();
    v106 = v12;
    (v12)(v21);
    v22 = objc_allocWithZone(MEMORY[0x277CEB6C8]);
    v23 = v109;
    v24 = sub_231DA98B4(v115, v112, v13, v110, v15, v17, v18, v20);
    v109[46] = v24;
    v25 = sub_231E10150();
    v119 = MEMORY[0x277D84F90];
    if (*(v25 + 16))
    {
      v99 = v24;
      v103 = *(v109[40] + 16);
      OUTLINED_FUNCTION_27_8(v25);
      v101 = v27;
      v28 = MEMORY[0x277D84F90];
      do
      {
        v113 = v26;
        v116 = v28;
        v29 = v23[41];
        v30 = v23[39];
        v31 = OUTLINED_FUNCTION_90_0();
        v103(v31);
        v111 = sub_231E103E0();
        v33 = v32;
        v34 = sub_231E103F0();
        v36 = v35;
        v37 = sub_231E103B0();
        v39 = v38;
        v40 = sub_231E103A0();
        v42 = v41;
        v43 = objc_allocWithZone(MEMORY[0x277CEB6C8]);
        v44 = sub_231DA98B4(v111, v33, v34, v36, v37, v39, v40, v42);
        v28 = v116;
        v45 = v44;
        v46 = v106(v29, v30);
        if (v45)
        {
          MEMORY[0x23837CD40](v46);
          if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_231E11890();
          }

          sub_231E118C0();
          v28 = v119;
        }

        v8 += v101;
        v26 = v113 - 1;
        v23 = v109;
      }

      while (v113 != 1);

      v24 = v99;
      v118 = v28;
    }

    else
    {

      v118 = MEMORY[0x277D84F90];
    }

    v76 = v23[37];
    v75 = v23[38];
    v77 = v23[36];
    v100 = v23[35];
    v78 = v23[24];
    v108 = v23[25];
    v79 = sub_231E10000();
    v105 = v80;
    v107 = v79;
    v81 = sub_231DE8A04(1);
    v102 = v82;
    v104 = v81;
    sub_231E101B0();
    v83 = v24;
    v84 = sub_231E102D0();
    v86 = v85;
    sub_231E10220();
    v87 = sub_231E10200();
    v89 = v88;
    (*(v77 + 8))(v76, v100);
    v90 = objc_allocWithZone(MEMORY[0x277CEB640]);
    v91 = sub_231DA99CC(v107, v105, v104, v102, v75, v83, v118, v84, v86, v87, v89);
    v23[47] = v91;
    sub_231CC1784(0, &qword_27DD75138, 0x277CEB508);
    sub_231E10000();
    v92 = sub_231DA7AB8();
    v23[48] = v92;
    sub_231CC1784(0, &qword_27DD75140, 0x277CEB630);
    v93 = v91;
    v94 = v92;
    v96 = OUTLINED_FUNCTION_36_9(v94, v95, &selRef_initWithMailMessage_additionalContextSignals_);
    v23[49] = v96;
    v97 = *(v108 + 16);
    v23[2] = v23;
    v23[7] = v23 + 23;
    v23[3] = sub_231DA74A8;
    v98 = swift_continuation_init();
    v23[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75148, &unk_231E1E858);
    v23[10] = MEMORY[0x277D85DD0];
    v23[11] = 1107296256;
    v23[12] = sub_231DAA070;
    v23[13] = &block_descriptor_9;
    v23[14] = v98;
    [v97 fetchContextForMailWithRequest:v96 completion:?];

    return MEMORY[0x282200938](v23 + 2);
  }

  else
  {
    v47 = v1[33];
    v49 = v1[30];
    v48 = v1[31];
    sub_231DC4B64();
    v50 = OUTLINED_FUNCTION_1_25();
    v51(v50);
    v52 = sub_231E10E10();
    v53 = sub_231E11AF0();
    v54 = OUTLINED_FUNCTION_69_5(v53);
    v55 = v1[33];
    v56 = v1[30];
    v57 = v1[31];
    if (v54)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_40_8(&dword_231CAE000, v58, v59, "Mail sender Importance is disabled by default. Returning nil");
      OUTLINED_FUNCTION_30();
    }

    v60 = OUTLINED_FUNCTION_2_26();
    v61(v60);
    v63 = v1[44];
    v62 = v1[45];
    v64 = v1[42];
    v65 = v1[43];
    v66 = v1[41];
    v68 = v1[37];
    v67 = v1[38];
    v70 = v1[33];
    v69 = v1[34];
    v71 = v1[32];
    v114 = v1[29];
    v117 = v1[28];

    v72 = OUTLINED_FUNCTION_3_25();

    return v73(v72);
  }
}

uint64_t sub_231DA74A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

id sub_231DA7AB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231E115F0();

  v2 = [v0 initWithEntityID_];

  return v2;
}

uint64_t sub_231DA7B2C()
{
  OUTLINED_FUNCTION_18();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_231E10A30();
  v1[26] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[27] = v4;
  v6 = *(v5 + 64);
  v1[28] = OUTLINED_FUNCTION_69();
  v1[29] = swift_task_alloc();
  v7 = sub_231E10E30();
  v1[30] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_69();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v11 = sub_231E0F950();
  v1[35] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[36] = v12;
  v14 = *(v13 + 64);
  v1[37] = OUTLINED_FUNCTION_55();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75150, &qword_231E1E870) - 8) + 64);
  v1[38] = OUTLINED_FUNCTION_55();
  v16 = sub_231E0F9A0();
  v1[39] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[40] = v17;
  v19 = *(v18 + 64);
  v1[41] = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_231DA7D0C()
{
  v1[21] = &unk_2846F07A0;
  v3 = sub_231CC7270();
  v4 = OUTLINED_FUNCTION_12_15(v3);
  __swift_destroy_boxed_opaque_existential_0(v0);
  if (v4)
  {
    v6 = v1[38];
    v5 = v1[39];
    v7 = v1[24];
    sub_231E10A20();
    sub_231E0F960();

    if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
    {
      v8 = v1[38];
      v9 = v1[39];
      v10 = v1[41];
      sub_231E0F990();
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        sub_231CE1118(v1[38], &qword_27DD75150, &qword_231E1E870);
      }
    }

    else
    {
      (*(v1[40] + 32))(v1[41], v1[38], v1[39]);
    }

    v26 = v1[36];
    v25 = v1[37];
    v27 = v1[35];
    v28 = v1[24];
    v64 = v1[41];
    v65 = v1[25];
    sub_231E10980();
    sub_231E0F870();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_2_26();
    v32(v31);
    v33 = sub_231E109C0();
    v62 = v34;
    v63 = v33;
    v35 = sub_231E109F0();
    v60 = v36;
    v61 = v35;
    v37 = sub_231E109B0();
    v59 = v38;
    v39 = sub_231E10910();
    v41 = v40;
    v42 = sub_231E10A00();
    v44 = v43;
    v45 = sub_231E109D0();
    v47 = v46;
    v48 = sub_231E10940();
    v49 = objc_allocWithZone(MEMORY[0x277CEB958]);
    v50 = sub_231DA9B74(v64, v30, v63, v62, v61, v60, v37, v59, 0, 0, 0xF000000000000000, v39, v41, v42, v44, v45, v47, 0, 0, 0, v48 & 1, 0);
    v1[42] = v50;
    sub_231CC1784(0, &qword_27DD75138, 0x277CEB508);
    sub_231E10A20();
    v51 = sub_231DA7AB8();
    v1[43] = v51;
    sub_231CC1784(0, &qword_27DD75158, 0x277CEB6E0);
    v52 = v50;
    v53 = v51;
    v55 = OUTLINED_FUNCTION_36_9(v53, v54, &selRef_initWithUserNotification_additionalContextSignals_);
    v1[44] = v55;
    v56 = *(v65 + 16);
    v1[2] = v1;
    v1[7] = v1 + 23;
    v1[3] = sub_231DA8170;
    v57 = swift_continuation_init();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75160, &qword_231E1E878);
    OUTLINED_FUNCTION_5_22(v58);
    v1[11] = 1107296256;
    v1[12] = sub_231DAA070;
    v1[13] = &block_descriptor_3_1;
    v1[14] = v57;
    [v56 fetchContextForNotificationWithRequest:v55 completion:?];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    v11 = v1[33];
    v12 = v1[30];
    v13 = v1[31];
    v14 = sub_231DC4B64();
    (*(v13 + 16))(v11, v14, v12);
    v15 = sub_231E10E10();
    v16 = sub_231E11AF0();
    v17 = OUTLINED_FUNCTION_69_5(v16);
    v18 = v1[33];
    v19 = v1[30];
    v20 = v1[31];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_231CAE000, v15, v2, "Notification sender Importance is disabled by default. Returning nil", v21, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v20 + 8))(v18, v19);
    OUTLINED_FUNCTION_35_8();

    v22 = OUTLINED_FUNCTION_3_25();

    return v23(v22);
  }
}

uint64_t sub_231DA8170()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = *(v3 + 48);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231DA826C()
{
  v47 = v0;
  OUTLINED_FUNCTION_4_20();
  v45 = [v1 notificationSenderImportance];
  sub_231DC4B64();
  v2 = OUTLINED_FUNCTION_1_25();
  v3(v2);
  v4 = OUTLINED_FUNCTION_9_15();
  v5(v4);
  v6 = v1;
  v7 = sub_231E10E10();
  v8 = sub_231E11AF0();

  v43 = v8;
  v9 = os_log_type_enabled(v7, v8);
  v44 = *(v0 + 344);
  v10 = *(v0 + 336);
  v11 = *(v0 + 272);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  v14 = *(v0 + 232);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  if (v9)
  {
    v40 = *(v0 + 352);
    v42 = *(v0 + 336);
    v17 = swift_slowAlloc();
    v41 = v12;
    v18 = OUTLINED_FUNCTION_67();
    v46 = v18;
    *v17 = 67109634;
    *(v17 + 4) = v45;
    *(v17 + 8) = 2048;
    [v6 importanceConfidenceScore];
    *(v17 + 10) = v19;
    *(v17 + 18) = 2082;
    v38 = v6;
    v39 = v11;
    v20 = sub_231E10A20();
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_231CB5000(v20, v22, &v46);

    *(v17 + 20) = v23;
    _os_log_impl(&dword_231CAE000, v7, v43, "Notification sender importance: %d; with score: %f for id: %{public}s", v17, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v13 + 8))(v39, v41);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    v24 = OUTLINED_FUNCTION_2_26();
    v26(v24, v25);
  }

  if (v45 == 2)
  {
    v27 = 1;
  }

  else
  {
    v27 = 2 * (v45 != 1);
  }

  v28 = *(v0 + 328);
  v30 = *(v0 + 296);
  v29 = *(v0 + 304);
  v32 = *(v0 + 264);
  v31 = *(v0 + 272);
  v33 = *(v0 + 256);
  v35 = *(v0 + 224);
  v34 = *(v0 + 232);

  OUTLINED_FUNCTION_18_6();

  return v36(v27);
}

uint64_t *sub_231DA87A4(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_231CBF8D4(v6, a3);
  }

  if (a2)
  {
    return sub_231CBF940(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_231DA8810()
{
  OUTLINED_FUNCTION_18();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_231E106A0();
  v1[26] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[27] = v4;
  v6 = *(v5 + 64);
  v1[28] = OUTLINED_FUNCTION_69();
  v1[29] = swift_task_alloc();
  v7 = sub_231E10E30();
  v1[30] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[31] = v8;
  v10 = *(v9 + 64);
  v1[32] = OUTLINED_FUNCTION_69();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v11 = *(*(sub_231E0F950() - 8) + 64);
  v1[35] = OUTLINED_FUNCTION_55();
  v12 = sub_231E10400();
  v1[36] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[37] = v13;
  v15 = *(v14 + 64);
  v1[38] = OUTLINED_FUNCTION_69();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231DA89C8()
{
  v1[21] = &unk_2846F07A0;
  v2 = sub_231CC7270();
  v3 = OUTLINED_FUNCTION_12_15(v2);
  __swift_destroy_boxed_opaque_existential_0(v0);
  if (v3)
  {
    v5 = v1[41];
    v4 = v1[42];
    v6 = v1[39];
    v7 = v1[40];
    v8 = v1[36];
    v9 = v1[37];
    v10 = v1[24];
    sub_231E104F0();
    v11 = sub_231E103E0();
    v111 = v12;
    v113 = v11;
    v13 = *(v9 + 8);
    v13(v4, v8);
    sub_231E104F0();
    v14 = sub_231E103F0();
    v109 = v15;
    v13(v5, v8);
    sub_231E104F0();
    v16 = sub_231E103B0();
    v108 = v1;
    v18 = v17;
    v13(v7, v8);
    sub_231E104F0();
    v19 = sub_231E103A0();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_90_0();
    v105 = v13;
    (v13)(v22);
    v23 = objc_allocWithZone(MEMORY[0x277CEB6C8]);
    v24 = v18;
    v25 = v108;
    v26 = sub_231DA98B4(v113, v111, v14, v109, v16, v24, v19, v21);
    v108[43] = v26;
    v27 = sub_231E10590();
    v117 = MEMORY[0x277D84F90];
    if (*(v27 + 16))
    {
      v101 = v26;
      v103 = *(v108[37] + 16);
      OUTLINED_FUNCTION_27_8(v27);
      v102 = v29;
      v30 = MEMORY[0x277D84F90];
      do
      {
        v112 = v28;
        v114 = v30;
        v31 = v25[38];
        v32 = v25[36];
        v33 = OUTLINED_FUNCTION_90_0();
        v103(v33);
        v110 = sub_231E103E0();
        v35 = v34;
        v36 = sub_231E103F0();
        v38 = v37;
        v39 = sub_231E103B0();
        v41 = v40;
        v42 = sub_231E103A0();
        v44 = v43;
        v45 = objc_allocWithZone(MEMORY[0x277CEB6C8]);
        v46 = sub_231DA98B4(v110, v35, v36, v38, v39, v41, v42, v44);
        v30 = v114;
        v47 = v46;
        v48 = v105(v31, v32);
        if (v47)
        {
          MEMORY[0x23837CD40](v48);
          if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_231E11890();
          }

          sub_231E118C0();
          v30 = v117;
        }

        v8 += v102;
        v28 = v112 - 1;
        v25 = v108;
      }

      while (v112 != 1);

      v26 = v101;
      v116 = v30;
    }

    else
    {

      v116 = MEMORY[0x277D84F90];
    }

    v77 = v25[35];
    v78 = v25[24];
    v107 = v25[25];
    v79 = sub_231E10690();
    v104 = v80;
    v106 = v79;
    v81 = sub_231DE8A04(0);
    v83 = v82;
    sub_231E105C0();
    v84 = sub_231E10520();
    v86 = v85;
    v87 = v26;
    v88 = sub_231E10640();
    v90 = v89;
    v91 = objc_allocWithZone(MEMORY[0x277CEB8D0]);
    v92 = sub_231DA9E38(v106, v104, v81, v83, v77, v84, v86, v87, v116, 0, 0, v88, v90);
    v25[44] = v92;
    sub_231CC1784(0, &qword_27DD75138, 0x277CEB508);
    sub_231E10690();
    v93 = sub_231DA7AB8();
    v25[45] = v93;
    sub_231CC1784(0, &qword_27DD75168, 0x277CEB658);
    v94 = v92;
    v95 = v93;
    v97 = OUTLINED_FUNCTION_36_9(v95, v96, &selRef_initWithTextMessage_additionalContextSignals_);
    v25[46] = v97;
    v98 = *(v107 + 16);
    v25[2] = v25;
    v25[7] = v25 + 23;
    v25[3] = sub_231DA8FCC;
    v99 = swift_continuation_init();
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75170, &qword_231E1E888);
    OUTLINED_FUNCTION_5_22(v100);
    v25[11] = 1107296256;
    v25[12] = sub_231DAA070;
    v25[13] = &block_descriptor_6_1;
    v25[14] = v99;
    [v98 fetchContextForMessageWithRequest:v97 completion:?];

    return MEMORY[0x282200938](v25 + 2);
  }

  else
  {
    v49 = v1[33];
    v51 = v1[30];
    v50 = v1[31];
    sub_231DC4B64();
    v52 = OUTLINED_FUNCTION_1_25();
    v53(v52);
    v54 = sub_231E10E10();
    v55 = sub_231E11AF0();
    v56 = OUTLINED_FUNCTION_69_5(v55);
    v57 = v1[33];
    v58 = v1[30];
    v59 = v1[31];
    if (v56)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_40_8(&dword_231CAE000, v60, v61, "Message sender Importance is disabled by default. Returning nil");
      OUTLINED_FUNCTION_30();
    }

    v62 = OUTLINED_FUNCTION_2_26();
    v63(v62);
    v65 = v1[41];
    v64 = v1[42];
    v66 = v1[39];
    v67 = v1[40];
    v68 = v1[38];
    v70 = v1[34];
    v69 = v1[35];
    v72 = v1[32];
    v71 = v1[33];
    v73 = v1[29];
    v115 = v1[28];

    v74 = OUTLINED_FUNCTION_3_25();

    return v75(v74);
  }
}

uint64_t sub_231DA8FCC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 376) = *(v3 + 48);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

id sub_231DA95C4(void *a1, void *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a3];

  return v5;
}

uint64_t sub_231DA9620()
{
  OUTLINED_FUNCTION_18();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_28_0(v3);

  return sub_231DA6C4C();
}

uint64_t sub_231DA96AC()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 16);
  v7 = *v0;

  OUTLINED_FUNCTION_18_6();

  return v5(v2);
}

uint64_t sub_231DA979C()
{
  OUTLINED_FUNCTION_18();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_28_0(v3);

  return sub_231DA7B2C();
}

uint64_t sub_231DA9828()
{
  OUTLINED_FUNCTION_18();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_28_0(v3);

  return sub_231DA8810();
}

id sub_231DA98B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = sub_231E115F0();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = sub_231E115F0();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_231E115F0();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_231E115F0();

LABEL_10:
  v16 = [v8 initWithName:v12 handle:v13 contactIdentifier:v14 handleType:v15];

  return v16;
}

id sub_231DA99CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v16 = sub_231E115F0();

  v17 = sub_231E115F0();

  v18 = sub_231E0F8C0();
  if (a7)
  {
    sub_231CC1784(0, &qword_27DD75178, 0x277CEB6C8);
    v19 = sub_231E11850();
  }

  else
  {
    v19 = 0;
  }

  if (!a9)
  {
    v20 = 0;
    if (a11)
    {
      goto LABEL_6;
    }

LABEL_8:
    v21 = 0;
    goto LABEL_9;
  }

  v20 = sub_231E115F0();

  if (!a11)
  {
    goto LABEL_8;
  }

LABEL_6:
  v21 = sub_231E115F0();

LABEL_9:
  v22 = [v12 initWithMailID:v16 bundleID:v17 dateReceived:v18 sender:a6 recipients:v19 subject:v20 body:v21];

  v23 = sub_231E0F950();
  (*(*(v23 - 8) + 8))(a5, v23);
  return v22;
}

id sub_231DA9B74(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22)
{
  v39 = sub_231E0F980();
  if (a4)
  {
    v37 = sub_231E115F0();

    if (a6)
    {
LABEL_3:
      v36 = sub_231E115F0();

      goto LABEL_6;
    }
  }

  else
  {
    v37 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v36 = 0;
LABEL_6:
  if (a8)
  {
    v35 = sub_231E115F0();
  }

  else
  {
    v35 = 0;
  }

  if (a11 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_231E0F820();
    sub_231CF4340(a10, a11);
  }

  if (a13)
  {
    v26 = sub_231E115F0();
  }

  else
  {
    v26 = 0;
  }

  if (a15)
  {
    v27 = sub_231E115F0();
  }

  else
  {
    v27 = 0;
  }

  if (a17)
  {
    v28 = sub_231E115F0();
  }

  else
  {
    v28 = 0;
  }

  if (a19)
  {
    v29 = sub_231E115F0();
  }

  else
  {
    v29 = 0;
  }

  if (a20)
  {
    v30 = sub_231E11850();
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v33) = a21 & 1;
  v41 = [v38 initFromNotificationData:v39 timestamp:v37 title:v36 subtitle:v35 body:a9 badge:v34 userInfo:a2 bundleID:v26 threadID:v27 categoryID:v28 sectionID:v29 contactIDs:v30 isGroupMessage:v33 derivedData:a22];

  v31 = sub_231E0F9A0();
  (*(*(v31 - 8) + 8))(a1, v31);
  return v41;
}

id sub_231DA9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_231E115F0();

  v17 = sub_231E115F0();

  v18 = sub_231E0F8C0();
  if (a7)
  {
    v19 = sub_231E115F0();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    sub_231CC1784(0, &qword_27DD75178, 0x277CEB6C8);
    v20 = sub_231E11850();
  }

  else
  {
    v20 = 0;
  }

  if (!a11)
  {
    v21 = 0;
    if (a13)
    {
      goto LABEL_9;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v21 = sub_231E115F0();

  if (!a13)
  {
    goto LABEL_11;
  }

LABEL_9:
  v22 = sub_231E115F0();

LABEL_12:
  v23 = [v26 initWithMessageID:v16 bundleID:v17 dateReceived:v18 threadID:v19 sender:a8 recipients:v20 subject:v21 body:v22];

  v24 = sub_231E0F950();
  (*(*(v24 - 8) + 8))(a5, v24);
  return v23;
}

uint64_t OUTLINED_FUNCTION_6_19()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  v8 = v0[24];

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1)
{
  *(v1 + 144) = 4;
  *(v1 + 176) = a1;

  return sub_231E0FA80();
}

void OUTLINED_FUNCTION_16_11()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[26];
}

uint64_t OUTLINED_FUNCTION_27_8(uint64_t result)
{
  v2 = result + ((*(v1 + 64) + 32) & ~*(v1 + 64));
  v3 = *(v1 + 56);
  return result;
}

void OUTLINED_FUNCTION_31_11(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0x16u);
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_231CB5000(v9, v10, va);
}

uint64_t OUTLINED_FUNCTION_35_8()
{
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];
}

id OUTLINED_FUNCTION_36_9(uint64_t a1, uint64_t a2, SEL *a3)
{

  return sub_231DA95C4(v3, v4, a3);
}

void OUTLINED_FUNCTION_40_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_41_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_42_10()
{

  return swift_slowAlloc();
}

unint64_t sub_231DAA23C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x7373656E69737562;
      break;
    case 2:
      result = 0x72656874616577;
      break;
    case 3:
      result = 0x656974696C697475;
      break;
    case 4:
      result = 0x6C6576617274;
      break;
    case 5:
      result = 0x7374726F7073;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0x69746375646F7270;
      break;
    case 9:
      result = 0x6469566F746F6870;
      break;
    case 10:
      result = 1937204590;
      break;
    case 11:
      result = 0x697461676976616ELL;
      break;
    case 12:
      result = 0x636973756DLL;
      break;
    case 13:
      result = 0x6C7974736566696CLL;
      break;
    case 14:
      result = 0x694668746C616568;
      break;
    case 15:
      v3 = 1701667175;
      goto LABEL_28;
    case 16:
      result = 0x65636E616E6966;
      break;
    case 17:
      result = 0x6961747265746E65;
      break;
    case 18:
      result = 0x6F69746163756465;
      break;
    case 19:
      v3 = 1802465122;
LABEL_28:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 20:
      result = 0x6C61636964656DLL;
      break;
    case 21:
      result = 0x6E6174737377656ELL;
      break;
    case 22:
      result = 0x73676F6C61746163;
      break;
    case 23:
      result = 0x6E697244646F6F66;
      break;
    case 24:
      result = 0x676E6970706F6873;
      break;
    case 25:
      result = 0x7372656B63697473;
      break;
    case 26:
      result = 0x65706F6C65766564;
      break;
    case 27:
      result = 0x7363696870617267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231DAA53C(uint64_t a1)
{
  v1 = a1 - 6000;
  result = 1;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 10:
      result = 11;
      break;
    case 11:
      result = 12;
      break;
    case 12:
      result = 13;
      break;
    case 13:
      result = 14;
      break;
    case 14:
      result = 15;
      break;
    case 15:
      result = 16;
      break;
    case 16:
      result = 17;
      break;
    case 17:
      result = 18;
      break;
    case 18:
      result = 19;
      break;
    case 20:
      result = 20;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 24:
      result = 24;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 26;
      break;
    case 27:
      result = 27;
      break;
    default:
      result = 28;
      break;
  }

  return result;
}

uint64_t sub_231DAA660@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231DAA53C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_231DAA68C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231DAA64C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_231DAA6C0(char a1)
{
  sub_231E12220();
  MEMORY[0x23837D730](qword_231E1EA08[a1]);
  return sub_231E12250();
}

uint64_t sub_231DAA758(uint64_t a1, char a2)
{
  sub_231E12220();
  MEMORY[0x23837D730](qword_231E1EA08[a2]);
  return sub_231E12250();
}

BOOL sub_231DAA7A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_231D00B30();
}

uint64_t sub_231DAA7B4()
{
  OUTLINED_FUNCTION_1_26();
  sub_231D112E0();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DAA7FC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231D112E0();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

void sub_231DAA834(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E10E30();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_231DAAA8C(a1, a2, 1);
  v8 = [v7 iTunesMetadata];
  v9 = [v8 genreIdentifier];

  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_231DAA53C(v9);
  }
}

id sub_231DAAA8C(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231E115F0();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_231E0F6F0();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t getEnumTagSinglePayload for AppCategoryID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppCategoryID(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

id sub_231DAACF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = aBlock - v11;
  v13 = &v1[OBJC_IVAR___PSUSummarizationPipeline_guardedSummarizationPipeline];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v1[OBJC_IVAR___PSUSummarizationPipeline_contactStore] = a1;
  v32.receiver = v1;
  v32.super_class = PSUSummarizationPipeline;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v32, sel_init);
  sub_231CC8990(v9);
  v16 = sub_231E119F0();
  OUTLINED_FUNCTION_28_2(v9);
  if (v17)
  {
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v9);
    if (!v17)
    {
      sub_231DBC3B8(v9, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_6(v16);
    (*(v18 + 32))(v12, v9, v16);
  }

  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  OUTLINED_FUNCTION_299_0();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v15;
  v23 = v15;
  v24 = OUTLINED_FUNCTION_58_9();
  sub_231CC3BE0(v24, v25, v12, v26, v22);

  v27 = objc_opt_self();
  OUTLINED_FUNCTION_27();
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  aBlock[4] = sub_231DAB178;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231DAB1B0;
  aBlock[3] = &block_descriptor_10;
  v29 = _Block_copy(aBlock);

  [v27 runBlockWhenDeviceIsClassCUnlocked_];
  _Block_release(v29);

  return v23;
}

uint64_t sub_231DAAF8C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_31_12();
  v6 = sub_231DAB074(v2, v3, v4, v5);
  sub_231DBA610(v6);
  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231DAAFEC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_32(v3);

  return sub_231DAAF78(v5, v6, v7, v1);
}

unint64_t sub_231DAB074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *sub_231D6020C();

  v8 = OUTLINED_FUNCTION_25_7();
  v9 = nullsub_1(v8);
  LOBYTE(a4) = sub_231D6024C(v9, v10, v11, a4);

  if ((a4 & 1) == 0)
  {
    return 0x8000000000000001;
  }

  if ([objc_opt_self() isClassCLocked])
  {
    return 0x8000000000000000;
  }

  v13 = (v5 + OBJC_IVAR___PSUSummarizationPipeline_guardedSummarizationPipeline);
  os_unfair_lock_lock((v5 + OBJC_IVAR___PSUSummarizationPipeline_guardedSummarizationPipeline));
  sub_231DAB234();
  os_unfair_lock_unlock(v13);
  return v14;
}

uint64_t sub_231DAB178()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_31_12();
  v6 = sub_231DAB074(v2, v3, v4, v5);

  return sub_231DBA610(v6);
}

uint64_t sub_231DAB1B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_231DAB234()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_231E10E30();
  v7 = OUTLINED_FUNCTION_24(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v14 = v13 - v12;
  if (*v3)
  {
    *v5 = *v3;
    OUTLINED_FUNCTION_113();
  }

  else
  {
    v16 = sub_231CB4EEC();
    (*(v9 + 16))(v14, v16, v6);
    v17 = sub_231E10E10();
    v18 = sub_231E11AF0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_16_1();
      *v19 = 0;
      _os_log_impl(&dword_231CAE000, v17, v18, "Initializing pipeline", v19, 2u);
      OUTLINED_FUNCTION_14();
    }

    (*(v9 + 8))(v14, v6);
    v20 = *(v1 + OBJC_IVAR___PSUSummarizationPipeline_contactStore);
    type metadata accessor for SummarizationPipeline();
    v21 = swift_allocObject();
    v22 = v20;
    sub_231DB12C4();
    *v3 = v21;
    *v5 = v21;

    OUTLINED_FUNCTION_113();
  }
}

uint64_t sub_231DAB3D4()
{
  v0 = swift_allocObject();
  sub_231DB12C4();
  return v0;
}

void sub_231DAB414()
{
  OUTLINED_FUNCTION_118();
  v37 = v2;
  OUTLINED_FUNCTION_477();
  v3 = sub_231E0F950();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  sub_231CC8990(v16);
  v20 = sub_231E119F0();
  if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
  {
    sub_231D1221C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v20) != 1)
    {
      sub_231DBC3B8(v16, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_6(v20);
    (*(v21 + 32))(v19, v16, v20);
  }

  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  v25 = *(v6 + 16);
  v26 = OUTLINED_FUNCTION_70();
  v27(v26);
  v28 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v29 = (v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v0;
  (*(v6 + 32))(&v30[v28], v9, v3);
  *&v30[v29] = v37;
  *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v1;
  v31 = v0;
  v32 = v1;
  v33 = OUTLINED_FUNCTION_58_9();
  sub_231CC3BE0(v33, v34, v19, v35, v30);

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DAB678()
{
  OUTLINED_FUNCTION_18();
  v0[23] = v1;
  v0[24] = v2;
  v0[21] = v3;
  v0[22] = v4;
  v5 = type metadata accessor for SummarizationAnalytics.Interval(0);
  v0[25] = v5;
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  v0[26] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0F950();
  v0[27] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[28] = v9;
  v11 = *(v10 + 64);
  v0[29] = OUTLINED_FUNCTION_69();
  v0[30] = swift_task_alloc();
  v12 = sub_231E10E30();
  v0[31] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[32] = v13;
  v15 = *(v14 + 64);
  v0[33] = OUTLINED_FUNCTION_69();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_231DAB7D8()
{
  v191 = v2;
  sub_231DBAF78(*(v2 + 168), &selRef_bundleID);
  OUTLINED_FUNCTION_14_9();
  v3 = sub_231CC7B14();
  if (v0)
  {
    v5 = OUTLINED_FUNCTION_56_10(v3) == v1 && v0 == v4;
    if (v5 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {
      v6 = 0;
LABEL_8:

      v7 = [*(v2 + 168) protection];
      if (v7)
      {
        v8 = 0;
        goto LABEL_34;
      }

      v12 = sub_231CC7964();
      v8 = 0;
      goto LABEL_33;
    }
  }

  v9 = sub_231CC7C18();
  if (v0)
  {
    v11 = OUTLINED_FUNCTION_56_10(v9) == v1 && v0 == v10;
    if (v11 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {
      v6 = 0;
LABEL_17:

      v7 = [*(v2 + 168) protection];
      v8 = 1;
      if (v7)
      {
        goto LABEL_34;
      }

      v12 = sub_231CC7A34();
      goto LABEL_33;
    }
  }

  v13 = sub_231CC78CC();
  if (!v0 || (OUTLINED_FUNCTION_56_10(v13) == v1 ? (v15 = v0 == v14) : (v15 = 0), !v15 && (OUTLINED_FUNCTION_15_2() & 1) == 0))
  {
    v71 = sub_231CC7D1C();
    if (!v0)
    {
      goto LABEL_53;
    }

    if (OUTLINED_FUNCTION_56_10(v71) == v1 && v0 == v72)
    {
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      OUTLINED_FUNCTION_10_1();
      if ((v1 & 1) == 0)
      {
LABEL_53:
        if ((([*(v2 + 168) needsSummary] & 1) != 0 || objc_msgSend(*(v2 + 168), sel_needsPriority)) && (v74 = sub_231DBAF14(objc_msgSend(*(v2 + 168), sel_attributeSet))) != 0)
        {
          v0 = v74;
          v75 = sub_231CC7F78();
          v76 = v75[1];
          *(v2 + 64) = *v75;
          *(v2 + 72) = v76;
          *(swift_task_alloc() + 16) = v2 + 64;

          v77 = OUTLINED_FUNCTION_135_2();
          v80 = sub_231D162D0(v77, v78, v79);

          if (v80)
          {
            v6 = 1;
            goto LABEL_8;
          }

          v154 = sub_231CC7E14();
          v155 = v154[1];
          *(v2 + 80) = *v154;
          *(v2 + 88) = v155;
          *(swift_task_alloc() + 16) = v2 + 80;

          v156 = OUTLINED_FUNCTION_135_2();
          v159 = sub_231D162D0(v156, v157, v158);

          if (v159)
          {
            v6 = 1;
            goto LABEL_17;
          }

          v160 = sub_231CC7FC8();
          v161 = v160[1];
          *(v2 + 96) = *v160;
          *(v2 + 104) = v161;
          *(swift_task_alloc() + 16) = v2 + 96;

          v162 = OUTLINED_FUNCTION_135_2();
          sub_231D162D0(v162, v163, v164);
          OUTLINED_FUNCTION_169_1();

          v165 = *(v2 + 288);
          v166 = *(v2 + 248);
          v167 = *(v2 + 256);
          sub_231DC4C1C();
          v168 = OUTLINED_FUNCTION_18_2();
          v169(v168);

          v170 = sub_231E10E10();
          v171 = sub_231E11AD0();

          v172 = os_log_type_enabled(v170, v171);
          v173 = *(v2 + 288);
          v175 = *(v2 + 248);
          v174 = *(v2 + 256);
          if (v172)
          {
            OUTLINED_FUNCTION_9_1();
            v176 = OUTLINED_FUNCTION_17_1();
            v190[0] = v176;
            *v173 = 136315138;
            v177 = MEMORY[0x23837CD80](v0, MEMORY[0x277D837D0]);
            v179 = v178;

            v180 = sub_231CB5000(v177, v179, v190);

            *(v173 + 4) = v180;
            _os_log_impl(&dword_231CAE000, v170, v171, "Not processing, unsupported content type: %s", v173, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v176);
            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_11();

            (*(v174 + 8))(v173, v175);
          }

          else
          {

            (*(v174 + 8))(v173, v175);
          }
        }

        else
        {
          v104 = *(v2 + 280);
          v105 = *(v2 + 248);
          v106 = *(v2 + 256);
          v107 = *(v2 + 168);
          sub_231DC4C1C();
          v108 = OUTLINED_FUNCTION_23_0();
          v109(v108);
          v110 = v107;
          v111 = sub_231E10E10();
          v112 = sub_231E11AB0();
          if (OUTLINED_FUNCTION_79_3(v112))
          {
            v113 = *(v2 + 168);
            v114 = OUTLINED_FUNCTION_9_1();
            v115 = OUTLINED_FUNCTION_67();
            v190[0] = v115;
            *v114 = 136315138;
            v116 = sub_231DBAF78(v113, &selRef_bundleID);
            v118 = v117;

            if (!v118)
            {
LABEL_95:
              __break(1u);
              return;
            }

            v119 = *(v2 + 280);
            v120 = *(v2 + 248);
            v121 = *(v2 + 256);
            v122 = sub_231CB5000(v116, v118, v190);

            *(v114 + 4) = v122;
            _os_log_impl(&dword_231CAE000, v111, v112, "Not processing, summary/urgency searchable item flags not set for 3rd party bundle: %s", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v115);
            OUTLINED_FUNCTION_81_6();
            OUTLINED_FUNCTION_30();

            (*(v121 + 8))(v119, v120);
          }

          else
          {
            v147 = *(v2 + 280);
            v148 = *(v2 + 248);
            v149 = *(v2 + 256);

            v150 = OUTLINED_FUNCTION_43_4();
            v151(v150);
          }
        }

        goto LABEL_84;
      }
    }

    v84 = sub_231DBAF14([*(v2 + 168) attributeSet]);
    if (v84)
    {
      v85 = v84;
      v86 = sub_231CC7FC8();
      v87 = v86[1];
      *(v2 + 112) = *v86;
      *(v2 + 120) = v87;
      v88 = swift_task_alloc();
      *(v88 + 16) = v2 + 112;

      sub_231D162D0(sub_231D266B0, v88, v85);
      OUTLINED_FUNCTION_169_1();
    }

    v89 = *(v2 + 296);
    v90 = *(v2 + 248);
    v91 = *(v2 + 256);
    sub_231DC4C1C();
    v92 = OUTLINED_FUNCTION_23_0();
    v93(v92);
    v94 = sub_231E10E10();
    v95 = sub_231E11AB0();
    v96 = OUTLINED_FUNCTION_79_3(v95);
    v97 = *(v2 + 296);
    v98 = *(v2 + 248);
    v99 = *(v2 + 256);
    if (v96)
    {
      v100 = OUTLINED_FUNCTION_16_1();
      *v100 = 0;
      _os_log_impl(&dword_231CAE000, v94, v95, "Not processing, notes item does not have voice audio content type or needs summary flag set", v100, 2u);
      OUTLINED_FUNCTION_30();
    }

    v101 = *(v99 + 8);
    v102 = OUTLINED_FUNCTION_25();
    v103(v102);
    goto LABEL_84;
  }

  v16 = *(v2 + 168);

  v0 = sub_231DBAF78(v16, &selRef_domainIdentifier);
  v18 = v17;
  v19 = sub_231CC78C0();
  if (!v18 || (OUTLINED_FUNCTION_56_10(v19) == v0 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (OUTLINED_FUNCTION_172_2(), (sub_231E12100() & 1) == 0)))
  {
    v81 = sub_231CC78B4();
    if (v18)
    {
      if (OUTLINED_FUNCTION_56_10(v81) == v0 && v18 == v82)
      {
        v8 = 2;
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_172_2();
      sub_231E12100();
      OUTLINED_FUNCTION_399();

      if (v0)
      {
        v8 = 2;
        goto LABEL_80;
      }
    }

    v123 = *(v2 + 304);
    v124 = *(v2 + 248);
    v125 = *(v2 + 256);
    v126 = *(v2 + 168);
    sub_231DC4C1C();
    v127 = OUTLINED_FUNCTION_23_0();
    v128(v127);
    v129 = v126;
    v130 = sub_231E10E10();
    v131 = sub_231E11AE0();

    v132 = os_log_type_enabled(v130, v131);
    v133 = *(v2 + 304);
    v134 = *(v2 + 248);
    v135 = *(v2 + 256);
    if (v132)
    {
      v136 = *(v2 + 168);
      v137 = OUTLINED_FUNCTION_9_1();
      v138 = OUTLINED_FUNCTION_67();
      v190[0] = v138;
      *v137 = 136315138;
      *(v2 + 128) = sub_231DBAF78(v136, &selRef_domainIdentifier);
      *(v2 + 136) = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD752A0, &unk_231E1C920);
      v140 = sub_231E11680();
      v142 = sub_231CB5000(v140, v141, v190);

      *(v137 + 4) = v142;
      _os_log_impl(&dword_231CAE000, v130, v131, "Not processing, unsupported notification domain: %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v138);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();
    }

    v143 = *(v135 + 8);
    v144 = OUTLINED_FUNCTION_25();
    v146(v144, v145);
LABEL_84:
    OUTLINED_FUNCTION_99_4();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_39();

    __asm { BRAA            X1, X16 }
  }

  v8 = 3;
LABEL_79:

LABEL_80:
  v7 = [*(v2 + 168) protection];
  if (!v7)
  {
    v12 = sub_231CC79CC();
    v6 = 0;
LABEL_33:
    v7 = *v12;
    goto LABEL_34;
  }

  v6 = 0;
LABEL_34:
  *(v2 + 312) = v7;
  v22 = *(v2 + 168);
  v23 = v7;
  sub_231DBAF78(v22, &selRef_bundleID);
  if (!v24)
  {
    __break(1u);
    goto LABEL_94;
  }

  OUTLINED_FUNCTION_14_9();
  v188 = v6;
  sub_231DBAF78(*(v2 + 168), &selRef_bundleID);
  if (!v25)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v26 = *(v2 + 256);
  v186 = *(v2 + 272);
  v187 = *(v2 + 248);
  v27 = *(v2 + 224);
  v183 = *(v2 + 240);
  v184 = *(v2 + 216);
  v185 = *(v2 + 184);
  v182 = *(v2 + 176);
  v28 = *(v2 + 168);
  v29 = OUTLINED_FUNCTION_48();
  sub_231D5EF7C(v29, v30, v31, v32, v23, 0);
  OUTLINED_FUNCTION_14_9();
  v34 = v33;
  v36 = v35;
  v37 = v28;
  sub_231D593EC(v37, v8, v188, v22, v0, v34, v36, v2 + 16);
  type metadata accessor for SummarizationAnalytics(0);
  v38 = [v37 uniqueIdentifier];
  sub_231E11620();

  sub_231DE237C(v8);
  sub_231D58740();
  v181 = *(v27 + 16);
  v181(v183, v182, v184);
  sub_231DDA8A0();
  v40 = v39;
  *(v2 + 320) = v39;
  sub_231DDBE24(13, v182);
  v41 = sub_231CB4EEC();
  *(v2 + 328) = v41;
  v42 = *(v26 + 16);
  *(v2 + 336) = v42;
  *(v2 + 344) = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v186, v41, v187);

  v43 = sub_231E10E10();
  v44 = sub_231E11AF0();

  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v2 + 272);
  v48 = *(v2 + 248);
  v47 = *(v2 + 256);
  if (v45)
  {
    v189 = *(v2 + 272);
    v49 = OUTLINED_FUNCTION_9_1();
    v190[0] = OUTLINED_FUNCTION_67();
    *v49 = 136446210;
    v50 = sub_231DDB1E8();
    v52 = sub_231CB5000(v50, v51, v190);

    *(v49 + 4) = v52;
    _os_log_impl(&dword_231CAE000, v43, v44, "%{public}s Pipeline started", v49, 0xCu);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    v53 = *(v47 + 8);
    v53(v189, v48);
  }

  else
  {

    v53 = *(v47 + 8);
    v53(v46, v48);
  }

  *(v2 + 352) = v53;
  sub_231CC1784(0, &qword_2814CAF00, 0x277CC33B0);
  v54 = sub_231DACB64();
  if (v54)
  {
    v55 = v54;
    v56 = [*(v2 + 168) attributeSet];
    v57 = [v56 valueForCustomKey_];

    if (v57 && (*(v2 + 152) = v57, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75298, &unk_231E1F430), (swift_dynamicCast() & 1) != 0))
    {
      v59 = *(v2 + 232);
      v58 = *(v2 + 240);
      v61 = *(v2 + 208);
      v60 = *(v2 + 216);
      v62 = *(v2 + 200);
      v63 = *(v2 + 176);
      v64 = *(v2 + 160);
      sub_231E0F860();
      v181(v59, v63, v60);
      sub_231DD6CE0();
      swift_storeEnumTagMultiPayload();
      sub_231DDAC3C();

      sub_231DBC5E8();
    }

    else
    {
    }
  }

  v65 = *(v2 + 192);
  v66 = *(v2 + 168);
  v67 = swift_task_alloc();
  *(v2 + 360) = v67;
  v67[2] = v65;
  v67[3] = v66;
  v67[4] = v40;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v2 + 368) = v68;
  *v68 = v69;
  v68[1] = sub_231DAC50C;
  OUTLINED_FUNCTION_39();

  sub_231DDB61C();
}

void sub_231DAC50C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 360);

    v10 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231DAC624()
{
  v43 = v0;
  v1 = *(v0 + 144);
  *(v0 + 376) = v1;
  if (v1 < 0)
  {
    v9 = *(v0 + 344);
    v10 = *(v0 + 320);
    (*(v0 + 336))(*(v0 + 264), *(v0 + 328), *(v0 + 248));

    v11 = sub_231E10E10();
    v12 = sub_231E11AF0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 352);
    if (v13)
    {
      v15 = *(v0 + 320);
      v16 = *(v0 + 256);
      v40 = *(v0 + 248);
      v41 = *(v0 + 264);
      v17 = OUTLINED_FUNCTION_98_0();
      v42[0] = OUTLINED_FUNCTION_68();
      *v17 = 136446466;
      v18 = sub_231DDB1E8();
      v20 = sub_231CB5000(v18, v19, v42);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      *(v0 + 400) = v1 & 1;
      v21 = sub_231E11680();
      v23 = sub_231CB5000(v21, v22, v42);

      *(v17 + 14) = v23;
      OUTLINED_FUNCTION_142_0(&dword_231CAE000, v11, v12, "%{public}s Pipeline unavailable (%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();

      v25 = v40;
      v24 = v41;
    }

    else
    {
      v27 = *(v0 + 256);
      v26 = *(v0 + 264);
      v28 = *(v0 + 248);

      v24 = v26;
      v25 = v28;
    }

    v29 = v14(v24, v25);
    v31 = *(v0 + 312);
    v30 = *(v0 + 320);
    v32 = *(v0 + 240);
    v33 = *(v0 + 216);
    v34 = *(v0 + 224);
    sub_231DB0818(v29);
    OUTLINED_FUNCTION_134_3();
    v35 = *(v34 + 8);
    v36 = OUTLINED_FUNCTION_33();
    v37(v36);
    if (v1)
    {
      v38 = 7;
    }

    else
    {
      v38 = 6;
    }

    sub_231DDCC34(v38);

    sub_231DBBE78(v0 + 16);
    OUTLINED_FUNCTION_99_4();

    OUTLINED_FUNCTION_19();

    return v39();
  }

  else
  {
    v2 = *(v0 + 168);
    sub_231E11D70();

    v42[0] = 0xD000000000000016;
    v42[1] = 0x8000000231E36C70;
    v3 = [v2 uniqueIdentifier];
    sub_231E11620();

    v4 = OUTLINED_FUNCTION_33();
    MEMORY[0x23837CC20](v4);

    sub_231E116A0();

    *(v0 + 384) = os_transaction_create();

    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 392) = v5;
    *v5 = v6;
    v5[1] = sub_231DAC9A8;
    v7 = *(v0 + 320);

    return sub_231DACCBC();
  }
}

uint64_t sub_231DAC9A8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 392);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DACA8C()
{
  OUTLINED_FUNCTION_47_0();
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);

  sub_231DBBE78(v0 + 16);
  sub_231DBA610(v1);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_99_4();

  OUTLINED_FUNCTION_19();

  return v4();
}

id sub_231DACB64()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231E115F0();

  v2 = [v0 initWithKeyName_];

  return v2;
}

uint64_t sub_231DACBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DACBF0()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_231DBAF78(v1, &selRef_bundleID);
  v5 = sub_231DBAF14([v1 attributeSet]);
  v6 = OUTLINED_FUNCTION_70();
  v8 = sub_231DAB074(v6, v7, v5, v2);

  *v4 = v8;
  OUTLINED_FUNCTION_19();

  return v9();
}

uint64_t sub_231DACCBC()
{
  OUTLINED_FUNCTION_18();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = sub_231E10E30();
  v1[33] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[34] = v5;
  v7 = *(v6 + 64);
  v1[35] = OUTLINED_FUNCTION_69();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v8 = sub_231E0F950();
  v1[39] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[40] = v9;
  v11 = *(v10 + 64);
  v1[41] = OUTLINED_FUNCTION_69();
  v1[42] = swift_task_alloc();
  v12 = sub_231E10BE0();
  v1[43] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[44] = v13;
  v15 = *(v14 + 64);
  v1[45] = OUTLINED_FUNCTION_55();
  v16 = sub_231E106A0();
  v1[46] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[47] = v17;
  v19 = *(v18 + 64);
  v1[48] = OUTLINED_FUNCTION_55();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  v1[49] = OUTLINED_FUNCTION_55();
  v23 = sub_231E10340();
  v1[50] = v23;
  OUTLINED_FUNCTION_6(v23);
  v1[51] = v24;
  v1[52] = *(v25 + 64);
  v1[53] = OUTLINED_FUNCTION_69();
  v1[54] = swift_task_alloc();
  v26 = type metadata accessor for EntityKind();
  v1[55] = v26;
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  v1[56] = OUTLINED_FUNCTION_69();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75188, &qword_231E1EB10);
  v1[60] = v29;
  OUTLINED_FUNCTION_47(v29);
  v31 = *(v30 + 64);
  v1[61] = OUTLINED_FUNCTION_69();
  v1[62] = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_231DACF88()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[32];
  v3 = v1[20];
  v2 = v1[21];
  v0[5] = type metadata accessor for UserActivityConversationDetector();
  v0[6] = &off_2846F7DF0;
  v0[2] = v2;
  v4 = v1[36];

  os_unfair_lock_lock((v4 + 32));
  v0[63] = *(v4 + 24);

  os_unfair_lock_unlock((v4 + 32));

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_97_4(v5);
  *v6 = v7;
  v6[1] = sub_231DAD094;
  v9 = v0[30];
  v8 = v0[31];

  return sub_231D58CFC();
}

uint64_t sub_231DAD094()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *(v4 + 504);
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v2 + 656) = v9;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231DAD19C()
{
  v68 = v0;
  if (*(v0 + 656) != 1)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 264);
    v6 = *(v0 + 272);
    v7 = *(v0 + 248);
    sub_231DC4C74();
    v8 = OUTLINED_FUNCTION_18_2();
    v9(v8);

    v10 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v11 = OUTLINED_FUNCTION_91_0();
    v12 = *(v0 + 288);
    v13 = *(v0 + 264);
    v14 = *(v0 + 272);
    if (v11)
    {
      v15 = *(v0 + 248);
      OUTLINED_FUNCTION_9_1();
      v16 = OUTLINED_FUNCTION_17_1();
      v67[0] = v16;
      *v2 = 136446210;
      v17 = sub_231DDB1E8();
      sub_231CB5000(v17, v18, v67);
      OUTLINED_FUNCTION_124_1();

      *(v2 + 4) = v3;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();
    }

    v24 = *(v14 + 8);
    v25 = OUTLINED_FUNCTION_33();
    v26(v25);
    v27 = 0;
LABEL_13:
    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_134_3();
    v62 = *(v1 + 8);
    v63 = OUTLINED_FUNCTION_33();
    v64(v63);
    sub_231DDCC34(v27);
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_40_9();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95_1();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 520) = *(*(v0 + 256) + 264);
  v28 = sub_231D510E0(0x6575657571, 0xE500000000000000);
  if (v28 >= sub_231D13120())
  {
    v39 = *(v0 + 296);
    v40 = *(v0 + 264);
    v41 = *(v0 + 272);
    v42 = *(v0 + 248);
    sub_231DC4C74();
    v43 = OUTLINED_FUNCTION_18_2();
    v44(v43);

    v45 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v46 = OUTLINED_FUNCTION_91_0();
    v47 = *(v0 + 296);
    v48 = *(v0 + 264);
    v49 = *(v0 + 272);
    if (v46)
    {
      v50 = *(v0 + 248);
      OUTLINED_FUNCTION_9_1();
      v51 = OUTLINED_FUNCTION_17_1();
      v67[0] = v51;
      *v2 = 136446210;
      v52 = sub_231DDB1E8();
      sub_231CB5000(v52, v53, v67);
      OUTLINED_FUNCTION_124_1();

      *(v2 + 4) = v3;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();
    }

    v59 = *(v49 + 8);
    v60 = OUTLINED_FUNCTION_33();
    v61(v60);
    v27 = 8;
    goto LABEL_13;
  }

  v29 = *(v0 + 240);
  v30 = swift_task_alloc();
  *(v0 + 528) = v30;
  v31 = *(v0 + 248);
  *(v30 + 16) = v29;
  *(v30 + 24) = vextq_s8(v31, v31, 8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 536) = v32;
  *v32 = v33;
  v32[1] = sub_231DAD560;
  v34 = *(v0 + 496);
  v35 = *(v0 + 480);
  v36 = *(v0 + 248);
  OUTLINED_FUNCTION_95_1();

  return sub_231DDB61C();
}

void sub_231DAD560()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v3 + 544) = v0;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 528);

    v10 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

void sub_231DAD67C()
{
  v210 = v0;
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[55];
  sub_231DA3AF0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = v0[38];
    v8 = v0[33];
    v9 = v0[34];
    v10 = v0[31];
    sub_231DBC3B8(v0[61], &qword_27DD75188, &qword_231E1EB10);
    sub_231DC4C74();
    v11 = OUTLINED_FUNCTION_18_2();
    v12(v11);

    v13 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v14 = OUTLINED_FUNCTION_91_0();
    v15 = v0[38];
    v16 = v0[33];
    v17 = v0[34];
    if (v14)
    {
      v18 = v0[31];
      OUTLINED_FUNCTION_9_1();
      v19 = OUTLINED_FUNCTION_17_1();
      v209[0] = v19;
      *v2 = 136446210;
      v20 = sub_231DDB1E8();
      sub_231CB5000(v20, v21, v209);
      OUTLINED_FUNCTION_124_1();

      *(v2 + 4) = v3;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_11();
    }

    v27 = *(v17 + 8);
    v28 = OUTLINED_FUNCTION_33();
    v29(v28);
    v30 = v0[62];
    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_134_3();
    v31 = *(v1 + 8);
    v32 = OUTLINED_FUNCTION_33();
    v33(v32);
    sub_231DDCC34(3);
    v34 = v30;
    goto LABEL_5;
  }

  v37 = v0[59];
  v38 = v0[30];
  OUTLINED_FUNCTION_0_33();
  v39 = sub_231DBC1D8();
  v40 = *(v38 + 9);
  if (v40)
  {
    goto LABEL_36;
  }

  v42 = v0[58];
  v41 = v0[59];
  v43 = v0[55];
  OUTLINED_FUNCTION_0_33();
  sub_231DBC180();
  OUTLINED_FUNCTION_48();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = v0[58];
  if (EnumCaseMultiPayload == 3)
  {
    v87 = v0[44];
    v86 = v0[45];
    v88 = v0[43];
    (*(v87 + 32))(v86, v45, v88);
    v207 = sub_231E10B40();
    v196 = v89;
    v67 = sub_231E10BA0();
    v69 = v90;
    v203 = sub_231E10B90();
    v92 = v91;
    v199 = sub_231E10BD0();
    v76 = v93;
    v94 = sub_231E10B50();
    (*(v87 + 8))(v86, v88);
    v75 = *(v94 + 16);
    v71 = v92;
    v66 = v196;

    if (!v196)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        v95 = v0[58];
        v39 = sub_231DBC5E8();
      }

      else
      {
        v47 = v0[53];
        v46 = v0[54];
        v206 = v40;
        v49 = v0[51];
        v48 = v0[52];
        v51 = v0[49];
        v50 = v0[50];
        v52 = v0[31];
        v194 = v51;
        v198 = v0[32];
        v53 = *(v49 + 32);
        v202 = v46;
        v53(v46, v45, v50);
        sub_231E119F0();
        OUTLINED_FUNCTION_105();
        __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
        (*(v49 + 16))(v47, v46, v50);
        v58 = (*(v49 + 80) + 40) & ~*(v49 + 80);
        v59 = (v48 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
        v60 = swift_allocObject();
        v60[2] = 0;
        v60[3] = 0;
        v60[4] = v52;
        v53(v60 + v58, v47, v50);
        *(v60 + v59) = v198;

        v61 = OUTLINED_FUNCTION_58_9();
        sub_231CC3BE0(v61, v62, v194, v63, v60);

        v39 = (*(v49 + 8))(v202, v50);
        v40 = v206;
      }

      goto LABEL_36;
    }

    v64 = v0[47];
    (*(v64 + 32))(v0[48], v45, v0[46]);
    v207 = sub_231E10580();
    v66 = v65;
    v67 = sub_231E10520();
    v69 = v68;
    v203 = sub_231E10660();
    v71 = v70;
    v72 = *(v64 + 8);
    v73 = OUTLINED_FUNCTION_181();
    v74(v73);
    v75 = 0;
    v199 = 0;
    v76 = 0;
    if (!v66)
    {
LABEL_35:

LABEL_36:
      v83 = v0[68];
      goto LABEL_37;
    }
  }

  if (!v71)
  {
    goto LABEL_35;
  }

  if (([objc_opt_self() isDNUEnabled] & 1) == 0)
  {

    goto LABEL_35;
  }

  v77 = v0[65];
  v192 = v0[68];
  if (v69)
  {
    v78 = v67;
  }

  else
  {
    v78 = 0;
  }

  v79 = 0xE000000000000000;
  if (v69)
  {
    v80 = v69;
  }

  else
  {
    v80 = 0xE000000000000000;
  }

  if (v76)
  {
    v81 = v199;
  }

  else
  {
    v81 = 0;
  }

  if (v76)
  {
    v79 = v76;
  }

  v191 = v79;

  v189 = v78;
  v190 = v75;
  v82 = v78;
  v188 = v81;
  v83 = v192;
  *&v84 = COERCE_DOUBLE(sub_231D4D150(v207, v66, v82, v80, v203, v71, v81, v191, v75));
  v195 = v71;
  if (v192)
  {

    v165 = v0[34];
    v164 = v0[35];
    v166 = v0[33];
    v167 = v0[31];

    v168 = sub_231DC4C74();
    (*(v165 + 16))(v164, v168, v166);

    v169 = v192;
    v170 = sub_231E10E10();
    v171 = sub_231E11AD0();

    v172 = os_log_type_enabled(v170, v171);
    v173 = v0[34];
    v174 = v0[35];
    v175 = v0[33];
    if (v172)
    {
      v200 = v170;
      v176 = v0[31];
      v177 = OUTLINED_FUNCTION_98_0();
      v208 = v175;
      v178 = swift_slowAlloc();
      v209[0] = OUTLINED_FUNCTION_67();
      *v177 = 136446466;
      v179 = sub_231DDB1E8();
      v204 = v174;
      v181 = sub_231CB5000(v179, v180, v209);

      *(v177 + 4) = v181;
      *(v177 + 12) = 2112;
      v182 = v192;
      v183 = _swift_stdlib_bridgeErrorToNSError();
      *(v177 + 14) = v183;
      *v178 = v183;
      OUTLINED_FUNCTION_142_0(&dword_231CAE000, v200, v171, "%{public}s Could not access last notification database table: %@");
      sub_231DBC3B8(v178, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      v39 = (*(v173 + 8))(v204, v208);
    }

    else
    {

      v184 = *(v173 + 8);
      v185 = OUTLINED_FUNCTION_70();
      v39 = v187(v185, v186);
    }

    v83 = 0;
  }

  else
  {
    v149 = *&v84;
    v150 = v85;

    if ((v150 & 1) == 0)
    {
      v151 = v0[31];
      sub_231E0F880();
      v153 = v152 - v149;
      v154 = v151 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_timeSinceLastNotificationReceived;
      OUTLINED_FUNCTION_4_12();
      *v154 = v153;
      *(v154 + 8) = 0;
    }

    v155 = v0[65];
    v156 = v0[42];
    v158 = v0[39];
    v157 = v0[40];
    sub_231E0F920();
    sub_231E0F870();
    v160 = v159;
    v161 = *(v157 + 8);
    v162 = OUTLINED_FUNCTION_301_0();
    v163(v162);
    sub_231D4D588(v207, v66, v189, v80, v203, v195, v188, v191, v160, v190);
  }

LABEL_37:
  v97 = v0[40];
  v96 = v0[41];
  v98 = v0[39];
  v99 = v0[31];
  sub_231DBC644(v39);
  sub_231DDBE24(16, v96);
  v100 = *(v97 + 8);
  v101 = OUTLINED_FUNCTION_90_0();
  v102(v101);
  v103 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
  OUTLINED_FUNCTION_4_12();
  *(v99 + v103) = 1;
  if (v40)
  {
    v104 = v0[30];
    v0[29] = MEMORY[0x277D84FA0];
    v105 = sub_231D58740();
    if (v106)
    {
      v107 = v105;
      v108 = v106;
      v109 = *v0[30];
      if (([v109 needsSummary] & 1) != 0 || objc_msgSend(v109, sel_needsPriority))
      {
        v110 = *(v0[32] + 288);
        v111 = swift_task_alloc();
        *(v111 + 16) = v107;
        *(v111 + 24) = v108;

        os_unfair_lock_lock(v110 + 8);
        sub_231DBA4AC(v209);
        os_unfair_lock_unlock(v110 + 8);
        if (v83)
        {
          OUTLINED_FUNCTION_118_6();
          return;
        }
      }

      else
      {
      }
    }

    v136 = *v0[30];
    if (([v136 needsSummary] & 1) == 0)
    {
      sub_231DBA2F4(v209, 1);
    }

    if (([v136 needsPriority] & 1) == 0)
    {
      sub_231DBA2F4(v209, 0);
    }

    v137 = v0[32];
    v0[69] = v0[29];

    v121 = swift_task_alloc();
    v0[70] = v121;
    *v121 = v0;
    v122 = sub_231DAE3B0;
    goto LABEL_63;
  }

  v0[10] = &unk_2846F07A0;
  v112 = sub_231CC7270();
  v0[74] = v112;
  v0[11] = v112;
  *(v0 + 56) = 0;
  v113 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v113)
  {
    v114 = v0[30];
    v0[28] = MEMORY[0x277D84FA0];
    v115 = *v114;
    v116 = [*v114 attributeSet];
    v117 = [v116 summarizationStatus];

    if (v117 == 5)
    {
      sub_231DBA2F4(v209, 1);
    }

    v118 = [v115 attributeSet];
    v119 = [v118 urgencyStatus];

    if (v119 == 5)
    {
      sub_231DBA2F4(v209, 0);
    }

    v120 = v0[32];
    v0[75] = v0[28];

    v121 = swift_task_alloc();
    v0[76] = v121;
    *v121 = v0;
    v122 = sub_231DAE9D4;
LABEL_63:
    v121[1] = v122;
    v138 = v0[59];
    v139 = v0[31];
    OUTLINED_FUNCTION_118_6();

    sub_231DBE644(v140, v141, v142, v143, v144);
    return;
  }

  v123 = v0[74];
  v0[15] = &unk_2846F07A0;
  v0[16] = v123;
  *(v0 + 96) = 1;
  v124 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if ((v124 & 1) == 0)
  {
    goto LABEL_52;
  }

  v125 = v0[59];
  v126 = v0[57];
  v127 = v0[55];
  OUTLINED_FUNCTION_0_33();
  sub_231DBC180();
  OUTLINED_FUNCTION_48();
  LODWORD(v127) = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_27();
  sub_231DBC5E8();
  if (v127 == 1)
  {
    v128 = swift_task_alloc();
    v0[80] = v128;
    *v128 = v0;
    OUTLINED_FUNCTION_88_7();
  }

  else
  {
LABEL_52:
    v131 = v0[74];
    v0[20] = &unk_2846F07A0;
    v0[21] = v131;
    *(v0 + 136) = 2;
    v132 = sub_231E0FA80();
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    if ((v132 & 1) == 0)
    {
      OUTLINED_FUNCTION_112_5();
      OUTLINED_FUNCTION_1_27();
      sub_231DBC5E8();
      v34 = v132;
LABEL_5:
      sub_231DBC3B8(v34, &qword_27DD75188, &qword_231E1EB10);
      goto LABEL_6;
    }

    v133 = v0[59];
    v134 = v0[55];
    v135 = v0[56];
    OUTLINED_FUNCTION_0_33();
    sub_231DBC180();
    OUTLINED_FUNCTION_48();
    if (swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_30_10();
      sub_231DBC5E8();
      sub_231DBC3B8(v135, &qword_27DD75188, &qword_231E1EB10);
      OUTLINED_FUNCTION_25();
      sub_231DBC5E8();
LABEL_6:
      OUTLINED_FUNCTION_15_17();
      v193 = v0[38];
      v197 = v0[37];
      v201 = v0[36];
      v205 = v0[35];

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_118_6();

      __asm { BRAA            X1, X16 }
    }

    v146 = v0[56];
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    v147 = swift_task_alloc();
    v0[81] = v147;
    *v147 = v0;
    OUTLINED_FUNCTION_35_9();
  }

  *(v129 + 8) = v130;
  OUTLINED_FUNCTION_43_11();
  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_118_6();

  sub_231DB8028();
}

uint64_t sub_231DAE3B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 560);
  *v2 = *v0;
  *(v1 + 657) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DAE49C()
{
  OUTLINED_FUNCTION_29();
  if (*(v0 + 657) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 568) = v1;
    *(v1 + 16) = *(v0 + 248);
    v2 = swift_task_alloc();
    *(v0 + 576) = v2;
    *v2 = v0;
    v2[1] = sub_231DAE5F0;
    v3 = *(v0 + 248);
    OUTLINED_FUNCTION_144_3();

    return sub_231DDB61C();
  }

  else
  {
    v5 = *(v0 + 552);

    v6 = *(v0 + 552);
    v7 = *(v0 + 248);

    v8 = swift_task_alloc();
    *(v0 + 584) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_29_8(v8);

    return sub_231DB8028();
  }
}

void sub_231DAE5F0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 568);
    v10 = *(v3 + 552);

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231DAE714()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[69];
  v2 = v0[31];

  v3 = swift_task_alloc();
  v0[73] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_29_8(v3);

  return sub_231DB8028();
}

uint64_t sub_231DAE7B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1[73];
  v3 = v1[69];
  v4 = v1[31];
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DAE8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  OUTLINED_FUNCTION_112_5();
  OUTLINED_FUNCTION_1_27();
  sub_231DBC5E8();
  sub_231DBC3B8(v18, &qword_27DD75188, &qword_231E1EB10);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_40_9();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_107_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231DAE9D4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 608);
  *v2 = *v0;
  *(v1 + 658) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DAEAC0()
{
  OUTLINED_FUNCTION_29();
  if (*(v0 + 658) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 616) = v1;
    *(v1 + 16) = *(v0 + 248);
    v2 = swift_task_alloc();
    *(v0 + 624) = v2;
    *v2 = v0;
    v2[1] = sub_231DAEC14;
    v3 = *(v0 + 248);
    OUTLINED_FUNCTION_144_3();

    return sub_231DDB61C();
  }

  else
  {
    v5 = *(v0 + 600);

    v6 = *(v0 + 600);
    v7 = *(v0 + 248);

    v8 = swift_task_alloc();
    *(v0 + 632) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_29_8(v8);

    return sub_231DB8028();
  }
}

void sub_231DAEC14()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 624);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 616);
    v10 = *(v3 + 600);

    v11 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_231DAED38()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[75];
  v2 = v0[31];

  v3 = swift_task_alloc();
  v0[79] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_29_8(v3);

  return sub_231DB8028();
}

uint64_t sub_231DAEDD8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1[79];
  v3 = v1[75];
  v4 = v1[31];
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DAEEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  *(v19 + 96) = 1;
  v20 = *(v19 + 592);
  *(v19 + 120) = &unk_2846F07A0;
  *(v19 + 128) = v20;
  sub_231E0FA80();
  v21 = OUTLINED_FUNCTION_399();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v18)
  {
    v22 = *(v19 + 472);
    v23 = *(v19 + 456);
    v24 = *(v19 + 440);
    OUTLINED_FUNCTION_0_33();
    sub_231DBC180();
    OUTLINED_FUNCTION_25();
    LODWORD(v24) = swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    if (v24 == 1)
    {
      v25 = swift_task_alloc();
      *(v19 + 640) = v25;
      *v25 = v19;
      OUTLINED_FUNCTION_88_7();
LABEL_12:
      *(v26 + 8) = v27;
      OUTLINED_FUNCTION_43_11();
      OUTLINED_FUNCTION_71_5();
      OUTLINED_FUNCTION_107_1();

      return sub_231DB8028();
    }
  }

  v28 = *(v19 + 592);
  *(v19 + 160) = &unk_2846F07A0;
  *(v19 + 168) = v28;
  *(v19 + 136) = 2;
  v29 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0((v19 + 136));
  if (v29)
  {
    v30 = *(v19 + 472);
    v31 = *(v19 + 440);
    v32 = *(v19 + 448);
    OUTLINED_FUNCTION_0_33();
    sub_231DBC180();
    OUTLINED_FUNCTION_48();
    if (!swift_getEnumCaseMultiPayload())
    {
      v42 = *(v19 + 448);
      OUTLINED_FUNCTION_1_27();
      sub_231DBC5E8();
      v43 = swift_task_alloc();
      *(v19 + 648) = v43;
      *v43 = v19;
      OUTLINED_FUNCTION_35_9();
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_30_10();
    sub_231DBC5E8();
    sub_231DBC3B8(v32, &qword_27DD75188, &qword_231E1EB10);
    OUTLINED_FUNCTION_25();
    sub_231DBC5E8();
  }

  else
  {
    OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    sub_231DBC3B8(v19 + 96, &qword_27DD75188, &qword_231E1EB10);
  }

  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_40_9();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_107_1();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231DAF16C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 640);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DAF250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  *(v19 + 136) = 2;
  v20 = *(v19 + 592);
  *(v19 + 160) = &unk_2846F07A0;
  *(v19 + 168) = v20;
  sub_231E0FA80();
  v21 = OUTLINED_FUNCTION_399();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if ((v18 & 1) == 0)
  {
    OUTLINED_FUNCTION_112_5();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    sub_231DBC3B8(v19 + 136, &qword_27DD75188, &qword_231E1EB10);
    goto LABEL_5;
  }

  v22 = *(v19 + 472);
  v23 = *(v19 + 440);
  v24 = *(v19 + 448);
  OUTLINED_FUNCTION_0_33();
  sub_231DBC180();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_30_10();
    sub_231DBC5E8();
    sub_231DBC3B8(v24, &qword_27DD75188, &qword_231E1EB10);
    OUTLINED_FUNCTION_25();
    sub_231DBC5E8();
LABEL_5:
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_40_9();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_107_1();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v34 = *(v19 + 448);
  OUTLINED_FUNCTION_1_27();
  sub_231DBC5E8();
  v35 = swift_task_alloc();
  *(v19 + 648) = v35;
  *v35 = v19;
  OUTLINED_FUNCTION_35_9();
  *(v36 + 8) = v37;
  OUTLINED_FUNCTION_43_11();
  OUTLINED_FUNCTION_71_5();
  OUTLINED_FUNCTION_107_1();

  return sub_231DB8028();
}

uint64_t sub_231DAF43C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 648);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_231DAF60C()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_231E10E30();
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_141_3();
  v13 = OUTLINED_FUNCTION_83();
  if ((sub_231DAB074(v13, v14, 0, 0) & 0x8000000000000000) != 0)
  {
    v17 = sub_231CB4EEC();
    (*(v10 + 16))(v0, v17, v7);
    v18 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_143_3();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_9_1();
      v21 = OUTLINED_FUNCTION_67();
      v30 = v21;
      *v20 = 136446210;
      v22 = sub_231E11680();
      v24 = sub_231CB5000(v22, v23, &v30);

      *(v20 + 4) = v24;
      OUTLINED_FUNCTION_132_2();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_81_6();
    }

    (*(v10 + 8))(v0, v7);
    OUTLINED_FUNCTION_113();
  }

  else
  {
    sub_231DAF7E8(v6, v4, v2);
    OUTLINED_FUNCTION_113();

    sub_231DBA610(v15);
  }
}

uint64_t sub_231DAF7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_141_3();
  if (sub_231DE8A04(0) == a2 && v12 == a3)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_25_7();
  v14 = sub_231E12100();

  if (v14)
  {
LABEL_8:
    sub_231E119F0();
    OUTLINED_FUNCTION_105();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_20_9();
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a1;
    v20[5] = v3;

    v21 = OUTLINED_FUNCTION_58_9();
    sub_231CC3BE0(v21, v22, v4, v23, v20);
  }

  return result;
}

void __swiftcall PSUSummarizationPipeline.init()(PSUSummarizationPipeline *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_231DAFA70(uint64_t a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x6552207472616D53;
  }
}

uint64_t sub_231DAFAB8(uint64_t result)
{
  if (result)
  {
    v1 = sub_231DDB1E8();
    MEMORY[0x23837CC20](32, 0xE100000000000000);
    return v1;
  }

  return result;
}

uint64_t sub_231DAFB0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000231E36B30 == a2;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7065527472616D73 && a2 == 0xEC0000007365696CLL)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_10_1();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231DAFBC0(char a1)
{
  if (a1)
  {
    return 0x7065527472616D73;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_231DAFC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231DAFB0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231DAFC34()
{
  sub_231DBA6A8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DAFC6C()
{
  sub_231DBA6A8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DAFCA4()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == 0x636974796C616E61 && v2 == 0xE900000000000073;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x656E696C65706970 && v0 == 0xEF736E6F6974704FLL)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
    OUTLINED_FUNCTION_10_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231DAFD58(char a1)
{
  if (a1)
  {
    return 0x656E696C65706970;
  }

  else
  {
    return 0x636974796C616E61;
  }
}

uint64_t sub_231DAFDA0()
{
  sub_231DBA6FC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DAFDD8()
{
  sub_231DBA6FC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DAFE34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DAFCA4();
  *a1 = result;
  return result;
}

uint64_t sub_231DAFE5C()
{
  sub_231DBA750();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DAFE94()
{
  sub_231DBA750();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DAFECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75198, &qword_231E1EB80);
  v7 = OUTLINED_FUNCTION_24(v6);
  v43 = v8;
  v44 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_136_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD751A0, &qword_231E1EB88);
  v13 = OUTLINED_FUNCTION_24(v12);
  v45 = v14;
  v46 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD751A8, &qword_231E1EB90);
  OUTLINED_FUNCTION_24(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v25);
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);
  v28 = OUTLINED_FUNCTION_48();
  __swift_project_boxed_opaque_existential_0(v28, v29);
  sub_231DBA6A8();
  sub_231E12270();
  if (a2)
  {
    LOBYTE(v49) = 0;
    sub_231DBA750();
    sub_231E12000();
    v49 = a2;
    v48 = 0;
    type metadata accessor for SummarizationAnalytics(0);
    OUTLINED_FUNCTION_82_3();
    sub_231DBC50C(v30, v31);
    v33 = v46;
    v32 = v47;
    sub_231E12090();
    if (!v32)
    {
      v49 = v42;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD751B8, &qword_231E1EB98);
      sub_231DBAFD4(&qword_27DD751C0, sub_231DBA7A4);
      sub_231E12090();
    }

    (*(v45 + 8))(v19, v33);
    v34 = *(v22 + 8);
    v35 = OUTLINED_FUNCTION_25_7();
    return v36(v35);
  }

  else
  {
    LOBYTE(v49) = 1;
    sub_231DBA6FC();
    sub_231E12000();
    (*(v43 + 8))(v3, v44);
    v38 = *(v22 + 8);
    v39 = OUTLINED_FUNCTION_25_7();
    return v40(v39);
  }
}

uint64_t sub_231DB023C(uint64_t *a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD751D0, &qword_231E1EBA0);
  OUTLINED_FUNCTION_24(v64);
  v62 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD751D8, &qword_231E1EBA8);
  OUTLINED_FUNCTION_24(v9);
  v63 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_136_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD751E0, &unk_231E1EBB0);
  OUTLINED_FUNCTION_24(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_162_0();
  v21 = a1[3];
  v20 = a1[4];
  v65 = a1;
  v22 = OUTLINED_FUNCTION_301_0();
  __swift_project_boxed_opaque_existential_0(v22, v23);
  sub_231DBA6A8();
  v24 = v66;
  sub_231E12260();
  if (v24)
  {
    goto LABEL_8;
  }

  v60 = v8;
  v61 = v1;
  v66 = v16;
  v25 = sub_231E11FE0();
  result = sub_231CCF16C(v25, 0);
  if (v28 == v29 >> 1)
  {
    goto LABEL_7;
  }

  if (v28 < (v29 >> 1))
  {
    HIDWORD(v59) = *(v27 + v28);
    sub_231CCF304(v28 + 1, v29 >> 1, result, v27, v28, v29);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if ((v59 & 0x100000000) != 0)
      {
        LOBYTE(v69) = 1;
        sub_231DBA6FC();
        OUTLINED_FUNCTION_184_0();
        v34 = v66;
        swift_unknownObjectRelease();
        v44 = *(v62 + 8);
        v45 = OUTLINED_FUNCTION_25_7();
        v46(v45);
        v47 = *(v34 + 8);
        v48 = OUTLINED_FUNCTION_19_1();
        v49(v48);
        v1 = 0;
      }

      else
      {
        LOBYTE(v69) = 0;
        sub_231DBA750();
        OUTLINED_FUNCTION_184_0();
        v43 = v66;
        type metadata accessor for SummarizationAnalytics(0);
        LOBYTE(v68) = 0;
        OUTLINED_FUNCTION_82_3();
        sub_231DBC50C(v50, v51);
        OUTLINED_FUNCTION_153_2();
        v1 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD751B8, &qword_231E1EB98);
        v67 = 1;
        sub_231DBAFD4(&qword_27DD751F8, sub_231DBB048);
        OUTLINED_FUNCTION_153_2();
        v52 = v63;
        swift_unknownObjectRelease();
        v53 = *(v52 + 8);
        v54 = OUTLINED_FUNCTION_164_2();
        v55(v54);
        v56 = *(v43 + 8);
        v57 = OUTLINED_FUNCTION_19_1();
        v58(v57);
      }

      goto LABEL_8;
    }

LABEL_7:
    v35 = sub_231E11DC0();
    swift_allocError();
    v1 = v36;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10) + 48);
    *v1 = &type metadata for SummarizationPipeline.Request.RequestType;
    sub_231E11F40();
    sub_231E11DB0();
    v38 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_56_6(v35);
    (*(v39 + 104))(v1);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = *(v66 + 8);
    v41 = OUTLINED_FUNCTION_19_1();
    v42(v41);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v65);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_231DB07C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231DB023C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_231DB0848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationPipeline.Request();
  v5 = *(a1 + *(v4 + 20));
  v6 = a1 + *(v4 + 24);
  result = sub_231DBEE3C();
  v8 = result;
  if (!v5)
  {
    v8 = result + 100;
    if (__OFADD__(result, 100))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v9 = *(a2 + *(v4 + 20));
  v10 = a2 + *(v4 + 24);
  result = sub_231DBEE3C();
  if (!v9)
  {
    v11 = __OFADD__(result, 100);
    result += 100;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  if (v8 != result)
  {
    v12 = a1 + *(v4 + 24);
    result = sub_231DBEE3C();
    v13 = result;
    if (v5 || (v13 = result + 100, !__OFADD__(result, 100)))
    {
      v14 = a2 + *(v4 + 24);
      result = sub_231DBEE3C();
      if (v9)
      {
        return v13 < result;
      }

      v11 = __OFADD__(result, 100);
      result += 100;
      if (!v11)
      {
        return v13 < result;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  return sub_231E0F8E0();
}

uint64_t sub_231DB0950()
{
  OUTLINED_FUNCTION_300_0();
  if ((sub_231E0F900() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for SummarizationPipeline.Request();
  v3 = *(v1 + *(v2 + 20));
  v4 = v1 + *(v2 + 24);
  result = sub_231DBEE3C();
  v6 = result;
  if (!v3 && (v6 = result + 100, __OFADD__(result, 100)))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 24);
    v8 = *(v0 + *(v2 + 20));
    result = sub_231DBEE3C();
    if (v8)
    {
      return v6 == result;
    }

    v9 = __OFADD__(result, 100);
    result += 100;
    if (!v9)
    {
      return v6 == result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231DB09E8()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == OUTLINED_FUNCTION_154_2() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x5474736575716572 && v0 == 0xEB00000000657079;
    if (v5 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x694B797469746E65 && v0 == 0xEA0000000000646ELL)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      OUTLINED_FUNCTION_10_1();
      if (v1)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_231DB0AC0(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_154_2();
  }

  if (a1 == 1)
  {
    return 0x5474736575716572;
  }

  return 0x694B797469746E65;
}

uint64_t sub_231DB0B2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DB09E8();
  *a1 = result;
  return result;
}

uint64_t sub_231DB0B5C()
{
  sub_231DBB0E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DB0B94()
{
  sub_231DBB0E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DB0BCC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75208, &qword_231E1EBC0);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231DBB0E8();
  sub_231E12270();
  LOBYTE(v22) = 0;
  sub_231E0F950();
  OUTLINED_FUNCTION_89_6();
  sub_231DBC50C(v14, v15);
  OUTLINED_FUNCTION_172_2();
  sub_231E12090();
  if (!v2)
  {
    v16 = type metadata accessor for SummarizationPipeline.Request();
    v22 = *(v3 + *(v16 + 20));
    v21[15] = 1;
    sub_231DBB13C();
    sub_231E12090();
    v17 = *(v16 + 24);
    LOBYTE(v22) = 2;
    type metadata accessor for EntityKind();
    OUTLINED_FUNCTION_7_21();
    sub_231DBC50C(v18, v19);
    OUTLINED_FUNCTION_172_2();
    sub_231E12090();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_231DB0DDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_231E0F950();
  OUTLINED_FUNCTION_12(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_25_7();
  v10(v9);
  v11 = type metadata accessor for SummarizationPipeline.Request();
  v12 = (a3 + *(v11 + 20));
  *v12 = a1;
  v12[1] = a2;
  v13 = *(v11 + 24);
  OUTLINED_FUNCTION_0_33();
  return sub_231DBC1D8();
}

uint64_t sub_231DB0E74(uint64_t *a1)
{
  v34 = type metadata accessor for EntityKind();
  v4 = OUTLINED_FUNCTION_12(v34);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v7 = sub_231E0F950();
  v8 = OUTLINED_FUNCTION_24(v7);
  v35 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75228, &qword_231E1EBC8);
  OUTLINED_FUNCTION_24(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_136_2();
  v36 = type metadata accessor for SummarizationPipeline.Request();
  v19 = OUTLINED_FUNCTION_12(v36);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_162_0();
  sub_231E0F920();
  v23 = a1[3];
  v22 = a1[4];
  v24 = OUTLINED_FUNCTION_301_0();
  __swift_project_boxed_opaque_existential_0(v24, v25);
  sub_231DBB0E8();
  sub_231E12260();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v35 + 8))(v2, v7);
  }

  else
  {
    LOBYTE(v37) = 0;
    OUTLINED_FUNCTION_89_6();
    sub_231DBC50C(v26, v27);
    sub_231E11FD0();
    (*(v35 + 40))(v2, v14, v7);
    sub_231DBB1D0();
    OUTLINED_FUNCTION_181_0();
    *(v2 + *(v36 + 20)) = v37;
    OUTLINED_FUNCTION_7_21();
    sub_231DBC50C(v28, v29);
    OUTLINED_FUNCTION_181_0();
    v30 = OUTLINED_FUNCTION_98_2();
    v31(v30);
    v32 = *(v36 + 24);
    OUTLINED_FUNCTION_0_33();
    sub_231DBC1D8();
    OUTLINED_FUNCTION_3_26();
    sub_231DBC180();
    __swift_destroy_boxed_opaque_existential_0(a1);
    OUTLINED_FUNCTION_2_27();
    return sub_231DBC5E8();
  }
}

void sub_231DB12C4()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v120 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_5();
  v122 = v11;
  OUTLINED_FUNCTION_3_0();
  v119 = sub_231E11B20();
  v12 = OUTLINED_FUNCTION_12(v119);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  v15 = sub_231E11480();
  v16 = OUTLINED_FUNCTION_47(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  v19 = sub_231E11B30();
  v20 = OUTLINED_FUNCTION_24(v19);
  v117 = v21;
  v118 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_1();
  v116 = v25 - v24;
  *(v1 + 256) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75248, &unk_231E1EBD0);
  v26 = swift_allocObject();
  *(v26 + 32) = 0;
  v27 = MEMORY[0x277D84FA0];
  *(v26 + 16) = MEMORY[0x277D84F98];
  *(v26 + 24) = v27;
  *(v1 + 288) = v26;
  *(v1 + 296) = 0;
  v124 = type metadata accessor for DeviceContactStore();
  v28 = v3;
  v123 = sub_231DE813C(v28);
  v125 = type metadata accessor for EmailFrameworkMailFetcher();
  v121 = v28;
  v126 = sub_231CBA378(v121);
  type metadata accessor for AppIntentMailFetcher();
  sub_231CE665C();
  v29 = type metadata accessor for GenerativeModelSummarizer();
  v30 = sub_231CF559C();
  *(v1 + 96) = v29;
  *(v1 + 104) = &off_2846F15A0;
  *(v1 + 72) = v30;
  v31 = type metadata accessor for GenerativeModelUrgencyClassifier();
  v32 = sub_231DC67E8();
  *(v1 + 136) = v31;
  *(v1 + 144) = &off_2846F7F90;
  *(v1 + 112) = v32;
  type metadata accessor for SpotlightReader();
  v33 = OUTLINED_FUNCTION_31_12();
  sub_231D5EBAC(v33, v34, v35, v36, v37);
  *(v1 + 152) = sub_231DF7564();
  type metadata accessor for SpotlightWriter();
  v38 = OUTLINED_FUNCTION_31_12();
  sub_231D5EBAC(v38, v39, v40, v41, v42);
  *(v1 + 160) = sub_231CD2CF8(&v137);
  v43 = type metadata accessor for UserActivityConversationDetector();
  *(v1 + 168) = sub_231CE665C();
  v44 = type metadata accessor for UserNotificationSettings();
  v45 = sub_231D57288();
  *(v1 + 240) = v44;
  *(v1 + 248) = &off_2846F5E98;
  *(v1 + 216) = v45;
  nullsub_1(v45);
  *(v1 + 200) = &type metadata for MailSettings;
  *(v1 + 208) = &off_2846F1678;
  type metadata accessor for SummarizationPipelineDatabase();
  sub_231CC1784(0, &qword_2814CBD80, 0x277D41E20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = sub_231E115F0();
  v47 = sub_231E115F0();
  v48 = [ObjCClassFromMetadata filename:v46 subdirectory:v47];

  v49 = sub_231E11620();
  v51 = v50;

  *(v1 + 264) = sub_231D48EEC(v49, v51);
  type metadata accessor for SummarizationManager();
  v140 = v124;
  v141 = &off_2846F8F80;
  v139[0] = v123;

  nullsub_1(v52);
  v138[3] = &type metadata for MADCaptionGenerator;
  v138[4] = &off_2846F2A40;
  v114 = [objc_allocWithZone(PSUIntentMessageHistorySearcher) init];
  sub_231DA0900(v1 + 72, v134);
  sub_231DA0900(v1 + 112, v133);
  v53 = type metadata accessor for ATXSenderImportanceDeterminer();
  v54 = sub_231DA6BFC();
  v132[3] = v53;
  v132[4] = &off_2846F7228;
  v132[0] = v54;
  v56 = *(v1 + 160);
  v55 = *(v1 + 168);
  v131[3] = v43;
  v131[4] = &off_2846F7DF0;
  v131[0] = v55;
  v57 = *(v1 + 152);
  type metadata accessor for RealFeedbackClient();
  OUTLINED_FUNCTION_124_1();

  v58 = sub_231CE665C();
  v130[3] = v43;
  v130[4] = &off_2846F13D0;
  v130[0] = v58;
  v59 = *(v1 + 264);
  v129[3] = v125;
  v129[4] = &off_2846F0490;
  v129[0] = v126;
  v60 = v59;

  LOBYTE(v43) = sub_231CC7180();
  sub_231DA0900(v1 + 176, v128);
  sub_231DA0900(v1 + 216, v127);

  *(v1 + 16) = sub_231D77050(v139, v138, v114, v134, v133, v132, v131, v57, v56, v130, v60, 0, v129, v43, v61, v128, v127);
  v62 = sub_231E115F0();
  v63 = sub_231E115F0();
  v64 = [ObjCClassFromMetadata filename:v62 subdirectory:v63];

  sub_231E11620();
  v65 = OUTLINED_FUNCTION_174_2();
  *(v1 + 272) = sub_231D48EEC(v65, v66);
  type metadata accessor for SmartRepliesManager();
  v140 = v124;
  v141 = &off_2846F8F80;
  v139[0] = v123;
  v67 = objc_allocWithZone(PSUIntentMessageHistorySearcher);

  v68 = [v67 init];
  v69 = OUTLINED_FUNCTION_31_12();
  sub_231D5EBAC(v69, v70, v71, v72, v73);
  *(v1 + 24) = sub_231D62340(v139, v68, v138, *(v1 + 272));
  v74 = type metadata accessor for MailUrgencyContextProducer();
  v75 = sub_231D2D43C();
  *(v1 + 328) = v74;
  *(v1 + 336) = &off_2846F2BD0;
  *(v1 + 304) = v75;
  v76 = sub_231D17ED4();
  v77 = *v76;
  v78 = *(v1 + 16);
  OUTLINED_FUNCTION_4_12();
  v79 = *(v77 + 16);
  *(v77 + 16) = v78;

  v80 = *v76;
  type metadata accessor for ModelInputContentBuilder();

  v81 = OUTLINED_FUNCTION_31_12();
  sub_231D5EBAC(v81, v82, v83, v84, v85);
  v135 = v124;
  v136 = &off_2846F8F80;
  v134[0] = v123;
  v133[3] = v125;
  v133[4] = &off_2846F0490;
  v133[0] = v126;

  v86 = sub_231CC7180();
  v87 = sub_231D2F2D4(v139, v134, v133, v86);
  OUTLINED_FUNCTION_4_12();
  v88 = *(v80 + 24);
  *(v80 + 24) = v87;

  v89 = *v76;
  type metadata accessor for SummarizationFeedbackManager();
  v90 = *(v1 + 264);

  v91 = sub_231D59BE0(v90);
  OUTLINED_FUNCTION_4_12();
  v92 = *(v89 + 72);
  *(v89 + 72) = v91;

  v93 = *v76;
  v135 = v124;
  v136 = &off_2846F8F80;
  v134[0] = v123;
  swift_beginAccess();

  sub_231D18154(v134, v93 + 32);
  swift_endAccess();

  *(v1 + 56) = v124;
  *(v1 + 64) = &off_2846F8F80;
  *(v1 + 32) = v123;
  sub_231CC1784(0, &qword_2814CBDA0, 0x277D85C78);
  (*(v117 + 104))(v116, *MEMORY[0x277D85268], v118);

  sub_231E11470();
  v134[0] = MEMORY[0x277D84F90];
  sub_231DBC50C(&qword_2814CBDA8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD75250, &qword_231E1EBF8);
  sub_231DBB224();
  sub_231E11CD0();
  v94 = sub_231E11B40();
  *(v1 + 280) = v94;
  OUTLINED_FUNCTION_27();
  v95 = swift_allocObject();
  swift_weakInit();
  v96 = objc_allocWithZone(MEMORY[0x277D42628]);
  v97 = sub_231DBA11C(v94, sub_231DBB288, v95);
  v98 = *(v1 + 296);
  *(v1 + 296) = v97;

  v99 = *(v1 + 16);

  sub_231D93634();

  v100 = *(v1 + 264);
  sub_231D490AC();

  v101 = *(v1 + 272);
  sub_231D490AC();

  sub_231D11B98();
  sub_231D11C2C();
  sub_231CC8990(v120);
  v102 = sub_231E119F0();
  OUTLINED_FUNCTION_28_2(v120);
  if (v103)
  {
    v105 = v122;
    sub_231D1221C();
    OUTLINED_FUNCTION_28_2(v120);
    if (!v103)
    {
      sub_231DBC3B8(v120, &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_6(v102);
    v105 = v122;
    (*(v104 + 32))(v122, v120, v102);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75260, &qword_231E1EC00);
  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v102);

  v109 = OUTLINED_FUNCTION_174_2();
  v112 = sub_231D71B08(v109, v110, v105, v111, v1);
  v113 = *(v1 + 256);
  *(v1 + 256) = v112;

  sub_231DB48E8();

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DB1DA4()
{
  OUTLINED_FUNCTION_50_0();
  v1 = sub_231E0F950();
  OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  OUTLINED_FUNCTION_158_2();
  v5 = *(v0 + 32);
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_38(v9);
  *v10 = v11;
  v10[1] = sub_231CC6BF8;

  return sub_231DAB678();
}

uint64_t sub_231DB1EB0()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_69();
  v0[5] = swift_task_alloc();
  v6 = type metadata accessor for SummarizationPipeline.Request();
  v0[6] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[7] = v7;
  v0[8] = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_69();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v9 = sub_231E10E30();
  v0[15] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[16] = v10;
  v12 = *(v11 + 64);
  v0[17] = OUTLINED_FUNCTION_69();
  v0[18] = swift_task_alloc();
  v13 = sub_231E0F950();
  v0[19] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[20] = v14;
  v16 = *(v15 + 64);
  v0[21] = OUTLINED_FUNCTION_55();
  v17 = type metadata accessor for EntityKind();
  v0[22] = v17;
  OUTLINED_FUNCTION_6(v17);
  v0[23] = v18;
  v0[24] = *(v19 + 64);
  v0[25] = OUTLINED_FUNCTION_69();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_231DB20F8()
{
  v78 = v0;
  v1 = v0[29];
  v2 = v0[6];
  v3 = v0[2];
  v4 = *(v2 + 24);
  OUTLINED_FUNCTION_0_33();
  sub_231DBC180();
  if (*(v3 + *(v2 + 20)))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];

    sub_231DB0818(v8);
    sub_231DDC58C(16, v5);

    v9 = OUTLINED_FUNCTION_43_4();
    v10(v9);
  }

  v11 = v0[28];
  v12 = v0[29];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[2];
  v19 = sub_231DC4C74();
  v0[30] = v19;
  v21 = *(v15 + 16);
  v20 = v15 + 16;
  v0[31] = v21;
  v0[32] = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v13, v19, v14);
  sub_231DBC180();
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_48();
  sub_231DBC180();
  sub_231DBC180();
  v22 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_143_3();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[28];
  if (v24)
  {
    v71 = v0[16];
    v73 = v0[15];
    v75 = v0[18];
    v26 = v0[14];
    v67 = v0[22];
    v69 = v0[13];
    v27 = OUTLINED_FUNCTION_67();
    v77 = swift_slowAlloc();
    *v27 = 136446722;
    v28 = sub_231DAFAB8(*(v26 + *(v2 + 20)));
    OUTLINED_FUNCTION_83_5();
    sub_231DBC5E8();
    v29 = sub_231CB5000(v28, v20, &v77);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2080;
    OUTLINED_FUNCTION_7_21();
    sub_231DBC50C(v30, v31);
    sub_231E120D0();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    v32 = OUTLINED_FUNCTION_33();
    v35 = sub_231CB5000(v32, v33, v34);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2080;
    v36 = *(v69 + *(v2 + 20));
    OUTLINED_FUNCTION_159_1();
    v40 = v39 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v37)
    {
      v41 = 0x6552207472616D53;
    }

    else
    {
      v41 = v40;
    }

    if (v37)
    {
      v42 = 0xED00007365696C70;
    }

    else
    {
      v42 = v38;
    }

    sub_231DBC5E8();
    sub_231CB5000(v41, v42, &v77);
    OUTLINED_FUNCTION_112_3();

    *(v27 + 24) = v41;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v43, v44, v45, v46, v47, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_11();

    v48 = *(v71 + 8);
    v48(v75, v73);
  }

  else
  {
    v49 = v0[18];
    v50 = v0[15];
    v51 = v0[16];
    v53 = v0[13];
    v52 = v0[14];

    OUTLINED_FUNCTION_86_6();
    sub_231DBC5E8();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    v48 = *(v51 + 8);
    v54 = OUTLINED_FUNCTION_33();
    (v48)(v54);
    sub_231DBC5E8();
  }

  v0[33] = v48;
  v66 = v0[27];
  v56 = v0[23];
  v55 = v0[24];
  v70 = v0[29];
  v57 = v0[12];
  v74 = v0[11];
  v76 = v0[26];
  v58 = v0[7];
  v59 = v0[8];
  v72 = v0[3];
  v68 = v0[2];
  v60 = sub_231D12484();
  sub_231DBC180();
  OUTLINED_FUNCTION_87_7();
  sub_231DBC180();
  v61 = (v59 + ((v55 + *(v58 + 80) + ((*(v56 + 80) + 16) & ~*(v56 + 80))) & ~*(v58 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v0[34] = v62;
  sub_231DBC1D8();
  sub_231DBC1D8();
  *(v62 + v61) = v72;
  sub_231DBC180();
  sub_231DBC180();
  v63 = swift_allocObject();
  v0[35] = v63;
  sub_231DBC1D8();
  sub_231DBC1D8();

  v64 = swift_task_alloc();
  v0[36] = v64;
  *v64 = v0;
  v64[1] = sub_231DB2670;

  return sub_231D6DB48(&unk_231E1F3B0, v62, sub_231DBC00C, v63, v60);
}

uint64_t sub_231DB2670()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1[36];
  v3 = v1[35];
  v4 = v1[34];
  v5 = *v0;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DB278C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 16);
  (*(v0 + 248))(*(v0 + 136), *(v0 + 240), *(v0 + 120));
  OUTLINED_FUNCTION_87_7();
  sub_231DBC180();
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_48();
  sub_231DBC180();
  sub_231DBC180();
  v7 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_143_3();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 264);
  v11 = *(v0 + 200);
  if (v9)
  {
    v74 = *(v0 + 128);
    v76 = *(v0 + 120);
    v78 = *(v0 + 136);
    v12 = *(v0 + 80);
    v68 = *(v0 + 176);
    v70 = *(v0 + 72);
    v13 = *(v0 + 48);
    v66 = v13;
    v14 = OUTLINED_FUNCTION_67();
    v80 = swift_slowAlloc();
    *v14 = 136446722;
    v15 = sub_231DAFAB8(*(v12 + *(v13 + 20)));
    v72 = v10;
    OUTLINED_FUNCTION_83_5();
    sub_231DBC5E8();
    v16 = sub_231CB5000(v15, v10, &v80);

    *(v14 + 4) = v16;
    v10 = 2080;
    *(v14 + 12) = 2080;
    OUTLINED_FUNCTION_7_21();
    sub_231DBC50C(v17, v18);
    sub_231E120D0();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    v19 = OUTLINED_FUNCTION_33();
    v22 = sub_231CB5000(v19, v20, v21);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2080;
    v23 = *(v70 + *(v66 + 20));
    OUTLINED_FUNCTION_159_1();
    v27 = v26 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
    if (v24)
    {
      v28 = 0x6552207472616D53;
    }

    else
    {
      v28 = v27;
    }

    if (v24)
    {
      v29 = 0xED00007365696C70;
    }

    else
    {
      v29 = v25;
    }

    sub_231DBC5E8();
    sub_231CB5000(v28, v29, &v80);
    OUTLINED_FUNCTION_112_3();

    *(v14 + 24) = v28;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v30, v31, v32, v33, v34, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_11();

    v72(v78, v76);
  }

  else
  {
    v36 = *(v0 + 128);
    v35 = *(v0 + 136);
    v37 = *(v0 + 120);
    v39 = *(v0 + 72);
    v38 = *(v0 + 80);

    OUTLINED_FUNCTION_86_6();
    sub_231DBC5E8();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    v40 = OUTLINED_FUNCTION_33();
    (v10)(v40);
    sub_231DBC5E8();
  }

  sub_231CC8990(*(v0 + 32));
  sub_231E119F0();
  v41 = OUTLINED_FUNCTION_124_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v10);
  v44 = *(v0 + 32);
  v43 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    v45 = *(v0 + 40);
    sub_231D1221C();
    if (__swift_getEnumTagSinglePayload(v44, 1, v10) != 1)
    {
      sub_231DBC3B8(*(v0 + 32), &qword_27DD75180, &qword_231E13690);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_6(v10);
    (*(v46 + 32))();
  }

  v47 = *(v0 + 224);
  v48 = *(v0 + 232);
  v49 = *(v0 + 208);
  v50 = *(v0 + 216);
  v51 = *(v0 + 200);
  v52 = *(v0 + 168);
  v64 = *(v0 + 144);
  v65 = *(v0 + 136);
  v67 = *(v0 + 112);
  v69 = *(v0 + 104);
  v71 = *(v0 + 96);
  v73 = *(v0 + 88);
  v75 = *(v0 + 80);
  v77 = *(v0 + 72);
  v53 = *(v0 + 40);
  v79 = *(v0 + 32);
  v54 = *(v0 + 24);
  OUTLINED_FUNCTION_15_7();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v10);
  OUTLINED_FUNCTION_299_0();
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v54;

  v59 = OUTLINED_FUNCTION_58_9();
  sub_231D6AE00(v59, v60, v53, v61, v58);

  sub_231DBC3B8(v53, &qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_1_27();
  sub_231DBC5E8();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_39();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231DB2C5C()
{
  OUTLINED_FUNCTION_18();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_231E10AE0();
  v0[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v8 = sub_231E10BE0();
  v0[8] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[9] = v9;
  v11 = *(v10 + 64);
  v0[10] = OUTLINED_FUNCTION_55();
  v12 = sub_231E10A30();
  v0[11] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = OUTLINED_FUNCTION_55();
  v16 = sub_231E106A0();
  v0[14] = v16;
  OUTLINED_FUNCTION_6(v16);
  v0[15] = v17;
  v19 = *(v18 + 64);
  v0[16] = OUTLINED_FUNCTION_55();
  v20 = sub_231E10E30();
  v0[17] = v20;
  OUTLINED_FUNCTION_6(v20);
  v0[18] = v21;
  v23 = *(v22 + 64);
  v0[19] = OUTLINED_FUNCTION_69();
  v0[20] = swift_task_alloc();
  v24 = sub_231E10340();
  v0[21] = v24;
  OUTLINED_FUNCTION_6(v24);
  v0[22] = v25;
  v27 = *(v26 + 64);
  v0[23] = OUTLINED_FUNCTION_55();
  v28 = type metadata accessor for EntityKind();
  v0[24] = v28;
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  v0[25] = OUTLINED_FUNCTION_55();
  v31 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_231DB2EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[24];
  v12 = v10[25];
  v13 = v10[2];
  OUTLINED_FUNCTION_0_33();
  sub_231DBC180();
  OUTLINED_FUNCTION_48();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = v10[25];
  v16 = v10[3];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v10[15] + 32))(v10[16], v15, v10[14]);
      v50 = type metadata accessor for SummarizationPipeline.Request();
      OUTLINED_FUNCTION_76_5(v50);
      v10[31] = v11;
      v52 = v10[16];
      if (v11)
      {
        OUTLINED_FUNCTION_115_6(v51);

        OUTLINED_FUNCTION_74_2();
        sub_231D858FC();
        v54 = v53;
        v10[32] = v53;

        if (v54)
        {
          v55 = *(MEMORY[0x277D857D0] + 4);
          swift_task_alloc();
          OUTLINED_FUNCTION_58_0();
          v10[33] = v56;
          *v56 = v57;
          v56[1] = sub_231DB3958;
          goto LABEL_17;
        }

        goto LABEL_39;
      }

      v92 = *(v10[4] + 24);
      v93 = v10[16];
      sub_231D64FA4();
      v10[34] = v94;
      if (!v94)
      {
LABEL_39:
        v120 = v10[15];
        v119 = v10[16];
        v121 = v10[14];
        goto LABEL_40;
      }

      v96 = v10[18];
      v95 = v10[19];
      v97 = v10[17];
      sub_231DC4C74();
      v98 = OUTLINED_FUNCTION_18_2();
      v99(v98);
      v100 = sub_231E10E10();
      v101 = sub_231E11AF0();
      if (OUTLINED_FUNCTION_79_3(v101))
      {
        *OUTLINED_FUNCTION_16_1() = 0;
        OUTLINED_FUNCTION_132_2();
        _os_log_impl(v102, v103, v104, v105, v106, 2u);
        OUTLINED_FUNCTION_81_6();
      }

      v108 = v10[18];
      v107 = v10[19];
      v109 = v10[17];

      v110 = *(v108 + 8);
      v111 = OUTLINED_FUNCTION_33();
      v112(v111);
      v113 = *(MEMORY[0x277D857D0] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v10[35] = v114;
      *v114 = v115;
      v114[1] = sub_231DB3AF8;
LABEL_17:
      OUTLINED_FUNCTION_66_0();

      return MEMORY[0x282200440](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10);
    case 2:
      (*(v10[12] + 32))(v10[13], v15, v10[11]);
      v34 = type metadata accessor for SummarizationPipeline.Request();
      OUTLINED_FUNCTION_76_5(v34);
      v10[36] = v11;
      v27 = v10[13];
      if (!v11)
      {
        v66 = v10[11];
        v67 = v10[12];
        goto LABEL_23;
      }

      v36 = v10[4];
      OUTLINED_FUNCTION_115_6(v35);

      OUTLINED_FUNCTION_74_2();
      sub_231D77494();
      v38 = v37;
      v10[37] = v37;

      if (v38)
      {
        v39 = *(MEMORY[0x277D857D0] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_58_0();
        v10[38] = v40;
        *v40 = v41;
        v40[1] = sub_231DB3C94;
        goto LABEL_17;
      }

      v117 = v10[12];
      v116 = v10[13];
      v118 = v10[11];
      goto LABEL_35;
    case 3:
      (*(v10[9] + 32))(v10[10], v15, v10[8]);
      v42 = type metadata accessor for SummarizationPipeline.Request();
      OUTLINED_FUNCTION_76_5(v42);
      v10[39] = v11;
      v27 = v10[10];
      if (!v11)
      {
        v66 = v10[8];
        v67 = v10[9];
        goto LABEL_23;
      }

      v44 = v10[4];
      OUTLINED_FUNCTION_115_6(v43);

      OUTLINED_FUNCTION_74_2();
      sub_231D7B8FC();
      v46 = v45;
      v10[40] = v45;

      if (v46)
      {
        v47 = *(MEMORY[0x277D857D0] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_58_0();
        v10[41] = v48;
        *v48 = v49;
        v48[1] = sub_231DB3E34;
        goto LABEL_17;
      }

      v117 = v10[9];
      v116 = v10[10];
      v118 = v10[8];
      goto LABEL_35;
    case 4:
      (*(v10[6] + 32))(v10[7], v15, v10[5]);
      v25 = type metadata accessor for SummarizationPipeline.Request();
      OUTLINED_FUNCTION_76_5(v25);
      v10[42] = v11;
      v27 = v10[7];
      if (v11)
      {
        v28 = v10[4];
        OUTLINED_FUNCTION_115_6(v26);

        OUTLINED_FUNCTION_74_2();
        sub_231D896BC();
        v30 = v29;
        v10[43] = v29;

        if (v30)
        {
          v31 = *(MEMORY[0x277D857D0] + 4);
          swift_task_alloc();
          OUTLINED_FUNCTION_58_0();
          v10[44] = v32;
          *v32 = v33;
          v32[1] = sub_231DB3FD4;
          goto LABEL_17;
        }

        v117 = v10[6];
        v116 = v10[7];
        v118 = v10[5];
LABEL_35:
        (*(v117 + 8))(v116, v118);
      }

      else
      {
        v66 = v10[5];
        v67 = v10[6];
LABEL_23:
        (*(v67 + 8))(v27, v66);
      }

      goto LABEL_41;
    default:
      (*(v10[22] + 32))(v10[23], v15, v10[21]);
      v17 = type metadata accessor for SummarizationPipeline.Request();
      OUTLINED_FUNCTION_76_5(v17);
      v10[26] = v11;
      v19 = v10[23];
      if (v11)
      {
        OUTLINED_FUNCTION_115_6(v18);

        OUTLINED_FUNCTION_74_2();
        sub_231D7F5D0();
        v21 = v20;
        v10[27] = v20;

        if (v21)
        {
          v22 = *(MEMORY[0x277D857D0] + 4);
          swift_task_alloc();
          OUTLINED_FUNCTION_58_0();
          v10[28] = v23;
          *v23 = v24;
          v23[1] = sub_231DB361C;
          goto LABEL_17;
        }
      }

      else
      {
        v68 = *(v10[4] + 24);
        v69 = v10[23];
        sub_231D62578();
        v10[29] = v70;
        if (v70)
        {
          v71 = v10[20];
          v72 = v10[17];
          v73 = v10[18];
          sub_231DC4C74();
          v74 = OUTLINED_FUNCTION_18_2();
          v75(v74);
          v76 = sub_231E10E10();
          v77 = sub_231E11AF0();
          if (OUTLINED_FUNCTION_79_3(v77))
          {
            *OUTLINED_FUNCTION_16_1() = 0;
            OUTLINED_FUNCTION_132_2();
            _os_log_impl(v78, v79, v80, v81, v82, 2u);
            OUTLINED_FUNCTION_81_6();
          }

          v83 = v10[20];
          v84 = v10[17];
          v85 = v10[18];

          v86 = *(v85 + 8);
          v87 = OUTLINED_FUNCTION_33();
          v88(v87);
          v89 = *(MEMORY[0x277D857D0] + 4);
          swift_task_alloc();
          OUTLINED_FUNCTION_58_0();
          v10[30] = v90;
          *v90 = v91;
          v90[1] = sub_231DB37BC;
          goto LABEL_17;
        }
      }

      v120 = v10[22];
      v119 = v10[23];
      v121 = v10[21];
LABEL_40:
      (*(v120 + 8))(v119, v121);
LABEL_41:
      OUTLINED_FUNCTION_20_14();

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_66_0();

      return v123(v122, v123, v124, v125, v126, v127, v128, v129, a9, a10);
  }
}

uint64_t sub_231DB361C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 224);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DB3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v12 = v10[26];
  v11 = v10[27];

  (*(v10[22] + 8))(v10[23], v10[21]);
  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231DB37BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DB38A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[29];
  v13 = v10[22];
  v12 = v10[23];
  v14 = v10[21];

  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_48();
  v17(v16);
  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_231DB3958()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 264);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DB3A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v12 = v10[31];
  v11 = v10[32];

  (*(v10[15] + 8))(v10[16], v10[14]);
  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231DB3AF8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 280);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DB3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[34];
  v13 = v10[15];
  v12 = v10[16];
  v14 = v10[14];

  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_48();
  v17(v16);
  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_231DB3C94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 304);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DB3D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v12 = v10[36];
  v11 = v10[37];
  v14 = v10[12];
  v13 = v10[13];
  v15 = v10[11];

  v16 = OUTLINED_FUNCTION_43_4();
  v17(v16);
  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_231DB3E34()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DB3F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v12 = v10[39];
  v11 = v10[40];
  v14 = v10[9];
  v13 = v10[10];
  v15 = v10[8];

  v16 = OUTLINED_FUNCTION_43_4();
  v17(v16);
  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_231DB3FD4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 352);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DB40B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v12 = v10[42];
  v11 = v10[43];
  v14 = v10[6];
  v13 = v10[7];
  v15 = v10[5];

  v16 = OUTLINED_FUNCTION_43_4();
  v17(v16);
  OUTLINED_FUNCTION_20_14();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

void sub_231DB4174()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  v37 = type metadata accessor for EntityKind();
  v4 = OUTLINED_FUNCTION_12(v37);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v7 = type metadata accessor for SummarizationPipeline.Request();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_162_0();
  v11 = sub_231E10E30();
  v12 = OUTLINED_FUNCTION_24(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_141_3();
  v17 = *(v7 + 20);
  v18 = *(v3 + v17);
  if (v18)
  {
    v19 = *(v3 + v17);

    v20 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason;
    OUTLINED_FUNCTION_4_12();
    *(v18 + v20) = 2;
  }

  v21 = sub_231DC4C74();
  (*(v14 + 16))(v0, v21, v11);
  OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_70();
  sub_231DBC180();
  OUTLINED_FUNCTION_0_33();
  OUTLINED_FUNCTION_174_2();
  sub_231DBC180();
  v22 = sub_231E10E10();
  v23 = v11;
  v24 = sub_231E11AE0();
  if (os_log_type_enabled(v22, v24))
  {
    v25 = OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_68();
    *v25 = 136446722;
    sub_231DAFAB8(*(v1 + *(v7 + 20)));
    v36 = v23;
    OUTLINED_FUNCTION_2_27();
    sub_231DBC5E8();
    v26 = OUTLINED_FUNCTION_301_0();
    v29 = sub_231CB5000(v26, v27, v28);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2048;
    *(v25 + 14) = sub_231D12484();
    *(v25 + 22) = 2080;
    OUTLINED_FUNCTION_7_21();
    sub_231DBC50C(v30, v31);
    sub_231E120D0();
    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    v32 = OUTLINED_FUNCTION_181();
    v35 = sub_231CB5000(v32, v33, v34);

    *(v25 + 24) = v35;
    _os_log_impl(&dword_231CAE000, v22, v24, "%{public}sReached the upper bound of %f seconds for a task in the queue for: %s", v25, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_81_6();
    OUTLINED_FUNCTION_31_1();

    (*(v14 + 8))(v0, v36);
  }

  else
  {

    OUTLINED_FUNCTION_1_27();
    sub_231DBC5E8();
    (*(v14 + 8))(v0, v23);
    OUTLINED_FUNCTION_2_27();
    sub_231DBC5E8();
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DB4498()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_231E10E30();
  v0[3] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_55();
  v6 = type metadata accessor for SummarizationPipeline.Request();
  OUTLINED_FUNCTION_6(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v10 = sub_231E0F950();
  v0[8] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[9] = v11;
  v13 = *(v12 + 64);
  v0[10] = OUTLINED_FUNCTION_69();
  v0[11] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_231DB45DC()
{
  OUTLINED_FUNCTION_47_0();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[2];
  v6 = *(v5 + 264);
  sub_231E0F920();
  sub_231D11D54();
  OUTLINED_FUNCTION_126_1();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_83();
  v7(v8);
  OUTLINED_FUNCTION_55_7();
  sub_231D50EC8();
  v9 = OUTLINED_FUNCTION_33();
  v7(v9);
  sub_231E0F920();
  sub_231D11EB4();
  OUTLINED_FUNCTION_126_1();
  v10 = OUTLINED_FUNCTION_83();
  v7(v10);
  OUTLINED_FUNCTION_55_7();
  sub_231D4D9FC();
  v11 = OUTLINED_FUNCTION_33();
  v7(v11);
  sub_231E0F920();
  sub_231D12A28();
  OUTLINED_FUNCTION_126_1();
  v12 = OUTLINED_FUNCTION_83();
  v7(v12);
  OUTLINED_FUNCTION_55_7();
  sub_231D4F0D0();
  v13 = OUTLINED_FUNCTION_33();
  v7(v13);
  sub_231E0F920();
  sub_231D12978();
  OUTLINED_FUNCTION_126_1();
  v14 = OUTLINED_FUNCTION_83();
  v7(v14);
  OUTLINED_FUNCTION_55_7();
  sub_231D4FA60();
  v15 = OUTLINED_FUNCTION_33();
  v7(v15);
  v16 = sub_231D11C2C();
  if (!*(v5 + 256))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = *(v5 + 256);

  v19 = sub_231D72398();

  v20 = v17 - v19;
  if (__OFSUB__(v17, v19))
  {
    goto LABEL_18;
  }

  v21 = sub_231D11CC0();
  v22 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
    goto LABEL_19;
  }

  if (v22 >= 1)
  {
    v23 = v0[6];
    sub_231D4FC7C();
    v25 = v24;
    v26 = 0;
    v27 = *(v24 + 16);
    while (1)
    {
      if (v27 == v26)
      {

        goto LABEL_14;
      }

      if (v26 >= *(v25 + 16))
      {
        break;
      }

      v28 = v0[7];
      v29 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v30 = *(v23 + 72);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      if (!*(v5 + 256))
      {
        goto LABEL_20;
      }

      v31 = v0[7];
      ++v26;
      v32 = *(v5 + 256);

      sub_231D71DB0(v31, 0);

      OUTLINED_FUNCTION_2_27();
      sub_231DBC5E8();
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v0[4];
  v33 = v0[5];
  v35 = v0[3];
  sub_231DC4C74();
  v36 = OUTLINED_FUNCTION_18_2();
  v37(v36);
  v38 = sub_231E10E10();
  v39 = sub_231E11AB0();
  if (OUTLINED_FUNCTION_79_3(v39))
  {
    v40 = OUTLINED_FUNCTION_9_1();
    *v40 = 134217984;
    *(v40 + 4) = v22;
    OUTLINED_FUNCTION_132_2();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    OUTLINED_FUNCTION_81_6();
  }

  v47 = v0[4];
  v46 = v0[5];
  v48 = v0[3];

  v49 = OUTLINED_FUNCTION_43_4();
  v50(v49);
LABEL_14:
  v52 = v0[10];
  v51 = v0[11];
  v53 = v0[7];
  v54 = v0[5];

  OUTLINED_FUNCTION_19();

  v55();
}

void sub_231DB48E8()
{
  OUTLINED_FUNCTION_118();
  v2 = v0;
  v3 = sub_231E10E30();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_141_3();
  v9 = sub_231E11460();
  v10 = OUTLINED_FUNCTION_24(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_1();
  v17 = v16 - v15;
  v34 = &unk_2846F07A0;
  v35 = sub_231CC7270();
  LOBYTE(v33[0]) = 5;
  v18 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (v18)
  {
    v32 = v6;
    v19 = [objc_opt_self() sharedScheduler];
    v20 = sub_231E115F0();
    sub_231CC1784(0, &qword_2814CBDA0, 0x277D85C78);
    (*(v12 + 104))(v17, *MEMORY[0x277D851D0], v9);
    v21 = sub_231E11B50();
    (*(v12 + 8))(v17, v9);
    v35 = sub_231DBBDE4;
    v36 = v2;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 1107296256;
    v33[2] = sub_231D2F010;
    v34 = &block_descriptor_84;
    v22 = _Block_copy(v33);

    v23 = [v19 registerForTaskWithIdentifier:v20 usingQueue:v21 launchHandler:v22];
    _Block_release(v22);

    if ((v23 & 1) == 0)
    {
      v24 = sub_231DC4B64();
      (*(v32 + 16))(v1, v24, v3);
      v25 = sub_231E10E10();
      v26 = sub_231E11AD0();
      if (OUTLINED_FUNCTION_79_3(v26))
      {
        *OUTLINED_FUNCTION_16_1() = 0;
        OUTLINED_FUNCTION_132_2();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_81_6();
      }

      (*(v32 + 8))(v1, v3);
    }
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231DB4C08(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_141_3();
  sub_231E119F0();
  OUTLINED_FUNCTION_105();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_20_9();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;

  v14 = a1;
  v15 = OUTLINED_FUNCTION_58_9();
  sub_231CC3BE0(v15, v16, v2, v17, v13);
}

uint64_t sub_231DB4CDC()
{
  OUTLINED_FUNCTION_18();
  v0[34] = v1;
  v0[35] = v2;
  v3 = sub_231E10A30();
  v0[36] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[37] = v4;
  v6 = *(v5 + 64);
  v0[38] = OUTLINED_FUNCTION_55();
  v7 = sub_231E106A0();
  v0[39] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[40] = v8;
  v10 = *(v9 + 64);
  v0[41] = OUTLINED_FUNCTION_55();
  v11 = sub_231E10340();
  v0[42] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[43] = v12;
  v14 = *(v13 + 64);
  v0[44] = OUTLINED_FUNCTION_55();
  v15 = type metadata accessor for EntityKind();
  v0[45] = v15;
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  v0[46] = OUTLINED_FUNCTION_55();
  v18 = sub_231E0F950();
  v0[47] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[48] = v19;
  v21 = *(v20 + 64);
  v0[49] = OUTLINED_FUNCTION_55();
  v22 = type metadata accessor for SummarizationPipeline.Request();
  v0[50] = v22;
  OUTLINED_FUNCTION_6(v22);
  v0[51] = v23;
  v25 = *(v24 + 64);
  v0[52] = OUTLINED_FUNCTION_55();
  v26 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

void sub_231DB4ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v18 = *(v15[34] + 264);
  sub_231D11C2C();
  sub_231D4FC7C();
  v15[53] = v19;
  v20 = *(v19 + 16);
  v15[54] = v20;
  v15[55] = 0;
  if (v20)
  {
    if (*(v19 + 16))
    {
      v21 = v15[52];
      v22 = v15[50];
      v23 = *(v15[51] + 80);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      OUTLINED_FUNCTION_28_9();
      if (v21)
      {
        OUTLINED_FUNCTION_19_10(v24);

        sub_231DBC644(v25);
        OUTLINED_FUNCTION_137_1();
        v26 = OUTLINED_FUNCTION_13_16();
        v27 = v16(v26);
        sub_231DBC644(v27);
        v28 = OUTLINED_FUNCTION_91_7();
        sub_231DDBE24(v28, v29);
        v30 = OUTLINED_FUNCTION_70();
        v16(v30);
        v31 = *(v17 + 24);
        OUTLINED_FUNCTION_0_33();
        OUTLINED_FUNCTION_138_1();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_27_9();
        switch(v32)
        {
          case 1:
            v60 = OUTLINED_FUNCTION_12_16();
            v61(v60);
            v62 = *(v22 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v63 = swift_allocObject();
            *(OUTLINED_FUNCTION_111_4(v63) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10690();
            *(v14 + 40) = v64;
            v65 = swift_task_alloc();
            v66 = OUTLINED_FUNCTION_97_4(v65);
            *v66 = v67;
            OUTLINED_FUNCTION_4_21(v66);
            OUTLINED_FUNCTION_35();

            sub_231DFF530(v68);
            break;
          case 2:
            v70 = OUTLINED_FUNCTION_11_17();
            v71(v70);
            v72 = *(v22 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v73 = swift_allocObject();
            *(OUTLINED_FUNCTION_110_6(v73) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10A20();
            *(v14 + 40) = v74;
            v75 = swift_task_alloc();
            v76 = OUTLINED_FUNCTION_107_7(v75);
            *v76 = v77;
            OUTLINED_FUNCTION_5_23(v76);
            OUTLINED_FUNCTION_35();

            sub_231DFE62C(v78);
            break;
          case 3:
            goto LABEL_13;
          case 4:
            OUTLINED_FUNCTION_41_11();
            goto LABEL_13;
          default:
            v33 = OUTLINED_FUNCTION_10_19();
            v34(v33);
            v35 = *(v22 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v36 = swift_allocObject();
            *(OUTLINED_FUNCTION_109_6(v36) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10000();
            *(v14 + 40) = v37;
            v38 = swift_task_alloc();
            v39 = OUTLINED_FUNCTION_108_5(v38);
            *v39 = v40;
            OUTLINED_FUNCTION_6_20(v39);
            OUTLINED_FUNCTION_35();

            sub_231DFEF7C(v41);
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_9();
LABEL_13:
        OUTLINED_FUNCTION_102_5();
        OUTLINED_FUNCTION_37_10("Fatal error", v58, "ProactiveSummarization/SummarizationPipeline.swift", v59);
        OUTLINED_FUNCTION_35();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v43 = v15[52];
    v44 = v15[49];
    v45 = v15[46];
    v46 = v15[44];
    v47 = v15[41];
    v48 = v15[38];
    v49 = v15[35];

    [v49 setTaskCompleted];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_35();

    v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_231DB5270()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v2 + 488);
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  *(v3 + 496) = v8;

  v9 = *(v2 + 480);
  if (v0)
  {
    v10 = *(v3 + 456);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231DB53B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v19 = v15[62];
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    v46 = v15[62];
    v47 = v15[57];

    goto LABEL_14;
  }

  if (!OUTLINED_FUNCTION_148_1())
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x23837D2A0](0, v15[62]);
    v111 = v15[62];
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v20 = *(v15[62] + 32);
  }

  v21 = v20;
  OUTLINED_FUNCTION_95_6(v21, 0, (v15 + 14));
  sub_231D1FB54();
  v14 = v22;
  sub_231DBBE78((v15 + 14));
  v23 = OUTLINED_FUNCTION_101_7();
  v26 = sub_231D0D3F8(v23, v24, v25);
  v27 = OUTLINED_FUNCTION_101_7();
  sub_231CBA16C(v27, v28, v29);
  if (!v26)
  {
    v45 = v15[57];

LABEL_14:

    goto LABEL_15;
  }

  v30 = v15[34];
  v31 = *(v30 + 256);
  if (!v31)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v14 = v15[57];
  v32 = v15[52];
  v33 = *(v30 + 256);

  sub_231D71DB0(v32, 0);
  OUTLINED_FUNCTION_169_1();

  if (v14)
  {
    OUTLINED_FUNCTION_94_6();
    v34 = v15[49];
    v35 = v15[47];
    v36 = v15[43];
    v37 = v15[44];
    v16 = v15[42];
    sub_231DB0818(v38);
    v39 = OUTLINED_FUNCTION_91_7();
    sub_231DDC58C(v39, v40);
    v41 = OUTLINED_FUNCTION_70();
    v42 = (v18)(v41);
    sub_231DBC644(v42);
    sub_231DDBE24(16, v34);

    v43 = OUTLINED_FUNCTION_70();
    (v18)(v43);
    (*(v36 + 8))(v37, v16);
    OUTLINED_FUNCTION_2_27();
    sub_231DBC5E8();
    v44 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
    v14 = 1;
    OUTLINED_FUNCTION_4_12();
    *(v31 + v44) = 1;

    goto LABEL_16;
  }

LABEL_15:
  OUTLINED_FUNCTION_17_9();
  v18 = v15[43];
  v48 = v15[44];
  v37 = v15[42];
  sub_231DB0818(v49);
  OUTLINED_FUNCTION_139_1();
  v50 = OUTLINED_FUNCTION_33();
  v51 = v17(v50);
  sub_231DB0818(v51);
  OUTLINED_FUNCTION_134_3();
  v52 = OUTLINED_FUNCTION_33();
  v17(v52);
  sub_231DDCC34(4);

  v53 = OUTLINED_FUNCTION_44_10();
  v54(v53);
  OUTLINED_FUNCTION_2_27();
  sub_231DBC5E8();
LABEL_16:
  OUTLINED_FUNCTION_33_13();
  if (!v55)
  {
    OUTLINED_FUNCTION_45_4();
    if (!v64)
    {
      v65 = v15[51];
      v66 = v15[52];
      v67 = v15[50];
      v68 = *(v65 + 80);
      v69 = *(v65 + 72);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      OUTLINED_FUNCTION_28_9();
      if (v66)
      {
        OUTLINED_FUNCTION_19_10(v70);

        sub_231DBC644(v71);
        OUTLINED_FUNCTION_137_1();
        v72 = OUTLINED_FUNCTION_13_16();
        v73 = v37(v72);
        sub_231DBC644(v73);
        v74 = OUTLINED_FUNCTION_91_7();
        sub_231DDBE24(v74, v75);
        v76 = OUTLINED_FUNCTION_70();
        v37(v76);
        v77 = *(v18 + 24);
        OUTLINED_FUNCTION_0_33();
        OUTLINED_FUNCTION_138_1();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_27_9();
        switch(v78)
        {
          case 1:
            v91 = OUTLINED_FUNCTION_12_16();
            v92(v91);
            v93 = *(v67 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v94 = swift_allocObject();
            *(OUTLINED_FUNCTION_111_4(v94) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10690();
            *(v14 + 40) = v95;
            v96 = swift_task_alloc();
            v97 = OUTLINED_FUNCTION_97_4(v96);
            *v97 = v98;
            OUTLINED_FUNCTION_4_21();
            OUTLINED_FUNCTION_35();

            sub_231DFF530(v99);
            break;
          case 2:
            v101 = OUTLINED_FUNCTION_11_17();
            v102(v101);
            v103 = *(v67 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v104 = swift_allocObject();
            *(OUTLINED_FUNCTION_110_6(v104) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10A20();
            *(v14 + 40) = v105;
            v106 = swift_task_alloc();
            v107 = OUTLINED_FUNCTION_107_7(v106);
            *v107 = v108;
            OUTLINED_FUNCTION_5_23();
            OUTLINED_FUNCTION_35();

            sub_231DFE62C(v109);
            break;
          case 3:
            goto LABEL_29;
          case 4:
            OUTLINED_FUNCTION_41_11();
            goto LABEL_29;
          default:
            v79 = OUTLINED_FUNCTION_10_19();
            v80(v79);
            v81 = *(v67 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v82 = swift_allocObject();
            *(OUTLINED_FUNCTION_109_6(v82) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10000();
            *(v14 + 40) = v83;
            v84 = swift_task_alloc();
            v85 = OUTLINED_FUNCTION_108_5(v84);
            *v85 = v86;
            OUTLINED_FUNCTION_6_20();
            OUTLINED_FUNCTION_35();

            sub_231DFEF7C(v87);
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_9();
LABEL_29:
        OUTLINED_FUNCTION_102_5();
        OUTLINED_FUNCTION_37_10("Fatal error", v89, "ProactiveSummarization/SummarizationPipeline.swift", v90);
        OUTLINED_FUNCTION_35();
      }

      return;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_24_11();
  [v16 setTaskCompleted];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231DB5934()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v2 + 512);
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  *(v3 + 520) = v8;

  v9 = *(v2 + 504);
  if (v0)
  {
    v10 = *(v3 + 456);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231DB5A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v20 = v15[65];
  if (v20 >> 62)
  {
    if (OUTLINED_FUNCTION_148_1())
    {
      goto LABEL_3;
    }
  }

  else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x23837D2A0](0, v15[65]);
      v89 = v15[65];
      goto LABEL_6;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v15[65] + 32);
LABEL_6:
      v15[66] = v21;
      v22 = v15[34];

      OUTLINED_FUNCTION_95_6(v21, 1, (v15 + 8));
      v23 = *(v22 + 168);
      v15[23] = type metadata accessor for UserActivityConversationDetector();
      v15[24] = &off_2846F7DF0;
      v15[20] = v23;

      v24 = swift_task_alloc();
      v15[67] = v24;
      *v24 = v15;
      v24[1] = sub_231DB5F70;
      OUTLINED_FUNCTION_35();

      sub_231D211E0();
      return;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v26 = v15[65];
  v27 = v15[57];

  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_152_1();
  OUTLINED_FUNCTION_139_1();
  v28 = OUTLINED_FUNCTION_33();
  v29 = v18(v28);
  sub_231DB0818(v29);
  OUTLINED_FUNCTION_134_3();
  v30 = OUTLINED_FUNCTION_33();
  v18(v30);
  sub_231DDCC34(4);

  v31 = OUTLINED_FUNCTION_44_10();
  v32(v31);
  OUTLINED_FUNCTION_2_27();
  sub_231DBC5E8();
  OUTLINED_FUNCTION_33_13();
  if (v33)
  {
    OUTLINED_FUNCTION_24_11();
    [v17 setTaskCompleted];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_35();

    v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    if (v42)
    {
      goto LABEL_32;
    }

    v43 = v15[51];
    v44 = v15[52];
    v45 = v15[50];
    v46 = *(v43 + 80);
    v47 = *(v43 + 72);
    OUTLINED_FUNCTION_3_26();
    sub_231DBC180();
    OUTLINED_FUNCTION_28_9();
    if (v44)
    {
      OUTLINED_FUNCTION_19_10(v48);

      sub_231DBC644(v49);
      OUTLINED_FUNCTION_137_1();
      v50 = OUTLINED_FUNCTION_13_16();
      v51 = v16(v50);
      sub_231DBC644(v51);
      v52 = OUTLINED_FUNCTION_91_7();
      sub_231DDBE24(v52, v53);
      v54 = OUTLINED_FUNCTION_70();
      v16(v54);
      v55 = *(v19 + 24);
      OUTLINED_FUNCTION_0_33();
      OUTLINED_FUNCTION_138_1();
      OUTLINED_FUNCTION_46_8();
      OUTLINED_FUNCTION_27_9();
      switch(v56)
      {
        case 1:
          v69 = OUTLINED_FUNCTION_12_16();
          v70(v69);
          v71 = *(v45 + 152);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
          OUTLINED_FUNCTION_20_9();
          v72 = swift_allocObject();
          *(OUTLINED_FUNCTION_111_4(v72) + 16) = xmmword_231E138E0;
          *(v14 + 32) = sub_231E10690();
          *(v14 + 40) = v73;
          v74 = swift_task_alloc();
          v75 = OUTLINED_FUNCTION_97_4(v74);
          *v75 = v76;
          OUTLINED_FUNCTION_4_21();
          OUTLINED_FUNCTION_35();

          sub_231DFF530(v77);
          break;
        case 2:
          v79 = OUTLINED_FUNCTION_11_17();
          v80(v79);
          v81 = *(v45 + 152);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
          OUTLINED_FUNCTION_20_9();
          v82 = swift_allocObject();
          *(OUTLINED_FUNCTION_110_6(v82) + 16) = xmmword_231E138E0;
          *(v14 + 32) = sub_231E10A20();
          *(v14 + 40) = v83;
          v84 = swift_task_alloc();
          v85 = OUTLINED_FUNCTION_107_7(v84);
          *v85 = v86;
          OUTLINED_FUNCTION_5_23(v85);
          OUTLINED_FUNCTION_35();

          sub_231DFE62C(v87);
          break;
        case 3:
          goto LABEL_23;
        case 4:
          OUTLINED_FUNCTION_41_11();
          goto LABEL_23;
        default:
          v57 = OUTLINED_FUNCTION_10_19();
          v58(v57);
          v59 = *(v45 + 152);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
          OUTLINED_FUNCTION_20_9();
          v60 = swift_allocObject();
          *(OUTLINED_FUNCTION_109_6(v60) + 16) = xmmword_231E138E0;
          *(v14 + 32) = sub_231E10000();
          *(v14 + 40) = v61;
          v62 = swift_task_alloc();
          v63 = OUTLINED_FUNCTION_108_5(v62);
          *v63 = v64;
          OUTLINED_FUNCTION_6_20(v63);
          OUTLINED_FUNCTION_35();

          sub_231DFEF7C(v65);
          break;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_9();
LABEL_23:
      OUTLINED_FUNCTION_102_5();
      OUTLINED_FUNCTION_37_10("Fatal error", v67, "ProactiveSummarization/SummarizationPipeline.swift", v68);
      OUTLINED_FUNCTION_35();
    }
  }
}

uint64_t sub_231DB5F70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 536);
  *v3 = *v0;
  *(v2 + 544) = v6;
  *(v2 + 552) = v7;
  *(v2 + 584) = v8;

  sub_231DBBE78(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0((v2 + 160));
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_231DB6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v19 = *(v14 + 552);
  v20 = *(v14 + 544);
  v21 = *(v14 + 584);
  v22 = OUTLINED_FUNCTION_59_0();
  v24 = sub_231D0D3F8(v22, v23, v21);
  v25 = OUTLINED_FUNCTION_59_0();
  sub_231CBA16C(v25, v26, v21);
  if (v24)
  {
    v27 = *(v14 + 272);
    v28 = *(v27 + 256);
    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = *(v14 + 456);
    v21 = *(v14 + 416);
    v30 = *(v27 + 256);

    sub_231D71DB0(v21, 0);
    OUTLINED_FUNCTION_399();

    v16 = *(v14 + 528);
    if (v29)
    {
      OUTLINED_FUNCTION_94_6();
      v31 = *(v14 + 392);
      v32 = *(v14 + 376);
      v33 = *(v14 + 320);
      v34 = *(v14 + 328);
      v15 = *(v14 + 312);
      sub_231DB0818(v35);
      OUTLINED_FUNCTION_139_1();
      v36 = OUTLINED_FUNCTION_33();
      v37 = (v18)(v36);
      sub_231DBC644(v37);
      sub_231DDBE24(16, v31);

      v38 = OUTLINED_FUNCTION_33();
      (v18)(v38);
      (*(v33 + 8))(v34, v15);
      OUTLINED_FUNCTION_2_27();
      sub_231DBC5E8();
      v39 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
      v21 = 1;
      OUTLINED_FUNCTION_4_12();
      *(v28 + v39) = 1;

      goto LABEL_8;
    }
  }

  else
  {
    v40 = *(v14 + 456);
  }

  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_152_1();
  OUTLINED_FUNCTION_139_1();
  v41 = OUTLINED_FUNCTION_33();
  v42 = v17(v41);
  sub_231DB0818(v42);
  OUTLINED_FUNCTION_134_3();
  v43 = OUTLINED_FUNCTION_33();
  v17(v43);
  sub_231DDCC34(4);

  v44 = OUTLINED_FUNCTION_44_10();
  v45(v44);
  OUTLINED_FUNCTION_2_27();
  sub_231DBC5E8();
LABEL_8:
  OUTLINED_FUNCTION_33_13();
  if (!v46)
  {
    OUTLINED_FUNCTION_45_4();
    if (!v55)
    {
      v56 = *(v14 + 408);
      v57 = *(v14 + 416);
      v58 = *(v14 + 400);
      v59 = *(v56 + 80);
      v60 = *(v56 + 72);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      OUTLINED_FUNCTION_28_9();
      if (v57)
      {
        OUTLINED_FUNCTION_19_10(v61);

        sub_231DBC644(v62);
        OUTLINED_FUNCTION_137_1();
        v63 = OUTLINED_FUNCTION_13_16();
        v64 = v15(v63);
        sub_231DBC644(v64);
        v65 = OUTLINED_FUNCTION_91_7();
        sub_231DDBE24(v65, v66);
        v67 = OUTLINED_FUNCTION_70();
        v15(v67);
        v68 = *(v18 + 24);
        OUTLINED_FUNCTION_0_33();
        OUTLINED_FUNCTION_138_1();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_27_9();
        switch(v69)
        {
          case 1:
            v82 = OUTLINED_FUNCTION_12_16();
            v83(v82);
            v84 = *(v58 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v85 = swift_allocObject();
            *(OUTLINED_FUNCTION_111_4(v85) + 16) = xmmword_231E138E0;
            *(v21 + 32) = sub_231E10690();
            *(v21 + 40) = v86;
            v87 = swift_task_alloc();
            v88 = OUTLINED_FUNCTION_97_4(v87);
            *v88 = v89;
            OUTLINED_FUNCTION_4_21();
            OUTLINED_FUNCTION_35();

            sub_231DFF530(v90);
            break;
          case 2:
            v92 = OUTLINED_FUNCTION_11_17();
            v93(v92);
            v94 = *(v58 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v95 = swift_allocObject();
            *(OUTLINED_FUNCTION_110_6(v95) + 16) = xmmword_231E138E0;
            *(v21 + 32) = sub_231E10A20();
            *(v21 + 40) = v96;
            v97 = swift_task_alloc();
            v98 = OUTLINED_FUNCTION_107_7(v97);
            *v98 = v99;
            OUTLINED_FUNCTION_5_23(v98);
            OUTLINED_FUNCTION_35();

            sub_231DFE62C(v100);
            break;
          case 3:
            goto LABEL_21;
          case 4:
            OUTLINED_FUNCTION_41_11();
            goto LABEL_21;
          default:
            v70 = OUTLINED_FUNCTION_10_19();
            v71(v70);
            v72 = *(v58 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v73 = swift_allocObject();
            *(OUTLINED_FUNCTION_109_6(v73) + 16) = xmmword_231E138E0;
            *(v21 + 32) = sub_231E10000();
            *(v21 + 40) = v74;
            v75 = swift_task_alloc();
            v76 = OUTLINED_FUNCTION_108_5(v75);
            *v76 = v77;
            OUTLINED_FUNCTION_6_20(v76);
            OUTLINED_FUNCTION_35();

            sub_231DFEF7C(v78);
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_9();
LABEL_21:
        OUTLINED_FUNCTION_102_5();
        OUTLINED_FUNCTION_37_10("Fatal error", v80, "ProactiveSummarization/SummarizationPipeline.swift", v81);
        OUTLINED_FUNCTION_35();
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_24_11();
  [v16 setTaskCompleted];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231DB6554()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *(v2 + 568);
  v6 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v7 = v6;
  *(v3 + 576) = v8;

  v9 = *(v2 + 560);
  if (v0)
  {
    v10 = *(v3 + 456);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_231DB6698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v19 = v15[72];
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    v46 = v15[72];
    v47 = v15[57];

    goto LABEL_14;
  }

  if (!OUTLINED_FUNCTION_148_1())
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x23837D2A0](0, v15[72]);
    v111 = v15[72];
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v20 = *(v15[72] + 32);
  }

  v21 = v20;
  OUTLINED_FUNCTION_95_6(v21, 2, (v15 + 2));
  sub_231D24318();
  v14 = v22;
  sub_231DBBE78((v15 + 2));
  v23 = OUTLINED_FUNCTION_101_7();
  v26 = sub_231D0D3F8(v23, v24, v25);
  v27 = OUTLINED_FUNCTION_101_7();
  sub_231CBA16C(v27, v28, v29);
  if (!v26)
  {
    v45 = v15[57];

LABEL_14:

    goto LABEL_15;
  }

  v30 = v15[34];
  v31 = *(v30 + 256);
  if (!v31)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v14 = v15[57];
  v32 = v15[52];
  v33 = *(v30 + 256);

  sub_231D71DB0(v32, 0);
  OUTLINED_FUNCTION_169_1();

  if (v14)
  {
    OUTLINED_FUNCTION_94_6();
    v34 = v15[49];
    v35 = v15[47];
    v36 = v15[37];
    v37 = v15[38];
    v16 = v15[36];
    sub_231DB0818(v38);
    v39 = OUTLINED_FUNCTION_91_7();
    sub_231DDC58C(v39, v40);
    v41 = OUTLINED_FUNCTION_70();
    v42 = (v18)(v41);
    sub_231DBC644(v42);
    sub_231DDBE24(16, v34);

    v43 = OUTLINED_FUNCTION_70();
    (v18)(v43);
    (*(v36 + 8))(v37, v16);
    OUTLINED_FUNCTION_2_27();
    sub_231DBC5E8();
    v44 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
    v14 = 1;
    OUTLINED_FUNCTION_4_12();
    *(v31 + v44) = 1;

    goto LABEL_16;
  }

LABEL_15:
  OUTLINED_FUNCTION_17_9();
  v18 = v15[37];
  v48 = v15[38];
  v37 = v15[36];
  sub_231DB0818(v49);
  OUTLINED_FUNCTION_139_1();
  v50 = OUTLINED_FUNCTION_33();
  v51 = v17(v50);
  sub_231DB0818(v51);
  OUTLINED_FUNCTION_134_3();
  v52 = OUTLINED_FUNCTION_33();
  v17(v52);
  sub_231DDCC34(4);

  v53 = OUTLINED_FUNCTION_44_10();
  v54(v53);
  OUTLINED_FUNCTION_2_27();
  sub_231DBC5E8();
LABEL_16:
  OUTLINED_FUNCTION_33_13();
  if (!v55)
  {
    OUTLINED_FUNCTION_45_4();
    if (!v64)
    {
      v65 = v15[51];
      v66 = v15[52];
      v67 = v15[50];
      v68 = *(v65 + 80);
      v69 = *(v65 + 72);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      OUTLINED_FUNCTION_28_9();
      if (v66)
      {
        OUTLINED_FUNCTION_19_10(v70);

        sub_231DBC644(v71);
        OUTLINED_FUNCTION_137_1();
        v72 = OUTLINED_FUNCTION_13_16();
        v73 = v37(v72);
        sub_231DBC644(v73);
        v74 = OUTLINED_FUNCTION_91_7();
        sub_231DDBE24(v74, v75);
        v76 = OUTLINED_FUNCTION_70();
        v37(v76);
        v77 = *(v18 + 24);
        OUTLINED_FUNCTION_0_33();
        OUTLINED_FUNCTION_138_1();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_27_9();
        switch(v78)
        {
          case 1:
            v91 = OUTLINED_FUNCTION_12_16();
            v92(v91);
            v93 = *(v67 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v94 = swift_allocObject();
            *(OUTLINED_FUNCTION_111_4(v94) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10690();
            *(v14 + 40) = v95;
            v96 = swift_task_alloc();
            v97 = OUTLINED_FUNCTION_97_4(v96);
            *v97 = v98;
            OUTLINED_FUNCTION_4_21();
            OUTLINED_FUNCTION_35();

            sub_231DFF530(v99);
            break;
          case 2:
            v101 = OUTLINED_FUNCTION_11_17();
            v102(v101);
            v103 = *(v67 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v104 = swift_allocObject();
            *(OUTLINED_FUNCTION_110_6(v104) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10A20();
            *(v14 + 40) = v105;
            v106 = swift_task_alloc();
            v107 = OUTLINED_FUNCTION_107_7(v106);
            *v107 = v108;
            OUTLINED_FUNCTION_5_23();
            OUTLINED_FUNCTION_35();

            sub_231DFE62C(v109);
            break;
          case 3:
            goto LABEL_29;
          case 4:
            OUTLINED_FUNCTION_41_11();
            goto LABEL_29;
          default:
            v79 = OUTLINED_FUNCTION_10_19();
            v80(v79);
            v81 = *(v67 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v82 = swift_allocObject();
            *(OUTLINED_FUNCTION_109_6(v82) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10000();
            *(v14 + 40) = v83;
            v84 = swift_task_alloc();
            v85 = OUTLINED_FUNCTION_108_5(v84);
            *v85 = v86;
            OUTLINED_FUNCTION_6_20(v85);
            OUTLINED_FUNCTION_35();

            sub_231DFEF7C(v87);
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_9();
LABEL_29:
        OUTLINED_FUNCTION_102_5();
        OUTLINED_FUNCTION_37_10("Fatal error", v89, "ProactiveSummarization/SummarizationPipeline.swift", v90);
        OUTLINED_FUNCTION_35();
      }

      return;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_24_11();
  [v16 setTaskCompleted];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

void sub_231DB6C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_17_9();
  v19 = v15[43];
  v18 = v15[44];
  v20 = v15[42];
  sub_231DB0818(v21);
  OUTLINED_FUNCTION_139_1();
  v22 = OUTLINED_FUNCTION_33();
  v23 = v17(v22);
  sub_231DB0818(v23);
  OUTLINED_FUNCTION_134_3();
  v24 = OUTLINED_FUNCTION_33();
  v17(v24);
  sub_231DDCC34(4);

  v25 = OUTLINED_FUNCTION_44_10();
  v26(v25);
  OUTLINED_FUNCTION_2_27();
  sub_231DBC5E8();
  OUTLINED_FUNCTION_33_13();
  if (v27)
  {
    OUTLINED_FUNCTION_24_11();
    [v16 setTaskCompleted];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_35();

    v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v37 = v15[51];
      v38 = v15[52];
      v39 = v15[50];
      v40 = *(v37 + 80);
      v41 = *(v37 + 72);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      OUTLINED_FUNCTION_28_9();
      if (v38)
      {
        OUTLINED_FUNCTION_19_10(v42);

        sub_231DBC644(v43);
        OUTLINED_FUNCTION_137_1();
        v44 = OUTLINED_FUNCTION_13_16();
        v45 = v20(v44);
        sub_231DBC644(v45);
        v46 = OUTLINED_FUNCTION_91_7();
        sub_231DDBE24(v46, v47);
        v48 = OUTLINED_FUNCTION_70();
        v20(v48);
        v49 = *(v19 + 24);
        OUTLINED_FUNCTION_0_33();
        OUTLINED_FUNCTION_138_1();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_27_9();
        switch(v50)
        {
          case 1:
            v63 = OUTLINED_FUNCTION_12_16();
            v64(v63);
            v65 = *(v39 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v66 = swift_allocObject();
            *(OUTLINED_FUNCTION_111_4(v66) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10690();
            *(v14 + 40) = v67;
            v68 = swift_task_alloc();
            v69 = OUTLINED_FUNCTION_97_4(v68);
            *v69 = v70;
            OUTLINED_FUNCTION_4_21();
            OUTLINED_FUNCTION_35();

            sub_231DFF530(v71);
            break;
          case 2:
            v73 = OUTLINED_FUNCTION_11_17();
            v74(v73);
            v75 = *(v39 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v76 = swift_allocObject();
            *(OUTLINED_FUNCTION_110_6(v76) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10A20();
            *(v14 + 40) = v77;
            v78 = swift_task_alloc();
            v79 = OUTLINED_FUNCTION_107_7(v78);
            *v79 = v80;
            OUTLINED_FUNCTION_5_23();
            OUTLINED_FUNCTION_35();

            sub_231DFE62C(v81);
            break;
          case 3:
            goto LABEL_14;
          case 4:
            OUTLINED_FUNCTION_41_11();
            goto LABEL_14;
          default:
            v51 = OUTLINED_FUNCTION_10_19();
            v52(v51);
            v53 = *(v39 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v54 = swift_allocObject();
            *(OUTLINED_FUNCTION_109_6(v54) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10000();
            *(v14 + 40) = v55;
            v56 = swift_task_alloc();
            v57 = OUTLINED_FUNCTION_108_5(v56);
            *v57 = v58;
            OUTLINED_FUNCTION_6_20();
            OUTLINED_FUNCTION_35();

            sub_231DFEF7C(v59);
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_9();
LABEL_14:
        OUTLINED_FUNCTION_102_5();
        OUTLINED_FUNCTION_37_10("Fatal error", v61, "ProactiveSummarization/SummarizationPipeline.swift", v62);
        OUTLINED_FUNCTION_35();
      }
    }
  }
}

void sub_231DB6FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_152_1();
  OUTLINED_FUNCTION_139_1();
  v20 = OUTLINED_FUNCTION_33();
  v21 = v18(v20);
  sub_231DB0818(v21);
  OUTLINED_FUNCTION_134_3();
  v22 = OUTLINED_FUNCTION_33();
  v18(v22);
  sub_231DDCC34(4);

  v23 = OUTLINED_FUNCTION_44_10();
  v24(v23);
  OUTLINED_FUNCTION_2_27();
  sub_231DBC5E8();
  OUTLINED_FUNCTION_33_13();
  if (v25)
  {
    OUTLINED_FUNCTION_24_11();
    [v17 setTaskCompleted];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_35();

    v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    if (v34)
    {
      __break(1u);
    }

    else
    {
      v35 = v15[51];
      v36 = v15[52];
      v37 = v15[50];
      v38 = *(v35 + 80);
      v39 = *(v35 + 72);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      OUTLINED_FUNCTION_28_9();
      if (v36)
      {
        OUTLINED_FUNCTION_19_10(v40);

        sub_231DBC644(v41);
        OUTLINED_FUNCTION_137_1();
        v42 = OUTLINED_FUNCTION_13_16();
        v43 = v16(v42);
        sub_231DBC644(v43);
        v44 = OUTLINED_FUNCTION_91_7();
        sub_231DDBE24(v44, v45);
        v46 = OUTLINED_FUNCTION_70();
        v16(v46);
        v47 = *(v19 + 24);
        OUTLINED_FUNCTION_0_33();
        OUTLINED_FUNCTION_138_1();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_27_9();
        switch(v48)
        {
          case 1:
            v61 = OUTLINED_FUNCTION_12_16();
            v62(v61);
            v63 = *(v37 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v64 = swift_allocObject();
            *(OUTLINED_FUNCTION_111_4(v64) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10690();
            *(v14 + 40) = v65;
            v66 = swift_task_alloc();
            v67 = OUTLINED_FUNCTION_97_4(v66);
            *v67 = v68;
            OUTLINED_FUNCTION_4_21();
            OUTLINED_FUNCTION_35();

            sub_231DFF530(v69);
            break;
          case 2:
            v71 = OUTLINED_FUNCTION_11_17();
            v72(v71);
            v73 = *(v37 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v74 = swift_allocObject();
            *(OUTLINED_FUNCTION_110_6(v74) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10A20();
            *(v14 + 40) = v75;
            v76 = swift_task_alloc();
            v77 = OUTLINED_FUNCTION_107_7(v76);
            *v77 = v78;
            OUTLINED_FUNCTION_5_23(v77);
            OUTLINED_FUNCTION_35();

            sub_231DFE62C(v79);
            break;
          case 3:
            goto LABEL_14;
          case 4:
            OUTLINED_FUNCTION_41_11();
            goto LABEL_14;
          default:
            v49 = OUTLINED_FUNCTION_10_19();
            v50(v49);
            v51 = *(v37 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v52 = swift_allocObject();
            *(OUTLINED_FUNCTION_109_6(v52) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10000();
            *(v14 + 40) = v53;
            v54 = swift_task_alloc();
            v55 = OUTLINED_FUNCTION_108_5(v54);
            *v55 = v56;
            OUTLINED_FUNCTION_6_20(v55);
            OUTLINED_FUNCTION_35();

            sub_231DFEF7C(v57);
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_9();
LABEL_14:
        OUTLINED_FUNCTION_102_5();
        OUTLINED_FUNCTION_37_10("Fatal error", v59, "ProactiveSummarization/SummarizationPipeline.swift", v60);
        OUTLINED_FUNCTION_35();
      }
    }
  }
}

void sub_231DB73A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_17_9();
  v19 = v15[37];
  v18 = v15[38];
  v20 = v15[36];
  sub_231DB0818(v21);
  OUTLINED_FUNCTION_139_1();
  v22 = OUTLINED_FUNCTION_33();
  v23 = v17(v22);
  sub_231DB0818(v23);
  OUTLINED_FUNCTION_134_3();
  v24 = OUTLINED_FUNCTION_33();
  v17(v24);
  sub_231DDCC34(4);

  v25 = OUTLINED_FUNCTION_44_10();
  v26(v25);
  OUTLINED_FUNCTION_2_27();
  sub_231DBC5E8();
  OUTLINED_FUNCTION_33_13();
  if (v27)
  {
    OUTLINED_FUNCTION_24_11();
    [v16 setTaskCompleted];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_35();

    v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v37 = v15[51];
      v38 = v15[52];
      v39 = v15[50];
      v40 = *(v37 + 80);
      v41 = *(v37 + 72);
      OUTLINED_FUNCTION_3_26();
      sub_231DBC180();
      OUTLINED_FUNCTION_28_9();
      if (v38)
      {
        OUTLINED_FUNCTION_19_10(v42);

        sub_231DBC644(v43);
        OUTLINED_FUNCTION_137_1();
        v44 = OUTLINED_FUNCTION_13_16();
        v45 = v20(v44);
        sub_231DBC644(v45);
        v46 = OUTLINED_FUNCTION_91_7();
        sub_231DDBE24(v46, v47);
        v48 = OUTLINED_FUNCTION_70();
        v20(v48);
        v49 = *(v19 + 24);
        OUTLINED_FUNCTION_0_33();
        OUTLINED_FUNCTION_138_1();
        OUTLINED_FUNCTION_46_8();
        OUTLINED_FUNCTION_27_9();
        switch(v50)
        {
          case 1:
            v63 = OUTLINED_FUNCTION_12_16();
            v64(v63);
            v65 = *(v39 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v66 = swift_allocObject();
            *(OUTLINED_FUNCTION_111_4(v66) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10690();
            *(v14 + 40) = v67;
            v68 = swift_task_alloc();
            v69 = OUTLINED_FUNCTION_97_4(v68);
            *v69 = v70;
            OUTLINED_FUNCTION_4_21();
            OUTLINED_FUNCTION_35();

            sub_231DFF530(v71);
            break;
          case 2:
            v73 = OUTLINED_FUNCTION_11_17();
            v74(v73);
            v75 = *(v39 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v76 = swift_allocObject();
            *(OUTLINED_FUNCTION_110_6(v76) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10A20();
            *(v14 + 40) = v77;
            v78 = swift_task_alloc();
            v79 = OUTLINED_FUNCTION_107_7(v78);
            *v79 = v80;
            OUTLINED_FUNCTION_5_23();
            OUTLINED_FUNCTION_35();

            sub_231DFE62C(v81);
            break;
          case 3:
            goto LABEL_14;
          case 4:
            OUTLINED_FUNCTION_41_11();
            goto LABEL_14;
          default:
            v51 = OUTLINED_FUNCTION_10_19();
            v52(v51);
            v53 = *(v39 + 152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
            OUTLINED_FUNCTION_20_9();
            v54 = swift_allocObject();
            *(OUTLINED_FUNCTION_109_6(v54) + 16) = xmmword_231E138E0;
            *(v14 + 32) = sub_231E10000();
            *(v14 + 40) = v55;
            v56 = swift_task_alloc();
            v57 = OUTLINED_FUNCTION_108_5(v56);
            *v57 = v58;
            OUTLINED_FUNCTION_6_20(v57);
            OUTLINED_FUNCTION_35();

            sub_231DFEF7C(v59);
            break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26_9();
LABEL_14:
        OUTLINED_FUNCTION_102_5();
        OUTLINED_FUNCTION_37_10("Fatal error", v61, "ProactiveSummarization/SummarizationPipeline.swift", v62);
        OUTLINED_FUNCTION_35();
      }
    }
  }
}

uint64_t sub_231DB7770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DB7788()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[3];
  sub_231D587BC((v0[4] + 32), v0[5], v0[2]);
  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231DB77EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231DB7804()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 56) = v3;
  *v3 = v4;
  v3[1] = sub_231DB78DC;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_231DDB61C();
}

void sub_231DB78DC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 48);

    v10 = *(v7 + 8);

    v10();
  }
}

uint64_t sub_231DB79F8()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[5] = v3;
  v4 = sub_231E10400();
  v0[8] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[9] = v5;
  v7 = *(v6 + 64);
  v0[10] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231DB7AA0()
{
  OUTLINED_FUNCTION_47_0();
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[5];
  sub_231E100E0();
  sub_231E103F0();
  OUTLINED_FUNCTION_14_9();
  v1[11] = v6;
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_33();
  v9(v8);
  if (v0)
  {
    v10 = v1[6];
    v11 = v10[42];
    __swift_project_boxed_opaque_existential_0(v10 + 38, v10[41]);
    v12 = *(v11 + 8);
    v21 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v1[12] = v14;
    *v14 = v1;
    OUTLINED_FUNCTION_32(v14);
    v15 = OUTLINED_FUNCTION_48();

    return v21(v15);
  }

  else
  {
    v17 = v1[10];
    v18 = v1[7];
    v19 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isKnownSender;
    OUTLINED_FUNCTION_4_12();
    *(v18 + v19) = 2;

    OUTLINED_FUNCTION_19();

    return v20();
  }
}

uint64_t sub_231DB7C74()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v4 = *(v3 + 96);
  v5 = *(v3 + 88);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v9 + 104) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231DB7D78()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_isKnownSender;
  OUTLINED_FUNCTION_4_12();
  *(v3 + v4) = v1;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231DB7E04()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_231E10E30();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DB7EA8()
{
  v35 = v0;
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  sub_231DC4C74();
  v7 = OUTLINED_FUNCTION_18_2();
  v8(v7);

  v9 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v10 = OUTLINED_FUNCTION_91_0();
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  if (v10)
  {
    v14 = v0[2];
    OUTLINED_FUNCTION_9_1();
    v15 = OUTLINED_FUNCTION_17_1();
    v34 = v15;
    *v1 = 136446210;
    v16 = sub_231DDB1E8();
    sub_231CB5000(v16, v17, &v34);
    OUTLINED_FUNCTION_124_1();

    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_11();
  }

  v23 = *(v12 + 8);
  v24 = OUTLINED_FUNCTION_33();
  v25(v24);
  v26 = v0[6];
  v27 = v0[3];
  v28 = v27[18];
  __swift_project_boxed_opaque_existential_0(v27 + 14, v27[17]);
  v29 = *(v28 + 8);
  v30 = OUTLINED_FUNCTION_33();
  v31(v30);

  OUTLINED_FUNCTION_19();

  return v32();
}

uint64_t sub_231DB8028()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 184) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v0;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  v6 = sub_231E0F950();
  *(v1 + 72) = v6;
  OUTLINED_FUNCTION_6(v6);
  *(v1 + 80) = v7;
  v9 = *(v8 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_69();
  *(v1 + 96) = swift_task_alloc();
  v10 = type metadata accessor for EntityKind();
  *(v1 + 104) = v10;
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_69();
  *(v1 + 120) = swift_task_alloc();
  v13 = sub_231E10E30();
  *(v1 + 128) = v13;
  OUTLINED_FUNCTION_6(v13);
  *(v1 + 136) = v14;
  v16 = *(v15 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_69();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  v17 = type metadata accessor for SummarizationPipeline.Request();
  *(v1 + 168) = v17;
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_55();
  v20 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

void sub_231DB8198()
{
  if (*(*(v0 + 64) + 256))
  {
    v90[10] = v0;
    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 136);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(v2 + 24);
    OUTLINED_FUNCTION_0_33();
    sub_231DBC180();

    sub_231E0F920();
    v8 = (v1 + *(v2 + 20));
    *v8 = v6;
    v8[1] = v5;
    v9 = OUTLINED_FUNCTION_83();
    sub_231D534A8(v9);
    sub_231DBC50C(&unk_2814CBB80, type metadata accessor for SummarizationPipeline.Request);
    sub_231DBC50C(&qword_2814CBB78, type metadata accessor for SummarizationPipeline.Request);
    sub_231DBC50C(&unk_2814CBB90, type metadata accessor for SummarizationPipeline.Request);
    v10 = OUTLINED_FUNCTION_42_0();
    LOBYTE(v5) = sub_231D71DB0(v1, v10 & 1);

    OUTLINED_FUNCTION_2_27();
    sub_231DBC5E8();
    v11 = sub_231DC4C74();
    v12 = *(v3 + 16);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 40);
    if (v5)
    {
      v16 = *(v0 + 120);
      (v12)(*(v0 + 160), v11, *(v0 + 128));
      OUTLINED_FUNCTION_0_33();
      OUTLINED_FUNCTION_181();
      sub_231DBC180();
      v17 = OUTLINED_FUNCTION_160_1();
      sub_231D534A8(v17);
      v18 = sub_231E10E10();
      sub_231E11AF0();
      v19 = OUTLINED_FUNCTION_160_1();
      sub_231DBB190(v19);
      v20 = OUTLINED_FUNCTION_91_0();
      v21 = *(v0 + 160);
      v23 = *(v0 + 128);
      v22 = *(v0 + 136);
      v24 = *(v0 + 120);
      if (v20)
      {
        v25 = *(v0 + 104);
        v26 = *(v0 + 40);
        v88 = *(v0 + 128);
        v27 = OUTLINED_FUNCTION_98_0();
        v90[0] = OUTLINED_FUNCTION_68();
        *v27 = 136446466;
        v28 = sub_231DAFAB8(v26);
        v87 = v21;
        v30 = sub_231CB5000(v28, v29, v90);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        OUTLINED_FUNCTION_7_21();
        sub_231DBC50C(v31, v32);
        v33 = sub_231E120D0();
        v35 = v34;
        OUTLINED_FUNCTION_1_27();
        sub_231DBC5E8();
        v36 = sub_231CB5000(v33, v35, v90);

        *(v27 + 14) = v36;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_11();

        (*(v22 + 8))(v87, v88);
      }

      else
      {

        OUTLINED_FUNCTION_1_27();
        sub_231DBC5E8();
        (*(v22 + 8))(v21, v23);
      }
    }

    else
    {
      v42 = *(v0 + 112);
      v12(*(v0 + 152));
      OUTLINED_FUNCTION_0_33();
      OUTLINED_FUNCTION_181();
      sub_231DBC180();
      v43 = OUTLINED_FUNCTION_160_1();
      sub_231D534A8(v43);
      v44 = sub_231E10E10();
      v45 = sub_231E11AF0();
      v46 = OUTLINED_FUNCTION_160_1();
      sub_231DBB190(v46);
      v47 = os_log_type_enabled(v44, v45);
      v48 = *(v0 + 152);
      v50 = *(v0 + 128);
      v49 = *(v0 + 136);
      v51 = *(v0 + 112);
      if (v47)
      {
        v85 = *(v0 + 104);
        v89 = *(v0 + 152);
        v52 = *(v0 + 40);
        v86 = *(v0 + 128);
        v53 = OUTLINED_FUNCTION_98_0();
        v90[0] = OUTLINED_FUNCTION_68();
        *v53 = 136446466;
        v54 = sub_231DAFAB8(v52);
        v56 = sub_231CB5000(v54, v55, v90);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2080;
        OUTLINED_FUNCTION_7_21();
        sub_231DBC50C(v57, v58);
        v59 = sub_231E120D0();
        v61 = v60;
        OUTLINED_FUNCTION_1_27();
        sub_231DBC5E8();
        v62 = sub_231CB5000(v59, v61, v90);

        *(v53 + 14) = v62;
        OUTLINED_FUNCTION_142_0(&dword_231CAE000, v44, v45, "%{public}sIn-memory queue is full; writing to on-disk queue: %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_31_1();
        OUTLINED_FUNCTION_14();

        v63 = *(v49 + 8);
        v64 = v89;
        v65 = v86;
      }

      else
      {

        OUTLINED_FUNCTION_1_27();
        sub_231DBC5E8();
        v63 = *(v49 + 8);
        v64 = v48;
        v65 = v50;
      }

      v63(v64, v65);
      v66 = *(v0 + 40);
      if (v66)
      {
        v67 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_queueType;
        v68 = *(v0 + 40);

        OUTLINED_FUNCTION_4_12();
        *(v66 + v67) = 0;

        v69 = *(v0 + 40);
      }

      else
      {
        v69 = 0;
      }

      v70 = *(v0 + 96);
      v71 = *(v0 + 56);
      v72 = *(v0 + 184);
      v73 = *(v0 + 48);
      v74 = *(*(v0 + 64) + 264);
      sub_231D50828();
      sub_231D5082C(v71, v69, v73, v72, v70);
      (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    }

    v75 = *(v0 + 176);
    v76 = *(v0 + 152);
    v77 = *(v0 + 160);
    v78 = *(v0 + 144);
    v80 = *(v0 + 112);
    v79 = *(v0 + 120);
    v82 = *(v0 + 88);
    v81 = *(v0 + 96);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95_1();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
}

uint64_t sub_231DB8944()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_231E10E30();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DB89E8()
{
  OUTLINED_FUNCTION_18();
  v0[34] = v1;
  v0[35] = v2;
  v3 = sub_231E10E30();
  v0[36] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[37] = v4;
  v6 = *(v5 + 64);
  v0[38] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DB8A8C()
{
  OUTLINED_FUNCTION_50_0();
  v1 = OUTLINED_FUNCTION_31_12();
  sub_231D5EBAC(v1, v2, v3, v4, v5);
  type metadata accessor for SpotlightReader();
  sub_231CE10BC((v0 + 2), (v0 + 18));
  v0[39] = sub_231DF7564();
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[13];
  v10 = swift_task_alloc();
  v0[40] = v10;
  *v10 = v0;
  v10[1] = sub_231DB8B7C;
  v11 = v0[34];

  return sub_231DF8B88();
}

uint64_t sub_231DB8B7C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v5 = *(v4 + 320);
  *v3 = *v1;
  *(v2 + 328) = v6;
  *(v2 + 336) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231DB8C80()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[41];
  v1 = v0[42];
  v3 = *(v0[35] + 288);
  *(swift_task_alloc() + 16) = v2;

  os_unfair_lock_lock(v3 + 8);
  sub_231DBC38C();
  os_unfair_lock_unlock(v3 + 8);
  if (!v1)
  {
    v4 = v0[41];
    v5 = v0[35];

    v6 = *(v5 + 296);
    v7 = v0[39];
    if (v6)
    {
      v8 = v6;
      [v8 runAfterDelaySeconds:1 coalescingBehavior:5.0];

      sub_231CE140C((v0 + 2));
    }

    else
    {
      v9 = v0[39];

      sub_231CE140C((v0 + 2));
    }

    v10 = v0[38];

    OUTLINED_FUNCTION_19();

    v11();
  }
}

uint64_t sub_231DB8DAC()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[42];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v5 = v0[37];

  sub_231CE140C((v0 + 2));
  sub_231DC4C74();
  v6 = OUTLINED_FUNCTION_18_2();
  v7(v6);
  v8 = v1;
  v9 = sub_231E10E10();
  LOBYTE(v4) = sub_231E11AD0();

  v10 = os_log_type_enabled(v9, v4);
  v11 = v0[42];
  if (v10)
  {
    v12 = OUTLINED_FUNCTION_9_1();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    OUTLINED_FUNCTION_132_2();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_231DBC3B8(v13, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_81_6();
  }

  else
  {
  }

  (*(v0[37] + 8))(v0[38], v0[36]);
  v21 = v0[38];

  OUTLINED_FUNCTION_19();

  return v22();
}

void sub_231DB8F2C()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD75278, &qword_231E1F3F0);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v7);
  v9 = &v81 - v8;
  v10 = sub_231E0F950();
  v11 = OUTLINED_FUNCTION_24(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v82 = (v16 - v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v81 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v94 = &v81 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_5();
  v87 = v24;
  v25 = OUTLINED_FUNCTION_3_0();
  v86 = type metadata accessor for ConversationDeletionInfo(v25);
  v26 = *(*(v86 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v86);
  v81 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v93 = &v81 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = (&v81 - v32);
  v34 = *(v1 + 16);
  if (v34)
  {
    v35 = v1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v92 = (v13 + 16);
    v36 = *(v31 + 72);
    v84 = (v13 + 8);
    v85 = (v13 + 32);
    v83 = v9;
    v88 = v36;
    v89 = (&v81 - v32);
    while (1)
    {
      v90 = v35;
      v91 = v34;
      OUTLINED_FUNCTION_9_16();
      sub_231DBC180();
      v38 = *v33;
      v37 = v33[1];
      v39 = v86;
      v40 = *(v86 + 20);
      v41 = v33;
      v42 = *v92;
      (*v92)(v94, v41 + v40, v10);
      v43 = *v3;
      v44 = *(*v3 + 16);
      v95 = v38;
      if (!v44)
      {
        goto LABEL_6;
      }

      sub_231CE0CA4(v38, v37);
      if (v45)
      {
        v46 = *(v43 + 56);
        OUTLINED_FUNCTION_9_16();
        sub_231DBC180();
        v47 = 0;
      }

      else
      {
LABEL_6:
        v47 = 1;
      }

      __swift_storeEnumTagSinglePayload(v9, v47, 1, v39);
      if (__swift_getEnumTagSinglePayload(v9, 1, v39))
      {
        sub_231DBC3B8(v9, &unk_27DD75278, &qword_231E1F3F0);
        v42(v21, v89 + v40, v10);
        v48 = v85;
      }

      else
      {
        v49 = v81;
        sub_231DBC180();
        sub_231DBC3B8(v9, &unk_27DD75278, &qword_231E1F3F0);
        v50 = v82;
        v42(v82, &v49[*(v39 + 20)], v10);
        OUTLINED_FUNCTION_8_18();
        sub_231DBC5E8();
        v48 = v85;
        (*v85)(v21, v50, v10);
      }

      sub_231DBC50C(&qword_2814CBC60, MEMORY[0x277CC9578]);
      v51 = v94;
      v52 = (sub_231E11590() & 1) != 0 ? v51 : v21;
      v53 = v21;
      (*v84)(v52, v10);
      v54 = *v48;
      v55 = v87;
      v56 = OUTLINED_FUNCTION_48();
      v57 = v10;
      v58(v56);

      v59 = OUTLINED_FUNCTION_90_0();
      sub_231DF74E8(v59, v60, v55, v61);
      v62 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v63 = v3;
      v96 = *v3;
      v64 = v96;
      v65 = OUTLINED_FUNCTION_90_0();
      v67 = sub_231CE0CA4(v65, v66);
      if (__OFADD__(v64[2], (v68 & 1) == 0))
      {
        break;
      }

      v69 = v67;
      v70 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75288, &qword_231E1F3F8);
      if (sub_231E11EA0())
      {
        v71 = v95;
        v72 = sub_231CE0CA4(v95, v37);
        v74 = v88;
        if ((v70 & 1) != (v73 & 1))
        {
          goto LABEL_26;
        }

        v69 = v72;
      }

      else
      {
        v74 = v88;
        v71 = v95;
      }

      v75 = v96;
      if (v70)
      {
        sub_231DBC40C(v93, v96[7] + v69 * v74);
      }

      else
      {
        v96[(v69 >> 6) + 8] |= 1 << v69;
        v76 = (v75[6] + 16 * v69);
        *v76 = v71;
        v76[1] = v37;
        v77 = v75[7];
        OUTLINED_FUNCTION_9_16();
        sub_231DBC1D8();
        v78 = v75[2];
        v79 = __OFADD__(v78, 1);
        v80 = v78 + 1;
        if (v79)
        {
          goto LABEL_25;
        }

        v75[2] = v80;
      }

      v3 = v63;
      *v63 = v75;
      OUTLINED_FUNCTION_8_18();
      v33 = v89;
      sub_231DBC5E8();
      v35 = v90 + v74;
      v34 = v91 - 1;
      v9 = v83;
      v10 = v57;
      v21 = v53;
      if (v91 == 1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_231E12160();
    __break(1u);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_113();
  }
}

void sub_231DB94EC()
{
  OUTLINED_FUNCTION_118();
  v56 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v4 = OUTLINED_FUNCTION_47(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_5();
  v57 = v11;
  v12 = OUTLINED_FUNCTION_3_0();
  v13 = type metadata accessor for ConversationDeletionInfo(v12);
  v14 = OUTLINED_FUNCTION_6(v13);
  v55 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v53 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25_5();
  v52 = v20;
  v21 = *v2;
  if (*(*v2 + 16))
  {
    v48 = v2;
    v22 = v21 + 64;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v21 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v49 = v21 + 64;
    v50 = v21;
    v51 = v9;
    if (v25)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75270, &qword_231E1F3E8);
        sub_231E11540();
        goto LABEL_20;
      }

      v25 = *(v22 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        do
        {
LABEL_9:
          v29 = v55;
          v30 = *(v21 + 56) + *(v55 + 72) * (__clz(__rbit64(v25)) | (v27 << 6));
          sub_231DBC180();
          v31 = sub_231E119F0();
          OUTLINED_FUNCTION_105();
          __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
          sub_231DBC1D8();
          v35 = (*(v29 + 80) + 40) & ~*(v29 + 80);
          v36 = swift_allocObject();
          v36[2] = 0;
          v36[3] = 0;
          v36[4] = v56;
          sub_231DBC1D8();
          v37 = v51;
          sub_231DA3AF0();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v31);

          if (EnumTagSinglePayload == 1)
          {
            v39 = OUTLINED_FUNCTION_164_2();
            sub_231DBC3B8(v39, v40, &qword_231E13690);
          }

          else
          {
            sub_231E119E0();
            OUTLINED_FUNCTION_56_6(v31);
            (*(v41 + 8))(v37, v31);
          }

          v42 = v36[2];
          v43 = v36[3];
          swift_unknownObjectRetain();

          if (v42)
          {
            swift_getObjectType();
            v44 = sub_231E11920();
            v46 = v45;
            swift_unknownObjectRelease();
          }

          else
          {
            v44 = 0;
            v46 = 0;
          }

          v21 = v50;
          sub_231DBC3B8(v57, &qword_27DD75180, &qword_231E13690);
          v47 = swift_allocObject();
          *(v47 + 16) = &unk_231E1F3D8;
          *(v47 + 24) = v36;
          if (v46 | v44)
          {
            v58 = 0;
            v59 = 0;
            v60 = v44;
            v61 = v46;
          }

          v22 = v49;
          v25 &= v25 - 1;
          swift_task_create();
        }

        while (v25);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_113();
  }
}

uint64_t sub_231DB9900()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for ConversationDeletionInfo(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_55();
  v6 = sub_231E10E30();
  v0[6] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[7] = v7;
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231DB99C8()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v0[2] + 152);
  v0[9] = *v2;
  v0[10] = v2[1];
  v4 = *(v1 + 20);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_231DB9A8C;
  v6 = OUTLINED_FUNCTION_25();

  return sub_231DF9584(v6, v7, v8);
}

uint64_t sub_231DB9A8C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231DB9B90()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0[2] + 160);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_231DB9C30;
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  return sub_231CDA4E0();
}

uint64_t sub_231DB9C30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[12];

    v13 = v3[8];
    v14 = v3[5];

    OUTLINED_FUNCTION_19();

    return v15();
  }
}

uint64_t sub_231DB9D60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v26 = v22[13];
  v27 = v22[7];
  v28 = v22[8];
  v30 = v22[5];
  v29 = v22[6];
  v31 = v22[3];
  sub_231DC4C74();
  v32 = OUTLINED_FUNCTION_1_25();
  v33(v32);
  OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_83();
  sub_231DBC180();
  v34 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_143_3();
  v36 = os_log_type_enabled(v34, v35);
  v38 = v22[7];
  v37 = v22[8];
  v40 = v22[5];
  v39 = v22[6];
  if (v36)
  {
    OUTLINED_FUNCTION_9_1();
    a10 = v26;
    a11 = OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_183_1(4.9654e-34);
    OUTLINED_FUNCTION_8_18();
    sub_231DBC5E8();
    v41 = sub_231CB5000(v23, v37, &a11);

    *(v26 + 4) = v41;
    OUTLINED_FUNCTION_498(&dword_231CAE000, v42, v43, "Unable to delete summarization attributes for conversation: %{sensitive}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();

    (*(v38 + 8))(a9, v39);
  }

  else
  {

    OUTLINED_FUNCTION_8_18();
    sub_231DBC5E8();
    (*(v38 + 8))(v37, v39);
  }

  v44 = v22[8];
  v45 = v22[5];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231DB9ED0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_56_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_59_1();
  a20 = v22;
  v26 = v22[12];

  v27 = v22[15];
  v28 = v22[7];
  v29 = v22[8];
  v31 = v22[5];
  v30 = v22[6];
  v32 = v22[3];
  sub_231DC4C74();
  v33 = OUTLINED_FUNCTION_1_25();
  v34(v33);
  OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_83();
  sub_231DBC180();
  v35 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_143_3();
  v37 = os_log_type_enabled(v35, v36);
  v39 = v22[7];
  v38 = v22[8];
  v41 = v22[5];
  v40 = v22[6];
  if (v37)
  {
    OUTLINED_FUNCTION_9_1();
    a10 = v27;
    a11 = OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_183_1(4.9654e-34);
    OUTLINED_FUNCTION_8_18();
    sub_231DBC5E8();
    v42 = sub_231CB5000(v23, v38, &a11);

    *(v27 + 4) = v42;
    OUTLINED_FUNCTION_498(&dword_231CAE000, v43, v44, "Unable to delete summarization attributes for conversation: %{sensitive}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_11();

    (*(v39 + 8))(a9, v40);
  }

  else
  {

    OUTLINED_FUNCTION_8_18();
    sub_231DBC5E8();
    (*(v39 + 8))(v38, v40);
  }

  v45 = v22[8];
  v46 = v22[5];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_35();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231DBA048()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  v3 = *(v0 + 152);

  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v6 = *(v0 + 256);

  v7 = *(v0 + 288);

  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  return v0;
}

uint64_t sub_231DBA0E8()
{
  sub_231DBA048();

  return swift_deallocClassInstance();
}

id sub_231DBA11C(void *a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_231DAB1B0;
  v8[3] = &block_descriptor_124;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithQueue:a1 operation:v5];

  _Block_release(v5);

  return v6;
}

uint64_t sub_231DBA1D4()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_128_3(v5);

  return sub_231DB7770(v7, v8, v9, v10);
}

uint64_t sub_231DBA268()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32(v4);

  return sub_231DB8944();
}

BOOL sub_231DBA2F4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_231D2D37C();
  v6 = sub_231E11550();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v10 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v2;
      sub_231DBAA4C(a2, v8, isUniquelyReferenced_nonNull_native);
      *v2 = v14;
      goto LABEL_7;
    }

    v15 = *(*(v4 + 48) + v8);
    sub_231D2D3D0();
    if (sub_231E115D0())
    {
      break;
    }

    v6 = v8 + 1;
  }

  LOBYTE(a2) = *(*(v4 + 48) + v8);
LABEL_7:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_231DBA420()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32(v4);

  return sub_231DB7E04();
}

BOOL sub_231DBA4AC@<W0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  result = sub_231D42148((a1 + 8), v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_231DBA510()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_477();
  v2 = sub_231E10340();
  OUTLINED_FUNCTION_6(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64) + v4;
  OUTLINED_FUNCTION_158_2();
  v7 = *(v1 + 32);
  v9 = *(v1 + v8);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_17(v10);
  *v11 = v14;
  v11[1] = sub_231CC6BF8;

  return sub_231DB77EC(v0, v12, v13, v7, v1 + v4, v9);
}

uint64_t sub_231DBA610(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_231DBA61C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32(v4);

  return sub_231DB89E8();
}

unint64_t sub_231DBA6A8()
{
  result = qword_27DD84040;
  if (!qword_27DD84040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84040);
  }

  return result;
}

unint64_t sub_231DBA6FC()
{
  result = qword_27DD84048;
  if (!qword_27DD84048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84048);
  }

  return result;
}

unint64_t sub_231DBA750()
{
  result = qword_27DD84050;
  if (!qword_27DD84050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84050);
  }

  return result;
}

unint64_t sub_231DBA7A4()
{
  result = qword_27DD751C8;
  if (!qword_27DD751C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD751C8);
  }

  return result;
}

uint64_t sub_231DBA7F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750F8, &qword_231E1E3B0);
  result = sub_231E11D40();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_231CFD55C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_231D2D37C();
    result = sub_231E11550();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_231DBAA4C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231DBA7F8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_231DBACF0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_231D2D37C();
      result = sub_231E11550();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v15 = *(*(v12 + 48) + a2);
        sub_231D2D3D0();
        if (sub_231E115D0())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_231DBABB0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_231E12150();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_231DBABB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750F8, &qword_231E1E3B0);
  v2 = *v0;
  v3 = sub_231E11D30();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_231DBACF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750F8, &qword_231E1E3B0);
  result = sub_231E11D40();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_231D2D37C();
        result = sub_231E11550();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

uint64_t sub_231DBAF14(void *a1)
{
  v2 = [a1 contentTypeTree];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231DBAF78(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_231E11620();
  }

  return OUTLINED_FUNCTION_59_0();
}

uint64_t sub_231DBAFD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD751B8, &qword_231E1EB98);
    a2();
    OUTLINED_FUNCTION_174_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231DBB048()
{
  result = qword_27DD75200;
  if (!qword_27DD75200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75200);
  }

  return result;
}

uint64_t type metadata accessor for SummarizationPipeline.Request()
{
  result = qword_2814CE458;
  if (!qword_2814CE458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_231DBB0E8()
{
  result = qword_27DD84058[0];
  if (!qword_27DD84058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84058);
  }

  return result;
}

unint64_t sub_231DBB13C()
{
  result = qword_27DD75218;
  if (!qword_27DD75218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75218);
  }

  return result;
}

uint64_t sub_231DBB190(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_231DBB1D0()
{
  result = qword_27DD75238;
  if (!qword_27DD75238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75238);
  }

  return result;
}

unint64_t sub_231DBB224()
{
  result = qword_2814CBDC8;
  if (!qword_2814CBDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD75250, &qword_231E1EBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBDC8);
  }

  return result;
}

uint64_t sub_231DBB288()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 288);

    os_unfair_lock_lock(v1 + 8);
    sub_231DBC154();
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_231DBB310()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_32(v1);
  OUTLINED_FUNCTION_59_0();

  return sub_231DB1EB0();
}

unint64_t sub_231DBB39C()
{
  result = qword_27DD75268;
  if (!qword_27DD75268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75268);
  }

  return result;
}

uint64_t sub_231DBB444(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_108(*a1 + 62);
    }

    v3 = (*a1 & 6 | ((*a1 >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*a1 >> 58) >> 2) & 7))) ^ 0x3F;
    if (v3 >= 0x3E)
    {
      return OUTLINED_FUNCTION_108(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_108(v3);
}

void *sub_231DBB494(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      return OUTLINED_FUNCTION_5_5(result, ((v3 << 58) | (2 * v3)) & 0xF000000000000007);
    }
  }

  return result;
}