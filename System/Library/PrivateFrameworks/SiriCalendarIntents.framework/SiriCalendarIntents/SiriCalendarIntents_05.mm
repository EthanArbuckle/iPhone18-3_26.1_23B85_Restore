uint64_t sub_2665B5190()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[63];
  v3 = v1[62];
  v18 = v1[47];
  v4 = v1[46];
  v5 = v1[44];
  v6 = v1[43];
  v7 = v1[42];
  v8 = v1[41];
  v9 = v1[40];
  v10 = v1[39];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  sub_266557D74(v10, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v9, &unk_28007DE20, &unk_26666EAE0);
  (*(v7 + 8))(v6, v8);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v4, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v18, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2665B53D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_16_7();
  v17 = *(v16 + 432);
  v18 = *(v16 + 440);
  v20 = *(v16 + 416);
  v19 = *(v16 + 424);
  v22 = *(v16 + 384);
  v21 = *(v16 + 392);
  v23 = *(v16 + 368);
  v24 = *(v16 + 376);
  v25 = *(v16 + 360);
  v35 = *(v16 + 352);
  v36 = *(v16 + 344);
  v37 = *(v16 + 320);
  v38 = *(v16 + 312);

  sub_266557D74(v22, &unk_28007DE30, &unk_26666EAF0);
  sub_2665AE46C(v21);
  __swift_destroy_boxed_opaque_existential_1((v16 + 176));

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_14_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, a14, a15, a16);
}

uint64_t sub_2665B54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_7();

  sub_2665AE46C(v13);
  v30 = v15[57];
  v16 = v15[52];
  v18 = v15[48];
  v17 = v15[49];
  OUTLINED_FUNCTION_2_18();
  v19 = v15[39];
  v20 = v15[40];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_2665B55B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_7();

  sub_2665AE46C(v13);
  v30 = v15[59];
  v16 = v15[52];
  v18 = v15[48];
  v17 = v15[49];
  OUTLINED_FUNCTION_2_18();
  v19 = v15[39];
  v20 = v15[40];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_2665B5688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_7();

  sub_2665AE46C(v13);
  v30 = v15[61];
  v16 = v15[52];
  v18 = v15[48];
  v17 = v15[49];
  OUTLINED_FUNCTION_2_18();
  v19 = v15[39];
  v20 = v15[40];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_2665B575C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (sub_26664B664(a1) == 0xD000000000000014 && 0x800000026667CDD0 == v4)
  {
  }

  else
  {
    v6 = sub_26666CAC8();

    if ((v6 & 1) == 0)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v7 = sub_26666C168();
      __swift_project_value_buffer(v7, qword_28156D7E8);
      v8 = sub_26666C148();
      v9 = sub_26666C618();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20[0] = v11;
        *v10 = 136446210;
        v12 = sub_2665E82C0(a1);
        v14 = sub_2665BFC90(v12, v13, v20);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_266549000, v8, v9, "[UpdateEvent.NeedsValue] Making NLContext update for %{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x266789690](v11, -1, -1);
        MEMORY[0x266789690](v10, -1, -1);
      }

      v20[3] = &type metadata for UpdateEvent.Parameter;
      v20[4] = &off_287809D80;
      LOBYTE(v20[0]) = a1;
      sub_266662924(a2);
      return __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v16 = sub_26666C168();
  __swift_project_value_buffer(v16, qword_28156D7E8);
  v17 = sub_26666C148();
  v18 = sub_26666C618();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266549000, v17, v18, "[UpdateEvent.NeedsValue] Making NLContext update for event recurrence prompt", v19, 2u);
    MEMORY[0x266789690](v19, -1, -1);
  }

  return sub_266662640(0, a2);
}

uint64_t sub_2665B5A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665B33D8();
}

uint64_t sub_2665B5AC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665B3FC8();
}

uint64_t sub_2665B5B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B370] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

uint64_t sub_2665B5C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B378] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26656CD98;

  return MEMORY[0x2821B9C00](a1, a2, a3, a4);
}

uint64_t sub_2665B5CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_26656CD98;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2665B5DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_26656CD98;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_2665B5EBC()
{
  result = qword_28007E2B8;
  if (!qword_28007E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E2B8);
  }

  return result;
}

uint64_t sub_2665B5F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{
  *(a1 + 8) = sub_2665B5190;
  v7 = v4[46];
  v6 = v4[47];
  v9 = v4[43];
  v8 = v4[44];
  v11 = v4[39];
  v10 = v4[40];
  result = v4[36];
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 24) = v10;
  *(v5 + 32) = v11;
  *(v5 + 18) = 514;
  *(v5 + 17) = v2 & 1;
  *(v5 + 16) = 1;
  return result;
}

void OUTLINED_FUNCTION_2_18()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
}

uint64_t OUTLINED_FUNCTION_4_18()
{
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 352);
  v6 = *(v0 + 304);
  v7 = *(v0 + 512);

  return type metadata accessor for Snippet();
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_26656CFC4();
}

uint64_t OUTLINED_FUNCTION_7_13()
{
  *(v1 + 496) = v2;
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);

  return sub_26655358C(v0 + 184, v1 + 176);
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_15_9()
{
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[53];
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[46];
  v8 = v0[47];
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1)
{

  return sub_266557D74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_27_7()
{
  v3 = v0[54];
  v2 = v0[55];
  v4 = v0[53];
  v5 = v0[49];
}

uint64_t OUTLINED_FUNCTION_29_5()
{
  v2 = v0[43];
  v3 = v0[44];
  v5 = v0[39];
  v4 = v0[40];

  return sub_2666699C8();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_2665B575C(v1, v0);
}

double OUTLINED_FUNCTION_35_3(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_3()
{
  v2 = v0[45];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_26666CAC8();
}

uint64_t sub_2665B6274()
{
  result = sub_26655EC10(319, &qword_28007E348);
  if (v1 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CBE0);
    if (v2 <= 0x3F)
    {
      result = sub_26655EC10(319, &qword_28156D140);
      if (v3 <= 0x3F)
      {
        result = sub_26655EC10(319, &qword_28007E350);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CommonCATsSimple();
          if (v5 <= 0x3F)
          {
            result = sub_26655EC10(319, &qword_28007E358);
            if (v6 <= 0x3F)
            {
              result = sub_266669A88();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2665B6408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665B641C()
{
  v1 = v0[3];
  v2 = *(v0[2] + 68);
  v3 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  if (sub_266669658())
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = v1[14];
    __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
    OUTLINED_FUNCTION_15_2();
    v4 = sub_266669698() ^ 1;
  }

  v6 = v0[1];

  return v6(v4 & 1);
}

uint64_t sub_2665B64E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = sub_266669E18();
  v4 = OUTLINED_FUNCTION_3_0(v66);
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v4, v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v65 - v18;
  v20 = sub_266669E58();
  v21 = OUTLINED_FUNCTION_3_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21, v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266669DF8();
  v29 = sub_266561674(v28, v71);
  (*(v23 + 8))(v28, v20, v29);
  if (v71[0] == 3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    OUTLINED_FUNCTION_12_9();
    v31 = v66;
    v32(v12, a1, v66);
    v33 = sub_26666C148();
    v34 = sub_26666C618();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_21();
      v35 = OUTLINED_FUNCTION_13();
      v69 = v35;
      *v16 = 136315138;
      sub_2665B934C();
      sub_26666CAA8();
      OUTLINED_FUNCTION_11_12();
      v36(v12, v31);
      v37 = OUTLINED_FUNCTION_21_5();
      v40 = sub_2665BFC90(v37, v38, v39);

      *(v16 + 4) = v40;
      _os_log_impl(&dword_266549000, v33, v34, "[ConfirmConflictStrategy] Returning .ignore() for input: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_9_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      (*(v6 + 8))(v12, v31);
    }

    sub_2666697E8();
  }

  else
  {
    sub_2665B9288(v71, &v69);
    if (v69 == 2)
    {
      v41 = v66;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v42 = sub_26666C168();
      __swift_project_value_buffer(v42, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v43();
      v44 = sub_26666C148();
      v45 = sub_26666C618();
      if (os_log_type_enabled(v44, v45))
      {
        OUTLINED_FUNCTION_21();
        v46 = OUTLINED_FUNCTION_13();
        v68 = v46;
        *v16 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v47(v19, v41);
        v48 = OUTLINED_FUNCTION_21_5();
        v51 = sub_2665BFC90(v48, v49, v50);

        *(v16 + 4) = v51;
        _os_log_impl(&dword_266549000, v44, v45, "[ConfirmConflictStrategy] Returning .cancel() for input: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        OUTLINED_FUNCTION_9_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v6 + 8))(v19, v41);
      }

      sub_2666697C8();
    }

    else
    {
      v52 = v66;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v53 = sub_26666C168();
      __swift_project_value_buffer(v53, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v54();
      v55 = sub_26666C148();
      v56 = sub_26666C618();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = OUTLINED_FUNCTION_21();
        v58 = swift_slowAlloc();
        v68 = v58;
        *v57 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v59(v16, v52);
        v60 = OUTLINED_FUNCTION_21_5();
        v63 = sub_2665BFC90(v60, v61, v62);

        *(v57 + 4) = v63;
        _os_log_impl(&dword_266549000, v55, v56, "[ConfirmConflictStrategy] Returning .handle() for input: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_9_12();
        MEMORY[0x266789690](v57, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v16, v52);
      }

      sub_2666697D8();
      sub_26656CAEC(&v70, &unk_28007D200, &qword_26666FD20);
    }
  }

  return sub_26656CAEC(v71, &qword_28007E368, &unk_266673E30);
}

uint64_t sub_2665B6A98()
{
  OUTLINED_FUNCTION_14();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[21] = v5;
  v6 = sub_266669E18();
  v1[26] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[27] = v7;
  v9 = *(v8 + 64);
  v1[28] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v10);
  v12 = *(v11 + 64);
  v1[29] = OUTLINED_FUNCTION_19();
  v13 = sub_266669E58();
  v1[30] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[31] = v14;
  v16 = *(v15 + 64);
  v1[32] = OUTLINED_FUNCTION_19();
  v17 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2665B6BBC()
{
  v66 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1(*(v0 + 200), *(*(v0 + 200) + 24));
  sub_266669DF8();
  sub_266561674(v1, v0 + 16);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_15_2();
  v7(v6);
  sub_2665B9288(v0 + 16, v0 + 72);
  v8 = *(v0 + 72);
  if (v8 == 2)
  {
    sub_2665B92F8(v0 + 72);
    goto LABEL_5;
  }

  if (v8 == 3)
  {
    sub_26656CAEC(v0 + 72, &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    v12 = *(v0 + 176);
    v13 = sub_26666C168();
    v14 = __swift_project_value_buffer(v13, qword_28156D7E8);
    (*(v10 + 16))(v9, v12, v11);
    v15 = sub_26666C148();
    v16 = sub_26666C5F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 256);
      v18 = *(v0 + 240);
      v20 = *(v0 + 216);
      v19 = *(v0 + 224);
      v21 = *(v0 + 208);
      OUTLINED_FUNCTION_21();
      v22 = OUTLINED_FUNCTION_13();
      v65 = v22;
      *v14 = 136315138;
      sub_266669DF8();
      v23 = sub_26666C318();
      v25 = v24;
      v26 = *(v20 + 8);
      v27 = OUTLINED_FUNCTION_21_5();
      v28(v27);
      v29 = sub_2665BFC90(v23, v25, &v65);

      *(v14 + 4) = v29;
      _os_log_impl(&dword_266549000, v15, v16, "[ConfirmConflictStrategy] Did not get ConfirmationTask from parse: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x266789690](v22, -1, -1);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v31 = *(v0 + 216);
      v30 = *(v0 + 224);
      v32 = *(v0 + 208);

      (*(v31 + 8))(v30, v32);
    }

    sub_26656CBFC();
    v33 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v33, v34);
    sub_26656CAEC(v0 + 16, &qword_28007E368, &unk_266673E30);
    v35 = *(v0 + 256);
    v37 = *(v0 + 224);
    v36 = *(v0 + 232);

    OUTLINED_FUNCTION_24_1();
    goto LABEL_19;
  }

  v39 = *(v0 + 192);
  sub_26656CAEC(v0 + 80, &unk_28007D200, &qword_26666FD20);
  v40 = *(v39 + 16);
  sub_266669CE8();
  v41 = *(v0 + 184);
  if (v8)
  {
    v42 = sub_266669CB8();
    v43 = *MEMORY[0x277D5BED0];
    v44 = sub_266669AF8();
    OUTLINED_FUNCTION_18_2(v44);
    v46 = *(v45 + 104);
    v47 = v42;
  }

  else
  {
    v48 = sub_266669CC8();
    v49 = [v48 itemToConfirm];

    sub_26666C718();
    swift_unknownObjectRelease();
    sub_2665F0658((v0 + 128));
    v51 = v50;
    v53 = *(v0 + 184);
    v52 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_1((v0 + 128));
    v54 = sub_266669CB8();
    sub_2665B2A7C(v51, 1, v40, *(v52 + 32));

    v55 = qword_28156C150;
    v47 = *(v0 + 160);
    if (v55 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v56 = sub_26666C168();
    __swift_project_value_buffer(v56, qword_28156D7E8);
    v57 = sub_26666C148();
    v58 = sub_26666C618();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_266549000, v57, v58, "[ConfirmConflictStrategy] Intent date time range updated with value to confirm.", v59, 2u);
      OUTLINED_FUNCTION_9_12();
    }

    v43 = *MEMORY[0x277D5BED8];
    v44 = sub_266669AF8();
    OUTLINED_FUNCTION_18_2(v44);
    v46 = *(v60 + 104);
  }

  v61 = *(v0 + 256);
  v62 = *(v0 + 232);
  v63 = *(v0 + 168);
  v46(v62, v43, v44);
  sub_266669AF8();
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v44);
  sub_266669B98();

  sub_26656CAEC(v0 + 16, &qword_28007E368, &unk_266673E30);

  OUTLINED_FUNCTION_24_1();
LABEL_19:

  return v38();
}

uint64_t sub_2665B7110()
{
  OUTLINED_FUNCTION_14();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64);
  v1[18] = OUTLINED_FUNCTION_19();
  v12 = sub_266669708();
  v1[19] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[20] = v13;
  v15 = *(v14 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v16);
  v18 = *(v17 + 64);
  v1[22] = OUTLINED_FUNCTION_19();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v19);
  v21 = *(v20 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v22 = type metadata accessor for Snippet();
  v1[25] = v22;
  OUTLINED_FUNCTION_3_3(v22);
  v24 = *(v23 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v25 = sub_2666699C8();
  v1[27] = v25;
  OUTLINED_FUNCTION_3_1(v25);
  v1[28] = v26;
  v28 = *(v27 + 64);
  v1[29] = OUTLINED_FUNCTION_19();
  v29 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_2665B72F0()
{
  v67 = v0;
  v1 = sub_2665F0658(*(v0 + 104));
  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v6 + 16);
  *(v0 + 256) = sub_266669CE8();
  v9 = sub_266669CB8();
  v10 = *(v6 + 32);
  v11 = *(v10 + 40);
  v12 = v4;
  v13 = v11(v5 + 40, v4, v8, v10);
  *(v0 + 264) = v13;

  if (v13)
  {
    v14 = *__swift_project_boxed_opaque_existential_1((v5 + 40), *(*(v0 + 128) + 64));
    *(v0 + 40) = type metadata accessor for EventProvider();
    *(v0 + 48) = &off_287806290;
    *(v0 + 16) = v14;
    sub_26655358C(v0 + 16, v0 + 56);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v66 = MEMORY[0x277D84F90];
    v17 = *(v3 + 16);
    v18 = (v3 + 40);
LABEL_3:
    v12 = v18;
    v19 = &v18[16 * v15];
    while (v17 != v15)
    {
      if (v15 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v20 = v19 + 2;
      ++v15;
      v21 = *(v19 - 1);
      v22 = *v19;
      v23 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

      v24 = sub_26655A8B4();
      v25 = sub_26665140C(v21, v22, v24);

      v19 = v20;
      if (v25)
      {
        MEMORY[0x2667887C0](v26);
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26666C4B8();
        }

        sub_26666C4E8();
        v16 = v66;
        v18 = v12;
        goto LABEL_3;
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v27 = sub_2665C485C(v16);
    if (v27)
    {
      v28 = v27;
      v66 = MEMORY[0x277D84F90];
      sub_26666C898();
      if (v28 < 0)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      sub_26656CC50();
      v29 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          MEMORY[0x266788B60](v29, v16);
        }

        else
        {
          v30 = *(v16 + 8 * v29 + 32);
        }

        ++v29;
        sub_2665EB4F8();
        sub_26666C868();
        v31 = *(v66 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      while (v28 != v29);

      v32 = v66;
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    *(v0 + 272) = v32;
    if (sub_2665C485C(v32) == 1 && sub_2665C485C(v32))
    {
      sub_2665C4864(0, (v32 & 0xC000000000000001) == 0, v32);
      if ((v32 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x266788B60](0, v32);
      }

      else
      {
        v39 = *(v32 + 32);
      }

      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    *(v0 + 280) = v40;
    v41 = *(v0 + 232);
    v42 = sub_26666B058();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    v45 = sub_26666B048();
    sub_266662A60(v45, v41);
    v56 = *(v0 + 128);

    v57 = *(v56 + 160);
    if (v40)
    {
      v59 = *(v0 + 120);
      v58 = *(v0 + 128);
      v65 = v40;
      v60 = *(v59 + 24);
      sub_2665B8318(&v65, v58, &v66);
      v61 = v66;
    }

    else
    {
      v61 = 0;
    }

    *(v0 + 288) = v61;
    v62 = swift_task_alloc();
    *(v0 + 296) = v62;
    *v62 = v0;
    v62[1] = sub_2665B78A4;
    v63 = OUTLINED_FUNCTION_15_2();

    return sub_2665D8244(v63, v64, 0);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
LABEL_41:
      OUTLINED_FUNCTION_1_1();
    }

    v33 = sub_26666C168();
    __swift_project_value_buffer(v33, qword_28156D7E8);
    v34 = sub_26666C148();
    v35 = sub_26666C608();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266549000, v34, v35, "[ChangeOrCancelStrategy] Could not get INCalendarEvent for snippet", v36, 2u);
      OUTLINED_FUNCTION_12();
    }

    sub_26656CBFC();
    v37 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v37, v38);

    v46 = *(v0 + 232);
    v47 = *(v0 + 208);
    v49 = *(v0 + 184);
    v48 = *(v0 + 192);
    v51 = *(v0 + 168);
    v50 = *(v0 + 176);
    v53 = *(v0 + 136);
    v52 = *(v0 + 144);

    OUTLINED_FUNCTION_24_1();

    return v54();
  }
}

uint64_t sub_2665B78A4()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = v2[37];
  v6 = *v1;
  v3[38] = v7;
  v3[39] = v0;

  v8 = v2[36];
  if (v0)
  {
    v9 = v3[34];

    v10 = sub_2665B8140;
  }

  else
  {

    v10 = sub_2665B79EC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2665B79EC()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[14];
  v0[40] = sub_266669CB8();
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_2665B7A98;
  v5 = v0[34];
  v6 = v0[26];
  v7 = v0[15];
  v8 = v0[16];

  return sub_2665B838C();
}

uint64_t sub_2665B7A98()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 272);
  if (v0)
  {

    v7 = sub_2665B8228;
  }

  else
  {

    v7 = sub_2665B7BF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2665B7BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[28];
  v16 = v14[29];
  v18 = v14[26];
  v17 = v14[27];
  v20 = v14[24];
  v19 = v14[25];
  v22 = v14[22];
  v21 = v14[23];
  v43 = v14[21];
  v44 = v14[18];
  v23 = v14[16];
  v45 = v14[17];
  v46 = v23[19];
  __swift_project_boxed_opaque_existential_1(v23 + 15, v23[18]);
  sub_266566370(v18, v20);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v19);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
  (*(v15 + 16))(v22, v16, v17);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v17);
  sub_2666696B8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_26656CFC4();
  v35 = swift_task_alloc();
  v14[43] = v35;
  *v35 = v14;
  v35[1] = sub_2665B7DCC;
  v36 = v14[38];
  v38 = v14[23];
  v37 = v14[24];
  v40 = v14[21];
  v39 = v14[22];
  v41 = v14[12];
  v48 = v14[18];
  v49 = v14[17];

  return sub_2665643AC(v41, v37, v38, v36, 0, 0, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665B7DCC()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 160);
  v7 = *(*v0 + 152);
  v8 = *(*v0 + 144);
  v9 = *(*v0 + 136);
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_26656CAEC(v9, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_26656CAEC(v4, &qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_20_9();
  sub_26656CAEC(v12, v13, v14);
  OUTLINED_FUNCTION_20_9();
  sub_26656CAEC(v15, v16, v17);

  return MEMORY[0x2822009F8](sub_2665B800C, 0, 0);
}

uint64_t sub_2665B800C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = *(v0 + 192);
  v12 = *(v0 + 184);
  v13 = *(v0 + 176);
  v14 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 136);

  sub_2665B915C(v8, type metadata accessor for Snippet);
  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_24_1();

  return v10();
}

uint64_t sub_2665B8140()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];

  (*(v6 + 8))(v5, v7);
  v8 = v0[39];
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_24_1();

  return v9();
}

uint64_t sub_2665B8228()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);

  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_15_2();
  v10(v9);
  v11 = *(v0 + 336);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_24_1();

  return v12();
}

uint64_t sub_2665B8318@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(a2 + 80, v7);
  result = sub_2665CA7F4(v5, v7);
  *a3 = result;
  return result;
}

uint64_t sub_2665B838C()
{
  OUTLINED_FUNCTION_14();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v12 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_2665B865C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  sub_26655358C(a2 + 40, var48);
  v9 = v8;
  sub_2665AAA8C(v9, var48, v10, v11, v12, v13, v14, v15, v16, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
  if (v6)
  {
    *a6 = v6;
  }
}

uint64_t sub_2665B86D8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  sub_266669758();
  sub_266669748();
  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2665B8744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_266669A88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2665B87BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B93A4;

  return sub_2665B6A98();
}

uint64_t sub_2665B887C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2665B8910;

  return sub_2665B6408(v5, v6, a3);
}

uint64_t sub_2665B8910()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_2665B8A00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8AC0;

  return sub_2665B7110();
}

uint64_t sub_2665B8AC0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;

  OUTLINED_FUNCTION_24_1();

  return v4();
}

uint64_t sub_2665B8BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B4F0] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E28](a1, a2, a3, a4, a5);
}

uint64_t sub_2665B8C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B500] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E38](a1, a2, a3, a4, a5);
}

uint64_t sub_2665B8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B4F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

uint64_t sub_2665B8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B508] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E40](a1, a2, a3, a4);
}

uint64_t sub_2665B8EC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2665B93A4;

  return sub_2665B86C4(a1);
}

uint64_t sub_2665B8F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2665B93A4;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2665B9038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2665B93A4;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2665B915C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2665B91B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665B9218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665B9288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E368, &unk_266673E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2665B934C()
{
  result = qword_28007D6D8;
  if (!qword_28007D6D8)
  {
    sub_266669E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6D8);
  }

  return result;
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x266789690);
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16_8()
{
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
}

uint64_t DIStringValue.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2665B94EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2665B957C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665B94EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2665B95A8(uint64_t a1)
{
  v2 = sub_2665B9770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665B95E4(uint64_t a1)
{
  v2 = sub_2665B9770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DIStringValue.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26666CAC8();
  }
}

uint64_t DIStringValue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E370, &qword_266673E40);
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665B9770();
  sub_26666CBE8();
  sub_26666CA48();
  return (*(v5 + 8))(v10, v2);
}

unint64_t sub_2665B9770()
{
  result = qword_28007E378;
  if (!qword_28007E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E378);
  }

  return result;
}

uint64_t DIStringValue.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E380, &qword_266673E48);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  v11 = &v15 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665B9770();
  sub_26666CBD8();
  if (!v1)
  {
    v13 = sub_26666C9B8();
    (*(v6 + 8))(v11, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

unint64_t sub_2665B9920(void *a1)
{
  a1[1] = sub_266563B88();
  a1[2] = sub_2665B9958();
  result = sub_2665B99AC();
  a1[3] = result;
  return result;
}

unint64_t sub_2665B9958()
{
  result = qword_28007E388;
  if (!qword_28007E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E388);
  }

  return result;
}

unint64_t sub_2665B99AC()
{
  result = qword_28007E390;
  if (!qword_28007E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E390);
  }

  return result;
}

uint64_t sub_2665B9A00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DIStringValue.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2665B9A2C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return DIStringValue.encode(to:)(a1);
}

uint64_t sub_2665B9A5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2665B9A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIStringValue.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2665B9B98()
{
  result = qword_28007E398;
  if (!qword_28007E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E398);
  }

  return result;
}

unint64_t sub_2665B9BF0()
{
  result = qword_28007E3A0;
  if (!qword_28007E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3A0);
  }

  return result;
}

unint64_t sub_2665B9C48()
{
  result = qword_28007E3A8;
  if (!qword_28007E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3A8);
  }

  return result;
}

uint64_t sub_2665B9CD4(void *a1, uint64_t a2, char a3)
{
  sub_2665B9D10(a1, a2, a3 & 1);
  OUTLINED_FUNCTION_2_19();
  v3 = OUTLINED_FUNCTION_0_21();
  v10 = sub_2665828A0(v3, v4, v5, v6, v7, v8, v9);
  return OUTLINED_FUNCTION_1_20(v10);
}

uint64_t sub_2665B9D10(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26666E050;
    *(v4 + 32) = a1;
  }

  else
  {
    v4 = a1;
  }

  v5 = a1;
  return v4;
}

uint64_t sub_2665B9DA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  result = sub_2665B9CD4(a1, a2, a3 & 1);
  *a4 = result;
  return result;
}

uint64_t sub_2665B9DCC(void *a1, uint64_t a2, char a3)
{
  sub_2665B9D10(a1, a2, a3 & 1);
  OUTLINED_FUNCTION_2_19();
  v6 = sub_266636A48(0, 0, 0, 0, 0, 0, v3, v4, v5, 0, 0, 3, 2, 2);
  return OUTLINED_FUNCTION_1_20(v6);
}

uint64_t sub_2665B9E48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  result = sub_2665B9DCC(a1, a2, a3 & 1);
  *a4 = result;
  return result;
}

uint64_t sub_2665B9E74(void *a1, uint64_t a2, char a3)
{
  sub_2665B9D10(a1, a2, a3 & 1);
  OUTLINED_FUNCTION_2_19();
  v3 = OUTLINED_FUNCTION_0_21();
  v10 = sub_2665668D4(v3, v4, v5, v6, v7, v8, v9, 0, 1);
  return OUTLINED_FUNCTION_1_20(v10);
}

uint64_t sub_2665B9EC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  result = sub_2665B9E74(a1, a2, a3 & 1);
  *a4 = result;
  return result;
}

uint64_t sub_2665B9F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v113 = a8;
  v102 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v96[-v17];
  v110 = sub_266669788();
  v19 = OUTLINED_FUNCTION_3_0(v110);
  v105 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19, v23);
  v111 = &v96[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  OUTLINED_FUNCTION_8_10();
  v109 = v28;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v96[-v31];
  v33 = sub_26666BB08();
  v34 = OUTLINED_FUNCTION_3_0(v33);
  v114 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34, v38);
  OUTLINED_FUNCTION_8_10();
  v108 = v39;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v40, v41);
  OUTLINED_FUNCTION_24_5();
  v104 = v42;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_24_5();
  v106 = v45;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v46, v47);
  OUTLINED_FUNCTION_24_5();
  v103 = v48;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v49, v50);
  OUTLINED_FUNCTION_24_5();
  v107 = v51;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v52, v53);
  v112 = &v96[-v54];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8, v57);
  v59 = &v96[-v58];
  sub_266669C28();
  if (!a4)
  {
    v101 = a6;
    v60 = v102;
    if (sub_2665C485C(v102))
    {
      sub_2665C4864(0, (v60 & 0xC000000000000001) == 0, v60);
      if ((v60 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x266788B60](0, v60);
      }

      else
      {
        v61 = v60[4];
      }

      v62 = v61;
      v63 = [v61 catId];

      sub_26666C308();
    }

    a6 = v101;
  }

  sub_266669C18();
  sub_26659236C(a6, v59, &qword_28007D338, &qword_26666EEB0);
  sub_266669C38();
  if (a7 == 2)
  {
    sub_266669C48();
  }

  v64 = v113;
  v65 = v114;
  v66 = v112;
  v67 = v106;
  v106 = a9;
  sub_266669C58();
  sub_26659236C(v64, v32, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_4_19(v32);
  if (v68)
  {
    sub_266557D74(v32, &unk_28007DE20, &unk_26666EAE0);
  }

  else
  {
    (*(v65 + 32))(v66, v32, v33);
    v69 = v107;
    sub_266669BD8();
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v102 = v18;
    v70 = sub_26666C168();
    __swift_project_value_buffer(v70, qword_28156D7E8);
    v71 = *(v65 + 16);
    v72 = v103;
    v71(v103, v69, v33);
    v100 = v65 + 16;
    v101 = v71;
    v71(v67, v66, v33);
    v73 = sub_26666C148();
    v74 = sub_26666C618();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v115[0] = v99;
      *v75 = 136315394;
      sub_2665BA7D0();
      v98 = v73;
      v76 = sub_26666CAA8();
      v97 = v74;
      v78 = v77;
      v79 = v72;
      v80 = *(v114 + 8);
      v80(v79, v33);
      v81 = sub_2665BFC90(v76, v78, v115);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      v82 = sub_26666CAA8();
      v84 = v83;
      v80(v67, v33);
      v66 = v112;
      v85 = sub_2665BFC90(v82, v84, v115);
      v65 = v114;

      *(v75 + 14) = v85;
      v86 = v98;
      _os_log_impl(&dword_266549000, v98, v97, "[OutputHelper] overriding default response mode of %s to %s", v75, 0x16u);
      v87 = v99;
      swift_arrayDestroy();
      v88 = v87;
      v89 = v107;
      MEMORY[0x266789690](v88, -1, -1);
      v90 = v75;
      v64 = v113;
      MEMORY[0x266789690](v90, -1, -1);
    }

    else
    {

      v91 = v72;
      v80 = *(v65 + 8);
      v80(v67, v33);
      v80(v91, v33);
      v89 = v107;
    }

    v101(v104, v66, v33);
    sub_266669BE8();
    v80(v89, v33);
    v80(v66, v33);
    v18 = v102;
  }

  v92 = v109;
  sub_26659236C(v64, v109, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_4_19(v92);
  v93 = v110;
  v94 = v111;
  if (v68)
  {
    sub_266669BD8();
    OUTLINED_FUNCTION_4_19(v92);
    if (!v68)
    {
      sub_266557D74(v92, &unk_28007DE20, &unk_26666EAE0);
    }
  }

  else
  {
    (*(v65 + 32))(v108, v92, v33);
  }

  sub_266669BE8();
  sub_26659236C(v106, v18, &qword_28007D330, &unk_26666EEA0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v93) == 1)
  {
    sub_266669BF8();
    if (__swift_getEnumTagSinglePayload(v18, 1, v93) != 1)
    {
      sub_266557D74(v18, &qword_28007D330, &unk_26666EEA0);
    }
  }

  else
  {
    (*(v105 + 32))(v94, v18, v93);
  }

  sub_266669C08();
  if (a10 == 2)
  {
    sub_266669C88();
  }

  sub_266669C98();
  if (a11 == 2)
  {
    sub_266669C68();
  }

  return sub_266669C78();
}

unint64_t sub_2665BA7D0()
{
  result = qword_28007D340;
  if (!qword_28007D340)
  {
    sub_26666BB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D340);
  }

  return result;
}

uint64_t sub_2665BA878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

      if (v8)
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

uint64_t sub_2665BA998(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x64657463656A6572;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_2665BA9F0(uint64_t a1)
{
  v2 = sub_2665BAF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BAA2C(uint64_t a1)
{
  v2 = sub_2665BAF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BAA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665BA878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665BAA98(uint64_t a1)
{
  v2 = sub_2665BAF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BAAD4(uint64_t a1)
{
  v2 = sub_2665BAF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BAB10(uint64_t a1)
{
  v2 = sub_2665BB018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BAB4C(uint64_t a1)
{
  v2 = sub_2665BB018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BAB88(uint64_t a1)
{
  v2 = sub_2665BAFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BABC4(uint64_t a1)
{
  v2 = sub_2665BAFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIConfirmationResponse.encode(to:)(void *a1, int a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3B0, &qword_266674130);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v46 = v5;
  v47 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8, v9);
  v45 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3B8, &qword_266674138);
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v43 = v13;
  v44 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3C0, &qword_266674140);
  OUTLINED_FUNCTION_3_0(v20);
  v42 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v41 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3C8, &qword_266674148);
  OUTLINED_FUNCTION_3_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v41 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665BAF1C();
  sub_26666CBE8();
  v38 = (v30 + 8);
  if (v48)
  {
    if (v48 == 1)
    {
      v50 = 1;
      sub_2665BAFC4();
      OUTLINED_FUNCTION_6_8();
      (*(v43 + 8))(v19, v44);
    }

    else
    {
      v51 = 2;
      sub_2665BAF70();
      v39 = v45;
      OUTLINED_FUNCTION_6_8();
      (*(v46 + 8))(v39, v47);
    }
  }

  else
  {
    v49 = 0;
    sub_2665BB018();
    OUTLINED_FUNCTION_6_8();
    (*(v42 + 8))(v27, v20);
  }

  return (*v38)(v36, v28);
}

unint64_t sub_2665BAF1C()
{
  result = qword_28007E3D0;
  if (!qword_28007E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3D0);
  }

  return result;
}

unint64_t sub_2665BAF70()
{
  result = qword_28007E3D8;
  if (!qword_28007E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3D8);
  }

  return result;
}

unint64_t sub_2665BAFC4()
{
  result = qword_28007E3E0;
  if (!qword_28007E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3E0);
  }

  return result;
}

unint64_t sub_2665BB018()
{
  result = qword_28007E3E8;
  if (!qword_28007E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3E8);
  }

  return result;
}

uint64_t DIConfirmationResponse.init(from:)(uint64_t *a1)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3F0, &qword_266674150);
  OUTLINED_FUNCTION_3_0(v76);
  v74 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5, v6);
  v72 = &v66 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3F8, &qword_266674158);
  OUTLINED_FUNCTION_3_0(v73);
  v71 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E400, &qword_266674160);
  OUTLINED_FUNCTION_3_0(v15);
  v70 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E408, &unk_266674168);
  OUTLINED_FUNCTION_3_0(v23);
  v75 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v27, v28);
  v29 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2665BAF1C();
  v30 = v77;
  sub_26666CBD8();
  if (v30)
  {
    goto LABEL_12;
  }

  v66 = v15;
  v67 = v22;
  v68 = v14;
  v69 = 0;
  v31 = v76;
  v77 = a1;
  v32 = sub_26666C9F8();
  result = sub_266575DD8(v32, 0);
  v29 = v23;
  if (v35 == v36 >> 1)
  {
    goto LABEL_10;
  }

  if (v35 < (v36 >> 1))
  {
    v37 = v23;
    v38 = *(v34 + v35);
    v39 = sub_266575DD4(v35 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v73;
    v45 = v74;
    if (v41 == v43 >> 1)
    {
      v29 = v38;
      if (v38)
      {
        v70 = v39;
        v46 = v69;
        if (v38 == 1)
        {
          v79 = 1;
          sub_2665BAFC4();
          v47 = v68;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v46)
          {
            swift_unknownObjectRelease();
            (*(v71 + 8))(v47, v44);
            v48 = OUTLINED_FUNCTION_4_20();
            v49(v48);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v77);
            return v29;
          }
        }

        else
        {
          LODWORD(v73) = v38;
          v80 = 2;
          sub_2665BAF70();
          v29 = v72;
          OUTLINED_FUNCTION_5_15();
          sub_26666C968();
          if (!v46)
          {
            swift_unknownObjectRelease();
            (*(v45 + 8))(v29, v31);
            v64 = OUTLINED_FUNCTION_4_20();
            v65(v64);
            v29 = v73;
            goto LABEL_21;
          }
        }

        v60 = OUTLINED_FUNCTION_4_20();
        v61(v60);
      }

      else
      {
        v78 = 0;
        sub_2665BB018();
        v56 = v67;
        OUTLINED_FUNCTION_5_15();
        v57 = v69;
        sub_26666C968();
        if (!v57)
        {
          swift_unknownObjectRelease();
          (*(v70 + 8))(v56, v66);
          v62 = OUTLINED_FUNCTION_3_19();
          v63(v62, v37);
          goto LABEL_21;
        }

        v58 = OUTLINED_FUNCTION_3_19();
        v59(v58, v37);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v29 = v37;
LABEL_10:
    v50 = sub_26666C848();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v52 = &type metadata for DIConfirmationResponse;
    sub_26666C978();
    sub_26666C838();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = OUTLINED_FUNCTION_3_19();
    v55(v54, v29);
LABEL_11:
    a1 = v77;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665BB654@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = DIConfirmationResponse.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2665BB6A0()
{
  result = qword_28007E410;
  if (!qword_28007E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E410);
  }

  return result;
}

unint64_t sub_2665BB6F4(void *a1)
{
  a1[1] = sub_266563ADC();
  a1[2] = sub_2665BB72C();
  result = sub_2665BB6A0();
  a1[3] = result;
  return result;
}

unint64_t sub_2665BB72C()
{
  result = qword_28007E418;
  if (!qword_28007E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E418);
  }

  return result;
}

_BYTE *sub_2665BB790(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665BB8A0()
{
  result = qword_28007E420;
  if (!qword_28007E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E420);
  }

  return result;
}

unint64_t sub_2665BB8F8()
{
  result = qword_28007E428;
  if (!qword_28007E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E428);
  }

  return result;
}

unint64_t sub_2665BB950()
{
  result = qword_28007E430;
  if (!qword_28007E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E430);
  }

  return result;
}

unint64_t sub_2665BB9A8()
{
  result = qword_28007E438;
  if (!qword_28007E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E438);
  }

  return result;
}

unint64_t sub_2665BBA00()
{
  result = qword_28007E440;
  if (!qword_28007E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E440);
  }

  return result;
}

unint64_t sub_2665BBA58()
{
  result = qword_28007E448;
  if (!qword_28007E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E448);
  }

  return result;
}

unint64_t sub_2665BBAB0()
{
  result = qword_28007E450;
  if (!qword_28007E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E450);
  }

  return result;
}

unint64_t sub_2665BBB08()
{
  result = qword_28007E458;
  if (!qword_28007E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E458);
  }

  return result;
}

unint64_t sub_2665BBB60()
{
  result = qword_28007E460;
  if (!qword_28007E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E460);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return sub_26666CA08();
}

uint64_t sub_2665BBC30(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2665BBC50, 0, 0);
}

uint64_t sub_2665BBC50()
{
  v1 = v0[9];
  swift_beginAccess();
  if (sub_2665C485C(*(v1 + 16)))
  {
    v2 = v0[8];
    swift_beginAccess();
    sub_2665FD55C();
    swift_endAccess();
    sub_266669868();
  }

  else
  {
    v3 = v0[8];
    sub_2666698A8();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2665BBD18()
{
  type metadata accessor for EachFlow();
  sub_2665BBEC8();
  return sub_266669548();
}

uint64_t sub_2665BBD74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2665BBDF4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266553FF0;

  return sub_2665BBC30(a1);
}

uint64_t sub_2665BBE90()
{
  type metadata accessor for EachFlow();

  return sub_266669588();
}

unint64_t sub_2665BBEC8()
{
  result = qword_28156C3C0[0];
  if (!qword_28156C3C0[0])
  {
    type metadata accessor for EachFlow();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156C3C0);
  }

  return result;
}

uint64_t type metadata accessor for FindEventsNLv3IntentWrapper()
{
  result = qword_28007E468;
  if (!qword_28007E468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665BBF90()
{
  result = type metadata accessor for CalendarNLv3Intent(319);
  if (v1 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CF58);
    if (v2 <= 0x3F)
    {
      result = sub_26655EC10(319, qword_28156CB10);
      if (v3 <= 0x3F)
      {
        result = sub_26655EC10(319, &qword_28156CF50);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2665BC074()
{
  if (qword_28007CE40 != -1)
  {
    OUTLINED_FUNCTION_2_20();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  OUTLINED_FUNCTION_15_2();
  sub_26666A528();
  if (v4 == 16)
  {
    v0 = 0;
  }

  else if (sub_2666315D8(v4) == 0x6574656C6564 && v1 == 0xE600000000000000)
  {

    v0 = 1;
  }

  else
  {
    v0 = sub_26666CAC8();
  }

  return v0 & 1;
}

uint64_t sub_2665BC154()
{
  if (qword_28007CE40 != -1)
  {
    OUTLINED_FUNCTION_2_20();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  OUTLINED_FUNCTION_15_2();
  sub_26666A528();
  if (v4 == 16)
  {
    v0 = 0;
  }

  else if (sub_2666315D8(v4) == 1684104562 && v1 == 0xE400000000000000)
  {

    v0 = 1;
  }

  else
  {
    v0 = sub_26666CAC8();
  }

  return v0 & 1;
}

uint64_t sub_2665BC234()
{
  v0 = sub_26662E9D4();
  if (v0 == 40)
  {
    return 4;
  }

  return sub_266576A08(v0);
}

uint64_t sub_2665BC274()
{
  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  OUTLINED_FUNCTION_15_2();
  sub_26666A528();
  if (!v1)
  {
    return 2;
  }

  return 0;
}

uint64_t sub_2665BC300()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 776) = v0;
  *(v1 + 912) = v2;
  v3 = sub_26666B5C8();
  *(v1 + 784) = v3;
  v4 = *(v3 - 8);
  *(v1 + 792) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 800) = swift_task_alloc();
  v6 = type metadata accessor for CalendarNLv3Intent(0);
  *(v1 + 808) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v1 + 816) = swift_task_alloc();
  v8 = sub_26666C0B8();
  *(v1 + 824) = v8;
  v9 = *(v8 - 8);
  *(v1 + 832) = v9;
  v10 = *(v9 + 64) + 15;
  *(v1 + 840) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665BC44C, 0, 0);
}

uint64_t sub_2665BC44C()
{
  if (qword_28007CDA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 912);
  v5 = sub_26666C0E8();
  *(v0 + 848) = __swift_project_value_buffer(v5, qword_280095698);
  sub_26666C0A8();
  *(v0 + 856) = sub_26658E0BC("FindEventsNLv3IntentWrapper#makeSiriKitIntent", 45, 2, v1);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_15_2();
  v8(v7);
  if (v4 == 1)
  {
    v9 = *(v0 + 776);
    sub_26655A274(*(v0 + 816));
  }

  else
  {
    sub_2665BD5E4(*(v0 + 776), *(v0 + 816), type metadata accessor for CalendarNLv3Intent);
  }

  v10 = *(v0 + 816);
  v11 = *(v0 + 776);
  v12 = swift_task_alloc();
  *(v0 + 864) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF20, &unk_2666746B0);
  swift_asyncLet_begin();
  sub_26662DD18();
  if (v13)
  {
    v14 = *(v0 + 776);
    v15 = (v14 + *(type metadata accessor for FindEventsNLv3IntentWrapper() + 24));
    v16 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    if (qword_28007CED8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 800);
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = __swift_project_value_buffer(v19, qword_2800958C8);
    (*(v18 + 16))(v17, v20, v19);
    v21 = *(v16 + 8);
    v22 = OUTLINED_FUNCTION_15_2();
    v24 = v23(v22);
    (*(*(v0 + 792) + 8))(*(v0 + 800), *(v0 + 784));
  }

  else
  {
    v24 = 0;
  }

  *(v0 + 872) = v24;
  if (qword_28007CE58 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 816);
  v26 = *(v0 + 808);
  *(v0 + 880) = sub_26656960C();
  sub_26666A528();
  *(v0 + 888) = *(v0 + 696);
  *(v0 + 896) = *(v0 + 704);

  return MEMORY[0x282200928](v0 + 16, v0 + 728, sub_2665BC780, v0 + 656);
}

uint64_t sub_2665BC794()
{
  v1 = v0[91];
  v2 = qword_28007CE60;
  v3 = v1;
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  v4 = v0[110];
  v5 = v0[102];
  v6 = v0[101];
  sub_26666A528();
  v7 = v0[90];
  if (v7)
  {
    v8 = v0[89];
    sub_2665BD5A0();
    v9 = objc_allocWithZone(MEMORY[0x277CE41F8]);

    v10 = sub_266606794([v9 init], v8, v7, 0);
  }

  else
  {
    v10 = 0;
  }

  v11 = v0[112];
  v12 = v0[111];
  v13 = v0[109];
  v14 = v0[102];
  v15 = v0[97];
  v16 = sub_26662EAB8();
  v17 = 3;
  if (v16 == 20)
  {
    v17 = 1;
  }

  if (v16 == 21)
  {
    v17 = 2;
  }

  if (v16 == 40)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CD3C10]);
  v20 = sub_26660B190(v12, v11, v1, v13, v10, v18);
  v21 = sub_2665BC074();
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper();
  v23 = __swift_project_boxed_opaque_existential_1((v15 + *(EventsNLv3IntentWrapper + 28)), *(v15 + *(EventsNLv3IntentWrapper + 28) + 24));
  v0[113] = sub_2665BCFF4(v20, v21 & 1, *v23, v15);

  return MEMORY[0x282200920](v0 + 2, v0 + 91, sub_2665BC96C, v0 + 92);
}

uint64_t sub_2665BC980()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[102];
  v6 = v0[100];

  sub_2665BD644(v5, type metadata accessor for CalendarNLv3Intent);
  sub_26658E2D0("FindEventsNLv3IntentWrapper#makeSiriKitIntent", 45, 2);

  v7 = v0[1];
  v8 = v0[113];

  return v7(v8);
}

uint64_t sub_2665BCA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665BCB34, 0, 0);
}

uint64_t sub_2665BCB34()
{
  v1 = v0[3];
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper();
  __swift_project_boxed_opaque_existential_1((v1 + *(EventsNLv3IntentWrapper + 20)), *(v1 + *(EventsNLv3IntentWrapper + 20) + 24));
  if (qword_28007CE50 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = v0[4];
  type metadata accessor for CalendarNLv3Intent(0);
  sub_26656960C();
  sub_26666A528();
  if (qword_28007CDA8 != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = sub_26666B628();
  __swift_project_value_buffer(v6, qword_2800956C8);
  v7 = sub_266668D38();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_2665BCCE4;
  v9 = v0[5];
  v10 = v0[6];

  return sub_266606830();
}

uint64_t sub_2665BCCE4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v7 + 64) = v6;

  sub_26656CAEC(v3, &qword_28007D140, &qword_26666F140);
  sub_26656CAEC(v2, &qword_28007D3D8, &unk_2666746C0);

  return MEMORY[0x2822009F8](sub_2665BCE34, 0, 0);
}

uint64_t sub_2665BCE34()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2665BCEB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8910;

  return sub_2665BC300();
}

uint64_t sub_2665BCF48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_266557FE8;

  return sub_2665BCA5C(a1, v5, v4);
}

id sub_2665BCFF4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  EventsNLv3IntentWrapper = type metadata accessor for FindEventsNLv3IntentWrapper();
  v9 = *(*(EventsNLv3IntentWrapper - 8) + 64);
  MEMORY[0x28223BE20](EventsNLv3IntentWrapper - 8, v10);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54[3] = &type metadata for CalendarReferenceResolver;
  v54[4] = &off_28780BAC8;
  v54[0] = a3;

  v13 = a1;
  if (a2 & 1) != 0 && (sub_2665667CC())
  {
    v14 = sub_26662E9D4();
    if (v14 == 40 || sub_266576A08(v14) == 4)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v15 = sub_26666C168();
      __swift_project_value_buffer(v15, qword_28156D7E8);
      v16 = sub_26666C148();
      v17 = sub_26666C618();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_266549000, v16, v17, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v18, 2u);
        MEMORY[0x266789690](v18, -1, -1);
      }

      v19 = *__swift_project_boxed_opaque_existential_1(v54, &type metadata for CalendarReferenceResolver);
      sub_26663E15C();
      if (v20)
      {
        v21 = sub_26666C148();
        v22 = sub_26666C618();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_266549000, v21, v22, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v23, 2u);
          MEMORY[0x266789690](v23, -1, -1);
        }

        v24 = sub_26666AA08();
        v26 = v25;
        if (sub_26666A9E8())
        {
          v27 = sub_26655F060();
        }

        else
        {
          v27 = 0;
        }

        v31 = objc_allocWithZone(MEMORY[0x277CD3C10]);
        v32 = sub_26660B190(v24, v26, v27, 0, 0, 0);

        v13 = v32;
      }

      else
      {
        v28 = sub_26666C148();
        v29 = sub_26666C618();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_266549000, v28, v29, "[FindEventsIntentWrapping] No calendar event found in SRR", v30, 2u);
          MEMORY[0x266789690](v30, -1, -1);
        }
      }
    }
  }

  v33 = v13;
  v34 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v35 = sub_26666C168();
  __swift_project_value_buffer(v35, qword_28156D7E8);
  v36 = sub_26666C148();
  v37 = sub_26666C618();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v34;
    *v39 = v34;
    v40 = v34;
    _os_log_impl(&dword_266549000, v36, v37, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v38, 0xCu);
    sub_26656CAEC(v39, &unk_28007DCA0, &qword_26666E370);
    MEMORY[0x266789690](v39, -1, -1);
    MEMORY[0x266789690](v38, -1, -1);
  }

  sub_2665BD5E4(a4, v12, type metadata accessor for FindEventsNLv3IntentWrapper);
  v41 = sub_26666C148();
  v42 = sub_26666C618();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136315138;
    v45 = sub_26662E9D4();
    if (v45 == 40)
    {
      v46 = 4;
    }

    else
    {
      v46 = sub_266576A08(v45);
    }

    v52[15] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v47 = sub_26666C318();
    v49 = v48;
    sub_2665BD644(v12, type metadata accessor for FindEventsNLv3IntentWrapper);
    v50 = sub_2665BFC90(v47, v49, &v53);

    *(v43 + 4) = v50;
    _os_log_impl(&dword_266549000, v41, v42, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x266789690](v44, -1, -1);
    MEMORY[0x266789690](v43, -1, -1);
  }

  else
  {

    sub_2665BD644(v12, type metadata accessor for FindEventsNLv3IntentWrapper);
  }

  __swift_destroy_boxed_opaque_existential_1(v54);
  return v34;
}

unint64_t sub_2665BD5A0()
{
  result = qword_28007F370;
  if (!qword_28007F370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007F370);
  }

  return result;
}

uint64_t sub_2665BD5E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_18_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2665BD644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_18_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_once();
}

uint64_t sub_2665BD6BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2665BD700()
{
  v1 = v0[2];

  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t sub_2665BD788(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v8 = OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus;
  swift_beginAccess();
  sub_2665BE640(a1 + v8, v7);

  sub_2665BE5D0(v7, v1 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus);
  return v1;
}

uint64_t sub_2665BD864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEventParticipant.Builder(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus;
  v9 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v7 + v8, 1, 1, v9);
  sub_2665BD6BC(a1);

  v10 = OBJC_IVAR____TtCC19SiriCalendarIntents24CalendarEventParticipant7Builder_attendingStatus;
  swift_beginAccess();
  sub_2665BE6B0(a2, v7 + v10);
  swift_endAccess();
  v11 = type metadata accessor for CalendarEventParticipant(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_2665BD788(v7);

  sub_266583058(a2);
  return v14;
}

uint64_t sub_2665BD954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  result = MEMORY[0x28223BE20](v8, v9);
  v12 = &v18 - v11;
  if (a1 != 0x6E6F73726570 || a2 != 0xE600000000000000)
  {
    result = sub_26666CAC8();
    if ((result & 1) == 0)
    {
      v15 = a1 == 0x6E69646E65747461 && a2 == 0xEF73757461745367;
      if (v15 || (result = sub_26666CAC8(), (result & 1) != 0))
      {
        sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus, v12);
        v16 = sub_26666BDA8();
        if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
        {
          *(a3 + 24) = v16;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          return (*(*(v16 - 8) + 32))(boxed_opaque_existential_1, v12, v16);
        }

        result = sub_266583058(v12);
      }

      goto LABEL_17;
    }
  }

  v14 = *(v3 + 24);
  if (!v14)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_26666BCA8();
  *a3 = v14;
}

uint64_t sub_2665BDB1C()
{
  v0 = sub_26666C958();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2665BDB70(char a1)
{
  if (a1)
  {
    return 0x6E69646E65747461;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

uint64_t sub_2665BDBD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2665BDB1C();
  *a2 = result;
  return result;
}

uint64_t sub_2665BDC04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665BDB70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665BDC38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2665BDB1C();
  *a1 = result;
  return result;
}

uint64_t sub_2665BDC6C(uint64_t a1)
{
  v2 = sub_2665BE57C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BDCA8(uint64_t a1)
{
  v2 = sub_2665BE57C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BDCE4()
{
  v1 = *(v0 + 24);

  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus);
  return v0;
}

uint64_t sub_2665BDD1C()
{
  sub_2665BDCE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2665BDD9C()
{
  sub_2665BE03C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2665BDE38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E4D0, &qword_2666747F0);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665BE57C();
  sub_26666CBE8();
  v21 = *(v3 + 24);
  v20[7] = 0;
  sub_26666BCA8();
  OUTLINED_FUNCTION_0_22();
  sub_2665BE534(v15, v16);
  OUTLINED_FUNCTION_6_9();
  if (!v2)
  {
    v20[6] = 1;
    sub_26666BDA8();
    OUTLINED_FUNCTION_1_22();
    sub_2665BE534(v17, v18);
    OUTLINED_FUNCTION_6_9();
  }

  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_2665BDFEC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2665BE158(a1);
  return v5;
}

void sub_2665BE03C()
{
  if (!qword_28007E488)
  {
    sub_26666BDA8();
    v0 = sub_26666C6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_28007E488);
    }
  }
}

void sub_2665BE0BC()
{
  sub_2665BE03C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2665BE158(uint64_t *a1)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E4B0, &qword_2666747E8);
  OUTLINED_FUNCTION_3_0(v23);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11, v12);
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665BE57C();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventParticipant(0);
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_26666BCA8();
    v25 = 0;
    OUTLINED_FUNCTION_0_22();
    sub_2665BE534(v14, v15);
    OUTLINED_FUNCTION_5_16();
    *(v1 + 24) = v26;
    sub_26666BDA8();
    v24 = 1;
    OUTLINED_FUNCTION_1_22();
    sub_2665BE534(v19, v20);
    OUTLINED_FUNCTION_5_16();
    v21 = OUTLINED_FUNCTION_2_21();
    v22(v21);
    sub_2665BE5D0(v8, v1 + OBJC_IVAR____TtC19SiriCalendarIntents24CalendarEventParticipant_attendingStatus);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2665BE454@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665BDFEC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665BE534(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2665BE57C()
{
  result = qword_28007E4B8;
  if (!qword_28007E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4B8);
  }

  return result;
}

uint64_t sub_2665BE5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665BE640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665BE6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventParticipant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665BE800()
{
  result = qword_28007E4E8;
  if (!qword_28007E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4E8);
  }

  return result;
}

unint64_t sub_2665BE858()
{
  result = qword_28007E4F0;
  if (!qword_28007E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4F0);
  }

  return result;
}

unint64_t sub_2665BE8B0()
{
  result = qword_28007E4F8;
  if (!qword_28007E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E4F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_16()
{

  return sub_26666C9A8();
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return sub_26666CA38();
}

id SAUIAppPunchOut.init(punchOutURI:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_266668C18();
  [v2 setPunchOutUri_];

  v4 = sub_266668C48();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v2;
}

id SAUIAppPunchOut.init(punchOutURIString:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v17 - v3;
  v5 = sub_266668C48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  sub_266668C38();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2665BEBFC(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    (*(v6 + 16))(v11, v14, v5);
    v15 = SAUIAppPunchOut.init(punchOutURI:)(v11);
    (*(v6 + 8))(v14, v5);
  }

  return v15;
}

uint64_t sub_2665BEBFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DirectInvocationCodable.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a4;
  v91 = *MEMORY[0x277D85DE8];
  v87 = sub_266669E48();
  v7 = OUTLINED_FUNCTION_3_0(v87);
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v7, v12);
  v84 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v83 = &v81 - v16;
  v17 = sub_26666C6B8();
  v18 = OUTLINED_FUNCTION_3_0(v17);
  v81 = v19;
  v82 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18, v22);
  v24 = &v81 - v23;
  v25 = sub_266669E28();
  v27 = v26;
  v28 = *(a3 + 32);
  v85 = a2;
  v29 = v28(a2, a3);
  v31 = v30;
  v33 = v32;
  v89 = v29;
  v90 = v34;

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](v31, v33);

  if (v25 == v89 && v27 == v90)
  {
  }

  else
  {
    v36 = sub_26666CAC8();

    if ((v36 & 1) == 0)
    {
      (*(v9 + 8))(a1, v87);
      v37 = 1;
      v38 = v85;
      v39 = v86;
      goto LABEL_18;
    }
  }

  v40 = a1;
  if (!sub_266669E38())
  {
    sub_26666C258();
  }

  v41 = v9;
  v42 = objc_opt_self();
  v43 = sub_26666C248();

  v89 = 0;
  v44 = [v42 dataWithJSONObject:v43 options:0 error:&v89];

  v45 = v89;
  v38 = v85;
  if (v44)
  {
    v46 = sub_266668C68();
    v48 = v47;

    v49 = sub_266668918();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    sub_266668908();
    v52 = *(a3 + 8);
    sub_2666688F8();
    (*(v41 + 8))(v40, v87);
    sub_266563B30(v46, v48);

    __swift_storeEnumTagSinglePayload(v24, 0, 1, v38);
    v39 = v86;
    (*(*(v38 - 8) + 32))(v86, v24, v38);
    v37 = 0;
  }

  else
  {
    v53 = v45;
    v54 = sub_266668BF8();

    swift_willThrow();
    v55 = v87;
    v57 = v83;
    v56 = v84;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v58 = sub_26666C168();
    __swift_project_value_buffer(v58, qword_28156D7E8);
    v59 = *(v41 + 16);
    v59(v57, v40, v55);
    v59(v56, v40, v55);
    v60 = sub_26666C148();
    v61 = sub_26666C5F8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = v57;
      v63 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v89 = v81;
      *v63 = 136446466;
      v64 = v38;
      v65 = sub_266669E28();
      v82 = v40;
      v66 = v55;
      v68 = v67;
      v69 = *(v41 + 8);
      v69(v62, v66);
      v70 = v65;
      v38 = v64;
      v71 = sub_2665BFC90(v70, v68, &v89);

      *(v63 + 4) = v71;
      *(v63 + 12) = 2080;
      v88 = sub_266669E38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
      v72 = sub_26666C318();
      v74 = v73;
      v75 = v87;
      v69(v56, v87);
      v76 = sub_2665BFC90(v72, v74, &v89);

      *(v63 + 14) = v76;
      _os_log_impl(&dword_266549000, v60, v61, "JSON Serializer failed to convert %{public}s with userData of %s to typed object", v63, 0x16u);
      v77 = v81;
      swift_arrayDestroy();
      MEMORY[0x266789690](v77, -1, -1);
      MEMORY[0x266789690](v63, -1, -1);

      v69(v82, v75);
    }

    else
    {

      v78 = *(v41 + 8);
      v78(v40, v55);
      v78(v56, v55);
      v78(v57, v55);
    }

    v37 = 1;
    v39 = v86;
  }

LABEL_18:
  result = __swift_storeEnumTagSinglePayload(v39, v37, 1, v38);
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

id DirectInvocationCodable.serializeToStartLocalRequest(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = [objc_opt_self() wrapCommandInStartLocalRequest_];

  return v4;
}

uint64_t DIIdentifier.namespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DIIdentifier.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIIdentifier.payloadId.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](a3, a4);
}

id DirectInvocationCodable.asPayload.getter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_3_0(a1);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665BFD54();
  (*(v7 + 16))(v12, v2, a1);
  return sub_2665BF5EC(v12, a1, a2);
}

id sub_2665BF5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[6] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = (*(a3 + 32))(a2, a3);
  v9 = v8;
  v11 = v10;
  v33[2] = v7;
  v33[3] = v12;

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](v9, v11);

  v13 = sub_26666C2F8();

  v14 = [v6 initWithIdentifier_];

  v15 = sub_266668948();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = v14;
  sub_266668938();
  v19 = *(a3 + 16);
  v24 = sub_266668928();
  v26 = v25;

  v27 = objc_opt_self();
  v28 = sub_266668C58();
  sub_266563B30(v24, v26);
  v33[0] = 0;
  v29 = [v27 JSONObjectWithData:v28 options:0 error:v33];

  v30 = v33[0];
  if (v29)
  {
    sub_26666C718();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E508, &qword_2666749B8);
    if (swift_dynamicCast())
    {
      v20 = v33[0];
      goto LABEL_3;
    }
  }

  else
  {
    v31 = v30;
    v32 = sub_266668BF8();

    swift_willThrow();
  }

  v20 = sub_26666C258();
LABEL_3:
  sub_2665BF9C8(v20);

  v21 = sub_26666C248();

  [v18 setUserData_];

  (*(*(a2 - 8) + 8))(a1, a2);
  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

id DirectInvocationCodable.serializeToAceCommand(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = DirectInvocationCodable.asPayload.getter(a2, a3);
  v8 = [v6 runSiriKitExecutorCommandWithContext:a1 payload:v7];

  return v8;
}

uint64_t DirectInvocationCodable.serializeToBase64(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = sub_26666C688();

  return v4;
}

uint64_t sub_2665BF9C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E510, &qword_2666749C0);
    v2 = sub_26666C948();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2665764F4(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2665C02E0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2665C02E0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2665C02E0(v32, v33);
    v15 = *(v2 + 40);
    result = sub_26666C798();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_2665C02E0(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2665BFC90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2665BFE34(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2665764F4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2665BFD54()
{
  result = qword_28007E500;
  if (!qword_28007E500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007E500);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2665BFDA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2665BFDE4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2665BFE34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2665BFF34(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26666C858();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2665BFF34(uint64_t a1, unint64_t a2)
{
  v4 = sub_2665BFF80(a1, a2);
  sub_2665C0098(&unk_287803EA8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2665BFF80(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26666C3D8())
  {
    result = sub_2665C017C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26666C7D8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26666C858();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2665C0098(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2665C01EC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2665C017C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E518, &qword_2666749C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2665C01EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E518, &qword_2666749C8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_OWORD *sub_2665C02E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2665C02F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2665C0338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665C039C()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v1[12] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[13] = v11;
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v14);
  v16 = *(v15 + 64);
  v1[15] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v17);
  v19 = *(v18 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2665C050C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_26655358C(*(v0 + 72) + 8, v0 + 16);
  v3 = *(v0 + 40);
  *(v0 + 144) = v3;
  *(v0 + 160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v4 = type metadata accessor for Snippet();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_2665C05FC;
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);

  return sub_2665C0BFC();
}

uint64_t sub_2665C05FC()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = v4[21];
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v5[22] = v0;

  if (v0)
  {
    v9 = v5[17];
    sub_266557D74(v5[16], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v9, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[23] = v3;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665C073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_36_0();
  v15 = v14[18];
  v16 = v14[19];
  v18 = v14[14];
  v17 = v14[15];
  v20 = v14[10];
  v19 = v14[11];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_2666696D8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_26656CFC4();
  v33 = swift_task_alloc();
  v14[24] = v33;
  *v33 = v14;
  v33[1] = sub_2665C088C;
  v34 = v14[23];
  v35 = v14[20];
  v36 = v14[17];
  v38 = v14[15];
  v37 = v14[16];
  v39 = v14[14];
  v40 = v14[7];
  v45 = v14[18];
  v46 = v14[19];
  v43 = v14[11];
  v44 = v14[10];

  return sub_2665643AC(v40, v36, v37, v34, 0, 0, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665C088C()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[24];
  v3 = v1[23];
  v18 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[12];
  v9 = v1[11];
  v10 = v1[10];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  sub_266557D74(v10, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v9, &unk_28007DE20, &unk_26666EAE0);
  (*(v7 + 8))(v6, v8);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v4, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v18, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2665C0ADC()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665C0B6C()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 176);

  return v1();
}

uint64_t sub_2665C0BFC()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_19();
  v6 = sub_266668D98();
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_19();
  v9 = sub_266669AE8();
  v1[11] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[12] = v10;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2665C0D04()
{
  v59 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E520, &qword_266674A98);
  sub_266669CD8();
  v5 = sub_266669AD8();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);

  v9 = sub_266667FA8();
  v10 = v9;
  if (v9 == 5)
  {
    sub_26656CBFC();
    swift_allocError();
    *v11 = v5;
    *(v11 + 8) = v7;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v12 = 1;
LABEL_15:
    *(v11 + 32) = v12;
    swift_willThrow();
    v40 = v0[13];
    v39 = v0[14];
    v42 = v0[9];
    v41 = v0[10];

    OUTLINED_FUNCTION_24_1();

    return v43();
  }

  v13 = v9;

  if (v10 != 3)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v31 = sub_26666C168();
    __swift_project_value_buffer(v31, qword_28156D7E8);
    v32 = sub_26666C148();
    v33 = sub_26666C608();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v58 = v35;
      *v34 = 136315138;
      v36 = sub_266667FF0(v13);
      v38 = sub_2665BFC90(v36, v37, &v58);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_266549000, v32, v33, "[FindEvents UnsupportedValueStrategy] unexpected parameter: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x266789690](v35, -1, -1);
      MEMORY[0x266789690](v34, -1, -1);
    }

    sub_26656CBFC();
    swift_allocError();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v12 = 2;
    goto LABEL_15;
  }

  v14 = v0[7];
  v15 = sub_266669CB8();
  v16 = sub_2665C1854(v15);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = v0[13];
  v19 = v0[11];
  v20 = v0[7];
  sub_266669CD8();
  v21 = sub_266669AC8();
  v23 = v22;
  v8(v18, v19);
  v24 = (v23 & 1) != 0 ? 0 : v21;
  v25 = sub_2665D1730(v24, v17);

  if (v25)
  {
    v26 = v0[10];
    v27 = v0[8];
    sub_26666BCA8();
    v28 = v27[10];
    __swift_project_boxed_opaque_existential_1(v27 + 6, v27[9]);
    v29 = v25;
    sub_266669648();
    v30 = sub_26666BC98();
  }

  else
  {
LABEL_18:
    v30 = 0;
  }

  v0[15] = v30;
  v45 = v0[9];
  v46 = *v0[8];
  sub_26666BDA8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E528, &qword_266674AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666EED0;
  *(inited + 32) = v30;
  v52 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];

  for (i = 0; ; i = 1)
  {
    v0[16] = v52;
    if ((i & 1) != 0 || !*(inited + 32))
    {
      break;
    }

    v54 = *(inited + 32);

    MEMORY[0x2667887C0](v55);
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26666C4B8();
    }

    sub_26666C4E8();
    v52 = v58;
  }

  swift_setDeallocating();
  sub_2666391DC();
  v56 = swift_task_alloc();
  v0[17] = v56;
  *v56 = v0;
  v56[1] = sub_2665C11E8;
  v57 = v0[9];
  OUTLINED_FUNCTION_4_14();

  return sub_2665D8954();
}

uint64_t sub_2665C11E8()
{
  OUTLINED_FUNCTION_36_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = v4[17];
  *v6 = *v1;
  v5[18] = v0;

  v8 = v4[16];
  v9 = v4[9];
  if (!v0)
  {
    v5[19] = v3;
  }

  sub_266557D74(v9, &unk_28007D130, &unk_266671DF0);

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665C1364()
{
  OUTLINED_FUNCTION_11();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];
  v7 = v0[19];

  return v6(v7);
}

uint64_t sub_2665C13F8()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[15];

  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[9];
  v5 = v0[10];

  OUTLINED_FUNCTION_24_1();

  return v7();
}

uint64_t sub_2665C1480()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_266669AE8();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2665C153C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E520, &qword_266674A98);
  sub_266669CD8();
  v5 = sub_266669AD8();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);

  v9 = sub_266667FA8();
  v10 = v0[5];
  v11 = v0[6];
  if (v9 == 5)
  {
    sub_26656CBFC();
    swift_allocError();
    *v12 = v5;
    *(v12 + 8) = v7;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_4_7();

    __asm { BRAA            X1, X16 }
  }

  v15 = v9;
  v16 = v0[2];
  v17 = v0[3];

  v18 = sub_266669CB8();
  sub_266669CD8();
  v19 = sub_266669AC8();
  v21 = v20;
  v8(v10, v17);
  sub_266566D1C(v15, v19, v21 & 1);

  v22 = v0[1];
  OUTLINED_FUNCTION_4_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2665C1718()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665C039C();
}

uint64_t sub_2665C17C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656FEA4;

  return sub_2665C1480();
}

uint64_t sub_2665C1854(void *a1)
{
  v2 = [a1 participants];

  if (!v2)
  {
    return 0;
  }

  sub_2665C18BC();
  v3 = sub_26666C498();

  return v3;
}

unint64_t sub_2665C18BC()
{
  result = qword_28007D148;
  if (!qword_28007D148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D148);
  }

  return result;
}

uint64_t sub_2665C1900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007D540, &qword_26666F748);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_26666A948();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_0_23();
  v13 = sub_26666AE88();

  sub_26666A938();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_266557D74(v5, qword_28007D540, &qword_26666F748);
  }

  else
  {
    (*(v9 + 32))(v0, v5, v6);
    sub_26666AE58();
    (*(v9 + 8))(v0, v6);
  }

  if (sub_26666A958())
  {
    sub_26666AFB8();

    sub_2665C1B34();
    sub_26666AE68();
  }

  sub_26666A968();
  if ((v14 & 1) == 0)
  {
    sub_26666AE78();
  }

  if (sub_26666A928())
  {
    sub_26666AE98();

    sub_2665C1900(v15);
    sub_26666AE48();
  }

  return v13;
}

uint64_t sub_2665C1B34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E530, &unk_266674AC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_26666ABA8();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_0_23();
  v13 = sub_26666AFA8();

  sub_26666AB98();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

    sub_266557D74(v5, &qword_28007E530, &unk_266674AC0);
  }

  else
  {
    (*(v9 + 32))(v0, v5, v6);
    sub_26666AF98();

    (*(v9 + 8))(v0, v6);
  }

  return v13;
}

uint64_t type metadata accessor for CalendarContactResolver()
{
  result = qword_28156D078;
  if (!qword_28156D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665C1D58()
{
  result = sub_26666B348();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2665C1DCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26666C768();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2665C1DF0(void (*a1)(uint64_t *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    result = sub_26666C898();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266788B60](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v10 = v9;
      v14 = v9;
      a1(&v15, &v14, &v13);

      if (v3)
      {
      }

      sub_26666C868();
      v11 = *(v16 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      if (v8 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

void sub_2665C1F68()
{
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_10_11(v2, v3);
  v22 = sub_26666B448();
  v4 = OUTLINED_FUNCTION_3_0(v22);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4, v9);
  OUTLINED_FUNCTION_1_0();
  v24 = v11 - v10;
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_12_10();
      OUTLINED_FUNCTION_16_3();
      return;
    }

    v26 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_10();
    sub_2666337CC();
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v20 = v1;
    v21 = v1 & 0xC000000000000001;
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v21)
      {
        v15 = MEMORY[0x266788B60](v13, v1);
      }

      else
      {
        if (v13 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(v1 + 8 * v13 + 32);
      }

      v25 = v15;
      v23(&v25);
      if (v0)
      {
        goto LABEL_20;
      }

      v0 = 0;

      v16 = *(v26 + 16);
      if (v16 >= *(v26 + 24) >> 1)
      {
        sub_2666337CC();
      }

      *(v26 + 16) = v16 + 1;
      v17 = *(v6 + 80);
      OUTLINED_FUNCTION_11_13();
      (*(v6 + 32))(v26 + v18 + *(v6 + 72) * v16, v24, v22);
      ++v13;
      v1 = v20;
      if (v14 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t sub_2665C217C(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_26666C898();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266788B60](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_26666C868();
      v12 = *(v16 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_2665C22F0()
{
  OUTLINED_FUNCTION_15_3();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v23 = sub_266669738();
  v5 = OUTLINED_FUNCTION_3_0(v23);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = *(v3 + 16);
  if (v14)
  {
    v25 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_10();
    sub_2666339E0();
    v15 = sub_2666697B8();
    OUTLINED_FUNCTION_3_1(v15);
    v17 = v3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v22 = *(v18 + 72);
    while (1)
    {
      v24(v17);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v19 = *(v25 + 16);
      if (v19 >= *(v25 + 24) >> 1)
      {
        sub_2666339E0();
      }

      *(v25 + 16) = v19 + 1;
      v20 = *(v7 + 80);
      OUTLINED_FUNCTION_11_13();
      (*(v7 + 32))(v25 + v21 + *(v7 + 72) * v19, v13, v23);
      v17 += v22;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_16_3();
  }
}

void sub_2665C24BC()
{
  OUTLINED_FUNCTION_15_3();
  v4 = OUTLINED_FUNCTION_10_11(v2, v3);
  v5 = type metadata accessor for Snippet.Event(v4);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v24 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
  {
    if (!i)
    {
LABEL_17:
      OUTLINED_FUNCTION_12_10();
      OUTLINED_FUNCTION_16_3();
      return;
    }

    v28 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_10();
    sub_266633B08();
    if (i < 0)
    {
      break;
    }

    v15 = 0;
    v23 = i;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x266788B60](v15, v1);
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v17 = *(v1 + 8 * v15 + 32);
      }

      v18 = v17;
      v27 = v17;
      v25(&v27, &v26);
      if (v0)
      {

        goto LABEL_17;
      }

      v0 = 0;

      v19 = *(v28 + 16);
      if (v19 >= *(v28 + 24) >> 1)
      {
        sub_266633B08();
      }

      *(v28 + 16) = v19 + 1;
      v20 = *(v24 + 80);
      OUTLINED_FUNCTION_11_13();
      sub_2665C47F4(v13, v28 + v21 + *(v22 + 72) * v19, type metadata accessor for Snippet.Event);
      ++v15;
      if (v16 == v23)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
}

void sub_2665C26C0()
{
  OUTLINED_FUNCTION_15_3();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v5 = type metadata accessor for Snippet.EventGroup();
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  v15 = *(v3 + 16);
  if (v15)
  {
    v26 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_6_10();
    sub_266633BC8();
    v16 = _s17DayEventGroupingsV8GroupingVMa();
    OUTLINED_FUNCTION_3_1(v16);
    v18 = v3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = *(v19 + 72);
    while (1)
    {
      v24(v18, &v25);
      if (v1)
      {
        break;
      }

      v1 = 0;
      v20 = *(v26 + 16);
      if (v20 >= *(v26 + 24) >> 1)
      {
        sub_266633BC8();
      }

      *(v26 + 16) = v20 + 1;
      v21 = *(v8 + 80);
      OUTLINED_FUNCTION_11_13();
      sub_2665C47F4(v14, v26 + v22 + *(v8 + 72) * v20, type metadata accessor for Snippet.EventGroup);
      v18 += v23;
      if (!--v15)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_16_3();
}

void sub_2665C28D0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_24(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2665C3FD0(v4, 1, sub_2665C6350);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_14();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2665C2988(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2665C3FD0(v7 + v6, 1, sub_2665C6350);
  v1 = *v2;
  v8 = *(*v2 + 16);
  v9 = (*(*v2 + 24) >> 1) - v8;
  v10 = sub_2665C463C(v30, (*v2 + 16 * v8 + 32), v9, v5);
  if (v10 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, v10);
    v14 = v12 + v10;
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
          v32 = v4;
          v33 = 0;
          goto LABEL_7;
        }

        v19 = *(v9 + 8 * v18);
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

    *(v1 + 16) = v14;
  }

  v5 = v30[0];
  if (v10 != v9)
  {
LABEL_7:
    sub_2665C4798();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v9 = v30[1];
  v11 = v31;
  v4 = v32;
  v28 = v31;
  if (!v33)
  {
    goto LABEL_13;
  }

  v15 = (v33 - 1) & v33;
  v16 = __clz(__rbit64(v33)) | (v32 << 6);
  v17 = (v31 + 64) >> 6;
LABEL_18:
  v20 = (*(v5 + 48) + 16 * v16);
  v22 = *v20;
  v21 = v20[1];

LABEL_19:
  v29 = *(v1 + 24) >> 1;
  if (v29 < v3 + 1)
  {
    sub_2665C6350();
    v1 = v27;
    v29 = *(v27 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v29)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v23 = (v1 + 32 + 16 * v3);
    *v23 = v22;
    v23[1] = v21;
    ++v3;
    if (!v15)
    {
      break;
    }

    v24 = v4;
LABEL_28:
    v25 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v26 = (*(v5 + 48) + ((v24 << 10) | (16 * v25)));
    v22 = *v26;
    v21 = v26[1];
  }

  while (1)
  {
    v24 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v24 >= v17)
    {
      v31 = v28;
      v32 = v4;
      v33 = 0;
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v15 = *(v9 + 8 * v24);
    ++v4;
    if (v15)
    {
      v4 = v24;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_2665C2BE8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  v5 = sub_2665C1DCC(a1);
  v6 = sub_2665C1DCC(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2665C3F30(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2665C2C9C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_24(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2665C3FD0(v4, 1, sub_2665C6C1C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_14();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2665C2D98(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_24(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_2665C3FD0(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2665C2E9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666B328();
  if (!v3)
  {
    v7 = v5;
    MEMORY[0x28223BE20](v5, v6);
    v9[2] = v2;
    v9[3] = a2;
    v2 = sub_2665C1DF0(sub_2665C3EBC, v9, v7);
  }

  return v2;
}

_UNKNOWN **sub_2665C2F48@<X0>(_UNKNOWN ***a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  result = sub_2665C2F98(*a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

_UNKNOWN **sub_2665C2F98(_UNKNOWN **a1, uint64_t a2)
{
  if (*(v2 + *(type metadata accessor for CalendarContactResolver() + 20)) == 1)
  {
    v57[5] = v2;
    v57[6] = a2;
    v59 = v3;
    v60 = a1;
    v6 = sub_2665C4048(a1);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v61 = MEMORY[0x277D84F90];
    v8 = sub_2665C1DCC(v7);
    v9 = 0;
    a1 = &off_279BCF000;
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x266788B60](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v12 = [v10 personHandle];
      if (v12)
      {

        sub_26666C868();
        v13 = *(v61 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v9;
    }

    v58 = v61;
    v19 = sub_2665C4048(v60);
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v61 = MEMORY[0x277D84F90];
    v21 = sub_2665C1DCC(v20);
    for (i = 0; v21 != i; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x266788B60](i, v20);
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      if (__OFADD__(i, 1))
      {
        goto LABEL_50;
      }

      v25 = [v23 personHandle];
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        sub_26666C868();
        v27 = *(v61 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }
    }

    v28 = v61;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v29 = sub_26666C168();
    __swift_project_value_buffer(v29, qword_28156D7E8);
    v30 = v58;

    v31 = sub_26666C148();
    v32 = sub_26666C618();
    v33 = v59;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      *(v34 + 4) = sub_2665C1DCC(v30);

      *(v34 + 12) = 2048;
      *(v34 + 14) = sub_2665C1DCC(v28);

      _os_log_impl(&dword_266549000, v31, v32, "[CalendarContactResolver] Alternatives with handles: %ld without: %ld ", v34, 0x16u);
      MEMORY[0x266789690](v34, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v35, v36);
    v57[2] = v38;
    v57[3] = v37;
    v39 = v33;
    v40 = sub_2665C3B3C(sub_2665C45B0, v57, v28);

    if (v39)
    {

      return v60;
    }

    v41 = sub_26666C148();
    v42 = sub_26666C618();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = sub_2665C1DCC(v40);

      _os_log_impl(&dword_266549000, v41, v42, "[CalendarContactResolver] resolved alternatives: %ld", v43, 0xCu);
      MEMORY[0x266789690](v43, -1, -1);
    }

    else
    {
    }

    a1 = v60;
    v61 = v58;
    sub_2665C2BE8(v40, sub_2665C4400);
    sub_2665C40B8(v61, a1);

    v44 = a1;
    v15 = sub_26666C148();
    v45 = sub_26666C618();

    if (os_log_type_enabled(v15, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v59 = 0;
      v48 = v47;
      v61 = v47;
      *v46 = 136315138;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_26666C308();
      v53 = v52;

      v54 = sub_2665BFC90(v51, v53, &v61);

      *(v46 + 4) = v54;
      _os_log_impl(&dword_266549000, v15, v45, "[CalendarContactResolver] fully resolved skeleton person: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x266789690](v48, -1, -1);
      v18 = v46;
      goto LABEL_45;
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
LABEL_52:
      swift_once();
    }

    v14 = sub_26666C168();
    __swift_project_value_buffer(v14, qword_28156D7E8);
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_266549000, v15, v16, "[CalendarContactResolver] fullyResolveHandles is false, returning skeleton", v17, 2u);
      v18 = v17;
LABEL_45:
      MEMORY[0x266789690](v18, -1, -1);
    }
  }

  v55 = a1;
  return a1;
}

uint64_t sub_2665C360C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v4 = sub_26666B448();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26658160C(*a1);
  if (!v10)
  {
    sub_26656CBFC();
    swift_allocError();
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 2;
    return swift_willThrow();
  }

  sub_26666B438();
  sub_26666B3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D0, &unk_26666EF70);
  v11 = *(v5 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26666EED0;
  (*(v5 + 16))(v13 + v12, v9, v4);
  v14 = sub_26666B328();
  if (v2)
  {
    (*(v5 + 8))(v9, v4);
  }

  v43 = 0;
  v17 = v14;

  result = sub_2665C1DCC(v17);
  v18 = 0;
  v53 = v17 & 0xC000000000000001;
  v54 = result;
  v44 = v17;
  v51 = v17 + 32;
  v52 = v17 & 0xFFFFFFFFFFFFFF8;
  v56 = MEMORY[0x277D84F90];
  v50 = v9;
  v46 = v5;
  v47 = v4;
  while (1)
  {
    if (v18 == v54)
    {

      result = (*(v5 + 8))(v9, v4);
      *v45 = v56;
      return result;
    }

    if (v53)
    {
      result = MEMORY[0x266788B60](v18, v44);
      v20 = result;
      v19 = v56;
    }

    else
    {
      v19 = v56;
      if (v18 >= *(v52 + 16))
      {
        goto LABEL_49;
      }

      result = *(v51 + 8 * v18);
      v20 = result;
    }

    v21 = __OFADD__(v18, 1);
    v22 = v18 + 1;
    if (v21)
    {
      break;
    }

    v23 = sub_2665C4048(v20);

    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    if (v24 >> 62)
    {
      v25 = sub_26666C768();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v19 >> 62;
    if (v19 >> 62)
    {
      result = sub_26666C768();
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = result + v25;
    if (__OFADD__(result, v25))
    {
      goto LABEL_50;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v26)
      {
LABEL_26:
        sub_26666C768();
      }

      else
      {
        v28 = v19 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
        v29 = *(v28 + 16);
      }

      result = sub_26666C828();
      v56 = result;
      v28 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_28;
    }

    if (v26)
    {
      goto LABEL_26;
    }

    v28 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v27 > *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

LABEL_28:
    v58 = v22;
    v30 = *(v28 + 16);
    v31 = (*(v28 + 24) >> 1) - v30;
    v32 = v28 + 8 * v30;
    v55 = v28;
    if (v24 >> 62)
    {
      v34 = sub_26666C768();
      if (v34)
      {
        v35 = v34;
        result = sub_26666C768();
        if (v31 < result)
        {
          goto LABEL_54;
        }

        if (v35 < 1)
        {
          goto LABEL_55;
        }

        v48 = result;
        v49 = v25;
        v36 = v32 + 32;
        sub_2665C47A0(&qword_28007E540, &qword_28007E538, &unk_266674AF8);
        for (i = 0; i != v35; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
          v38 = sub_2665C4548(v57, i, v24);
          v40 = *v39;
          (v38)(v57, 0);
          *(v36 + 8 * i) = v40;
        }

        v5 = v46;
        v4 = v47;
        v33 = v48;
        v25 = v49;
        goto LABEL_38;
      }

LABEL_42:

      v9 = v50;
      v18 = v58;
      if (v25 > 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v33 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_42;
      }

      if (v31 < v33)
      {
        goto LABEL_53;
      }

      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      swift_arrayInitWithCopy();
LABEL_38:

      v9 = v50;
      v18 = v58;
      if (v33 < v25)
      {
        goto LABEL_51;
      }

      if (v33 > 0)
      {
        v41 = *(v55 + 16);
        v21 = __OFADD__(v41, v33);
        v42 = v41 + v33;
        if (v21)
        {
          goto LABEL_52;
        }

        *(v55 + 16) = v42;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_2665C3B3C(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  result = sub_2665C1DCC(a3);
  v7 = 0;
  v37 = a3 & 0xC000000000000001;
  v38 = result;
  v36 = a3 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x277D84F90];
  v31 = a3;
  v34 = a3 + 32;
  while (1)
  {
    if (v7 == v38)
    {
      return v8;
    }

    if (v37)
    {
      result = MEMORY[0x266788B60](v7, v31);
    }

    else
    {
      if (v7 >= *(v36 + 16))
      {
        goto LABEL_44;
      }

      result = *(v34 + 8 * v7);
    }

    v9 = result;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      break;
    }

    v43 = result;
    v12 = v4;
    a1(&v42, &v43);
    if (v4)
    {

      return v8;
    }

    v13 = v42;
    if (v42 >> 62)
    {
      v14 = sub_26666C768();
    }

    else
    {
      v14 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_26666C768();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = result + v14;
    if (__OFADD__(result, v14))
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v40 = v14;
    if (result)
    {
      if (v15)
      {
        goto LABEL_20;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v15)
      {
LABEL_20:
        sub_26666C768();
        goto LABEL_21;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = *(v17 + 16);
LABEL_21:
    result = sub_26666C828();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v39 = v11;
    v19 = *(v17 + 16);
    v20 = (*(v17 + 24) >> 1) - v19;
    v21 = v17 + 8 * v19;
    if (v13 >> 62)
    {
      v23 = sub_26666C768();
      if (v23)
      {
        v24 = v23;
        result = sub_26666C768();
        v33 = result;
        if (v20 < result)
        {
          goto LABEL_48;
        }

        if (v24 < 1)
        {
          goto LABEL_50;
        }

        v32 = v8;
        sub_2665C47A0(&qword_28007E540, &qword_28007E538, &unk_266674AF8);
        for (i = 0; i != v24; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
          v26 = sub_2665C4548(v41, i, v13);
          v28 = *v27;
          (v26)(v41, 0);
          *(v21 + 32 + 8 * i) = v28;
        }

        v8 = v32;
        v4 = v12;
        v22 = v33;
        goto LABEL_32;
      }
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        if (v20 < v22)
        {
          goto LABEL_49;
        }

        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        swift_arrayInitWithCopy();
LABEL_32:

        if (v22 < v40)
        {
          goto LABEL_46;
        }

        if (v22 > 0)
        {
          v29 = *(v17 + 16);
          v10 = __OFADD__(v29, v22);
          v30 = v29 + v22;
          if (v10)
          {
            goto LABEL_47;
          }

          *(v17 + 16) = v30;
        }

        goto LABEL_37;
      }
    }

    if (v40 > 0)
    {
      goto LABEL_46;
    }

LABEL_37:
    v7 = v39;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_2665C3EDC(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_2665C3F30(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26666C768();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26666C828();
  *v1 = result;
  return result;
}

uint64_t sub_2665C3FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2665C4048(void *a1)
{
  v1 = [a1 alternatives];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C498();

  return v3;
}

void sub_2665C40B8(uint64_t a1, void *a2)
{
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C488();
  [a2 setAlternatives_];
}

void sub_2665C4134()
{
  OUTLINED_FUNCTION_4_21();
  if (v2)
  {
    v5 = sub_26666C768();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_2665C1DCC(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    sub_266552C44(0, &qword_28156C098, 0x277CC5A28);
    OUTLINED_FUNCTION_13_7();
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v23 = v6;
  sub_2665C47A0(&qword_28007E560, &qword_28007E558, &unk_266674B10);
  do
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E558, &unk_266674B10);
    v15 = OUTLINED_FUNCTION_5_17(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
    v18 = sub_2665C4548(v15, v16, v17);
    v20 = *v19;
    (v18)(v24, 0);
    OUTLINED_FUNCTION_9_13();
  }

  while (!v21);
}

uint64_t sub_2665C427C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_26666C768();
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
    result = sub_2665C1DCC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2665C47A0(&qword_28007E550, &qword_28007E548, &qword_266674B08);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
          v9 = sub_2665C45CC(v12, i, a3);
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

void sub_2665C4400()
{
  OUTLINED_FUNCTION_4_21();
  if (v2)
  {
    v5 = sub_26666C768();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_2665C1DCC(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    OUTLINED_FUNCTION_13_7();
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v23 = v6;
  sub_2665C47A0(&qword_28007E540, &qword_28007E538, &unk_266674AF8);
  do
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
    v15 = OUTLINED_FUNCTION_5_17(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24[0]);
    v18 = sub_2665C4548(v15, v16, v17);
    v20 = *v19;
    (v18)(v24, 0);
    OUTLINED_FUNCTION_9_13();
  }

  while (!v21);
}

uint64_t (*sub_2665C4548(uint64_t a1, unint64_t a2, uint64_t a3))()
{
  OUTLINED_FUNCTION_0_24(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x266788B60](v5, v4);
  }

  *v3 = v7;
  return sub_2665C4860;
}

uint64_t sub_2665C45B0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2665C360C(a1, a2);
}

void (*sub_2665C45CC(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_0_24(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x266788B60](v5, v4);
  }

  *v3 = v7;
  return sub_2665C4634;
}

uint64_t sub_2665C463C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2665C47A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2665C47F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_0_24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_26654E0F0(a3);

  return sub_2665C3EDC(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_13_7()
{

  return swift_arrayInitWithCopy();
}

uint64_t EventEntityRepresentation.__allocating_init(_:)()
{
  v1 = sub_26666BEE8();
  v2 = OUTLINED_FUNCTION_1_25(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_2_22();
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_0_25();
  v10(v9);
  sub_26666BF48();
  v11 = OUTLINED_FUNCTION_3_20();
  v12(v11);
  return v8;
}

uint64_t EventEntityRepresentation.init(_:)()
{
  v1 = sub_26666BEE8();
  v2 = OUTLINED_FUNCTION_1_25(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  OUTLINED_FUNCTION_2_22();
  v6 = OUTLINED_FUNCTION_0_25();
  v7(v6);
  sub_26666BF48();
  v8 = OUTLINED_FUNCTION_3_20();
  v9(v8);
  return v0;
}

uint64_t EventEntityRepresentation.__deallocating_deinit()
{
  v0 = _s19SiriCalendarIntents25EventEntityRepresentationCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for EventEntityRepresentation()
{
  result = qword_28007E5B0;
  if (!qword_28007E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665C4DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2665C4E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2665C4ED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665C4F40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_2665C4FA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26666BF08();
  *a1 = result;
  return result;
}

uint64_t sub_2665C50D0(SEL *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C0, &unk_266674E30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26666EED0;
  v4 = [v1 *a1];
  v5 = &off_28780B470;
  if (!v4)
  {
    v5 = 0;
  }

  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return v3;
}

uint64_t sub_2665C5154()
{
  v1 = sub_26662571C(v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_2665C51A0(v2);

  return v3;
}

uint64_t sub_2665C51A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26666C768();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_266633BA8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_26656CC50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C8, &unk_26667AC90);
      swift_dynamicCast();
      v7 = v10;
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_266633BA8(v8 > 1, v9 + 1, 1);
        v7 = v10;
      }

      ++v5;
      *(v11 + 16) = v9 + 1;
      *(v11 + 16 * v9 + 32) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665C530C()
{
  if (!sub_26666A9F8())
  {
    return 2;
  }

  return 0;
}

uint64_t sub_2665C5338()
{
  sub_26666A218();
  v0 = sub_26666B228();

  if (*(v0 + 16))
  {
    sub_2665C53A8(1701667182, 0xE400000000000000);
    v2 = v1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_2665C53A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26666CB88();
  sub_26666C368();
  v6 = sub_26666CBC8();

  return sub_2665C550C(a1, a2, v6);
}

unint64_t sub_2665C5420(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26666CB88();
  MEMORY[0x266788EE0](a1);
  v4 = sub_26666CBC8();
  return sub_2665C55C0(a1, v4);
}

unint64_t sub_2665C5488(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_266668D38();
  sub_2665C57C8(&qword_28007E5D0);
  v5 = sub_26666C268();

  return sub_2665C5620(a1, v5);
}

unint64_t sub_2665C550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26666CAC8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2665C55C0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_2665C5620(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = sub_266668D38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + 64;
  v14 = ~(-1 << *(v2 + 32));
  for (i = a2 & v14; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v5 + 16))(v9, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2665C57C8(&qword_28007E5D8);
    v11 = sub_26666C2E8();
    (*(v5 + 8))(v9, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2665C57C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665C583C()
{
  v0 = sub_26666A558();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  for (i = v0 + 32; ; i += 40)
  {
    if (v2 == v1)
    {

      sub_26666A548();
      sub_26666A578();
      return sub_26666A568();
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    sub_26655358C(i, v11);
    sub_2665C59F0(v11, &v8);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v9)
    {
      sub_26654B7D8(&v8, v10);
      sub_26654B7D8(v10, &v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2665C6424(0, v3[2] + 1, 1, v3);
      }

      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        v3 = sub_2665C6424((v5 > 1), v6 + 1, 1, v3);
      }

      v3[2] = v6 + 1;
      sub_26654B7D8(&v8, &v3[5 * v6 + 4]);
    }

    else
    {
      sub_266594028(&v8, &qword_28007E5E0, &qword_266674E60);
    }

    ++v1;
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_1(v11);

  __break(1u);
  return result;
}

uint64_t sub_2665C59F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_26666A588();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v40 - v11;
  v13 = sub_26666A4B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v40 - v21;
  v41 = a1;
  sub_26655358C(a1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D238, &qword_26666E2C0);
  if (swift_dynamicCast())
  {
    (*(v14 + 32))(v19, v22, v13);
    if (sub_2665C5E5C())
    {
      v23 = MEMORY[0x277D5E670];
      v24 = v42;
      v42[3] = v13;
      v24[4] = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
      (*(v14 + 16))(boxed_opaque_existential_1, v19, v13);
      (*(v14 + 8))(v19, v13);
    }

    else
    {
      (*(v14 + 8))(v19, v13);
      v28 = v42;
      v42[4] = 0;
      *v28 = 0u;
      *(v28 + 1) = 0u;
    }
  }

  else if (swift_dynamicCast())
  {
    (*(v4 + 32))(v9, v12, v3);
    v26 = MEMORY[0x277D5E728];
    v27 = v42;
    v42[3] = v3;
    v27[4] = v26;
    __swift_allocate_boxed_opaque_existential_1(v27);
    sub_2665C583C();
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v29 = sub_26666C168();
    __swift_project_value_buffer(v29, qword_28156D7E8);
    v30 = v41;
    sub_26655358C(v41, v45);
    v31 = sub_26666C148();
    v32 = sub_26666C608();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136315138;
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      DynamicType = swift_getDynamicType();
      v44 = v45[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D240, &qword_26666E2C8);
      v35 = sub_26666C318();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_1(v45);
      v38 = sub_2665BFC90(v35, v37, &v47);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_266549000, v31, v32, "Got unknown node type: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x266789690](v34, -1, -1);
      MEMORY[0x266789690](v33, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v45);
    }

    sub_26655358C(v30, v42);
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2665C5E5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5F0, &qword_266674E70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5F8, &qword_266674E78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v20 - v8;
  v10 = sub_26666A4A8();
  sub_2665C60BC(v10, v4);

  v11 = sub_26666A3A8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    v12 = &qword_28007E5F0;
    v13 = &qword_266674E70;
    v14 = v4;
  }

  else
  {
    sub_26666A398();
    OUTLINED_FUNCTION_4_5(v11);
    (*(v15 + 8))(v4, v11);
    v16 = sub_26666A388();
    if (__swift_getEnumTagSinglePayload(v9, 1, v16) != 1)
    {
      v17 = sub_26666A378();
      OUTLINED_FUNCTION_4_5(v16);
      (*(v18 + 8))(v9, v16);
      return v17 & 1;
    }

    v12 = &qword_28007E5F8;
    v13 = &qword_266674E78;
    v14 = v9;
  }

  sub_266594028(v14, v12, v13);
  v17 = 0;
  return v17 & 1;
}

char *sub_2665C6028(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2665C4864(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x266788B60](v3, a1);
  }

  result = sub_26666C768();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2665C60BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_26666A3A8();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_26666A3A8();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

void sub_2665C6184()
{
  OUTLINED_FUNCTION_17_8();
  if (v5)
  {
    OUTLINED_FUNCTION_11_14();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_9();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_13_8(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E608, &unk_26667A130);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2665C627C()
{
  OUTLINED_FUNCTION_17_8();
  if (v3)
  {
    OUTLINED_FUNCTION_11_14();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_9();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D250, &qword_26666E378);
    v9 = OUTLINED_FUNCTION_19_12();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_11();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_2665C6350()
{
  OUTLINED_FUNCTION_17_8();
  if (v5)
  {
    OUTLINED_FUNCTION_11_14();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_9();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_13_8(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
    v9 = OUTLINED_FUNCTION_19_12();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_11();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2665C6424(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5E8, &qword_266674E68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D238, &qword_26666E2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2665C655C()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E600, &qword_26667A0F0);
  v9 = OUTLINED_FUNCTION_6_11();
  v10 = type metadata accessor for CalendarEventAttendeeIntentNode(v9);
  OUTLINED_FUNCTION_60(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for CalendarEventAttendeeIntentNode, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6634()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007D3D0, &unk_26666EF70);
  OUTLINED_FUNCTION_6_11();
  v9 = sub_26666B448();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D55FF8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C670C()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E640, &qword_266674E90);
  OUTLINED_FUNCTION_6_11();
  v9 = sub_26666C188();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5FE08], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C67E4()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E630, &qword_26667A150);
  OUTLINED_FUNCTION_6_11();
  v9 = sub_266669738();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5BAF8], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C68BC()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E658, &qword_266674EA8);
  v9 = OUTLINED_FUNCTION_6_11();
  v10 = type metadata accessor for Snippet.Event(v9);
  OUTLINED_FUNCTION_60(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for Snippet.Event, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6994()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E628, &unk_26667A160);
  OUTLINED_FUNCTION_6_11();
  v9 = sub_26666C228();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5FEB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6A6C()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E650, &qword_266674EA0);
  OUTLINED_FUNCTION_6_11();
  v9 = type metadata accessor for Snippet.Participant();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for Snippet.Participant, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6B44()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E638, &unk_266676EC0);
  OUTLINED_FUNCTION_6_11();
  v9 = sub_2666697B8();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5BCB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6C1C()
{
  OUTLINED_FUNCTION_17_8();
  if (v5)
  {
    OUTLINED_FUNCTION_11_14();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_16_9();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_12();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_13_8(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD30, &qword_2666725F0);
    v9 = OUTLINED_FUNCTION_19_12();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
    swift_arrayInitWithCopy();
  }
}

void sub_2665C6D24()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E648, &qword_266674E98);
  v9 = OUTLINED_FUNCTION_6_11();
  v10 = type metadata accessor for DayEventsReadingFlow.Window(v9);
  OUTLINED_FUNCTION_60(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(type metadata accessor for DayEventsReadingFlow.Window, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6DFC()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E618, &qword_266674E80);
  OUTLINED_FUNCTION_6_11();
  v9 = _s17DayEventGroupingsV8GroupingVMa();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(_s17DayEventGroupingsV8GroupingVMa, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6ED4()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E620, &qword_266674E88);
  OUTLINED_FUNCTION_6_11();
  v9 = sub_266668D38();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277CC9578], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void sub_2665C6FAC()
{
  OUTLINED_FUNCTION_2_23();
  if (v4)
  {
    OUTLINED_FUNCTION_1_26();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_8_13();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_21();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_12_11(v2, v5, &qword_28007E660, &qword_2666778D0);
  OUTLINED_FUNCTION_6_11();
  v9 = sub_266669368();
  OUTLINED_FUNCTION_60(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_11_13();
  if (v1)
  {
    OUTLINED_FUNCTION_5_18(MEMORY[0x277D5B800], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_22();
  }
}

void *sub_2665C7084(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v4 = OUTLINED_FUNCTION_19_12();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_2665C70FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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
  v8 = OUTLINED_FUNCTION_6_11();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2665C71F4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_26(a3, result);
  }

  return result;
}

char *sub_2665C730C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_26(a3, result);
  }

  return result;
}

char *sub_2665C7344(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_26(a3, result);
  }

  return result;
}

void sub_2665C7364(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), OUTLINED_FUNCTION_4_5(v8), a1 + *(v9 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_15_10();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_15_10();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_5_18(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_2665C7364(v2 + a2, v4, v3 + a2, a1);
}

size_t OUTLINED_FUNCTION_12_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2665C70FC(v5, a2, a3, a4, v4);
}

void OUTLINED_FUNCTION_13_8(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return swift_allocObject();
}

uint64_t type metadata accessor for UpdateEventCorrectionsIntentWrapper()
{
  result = qword_28007E668;
  if (!qword_28007E668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2665C75D4()
{
  sub_2665C7670();
  if (v0 <= 0x3F)
  {
    sub_2665C76CC();
    if (v1 <= 0x3F)
    {
      sub_266668D98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2665C7670()
{
  result = qword_28156CF58[0];
  if (!qword_28156CF58[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28156CF58);
  }

  return result;
}

void sub_2665C76CC()
{
  if (!qword_28007E678)
  {
    sub_26666AA48();
    v0 = sub_26666C6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_28007E678);
    }
  }
}

void sub_2665C7724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v26 = MEMORY[0x277D84F90];
  sub_2665C485C(a3);
  OUTLINED_FUNCTION_12_12();
  while (v6 != v7)
  {
    if (v4)
    {
      MEMORY[0x266788B60](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_3_22();
    v10();
    if (v3)
    {

      return;
    }

    if (v23)
    {
      v12 = MEMORY[0x2667887C0](v11);
      OUTLINED_FUNCTION_9_14(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22, v23, v24, v25, v26);
      if (v20)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
    }

    ++v7;
  }
}

void sub_2665C785C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v22 = a1;
  v23 = a2;
  v27 = MEMORY[0x277D84F90];
  a4(a3);
  OUTLINED_FUNCTION_12_12();
  while (v7 != v8)
  {
    if (v5)
    {
      v10 = MEMORY[0x266788B60](v8, a3);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_17;
      }

      v10 = *(a3 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_3_22();
    v12();
    if (v4)
    {

      return;
    }

    if (v24)
    {
      v13 = MEMORY[0x2667887C0]();
      OUTLINED_FUNCTION_9_14(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27);
      if (v21)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
    }

    ++v8;
  }
}

uint64_t sub_2665C798C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 88) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E688, &qword_266674F18) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E690, &unk_266674F20) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665C7A5C()
{
  if (!*(v0 + 16))
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 16);

  if (sub_26655EF00())
  {

LABEL_4:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v2 = sub_26666C168();
    __swift_project_value_buffer(v2, qword_28156D7E8);
    v3 = sub_26666C148();
    v4 = sub_26666C618();
    if (os_log_type_enabled(v3, v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[CalendarDateTimeResolving] UsoEntity_common_DateTimeRange not present or is empty, not resolving date component range");
      OUTLINED_FUNCTION_4_1();
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9(0);
  }

  v11 = sub_26666AA58();
  if (sub_26655EFEC())
  {
    sub_26666AD28();

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v12 = sub_26666C168();
    __swift_project_value_buffer(v12, qword_28156D7E8);
    v13 = sub_26666C148();
    v14 = sub_26666C618();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266549000, v13, v14, "[CalendarDateTimeResolving] adding recurrencePattern to dateTimeQuery", v15, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v17 = *(v0 + 48);
    v16 = *(v0 + 56);

    sub_26666B958();
    sub_26666B968();
    sub_26666B918();
    sub_26666B938();
    sub_26666B928();
    sub_26666B908();
    v18 = sub_26666B998();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    sub_26666B868();
    OUTLINED_FUNCTION_6();

    v11 = v21;
  }

  *(v0 + 64) = v11;
  v22 = swift_task_alloc();
  *(v0 + 72) = v22;
  *v22 = v0;
  v22[1] = sub_2665C7D5C;
  v23 = *(v0 + 32);
  v24 = *(v0 + 40);
  v25 = *(v0 + 88);
  v26 = *(v0 + 24);

  return sub_26660988C();
}

uint64_t sub_2665C7D5C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  *v3 = *v0;
  *(v2 + 80) = v6;

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665C7E4C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_2665C7ECC()
{
  result = sub_26666A3C8();
  if (result)
  {
    v1 = sub_2665C7F34();

    return v1;
  }

  return result;
}

uint64_t sub_2665C7F34()
{
  v0 = sub_26666A438();
  v2 = v1;
  v3 = sub_26666A248();
  if (!v2)
  {

    return 0;
  }

  if (v0 != v3 || v2 != v4)
  {
    v6 = sub_26666CAC8();

    if (v6)
    {
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
  sub_26666A448();
  return v8;
}

uint64_t sub_2665C8008()
{
  v1 = *(v0 + 40);
  if (!v1 || (v2 = *(v0 + 40), v3 = sub_2665C530C(), v3 == 2))
  {
    v4 = sub_2665C8290(v1, sub_2665C9108, sub_2665C90D4);
    v5 = v4;
    if (*(v4 + 16) && (v6 = *(v4 + 40), sub_26666CB88(), sub_26666C368(), v7 = sub_26666CBC8(), v8 = -1 << *(v5 + 32), v9 = v7 & ~v8, ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
    {
      v10 = ~v8;
      while (2)
      {
        switch(*(*(v5 + 48) + v9))
        {
          case 3:

            v3 = 0;
            break;
          default:
            v11 = sub_26666CAC8();

            if ((v11 & 1) == 0)
            {
              v9 = (v9 + 1) & v10;
              if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
              {
                continue;
              }

              goto LABEL_9;
            }

            v3 = 0;
            break;
        }

        break;
      }
    }

    else
    {
LABEL_9:
      v3 = 2;
    }
  }

  return v3;
}

uint64_t sub_2665C8290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26666A258();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84FA0];
  if (a1)
  {
    if (sub_26666A9E8())
    {

      v12 = OUTLINED_FUNCTION_4_23();
      sub_26660B444(v12, 2);
    }

    if (sub_2665C5338())
    {
      v13 = OUTLINED_FUNCTION_4_23();
      sub_26660B444(v13, 1);
    }

    if (sub_26666A9F8() || sub_26666AA28())
    {

      v14 = OUTLINED_FUNCTION_4_23();
      sub_26660B444(v14, 3);
    }

    v15 = sub_26666A9D8();
    if (v15)
    {
      v16 = v15;
      v17 = *MEMORY[0x277D5E478];
      v18 = OUTLINED_FUNCTION_10_13();
      v20 = v19(v18);
      MEMORY[0x28223BE20](v20, v21);
      OUTLINED_FUNCTION_8_14();
      sub_2665C7724(a2, v22, v16);
      v24 = v23;

      (*(v7 + 8))(v11, v6);
      v25 = sub_2665C485C(v24);

      if (v25)
      {
        v26 = OUTLINED_FUNCTION_4_23();
        sub_26660B444(v26, 4);
      }
    }

    v27 = sub_26666A9D8();
    if (v27)
    {
      v28 = v27;
      v29 = *MEMORY[0x277D5E470];
      v30 = OUTLINED_FUNCTION_10_13();
      v32 = v31(v30);
      MEMORY[0x28223BE20](v32, v33);
      OUTLINED_FUNCTION_8_14();
      sub_2665C7724(a3, v34, v28);
      v36 = v35;

      (*(v7 + 8))(v11, v6);
      v37 = sub_2665C485C(v36);

      if (v37)
      {
        v38 = OUTLINED_FUNCTION_4_23();
        sub_26660B444(v38, 5);
      }
    }
  }

  return v41;
}

uint64_t sub_2665C8518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a1;
  v6[6] = a2;
  v7 = OUTLINED_FUNCTION_31();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665C8544()
{
  v48 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = v0[6];
  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  OUTLINED_FUNCTION_6();

  v3 = sub_26666C148();
  v4 = sub_26666C618();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v0[3] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E680, &qword_266674F10);
    v9 = sub_26666C318();
    v11 = sub_2665BFC90(v9, v10, &v47);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266549000, v3, v4, "[UpdateEventCorrectionsIntentWrapper] makeSiriKitIntent %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v12 = v0[6];
  v13 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
  v0[9] = v13;
  if (v12)
  {
    v14 = v0[5];
    v15 = sub_26666C2F8();
  }

  else
  {
    v15 = 0;
  }

  v16 = v0[8];
  [v13 setTargetEventIdentifier_];

  v17 = *(v16 + 40);
  v0[10] = v17;
  if (v17)
  {
    swift_retain_n();
    v18 = sub_26666C148();
    v19 = sub_26666C618();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47 = v21;
      *v20 = 136315138;
      v0[4] = v17;
      sub_26666AA48();

      v22 = sub_26666C318();
      v24 = sub_2665BFC90(v22, v23, &v47);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_266549000, v18, v19, "[UpdateEventCorrectionsIntentWrapper] USO Parse has correction %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    v25 = sub_26666AA08();
    v27 = v26;
    if (v26)
    {
      v28 = v25;
      v29 = v0[8];
      updated = type metadata accessor for UpdateEventCorrectionsIntentWrapper();
      sub_2666683AC(v29 + *(updated + 24), v28);

      v27 = sub_26666C2F8();
    }

    v31 = v0[8];
    [v13 setSetTitle_];

    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v0[11] = sub_26666A9E8();
    if (qword_28007CDB0 != -1)
    {
      swift_once();
    }

    v32 = sub_26666B628();
    __swift_project_value_buffer(v32, qword_2800956E0);
    v33 = swift_task_alloc();
    v0[12] = v33;
    *v33 = v0;
    v33[1] = sub_2665C8A3C;
    v34 = v0[7];

    return sub_2665C798C();
  }

  else
  {
    v36 = sub_26666C148();
    v37 = sub_26666C618();
    if (os_log_type_enabled(v36, v37))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_0(&dword_266549000, v38, v39, "[UpdateEventCorrectionsIntentWrapper] USO Parse does not contain a target, returning intent without parameters");
      OUTLINED_FUNCTION_4_1();
    }

    v41 = v0[9];
    v40 = v0[10];

    OUTLINED_FUNCTION_1_27();
    sub_2665C8290(v40, v42, sub_2665C90D4);
    OUTLINED_FUNCTION_6();
    sub_2665C8E14();
    v44 = v43;

    v45 = OUTLINED_FUNCTION_2_24();

    return v46(v45, v44);
  }
}