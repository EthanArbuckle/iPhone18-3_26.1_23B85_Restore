uint64_t sub_266645298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266645300()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - v7;
  v9 = sub_266668B08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665A9D2C(v1, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_266645298(v8);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    sub_266668A58();
    v17 = v16;
    (*(v10 + 8))(v14, v9);
    v15 = v17 ^ 1;
  }

  return v15 & 1;
}

uint64_t sub_266645474()
{
  if ((sub_266645504() & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_266668A58();
  OUTLINED_FUNCTION_2_39();
  v2 = sub_266668A58();
  if (v1)
  {
    if ((v3 & 1) == 0)
    {
LABEL_4:
      v4 = 0;
      return v4 & 1;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 1) != 0 || v0 != v2)
    {
      return v4 & 1;
    }
  }

  sub_266668A98();
  sub_266668A98();
  OUTLINED_FUNCTION_4_40();
  if (!v6)
  {
    v4 = v5;
  }

  return v4 & 1;
}

uint64_t sub_266645504()
{
  sub_266668A78();
  OUTLINED_FUNCTION_2_39();
  v2 = sub_266668A78();
  if (v1)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 1) != 0 || v0 != v2)
    {
      return v4 & 1;
    }
  }

  sub_266668A88();
  OUTLINED_FUNCTION_2_39();
  v5 = sub_266668A88();
  if (v1)
  {
    if ((v6 & 1) == 0)
    {
LABEL_8:
      v4 = 0;
      return v4 & 1;
    }
  }

  else
  {
    v4 = 0;
    if ((v6 & 1) != 0 || v0 != v5)
    {
      return v4 & 1;
    }
  }

  sub_266668A38();
  sub_266668A38();
  OUTLINED_FUNCTION_4_40();
  if (!v8)
  {
    v4 = v7;
  }

  return v4 & 1;
}

uint64_t sub_266645658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = sub_266669E18();
  v3 = OUTLINED_FUNCTION_3_0(v65);
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v3, v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v64 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v64 - v17;
  v19 = sub_266669E58();
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20, v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669DF8();
  v28 = sub_266561674(v27, v70);
  (*(v22 + 8))(v27, v19, v28);
  if (v70[0] == 3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v29 = sub_26666C168();
    __swift_project_value_buffer(v29, qword_28156D7E8);
    OUTLINED_FUNCTION_12_9();
    v30 = v65;
    v31(v18, a1, v65);
    v32 = sub_26666C148();
    v33 = sub_26666C618();
    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_21();
      v34 = OUTLINED_FUNCTION_13();
      v68 = v34;
      *v11 = 136315138;
      sub_2665B934C();
      sub_26666CAA8();
      OUTLINED_FUNCTION_11_12();
      v35(v18, v30);
      v36 = OUTLINED_FUNCTION_21_5();
      v39 = sub_2665BFC90(v36, v37, v38);

      *(v11 + 4) = v39;
      _os_log_impl(&dword_266549000, v32, v33, "[ConfirmationParsing] Returning .ignore() for input: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v5 + 8))(v18, v30);
    }

    sub_2666697E8();
  }

  else
  {
    sub_2665B9288(v70, &v68);
    if (v68 == 2)
    {
      v40 = v65;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v41 = sub_26666C168();
      __swift_project_value_buffer(v41, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      v42(v15, a1, v40);
      v43 = sub_26666C148();
      v44 = sub_26666C618();
      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_21();
        v45 = OUTLINED_FUNCTION_13();
        v67 = v45;
        *v11 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v46(v15, v40);
        v47 = OUTLINED_FUNCTION_21_5();
        v50 = sub_2665BFC90(v47, v48, v49);

        *(v11 + 4) = v50;
        _os_log_impl(&dword_266549000, v43, v44, "[ConfirmationParsing] Returning .cancel() for input: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        (*(v5 + 8))(v15, v40);
      }

      sub_2666697C8();
    }

    else
    {
      v51 = v65;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v52 = sub_26666C168();
      __swift_project_value_buffer(v52, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      v53(v11, a1, v51);
      v54 = sub_26666C148();
      v55 = sub_26666C618();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = OUTLINED_FUNCTION_21();
        v57 = swift_slowAlloc();
        v67 = v57;
        *v56 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v58(v11, v51);
        v59 = OUTLINED_FUNCTION_21_5();
        v62 = sub_2665BFC90(v59, v60, v61);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_266549000, v54, v55, "[ConfirmationParsing] Returning .handle() for input: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        (*(v5 + 8))(v11, v51);
      }

      sub_2666697D8();
      sub_266557D74(&v69, &unk_28007D200, &qword_26666FD20);
    }
  }

  return sub_266557D74(v70, &qword_28007E368, &unk_266673E30);
}

uint64_t sub_266645C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26655358C(v2 + 16, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_266645658(a1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_266645C7C()
{
  OUTLINED_FUNCTION_14();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  v4 = sub_266669E18();
  v1[24] = v4;
  v5 = *(v4 - 8);
  v1[25] = v5;
  v6 = *(v5 + 64) + 15;
  v1[26] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v8 = sub_266669E58();
  v1[28] = v8;
  v9 = *(v8 - 8);
  v1[29] = v9;
  v10 = *(v9 + 64) + 15;
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266645DD0, 0, 0);
}

uint64_t sub_266645DD0()
{
  v44 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[22];
  sub_26655358C(v0[23] + 16, (v0 + 16));
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_266669DF8();
  v5 = sub_266561674(v1, (v0 + 2));
  (*(v2 + 8))(v1, v3, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2665B9288((v0 + 2), (v0 + 9));
  v6 = v0[9];
  if (v6 == 2)
  {
    sub_2665B92F8((v0 + 9));
    goto LABEL_5;
  }

  if (v6 == 3)
  {
    sub_266557D74((v0 + 9), &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    v10 = v0[22];
    v11 = sub_26666C168();
    v12 = __swift_project_value_buffer(v11, qword_28156D7E8);
    (*(v8 + 16))(v7, v10, v9);
    v13 = sub_26666C148();
    v14 = sub_26666C5F8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[30];
      v16 = v0[28];
      v18 = v0[25];
      v17 = v0[26];
      v19 = v0[24];
      OUTLINED_FUNCTION_21();
      v20 = OUTLINED_FUNCTION_13();
      v43 = v20;
      *v12 = 136315138;
      sub_266669DF8();
      v21 = sub_26666C318();
      v23 = v22;
      v24 = *(v18 + 8);
      v25 = OUTLINED_FUNCTION_21_5();
      v26(v25);
      v27 = sub_2665BFC90(v21, v23, &v43);

      *(v12 + 4) = v27;
      _os_log_impl(&dword_266549000, v13, v14, "[GenericConfirmationFlowStrategy] Did not get ConfirmationTask from parse: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v29 = v0[25];
      v28 = v0[26];
      v30 = v0[24];

      (*(v29 + 8))(v28, v30);
    }

    v31 = v0[30];
    v33 = v0[26];
    v32 = v0[27];
    sub_26656CBFC();
    swift_allocError();
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 2;
    swift_willThrow();
    sub_266557D74((v0 + 2), &qword_28007E368, &unk_266673E30);

    OUTLINED_FUNCTION_24_1();
    goto LABEL_14;
  }

  v36 = v0[30];
  v38 = v0[26];
  v37 = v0[27];
  v39 = v0[21];
  sub_266557D74((v0 + 10), &unk_28007D200, &qword_26666FD20);
  v40 = sub_266669AF8();
  v41 = MEMORY[0x277D5BED0];
  if ((v6 & 1) == 0)
  {
    v41 = MEMORY[0x277D5BED8];
  }

  (*(*(v40 - 8) + 104))(v37, *v41, v40);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v40);
  sub_266669D88();
  sub_266557D74((v0 + 2), &qword_28007E368, &unk_266673E30);

  OUTLINED_FUNCTION_24_1();
LABEL_14:

  return v35();
}

uint64_t sub_2666461A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2666461C4, 0, 0);
}

uint64_t sub_2666461C4()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[GenericConfirmationFlowStrategy] Making output for prompt", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v5 = v0[4];

  v6 = *(v5 + 56);
  v0[5] = *(v5 + 64);

  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_26664636C;
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10);
}

uint64_t sub_26664636C()
{
  OUTLINED_FUNCTION_14();
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2666464D8;
  }

  else
  {
    v3 = sub_26664647C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26664647C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2666464D8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_24_1();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_266646534()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_26664655C()
{
  sub_266646534();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2666465B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266646BC0;

  return sub_266645C7C();
}

uint64_t sub_266646660(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266646BC0;

  return sub_2666461A0(a1, a2);
}

uint64_t sub_266646708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B658] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = type metadata accessor for GenericConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_266646BC0;

  return MEMORY[0x2821BA040](a1, a2, v12, a4);
}

uint64_t sub_2666467D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B660] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = type metadata accessor for GenericConfirmationFlowStrategy();
  *v10 = v4;
  v10[1] = sub_266646BC0;

  return MEMORY[0x2821BA048](a1, a2, v12, a4);
}

uint64_t sub_2666468A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B648] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26664695C;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_26664695C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_266646A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B640] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266646BC0;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_266646AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B650] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266646BC0;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

unint64_t sub_266646BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26666C7E8();

  MEMORY[0x266788710](a1, a2);
  MEMORY[0x266788710](544175136, 0xE400000000000000);
  MEMORY[0x266788710](a3, a4);
  MEMORY[0x266788710](46, 0xE100000000000000);
  return 0xD000000000000029;
}

uint64_t CalendarFlowProvider.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TaskParser();
  v3 = OUTLINED_FUNCTION_18_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669E68();
  sub_26666C068();
  v9 = sub_26666C058();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_266669648();
  v10 = &v8[v2[5]];
  v11 = type metadata accessor for CalendarDateTimeResolver();
  v10[3] = v11;
  v10[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  *boxed_opaque_existential_1 = swift_allocObject();
  sub_266669638();
  v13 = boxed_opaque_existential_1 + *(v11 + 20);
  sub_266668D88();
  v14 = boxed_opaque_existential_1 + *(v11 + 24);
  sub_26666B548();
  v15 = &v8[v2[6]];
  v16 = type metadata accessor for CalendarContactResolver();
  v15[3] = v16;
  v15[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v15) + *(v16 + 20)) = 0;
  sub_26666B338();
  v17 = sub_26666C058();
  v18 = &v8[v2[7]];
  v18[3] = &type metadata for CalendarReferenceResolver;
  v18[4] = &off_28780BAC8;
  *v18 = v17;
  sub_26666BD98();
  if (qword_28156C088 != -1)
  {
    swift_once();
  }

  sub_26666BD88();
  a1[3] = v2;
  a1[4] = &off_287808308;
  v19 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_266552BE0(v8, v19);
  a1[8] = type metadata accessor for CalendarFlowCreator();
  a1[9] = &off_28780A3E0;
  v20 = __swift_allocate_boxed_opaque_existential_1(a1 + 5);
  sub_2665FB6EC(v20);
  sub_26655358C(v23, (a1 + 10));
  a1[18] = &type metadata for CalendarReferenceResolver;
  a1[19] = &off_28780BAC8;
  a1[15] = v9;
  sub_26657F610(v8, type metadata accessor for TaskParser);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t CalendarFlowProvider.findFlowForX(parse:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v70 = sub_266669E58();
  v67 = *(v70 - 8);
  v5 = *(v67 + 64);
  v7 = MEMORY[0x28223BE20](v70, v6);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v7, v10);
  v65 = &v64[-v12];
  v14 = MEMORY[0x28223BE20](v11, v13);
  v66 = &v64[-v15];
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v64[-v17];
  v19 = type metadata accessor for Signpost.OpenSignpost();
  v20 = OUTLINED_FUNCTION_18_2(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v64[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28156C160 != -1)
  {
    swift_once();
  }

  v26 = qword_28156D800;
  sub_26666C088();
  sub_26666C638();
  v69 = v26;
  sub_26666C078();
  v27 = &v25[*(v19 + 20)];
  *v27 = "FindFlowForX";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v28 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26659AC88(a1, &v71);
  v29 = a1;
  if (BYTE8(v72[1]) == 255)
  {
    sub_266560930(&v71);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v31 = sub_26666C168();
    __swift_project_value_buffer(v31, qword_28156D7E8);
    v32 = v67;
    v33 = *(v67 + 16);
    v34 = v70;
    v33(v9, v29, v70);
    v35 = sub_26666C148();
    v36 = sub_26666C608();
    if (os_log_type_enabled(v35, v36))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_4_41();
      v37 = swift_slowAlloc();
      *&v71 = v37;
      *v25 = 136315138;
      v38 = OUTLINED_FUNCTION_5_31();
      v33(v38, v9, v34);
      sub_26666C318();
      (*(v32 + 8))(v9, v34);
      v39 = OUTLINED_FUNCTION_7_28();

      *(v25 + 4) = v39;
      _os_log_impl(&dword_266549000, v35, v36, "[CalendarFlowProvider] returning no flow for unknown parse %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x266789690](v37, -1, -1);
      OUTLINED_FUNCTION_2_40();
    }

    else
    {

      (*(v32 + 8))(v9, v34);
    }

    OUTLINED_FUNCTION_6_26();
    sub_266669598();
  }

  else
  {
    v78 = v71;
    *v79 = v72[0];
    *&v79[9] = *(v72 + 9);
    sub_266553950(&v78, v76);
    v30 = v70;
    switch(v77)
    {
      case 1:
        OUTLINED_FUNCTION_1_45();
        v50 = *(&v72[0] + 1);
        v51 = *&v72[1];
        v52 = __swift_project_boxed_opaque_existential_1(&v71, *(&v72[0] + 1));
        sub_2665FCB28(v52, v28, v50, v51);
        OUTLINED_FUNCTION_6_26();
        sub_2666695A8();

        sub_266553988(&v78);
        __swift_destroy_boxed_opaque_existential_1(&v71);
        break;
      case 2:
        OUTLINED_FUNCTION_1_45();
        sub_2665FBCCC(&v71);
        goto LABEL_18;
      case 3:
        OUTLINED_FUNCTION_1_45();
        sub_2665FBED0(&v71);
        goto LABEL_18;
      case 4:
        v40 = v18;
        sub_26654B7D8(v76, v75);
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v41 = sub_26666C168();
        __swift_project_value_buffer(v41, qword_28156D7E8);
        v42 = v67;
        v43 = *(v67 + 16);
        v43(v40, v29, v30);
        v44 = sub_26666C148();
        v45 = sub_26666C5F8();
        if (os_log_type_enabled(v44, v45))
        {
          swift_slowAlloc();
          OUTLINED_FUNCTION_4_41();
          v65 = swift_slowAlloc();
          *&v71 = v65;
          *v25 = 136315138;
          v46 = OUTLINED_FUNCTION_5_31();
          v43(v46, v40, v30);
          sub_26666C318();
          (*(v42 + 8))(v40, v30);
          v47 = OUTLINED_FUNCTION_7_28();

          *(v25 + 4) = v47;
          _os_log_impl(&dword_266549000, v44, v45, "[CalendarFlowProvider] OpenCalendarView is not supported on this platform, reforming into findEvents flow for parse %s", v25, 0xCu);
          v48 = v65;
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x266789690](v48, -1, -1);
          OUTLINED_FUNCTION_2_40();
        }

        else
        {

          (*(v42 + 8))(v40, v30);
        }

        sub_26655358C(v75, &v71);
        sub_26655358C((v3 + 15), &v72[1] + 8);
        v73 = 1024;
        v74 = 2;
        __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
        sub_2666478BC(&v71);
        OUTLINED_FUNCTION_6_26();
        sub_2666695A8();

        sub_26658FD2C(&v71);
        v49 = v75;
        goto LABEL_26;
      case 5:
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v53 = sub_26666C168();
        __swift_project_value_buffer(v53, qword_28156D7E8);
        v54 = v67;
        v55 = *(v67 + 16);
        v56 = v65;
        v55(v65, v29, v30);
        v57 = sub_26666C148();
        v58 = sub_26666C608();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          swift_slowAlloc();
          OUTLINED_FUNCTION_4_41();
          *&v71 = v60;
          *v59 = 136315138;
          v61 = OUTLINED_FUNCTION_5_31();
          v55(v61, v56, v30);
          sub_26666C318();
          (*(v54 + 8))(v56, v30);
          v62 = OUTLINED_FUNCTION_7_28();

          *(v59 + 4) = v62;
          _os_log_impl(&dword_266549000, v57, v58, "[CalendarFlowProvider] Unexpected cancel task from %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          OUTLINED_FUNCTION_2_40();
          MEMORY[0x266789690](v59, -1, -1);
        }

        else
        {

          (*(v54 + 8))(v56, v30);
        }

        OUTLINED_FUNCTION_6_26();
        sub_266669598();
        goto LABEL_27;
      default:
        OUTLINED_FUNCTION_1_45();
        sub_2665FB818(&v71);
LABEL_18:
        OUTLINED_FUNCTION_6_26();
        sub_2666695A8();

        v49 = &v71;
LABEL_26:
        __swift_destroy_boxed_opaque_existential_1(v49);
LABEL_27:
        sub_266553988(&v78);
        break;
    }
  }

  sub_26666C628();
  sub_26666C078();
  return sub_26657F610(v25, type metadata accessor for Signpost.OpenSignpost);
}

uint64_t sub_26664778C(uint64_t a1)
{
  sub_26658FCF4(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
  v1 = *(sub_266669368() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266672100;
  sub_266669328();
  sub_266669358();
  sub_2665AA6C4(v7[82]);
  sub_26658FD2C(v7);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26666EED0;
  sub_266669338();
  sub_2665C2D6C(v5);
  return v4;
}

uint64_t sub_2666478BC(uint64_t a1)
{
  v8[3] = &type metadata for OpenCalendarViewToFindEventsWrapper;
  v8[4] = &off_287807EC8;
  v8[0] = swift_allocObject();
  sub_26658FCF4(a1, v8[0] + 16);
  type metadata accessor for RootFlow();
  v2 = sub_26664778C(v8[0] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26666E050;
  *(v3 + 32) = sub_2665FB860();
  sub_26655358C(v8, v7);
  v4 = swift_allocObject();
  sub_26654B7D8(v7, v4 + 16);
  *&v7[0] = sub_2665E587C(v2, v3, &unk_2666778E0, v4);
  sub_266647A18();
  v5 = sub_266669528();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_266647A18()
{
  result = qword_28156C2E8[0];
  if (!qword_28156C2E8[0])
  {
    type metadata accessor for RootFlow();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156C2E8);
  }

  return result;
}

void OUTLINED_FUNCTION_2_40()
{
  v2 = *(v0 - 376);

  JUMPOUT(0x266789690);
}

uint64_t OUTLINED_FUNCTION_7_28()
{

  return sub_2665BFC90(v0, v1, (v2 - 320));
}

uint64_t sub_266647B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v96 = a2;
  v97 = a1;
  v102 = sub_26666B668();
  v7 = OUTLINED_FUNCTION_3_0(v102);
  v93 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  OUTLINED_FUNCTION_1_0();
  v92 = v13 - v12;
  v14 = sub_266668EB8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  OUTLINED_FUNCTION_1_0();
  v89 = v18 - v17;
  v19 = sub_266668D98();
  v20 = OUTLINED_FUNCTION_3_0(v19);
  v90 = v21;
  v91 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20, v24);
  OUTLINED_FUNCTION_8_10();
  v88 = v25;
  v28 = MEMORY[0x28223BE20](v26, v27);
  v101 = &v82[-v29];
  MEMORY[0x28223BE20](v28, v30);
  v100 = &v82[-v31];
  v32 = sub_266668E68();
  v33 = OUTLINED_FUNCTION_3_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33, v38);
  OUTLINED_FUNCTION_1_0();
  v41 = v40 - v39;
  v42 = sub_266668D38();
  v43 = OUTLINED_FUNCTION_3_0(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43, v48);
  OUTLINED_FUNCTION_8_10();
  v86 = v49;
  v52 = MEMORY[0x28223BE20](v50, v51);
  v54 = &v82[-v53];
  MEMORY[0x28223BE20](v52, v55);
  v57 = &v82[-v56];
  sub_266668E58();
  v94 = v4;
  v95 = a4;
  sub_266648094(a4, a3, v41, v57);
  v58 = *(v35 + 8);
  v87 = v41;
  v58(v41, v32);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v59 = sub_26666C168();
  __swift_project_value_buffer(v59, qword_28156D7E8);
  v84 = *(v45 + 16);
  v85 = v45 + 16;
  v84(v54, v57, v42);
  v60 = sub_26666C148();
  v61 = sub_26666C618();
  v62 = os_log_type_enabled(v60, v61);
  v98 = v42;
  v99 = v57;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = v42;
    v65 = swift_slowAlloc();
    v103 = v65;
    *v63 = 136315138;
    v66 = sub_266668D28();
    v68 = v67;
    v69 = OUTLINED_FUNCTION_1_46();
    v83 = v70;
    v70(v69, v64);
    v71 = sub_2665BFC90(v66, v68, &v103);

    *(v63 + 4) = v71;
    _os_log_impl(&dword_266549000, v60, v61, "[DateTimeResolutionContext] Date Hint: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x266789690](v65, -1, -1);
    MEMORY[0x266789690](v63, -1, -1);
  }

  else
  {

    v72 = OUTLINED_FUNCTION_1_46();
    v83 = v73;
    v73(v72, v42);
  }

  v75 = v90;
  v74 = v91;
  v76 = *(v90 + 16);
  v77 = v97;
  v76(v100, v97, v91);
  v76(v101, v77, v74);
  v76(v88, v77, v74);
  sub_266668EA8();
  v78 = v93;
  v79 = v96;
  (*(v93 + 16))(v92, v96, v102);
  sub_266668E58();
  v84(v86, v99, v98);
  v80 = sub_26666B678();
  sub_266574608(v95);
  (*(v78 + 8))(v79, v102);
  (*(v75 + 8))(v77, v74);
  v83(v99, v98);
  return v80;
}

uint64_t sub_266648094@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a3;
  v80 = a2;
  v6 = sub_266668DF8();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_266668E08();
  v76 = *(v84 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v84, v11);
  v75 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266668DC8();
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v81 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266668D38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v90 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v73 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v73 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v73 - v36;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v38 = sub_26666C168();
  v39 = __swift_project_value_buffer(v38, qword_28156D7E8);
  sub_26655E020(a1, v37);
  v88 = v39;
  v40 = sub_26666C148();
  v41 = sub_26666C618();
  v42 = os_log_type_enabled(v40, v41);
  v89 = v17;
  if (v42)
  {
    v73 = a1;
    v85 = v18;
    v86 = a4;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v91 = v44;
    *v43 = 136446210;
    sub_26655E020(v37, v34);
    if (__swift_getEnumTagSinglePayload(v34, 1, v17) == 1)
    {
      sub_266574608(v34);
      v45 = 0xE500000000000000;
      v46 = 0x3E6C696E3CLL;
    }

    else
    {
      v46 = sub_266668D28();
      v45 = v47;
      (*(v85 + 8))(v34, v17);
    }

    sub_266574608(v37);
    v48 = sub_2665BFC90(v46, v45, &v91);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_266549000, v40, v41, "[DateTimeResolutionContext] Getting adjusted date hint from date hint: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x266789690](v44, -1, -1);
    MEMORY[0x266789690](v43, -1, -1);

    v18 = v85;
    a4 = v86;
    v17 = v89;
    a1 = v73;
  }

  else
  {

    sub_266574608(v37);
  }

  sub_26655E020(a1, v30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v17);
  v50 = v90;
  if (EnumTagSinglePayload == 1)
  {
    sub_266574608(v30);
    v51 = sub_26666C148();
    v52 = sub_26666C618();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_266549000, v51, v52, "[DateTimeResolutionContext] Date hint was not provided, using .now", v53, 2u);
      MEMORY[0x266789690](v53, -1, -1);
    }

    return sub_266668CF8();
  }

  v55 = *(v18 + 32);
  v55(v90, v30, v17);
  v56 = sub_26666C148();
  v57 = sub_26666C618();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_266549000, v56, v57, "[DateTimeResolutionContext] Using provided date hint", v58, 2u);
    MEMORY[0x266789690](v58, -1, -1);
  }

  v59 = sub_266668DB8();
  v60 = sub_26666C148();
  v61 = sub_26666C618();
  v62 = os_log_type_enabled(v60, v61);
  if (v59)
  {
    if (v62)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "[DateTimeResolutionContext] provided hint is on the same day as .now, using .now instead";
LABEL_26:
      _os_log_impl(&dword_266549000, v60, v61, v64, v63, 2u);
      MEMORY[0x266789690](v63, -1, -1);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if ((v80 & 1) == 0)
  {
    if (v62)
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      v64 = "[DateTimeResolutionContext] Using .now hint due to modifyingTimeOnly being false and provided hint is not today";
      goto LABEL_26;
    }

LABEL_27:

    sub_266668CF8();
    return (*(v18 + 8))(v50, v89);
  }

  v88 = v55;
  v86 = a4;
  if (v62)
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_266549000, v60, v61, "[DateTimeResolutionContext] Using provided hint set to 00:00", v65, 2u);
    MEMORY[0x266789690](v65, -1, -1);
  }

  (*(v82 + 104))(v81, *MEMORY[0x277CC9878], v83);
  v67 = v75;
  v66 = v76;
  (*(v76 + 104))(v75, *MEMORY[0x277CC9900], v84);
  v69 = v77;
  v68 = v78;
  v70 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277CC98E8], v79);
  v71 = v74;
  sub_266668E38();
  (*(v68 + 8))(v69, v70);
  (*(v66 + 8))(v67, v84);
  (*(v82 + 8))(v81, v83);
  v72 = v89;
  if (__swift_getEnumTagSinglePayload(v71, 1, v89) == 1)
  {
    sub_266668CF8();
    (*(v18 + 8))(v90, v72);
    result = __swift_getEnumTagSinglePayload(v71, 1, v72);
    if (result != 1)
    {
      return sub_266574608(v71);
    }
  }

  else
  {
    (*(v18 + 8))(v90, v72);
    return v88(v86, v71, v72);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_46()
{
  v3 = *(v0 + 8);
  *(v2 - 264) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t type metadata accessor for UpdateEventUSOIntentWrapper()
{
  result = qword_28156C988;
  if (!qword_28156C988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666489CC()
{
  sub_26655EC10(319, qword_28156CF58);
  if (v0 <= 0x3F)
  {
    sub_26655EC10(319, &qword_28156CF50);
    if (v1 <= 0x3F)
    {
      sub_26655EC10(319, qword_28156CB10);
      if (v2 <= 0x3F)
      {
        sub_266668D98();
        if (v3 <= 0x3F)
        {
          sub_266648AF0();
          if (v4 <= 0x3F)
          {
            sub_26655EC10(319, &qword_28156CA38);
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

void sub_266648AF0()
{
  if (!qword_28156D138)
  {
    sub_26666ADF8();
    v0 = sub_26666C6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_28156D138);
    }
  }
}

uint64_t sub_266648B48()
{
  v1 = v0;
  updated = type metadata accessor for UpdateEventUSOIntentWrapper();
  v3 = *(v0 + *(updated + 32));
  if (!v3 || (sub_26666ABF8(), !v18) || (v4 = sub_2665C530C(), , v4 == 2))
  {
    v5 = (v1 + *(updated + 36));
    v7 = v5[3];
    v6 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v7);
    v8 = (*(*(v6 + 8) + 8))(v7);
    if (v8 == 2)
    {
      if (v3)
      {
        sub_26666ABF8();
        v9 = v18;
      }

      else
      {
        v9 = 0;
      }

      v10 = sub_2665C8264(v9);

      if (*(v10 + 16) && (v11 = *(v10 + 40), sub_26666CB88(), sub_26666C368(), v12 = sub_26666CBC8(), v13 = -1 << *(v10 + 32), v14 = v12 & ~v13, ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (2)
        {
          switch(*(*(v10 + 48) + v14))
          {
            case 3:

              v4 = 0;
              break;
            default:
              v16 = sub_26666CAC8();

              if ((v16 & 1) == 0)
              {
                v14 = (v14 + 1) & v15;
                if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
                {
                  continue;
                }

                goto LABEL_15;
              }

              v4 = 0;
              break;
          }

          break;
        }
      }

      else
      {
LABEL_15:
        v4 = 2;
      }
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

uint64_t sub_266648E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a1;
  v6[15] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3F0, &unk_26666F120) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266648EB8, 0, 0);
}

uint64_t sub_266648EB8()
{
  v1 = v0[15];
  v2 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
  v0[19] = v2;
  if (v1)
  {
    v3 = v0[14];
    v4 = v0[15];
    v1 = sub_26666C2F8();
  }

  v5 = v0[17];
  [v2 setTargetEventIdentifier_];

  updated = type metadata accessor for UpdateEventUSOIntentWrapper();
  v7 = *(v5 + *(updated + 32));
  v0[20] = v7;
  if (v7 && (v8 = updated, sub_26666ABF8(), (v9 = v0[13]) != 0))
  {
    v10 = __swift_project_boxed_opaque_existential_1((v0[17] + 40), *(v0[17] + 64));
    v0[21] = sub_266640D2C(v9, *v10, 0);

    v11 = sub_26666AA08();
    v13 = v12;
    if (v12)
    {
      sub_2666683AC(v0[17] + *(v8 + 28), v11);

      v13 = sub_26666C2F8();
    }

    v14 = v0[17];
    [v2 setSetTitle_];

    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v0[22] = sub_26666A9E8();
    if (qword_28007CDB0 != -1)
    {
      swift_once();
    }

    v15 = sub_26666B628();
    __swift_project_value_buffer(v15, qword_2800956E0);
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_266649240;
    v17 = v0[16];

    return sub_2665C798C();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v19 = sub_26666C168();
    __swift_project_value_buffer(v19, qword_28156D7E8);
    v20 = sub_26666C148();
    v21 = sub_26666C618();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266549000, v20, v21, "[UpdateEventUSOIntentWrapper] USO Parse does not contain a target, returning intent without parameters", v22, 2u);
      MEMORY[0x266789690](v22, -1, -1);
    }

    if (v7)
    {
      sub_26666ABF8();
      v23 = v0[12];
    }

    else
    {
      v23 = 0;
    }

    v25 = v0[18];
    v24 = v0[19];
    sub_2665C8264(v23);

    sub_2665C8E14();

    v26 = OUTLINED_FUNCTION_1_47();

    return v27(v26);
  }
}

uint64_t sub_266649240(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_266649360, 0, 0);
}

uint64_t sub_266649360()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 136);
  [v4 setSetDateTimeRange_];

  v6 = sub_2665D9924();
  [v4 setSetLocation_];

  v7 = v5[14];
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  sub_26666A9D8();
  v8 = *MEMORY[0x277D5E478];
  v9 = sub_26666A258();
  v29 = *(*(v9 - 8) + 104);
  v29(v3, v8, v9);
  OUTLINED_FUNCTION_2_41();
  v10 = sub_26655358C((v5 + 5), v0 + 16);
  v12 = OUTLINED_FUNCTION_0_44(v10, v11, v0 + 16);

  sub_266557D74(v0 + 16, &qword_28007D3F8, &qword_26667B390);
  sub_266557D74(v3, &qword_28007D3F0, &unk_26666F120);
  if (v12)
  {
    sub_2665C18BC();
    v13 = sub_26666C488();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 136);
  [*(v0 + 152) setAddParticipants_];

  v17 = v5[14];
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  sub_26666A9D8();
  v29(v15, *MEMORY[0x277D5E470], v9);
  OUTLINED_FUNCTION_2_41();
  v18 = sub_26655358C(v16 + 40, v0 + 56);
  v20 = OUTLINED_FUNCTION_0_44(v18, v19, v0 + 56);

  sub_266557D74(v0 + 56, &qword_28007D3F8, &qword_26667B390);
  sub_266557D74(v15, &qword_28007D3F0, &unk_26666F120);
  if (v20)
  {
    sub_2665C18BC();
    v21 = sub_26666C488();
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 168);
  [*(v0 + 152) setRemoveParticipants_];

  v23 = *(v0 + 160);
  sub_26666ABF8();
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  sub_2665C8264(*(v0 + 96));

  sub_2665C8E14();

  v26 = OUTLINED_FUNCTION_1_47();

  return v27(v26);
}

uint64_t sub_266649688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_2665CA5A4;

  return sub_266648E18(a1, a2, 0, 0, a5);
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26663B210(v6, v3, a3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

_BYTE *storeEnumTagSinglePayload for UpdateEvent.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t (*sub_266649918(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v35 = a3;
  v39 = a2;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v38 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF80, &qword_266677660);
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12, v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  v21 = OUTLINED_FUNCTION_3_1(v20);
  v34 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21, v25);
  v27 = &v33 - v26;
  sub_26664DAA4(v35, &v33 - v26, &qword_28007EF70, &unk_266677650);
  (*(v14 + 16))(v19, v36, v11);
  sub_26664DAA4(v37, v10, &qword_28007EF78, &qword_26667B710);
  sub_26664DAA4(v39, __src, &qword_28007EFA8, &qword_266677670);
  v28 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v29 = (v24 + *(v14 + 80) + v28) & ~*(v14 + 80);
  v30 = (v16 + *(v38 + 80) + v29) & ~*(v38 + 80);
  v31 = swift_allocObject();
  sub_26664E170(v27, v31 + v28, &qword_28007EF70, &unk_266677650);
  (*(v14 + 32))(v31 + v29, v19, v11);
  sub_26664E170(v10, v31 + v30, &qword_28007EF78, &qword_26667B710);
  memcpy((v31 + ((v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0xD0uLL);
  return sub_26664DAF4;
}

uint64_t (*sub_266649C4C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v26 = a3;
  v30 = a2;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD48, &qword_26667B6C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  v25 = *(v14 - 8);
  v15 = *(v25 + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v24 - v17;
  sub_26664DAA4(v26, &v24 - v17, &qword_28007FD38, &qword_26667B6B0);
  (*(v9 + 16))(v13, v27, v8);
  sub_26664DAA4(v28, v7, &qword_28007FD40, &qword_26667B6B8);
  sub_26664DAA4(v30, __src, &qword_28007FD70, &qword_26667B6D0);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = (v15 + *(v9 + 80) + v19) & ~*(v9 + 80);
  v21 = (v10 + *(v29 + 80) + v20) & ~*(v29 + 80);
  v22 = swift_allocObject();
  sub_26664E170(v18, v22 + v19, &qword_28007FD38, &qword_26667B6B0);
  (*(v9 + 32))(v22 + v20, v13, v8);
  sub_26664E170(v7, v22 + v21, &qword_28007FD40, &qword_26667B6B8);
  memcpy((v22 + ((v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0xD0uLL);
  return sub_26664D7A4;
}

uint64_t sub_266649F9C()
{
  OUTLINED_FUNCTION_48_1();
  v2 = sub_26658D62C(v1);
  if (v2)
  {
    if (v2 == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v3 = sub_26666C168();
      __swift_project_value_buffer(v3, qword_28156D7E8);
      v4 = sub_26666C148();
      v5 = sub_26666C618();
      if (OUTLINED_FUNCTION_4_11(v5))
      {
        v6 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_44_0(v6);
        OUTLINED_FUNCTION_21_6(&dword_266549000, v7, v8, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.");
        OUTLINED_FUNCTION_9_5();
      }

      sub_26664E028();
      sub_266669428();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v15 = sub_26666C168();
      __swift_project_value_buffer(v15, qword_28156D7E8);
      v16 = sub_26666C148();
      v17 = sub_26666C618();
      if (OUTLINED_FUNCTION_4_11(v17))
      {
        v18 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_44_0(v18);
        OUTLINED_FUNCTION_21_6(&dword_266549000, v19, v20, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
        OUTLINED_FUNCTION_9_5();
      }

      sub_26664E028();
      sub_266669408();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v9 = sub_26666C168();
    __swift_project_value_buffer(v9, qword_28156D7E8);
    v10 = sub_26666C148();
    v11 = sub_26666C618();
    if (OUTLINED_FUNCTION_4_11(v11))
    {
      v12 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44_0(v12);
      OUTLINED_FUNCTION_21_6(&dword_266549000, v13, v14, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
      OUTLINED_FUNCTION_9_5();
    }

    sub_26664E028();
    sub_266669418();
  }

  OUTLINED_FUNCTION_28_10();
  v21 = OUTLINED_FUNCTION_45();
  v22(v21);
  OUTLINED_FUNCTION_33_10();
  return v0;
}

uint64_t sub_26664A194(uint64_t a1, uint64_t a2)
{
  v4 = sub_26656F9AC();
  if (v4)
  {
    if (v4)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v5 = sub_26666C168();
      __swift_project_value_buffer(v5, qword_28156D7E8);
      v6 = sub_26666C148();
      v7 = sub_26666C618();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_266549000, v6, v7, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.", v8, 2u);
        MEMORY[0x266789690](v8, -1, -1);
      }

      sub_26664DA50();
      v9 = sub_266669428();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
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
        _os_log_impl(&dword_266549000, v15, v16, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.", v17, 2u);
        MEMORY[0x266789690](v17, -1, -1);
      }

      sub_26664DA50();
      v9 = sub_266669408();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v10 = sub_26666C168();
    __swift_project_value_buffer(v10, qword_28156D7E8);
    v11 = sub_26666C148();
    v12 = sub_26666C618();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266549000, v11, v12, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.", v13, 2u);
      MEMORY[0x266789690](v13, -1, -1);
    }

    sub_26664DA50();
    v9 = sub_266669418();
  }

  v18 = v9(a1, a2);

  return v18;
}

uint64_t sub_26664A46C()
{
  OUTLINED_FUNCTION_48_1();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_4_11(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_44_0(v4);
    OUTLINED_FUNCTION_21_6(&dword_266549000, v5, v6, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
    OUTLINED_FUNCTION_9_5();
  }

  sub_26664E07C();
  sub_266669418();
  OUTLINED_FUNCTION_28_10();
  v7 = OUTLINED_FUNCTION_45();
  v8(v7);
  OUTLINED_FUNCTION_33_10();
  return v0;
}

uint64_t sub_26664A540()
{
  OUTLINED_FUNCTION_48_1();
  v3 = *(*v1 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  swift_storeEnumTagMultiPayload();
  *(v1 + 16) = v2;
  v6 = *(v0 + 16);
  *(v1 + 24) = *v0;
  *(v1 + 40) = v6;
  *(v1 + 56) = *(v0 + 32);
  return v1;
}

void *sub_26664A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v7 = *(*v6 + 120);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  __swift_storeEnumTagSinglePayload(v6 + v7, 1, 4, v8);
  return v6;
}

uint64_t sub_26664A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v8 = sub_266669AE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v14 = sub_266669AD8();
  v16 = v15;
  (*(v9 + 8))(v13, v8);
  v17 = v14 == 0x7069636974726170 && v16 == 0xEC00000073746E61;
  if (v17 || (sub_26666CAC8() & 1) != 0 || (v14 == 0x6974726150646461 ? (v18 = v16 == 0xEF73746E61706963) : (v18 = 0), v18))
  {
  }

  else
  {
    v19 = sub_26666CAC8();

    if ((v19 & 1) == 0)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v20 = sub_26666C168();
      __swift_project_value_buffer(v20, qword_28156D7E8);
      v21 = sub_26666C148();
      v22 = sub_26666C618();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266549000, v21, v22, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using event conflict schedule or change confirmation strategy", v23, 2u);
        MEMORY[0x266789690](v23, -1, -1);
      }

      return sub_26664AD70(a1, a2, v31, v32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  sub_26655369C(&qword_28007FDE8, &qword_28007EF70, &unk_266677650);
  v25 = sub_2666693D8();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v26 = sub_26666C168();
  __swift_project_value_buffer(v26, qword_28156D7E8);
  v27 = sub_26666C148();
  v28 = sub_26666C618();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_266549000, v27, v28, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using participant confirmation strategy", v29, 2u);
    MEMORY[0x266789690](v29, -1, -1);
  }

  v24 = v25(a1, a2);

  return v24;
}

uint64_t sub_26664A9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v8 = sub_266669AE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  v14 = sub_266669AD8();
  v16 = v15;
  (*(v9 + 8))(v13, v8);
  v17 = v14 == 0x7069636974726170 && v16 == 0xEC00000073746E61;
  if (v17 || (sub_26666CAC8() & 1) != 0 || (v14 == 0x6974726150646461 ? (v18 = v16 == 0xEF73746E61706963) : (v18 = 0), v18))
  {
  }

  else
  {
    v19 = sub_26666CAC8();

    if ((v19 & 1) == 0)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v20 = sub_26666C168();
      __swift_project_value_buffer(v20, qword_28156D7E8);
      v21 = sub_26666C148();
      v22 = sub_26666C618();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266549000, v21, v22, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using event conflict schedule or change confirmation strategy", v23, 2u);
        MEMORY[0x266789690](v23, -1, -1);
      }

      return sub_26664B13C(a1, a2, v31, v32);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  sub_26655369C(&qword_28007FDB0, &qword_28007FD38, &qword_26667B6B0);
  v25 = sub_2666693D8();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v26 = sub_26666C168();
  __swift_project_value_buffer(v26, qword_28156D7E8);
  v27 = sub_26666C148();
  v28 = sub_26666C618();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_266549000, v27, v28, "[ConfirmationFlowProducing makeConfirmationFlowProducer] Using participant confirmation strategy", v29, 2u);
    MEMORY[0x266789690](v29, -1, -1);
  }

  v24 = v25(a1, a2);

  return v24;
}

uint64_t sub_26664AD70(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v33 = a4;
  v31 = a3;
  v30 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  v29[0] = v5;
  v6 = *(v5 - 8);
  v29[1] = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = v29 - v14;
  sub_26664DAA4(v31, v29 - v14, &qword_28007EF78, &qword_26667B710);
  v31 = *(v6 + 16);
  v31(v9, a2, v5);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v6 + 80);
  v29[2] = v18 | 7;
  v19 = swift_allocObject();
  sub_26664E170(v15, v19 + v16, &qword_28007EF78, &qword_26667B710);
  v20 = v32;
  *(v19 + v17) = v32;
  v21 = *(v6 + 32);
  v22 = v29[0];
  v21(v19 + ((v18 + v17 + 8) & ~v18), v9, v29[0]);
  sub_26664DAA4(v33, __src, &qword_28007EFA8, &qword_266677670);
  v31(v9, v30, v22);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0xD0uLL);
  *(v23 + 224) = v20;
  v21(v23 + ((v18 + 232) & ~v18), v9, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FDF0, &qword_26667B718);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  __src[0] = sub_26664A5B4(sub_26664DDEC, v19, sub_26664DFAC, v23, &qword_28007FE00, &qword_26667B720);
  sub_26655369C(&qword_28007FDF8, &qword_28007FDF0, &qword_26667B718);
  swift_retain_n();
  v27 = sub_266669538();

  return v27;
}

uint64_t sub_26664B13C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v33 = a4;
  v31 = a3;
  v30 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  v29[0] = v5;
  v6 = *(v5 - 8);
  v29[1] = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = v29 - v14;
  sub_26664DAA4(v31, v29 - v14, &qword_28007FD40, &qword_26667B6B8);
  v31 = *(v6 + 16);
  v31(v9, a2, v5);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v6 + 80);
  v29[2] = v18 | 7;
  v19 = swift_allocObject();
  sub_26664E170(v15, v19 + v16, &qword_28007FD40, &qword_26667B6B8);
  v20 = v32;
  *(v19 + v17) = v32;
  v21 = *(v6 + 32);
  v22 = v29[0];
  v21(v19 + ((v18 + v17 + 8) & ~v18), v9, v29[0]);
  sub_26664DAA4(v33, __src, &qword_28007FD70, &qword_26667B6D0);
  v31(v9, v30, v22);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0xD0uLL);
  *(v23 + 224) = v20;
  v21(v23 + ((v18 + 232) & ~v18), v9, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FDB8, &qword_26667B700);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  __src[0] = sub_26664A5B4(sub_26664D8F8, v19, sub_26664D9D4, v23, &qword_28007FDC8, &qword_26667B708);
  sub_26655369C(&qword_28007FDC0, &qword_28007FDB8, &qword_26667B700);
  swift_retain_n();
  v27 = sub_266669538();

  return v27;
}

uint64_t sub_26664B508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_12_24(a1, a2, a3, a4, a5);
  v9 = OUTLINED_FUNCTION_15_2();
  sub_26655369C(v9, v10, v6);
  sub_2666693D8();
  OUTLINED_FUNCTION_28_10();
  v11(v8, v7);
  OUTLINED_FUNCTION_33_10();
  return v5;
}

uint64_t sub_26664B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_12_24(a1, a2, a3, a4, a5);
  v9 = OUTLINED_FUNCTION_15_2();
  sub_26655369C(v9, v10, v6);
  sub_2666693D8();
  OUTLINED_FUNCTION_28_10();
  v11(v8, v7);
  OUTLINED_FUNCTION_33_10();
  return v5;
}

uint64_t sub_26664B618()
{
  v0 = sub_26666C958();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26664B664(char a1)
{
  result = 0x656C746954746573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7461636F4C746573;
      break;
    case 4:
      result = 0x6974726150646461;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_26664B764(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3();
  sub_26664D748(a5, v11);
  v6 = OUTLINED_FUNCTION_15_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_7(v8);
  v11[0] = sub_26664A540();
  sub_26655369C(&qword_28007FE20, &qword_28007FE18, &qword_26667B728);
  v9 = sub_266669538();

  return v9;
}

uint64_t sub_26664B84C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3();
  sub_26664D748(a5, v11);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD98, &qword_26667B6E8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v11[0] = sub_26664A540();
  sub_26655369C(&qword_28007FDA0, &qword_28007FD98, &qword_26667B6E8);
  v9 = sub_266669538();

  return v9;
}

uint64_t sub_26664B940(void *a1)
{
  v2 = sub_26666BE18();
  v3 = OUTLINED_FUNCTION_3_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  type metadata accessor for EventDisambiguationStrategy();
  v7 = sub_2665698CC(0);
  sub_266669B78();
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(v17, v8, v9);
  sub_26655358C(a1, v18);
  v10 = swift_allocObject();
  sub_26654B7D8(v18, v10 + 16);
  v19[2] = &unk_26667B740;
  v19[3] = v10;
  v11 = sub_2666699F8();
  OUTLINED_FUNCTION_7(v11);

  v12 = sub_2666699E8();
  v19[9] = v11;
  v19[10] = MEMORY[0x277D5BD58];
  v19[6] = v12;
  type metadata accessor for CommonCATsSimple();
  sub_26666BE08();
  v19[11] = sub_26666BDD8();
  sub_266669E68();
  if (qword_28156CD28 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = qword_28156D828;
  v19[20] = type metadata accessor for EventProvider();
  v19[21] = &off_287806290;
  v19[17] = v13;
  v14 = swift_allocObject();
  sub_26654B7D8(v17, v14 + 16);
  *(v14 + 56) = 1;
  v19[0] = &unk_26666DEA0;
  v19[1] = v14;
  v19[4] = &unk_26666DEB0;
  v19[5] = v7;
  sub_266553530(v19, v17);
  sub_26655358C(v20, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D060, &qword_26666DEB8);
  swift_allocObject();
  *&v17[0] = sub_266552824(v17, v18);
  sub_26655369C(&qword_28007D068, &qword_28007D060, &qword_26666DEB8);

  v15 = sub_266669528();

  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_2665535F0(v19);
  return v15;
}

uint64_t sub_26664BC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26664BCCC, 0, 0);
}

uint64_t sub_26664BCCC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2665EF53C(v2);
  v5 = v4;
  v6 = v1[3];
  v0[7] = v6;
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  OUTLINED_FUNCTION_30_12();
  v9 = v8;
  v0[8] = v8;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_19();
  v0[9] = v12;
  (*(v9 + 16))();
  v13 = [v2 dateTimeRange];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 startDate];

    if (v15)
    {
      v16 = v0[5];
      sub_266668CE8();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v21 = v0[5];
    v20 = v0[6];
    v22 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v21, v17, 1, v22);
    sub_26664E170(v21, v20, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    v18 = v0[6];
    v19 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  }

  v0[10] = v5;
  if (!v5)
  {
    v5 = 0xE000000000000000;
    v3 = 0;
  }

  v23 = swift_task_alloc();
  v0[11] = v23;
  v24 = *(v7 + 8);
  *v23 = v0;
  v23[1] = sub_26664BF04;
  v25 = v0[6];
  v26 = v0[3];

  return sub_26664C480(v3, v5, v26, v12, v25, v6, v24);
}

uint64_t sub_26664BF04()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  *(*v0 + 80);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  sub_26656CAEC(v5, &qword_28007D140, &qword_26666F140);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_15_2();
  v11(v10);

  v12 = OUTLINED_FUNCTION_1_10();

  return v13(v12);
}

uint64_t sub_26664C0FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26664B618();
  *a2 = result;
  return result;
}

unint64_t sub_26664C12C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26664B664(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26664C15C()
{
  result = qword_28007FD28;
  if (!qword_28007FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD28);
  }

  return result;
}

id sub_26664C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v28 = a3;
  v6 = type metadata accessor for EventProvider();
  v36[3] = v6;
  v36[4] = &off_287806290;
  v36[0] = a1;
  v34 = &type metadata for AceUserLocationProvider;
  v35 = &off_28780A9C8;
  v7 = swift_allocObject();
  v33[0] = v7;
  v8 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a2 + 32);
  v9 = _s13IntentHandlerCMa_0();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v36, v6);
  v12 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v11, v11);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v34;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v18 = *(v16[-1].Description + 8);
  MEMORY[0x28223BE20](v17, v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = *v14;
  v32[3] = v6;
  v32[4] = &off_287806290;
  v31[4] = &off_28780A9C8;
  v32[0] = v22;
  v31[3] = &type metadata for AceUserLocationProvider;
  v23 = swift_allocObject();
  v31[0] = v23;
  v24 = *(v20 + 1);
  *(v23 + 16) = *v20;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(v20 + 4);
  sub_26655358C(v32, &v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_eventProvider]);
  sub_26655358C(v31, &v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_locationProvider]);
  *&v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_commonCats] = v28;
  *&v10[OBJC_IVAR____TtCO19SiriCalendarIntents11UpdateEvent13IntentHandler_parametersToUpdate] = v29;
  v30.receiver = v10;
  v30.super_class = v9;
  v25 = objc_msgSendSuper2(&v30, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v25;
}

uint64_t sub_26664C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[191] = a7;
  v7[190] = a6;
  v7[189] = a5;
  v7[188] = a3;
  v7[187] = a2;
  v7[186] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD30, &qword_26667B6A8);
  v7[192] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v7[193] = v9;
  v11 = *(v10 + 64);
  v7[194] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  v7[195] = v12;
  OUTLINED_FUNCTION_3_3(v12);
  v14 = *(v13 + 64);
  v7[196] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  v7[197] = v15;
  OUTLINED_FUNCTION_3_3(v15);
  v17 = *(v16 + 64);
  v7[198] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD48, &qword_26667B6C0);
  v7[199] = v18;
  OUTLINED_FUNCTION_3_1(v18);
  v7[200] = v19;
  v21 = *(v20 + 64) + 15;
  v7[201] = swift_task_alloc();
  v7[202] = swift_task_alloc();
  v22 = type metadata accessor for TaskParser();
  v7[203] = v22;
  OUTLINED_FUNCTION_3_3(v22);
  v24 = *(v23 + 64);
  v7[204] = OUTLINED_FUNCTION_19();
  v25 = sub_26666BE18();
  OUTLINED_FUNCTION_3_3(v25);
  v27 = *(v26 + 64);
  v7[205] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_30_12();
  v29 = v28;
  v7[206] = v28;
  v31 = *(v30 + 64);
  v7[207] = OUTLINED_FUNCTION_19();
  (*(v29 + 16))();

  return MEMORY[0x2822009F8](sub_26664C6CC, 0, 0);
}

uint64_t sub_26664C6CC()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[203];
  v4 = v0[187];
  sub_266669638();
  type metadata accessor for CommonCATsSimple();
  sub_26666BE08();
  v0[208] = sub_26666BDD8();
  sub_266669E68();
  v5 = v0[130];
  __swift_project_boxed_opaque_existential_1(v0 + 126, v0[129]);
  sub_266669648();
  v6 = (v2 + v3[5]);
  v7 = type metadata accessor for CalendarDateTimeResolver();
  v6[3] = v7;
  v6[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  v9 = swift_allocObject();
  *boxed_opaque_existential_1 = v9;
  sub_2665524C0((v0 + 121), v9 + 16);
  v10 = boxed_opaque_existential_1 + *(v7 + 20);
  sub_266668D88();
  v11 = boxed_opaque_existential_1 + *(v7 + 24);
  sub_26666B548();
  v12 = (v2 + v3[6]);
  v13 = type metadata accessor for CalendarContactResolver();
  v12[3] = v13;
  v12[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v12) + *(v13 + 20)) = 0;
  sub_26666B338();
  v0[209] = sub_26666C068();
  v14 = sub_26666C058();
  v15 = (v2 + v3[7]);
  v15[3] = &type metadata for CalendarReferenceResolver;
  v15[4] = &off_28780BAC8;
  *v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v0 + 126);
  v16 = swift_task_alloc();
  v0[210] = v16;
  *v16 = v0;
  v16[1] = sub_26664C8E8;
  v17 = v0[207];
  v18 = v0[191];
  v19 = v0[190];
  v20 = v0[189];
  v21 = v0[186];

  return sub_2665CA6A8(v21, v4, v20, v19, v18);
}

uint64_t sub_26664C8E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v8 = *v2;
  v8[181] = v2;
  v8[182] = a1;
  v8[183] = a2;
  v4 = v3[210];
  v5 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_26664C9E8, 0, 0);
}

uint64_t sub_26664C9E8()
{
  if (qword_28156CD28 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v52 = *(v0 + 1456);
  v1 = *(v0 + 1464);
  v48 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  v56 = *(v0 + 1648);
  v57 = *(v0 + 1656);
  v3 = *(v0 + 1640);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1624);
  v6 = *(v0 + 1616);
  v60 = *(v0 + 1608);
  v49 = *(v0 + 1600);
  v61 = *(v0 + 1592);
  v7 = *(v0 + 1584);
  v44 = *(v0 + 1576);
  v62 = *(v0 + 1568);
  v46 = *(v0 + 1560);
  v50 = *(v0 + 1552);
  v51 = *(v0 + 1536);
  v54 = *(v0 + 1544);
  v55 = *(v0 + 1520);
  v43 = *(v0 + 1504);
  v8 = qword_28156D828;
  sub_2665524C0(v0 + 968, v0 + 1048);
  swift_retain_n();

  v9 = sub_26664C1B0(v8, v0 + 1048, v2, v1);
  *(v0 + 896) = v5;
  *(v0 + 904) = &off_287808308;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 872));
  v53 = v4;
  sub_266552BE0(v4, boxed_opaque_existential_1);
  *(v0 + 912) = v9;
  *(v0 + 1112) = &type metadata for EventRecurrencePromptParser;
  *(v0 + 1120) = &off_2878095D0;
  *(v0 + 1152) = v5;
  *(v0 + 1160) = &off_287808308;
  v11 = __swift_allocate_boxed_opaque_existential_1((v0 + 1128));
  sub_266552BE0(v4, v11);
  v45 = v9;
  sub_266669E68();
  *(v0 + 1232) = type metadata accessor for EventProvider();
  *(v0 + 1240) = &off_287806290;
  *(v0 + 1208) = v8;
  type metadata accessor for UpdateEventCATsSimple();
  sub_26666BE08();
  v12 = sub_26666BDD8();
  v13 = sub_2666699F8();
  OUTLINED_FUNCTION_7(v13);

  v14 = sub_2666699E8();
  *(v0 + 1272) = v13;
  *(v0 + 1280) = MEMORY[0x277D5BD58];
  *(v0 + 1248) = v14;
  sub_266552C44(0, &qword_28007D210, 0x277CD42A8);
  sub_266552C44(0, &unk_28007DC60, 0x277CD42B0);
  sub_2666694A8();
  sub_26666BE38();
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  sub_2666693C8();

  sub_266669458();
  sub_26655358C(v0 + 1248, v0 + 464);
  sub_26655358C(v0 + 1208, v0 + 512);
  sub_26655358C(v0 + 1168, v0 + 552);
  v58 = v12;
  *(v0 + 448) = v12;
  *(v0 + 456) = v2;
  *(v0 + 504) = v43;
  sub_26664D430(v0 + 448, v0 + 592);
  v15 = swift_allocObject();
  memcpy((v15 + 16), (v0 + 592), 0x90uLL);

  v16 = v43;
  sub_266669478();
  sub_26655358C(v0 + 1128, v0 + 1288);
  v7[3] = &unk_287806408;
  v7[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4_42();
  v17 = swift_allocObject();
  *v7 = v17;
  sub_266552D2C(v0 + 1288, v17 + 16);
  sub_26655358C(v0 + 1208, (v7 + 5));
  sub_26655358C(v0 + 1168, (v7 + 10));
  sub_26655358C(v0 + 1248, (v7 + 15));
  v7[24] = &type metadata for SiriCalendarFeatureManager;
  v7[25] = &protocol witness table for SiriCalendarFeatureManager;
  v7[20] = v2;
  v18 = *(v44 + 68);

  v59 = v7;
  sub_266669A78();
  *(v0 + 264) = &unk_287806408;
  *(v0 + 272) = &off_2878064B0;
  OUTLINED_FUNCTION_4_42();
  v19 = swift_allocObject();
  *(v0 + 240) = v19;
  sub_266552D2C(v0 + 1288, v19 + 16);
  sub_26655358C(v0 + 1128, v0 + 280);
  sub_26655358C(v0 + 1208, v0 + 320);
  sub_26655358C(v0 + 1168, v0 + 360);
  sub_26655358C(v0 + 1248, v0 + 400);
  *(v0 + 440) = v2;
  v62[3] = &unk_287806408;
  v62[4] = &off_2878064B0;
  OUTLINED_FUNCTION_4_42();
  v20 = swift_allocObject();
  *v62 = v20;
  sub_266552D2C(v0 + 1288, v20 + 16);
  sub_26655358C(v0 + 1208, (v62 + 5));
  sub_26655358C(v0 + 1168, (v62 + 10));
  sub_26655358C(v0 + 1248, (v62 + 16));
  v62[15] = v2;
  v21 = *(v46 + 64);

  sub_266669A78();
  sub_266649C4C(v7, v0 + 240, v62);
  v22 = v6;
  sub_266669488();
  sub_26655358C(v0 + 1088, v0 + 16);
  sub_26655358C(v0 + 1128, v0 + 56);
  sub_26655358C(v0 + 1208, v0 + 112);
  sub_26655358C(v0 + 1168, v0 + 160);
  sub_26655358C(v0 + 1248, v0 + 200);
  *(v0 + 96) = v45;
  *(v0 + 104) = &off_287808180;
  *(v0 + 152) = v12;
  sub_26655358C(v0 + 1128, v0 + 1328);
  sub_26664D494();
  v47 = v45;

  v23 = sub_266669398();
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  v27 = *(v0 + 1344);
  *(v26 + 32) = *(v0 + 1328);
  *(v26 + 48) = v27;
  *(v26 + 64) = *(v0 + 1360);
  sub_266669438();
  sub_26666BD78();
  sub_26666BD68();
  v28 = sub_26666BE78();
  OUTLINED_FUNCTION_7(v28);
  OUTLINED_FUNCTION_2_30();
  v29 = sub_26666BE68();
  v30 = sub_26666C058();
  *(v0 + 1392) = &type metadata for CalendarReferenceResolver;
  *(v0 + 1400) = &off_28780BAC8;
  *(v0 + 1368) = v30;
  sub_26655358C(v0 + 1168, v0 + 1408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD58, &qword_26667B6C8);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D56578];
  *(v31 + 48) = v28;
  *(v31 + 56) = v32;
  *(v31 + 24) = v29;
  *(v31 + 88) = &type metadata for DisambiguationResponseParser;
  *(v31 + 96) = &off_287806688;
  v33 = swift_allocObject();
  *(v31 + 64) = v33;
  sub_26656CCE8(v0 + 1368, v33 + 16);
  *(v31 + 144) = 0;
  *(v31 + 152) = 0;
  *(v31 + 160) = 0x80;
  *(v31 + 16) = 1;
  sub_26654B7D8((v0 + 1408), v31 + 104);
  sub_26656CD44(v0 + 1368);
  *(v0 + 1472) = v31;
  sub_26655369C(&qword_28007FD60, &qword_28007FD58, &qword_26667B6C8);
  sub_2666693E8();
  sub_266669498();
  sub_26655358C(v0 + 1208, v0 + 744);
  sub_26655358C(v0 + 1168, v0 + 784);
  v34 = *(v13 + 48);
  v35 = *(v13 + 52);
  swift_allocObject();
  v36 = v47;
  v37 = sub_2666699E8();
  *(v0 + 856) = v13;
  *(v0 + 864) = MEMORY[0x277D5BD58];
  *(v0 + 832) = v37;
  *(v0 + 736) = v36;
  *(v0 + 824) = v58;
  sub_26664D4F4();
  sub_2666693B8();
  sub_266669448();

  sub_26664D548(v0 + 16);
  sub_266552F34(v0 + 1288);
  sub_26664D59C(v0 + 448);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1168));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1248));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1208));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1088));
  sub_26664D5F0(v0 + 736);
  sub_26656CAEC(v62, &qword_28007FD38, &qword_26667B6B0);
  sub_26656CAEC(v0 + 240, &qword_28007FD70, &qword_26667B6D0);
  sub_26656CAEC(v59, &qword_28007FD40, &qword_26667B6B8);
  sub_26664D644(v0 + 872, v0 + 920);
  (*(v49 + 16))(v60, v22, v61);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD78, &qword_26667B6D8);
  OUTLINED_FUNCTION_7(v38);
  sub_2666694B8();
  sub_26664D6A0();
  sub_266669808();
  OUTLINED_FUNCTION_2_30();
  sub_26666BE28();
  v39 = sub_2666697F8();

  *(v0 + 1480) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD88, &qword_26667B6E0);
  sub_26655369C(&qword_28007FD90, &qword_28007FD88, &qword_26667B6E0);
  sub_266669528();

  (*(v54 + 8))(v50, v51);
  (*(v49 + 8))(v22, v61);
  sub_266553184(v0 + 968);

  sub_26664D6F4(v0 + 872);
  sub_266553128(v53);
  (*(v56 + 8))(v57, v55);

  v40 = OUTLINED_FUNCTION_1_10();

  return v41(v40);
}

unint64_t sub_26664D494()
{
  result = qword_28007FD50;
  if (!qword_28007FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD50);
  }

  return result;
}

unint64_t sub_26664D4F4()
{
  result = qword_28007FD68;
  if (!qword_28007FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD68);
  }

  return result;
}

unint64_t sub_26664D6A0()
{
  result = qword_28007FD80;
  if (!qword_28007FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FD80);
  }

  return result;
}

uint64_t sub_26664D7A4()
{
  OUTLINED_FUNCTION_48_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD38, &qword_26667B6B0);
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD48, &qword_26667B6C0);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FD40, &qword_26667B6B8);
  OUTLINED_FUNCTION_3_1(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = *(v14 + 64);
  v17 = OUTLINED_FUNCTION_6_27();

  return sub_26664A9C0(v17, v18, v19, v20, v21, v22);
}

uint64_t sub_26664D8F8()
{
  v0 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3_1(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_23_15();
  return OUTLINED_FUNCTION_31_10(v9, v10);
}

uint64_t sub_26664D9D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  OUTLINED_FUNCTION_3_3(v1);
  return sub_26664B590(v0 + 16, *(v0 + 224), v0 + ((*(v2 + 80) + 232) & ~*(v2 + 80)), &qword_28007FD70, &qword_26667B6D0);
}

unint64_t sub_26664DA50()
{
  result = qword_28007FDE0;
  if (!qword_28007FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FDE0);
  }

  return result;
}

uint64_t sub_26664DAA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_26664DAF4()
{
  OUTLINED_FUNCTION_48_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF70, &unk_266677650);
  OUTLINED_FUNCTION_3_1(v0);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF80, &qword_266677660);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EF78, &qword_26667B710);
  OUTLINED_FUNCTION_3_1(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = *(v14 + 64);
  v17 = OUTLINED_FUNCTION_6_27();

  return sub_26664A610(v17, v18, v19, v20, v21, v22);
}

uint64_t objectdestroy_24Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (*(*v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_0(v11);
  v13 = v12;
  v15 = v14;
  v16 = *(v13 + 80);
  v17 = (v10 + v16 + 8) & ~v16;
  v18 = *(v15 + 64);
  v19 = v8 | v16;
  __swift_destroy_boxed_opaque_existential_1((v4 + v9));
  __swift_destroy_boxed_opaque_existential_1((v4 + v9 + 40));
  __swift_destroy_boxed_opaque_existential_1((v4 + v9 + 80));
  __swift_destroy_boxed_opaque_existential_1((v4 + v9 + 120));
  v20 = *(v4 + v9 + 160);

  __swift_destroy_boxed_opaque_existential_1((v4 + v9 + 168));
  v21 = v7[19];
  v22 = sub_266669A88();
  OUTLINED_FUNCTION_18_2(v22);
  (*(v23 + 8))(v4 + v9 + v21);
  v24 = *(v4 + v10);

  (*(v13 + 8))(v4 + v17, v11);

  return MEMORY[0x2821FE8E8](v4, v17 + v18, v19 | 7);
}

uint64_t sub_26664DDEC()
{
  v0 = OUTLINED_FUNCTION_15_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3_1(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_23_15();
  return OUTLINED_FUNCTION_31_10(v9, v10);
}

uint64_t objectdestroy_27Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3_0(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 232) & ~v6;
  v9 = *(v8 + 64);
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 7);
  __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 17);
  __swift_destroy_boxed_opaque_existential_1(v2 + 22);
  v10 = v2[27];

  v11 = v2[28];

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + v9, v6 | 7);
}

uint64_t sub_26664DFAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  OUTLINED_FUNCTION_3_3(v1);
  return sub_26664B590(v0 + 16, *(v0 + 224), v0 + ((*(v2 + 80) + 232) & ~*(v2 + 80)), &qword_28007EFA8, &qword_266677670);
}

unint64_t sub_26664E028()
{
  result = qword_28007FE30;
  if (!qword_28007FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE30);
  }

  return result;
}

unint64_t sub_26664E07C()
{
  result = qword_28007FE38;
  if (!qword_28007FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE38);
  }

  return result;
}

uint64_t sub_26664E0D0()
{
  OUTLINED_FUNCTION_48_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266640A48;
  v2 = OUTLINED_FUNCTION_45();

  return sub_26664BC20(v2, v3, v4);
}

uint64_t sub_26664E170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_26()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + v1));
  __swift_destroy_boxed_opaque_existential_1((v0 + v1 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + v1 + 80));
  v2 = *(v0 + v1 + 120);
}

uint64_t OUTLINED_FUNCTION_10_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_destroy_boxed_opaque_existential_1((v10 + a10));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 40));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 80));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 120));
  __swift_destroy_boxed_opaque_existential_1((v10 + a10 + 160));
  v11 = *(v10 + a10 + 200);
}

uint64_t OUTLINED_FUNCTION_12_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

uint64_t OUTLINED_FUNCTION_17_15()
{
  v2 = (v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  __swift_destroy_boxed_opaque_existential_1(v2 + 10);
  __swift_destroy_boxed_opaque_existential_1(v2 + 15);
  v3 = v2[20];
}

uint64_t OUTLINED_FUNCTION_31_10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  return sub_26664B508(v3 + v5, a1, v3 + a2, v2, v4);
}

uint64_t OUTLINED_FUNCTION_33_10()
{
}

uint64_t Snippet.EventGroup.init(dateHeader:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_266668D38();
  OUTLINED_FUNCTION_18_2(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for Snippet.EventGroup();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for Snippet.EventGroup()
{
  result = qword_28156C860;
  if (!qword_28156C860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.EventGroup.dateHeader.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266668D38();
  v4 = OUTLINED_FUNCTION_18_2(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Snippet.EventGroup.dateHeader.setter()
{
  OUTLINED_FUNCTION_17_7();
  v2 = sub_266668D38();
  v3 = OUTLINED_FUNCTION_18_2(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Snippet.EventGroup.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippet.EventGroup() + 20));
}

uint64_t Snippet.EventGroup.events.setter()
{
  OUTLINED_FUNCTION_17_7();
  v2 = *(type metadata accessor for Snippet.EventGroup() + 20);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*Snippet.EventGroup.events.modify())(void)
{
  OUTLINED_FUNCTION_17_7();
  v0 = *(type metadata accessor for Snippet.EventGroup() + 20);
  return nullsub_1;
}

uint64_t sub_26664E62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6461654865746164 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26664E6F8(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x6461654865746164;
  }
}

uint64_t sub_26664E738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26664E62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26664E760(uint64_t a1)
{
  v2 = sub_26664E9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26664E79C(uint64_t a1)
{
  v2 = sub_26664E9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.EventGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FE40, &qword_26667B748);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v18[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26664E9B8();
  sub_26666CBE8();
  v20 = 0;
  sub_266668D38();
  OUTLINED_FUNCTION_0_45();
  sub_26664EE00(v15, v16);
  OUTLINED_FUNCTION_5_32();
  if (!v2)
  {
    v19 = *(v3 + *(type metadata accessor for Snippet.EventGroup() + 20));
    v18[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
    sub_26664ED64(&qword_28007F540, &qword_28007E178);
    OUTLINED_FUNCTION_5_32();
  }

  return (*(v8 + 8))(v13, v5);
}

unint64_t sub_26664E9B8()
{
  result = qword_28007FE48;
  if (!qword_28007FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE48);
  }

  return result;
}

uint64_t Snippet.EventGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_266668D38();
  v4 = OUTLINED_FUNCTION_3_0(v39);
  v36 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FE50, &qword_26667B750);
  v37 = OUTLINED_FUNCTION_3_0(v11);
  v38 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v37, v15);
  v16 = type metadata accessor for Snippet.EventGroup();
  v17 = OUTLINED_FUNCTION_18_2(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26664E9B8();
  sub_26666CBD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v16;
  v24 = v36;
  v42 = 0;
  OUTLINED_FUNCTION_0_45();
  sub_26664EE00(v25, v26);
  v27 = v39;
  sub_26666C9E8();
  v28 = *(v24 + 32);
  v33 = v22;
  v28(v22, v10, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
  v41 = 1;
  sub_26664ED64(&qword_28007F600, &qword_28007E170);
  sub_26666C9E8();
  v29 = OUTLINED_FUNCTION_2_42();
  v30(v29);
  v31 = v33;
  *&v33[*(v34 + 20)] = v40;
  sub_26664EE48(v31, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26664EEAC(v31);
}

uint64_t sub_26664ED64(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F538, &unk_266678A58);
    sub_26664EE00(a2, type metadata accessor for Snippet.Event);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26664EE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26664EE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.EventGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26664EEAC(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.EventGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26664EF60()
{
  sub_266668D38();
  if (v0 <= 0x3F)
  {
    sub_26662B714();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s10EventGroupV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26664F0C4()
{
  result = qword_28007FE58;
  if (!qword_28007FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE58);
  }

  return result;
}

unint64_t sub_26664F11C()
{
  result = qword_28007FE60;
  if (!qword_28007FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE60);
  }

  return result;
}

unint64_t sub_26664F174()
{
  result = qword_28007FE68;
  if (!qword_28007FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FE68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_32()
{

  return sub_26666CA78();
}

uint64_t sub_26664F214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26664F238, 0, 0);
}

uint64_t sub_26664F238()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[7] = &_s16ResponseStrategyVN;
  v0[8] = &off_28780C610;
  v4 = swift_allocObject();
  v0[4] = v4;
  sub_26664F318(v1, v4 + 16);
  v0[2] = v3;
  v0[3] = v2;
  sub_2665A27EC();
  v5 = v3;
  v6 = v2;
  v7 = sub_266669528();
  sub_2665A2724((v0 + 2));
  v8 = v0[1];

  return v8(v7);
}

void sub_26664F374(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = sub_266669FF8();
  v6 = OUTLINED_FUNCTION_3_0(v76);
  v82 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  OUTLINED_FUNCTION_10_5();
  v75 = v11 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v72 = &v58 - v15;
  OUTLINED_FUNCTION_19_4();
  v74 = sub_266669EC8();
  v16 = OUTLINED_FUNCTION_3_0(v74);
  v81 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16, v20);
  OUTLINED_FUNCTION_10_5();
  v73 = v21 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v78 = &v58 - v25;
  OUTLINED_FUNCTION_19_4();
  v71 = sub_266669F98();
  v26 = OUTLINED_FUNCTION_3_0(v71);
  v79 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26, v30);
  OUTLINED_FUNCTION_1_0();
  v33 = v32 - v31;
  v34 = sub_26666A088();
  v35 = OUTLINED_FUNCTION_3_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35, v40);
  OUTLINED_FUNCTION_10_5();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v58 - v46;
  v80 = a1;
  v48 = sub_2665C485C(a1);
  if (v48)
  {
    v83 = MEMORY[0x277D84F90];
    v77 = v48;
    sub_266633930();
    if ((v77 & 0x8000000000000000) == 0)
    {
      v69 = v33;
      v58 = v47;
      v59 = v43;
      v60 = v37;
      v61 = v34;
      v49 = 0;
      v50 = v83;
      v70 = v80 & 0xC000000000000001;
      v62 = a2;
      v63 = v80 & 0xFFFFFFFFFFFFFF8;
      v67 = (v82 + 16);
      v68 = (v81 + 16);
      v65 = (v81 + 8);
      v66 = (v82 + 8);
      v64 = v79 + 32;
      while (!__OFADD__(v49, 1))
      {
        if (v70)
        {
          MEMORY[0x266788B60](v49, v80);
          v51 = v78;
        }

        else
        {
          v51 = v78;
          if (v49 >= *(v63 + 16))
          {
            goto LABEL_17;
          }

          v52 = *(v80 + 8 * v49 + 32);
        }

        sub_266575F1C();
        if (v3)
        {

          return;
        }

        v81 = v49 + 1;
        v82 = 0;
        v53 = v72;
        sub_266669FE8();
        v54 = v74;
        (*v68)(v73, v51, v74);
        sub_266669FD8();
        sub_266669F88();
        v55 = v51;
        v56 = v76;
        (*v67)(v75, v53, v76);
        sub_266669F68();

        (*v66)(v53, v56);
        (*v65)(v55, v54);
        v83 = v50;
        v57 = *(v50 + 16);
        if (v57 >= *(v50 + 24) >> 1)
        {
          sub_266633930();
          v50 = v83;
        }

        *(v50 + 16) = v57 + 1;
        (*(v79 + 32))(v50 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v57, v33, v71);
        ++v49;
        v3 = v82;
        if (v81 == v77)
        {
          v34 = v61;
          v37 = v60;
          v43 = v59;
          v47 = v58;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_26666A078();
    sub_26666A068();
    sub_26666A048();
    (*(v37 + 16))(v43, v47, v34);
    sub_26666A008();
    (*(v37 + 8))(v47, v34);
  }
}

uint64_t sub_26664F8BC()
{
  v1 = sub_266669EC8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  OUTLINED_FUNCTION_1_0();
  v4 = sub_266669FC8();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_10_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v19 - v16;
  sub_266669FB8();
  sub_266575F1C();
  if (!v0)
  {
    sub_266669FA8();
    sub_26666A048();
    (*(v7 + 16))(v13, v17, v4);
    sub_26666A038();
  }

  return (*(v7 + 8))(v17, v4);
}

uint64_t sub_26664FA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = sub_266668D68();
  v3 = OUTLINED_FUNCTION_3_0(v78);
  v76 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  OUTLINED_FUNCTION_1_0();
  v72 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE70, &qword_26667B8D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v77 = &v69 - v13;
  OUTLINED_FUNCTION_19_4();
  v73 = sub_266669EB8();
  v14 = OUTLINED_FUNCTION_3_0(v73);
  v70 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14, v18);
  OUTLINED_FUNCTION_1_0();
  v74 = v20 - v19;
  OUTLINED_FUNCTION_19_4();
  v75 = sub_266669F18();
  v21 = OUTLINED_FUNCTION_3_0(v75);
  v82 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21, v25);
  OUTLINED_FUNCTION_10_5();
  v71 = v26 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v69 - v30;
  v32 = sub_266669F98();
  v33 = OUTLINED_FUNCTION_3_0(v32);
  v80 = v34;
  v81 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33, v37);
  OUTLINED_FUNCTION_10_5();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v69 - v43;
  v45 = sub_266669EC8();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8, v47);
  OUTLINED_FUNCTION_1_0();
  v48 = sub_26666A0B8();
  v49 = OUTLINED_FUNCTION_3_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49, v54);
  OUTLINED_FUNCTION_10_5();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v69 - v60;
  sub_26666A0A8();
  if (a1)
  {
    v69 = v31;

    v62 = v83;
    sub_266575F1C();
    if (v62)
    {
      (*(v51 + 8))(v61, v48);
    }

    v83 = 0;
    sub_26666A098();

    v31 = v69;
  }

  sub_266669F88();
  v64 = *(v51 + 16);
  v69 = v48;
  v64(v57, v61, v48);
  sub_266669F78();
  sub_266669F08();
  (*(v80 + 16))(v40, v44, v81);
  sub_266669EF8();
  sub_26666A048();
  v65 = v75;
  (*(v82 + 16))(v71, v31, v75);
  sub_26666A028();
  v66 = v72;
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  v67 = v77;
  sub_26666A0C8();
  (*(v76 + 8))(v66, v78);
  v68 = v73;
  if (__swift_getEnumTagSinglePayload(v67, 1, v73) == 1)
  {
    sub_266669EA8();
    if (__swift_getEnumTagSinglePayload(v67, 1, v68) != 1)
    {
      sub_26664FF84(v67);
    }
  }

  else
  {
    (*(v70 + 32))(v74, v67, v68);
  }

  sub_26666A018();
  (*(v82 + 8))(v31, v65);
  (*(v80 + 8))(v44, v81);
  return (*(v51 + 8))(v61, v69);
}

uint64_t sub_26664FF84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE70, &qword_26667B8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26664FFEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_26666C548();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_26667B968;
  v11[5] = v10;
  sub_266650F94(0, 0, v8, &unk_26667B978, v11);
}

uint64_t sub_2666500FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_266650110()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider), *(v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider + 24));
  v3 = sub_2666514D8(v1, *v2, sub_26665145C);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2666501BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266650280;

  return sub_2666500FC(v6);
}

uint64_t sub_266650280()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  OUTLINED_FUNCTION_24_1();

  return v10();
}

uint64_t sub_2666503D0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666503E4()
{
  OUTLINED_FUNCTION_36_0();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  v2 = __swift_project_value_buffer(v1, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v5);
    OUTLINED_FUNCTION_4_43(&dword_266549000, v6, v4, "[DeleteEvent.IntentHandler] resolving delete all occurrences");
    OUTLINED_FUNCTION_12();
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  v9 = sub_26665145C(v7);
  v11 = v10;
  v12 = *__swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider), *(v8 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider + 24));
  v13 = type metadata accessor for EventProvider();
  OUTLINED_FUNCTION_48_0(v13, &off_287806290);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v11)
  {
    v14 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    v15 = sub_26655A8B4();
    v16 = sub_26665140C(v9, v11, v15);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v16)
    {
      if ([v16 hasRecurrenceRules])
      {
        v17 = [*(v0 + 96) deleteAllOccurrences];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 BOOLValue];

          v20 = sub_26666C148();
          v21 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v21))
          {
            v22 = OUTLINED_FUNCTION_20();
            *v22 = 0;
            _os_log_impl(&dword_266549000, v20, v2, "[DeleteEvent.IntentHandler] Event is recurring and intent has a value for deleteAllOccurrences, returning .success", v22, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          v23 = [objc_opt_self() successWithResolvedValue_];
        }

        else
        {
          v33 = sub_26666C148();
          v34 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_1(v34))
          {
            v35 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_28_3(v35);
            OUTLINED_FUNCTION_4_43(&dword_266549000, v36, v2, "[DeleteEvent.IntentHandler] Event is recurring but intent.deleteAllOccurrences is nil, returning .needsValue");
            OUTLINED_FUNCTION_12();
          }

          v37 = *(v0 + 104);

          *(v37 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_promptedForEventRecurrence) = 1;
          sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
          v23 = [swift_getObjCClassFromMetadata() needsValue];
        }
      }

      else
      {
        v29 = sub_26666C148();
        v30 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v30))
        {
          v31 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v31);
          OUTLINED_FUNCTION_4_43(&dword_266549000, v32, v2, "[DeleteEvent.IntentHandler] Event does not have recurrence, returning .notRequired");
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
        v23 = [swift_getObjCClassFromMetadata() notRequired];
      }

      v28 = v23;

      goto LABEL_23;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v24 = sub_26666C148();
  v25 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v25))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v26, v27, "[DeleteEvent.IntentHandler] No EKEvent found for target event id, returning .unsupported");
    OUTLINED_FUNCTION_4_1();
  }

  sub_266552C44(0, &unk_28007DC80, 0x277CD3AB8);
  v28 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_23:
  v38 = *(v0 + 8);

  return v38(v28);
}

uint64_t sub_2666507D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266651F1C;

  return sub_2666503D0(v6);
}

uint64_t sub_266650894(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666508A8()
{
  OUTLINED_FUNCTION_36_0();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = sub_26666C168();
  v2 = __swift_project_value_buffer(v1, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v5);
    OUTLINED_FUNCTION_4_43(&dword_266549000, v6, v4, "[DeleteEvent.IntentHandler] running handle");
    OUTLINED_FUNCTION_12();
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 104);

  v9 = sub_26665145C(v7);
  v11 = v10;
  v12 = (v8 + OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_eventProvider);
  v13 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v14 = type metadata accessor for EventProvider();
  OUTLINED_FUNCTION_48_0(v14, &off_287806290);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v11)
  {
    v15 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

    v16 = sub_26655A8B4();
    v17 = sub_26665140C(v9, v11, v16);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v17)
    {
      v18 = [*(v0 + 96) deleteAllOccurrences];
      v21 = 0;
      if (v18)
      {
        v19 = v18;
        v20 = [v18 BOOLValue];

        if (v20)
        {
          v21 = 1;
        }
      }

      v27 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v28 = sub_26655BFAC(v17, v21);
      v29 = sub_26666C148();
      if (v28)
      {
        v30 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v30))
        {
          v31 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v31);
          OUTLINED_FUNCTION_4_43(&dword_266549000, v32, v2, "[DeleteEvent.IntentHandler] event successfully deleted, returning success");
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &qword_28007D018, 0x277CD3BA0);
        v33 = 3;
      }

      else
      {
        v34 = sub_26666C5F8();
        if (OUTLINED_FUNCTION_7_1(v34))
        {
          v35 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_28_3(v35);
          OUTLINED_FUNCTION_4_43(&dword_266549000, v36, v2, "[DeleteEvent.IntentHandler] event could not be updated, returning failure");
          OUTLINED_FUNCTION_12();
        }

        sub_266552C44(0, &qword_28007D018, 0x277CD3BA0);
        v33 = 5;
      }

      v26 = sub_2665831B8(v33, 0);

      goto LABEL_23;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v22 = sub_26666C148();
  v23 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v23))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v24, v25, "[DeleteEvent.IntentHandler] unexpectedly found nil targetEventIdentifier or nonexistent event for identifier");
    OUTLINED_FUNCTION_4_1();
  }

  sub_266552C44(0, &qword_28007D018, 0x277CD3BA0);
  v26 = sub_2665831B8(5, 0);
LABEL_23:
  v37 = *(v0 + 8);

  return v37(v26);
}

uint64_t sub_266650C04(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_26664FFEC(a6, v10);
}

uint64_t sub_266650C88(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266651F1C;

  return sub_266650894(v6);
}

id sub_266650D5C()
{
  v2.receiver = v0;
  v2.super_class = _s13IntentHandlerCMa_2();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266650DC4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_26656CD98;

  return v7();
}

uint64_t sub_266650EAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26656C894;

  return v8();
}

uint64_t sub_266650F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_266651BEC(a3, v26 - v12);
  v14 = sub_26666C548();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_266651C5C(v13);
  }

  else
  {
    sub_26666C538();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a5 + 16))
  {
    v15 = *(a5 + 24);
    v16 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_26666C528();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26666C348() + 32;
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

      sub_266651C5C(a3);

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

  sub_266651C5C(a3);
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

uint64_t sub_266651230(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266651328;

  return v7(a1);
}

uint64_t sub_266651328()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_24_1();

  return v5();
}

id sub_26665140C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();
  v5 = [a3 eventWithAppEntityIdentifier_];

  return v5;
}

uint64_t sub_26665145C(void *a1)
{
  v1 = [a1 targetEventIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

id sub_2666514D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for Signpost.OpenSignpost();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v40[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EventProvider();
  v40[3] = v11;
  v40[4] = &off_287806290;
  v40[0] = a2;
  v12 = qword_28156C160;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28156D800;
  sub_26666C088();
  sub_26666C638();
  sub_26666C078();
  v14 = &v10[*(v6 + 20)];
  *v14 = "ResolveTargetEventIdentifier";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v15 = a3(a1);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = *__swift_project_boxed_opaque_existential_1(v40, v11);
    v20 = sub_26655A8B4();
    v21 = sub_26665140C(v17, v18, v20);

    if (v21)
    {
      if (([v21 isSelfOrganized] & 1) != 0 && objc_msgSend(v21, sel_isEditable))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v22 = sub_26666C168();
        __swift_project_value_buffer(v22, qword_28156D7E8);
        v23 = sub_26666C148();
        v24 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v24))
        {
          v25 = OUTLINED_FUNCTION_20();
          *v25 = 0;
          _os_log_impl(&dword_266549000, v23, v24, "#resolveTargetEventIdentifier found matching event, resolving to targetEventIdentifier and returning success", v25, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        v26 = objc_opt_self();
        v27 = sub_26666C2F8();

        v28 = [v26 successWithResolvedString_];
      }

      else
      {

        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v29 = sub_26666C168();
        __swift_project_value_buffer(v29, qword_28156D7E8);
        v30 = sub_26666C148();
        v31 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v31))
        {
          v32 = OUTLINED_FUNCTION_20();
          *v32 = 0;
          _os_log_impl(&dword_266549000, v30, v31, "#resolveTargetEventIdentifier user is attempting to update an event that they did not organize, returning unsupported .targetEventNotCreatedByUser", v32, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_266552C44(0, &unk_28007D170, 0x277CD4218);
        v28 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
      }

      goto LABEL_23;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v33 = sub_26666C168();
  __swift_project_value_buffer(v33, qword_28156D7E8);
  v34 = sub_26666C148();
  v35 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_7_2(v35))
  {
    v36 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_28_3(v36);
    OUTLINED_FUNCTION_4_43(&dword_266549000, v37, v35, "#resolveTargetEventIdentifier found no events for criteria, returning unsupported .targetEventNotFound");
    OUTLINED_FUNCTION_12();
  }

  sub_266552C44(0, &unk_28007D170, 0x277CD4218);
  v28 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_23:
  sub_26666C628();
  sub_26666C078();
  sub_266651940(v10);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v28;
}

uint64_t sub_266651940(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26665199C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_1(v5);

  return v8(v7);
}

uint64_t sub_266651A30()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16(v5);
  *v6 = v7;
  v6[1] = sub_26656CD98;

  return sub_266650DC4(v1, v2, v4);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266651B28()
{
  OUTLINED_FUNCTION_36_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16(v7);
  *v8 = v9;
  v8[1] = sub_26656CD98;

  return sub_266650EAC(v2, v3, v4, v6);
}

uint64_t sub_266651BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266651C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FE90, &qword_26667B958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266651CC4()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_25(v4);

  return v7(v6);
}

uint64_t sub_266651D5C()
{
  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_25(v4);

  return v7(v6);
}

uint64_t sub_266651DF4()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_1(v5);

  return v8(v7);
}

uint64_t sub_266651E88()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_1(v5);

  return v8(v7);
}

void OUTLINED_FUNCTION_4_43(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_8_25(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_266651F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_266669E58();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64);
  v4[8] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26665202C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  sub_266669DF8();
  v6 = sub_2665CF4BC(v1);
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB38, &qword_26667BAE0);
  v7 = sub_266669CB8();
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v9 = sub_26666C2F8();
  [v7 setValue:v8 forKeyPath:v9];

  v10 = *(v0 + 64);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);
  sub_266669CB8();
  sub_266552C44(0, &qword_28007D010, 0x277CD3B98);
  sub_266669A18();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEA8, &unk_26667BAF0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);

  OUTLINED_FUNCTION_24_1();

  return v14();
}

uint64_t sub_26665220C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v3[30] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v3[31] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v3[32] = v10;
  v11 = *(v10 - 8);
  v3[33] = v11;
  v12 = *(v11 + 64);
  v3[34] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64);
  v3[35] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v16);
  v18 = *(v17 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v19 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v19);
  v21 = *(v20 + 64);
  v3[38] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_266652788(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[45];
  v10 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v5 = v3[37];
    sub_266557D74(v3[36], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v5, &unk_28007DE30, &unk_26666EAF0);
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2666528D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 376);
  sub_266662640(1, *(v14 + 280));
  if (v15)
  {
    v17 = *(v14 + 320);
    v16 = *(v14 + 328);
    v18 = *(v14 + 304);
    v19 = *(v14 + 312);
    v21 = *(v14 + 288);
    v20 = *(v14 + 296);

    sub_266557D74(v21, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v20, &unk_28007DE30, &unk_26666EAF0);
    sub_2665AE46C(v18);
    __swift_destroy_boxed_opaque_existential_1((v14 + 176));
    v23 = *(v14 + 296);
    v22 = *(v14 + 304);
    v25 = *(v14 + 280);
    v24 = *(v14 + 288);
    v26 = *(v14 + 272);
    v28 = *(v14 + 240);
    v27 = *(v14 + 248);

    OUTLINED_FUNCTION_24_1();

    return v29();
  }

  else
  {
    v31 = *(v14 + 336);
    v32 = *(v14 + 344);
    v34 = *(v14 + 272);
    v33 = *(v14 + 280);
    v36 = *(v14 + 240);
    v35 = *(v14 + 248);
    v37 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v37);
    sub_2666696C8();
    v38 = sub_26666BB08();
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v38);
    v39 = sub_266669788();
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v39);
    sub_26656CFC4();
    v40 = swift_task_alloc();
    *(v14 + 384) = v40;
    *v40 = v14;
    v40[1] = sub_266652B28;
    v41 = *(v14 + 368);
    v42 = *(v14 + 352);
    v44 = *(v14 + 288);
    v43 = *(v14 + 296);
    v46 = *(v14 + 272);
    v45 = *(v14 + 280);
    v47 = *(v14 + 216);
    v60 = *(v14 + 336);
    v61 = *(v14 + 344);
    v58 = *(v14 + 248);
    v59 = *(v14 + 240);
    OUTLINED_FUNCTION_5_33();

    return sub_2665643AC(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_266652B28()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 368);
  v14 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 280);
  v5 = *(*v0 + 272);
  v6 = *(*v0 + 264);
  v7 = *(*v0 + 256);
  v8 = *(*v0 + 248);
  v9 = *(*v0 + 240);
  v15 = *v0;

  sub_266557D74(v9, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_266557D74(v4, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v14, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266652D90()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v8 = v0[34];
  v7 = v0[35];
  v10 = v0[30];
  v9 = v0[31];

  sub_2665AE46C(v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  OUTLINED_FUNCTION_24_1();

  return v11();
}

void sub_266652E70()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];

  sub_2665AE46C(v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v5 = v0[47];
  OUTLINED_FUNCTION_20_10();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_33();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266652F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26665351C;

  return sub_266651F74(a1, a2, a3);
}

uint64_t sub_266652FE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26665308C;

  return sub_26665220C(a1, a2);
}

uint64_t sub_26665308C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_26665317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B370] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26665351C;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

uint64_t sub_266653240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B378] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26665351C;

  return MEMORY[0x2821B9C00](a1, a2, a3, a4);
}

uint64_t sub_266653304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5C0B0] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_26665351C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2666533E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(MEMORY[0x277D5C0B8] + 4);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_26665351C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_2666534C8()
{
  result = qword_28007FEA0;
  if (!qword_28007FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEA0);
  }

  return result;
}

uint64_t sub_266653548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2666695E8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665360C, 0, 0);
}

uint64_t sub_26665360C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_266560998();

  v7 = v4;
  v8 = v6;
  sub_2666695D8();
  sub_266669608();
  v9 = sub_2666695F8();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_2666536FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266653E08;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2666537C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266653E08;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_266653884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266653E08;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_266653948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B5F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = sub_266653DB4();
  *v8 = v3;
  v8[1] = sub_266653E08;

  return MEMORY[0x2821B9FD8](a1, a2, a3, v9);
}

uint64_t sub_266653A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266653E08;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_266653AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266653E08;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_266653B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266553FF0;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_266653C58(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266553434;

  return sub_266653548(a1, a2, v6);
}

unint64_t sub_266653D08()
{
  result = qword_28156CDD0;
  if (!qword_28156CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CDD0);
  }

  return result;
}

unint64_t sub_266653D60()
{
  result = qword_28156CDD8;
  if (!qword_28156CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CDD8);
  }

  return result;
}

unint64_t sub_266653DB4()
{
  result = qword_28156CDE0[0];
  if (!qword_28156CDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156CDE0);
  }

  return result;
}

id sub_266653E0C(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_allocWithZone(MEMORY[0x277CD4F00]) initWithPlacemark_];
  v4 = [objc_allocWithZone(MEMORY[0x277CD4E80]) initWithPlacemark_];

  v5 = [ObjCClassFromMetadata locationWithMapItem_];
  return v5;
}

uint64_t sub_266653EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266653EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 176) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266653F68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266669E58();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v3, v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v54 - v13;
  v15 = sub_266669E48();
  v16 = OUTLINED_FUNCTION_3_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266669DF8();
  if ((*(v5 + 88))(v14, v2) != *MEMORY[0x277D5C150])
  {
    (*(v5 + 8))(v14, v2);
LABEL_9:
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    sub_266669DF8();
    sub_26659AC88(v11, &v63);
    (*(v5 + 8))(v11, v2);
    sub_26664DAA4(&v63, v62, &unk_28007D200, &qword_26666FD20);
    if (v62[40] != 255)
    {
      sub_26664DAA4(v62, &v58, &unk_28007D200, &qword_26666FD20);
      if (!v61)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1();
        }

        v44 = sub_26666C168();
        __swift_project_value_buffer(v44, qword_28156D7E8);
        v45 = sub_26666C148();
        v46 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_2(v46))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_29_2(&dword_266549000, v47, v48, "[CreateEvent.NeedsValueStrategy] actionForInput returning .handle()");
          OUTLINED_FUNCTION_4_1();
        }

        sub_2666697D8();
        sub_26656CAEC(&v63, &unk_28007D200, &qword_26666FD20);
        sub_266553988(&v58);
        return sub_26656CAEC(v62, &unk_28007D200, &qword_26666FD20);
      }

      if (v61 == 5)
      {
        v29 = vorrq_s8(v59, v60);
        if (!(*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)) | v58))
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v49 = sub_26666C168();
          __swift_project_value_buffer(v49, qword_28156D7E8);
          v50 = sub_26666C148();
          v51 = sub_26666C618();
          if (OUTLINED_FUNCTION_7_2(v51))
          {
            *OUTLINED_FUNCTION_20() = 0;
            OUTLINED_FUNCTION_29_2(&dword_266549000, v52, v53, "[CreateEvent.NeedsValueStrategy] actionForInput returning .cancel()");
            OUTLINED_FUNCTION_4_1();
          }

          sub_2666697C8();
          goto LABEL_26;
        }
      }

      sub_266553988(&v58);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    sub_26664DAA4(&v63, &v58, &unk_28007D200, &qword_26666FD20);
    v31 = sub_26666C148();
    v32 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v32))
    {
      v33 = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_13_0();
      v57 = v34;
      *v33 = 136315138;
      sub_26664DAA4(&v58, v56, &unk_28007D200, &qword_26666FD20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v35 = sub_26666C318();
      v37 = v36;
      sub_26656CAEC(&v58, &unk_28007D200, &qword_26666FD20);
      v38 = sub_2665BFC90(v35, v37, &v57);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_266549000, v31, v32, "[CreateEvent.NeedsValueStrategy] actionForInput returning .ignore() for unsupported task: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_26656CAEC(&v58, &unk_28007D200, &qword_26666FD20);
    }

    sub_2666697E8();
LABEL_26:
    sub_26656CAEC(&v63, &unk_28007D200, &qword_26666FD20);
    return sub_26656CAEC(v62, &unk_28007D200, &qword_26666FD20);
  }

  v54 = a1;
  (*(v5 + 96))(v14, v2);
  (*(v18 + 32))(v23, v14, v15);
  v24 = sub_266669E28();
  v26 = v25;
  v63 = 0xD000000000000028;
  v64 = 0x800000026667D640;
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0x6F4674706D6F7270, 0xEE00656C74695472);
  if (v24 == v63 && v26 == v64)
  {
  }

  else
  {
    v28 = sub_26666CAC8();

    if ((v28 & 1) == 0)
    {
      (*(v18 + 8))(v23, v15);
      goto LABEL_9;
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v39 = sub_26666C168();
  __swift_project_value_buffer(v39, qword_28156D7E8);
  v40 = sub_26666C148();
  v41 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v41))
  {
    v42 = OUTLINED_FUNCTION_20();
    *v42 = 0;
    _os_log_impl(&dword_266549000, v40, v41, "[CreateEvent.NeedsValueStrategy] actionForInput returning .handle() for DIPromptForTitle", v42, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697D8();
  return (*(v18 + 8))(v23, v15);
}

uint64_t sub_266654674()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_266669AE8();
  v1[6] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  v1[9] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEB8, &qword_26667BD98);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v16 = sub_266669E58();
  v1[16] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_19();
  v20 = sub_266669E48();
  v1[19] = v20;
  OUTLINED_FUNCTION_3_1(v20);
  v1[20] = v21;
  v23 = *(v22 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_26665487C()
{
  OUTLINED_FUNCTION_14_8();
  v2 = v0 + 18;
  v1 = v0[18];
  v4 = v0 + 17;
  v3 = v0[17];
  v6 = v0 + 16;
  v5 = v0[16];
  v7 = v0[3];
  sub_266669DF8();
  if ((*(v3 + 88))(v1, v5) != *MEMORY[0x277D5C150])
  {
    goto LABEL_3;
  }

  v2 = v0 + 22;
  v8 = v0[22];
  v4 = v0 + 20;
  v9 = v0[20];
  v6 = v0 + 19;
  v10 = v0[19];
  v11 = v0[21];
  v12 = v0[18];
  (*(v0[17] + 96))(v12, v0[16]);
  (*(v9 + 32))(v8, v12, v10);
  (*(v9 + 16))(v11, v8, v10);
  sub_266563654();
  v0[23] = v14;
  if (v14 != 1)
  {
    v22 = v13;
    v23 = v14;
    v0[24] = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[25] = v24;
    *v24 = v25;
    v24[1] = sub_266654AA8;
    v26 = v0[15];
    v27 = v0[4];
    v28 = v0[5];

    return sub_266655478(v26, v22, v23, v27);
  }

  else
  {
LABEL_3:
    (*(*v4 + 8))(*v2, *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[27] = v15;
    *v15 = v16;
    v15[1] = sub_266654F10;
    v17 = v0[14];
    v18 = v0[4];
    v19 = v0[5];
    v20 = v0[3];

    return sub_2666556A8(v17, v20, v18);
  }
}

uint64_t sub_266654AA8()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[24];
  v7 = v4[23];
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  *(v10 + 208) = v0;

  sub_2665695F8(v6, v7);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266654BE4()
{
  v55 = v2;
  (*(v2[20] + 8))(v2[22], v2[19]);
  sub_26664E170(v2[15], v2[2], &qword_28007FEB8, &qword_26667BD98);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v7 = OUTLINED_FUNCTION_18_12();
  __swift_project_value_buffer(v7, qword_28156D7E8);
  v8 = OUTLINED_FUNCTION_23_16();
  v9(v8);
  sub_26664DAA4(v3, v1, &qword_28007FEB8, &qword_26667BD98);
  v10 = sub_26666C148();
  v11 = sub_26666C618();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v2[13];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_9_27();
    v49 = swift_slowAlloc();
    v51 = OUTLINED_FUNCTION_13_0();
    v54 = v51;
    OUTLINED_FUNCTION_39_7(4.8151e-34);
    sub_266669AD8();
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v5 + 8))(v6, v3);
    v17 = sub_2665BFC90(v4, v10, &v54);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    v18 = v47;
    sub_26664DAA4(v13, v47, &qword_28007FEB8, &qword_26667BD98);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    OUTLINED_FUNCTION_44_6(v19);
    if (v20)
    {
      v28 = sub_26656CAEC(v47, &qword_28007FEB8, &qword_26667BD98);
    }

    else
    {
      sub_266669A08();
      OUTLINED_FUNCTION_31_11();
      v28 = (*(v27 + 8))(v47, v3);
    }

    v36 = OUTLINED_FUNCTION_25_15(v28, v29, v30, v31, v32, v33, v34, v35, v45, v47, v49);
    sub_26656CAEC(v36, &qword_28007FEB8, &qword_26667BD98);
    OUTLINED_FUNCTION_27_18(&dword_266549000, v37, v38, "[CreateEvent.NeedsValueStrategy] Updated intent after prompt for %s: %@", v39, v40, v41, v42, v46, v48, v50, v51, *v53, v53[4]);
    sub_26656CAEC(v0, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    v21 = v2[10];
    v22 = v2[11];
    v23 = v2[9];

    sub_26656CAEC(v13, &qword_28007FEB8, &qword_26667BD98);
    v24 = *(v21 + 8);
    v25 = OUTLINED_FUNCTION_34_2();
    v26(v25);
  }

  OUTLINED_FUNCTION_19_20();

  OUTLINED_FUNCTION_5_3();

  return v43();
}

uint64_t sub_266654F10()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665500C()
{
  v55 = v2;
  sub_26664E170(v2[14], v2[2], &qword_28007FEB8, &qword_26667BD98);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v7 = OUTLINED_FUNCTION_18_12();
  __swift_project_value_buffer(v7, qword_28156D7E8);
  v8 = OUTLINED_FUNCTION_23_16();
  v9(v8);
  sub_26664DAA4(v3, v1, &qword_28007FEB8, &qword_26667BD98);
  v10 = sub_26666C148();
  v11 = sub_26666C618();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v2[13];
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_9_27();
    v49 = swift_slowAlloc();
    v51 = OUTLINED_FUNCTION_13_0();
    v54 = v51;
    OUTLINED_FUNCTION_39_7(4.8151e-34);
    sub_266669AD8();
    v15 = OUTLINED_FUNCTION_24_13();
    v16(v15);
    (*(v5 + 8))(v6, v3);
    v17 = sub_2665BFC90(v4, v10, &v54);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    v18 = v47;
    sub_26664DAA4(v13, v47, &qword_28007FEB8, &qword_26667BD98);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    OUTLINED_FUNCTION_44_6(v19);
    if (v20)
    {
      v28 = sub_26656CAEC(v47, &qword_28007FEB8, &qword_26667BD98);
    }

    else
    {
      sub_266669A08();
      OUTLINED_FUNCTION_31_11();
      v28 = (*(v27 + 8))(v47, v3);
    }

    v36 = OUTLINED_FUNCTION_25_15(v28, v29, v30, v31, v32, v33, v34, v35, v45, v47, v49);
    sub_26656CAEC(v36, &qword_28007FEB8, &qword_26667BD98);
    OUTLINED_FUNCTION_27_18(&dword_266549000, v37, v38, "[CreateEvent.NeedsValueStrategy] Updated intent after prompt for %s: %@", v39, v40, v41, v42, v46, v48, v50, v51, *v53, v53[4]);
    sub_26656CAEC(v0, &unk_28007DCA0, &qword_26666E370);
    OUTLINED_FUNCTION_4_1();
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    v21 = v2[10];
    v22 = v2[11];
    v23 = v2[9];

    sub_26656CAEC(v13, &qword_28007FEB8, &qword_26667BD98);
    v24 = *(v21 + 8);
    v25 = OUTLINED_FUNCTION_34_2();
    v26(v25);
  }

  OUTLINED_FUNCTION_19_20();

  OUTLINED_FUNCTION_5_3();

  return v43();
}

uint64_t sub_266655320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  (*(v12[20] + 8))(v12[22], v12[19]);
  v13 = v12[26];
  OUTLINED_FUNCTION_17_16();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2666553D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  v13 = *(v12 + 224);
  OUTLINED_FUNCTION_17_16();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_266655478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_26665549C, 0, 0);
}

uint64_t sub_26665549C()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
    v5 = sub_266669CB8();
    v0[5] = MEMORY[0x277D837D0];
    v0[2] = v3;
    v0[3] = v1;

    sub_266582A50(0, v0 + 2, 0, 1, 0);
    v11 = v0[6];
    v12 = v0[7];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_2665A6960();
    sub_266669A18();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    v14 = v11;
    v15 = 0;
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v6 = sub_26666C168();
    __swift_project_value_buffer(v6, qword_28156D7E8);
    v7 = sub_26666C148();
    v8 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_2(v8))
    {
      v9 = OUTLINED_FUNCTION_20();
      *v9 = 0;
      _os_log_impl(&dword_266549000, v7, v8, "[CreateEvent.NeedsValueStrategy] DIPromptForTitle.title is nil returning nil prompt answer", v9, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v10 = v0[6];

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
    v14 = v10;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v13);
  OUTLINED_FUNCTION_5_3();

  return v16();
}

uint64_t sub_2666556A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_266669E18();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_266669E58();
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665580C, 0, 0);
}

void sub_26665580C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1(*(v0 + 128), *(*(v0 + 128) + 24));
  sub_266669DF8();
  sub_26659AC88(v1, v0 + 16);
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 255)
    {
      sub_26656CAEC(v0 + 16, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v0 + 16);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = *(v13 + 16);
    v18 = OUTLINED_FUNCTION_34_2();
    v19(v18);
    v20 = sub_26666C148();
    v21 = sub_26666C608();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 192);
      v23 = *(v0 + 176);
      v25 = *(v0 + 144);
      v24 = *(v0 + 152);
      v26 = *(v0 + 136);
      v27 = swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_13_0();
      v61 = v28;
      *v27 = 136315138;
      sub_266669DF8();
      v29 = sub_26666C318();
      v31 = v30;
      (*(v25 + 8))(v24, v26);
      v32 = sub_2665BFC90(v29, v31, &v61);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_266549000, v20, v21, "[CreateEvent.NeedsValueStrategy.parseValueResponse] Did not find an .createEvent task from parse: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v34 = *(v0 + 144);
      v33 = *(v0 + 152);
      v35 = *(v0 + 136);

      v36 = *(v34 + 8);
      v37 = OUTLINED_FUNCTION_34_2();
      v38(v37);
    }

    v39 = *(v0 + 192);
    v41 = *(v0 + 160);
    v40 = *(v0 + 168);
    v42 = *(v0 + 152);
    sub_26656CBFC();
    swift_allocError();
    *v43 = 0u;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 2;
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_14_2();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 120);
  sub_2665536F8((v0 + 16), v0 + 64);
  v6 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  v7 = sub_266669CB8();
  v8 = [v7 dateTimeRange];

  if (v8)
  {
    v9 = [v8 startDate];

    if (v9)
    {
      v10 = *(v0 + 160);
      sub_266668CE8();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v52 = *(v0 + 160);
    v51 = *(v0 + 168);
    v53 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v52, v11, 1, v53);
    sub_26664E170(v52, v51, &qword_28007D140, &qword_26666F140);
  }

  else
  {
    v46 = *(v0 + 168);
    sub_266668D38();
    v47 = OUTLINED_FUNCTION_14_16();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }

  v54 = *(v6 + 24);
  v60 = v54 + *v54;
  v55 = v54[1];
  v56 = swift_task_alloc();
  *(v0 + 208) = v56;
  *v56 = v0;
  v56[1] = sub_266655CB8;
  v57 = *(v0 + 168);
  OUTLINED_FUNCTION_14_2();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_266655CB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v4 = *(v3 + 208);
  v5 = *(v3 + 168);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v9 + 216) = v8;

  sub_26656CAEC(v5, &qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266655DD0()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[21];
  v14 = v0[19];
  v6 = v0[15];
  v7 = v0[13];
  v8 = sub_266669CB8();
  sub_266582C3C(v1, 1);

  v9 = sub_266669CC8();
  v10 = [v9 resolvedValue];

  sub_26666C718();
  swift_unknownObjectRelease();
  sub_2665A6960();
  sub_266669A18();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEC0, &unk_26667BDA8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_14_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266655F28()
{
  OUTLINED_FUNCTION_14();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = *(v5 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v9 = *(v8 + 64);
  v1[22] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v1[23] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[24] = v11;
  v13 = *(v12 + 64);
  v1[25] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v14);
  v16 = *(v15 + 64);
  v1[26] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v17);
  v19 = *(v18 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v20 = sub_266669AE8();
  v1[29] = v20;
  OUTLINED_FUNCTION_3_1(v20);
  v1[30] = v21;
  v23 = *(v22 + 64);
  v1[31] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2666560E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  v12 = *(v10 + 240);
  v11 = *(v10 + 248);
  v13 = *(v10 + 232);
  v14 = *(v10 + 152);
  *(v10 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB40, &qword_266671AA0);
  sub_266669CD8();
  v15 = sub_266669AD8();
  v17 = v16;
  (*(v12 + 8))(v11, v13);

  v18 = sub_2665FAB78();
  *(v10 + 344) = v18;
  if (v18 != 4)
  {

    v20 = 0xE800000000000000;
    v21 = 0x6E6F697461636F6CLL;
    switch(v22)
    {
      case 1:
        v37 = *(*(v10 + 160) + 80);
        v38 = swift_task_alloc();
        *(v10 + 272) = v38;
        *v38 = v10;
        v38[1] = sub_26665656C;
        OUTLINED_FUNCTION_5_33();

        return sub_266657924();
      case 2:
        goto LABEL_8;
      case 3:
        v20 = 0xEC00000073746E61;
        v21 = 0x7069636974726170;
LABEL_8:
        sub_2665FB52C();
        swift_allocError();
        *v27 = v21;
        v27[1] = v20;
        goto LABEL_9;
      default:
        v23 = *(*(v10 + 160) + 80);
        v24 = swift_task_alloc();
        *(v10 + 264) = v24;
        *v24 = v10;
        v24[1] = sub_266656390;
        OUTLINED_FUNCTION_5_33();

        return sub_266657AD8();
    }
  }

  sub_26656CBFC();
  swift_allocError();
  *v19 = v15;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 1;
LABEL_9:
  swift_willThrow();
  v28 = *(v10 + 248);
  OUTLINED_FUNCTION_16_19();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_33();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_266656390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_5_1();
  v13 = v12;
  OUTLINED_FUNCTION_11_2();
  *v14 = v13;
  v13[12] = v11;
  v13[13] = v15;
  v13[14] = v10;
  v17 = *(v16 + 264);
  v18 = *v11;
  OUTLINED_FUNCTION_5_0();
  *v19 = v18;

  if (v10)
  {
    OUTLINED_FUNCTION_40_5();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_5_33();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_5_33();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }
}

uint64_t sub_2666564EC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26_13(v0[13]);
  v0[39] = OUTLINED_FUNCTION_33_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[40] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_44(v1);

  return sub_266656E70(v3, v4, v5);
}

uint64_t sub_26665656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_5_1();
  v13 = v12;
  OUTLINED_FUNCTION_11_2();
  *v14 = v13;
  v13[15] = v11;
  v13[16] = v15;
  v13[17] = v10;
  v17 = *(v16 + 272);
  v18 = *v11;
  OUTLINED_FUNCTION_5_0();
  *v19 = v18;

  if (v10)
  {
    OUTLINED_FUNCTION_40_5();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_5_33();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_5_33();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }
}

uint64_t sub_2666566C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26_13(v0[16]);
  v0[39] = OUTLINED_FUNCTION_33_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[40] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_44(v1);

  return sub_266656E70(v3, v4, v5);
}

uint64_t sub_266656748()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *(v2 + 320);
  *v4 = *v1;
  *(v3 + 328) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266656874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_9_3();
  v15 = *(v14 + 328);
  v16 = *(v14 + 344);
  v17 = *(v14 + 208);
  v18 = *(v14 + 216);
  type metadata accessor for Snippet();
  v19 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  *(v14 + 56) = v16;
  *(v14 + 80) = &type metadata for CreateEvent.Parameter;
  *(v14 + 88) = &off_28780A1C0;
  sub_266663128(v17);
  if (v15)
  {
    v24 = *(v14 + 216);
    v23 = *(v14 + 224);

    sub_26656CAEC(v24, &unk_28007DE30, &unk_26666EAF0);
    sub_26656CAEC(v23, &unk_28007DE30, &unk_26666EAF0);
    __swift_destroy_boxed_opaque_existential_1((v14 + 56));
    __swift_destroy_boxed_opaque_existential_1((v14 + 16));
    v25 = *(v14 + 248);
    v26 = *(v14 + 216);
    v27 = *(v14 + 224);
    v29 = *(v14 + 200);
    v28 = *(v14 + 208);
    v31 = *(v14 + 168);
    v30 = *(v14 + 176);

    OUTLINED_FUNCTION_24_1();

    return v32();
  }

  else
  {
    v35 = *(v14 + 288);
    v34 = *(v14 + 296);
    v37 = *(v14 + 200);
    v36 = *(v14 + 208);
    v39 = *(v14 + 168);
    v38 = *(v14 + 176);
    __swift_destroy_boxed_opaque_existential_1((v14 + 56));
    v40 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v40);
    sub_2666696C8();
    v41 = sub_26666BB08();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v41);
    v42 = sub_266669788();
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v42);
    sub_26656CFC4();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    *(v14 + 336) = v43;
    *v43 = v44;
    v43[1] = sub_266656AFC;
    v45 = *(v14 + 304);
    v46 = *(v14 + 280);
    v48 = *(v14 + 216);
    v47 = *(v14 + 224);
    v50 = *(v14 + 200);
    v49 = *(v14 + 208);
    v51 = *(v14 + 144);
    v55 = *(v14 + 288);
    v56 = *(v14 + 296);
    v53 = *(v14 + 176);
    v54 = *(v14 + 168);

    return sub_2665643AC(v51, v47, v48, v46, 0, 0, v49, v50, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_266656AFC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[42];
  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[26];
  v6 = v1[25];
  v7 = v1[24];
  v8 = v1[23];
  v9 = v1[22];
  v10 = v1[21];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  sub_26656CAEC(v10, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v9, &unk_28007DE20, &unk_26666EAE0);
  (*(v7 + 8))(v6, v8);
  sub_26656CAEC(v5, &qword_28007D338, &qword_26666EEB0);
  sub_26656CAEC(v4, &unk_28007DE30, &unk_26666EAF0);
  sub_26656CAEC(v3, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266656D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  v11 = v10[35];
  v12 = v10[31];
  OUTLINED_FUNCTION_16_19();

  __swift_destroy_boxed_opaque_existential_1(v10 + 2);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_33();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_266656DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();

  __swift_destroy_boxed_opaque_existential_1((v10 + 16));
  v11 = *(v10 + 328);
  v12 = *(v10 + 248);
  OUTLINED_FUNCTION_16_19();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_33();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266656E70(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266656E94, 0, 0);
}

uint64_t sub_266656E94()
{
  OUTLINED_FUNCTION_14();
  switch(*(v0 + 32))
  {
    case 1:
    case 2:
    case 3:
      v1 = sub_26666CAC8();

      if (v1)
      {
        goto LABEL_4;
      }

      v11 = *(v0 + 16);
      type metadata accessor for Snippet();
      v7 = OUTLINED_FUNCTION_14_16();
      break;
    default:

LABEL_4:
      v2 = [*(v0 + 24) dateTimeRange];
      v3 = v2;
      if (v2)
      {
      }

      v4 = v3 != 0;
      v5 = *(v0 + 16);
      *v5 = v4;
      v6 = type metadata accessor for Snippet();
      swift_storeEnumTagMultiPayload();
      v7 = v5;
      v8 = 0;
      v9 = 1;
      v10 = v6;
      break;
  }

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_5_3();

  return v12();
}

uint64_t sub_266657014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_266654674();
}

uint64_t sub_2666570C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_266655F28();
}

unint64_t sub_266657170()
{
  result = qword_28007FEB0;
  if (!qword_28007FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_44(uint64_t a1)
{
  *(a1 + 8) = sub_266656748;
  result = *(v1 + 224);
  v3 = *(v1 + 160);
  v4 = *(v1 + 344);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_27()
{
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v9 = v0[12];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_16_19()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
}

uint64_t OUTLINED_FUNCTION_17_16()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[8];
}

uint64_t OUTLINED_FUNCTION_18_12()
{
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[4];
  v7 = v0[2];

  return sub_26666C168();
}

uint64_t OUTLINED_FUNCTION_19_20()
{
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[8];
}

uint64_t OUTLINED_FUNCTION_25_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  result = *(v12 + 104);
  *(v11 + 14) = v13;
  *a11 = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_13@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[32];
  v5 = v1[19];
  v4 = v1[20];
  v1[35] = a1;

  return sub_26655358C(v4 + 96, (v1 + 2));
}

void OUTLINED_FUNCTION_27_18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t a14)
{

  _os_log_impl(a1, v14, a14, a4, v15, 0x16u);
}

uint64_t OUTLINED_FUNCTION_33_11()
{
  v1 = *(v0 + 40);
  *(v0 + 288) = v1;
  *(v0 + 304) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);

  return sub_266669CB8();
}

uint64_t OUTLINED_FUNCTION_39_7(float a1)
{
  *v1 = a1;

  return sub_266669CD8();
}

uint64_t OUTLINED_FUNCTION_40_5()
{
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v9 = v0 + 21;
  v7 = v0[21];
  v8 = v9[1];
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 96);
  return result;
}

uint64_t type metadata accessor for CreateEventCATsSimple()
{
  result = qword_28007FEC8;
  if (!qword_28007FEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666574B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266657554, 0, 0);
}

uint64_t sub_266657554()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_266671D70;
  *(v2 + 32) = 0x746E657665;
  *(v2 + 40) = 0xE500000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[5];
  v5 = v0[3];
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "calendarName");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  sub_26659236C(v5, v4, &unk_28007D130, &unk_266671DF0);
  v6 = sub_26666BDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);
  v8 = v0[5];
  v9 = v0[2];
  if (EnumTagSinglePayload == 1)
  {
    v10 = v0[2];

    sub_266557D74(v8, &unk_28007D130, &unk_266671DF0);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 96));
    (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v8, v6);
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v16 = v12;
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_266657760;
  v14 = v0[4];
  OUTLINED_FUNCTION_3_39();

  return v16(0xD000000000000019);
}

uint64_t sub_266657760()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *(*v1 + 56);
  v5 = *v1;
  v5[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2666578B8, 0, 0);
  }

  else
  {
    v7 = v5[5];
    v6 = v5[6];

    v8 = v5[1];

    return v8(v3);
  }
}

uint64_t sub_2666578B8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_266657924()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2666579D8;
  OUTLINED_FUNCTION_3_39();

  return v4(0xD000000000000019);
}

uint64_t sub_2666579D8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_266657AD8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_266657F18;
  OUTLINED_FUNCTION_3_39();

  return v4(0xD00000000000001ALL);
}

uint64_t sub_266657B8C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_266657F18;
  OUTLINED_FUNCTION_3_39();

  return v4(0xD000000000000023);
}

uint64_t sub_266657C40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_266657C94(a1, a2);
}

uint64_t sub_266657C94(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  sub_26659236C(a1, &v20 - v17, &qword_28007D2B0, &qword_26666E5F0);
  (*(v8 + 16))(v13, a2, v2);
  v18 = sub_26666BDB8();
  (*(v8 + 8))(a2, v2);
  sub_266557D74(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v18;
}

uint64_t sub_266657E10(uint64_t a1, uint64_t a2)
{
  v5 = sub_26666BE18();
  v6 = OUTLINED_FUNCTION_13_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v13, a2, v3);
  v16 = sub_26666BDC8();
  (*(v8 + 8))(a2, v3);
  return v16;
}

uint64_t sub_266657F30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_266657F70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266657FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26666BB08();
  OUTLINED_FUNCTION_17_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F428, &qword_2666789A0);
  v14 = OUTLINED_FUNCTION_18_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  OUTLINED_FUNCTION_10_5();
  v25 = v23 - v24;
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = &v51 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v51 - v32;
  if (*(v1 + 176) == 1)
  {
    v52 = a1;
    sub_26666BA48();
    if (sub_26666BA38())
    {
      sub_26666BA28();

      sub_26666C028();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    __swift_storeEnumTagSinglePayload(v33, v34, 1, v3);
    sub_26666BAF8();
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v3);
    v42 = *(v13 + 48);
    OUTLINED_FUNCTION_69_3(v33, v19);
    OUTLINED_FUNCTION_69_3(v30, &v19[v42]);
    OUTLINED_FUNCTION_27_5(v19, 1, v3);
    if (v43)
    {
      OUTLINED_FUNCTION_121(v30);
      OUTLINED_FUNCTION_121(v33);
      OUTLINED_FUNCTION_27_5(&v19[v42], 1, v3);
      if (v43)
      {
        sub_26656CAEC(v19, &unk_28007DE20, &unk_26666EAE0);
LABEL_19:
        v45 = OUTLINED_FUNCTION_60_1();
        return __swift_storeEnumTagSinglePayload(v45, v46, 1, v3);
      }
    }

    else
    {
      sub_2665A17F8(v19, v25, &unk_28007DE20, &unk_26666EAE0);
      OUTLINED_FUNCTION_27_5(&v19[v42], 1, v3);
      if (!v43)
      {
        (*(v5 + 32))(v12, &v19[v42], v3);
        OUTLINED_FUNCTION_14_17();
        sub_26665E700(v47, v48);
        v49 = sub_26666C2E8();
        v50 = *(v5 + 8);
        v50(v12, v3);
        sub_26656CAEC(v30, &unk_28007DE20, &unk_26666EAE0);
        sub_26656CAEC(v33, &unk_28007DE20, &unk_26666EAE0);
        v50(v25, v3);
        sub_26656CAEC(v19, &unk_28007DE20, &unk_26666EAE0);
        v44 = v52;
        if (v49)
        {
          goto LABEL_19;
        }

LABEL_17:
        sub_26666BAE8();
        v45 = v44;
        v46 = 0;
        return __swift_storeEnumTagSinglePayload(v45, v46, 1, v3);
      }

      OUTLINED_FUNCTION_121(v30);
      OUTLINED_FUNCTION_121(v33);
      (*(v5 + 8))(v25, v3);
    }

    sub_26656CAEC(v19, &qword_28007F428, &qword_2666789A0);
    v44 = v52;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_6();

  return __swift_storeEnumTagSinglePayload(v35, v36, v37, v3);
}

uint64_t sub_266658428(uint64_t a1, void *a2)
{
  v3 = sub_26666BB08();
  OUTLINED_FUNCTION_17_2();
  v94 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_1_0();
  v90 = v10 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F428, &qword_2666789A0);
  v11 = OUTLINED_FUNCTION_18_2(v95);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v86[-v17];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v19 = OUTLINED_FUNCTION_18_2(v93);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_10_8();
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = &v86[-v26];
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_10_8();
  v31 = MEMORY[0x28223BE20](v29, v30);
  v33 = &v86[-v32];
  v35 = MEMORY[0x28223BE20](v31, v34);
  v37 = &v86[-v36];
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v86[-v40];
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v86[-v43];
  v45 = sub_26662571C(a2);
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  sub_26666BA48();
  if (sub_26666BA38())
  {
    sub_26666BA28();

    sub_26666C028();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  __swift_storeEnumTagSinglePayload(v44, v47, 1, v3);
  if (sub_2665C485C(v46) < 2)
  {
    v51 = 0;
LABEL_30:
    v57 = v96;
    goto LABEL_31;
  }

  v88 = v27;
  sub_26666BAF8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v3);
  v27 = *(v95 + 48);
  OUTLINED_FUNCTION_69_3(v44, v18);
  OUTLINED_FUNCTION_69_3(v41, &v18[v27]);
  OUTLINED_FUNCTION_1_28(v18);
  if (v52)
  {
    sub_26656CAEC(v41, &unk_28007DE20, &unk_26666EAE0);
    OUTLINED_FUNCTION_1_28(&v18[v27]);
    if (v52)
    {
      sub_26656CAEC(v18, &unk_28007DE20, &unk_26666EAE0);
LABEL_29:
      v51 = 1;
      OUTLINED_FUNCTION_64_2();
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  sub_2665A17F8(v18, v37, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_1_28(&v18[v27]);
  if (v52)
  {
    sub_26656CAEC(v41, &unk_28007DE20, &unk_26666EAE0);
    (*(v94 + 8))(v37, v3);
LABEL_17:
    sub_26656CAEC(v18, &qword_28007F428, &qword_2666789A0);
    goto LABEL_18;
  }

  v60 = v90;
  (*(v94 + 32))(v90, &v18[v27], v3);
  OUTLINED_FUNCTION_14_17();
  sub_26665E700(v61, v62);
  v87 = sub_26666C2E8();
  v27 = v94 + 8;
  v63 = *(v94 + 8);
  v63(v60, v3);
  sub_26656CAEC(v41, &unk_28007DE20, &unk_26666EAE0);
  v63(v37, v3);
  sub_26656CAEC(v18, &unk_28007DE20, &unk_26666EAE0);
  if (v87)
  {
    goto LABEL_29;
  }

LABEL_18:
  sub_26666BAE8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v3);
  v27 = *(v95 + 48);
  v56 = v91;
  sub_2665A17F8(v44, v91, &unk_28007DE20, &unk_26666EAE0);
  sub_2665A17F8(v33, v56 + v27, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_1_28(v56);
  if (v52)
  {
    sub_26656CAEC(v33, &unk_28007DE20, &unk_26666EAE0);
    OUTLINED_FUNCTION_1_28(v56 + v27);
    v57 = v96;
    if (v52)
    {
      sub_26656CAEC(v56, &unk_28007DE20, &unk_26666EAE0);
      v51 = 1;
      OUTLINED_FUNCTION_64_2();
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v58 = v89;
  sub_2665A17F8(v56, v89, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_1_28(v56 + v27);
  if (v59)
  {
    sub_26656CAEC(v33, &unk_28007DE20, &unk_26666EAE0);
    (*(v94 + 8))(v58, v3);
    v57 = v96;
LABEL_26:
    sub_26656CAEC(v56, &qword_28007F428, &qword_2666789A0);
    OUTLINED_FUNCTION_64_2();
LABEL_27:
    v51 = *(v57 + 176);
    goto LABEL_31;
  }

  v80 = v94;
  v81 = v90;
  (*(v94 + 32))(v90, v56 + v27, v3);
  OUTLINED_FUNCTION_14_17();
  sub_26665E700(v82, v83);
  v27 = v58;
  v84 = sub_26666C2E8();
  v85 = *(v80 + 8);
  v85(v81, v3);
  sub_26656CAEC(v33, &unk_28007DE20, &unk_26666EAE0);
  v85(v27, v3);
  sub_26656CAEC(v56, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_64_2();
  v57 = v96;
  if ((v84 & 1) == 0)
  {
    goto LABEL_27;
  }

  v51 = 1;
LABEL_31:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v64 = sub_26666C168();
  __swift_project_value_buffer(v64, qword_28156D7E8);
  sub_26664F318(v57, v98);
  sub_2665A17F8(v44, v27, &unk_28007DE20, &unk_26666EAE0);

  v65 = sub_26666C148();
  v66 = sub_26666C618();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = v27;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v97 = v69;
    *v68 = 67109890;
    *(v68 + 4) = v51;
    *(v68 + 8) = 2048;
    v70 = sub_2665C485C(v46);
    LODWORD(v96) = v51;
    v71 = v70;

    *(v68 + 10) = v71;

    *(v68 + 18) = 1024;
    v72 = v98[176];
    sub_26665E768(v98);
    *(v68 + 20) = v72;
    *(v68 + 24) = 2080;
    sub_2665A17F8(v67, v92, &unk_28007DE20, &unk_26666EAE0);
    v73 = sub_26666C318();
    v75 = v74;
    sub_26656CAEC(v67, &unk_28007DE20, &unk_26666EAE0);
    v76 = sub_2665BFC90(v73, v75, &v97);

    *(v68 + 26) = v76;
    _os_log_impl(&dword_266549000, v65, v66, "FindEvents.FlowProducer] ShouldUseReadingFlow: %{BOOL}d, Event Count: %ld, explicitReadVerb: %{BOOL}d, responseMode: %s", v68, 0x22u);
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();

    v77 = OUTLINED_FUNCTION_32_10();
    v51 = v96;
  }

  else
  {
    sub_26665E768(v98);

    swift_bridgeObjectRelease_n();
    sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
    v77 = OUTLINED_FUNCTION_25();
  }

  sub_26656CAEC(v77, v78, &unk_26666EAE0);
  return v51;
}

uint64_t sub_266658D54(void *a1, void *a2)
{
  v3 = v2;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, qword_28156D7E8);
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_20();
    *v9 = 0;
    _os_log_impl(&dword_266549000, v7, v8, "[FindEvents.ResponseStrategy] Making reading flow", v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_26655358C(v3 + 136, v21);
  __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  OUTLINED_FUNCTION_17_2();
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14);
  v18 = sub_26665E4F8(a1, a2, v16);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v21[0] = v18;
  type metadata accessor for EventReadingFlow(0);
  sub_26665E700(&qword_28007F038, type metadata accessor for EventReadingFlow);
  v19 = sub_266669528();

  return v19;
}

uint64_t sub_266658F50()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2666699C8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266659008()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    *v5 = 0;
    _os_log_impl(&dword_266549000, v3, v0, "[FindEvents.ResponseStrategy] Making handle intent response", v5, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v1[4];

  v7 = sub_26662571C(v6);
  v1[9] = v7;
  if (v7)
  {
    v8 = v7;
    if (sub_2665C485C(v7))
    {
      v9 = v1[8];
      sub_2666699B8();
      if (qword_28007CE30 != -1)
      {
        swift_once();
      }

      v10 = v1[8];
      v11 = v1[4];
      sub_26666A0F8();
      sub_266669908();
      sub_2665E8C94(0xD000000000000013, 0x800000026667D670);
      sub_2666698E8();
      if (sub_2665C485C(v8) == 1)
      {
        sub_2665C4864(0, (v8 & 0xC000000000000001) == 0, v8);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x266788B60](0, v8);
        }

        else
        {
          v12 = *(v8 + 32);
        }

        v13 = v12;
        v1[10] = v12;

        v14 = sub_26666C148();
        v15 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v15))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_4_0(&dword_266549000, v16, v17, "[FindEvents.ResponseStrategy] Exactly one event in intent response, making single event output");
          OUTLINED_FUNCTION_4_1();
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v1[11] = v18;
        *v18 = v19;
        v18[1] = sub_2666593F4;
        v20 = v1[8];
        v21 = OUTLINED_FUNCTION_51_5();

        return sub_26665AE50(v21, v22, v13, v23);
      }

      else
      {
        v33 = sub_26666C148();
        v34 = sub_26666C618();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_20();
          *v35 = 0;
          _os_log_impl(&dword_266549000, v33, v34, "[FindEvents.ResponseStrategy] Multiple events in intent response, making multi event output", v35, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v1[13] = v36;
        *v36 = v37;
        v36[1] = sub_266659564;
        v38 = v1[8];
        v39 = OUTLINED_FUNCTION_51_5();

        return sub_26665C564(v39, v40, v8, v41);
      }
    }
  }

  v25 = sub_26666C148();
  v26 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v26))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v27, v28, "[FindEvents.ResponseStrategy] No events in intent response, making no results output");
    OUTLINED_FUNCTION_4_1();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v1[15] = v29;
  *v29 = v30;
  v29[1] = sub_2666596E8;
  v31 = OUTLINED_FUNCTION_51_5();

  return sub_2666598D4(v31, v32);
}

uint64_t sub_2666593F4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v2 + 88);
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2666594F4()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_34_9();
  v2(v1);
  v3 = *(v0 + 64);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_266659564()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v2 + 104);
  v4 = *(v2 + 72);
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266659680()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_34_9();
  v2(v1);
  v3 = *(v0 + 64);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_2666596E8()
{
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = *(v1 + 64);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_2666597F4()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 96);
  v2 = OUTLINED_FUNCTION_34_9();
  v3(v2);
  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t sub_266659868()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 112);
  v2 = OUTLINED_FUNCTION_34_9();
  v3(v2);
  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_24_1();

  return v5();
}

uint64_t sub_2666598D4(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for Snippet();
  v3[30] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v6 = sub_266669CA8();
  v3[35] = v6;
  v7 = *(v6 - 8);
  v3[36] = v7;
  v8 = *(v7 + 64) + 15;
  v3[37] = swift_task_alloc();
  v9 = sub_266669708();
  v3[38] = v9;
  v10 = *(v9 - 8);
  v3[39] = v10;
  v11 = *(v10 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266659B70, 0, 0);
}

uint64_t sub_266659B70()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[29];
  v3 = v0[30];
  sub_2666257C8((v4 + 2), (v0 + 2));
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  v11 = *v4;
  v12 = swift_task_alloc();
  v0[51] = v12;
  *v12 = v0;
  v12[1] = sub_266659C44;
  v13 = v0[28];

  return sub_26658E584(v13, (v4 + 12));
}

uint64_t sub_266659C44()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 408);
  *v4 = *v1;
  v3[52] = v7;
  v3[53] = v0;

  if (v0)
  {
    v8 = v3[50];
    sub_26656CAEC(v3[49], &unk_28007DE30, &unk_26666EAF0);
    sub_26656CAEC(v8, &unk_28007DE30, &unk_26666EAF0);
    sub_26656CC94((v3 + 2));
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266659D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20[52];
  v161 = v20[48];
  v162 = v20[50];
  v22 = v20[43];
  v23 = v20[44];
  v24 = v20[41];
  v25 = v20[42];
  v26 = v20[39];
  v27 = v20[40];
  v158 = v20[38];
  v159 = v20[37];
  v28 = v20[29];
  v160 = v20[30];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_266657FF0(v22);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_2666696A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v37 = swift_allocObject();
  v20[54] = v37;
  *(v37 + 16) = xmmword_26666E050;
  *(v37 + 32) = v21;
  v38 = *(v26 + 16);
  v39 = v21;
  v38(v27, v24, v158);
  v40 = swift_task_alloc();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = v37;
  *(v40 + 48) = v23;
  *(v40 + 56) = 2;
  *(v40 + 64) = v22;
  *(v40 + 72) = v25;
  *(v40 + 80) = 514;
  sub_266669BC8();

  sub_2665A17F8(v162, v161, &unk_28007DE30, &unk_26666EAF0);
  v41 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v41, v42, v160);
  if (v58)
  {
    v43 = v20 + 48;
  }

  else
  {
    v44 = v20[48];
    v45 = v20[49];
    v46 = v20[47];
    v47 = v20[34];
    v48 = v20[30];
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v49, v50, v51);
    v52 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v52, v53, v54, v55);
    v56 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v56, v57, v48);
    if (!v58)
    {
      v110 = v20[47];
      v112 = v20[33];
      v111 = v20[34];
      v113 = v20[30];
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v114, v112, v115);
      OUTLINED_FUNCTION_9_22();
      v20[20] = v113;
      OUTLINED_FUNCTION_2_43();
      v118 = sub_26665E700(v116, v117);
      OUTLINED_FUNCTION_82_1(v118);
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v111, v119, v120);
      v20[25] = v113;
      v20[26] = v22;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20 + 22);
      OUTLINED_FUNCTION_60_3(boxed_opaque_existential_1);
      v122 = *(MEMORY[0x277D5BE30] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[55] = v123;
      *v123 = v124;
      v123[1] = sub_26665A334;
      v125 = v20[37];
      v126 = v20[27];
      OUTLINED_FUNCTION_14_2();

      return MEMORY[0x2821BB460](v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    v43 = v20 + 47;
    v59 = v20[34];
    OUTLINED_FUNCTION_3_18();
    sub_2665A6908(v60, v61);
  }

  v62 = *v43;
  v63 = v20[50];
  v64 = v20[46];
  v65 = v20[30];
  sub_26656CAEC(v62, &unk_28007DE30, &unk_26666EAF0);
  v66 = OUTLINED_FUNCTION_15_2();
  sub_2665A17F8(v66, v67, &unk_28007DE30, &unk_26666EAF0);
  v68 = OUTLINED_FUNCTION_60_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, v69, v65);
  v71 = v20[30];
  if (EnumTagSinglePayload == 1)
  {
    v72 = v20[49];
    v73 = v20[45];
    sub_26656CAEC(v20[46], &unk_28007DE30, &unk_26666EAF0);
    v74 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v74, v75, &unk_28007DE30, &unk_26666EAF0);
    v76 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v76, v77, v71);
    if (v58)
    {
      sub_26656CAEC(v20[45], &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      v78 = *(MEMORY[0x277D5BE58] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[58] = v79;
      *v79 = v80;
      v79[1] = sub_26665AAC4;
      v81 = v20[37];
      OUTLINED_FUNCTION_18_13();
      OUTLINED_FUNCTION_14_2();

      return MEMORY[0x2821BB488](v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    else
    {
      v135 = v20[45];
      v136 = v20[30];
      v137 = v20[31];
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v138, v137, v139);
      OUTLINED_FUNCTION_9_22();
      v20[10] = v136;
      OUTLINED_FUNCTION_2_43();
      v20[11] = sub_26665E700(v140, v141);
      __swift_allocate_boxed_opaque_existential_1(v20 + 7);
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v137, v142, v143);
      v144 = *(MEMORY[0x277D5BE48] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[57] = v145;
      *v145 = v146;
      v145[1] = sub_26665A84C;
      v147 = v20[37];
      v148 = v20[27];
      OUTLINED_FUNCTION_14_2();

      return MEMORY[0x2821BB478](v149, v150, v151, v152, v153, v154, v155, v156, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }
  }

  else
  {
    v90 = v20[32];
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v91, v90, v92);
    OUTLINED_FUNCTION_9_22();
    v20[15] = v71;
    OUTLINED_FUNCTION_2_43();
    v20[16] = sub_26665E700(v93, v94);
    __swift_allocate_boxed_opaque_existential_1(v20 + 12);
    OUTLINED_FUNCTION_2_16();
    sub_26665E6A4(v90, v95, v96);
    v97 = *(MEMORY[0x277D5BE38] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v20[56] = v98;
    *v98 = v99;
    v98[1] = sub_26665A5D4;
    v100 = v20[37];
    v101 = v20[27];
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_14_2();

    return MEMORY[0x2821BB468](v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_26665A334()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 432);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 264);
  v24 = *(v20 + 272);

  sub_2665A6908(v23, type metadata accessor for Snippet);
  sub_2665A6908(v24, type metadata accessor for Snippet);
  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_12_20();
  v28(v27);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665A5D4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 432);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665A6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 256);

  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v23, v24);
  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_12_20();
  v28(v27);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665A84C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 432);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 248);

  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v23, v24);
  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_12_20();
  v28(v27);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665AAC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 464);
  v3 = *(v1 + 432);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665ABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();

  v24 = OUTLINED_FUNCTION_6_28();
  v25(v24);
  v26 = OUTLINED_FUNCTION_12_20();
  v27(v26);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v20, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v21 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665AD2C()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  v14 = v0[40];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];

  OUTLINED_FUNCTION_24_1();
  v12 = v0[53];

  return v11();
}

uint64_t sub_26665AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = type metadata accessor for Snippet();
  v5[32] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v8 = sub_266669CA8();
  v5[37] = v8;
  v9 = *(v8 - 8);
  v5[38] = v9;
  v10 = *(v9 + 64) + 15;
  v5[39] = swift_task_alloc();
  v11 = sub_266669708();
  v5[40] = v11;
  v12 = *(v11 - 8);
  v5[41] = v12;
  v13 = *(v12 + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v18 = *(*(type metadata accessor for Snippet.Event(0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665B11C, 0, 0);
}

uint64_t sub_26665B11C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[31];
  v2 = *(v1 + 8);
  v3 = *(v1 + 177);
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_26665B1C8;
  v5 = v0[28];
  v6 = v0[29];

  return sub_266642A8C();
}

uint64_t sub_26665B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_5_1();
  v23 = v22;
  OUTLINED_FUNCTION_15_1();
  *v24 = v23;
  v26 = *(v25 + 432);
  *v24 = *v21;
  v23[55] = v27;
  v23[56] = v20;

  if (v20)
  {
    v29 = v23[52];
    v28 = v23[53];
    v31 = v23[50];
    v30 = v23[51];
    v33 = v23[48];
    v32 = v23[49];
    v35 = v23[46];
    v34 = v23[47];
    v52 = v23[45];
    v53 = v23[44];
    v54 = v23[43];
    v55 = v23[42];
    v36 = v23[35];
    v56 = v23[39];
    v57 = v23[36];
    v38 = v23 + 33;
    v37 = v23[33];
    v58 = v36;
    v59 = v38[1];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_19_2();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, v52, v53, v54, v55, v56, v57, v58, v59, a18, a19, a20);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_19_2();

    return MEMORY[0x2822009F8](v48, v49, v50);
  }
}

uint64_t sub_26665BB3C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *(v4 + 456);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  v26 = OUTLINED_FUNCTION_26_14();
  sub_2665A6908(v26, v27);
  sub_2665A6908(v23, v22);
  v28 = OUTLINED_FUNCTION_5_34();
  v29(v28);
  v30 = OUTLINED_FUNCTION_31_12();
  v31(v30);
  v32 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  v34 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v34, v35, &unk_26666EAF0);
  sub_26656CAEC(v24, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665BDD8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 456);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  v26 = *(v23 + 272);
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v27, v28);
  v29 = OUTLINED_FUNCTION_5_34();
  v30(v29);
  v31 = OUTLINED_FUNCTION_31_12();
  v32(v31);
  v33 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v33, v34, &unk_26666EAF0);
  v35 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v35, v36, &unk_26666EAF0);
  sub_26656CAEC(v24, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v22, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665C060()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *(v4 + 456);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  v26 = *(v23 + 264);
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v27, v28);
  v29 = OUTLINED_FUNCTION_5_34();
  v30(v29);
  v31 = OUTLINED_FUNCTION_31_12();
  v32(v31);
  v33 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v33, v34, &unk_26666EAF0);
  v35 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v35, v36, &unk_26666EAF0);
  sub_26656CAEC(v24, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v22, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665C2E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 488);
  v3 = *(v1 + 456);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  v25 = OUTLINED_FUNCTION_5_34();
  v26(v25);
  v27 = OUTLINED_FUNCTION_31_12();
  v28(v27);
  v29 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v29, v30, &unk_26666EAF0);
  v31 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v31, v32, &unk_26666EAF0);
  sub_26656CAEC(v23, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v24, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v22, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v6 = type metadata accessor for Snippet();
  v5[32] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v8 = sub_266669CA8();
  v5[37] = v8;
  v9 = *(v8 - 8);
  v5[38] = v9;
  v10 = *(v9 + 64) + 15;
  v5[39] = swift_task_alloc();
  v11 = sub_266669708();
  v5[40] = v11;
  v12 = *(v11 - 8);
  v5[41] = v12;
  v13 = *(v12 + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0) - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665C86C, 0, 0);
}

uint64_t sub_26665C86C()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[31];
  v2 = *(v1 + 8);
  v3 = *(v1 + 177);
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_26665C918;
  v5 = v0[28];
  v6 = v0[29];

  return sub_266641B5C();
}

uint64_t sub_26665C918()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  v3[59] = v7;
  v3[60] = v0;

  if (v0)
  {
    v9 = v3[56];
    v8 = v3[57];
    v11 = v3[54];
    v10 = v3[55];
    v13 = v3[52];
    v12 = v3[53];
    v15 = v3[50];
    v14 = v3[51];
    v25 = v3[49];
    v26 = v3[48];
    v27 = v3[47];
    v28 = v3[46];
    v29 = v3[45];
    v30 = v3[44];
    v31 = v3[43];
    v32 = v3[42];
    v33 = v3[39];
    v34 = v3[36];
    v35 = v3[35];
    v17 = v3 + 33;
    v16 = v3[33];
    v36 = v17[1];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_26665CB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = [*(v20 + 224) dateTimeRange];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 startDate];

    if (v23)
    {
      v24 = *(v20 + 440);
      sub_266668CE8();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v32 = *(v20 + 440);
    v31 = *(v20 + 448);
    v27 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v32, v25, 1, v27);
    sub_266557CE4(v32, v31);
    v33 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v33, v34, v27);
    if (!v115)
    {
      (*(*(v27 - 8) + 32))(*(v20 + 456), *(v20 + 448), v27);
      goto LABEL_10;
    }
  }

  else
  {
    v26 = *(v20 + 448);
    v27 = sub_266668D38();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  }

  v36 = *(v20 + 448);
  v35 = *(v20 + 456);
  sub_266668CF8();
  sub_266668D38();
  v37 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v37, v38, v27);
  if (!v115)
  {
    sub_26656CAEC(*(v20 + 448), &qword_28007D140, &qword_26666F140);
  }

LABEL_10:
  v39 = *(v20 + 456);
  v40 = *(v20 + 224);
  sub_266668D38();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v27);
  v44 = [v40 dateTimeRange];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 endDate];

    if (v46)
    {
      v47 = *(v20 + 424);
      sub_266668CE8();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v54 = *(v20 + 424);
    v53 = *(v20 + 432);
    __swift_storeEnumTagSinglePayload(v54, v48, 1, v27);
    sub_266557CE4(v54, v53);
  }

  else
  {
    v49 = *(v20 + 432);
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v27);
  }

  v55 = *(v20 + 480);
  v56 = *(v20 + 456);
  v57 = *(v20 + 432);
  v58 = *(v20 + 248);
  v59 = *(v20 + 232);

  sub_2665E5D28(v60, v56, v57);
  sub_2666257C8(v58 + 16, v20 + 16);
  *(swift_task_alloc() + 16) = v58 + 56;
  sub_2665C26C0();
  v62 = *(v20 + 472);
  if (v55)
  {

    sub_26656CC94(v20 + 16);
    v64 = *(v20 + 448);
    v63 = *(v20 + 456);
    v66 = *(v20 + 432);
    v65 = *(v20 + 440);
    v68 = *(v20 + 416);
    v67 = *(v20 + 424);
    v70 = *(v20 + 400);
    v69 = *(v20 + 408);
    v71 = *(v20 + 384);
    v72 = *(v20 + 392);
    v206 = *(v20 + 376);
    v207 = *(v20 + 368);
    v209 = *(v20 + 360);
    v211 = *(v20 + 352);
    v213 = *(v20 + 344);
    v215 = *(v20 + 336);
    v217 = *(v20 + 312);
    v219 = *(v20 + 288);
    v221 = *(v20 + 280);
    v223 = *(v20 + 272);
    v225 = *(v20 + 264);

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v75 = v61;
  v77 = *(v20 + 408);
  v76 = *(v20 + 416);
  v214 = *(v20 + 360);
  v216 = *(v20 + 352);
  v218 = *(v20 + 344);
  v220 = *(v20 + 336);
  v78 = *(v20 + 328);
  v222 = *(v20 + 320);
  v226 = *(v20 + 312);
  v227 = *(v20 + 400);
  v79 = *(v20 + 256);
  v210 = *(v20 + 368);
  v212 = *(v20 + 248);
  v208 = *(v20 + 240);

  *v76 = v75;
  *(v76 + 8) = 0;
  v224 = v79;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v79);
  v86 = sub_2666699C8();
  OUTLINED_FUNCTION_18_2(v86);
  (*(v87 + 16))(v210, v208, v86);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v86);
  sub_266657FF0(v214);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  sub_2666696A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v95 = swift_allocObject();
  *(v20 + 488) = v95;
  *(v95 + 16) = xmmword_26666E050;
  *(v95 + 32) = v62;
  v96 = *(v78 + 16);
  v97 = v62;
  v98 = v220;
  v96(v220, v218, v222);
  v99 = swift_task_alloc();
  *(v99 + 16) = 0;
  *(v99 + 24) = 0;
  *(v99 + 32) = 0;
  *(v99 + 40) = v95;
  *(v99 + 48) = v210;
  *(v99 + 56) = 2;
  *(v99 + 64) = v214;
  *(v99 + 72) = v216;
  *(v99 + 80) = 514;
  sub_266669BC8();

  sub_2665A17F8(v76, v227, &unk_28007DE30, &unk_26666EAF0);
  v100 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v100, v101, v224);
  if (!v115)
  {
    v102 = *(v20 + 400);
    v103 = *(v20 + 408);
    v104 = *(v20 + 392);
    v105 = *(v20 + 288);
    v98 = *(v20 + 256);
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v106, v107, v108);
    v109 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v109, v110, v111, v112);
    v113 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v113, v114, v98);
    if (!v115)
    {
      v162 = *(v20 + 392);
      v164 = *(v20 + 280);
      v163 = *(v20 + 288);
      v165 = *(v20 + 256);
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v166, v164, v167);
      OUTLINED_FUNCTION_9_22();
      *(v20 + 160) = v165;
      OUTLINED_FUNCTION_2_43();
      v170 = sub_26665E700(v168, v169);
      OUTLINED_FUNCTION_82_1(v170);
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v163, v171, v172);
      *(v20 + 200) = v165;
      *(v20 + 208) = v216;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 176));
      OUTLINED_FUNCTION_60_3(boxed_opaque_existential_1);
      v174 = *(MEMORY[0x277D5BE30] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v20 + 496) = v175;
      *v175 = v176;
      OUTLINED_FUNCTION_30_13(v175);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB460](v177, v178, v179, v180, v181, v182, v183, v184, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    v116 = *(v20 + 288);
    OUTLINED_FUNCTION_3_18();
    sub_2665A6908(v117, v118);
  }

  v119 = OUTLINED_FUNCTION_66_2();
  sub_26656CAEC(v119, &unk_28007DE30, &unk_26666EAF0);
  v120 = OUTLINED_FUNCTION_15_2();
  sub_2665A17F8(v120, v121, &unk_28007DE30, &unk_26666EAF0);
  v122 = OUTLINED_FUNCTION_60_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v122, v123, v98);
  v125 = *(v20 + 256);
  if (EnumTagSinglePayload == 1)
  {
    v126 = *(v20 + 408);
    v127 = *(v20 + 376);
    sub_26656CAEC(*(v20 + 384), &unk_28007DE30, &unk_26666EAF0);
    v128 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v128, v129, &unk_28007DE30, &unk_26666EAF0);
    v130 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v130, v131, v125);
    if (v115)
    {
      sub_26656CAEC(*(v20 + 376), &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      v132 = *(MEMORY[0x277D5BE58] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v20 + 520) = v133;
      *v133 = v134;
      v133[1] = sub_26665DCE4;
      v135 = *(v20 + 312);
      OUTLINED_FUNCTION_18_13();
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB488](v136, v137, v138, v139, v140, v141, v142, v143, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    else
    {
      v185 = *(v20 + 376);
      v187 = *(v20 + 256);
      v186 = *(v20 + 264);
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v188, v186, v189);
      OUTLINED_FUNCTION_9_22();
      *(v20 + 80) = v187;
      OUTLINED_FUNCTION_2_43();
      *(v20 + 88) = sub_26665E700(v190, v191);
      __swift_allocate_boxed_opaque_existential_1((v20 + 56));
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v186, v192, v193);
      v194 = *(MEMORY[0x277D5BE48] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v20 + 512) = v195;
      *v195 = v196;
      OUTLINED_FUNCTION_36_7(v195);
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB478](v197, v198, v199, v200, v201, v202, v203, v204, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }
  }

  else
  {
    v144 = *(v20 + 272);
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v145, v144, v146);
    OUTLINED_FUNCTION_9_22();
    *(v20 + 120) = v125;
    OUTLINED_FUNCTION_2_43();
    *(v20 + 128) = sub_26665E700(v147, v148);
    __swift_allocate_boxed_opaque_existential_1((v20 + 96));
    OUTLINED_FUNCTION_2_16();
    sub_26665E6A4(v144, v149, v150);
    v151 = *(MEMORY[0x277D5BE38] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    *(v20 + 504) = v152;
    *v152 = v153;
    OUTLINED_FUNCTION_36_7(v152);
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_47_0();

    return MEMORY[0x2821BB468](v154, v155, v156, v157, v158, v159, v160, v161, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_26665D4CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665D5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  v31 = OUTLINED_FUNCTION_26_14();
  sub_2665A6908(v31, v32);
  sub_2665A6908(v27, v26);
  v33 = OUTLINED_FUNCTION_4_45();
  v34(v33);
  v35 = OUTLINED_FUNCTION_35_9();
  v36(v35);
  v37 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v37, v38, &unk_26666EAF0);
  v39 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v39, v40, &unk_26666EAF0);
  sub_26656CAEC(v29, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v30, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v27, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v28 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665D78C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  v30 = *(v27 + 272);
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v31, v32);
  v33 = OUTLINED_FUNCTION_4_45();
  v34(v33);
  v35 = OUTLINED_FUNCTION_35_9();
  v36(v35);
  v37 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v37, v38, &unk_26666EAF0);
  v39 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v39, v40, &unk_26666EAF0);
  sub_26656CAEC(v28, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v29, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v26, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v27 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665DA38()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26665DB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  v30 = *(v27 + 264);
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v31, v32);
  v33 = OUTLINED_FUNCTION_4_45();
  v34(v33);
  v35 = OUTLINED_FUNCTION_35_9();
  v36(v35);
  v37 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v37, v38, &unk_26666EAF0);
  v39 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v39, v40, &unk_26666EAF0);
  sub_26656CAEC(v28, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v29, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v26, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v27 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665DCE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 520);
  v3 = *(v1 + 488);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665DDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  v30 = OUTLINED_FUNCTION_4_45();
  v31(v30);
  v32 = OUTLINED_FUNCTION_35_9();
  v33(v32);
  v34 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v34, v35, &unk_26666EAF0);
  v36 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v36, v37, &unk_26666EAF0);
  sub_26656CAEC(v28, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v29, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v26, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v27 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665DF84(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = type metadata accessor for EventReadingFlow.State(0);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63, v9);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v60 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v60 - v26;
  v65 = _s15ReadingStrategyVMa();
  v66 = &off_28780AAF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  sub_26665E648(a3, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_26655358C(v64, a4 + 32);
  v29 = a1;
  v62 = a2;
  v30 = sub_26662571C(v62);
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v32 = [v29 dateTimeRange];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 startDate];

    if (v34)
    {
      sub_266668CE8();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v24, v35, 1, v37);
    sub_266557CE4(v24, v27);
  }

  else
  {
    v36 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v36);
  }

  v38 = [v29 dateTimeRange];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 endDate];

    if (v40)
    {
      sub_266668CE8();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v43 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v16, v41, 1, v43);
    sub_266557CE4(v16, v20);
  }

  else
  {
    v42 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v42);
  }

  *(a4 + 72) = sub_2665E5D28(v31, v27, v20);
  *(a4 + 80) = v44;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v45 = sub_26661AE50(v29) & 1;
  v46 = *(a4 + 72);
  *(a4 + 88) = v46;
  *(a4 + 96) = v45;
  v47 = *(v46 + 16);
  v48 = qword_28156C150;

  if (v47 < 2)
  {
    if (v48 != -1)
    {
      swift_once();
    }

    v53 = sub_26666C168();
    __swift_project_value_buffer(v53, qword_28156D7E8);
    v54 = sub_26666C148();
    v55 = sub_26666C618();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_266549000, v54, v55, "[EventReadingFlow] Grouping spans a single day, moving directly to readDay", v56, 2u);
      MEMORY[0x266789690](v56, -1, -1);
    }

    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
    swift_beginAccess();
    v58 = v61;
    sub_2665FD448(v61);
    swift_endAccess();

    *(v58 + v57) = 1;
    swift_storeEnumTagMultiPayload();
    sub_26665E648(v58, a4 + OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state, type metadata accessor for EventReadingFlow.State);
  }

  else
  {
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_26666C168();
    __swift_project_value_buffer(v49, qword_28156D7E8);
    v50 = sub_26666C148();
    v51 = sub_26666C618();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_266549000, v50, v51, "[EventReadingFlow] Grouping spans more than a single day introducing all results.", v52, 2u);
      MEMORY[0x266789690](v52, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  return a4;
}

uint64_t sub_26665E4F8(void *a1, void *a2, uint64_t a3)
{
  v21 = _s15ReadingStrategyVMa();
  v22 = &off_28780AAF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_26665E648(a3, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
  v7 = type metadata accessor for EventReadingFlow(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v21;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v12, v12);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_26665DF84(a1, a2, v15, v10);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17;
}

uint64_t sub_26665E648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_18_2(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_25();
  v8(v7);
  return a2;
}

uint64_t sub_26665E6A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_18_2(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_25();
  v8(v7);
  return a2;
}

uint64_t sub_26665E700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_45()
{
  v16 = v0[59];
  v17 = v0[57];
  v18 = v0[56];
  v19 = v0[55];
  v2 = v0[52];
  v20 = v0[54];
  v21 = v0[53];
  v3 = v0[51];
  v22 = v0[50];
  v23 = v0[49];
  v4 = v0[46];
  v24 = v0[48];
  v25 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v7 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[38];
  v11 = v0[39];
  v12 = v0[37];
  v26 = v0[42];
  v27 = v0[36];
  v28 = v0[35];
  v13 = v0[33];
  *(v1 - 88) = v0[34];
  *(v1 - 80) = v13;
  v14 = *(v10 + 8);
  return v11;
}

uint64_t OUTLINED_FUNCTION_5_34()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  v13 = v0[55];
  v14 = v0[50];
  v15 = v0[49];
  v16 = v0[48];
  v4 = v0[46];
  v5 = v0[44];
  v6 = v0[45];
  v7 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  result = v0[39];
  v17 = v0[47];
  v11 = v0[37];
  v18 = v0[42];
  v19 = v0[36];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[33];
  v12 = *(v0[38] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_28()
{
  v1 = v0[49];
  v2 = v0[50];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[45];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[41];
  v6 = v0[42];
  v7 = v0[39];
  v8 = v0[38];
  v9 = v0[35];
  v16 = v0[40];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[31];
  v10 = *(v0[36] + 8);
  return v0[37];
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return sub_2665A6908(v0, type metadata accessor for Snippet.Event);
}

uint64_t OUTLINED_FUNCTION_26_14()
{
  result = *(v0 + 280);
  v2 = *(v0 + 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_13(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 312);
  return *(v2 + 216);
}

uint64_t OUTLINED_FUNCTION_34_9()
{
  result = v0[8];
  v2 = v0[6];
  v3 = *(v0[7] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 312);
  return *(v2 + 216);
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  v1 = v0[5];
  result = v0[2];
  v3 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_60_3(uint64_t a1)
{

  return sub_26665E6A4(v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  result = *v0;
  v3 = v1[52];
  v4 = v1[48];
  v5 = v1[32];
  return result;
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1, uint64_t a2)
{

  return sub_2665A17F8(a1, a2, v2, v3);
}

uint64_t sub_26665EAC8(CGColor *a1)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, a1, 0);

  if (CopyByMatchingToColorSpace)
  {
    v4 = CopyByMatchingToColorSpace;
    v5 = sub_26666C5C8();

    if (v5)
    {
      if (v5[2] >= 3uLL)
      {
        v16 = v5[4];
        v18 = v5[5];
        v19 = v5[6];

        return v16;
      }
    }
  }

  if (qword_28007CD98 != -1)
  {
    swift_once();
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, static Logger.calendarUIPlugin);
  v7 = CopyByMatchingToColorSpace;
  v8 = sub_26666C148();
  v9 = sub_26666C608();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FFB8, &qword_26667C448);
    v13 = sub_26666C318();
    v15 = sub_2665BFC90(v13, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_266549000, v8, v9, "[Snippet.Color] Invalid number of color components %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x266789690](v11, -1, -1);
    MEMORY[0x266789690](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_26665EDA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5079616C70736964 && a2 == 0xE900000000000033;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1111970419 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26665EE74(char a1)
{
  if (a1)
  {
    return 1111970419;
  }

  else
  {
    return 0x5079616C70736964;
  }
}

uint64_t sub_26665EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26665EDA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26665EED8(uint64_t a1)
{
  v2 = sub_26665F2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665EF14(uint64_t a1)
{
  v2 = sub_26665F2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26665EF50(uint64_t a1)
{
  v2 = sub_26665F374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665EF8C(uint64_t a1)
{
  v2 = sub_26665F374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26665EFC8(uint64_t a1)
{
  v2 = sub_26665F320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665F004(uint64_t a1)
{
  v2 = sub_26665F320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Color.ColorSpace.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FED8, &qword_26667BED0);
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_4_12();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEE0, &qword_26667BED8);
  OUTLINED_FUNCTION_3_0(v32);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEE8, &qword_26667BEE0);
  OUTLINED_FUNCTION_3_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v32 - v26;
  v29 = a1[3];
  v28 = a1[4];
  OUTLINED_FUNCTION_8_26(a1);
  sub_26665F2CC();
  sub_26666CBE8();
  v30 = (v21 + 8);
  if (v35)
  {
    v37 = 1;
    sub_26665F320();
    sub_26666CA08();
    (*(v33 + 8))(v2, v34);
  }

  else
  {
    v36 = 0;
    sub_26665F374();
    sub_26666CA08();
    (*(v12 + 8))(v18, v32);
  }

  return (*v30)(v27, v19);
}

unint64_t sub_26665F2CC()
{
  result = qword_28007FEF0;
  if (!qword_28007FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEF0);
  }

  return result;
}

unint64_t sub_26665F320()
{
  result = qword_28007FEF8;
  if (!qword_28007FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEF8);
  }

  return result;
}

unint64_t sub_26665F374()
{
  result = qword_28007FF00;
  if (!qword_28007FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF00);
  }

  return result;
}

uint64_t Snippet.Color.ColorSpace.init(from:)(unint64_t a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF08, &qword_26667BEE8);
  OUTLINED_FUNCTION_3_0(v52);
  v50 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF10, &qword_26667BEF0);
  OUTLINED_FUNCTION_3_0(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF18, &unk_26667BEF8);
  OUTLINED_FUNCTION_3_0(v18);
  v51 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_4_12();
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  OUTLINED_FUNCTION_8_26(a1);
  sub_26665F2CC();
  v26 = v53;
  sub_26666CBD8();
  if (v26)
  {
    goto LABEL_8;
  }

  v47 = v10;
  v48 = v17;
  v53 = a1;
  v27 = v52;
  v28 = sub_26666C9F8();
  result = sub_266575DD8(v28, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v37 = sub_26666C848();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190) + 48);
    *v39 = &type metadata for Snippet.Color.ColorSpace;
    sub_26666C978();
    sub_26666C838();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v1, v18);
    a1 = v53;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v46 = 0;
  if (v31 < (v32 >> 1))
  {
    a1 = *(v30 + v31);
    sub_266575DD4(v31 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (a1)
      {
        LODWORD(v49) = a1;
        v55 = 1;
        sub_26665F320();
        OUTLINED_FUNCTION_12_3();
        swift_unknownObjectRelease();
        (*(v50 + 8))(v9, v27);
        v42 = OUTLINED_FUNCTION_4_8();
        v43(v42);
        a1 = v49;
      }

      else
      {
        v54 = 0;
        sub_26665F374();
        v41 = v48;
        OUTLINED_FUNCTION_12_3();
        swift_unknownObjectRelease();
        (*(v49 + 8))(v41, v47);
        v44 = OUTLINED_FUNCTION_4_8();
        v45(v44);
      }

      __swift_destroy_boxed_opaque_existential_1(v53);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26665F868(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_26665F9C4(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = 1702194274;
      break;
    case 3:
      result = 0x617053726F6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26665FA4C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = Snippet.Color.ColorSpace.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_26665FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26665F868(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26665FAC8(uint64_t a1)
{
  v2 = sub_266660148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665FB04(uint64_t a1)
{
  v2 = sub_266660148();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static Snippet.Color.__derived_struct_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a3 != a6 || a4 != a7 || a5 != a8)
  {
    return 0;
  }

  if (a1 != 2)
  {
    return a2 != 2 && ((a2 ^ a1) & 1) == 0;
  }

  return a2 == 2;
}

uint64_t Snippet.Color.encode(to:)(void *a1, char a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF20, &qword_26667BF08);
  OUTLINED_FUNCTION_3_0(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v23 - v18;
  v20 = a1[3];
  v21 = a1[4];
  OUTLINED_FUNCTION_8_26(a1);
  sub_266660148();
  sub_26666CBE8();
  v25 = a3;
  v24 = 0;
  sub_26666019C();
  OUTLINED_FUNCTION_2_44();
  if (!v5)
  {
    v25 = a4;
    v24 = 1;
    OUTLINED_FUNCTION_2_44();
    v25 = a5;
    v24 = 2;
    OUTLINED_FUNCTION_2_44();
    LOBYTE(v25) = a2;
    v24 = 3;
    sub_2666601F0();
    sub_26666CA38();
  }

  return (*(v13 + 8))(v19, v11);
}

uint64_t Snippet.Color.hash(into:)(double a1, double a2, double a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = a5;
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x266788F00](*&a1);
  if (a2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a2;
  }

  MEMORY[0x266788F00](*&v9);
  if (a3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3;
  }

  MEMORY[0x266788F00](*&v10);
  if (v8 == 2)
  {
    return sub_26666CBA8();
  }

  sub_26666CBA8();
  return MEMORY[0x266788EE0](a5 & 1);
}

uint64_t Snippet.Color.hashValue.getter(unsigned __int8 a1, double a2, double a3, double a4)
{
  sub_26666CB88();
  Snippet.Color.hash(into:)(a2, a3, a4, v9, a1);
  return sub_26666CBC8();
}

uint64_t Snippet.Color.init(from:)(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF40, &qword_26667BF10);
  OUTLINED_FUNCTION_3_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_4_12();
  v12 = a1[3];
  v13 = a1[4];
  OUTLINED_FUNCTION_8_26(a1);
  sub_266660148();
  sub_26666CBD8();
  if (!v2)
  {
    sub_266660244();
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_7_30();
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_7_30();
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_7_30();
    sub_266660298();
    OUTLINED_FUNCTION_1_48();
    sub_26666C9A8();
    (*(v7 + 8))(v3, v5);
    v1 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_26666006C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_26666CB88();
  Snippet.Color.hash(into:)(v1, v2, v3, v6, v4);
  return sub_26666CBC8();
}

uint64_t sub_2666600D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Snippet.Color.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = result;
  }

  return result;
}

unint64_t sub_266660148()
{
  result = qword_28007FF28;
  if (!qword_28007FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF28);
  }

  return result;
}

unint64_t sub_26666019C()
{
  result = qword_28007FF30;
  if (!qword_28007FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF30);
  }

  return result;
}

unint64_t sub_2666601F0()
{
  result = qword_28007FF38;
  if (!qword_28007FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF38);
  }

  return result;
}

unint64_t sub_266660244()
{
  result = qword_28007FF48;
  if (!qword_28007FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF48);
  }

  return result;
}

unint64_t sub_266660298()
{
  result = qword_28007FF50;
  if (!qword_28007FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF50);
  }

  return result;
}

unint64_t sub_2666602F0()
{
  result = qword_28007FF58;
  if (!qword_28007FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF58);
  }

  return result;
}

unint64_t sub_266660348()
{
  result = qword_28007FF60;
  if (!qword_28007FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF60);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2666603B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 24);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2666603FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s5ColorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266660540(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266660640()
{
  result = qword_28007FF68;
  if (!qword_28007FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF68);
  }

  return result;
}

unint64_t sub_266660698()
{
  result = qword_28007FF70;
  if (!qword_28007FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF70);
  }

  return result;
}

unint64_t sub_2666606F0()
{
  result = qword_28007FF78;
  if (!qword_28007FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF78);
  }

  return result;
}

unint64_t sub_266660748()
{
  result = qword_28007FF80;
  if (!qword_28007FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF80);
  }

  return result;
}

unint64_t sub_2666607A0()
{
  result = qword_28007FF88;
  if (!qword_28007FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF88);
  }

  return result;
}

unint64_t sub_2666607F8()
{
  result = qword_28007FF90;
  if (!qword_28007FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF90);
  }

  return result;
}

unint64_t sub_266660850()
{
  result = qword_28007FF98;
  if (!qword_28007FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF98);
  }

  return result;
}

unint64_t sub_2666608A8()
{
  result = qword_28007FFA0;
  if (!qword_28007FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFA0);
  }

  return result;
}

unint64_t sub_266660900()
{
  result = qword_28007FFA8;
  if (!qword_28007FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFA8);
  }

  return result;
}

unint64_t sub_266660958()
{
  result = qword_28007FFB0;
  if (!qword_28007FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_44()
{

  return sub_26666CA78();
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return sub_26666C9E8();
}

uint64_t sub_266660A28@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = a2;
  sub_26655358C(a1, (a2 + 1));
  sub_2666373CC();
  v5 = v4;

  v6 = *(v5 + 16);
  if (v6 != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v18 = sub_26666C168();
    __swift_project_value_buffer(v18, qword_28156D7E8);
    v19 = sub_26666C148();
    v20 = sub_26666C618();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266549000, v19, v20, "[ParticipantDisambiguationContainer] Disambiguation items contains more than one unique person, doing person disambiguation", v21, 2u);
      MEMORY[0x266789690](v21, -1, -1);
    }

    if (v6)
    {
      v41 = a1;
      v43 = v3;
      v44 = MEMORY[0x277D84F90];
      sub_266633C20(0, v6, 0);
      v22 = v44;
      v23 = (v5 + 48);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = *(v44 + 16);
        v27 = *(v44 + 24);
        v28 = *(v23 - 2);

        if (v26 >= v27 >> 1)
        {
          sub_266633C20(v27 > 1, v26 + 1, 1);
        }

        *(v44 + 16) = v26 + 1;
        v29 = v44 + 32 * v26;
        *(v29 + 32) = v28;
        *(v29 + 40) = v24;
        *(v29 + 48) = v25;
        *(v29 + 56) = 0;
        v23 += 3;
        --v6;
      }

      while (v6);
      __swift_destroy_boxed_opaque_existential_1(v41);
      goto LABEL_27;
    }

LABEL_30:

    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  v9 = *(v5 + 32);

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v10 = sub_26666C168();
  __swift_project_value_buffer(v10, qword_28156D7E8);
  v11 = v9;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = v11;
  v13 = sub_26666C148();
  v14 = sub_26666C618();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    sub_266637AD4();
    v17 = sub_2665C485C(v16);

    *(v15 + 4) = v17;

    _os_log_impl(&dword_266549000, v13, v14, "[ParticipantDisambiguationContainer] Disambiguation items contains only one person with %ld handles, doing handle disambiguation", v15, 0xCu);
    MEMORY[0x266789690](v15, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v13 = v12;
  }

  sub_266637BBC();
  v31 = v30;
  v32 = sub_2665C485C(v30);
  if (!v32)
  {

    goto LABEL_30;
  }

  v33 = v32;
  v45 = MEMORY[0x277D84F90];
  result = sub_266633C20(0, v32 & ~(v32 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v42 = a1;
    v43 = v3;
    v35 = 0;
    v22 = v45;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x266788B60](v35, v31);
      }

      else
      {
        v36 = *(v31 + 8 * v35 + 32);
      }

      v37 = v36;
      v39 = *(v45 + 16);
      v38 = *(v45 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_266633C20(v38 > 1, v39 + 1, 1);
      }

      *(v45 + 16) = v39 + 1;
      v40 = v45 + 32 * v39;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      ++v35;
      *(v40 + 32) = v37;
      *(v40 + 56) = 1;
    }

    while (v33 != v35);
    __swift_destroy_boxed_opaque_existential_1(v42);

LABEL_27:

    v3 = v43;
LABEL_31:
    *v3 = v22;
    return result;
  }

  __break(1u);
  return result;
}

void sub_266660EBC()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 + 32 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v5 + 32;
    ++v1;
    v7 = *(v5 + 56);
    v5 += 32;
    if ((v7 & 1) == 0)
    {
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *v6;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v4 + 16);
        sub_2665C6184();
        v4 = v14;
      }

      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_2665C6184();
        v4 = v15;
      }

      *(v4 + 16) = v11 + 1;
      v12 = (v4 + 24 * v11);
      v12[4] = v10;
      v12[5] = v8;
      v12[6] = v9;
      goto LABEL_2;
    }
  }
}

uint64_t sub_266660FD4()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v4 = *(*v0 + 16);
LABEL_2:
  v5 = v2 + 32 * v1;
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = (v5 + 32);
    ++v1;
    v7 = *(v5 + 56);
    v5 += 32;
    if (v7 == 1)
    {
      v8 = *v6;
      MEMORY[0x2667887C0]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      result = v9;
      goto LABEL_2;
    }
  }

  return result;
}

BOOL sub_2666610B0()
{
  v1 = sub_266669A88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
  sub_266669A78();
  v8 = sub_266669658();
  (*(v2 + 8))(v6, v1);
  return (v8 & 1) == 0;
}

uint64_t sub_2666611C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_266661200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for OpenCalendarViewIntent()
{
  result = qword_28007FFC0;
  if (!qword_28007FFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666612E8()
{
  sub_26666135C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26666135C()
{
  if (!qword_28156D158)
  {
    sub_266668D38();
    v0 = sub_26666C6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_28156D158);
    }
  }
}

uint64_t sub_2666613B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266668D38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FFD0, &unk_26667C5B0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v34 - v19;
  v21 = *(v18 + 56);
  sub_26655E020(a1, &v34 - v19);
  sub_26655E020(a2, &v20[v21]);
  OUTLINED_FUNCTION_0_47(v20);
  if (v22)
  {
    OUTLINED_FUNCTION_0_47(&v20[v21]);
    if (v22)
    {
      sub_266557D74(v20, &qword_28007D140, &qword_26666F140);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  sub_26655E020(v20, v14);
  OUTLINED_FUNCTION_0_47(&v20[v21]);
  if (v22)
  {
    (*(v5 + 8))(v14, v4);
LABEL_9:
    sub_266557D74(v20, &unk_28007FFD0, &unk_26667C5B0);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  (*(v5 + 32))(v9, &v20[v21], v4);
  sub_2666616B4();
  v24 = sub_26666C2E8();
  v25 = *(v5 + 8);
  v25(v9, v4);
  v25(v14, v4);
  sub_266557D74(v20, &qword_28007D140, &qword_26666F140);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v26 = *(type metadata accessor for OpenCalendarViewIntent() + 20);
  v27 = *(a2 + v26);
  v28 = sub_26660E9EC(*(a1 + v26));
  v30 = v29;
  if (v28 == sub_26660E9EC(v27) && v30 == v31)
  {

    v23 = 1;
  }

  else
  {
    v23 = sub_26666CAC8();
  }

  return v23 & 1;
}

unint64_t sub_2666616B4()
{
  result = qword_28007E5D8;
  if (!qword_28007E5D8)
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E5D8);
  }

  return result;
}

uint64_t type metadata accessor for StringLocalizer()
{
  result = qword_28156CBD0;
  if (!qword_28156CBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2666617A0()
{
  result = sub_266668D98();
  if (v1 <= 0x3F)
  {
    result = sub_266661824();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_266661824()
{
  result = qword_28156C078;
  if (!qword_28156C078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156C078);
  }

  return result;
}

uint64_t sub_266661868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2666618A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_266661914@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v148 = a2;
  v123 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE30, &unk_266677230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v135 = &v122 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v139 = &v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v138 = &v122 - v15;
  v140 = sub_26666C228();
  v16 = OUTLINED_FUNCTION_3_0(v140);
  v125 = v17;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v16, v20);
  v124 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v122 = &v122 - v24;
  v137 = sub_266669738();
  v25 = OUTLINED_FUNCTION_3_0(v137);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25, v30);
  v136 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2666699C8();
  v32 = OUTLINED_FUNCTION_3_0(v127);
  v126 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32, v36);
  v38 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266663398();
  sub_266669928();
  if (qword_28007CE30 != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_2_45();
    swift_once();
  }

  sub_2665E8748();
  sub_266669978();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v39 = OUTLINED_FUNCTION_9_16();
  v134 = xmmword_26666EED0;
  *(v39 + 16) = xmmword_26666EED0;
  v40 = sub_26666C338();
  OUTLINED_FUNCTION_12_25(v40, v41);
  v131 = sub_266595F88();
  OUTLINED_FUNCTION_0_48();
  sub_26666C6F8();

  v146 = sub_2666312CC(2);
  v147 = v42;
  MEMORY[0x266788710](0x2E65756C61562ELL, 0xE700000000000000);
  v43 = sub_26666C338();
  MEMORY[0x266788710](v43);

  v44 = v147;
  *(v39 + 32) = v146;
  *(v39 + 40) = v44;
  v133 = v38;
  sub_266669948();
  sub_2665F5AE4();
  v46 = *(v45 + 16);
  v47 = MEMORY[0x277D84F90];
  v48 = a1;
  v145 = a1;
  v132 = MEMORY[0x277D84F90];
  v129 = v45;
  if (v46)
  {
    v50 = *(v27 + 16);
    v49 = v27 + 16;
    v51 = v45 + ((*(v49 + 64) + 32) & ~*(v49 + 64));
    v142 = *(v49 + 56);
    v143 = v50;
    v144 = v49;
    v52 = (v49 - 8);
    v141 = MEMORY[0x277D84F90];
    v53 = v135;
    OUTLINED_FUNCTION_26_15();
    do
    {
      (v143)(v47, v51, v49);
      sub_266669718();
      v54 = sub_2666697B8();
      if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
      {
        (*v52)(v47, v49);
        sub_266566494(v53, &qword_28007EE30, &unk_266677230);
      }

      else
      {
        v55 = sub_2666697A8();
        v57 = v56;
        (*v52)(v47, v49);
        (*(*(v54 - 8) + 8))(v53, v54);
        if (v57)
        {
          v47 = v141;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = *(v47 + 16);
            sub_2665C6350();
            v47 = v61;
          }

          v58 = *(v47 + 16);
          if (v58 >= *(v47 + 24) >> 1)
          {
            sub_2665C6350();
            v47 = v62;
          }

          *(v47 + 16) = v58 + 1;
          v141 = v47;
          v59 = v47 + 16 * v58;
          *(v59 + 32) = v55;
          *(v59 + 40) = v57;
          v48 = v145;
          v53 = v135;
        }

        else
        {
          v48 = v145;
        }

        OUTLINED_FUNCTION_26_15();
      }

      v51 += v142;
      --v46;
    }

    while (v46);
  }

  else
  {
    v141 = MEMORY[0x277D84F90];
  }

  v63 = sub_2665F6310(v141);
  inited = swift_initStackObject();
  inited[1] = v134;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49();
  }

  inited[2].n128_u64[0] = sub_2665E8760();
  inited[2].n128_u64[1] = v65;
  sub_2665F63D0(v63, inited);

  swift_setDeallocating();
  sub_266639138();
  sub_2666699A8();
  v66 = OUTLINED_FUNCTION_9_16();
  v67 = OUTLINED_FUNCTION_5_35(v66, v134);
  OUTLINED_FUNCTION_12_25(v67, v68);
  OUTLINED_FUNCTION_0_48();
  v38 = sub_26666C6F8();
  a1 = v69;

  v146 = sub_2666312CC(2);
  v147 = v70;
  v71 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v71, 0xE700000000000000);
  v72 = sub_26666C338();
  MEMORY[0x266788710](v72);

  v73 = v147;
  v66[2].n128_u64[0] = v146;
  v66[2].n128_u64[1] = v73;
  sub_266669998();
  sub_2666698F8();
  v146 = MEMORY[0x277D84F90];
  v74 = sub_2665C485C(v48);
  v75 = 0;
  v76 = v48 & 0xC000000000000001;
  v27 = v48 & 0xFFFFFFFFFFFFFF8;
  while (v74 != v75)
  {
    if (v76)
    {
      v77 = MEMORY[0x266788B60](v75, v48);
    }

    else
    {
      if (v75 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v77 = v48[v75 + 4];
    }

    a1 = v77;
    v78 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = sub_26656C24C(v77);

    ++v75;
    if (v38)
    {
      MEMORY[0x2667887C0]();
      if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v132 = v146;
      v75 = v78;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v79 = sub_26666A058();
  OUTLINED_FUNCTION_3_1(v79);
  v81 = *(v80 + 72);
  v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v84 = swift_allocObject();
  v84[1] = v134;
  v38 = v132;
  v85 = v128;
  sub_26664F374(v132, v84 + v83);
  v86 = v133;
  v142 = v85;
  if (v85)
  {

    v84[1].n128_u64[0] = 0;

    (*(v126 + 8))(v86, v127);
  }

  else
  {

    sub_266669918();
    v88 = sub_26666C1E8();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    swift_allocObject();
    v91 = sub_26666C1D8();
    v92 = 0;
    v143 = "alendar.directInvocation";
    v144 = v91;
    v137 = (v125 + 32);
    v141 = MEMORY[0x277D84F90];
    while (v74 != v92)
    {
      if (v76)
      {
        v93 = MEMORY[0x266788B60](v92, v48);
      }

      else
      {
        if (v92 >= *(v27 + 16))
        {
          goto LABEL_57;
        }

        v93 = v48[v92 + 4];
      }

      v94 = v93;
      v38 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        goto LABEL_56;
      }

      v95 = v139;
      sub_26666C1C8();
      v96 = sub_26666C1B8();
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v96);
      v97 = v138;
      sub_2665F1A9C(0xD000000000000013, v143 | 0x8000000000000000, v95, v98, v99, v100, v101, v102, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
      sub_266566494(v95, &unk_28007F810, &unk_26667C710);

      a1 = v97;
      if (__swift_getEnumTagSinglePayload(v97, 1, v140) == 1)
      {
        sub_266566494(v97, &qword_28007ED70, &qword_266671CC0);
        ++v92;
        v48 = v145;
      }

      else
      {
        v103 = *v137;
        v104 = v122;
        v105 = v140;
        (*v137)(v122, a1, v140);
        v103(v124, v104, v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = *(v141 + 16);
          sub_2665C6994();
          v141 = v110;
        }

        v106 = *(v141 + 16);
        if (v106 >= *(v141 + 24) >> 1)
        {
          sub_2665C6994();
          v141 = v111;
        }

        v107 = v140;
        v108 = v141;
        *(v141 + 16) = v106 + 1;
        v103(v108 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v106, v124, v107);
        v92 = v38;
        v48 = v145;
      }
    }

    v112 = v133;
    sub_2666698E8();
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v113 = sub_26666C168();
    __swift_project_value_buffer(v113, qword_28156D7E8);
    v114 = sub_26666C148();
    v115 = sub_26666C618();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 134217984;
      swift_beginAccess();
      v117 = sub_2666698D8();
      if (v117)
      {
        v118 = v117;
        swift_endAccess();
        v119 = *(v118 + 16);
      }

      else
      {
        swift_endAccess();
        v119 = -1;
      }

      *(v116 + 4) = v119;
      _os_log_impl(&dword_266549000, v114, v115, "Donating %ld rrEntities", v116, 0xCu);
      MEMORY[0x266789690](v116, -1, -1);
    }

    swift_beginAccess();
    v120 = v126;
    v121 = v127;
    (*(v126 + 16))(v123, v112, v127);
    (*(v120 + 8))(v112, v121);
  }
}

uint64_t sub_266662640@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  HIDWORD(v42) = a1;
  sub_266663398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v3 = OUTLINED_FUNCTION_9_16();
  *(v3 + 16) = xmmword_26666EED0;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49();
  }

  *(v3 + 32) = sub_2665E8760();
  *(v3 + 40) = v4;
  sub_2666699A8();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_5_35(v5, xmmword_266672100);
  v6 = sub_266595F88();
  v7 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_9_28(v6, v8, v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v6, v6, v6, v42, v46, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_21_13();
  v50 = sub_2666312CC(2);
  v53 = v15;
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_18_14();
  v16 = sub_26666C338();
  MEMORY[0x266788710](v16);

  v5[2].n128_u64[0] = v50;
  v5[2].n128_u64[1] = v53;
  v17 = sub_26666C338();
  OUTLINED_FUNCTION_9_28(v17, v18, v19, v20, v21, v22, v23, v24, v40, v41, v6, v6, v43, v47, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();

  v51 = sub_2666312CC(2);
  v54 = v25;
  OUTLINED_FUNCTION_18_14();
  v26 = sub_26666C338();
  MEMORY[0x266788710](v26);

  v5[3].n128_u64[0] = v51;
  v5[3].n128_u64[1] = v54;
  v27 = sub_26666C338();
  OUTLINED_FUNCTION_9_28(v27, v28, v29, v30, v31, v32, v33, v34, v7, v6, v6, v6, v44, v48, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_19_21();
  v52 = sub_2666312CC(2);
  v55 = v35;
  OUTLINED_FUNCTION_18_14();
  v36 = sub_26666C338();
  MEMORY[0x266788710](v36);

  v5[4].n128_u64[0] = v52;
  v5[4].n128_u64[1] = v55;
  sub_266669998();
  sub_2665E4248(v45 & 1);
  if (!v49)
  {
    return sub_266669918();
  }

  v37 = sub_2666699C8();
  OUTLINED_FUNCTION_0_5(v37);
  return (*(v38 + 8))(a2);
}

uint64_t sub_266662924@<X0>(uint64_t a1@<X8>)
{
  sub_266663398();
  OUTLINED_FUNCTION_7_31();
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_11_24();
  v6(v5);
  sub_2666699A8();
  OUTLINED_FUNCTION_7_31();
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_11_24();
  result = v10(v9);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
    v12 = OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_3_1(v12);
    v14 = *(v13 + 72);
    v15 = OUTLINED_FUNCTION_16_20();
    OUTLINED_FUNCTION_27_19(v15, xmmword_26666EED0);
    if (v1)
    {

      v16 = sub_2666699C8();
      OUTLINED_FUNCTION_0_5(v16);
      (*(v17 + 8))(a1);
      OUTLINED_FUNCTION_23_17();
    }

    else
    {
      sub_266669918();
    }
  }

  return result;
}

uint64_t sub_266662A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266663398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v3 = OUTLINED_FUNCTION_9_16();
  *(v3 + 16) = xmmword_26666EED0;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49();
  }

  *(v3 + 32) = sub_2665E8760();
  *(v3 + 40) = v4;
  sub_2666699A8();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_5_35(v5, xmmword_266672100);
  OUTLINED_FUNCTION_15_19();
  v6 = sub_266595F88();
  v7 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_14_18(v6, v8, v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v6, v6, v6, 1, 2, v53, a1, v60, v63, v66);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_21_13();
  v69 = sub_2666312CC(2);
  v15 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v15, 0xE700000000000000);
  v16 = sub_26666C338();
  MEMORY[0x266788710](v16);

  OUTLINED_FUNCTION_28_12(v69);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_14_18(v17, v18, v19, v20, v21, v22, v23, v24, v46, v47, v6, v6, v48, v51, v54, v57, v61, v64, v67);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();

  v70 = sub_2666312CC(2);
  v72 = v25;
  v26 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v26, 0xE700000000000000);
  v27 = sub_26666C338();
  MEMORY[0x266788710](v27);

  v5[3].n128_u64[0] = v70;
  v5[3].n128_u64[1] = v72;
  sub_26666C338();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_14_18(v28, v29, v30, v31, v32, v33, v34, v35, v7, v6, v6, v6, v49, v52, v55, v58, v62, v65, v68);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_19_21();
  v71 = sub_2666312CC(2);
  v73 = v36;
  v37 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v37, 0xE700000000000000);
  v38 = sub_26666C338();
  MEMORY[0x266788710](v38);

  v5[4].n128_u64[0] = v71;
  v5[4].n128_u64[1] = v73;
  sub_266669998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v39 = OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_3_1(v39);
  v41 = *(v40 + 72);
  v42 = OUTLINED_FUNCTION_0_29();
  *(v42 + 16) = v50;
  sub_26664FA38(v59, v42 - 0x1F00000000000000);
  if (!v74)
  {
    return sub_266669918();
  }

  v43 = sub_2666699C8();
  OUTLINED_FUNCTION_0_5(v43);
  (*(v44 + 8))(a2);
  OUTLINED_FUNCTION_23_17();
}

uint64_t sub_266662D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266663398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v3 = OUTLINED_FUNCTION_9_16();
  *(v3 + 16) = xmmword_26666EED0;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49();
  }

  *(v3 + 32) = sub_2665E8760();
  *(v3 + 40) = v4;
  sub_2666699A8();
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_5_35(v5, xmmword_266671D60);
  OUTLINED_FUNCTION_25_16(v6, v7);
  OUTLINED_FUNCTION_10_24();
  v8 = sub_266595F88();
  v9 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_24_14(v8, v10, v11, v12, v13, v14, v15, v16, MEMORY[0x277D837D0], v8, v8, v8, v63, v67, 1, 2, v78, a1, v87, v91, v95);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_21_13();
  v99 = sub_2666312CC(2);
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_18_14();
  v17 = sub_26666C338();
  MEMORY[0x266788710](v17);

  v18 = OUTLINED_FUNCTION_28_12(v99);
  OUTLINED_FUNCTION_25_16(v18, v19);
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_24_14(v20, v21, v22, v23, v24, v25, v26, v27, v61, v62, v8, v8, v64, v68, v71, v75, v79, v83, v88, v92, v96);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();

  v100 = sub_2666312CC(2);
  v103 = v28;
  OUTLINED_FUNCTION_18_14();
  v29 = sub_26666C338();
  MEMORY[0x266788710](v29);

  v5[3].n128_u64[0] = v100;
  v5[3].n128_u64[1] = v103;
  v30 = sub_26666C338();
  OUTLINED_FUNCTION_25_16(v30, v31);
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_24_14(v32, v33, v34, v35, v36, v37, v38, v39, v9, v8, v8, v8, v65, a2, v72, v76, v80, v84, v89, v93, v97);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();

  v101 = sub_2666312CC(3);
  v104 = v40;
  OUTLINED_FUNCTION_18_14();
  v41 = sub_26666C338();
  MEMORY[0x266788710](v41);

  v5[4].n128_u64[0] = v101;
  v5[4].n128_u64[1] = v104;
  v42 = sub_26666C338();
  OUTLINED_FUNCTION_25_16(v42, v43);
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_24_14(v44, v45, v46, v47, v48, v49, v50, v51, v9, v8, v8, v8, v66, v69, v73, v77, v81, v85, v90, v94, v98);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_19_21();
  v102 = sub_2666312CC(2);
  v105 = v52;
  OUTLINED_FUNCTION_18_14();
  v53 = sub_26666C338();
  MEMORY[0x266788710](v53);

  v5[5].n128_u64[0] = v102;
  v5[5].n128_u64[1] = v105;
  sub_266669998();
  sub_266669938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v54 = OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_3_1(v54);
  v56 = *(v55 + 72);
  v57 = OUTLINED_FUNCTION_0_29();
  *(v57 + 16) = v74;
  sub_26664FA38(v86, v57 - 0x1F00000000000000);
  if (!v106)
  {
    return sub_266669918();
  }

  v58 = sub_2666699C8();
  OUTLINED_FUNCTION_0_5(v58);
  (*(v59 + 8))(v70);
  OUTLINED_FUNCTION_23_17();
}

uint64_t sub_266663128@<X0>(uint64_t a1@<X8>)
{
  sub_2666699B8();
  if (qword_28007CE30 != -1)
  {
    OUTLINED_FUNCTION_2_45();
    swift_once();
  }

  sub_26666A0F8();
  sub_266669908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v3 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_5_35(v3, xmmword_26666EED0);
  v4 = sub_266595F88();
  OUTLINED_FUNCTION_9_28(v4, v5, v6, v7, v8, v9, MEMORY[0x277D837D0], v10, MEMORY[0x277D837D0], v4, v4, v4, 1, 2, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  sub_26666C6F8();

  v30 = sub_2666312CC(2);
  v31 = v11;
  v12 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v12, 0xE700000000000000);
  v13 = sub_26666C338();
  MEMORY[0x266788710](v13);

  v3[2].n128_u64[0] = v30;
  v3[2].n128_u64[1] = v31;
  sub_266669958();
  sub_2665E8748();
  sub_266669988();
  OUTLINED_FUNCTION_7_31();
  v15 = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_11_24();
  v17(v16);
  sub_266669968();
  OUTLINED_FUNCTION_7_31();
  v19 = *(v18 + 16);
  v20 = OUTLINED_FUNCTION_11_24();
  result = v21(v20);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
    v23 = OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_3_1(v23);
    v25 = *(v24 + 72);
    v26 = OUTLINED_FUNCTION_16_20();
    OUTLINED_FUNCTION_27_19(v26, v29);
    if (v1)
    {
      v27 = sub_2666699C8();
      OUTLINED_FUNCTION_0_5(v27);
      (*(v28 + 8))(a1);

      OUTLINED_FUNCTION_23_17();
    }

    else
    {
      sub_266669918();
    }
  }

  return result;
}

uint64_t sub_266663398()
{
  sub_2666699B8();
  if (qword_28007CE30 != -1)
  {
    OUTLINED_FUNCTION_2_45();
    swift_once();
  }

  sub_26666A0F8();
  sub_266669908();
  sub_2665E8748();
  sub_266669978();
  return sub_266669938();
}

uint64_t OUTLINED_FUNCTION_1_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_35(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26666C338();
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t result, uint64_t a2)
{
  *(v2 - 192) = result;
  *(v2 - 184) = a2;
  *(v2 - 104) = 32;
  *(v2 - 96) = 0xE100000000000000;
  *(v2 - 120) = 95;
  *(v2 - 112) = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_26666C6F8();
}

uint64_t OUTLINED_FUNCTION_16_20()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_18_14()
{

  JUMPOUT(0x266788710);
}

uint64_t OUTLINED_FUNCTION_19_21()
{
}

uint64_t OUTLINED_FUNCTION_21_13()
{
}

uint64_t OUTLINED_FUNCTION_25_16(uint64_t result, uint64_t a2)
{
  *(v2 - 96) = result;
  *(v2 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26664F8BC();
}

uint64_t OUTLINED_FUNCTION_28_12@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return sub_26666C338();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return sub_26666A058();
}

id sub_266663660(char a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_26666374C(a1);
  v9 = v8;
  v10 = v6;
  sub_266663764(v7, v9, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setMaxAge_];

  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setSearchTimeout_];

  return v10;
}

void sub_266663764(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();

  [a3 setDesiredAccuracy_];
}

unint64_t _INPBTargetEventUnsupportedReason.description.getter(int a1)
{
  v1 = 0xD000000000000016;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 0xD000000000000020;
  }

  else
  {
    return v1;
  }
}

unint64_t _INPBParticipantUnsupportedReason.description.getter(int a1)
{
  v1 = 0xD000000000000013;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_266663890()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266663944()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = **(v0 + 32);
  sub_266618A68();

  v7 = v6;
  v8 = v5;
  sub_2666695D8();
  sub_266669608();
  v9 = sub_2666695F8();
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_266663A38()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_266669708();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64);
  v1[11] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v9);
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v12);
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v15);
  v17 = *(v16 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_266663BAC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 64);
  sub_26655358C(v3 + 16, v0 + 16);
  v4 = *(v0 + 40);
  *(v0 + 136) = v4;
  *(v0 + 152) = __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  v5 = type metadata accessor for Snippet();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  v12 = *(v3 + 8);
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_266663C9C;

  return sub_2665DDD34();
}

uint64_t sub_266663C9C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = v4[20];
  v7 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v5[21] = v1;

  if (v1)
  {
    v9 = v5[16];
    sub_266557D74(v5[15], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v9, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[22] = a1;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266663DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[17];
  v16 = v14[18];
  v18 = v14[13];
  v17 = v14[14];
  v20 = v14[11];
  v19 = v14[12];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_2665D5640();
  sub_26656CFC4();
  v33 = swift_task_alloc();
  v14[23] = v33;
  *v33 = v14;
  v33[1] = sub_266663F3C;
  v34 = v14[22];
  v35 = v14[19];
  v36 = v14[16];
  v38 = v14[14];
  v37 = v14[15];
  v39 = v14[11];
  v40 = v14[7];
  v45 = v14[17];
  v46 = v14[18];
  v43 = v14[13];
  v44 = v14[12];

  return sub_2665643AC(v40, v36, v37, v34, 0, 0, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266663F3C()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[23];
  v3 = v1[22];
  v17 = v1[16];
  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[10];
  v10 = v1[9];
  v11 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;

  (*(v9 + 8))(v8, v10);
  sub_266557D74(v7, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v6, &unk_28007DE20, &unk_26666EAE0);
  sub_266557D74(v5, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v4, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v17, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266664198()
{
  OUTLINED_FUNCTION_22_3();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266664230()
{
  OUTLINED_FUNCTION_22_3();

  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1();
}

uint64_t sub_2666642C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26655A20C;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_26666438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26655A20C;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_266664450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26655A20C;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_266664514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26655A20C;

  return sub_266663A38();
}

uint64_t sub_2666645AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26655A20C;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_266664670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26655A20C;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_266664734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266559CAC;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_2666647F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26657A00C;

  return sub_266663890();
}

unint64_t sub_2666648A0()
{
  result = qword_28007FFE0;
  if (!qword_28007FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFE0);
  }

  return result;
}

uint64_t sub_2666648F4()
{
  v1 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier;
  v2 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_dateTimeRange) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_recurrence) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_location) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isAllDay) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isBirthday) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_wasPreviouslyRead) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_startAndEndEqual) = 0;
  return v0;
}

uint64_t sub_2666649EC(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
}

uint64_t sub_266664A34(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants);
  *(v1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants) = a1;
}

uint64_t sub_266664A80()
{
  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier);
  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title);
  v1 = *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_dateTimeRange);

  v2 = *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_recurrence);

  v3 = *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_location);

  v4 = *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants);

  return v0;
}

uint64_t sub_266664B2C(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier;
  swift_beginAccess();
  sub_2665BE640(a1 + v3, v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier);
  v4 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title;
  swift_beginAccess();
  sub_2665BE640(a1 + v4, v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_dateTimeRange);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_recurrence);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_location);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isAllDay) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isAllDay);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isBirthday) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isBirthday);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_wasPreviouslyRead) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_wasPreviouslyRead);
  v5 = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_startAndEndEqual);

  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_startAndEndEqual) = v5;
  return v1;
}

uint64_t sub_266664CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v39 - v14;
  v16 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v16 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier, v15);
    v17 = sub_26666BDA8();
    if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1)
    {
      v18 = v15;
LABEL_8:
      result = sub_266583058(v18);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, v15, v17);
  }

  else
  {
    v21 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (!v21 && (OUTLINED_FUNCTION_2_6() & 1) == 0)
    {
      result = OUTLINED_FUNCTION_13_20();
      v25 = a1 == result && a2 == v24;
      if (v25 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
      {
        if (!*(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange))
        {
          goto LABEL_9;
        }

        v26 = sub_26666BB78();
      }

      else
      {
        result = 0x6E65727275636572;
        v27 = a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563;
        if (v27 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
        {
          if (!*(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence))
          {
            goto LABEL_9;
          }

          v26 = type metadata accessor for CalendarEventRecurrence();
        }

        else
        {
          result = 0x6E6F697461636F6CLL;
          if (a1 != 0x6E6F697461636F6CLL || a2 != 0xE800000000000000)
          {
            result = OUTLINED_FUNCTION_2_6();
            if ((result & 1) == 0)
            {
              v30 = a1 == OUTLINED_FUNCTION_15_20() && a2 == v29;
              if (v30 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
              {
                v31 = *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants);
                v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080030, &qword_26667C9E8);
                OUTLINED_FUNCTION_17_18(v32);
              }

              else
              {
                result = 0x7961446C6C417369;
                v33 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
                if (v33 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
                {
                  v34 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isAllDay;
                }

                else
                {
                  result = 0x6468747269427369;
                  v36 = a1 == 0x6468747269427369 && a2 == 0xEA00000000007961;
                  if (v36 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
                  {
                    v34 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isBirthday;
                  }

                  else
                  {
                    v37 = a1 == 0xD000000000000011 && 0x800000026667D600 == a2;
                    if (v37 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
                    {
                      v34 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_wasPreviouslyRead;
                    }

                    else
                    {
                      if (a1 != 0xD000000000000010 || 0x800000026667D620 != a2)
                      {
                        result = OUTLINED_FUNCTION_2_6();
                        if ((result & 1) == 0)
                        {
                          goto LABEL_9;
                        }
                      }

                      v34 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_startAndEndEqual;
                    }
                  }
                }

                v35 = *(v3 + v34);
                *(a3 + 24) = MEMORY[0x277D839B0];
                *a3 = v35;
              }

              return result;
            }
          }

          if (!*(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location))
          {
            goto LABEL_9;
          }

          v26 = sub_26666BD58();
        }
      }

      OUTLINED_FUNCTION_17_18(v26);
    }

    sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title, v12);
    v22 = sub_26666BDA8();
    if (__swift_getEnumTagSinglePayload(v12, 1, v22) == 1)
    {
      v18 = v12;
      goto LABEL_8;
    }

    *(a3 + 24) = v22;
    v23 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v22 - 8) + 32))(v23, v12, v22);
  }
}

uint64_t sub_26666510C()
{
  v0 = sub_26666C958();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266665160(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = OUTLINED_FUNCTION_13_20();
      break;
    case 3:
      result = 0x6E65727275636572;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = OUTLINED_FUNCTION_15_20();
      break;
    case 6:
      result = 0x7961446C6C417369;
      break;
    case 7:
      result = 0x6468747269427369;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2666652B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26666510C();
  *a2 = result;
  return result;
}

uint64_t sub_2666652E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266665160(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266665328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266665158();
  *a1 = result;
  return result;
}

uint64_t sub_26666535C(uint64_t a1)
{
  v2 = sub_2666661F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266665398(uint64_t a1)
{
  v2 = sub_2666661F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666653D4()
{
  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier);
  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title);
  v1 = *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange);

  v2 = *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence);

  v3 = *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location);

  v4 = *(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants);

  return v0;
}

uint64_t sub_26666546C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2666654F0()
{
  sub_2665BE03C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2666655B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080040, &qword_26667C9F0);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v28 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2666661F4();
  sub_26666CBE8();
  v29 = 0;
  sub_26666BDA8();
  OUTLINED_FUNCTION_6_29();
  sub_2666661AC(v15, v16);
  OUTLINED_FUNCTION_12_26();
  if (!v2)
  {
    v29 = 1;
    OUTLINED_FUNCTION_12_26();
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange);
    HIBYTE(v28) = 2;
    sub_26666BB78();
    OUTLINED_FUNCTION_5_36();
    sub_2666661AC(v17, v18);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA38();
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence);
    HIBYTE(v28) = 3;
    type metadata accessor for CalendarEventRecurrence();
    OUTLINED_FUNCTION_8_27();
    sub_2666661AC(v19, v20);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA38();
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location);
    HIBYTE(v28) = 4;
    sub_26666BD58();
    OUTLINED_FUNCTION_7_32();
    sub_2666661AC(v21, v22);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA38();
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants);
    HIBYTE(v28) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080030, &qword_26667C9E8);
    sub_266666248(&qword_280080050, &qword_28007E4A8);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA78();
    v23 = *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isAllDay);
    OUTLINED_FUNCTION_3_40(6);
    v24 = *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isBirthday);
    OUTLINED_FUNCTION_3_40(7);
    v25 = *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_wasPreviouslyRead);
    OUTLINED_FUNCTION_3_40(8);
    v26 = *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_startAndEndEqual);
    OUTLINED_FUNCTION_3_40(9);
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_266665910(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_266665A44(a1);
  return v5;
}

void sub_266665988()
{
  sub_2665BE03C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_266665A44(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v36 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080018, &qword_26667C9E0);
  v14 = OUTLINED_FUNCTION_3_0(v37);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14, v19);
  v3[2] = 0;
  v20 = a1[3];
  v21 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2666661F4();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventConcept(0);
    v24 = *(*v3 + 12);
    v25 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v16;
    sub_26666BDA8();
    LOBYTE(v40) = 0;
    OUTLINED_FUNCTION_6_29();
    sub_2666661AC(v22, v23);
    OUTLINED_FUNCTION_14_19();
    sub_2665BE5D0(v13, v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier);
    LOBYTE(v40) = 1;
    OUTLINED_FUNCTION_14_19();
    sub_2665BE5D0(v10, v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title);
    sub_26666BB78();
    v39 = 2;
    OUTLINED_FUNCTION_5_36();
    sub_2666661AC(v27, v28);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9A8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange) = v40;
    type metadata accessor for CalendarEventRecurrence();
    v39 = 3;
    OUTLINED_FUNCTION_8_27();
    sub_2666661AC(v29, v30);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9A8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence) = v40;
    sub_26666BD58();
    v39 = 4;
    OUTLINED_FUNCTION_7_32();
    sub_2666661AC(v31, v32);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9A8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080030, &qword_26667C9E8);
    v39 = 5;
    sub_266666248(&qword_280080038, &qword_28007E4A0);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9E8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants) = v40;
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isAllDay) = OUTLINED_FUNCTION_2_46(6) & 1;
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isBirthday) = OUTLINED_FUNCTION_2_46(7) & 1;
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_wasPreviouslyRead) = OUTLINED_FUNCTION_2_46(8) & 1;
    v33 = OUTLINED_FUNCTION_2_46(9);
    v34 = OUTLINED_FUNCTION_9_29();
    v35(v34);
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_startAndEndEqual) = v33 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v3;
}

uint64_t sub_2666660CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266665910(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2666661AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2666661F4()
{
  result = qword_280080020;
  if (!qword_280080020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080020);
  }

  return result;
}

uint64_t sub_266666248(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280080030, &qword_26667C9E8);
    sub_2666661AC(a2, type metadata accessor for CalendarEventParticipant);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2666663C4()
{
  result = qword_280080058;
  if (!qword_280080058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080058);
  }

  return result;
}

unint64_t sub_26666641C()
{
  result = qword_280080060;
  if (!qword_280080060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080060);
  }

  return result;
}

unint64_t sub_266666474()
{
  result = qword_280080068;
  if (!qword_280080068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080068);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_50()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_46@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v3 = *(v1 - 104);

  return sub_26666C9C8();
}

uint64_t OUTLINED_FUNCTION_3_40@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_26666CA58();
}

uint64_t OUTLINED_FUNCTION_9_29()
{
  v2 = *(v1 - 104);
  v3 = *(*(v1 - 112) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_25()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_26()
{

  return sub_26666CA38();
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return sub_26666C9A8();
}

uint64_t OUTLINED_FUNCTION_17_18(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t SiriCalendarFeatureManager.isCarPlayUIRefreshEnabled.getter()
{
  *&v1 = "CarPlay";
  *(&v1 + 1) = 7;
  v2 = 2;
  v3 = "CarPlayUIRefresh";
  v4 = 16;
  v5 = 2;
  return sub_26662CD04(&v1) & 1;
}

unint64_t sub_26666678C()
{
  result = qword_28007D740;
  if (!qword_28007D740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D740);
  }

  return result;
}

uint64_t sub_2666667DC(SEL *a1)
{
  v2 = [v1 *a1];
  sub_26666678C();
  v3 = sub_26666C658();
  if (v2)
  {
    v4 = sub_26666C678();

    v3 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_26666685C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = sub_266668D98();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = *a1;
  type metadata accessor for CalendarEventParticipant(0);
  sub_26666BCA8();
  v14 = [v13 person];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_266669648();
  v16 = sub_26666BC98();
  [v13 status];
  INEventParticipantStatus.description.getter();
  sub_26666C358();

  v17 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
  result = sub_2665BD864(v16, v9);
  *v20 = result;
  return result;
}

uint64_t sub_266666A24(uint64_t a1, char a2)
{
  *(v2 + 194) = a2;
  *(v2 + 1264) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080070, &qword_26667CC88);
  *(v2 + 1272) = v3;
  v4 = *(v3 - 8);
  *(v2 + 1280) = v4;
  v5 = *(v4 + 64);
  *(v2 + 1288) = OUTLINED_FUNCTION_19();
  v6 = _s15ReadingStrategyVMa();
  *(v2 + 1296) = v6;
  v7 = *(*(v6 - 8) + 64);
  *(v2 + 1304) = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080078, &qword_26667CC90);
  *(v2 + 1312) = v8;
  v9 = *(v8 - 8);
  *(v2 + 1320) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 1328) = swift_task_alloc();
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  v11 = type metadata accessor for TaskParser();
  *(v2 + 1352) = v11;
  v12 = *(*(v11 - 8) + 64);
  *(v2 + 1360) = OUTLINED_FUNCTION_19();
  v13 = *(*(sub_26666BE18() - 8) + 64);
  *(v2 + 1368) = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_266666BE0, 0, 0);
}

uint64_t sub_266666BE0()
{
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1352);
  sub_266669638();
  type metadata accessor for CommonCATsSimple();
  sub_26666BE08();
  v4 = sub_26666BDD8();
  *(v0 + 1376) = v4;
  sub_266669E68();
  v5 = *(v0 + 1168);
  __swift_project_boxed_opaque_existential_1((v0 + 1136), *(v0 + 1160));
  sub_266669648();
  v6 = (v2 + v3[5]);
  v7 = type metadata accessor for CalendarDateTimeResolver();
  v6[3] = v7;
  v6[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v9 = swift_allocObject();
  *boxed_opaque_existential_1 = v9;
  sub_2665524C0(v0 + 1176, v9 + 16);
  v10 = boxed_opaque_existential_1 + *(v7 + 20);
  sub_266668D88();
  v11 = boxed_opaque_existential_1 + *(v7 + 24);
  sub_26666B548();
  v12 = (v2 + v3[6]);
  v13 = type metadata accessor for CalendarContactResolver();
  v12[3] = v13;
  v12[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v12) + *(v13 + 20)) = 0;
  sub_26666B338();
  sub_26666C068();
  v14 = sub_26666C058();
  v15 = (v2 + v3[7]);
  v15[3] = &type metadata for CalendarReferenceResolver;
  v15[4] = &off_28780BAC8;
  *v15 = v14;
  if (qword_28156CD28 != -1)
  {
    swift_once();
  }

  v105 = *(v0 + 1368);
  v101 = *(v0 + 1352);
  v103 = *(v0 + 1360);
  v99 = *(v0 + 1336);
  v100 = *(v0 + 1312);
  v107 = *(v0 + 194);
  v16 = *(v0 + 1264);
  v17 = qword_28156D828;
  v95 = qword_28156D828;
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v19 = *(v18 + 24);
  v20 = OUTLINED_FUNCTION_79();
  v98 = v21(v20, v18);
  sub_26655358C(v0 + 1136, v0 + 1096);
  v22 = v16[3];
  v23 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v22);
  v24 = *(v23 + 32);

  v25 = v24(v22, v23);
  v96 = v26;
  v97 = v25;
  v94 = type metadata accessor for EventProvider();
  *(v0 + 1000) = v94;
  *(v0 + 1008) = &off_287806290;
  *(v0 + 976) = v17;
  *(v0 + 960) = &type metadata for AceUserLocationProvider;
  *(v0 + 968) = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v27 = swift_allocObject();
  *(v0 + 936) = v27;
  sub_2665524C0(v0 + 1176, v27 + 16);
  v28 = v4;
  v29 = _s13IntentHandlerCMa();
  v30 = objc_allocWithZone(v29);
  v31 = *(v0 + 1000);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 976, v31);
  v33 = *(v31 - 8);
  v34 = *(v33 + 64);
  v35 = OUTLINED_FUNCTION_19();
  (*(v33 + 16))(v35, v32, v31);
  v36 = *(v0 + 960);
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 936, v36);
  v38 = *(v36 - 8);
  v39 = *(v38 + 64);
  v40 = OUTLINED_FUNCTION_19();
  (*(v38 + 16))(v40, v37, v36);
  v41 = *v35;
  *(v0 + 880) = v94;
  *(v0 + 888) = &off_287806290;
  *(v0 + 856) = v41;
  *(v0 + 720) = &type metadata for AceUserLocationProvider;
  *(v0 + 728) = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v42 = swift_allocObject();
  *(v0 + 696) = v42;
  v43 = *(v40 + 32);
  v44 = *(v40 + 16);
  *(v42 + 16) = *v40;
  *(v42 + 32) = v44;
  *(v42 + 48) = v43;
  sub_26655358C(v0 + 856, &v30[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_eventProvider]);
  v30[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_ordinalReference] = v98;
  sub_26655358C(v0 + 696, &v30[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_locationProvider]);
  *&v30[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_commonCats] = v28;
  sub_26655358C(v0 + 1096, &v30[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_deviceState]);
  v45 = &v30[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_fallbackSearchQuery];
  *v45 = v97;
  v45[1] = v96;
  v30[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_intentAction] = v107;
  *(v0 + 1216) = v30;
  *(v0 + 1224) = v29;
  v46 = v28;

  v47 = objc_msgSendSuper2((v0 + 1216), sel_init);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1096));
  __swift_destroy_boxed_opaque_existential_1((v0 + 696));
  __swift_destroy_boxed_opaque_existential_1((v0 + 856));
  __swift_destroy_boxed_opaque_existential_1((v0 + 936));

  __swift_destroy_boxed_opaque_existential_1((v0 + 976));

  *(v0 + 584) = v101;
  *(v0 + 592) = &off_287808308;
  v48 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
  sub_266667D3C(v103, v48, type metadata accessor for TaskParser);
  *(v0 + 600) = v47;
  sub_26655358C(v0 + 1136, v0 + 736);
  *(v0 + 800) = v94;
  *(v0 + 808) = &off_287806290;
  *(v0 + 776) = v95;
  v49 = sub_2666699F8();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_79();

  v104 = v47;
  v52 = sub_2666699E8();
  *(v0 + 840) = v49;
  v53 = MEMORY[0x277D5BD58];
  *(v0 + 848) = MEMORY[0x277D5BD58];
  *(v0 + 816) = v52;
  type metadata accessor for FindEventsCATsSimple();
  sub_26666BE08();
  v102 = sub_26666BDD8();
  v106 = v16;
  sub_26655358C(v16, v0 + 656);
  sub_266552C44(0, &qword_28156C0D0, 0x277CD3C10);
  sub_266552C44(0, &unk_28156C0B0, 0x277CD3C18);

  sub_2666694A8();
  v54 = *(v49 + 48);
  v55 = *(v49 + 52);
  swift_allocObject();
  v56 = sub_2666699E8();
  *(v0 + 920) = v49;
  *(v0 + 928) = v53;
  *(v0 + 896) = v56;
  *(v0 + 1384) = sub_26666BE38();
  sub_26666BE28();
  sub_2666693C8();

  sub_266669458();
  sub_26655358C(v0 + 816, v0 + 480);
  sub_26655358C(v0 + 736, v0 + 520);
  *(v0 + 472) = v28;
  sub_266667B80(v0 + 472, v0 + 384);
  v57 = swift_allocObject();
  memcpy((v57 + 16), (v0 + 384), 0x58uLL);

  sub_266669478();
  sub_26666BD78();
  sub_26666BD68();
  v58 = sub_26666BE78();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v61 = sub_26666BE68();
  v62 = sub_26666C058();
  *(v0 + 1040) = &type metadata for CalendarReferenceResolver;
  *(v0 + 1048) = &off_28780BAC8;
  *(v0 + 1016) = v62;
  sub_26655358C(v0 + 736, v0 + 1056);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080080, &qword_26667CC98);
  v63 = swift_allocObject();
  v64 = MEMORY[0x277D56578];
  *(v63 + 48) = v58;
  *(v63 + 56) = v64;
  *(v63 + 24) = v61;
  *(v63 + 88) = &type metadata for DisambiguationResponseParser;
  *(v63 + 96) = &off_287806688;
  OUTLINED_FUNCTION_4();
  v65 = swift_allocObject();
  *(v63 + 64) = v65;
  sub_26656CCE8(v0 + 1016, v65 + 16);
  *(v63 + 144) = 0;
  *(v63 + 152) = 0;
  *(v63 + 160) = 0x80;
  *(v63 + 16) = v107;
  sub_26654B7D8((v0 + 1056), v63 + 104);
  sub_26656CD44(v0 + 1016);
  *(v0 + 1232) = v63;
  sub_26655369C(qword_28156C870, &qword_280080080, &qword_26667CC98);
  sub_2666693E8();
  sub_266669498();
  v66 = *(v0 + 1336);
  v67 = *(v0 + 1312);
  if (v107 == 3)
  {
    v68 = *(v0 + 1304);
    v69 = *(v0 + 1296);
    sub_26655358C(v0 + 736, (v68 + 2));
    sub_26655358C(v0 + 776, (v68 + 7));
    sub_2666257C8(v0 + 896, (v68 + 12));
    v70 = *(v69 + 40);

    sub_266625354(v68 + v70);
    *v68 = v102;
    v68[1] = v46;
    sub_2666257C8(v0 + 896, v0 + 32);
    sub_26655358C(v0 + 776, v0 + 72);
    sub_26655358C(v0 + 736, v0 + 112);
    *(v0 + 176) = v69;
    *(v0 + 184) = &off_28780AAF8;
    v71 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
    sub_266667D3C(v68, v71, _s15ReadingStrategyVMa);
    v72 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
    v73 = *(v72 + 16);
    v74 = OUTLINED_FUNCTION_79();
    LOBYTE(v70) = v75(v74, v72);
    v76 = *(v0 + 680);
    v77 = v46;
    v78 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), v76);
    v79 = (*(v78 + 24))(v76, v78);
    *(v0 + 16) = v77;
    *(v0 + 24) = v102;
    *(v0 + 192) = v70 & 1;
    *(v0 + 193) = v79;
    *(v0 + 1256) = v104;
    sub_26664F318(v0 + 16, v0 + 200);
    v80 = swift_allocObject();
    memcpy((v80 + 16), (v0 + 200), 0xB2uLL);
    sub_266653D08();
    sub_2666693A8();

    sub_266669448();

    sub_266667F48(v68, _s15ReadingStrategyVMa);
    sub_266667BE4(v0 + 472);
    __swift_destroy_boxed_opaque_existential_1((v0 + 736));
    __swift_destroy_boxed_opaque_existential_1((v0 + 816));
    __swift_destroy_boxed_opaque_existential_1((v0 + 776));
    sub_26665E768(v0 + 16);
  }

  else
  {

    *(v0 + 1240) = v104;
    sub_266653D08();
    sub_2666693B8();
    sub_266669448();

    sub_266667BE4(v0 + 472);
    __swift_destroy_boxed_opaque_existential_1((v0 + 736));
    __swift_destroy_boxed_opaque_existential_1((v0 + 816));
    __swift_destroy_boxed_opaque_existential_1((v0 + 776));
  }

  sub_26656CC94(v0 + 896);
  v81 = *(v0 + 1344);
  v82 = *(v0 + 1328);
  v83 = *(v0 + 1320);
  v84 = *(v0 + 1312);
  v85 = *(v0 + 1288);
  v86 = *(v0 + 1264);
  (*(v83 + 32))(v81, *(v0 + 1336), v84);
  __swift_destroy_boxed_opaque_existential_1((v0 + 656));
  sub_266667C38(v0 + 560, v0 + 608);
  (*(v83 + 16))(v82, v81, v84);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080088, &unk_26667CCA0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  sub_2666694B8();
  sub_266667C94();
  sub_266669808();
  v90 = v106[3];
  v91 = v106[4];
  __swift_project_boxed_opaque_existential_1(v86, v90);
  v92 = swift_task_alloc();
  *(v0 + 1392) = v92;
  *v92 = v0;
  v92[1] = sub_266667868;

  return sub_2665768EC(v90, v91);
}

uint64_t sub_266667868(uint64_t a1)
{
  v2 = *(*v1 + 1392);
  v4 = *v1;
  *(*v1 + 1400) = a1;

  return MEMORY[0x2822009F8](sub_266667968, 0, 0);
}

uint64_t sub_266667968()
{
  v1 = v0[175];
  v2 = v0[173];
  v14 = v0[170];
  v15 = v0[171];
  v13 = v0[168];
  v16 = v0[167];
  v17 = v0[166];
  v3 = v0[165];
  v11 = v0[172];
  v12 = v0[164];
  v18 = v0[163];
  v4 = v0[161];
  v5 = v0[160];
  v6 = v0[159];
  sub_26666BE28();
  v7 = sub_2666697F8();

  v0[156] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFE8, &qword_2666778E8);
  sub_26655369C(&qword_28156D148, &qword_28007EFE8, &qword_2666778E8);
  v8 = sub_266669538();

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v13, v12);
  sub_266553184((v0 + 147));
  sub_266667CE8((v0 + 70));
  sub_266667F48(v14, type metadata accessor for TaskParser);
  __swift_destroy_boxed_opaque_existential_1(v0 + 142);

  v9 = v0[1];

  return v9(v8);
}

unint64_t sub_266667C94()
{
  result = qword_28156CE98;
  if (!qword_28156CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CE98);
  }

  return result;
}

uint64_t sub_266667D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266667DA4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_266667E4C;

  return sub_26664F214(a1, a2, v2 + 16);
}

uint64_t sub_266667E4C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_266667F48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_266667FA8()
{
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266667FF0(char a1)
{
  result = 0x7551686372616573;
  switch(a1)
  {
    case 1:
      result = 0x656D695465746164;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2666680AC(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v4 = sub_2665C485C(a2);
  for (i = 0; v4 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x266788B60](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if ([v6 participantType] == 1)
    {
      sub_26666C868();
      v8 = *(v23 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }
  }

  v9 = v23;
  v24 = v3;
  v22 = sub_2665C485C(v9);
  v10 = 0;
  while (v22 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x266788B60](v10, v9);
    }

    else
    {
      if (v10 >= *(v9 + 16))
      {
        goto LABEL_27;
      }

      v11 = *(v9 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_26;
    }

    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v14 = v12;
    v15 = sub_266580798(v14);
    v16 = sub_2665D5350([v14 participantStatus]);
    [v14 isCurrentUser];
    sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
    v17 = sub_26666C658();
    v18 = [a1 organizer];
    [v14 isEqualToParticipant_];

    v19 = sub_26666C658();
    v20 = [objc_allocWithZone(MEMORY[0x277CD3BE8]) initWithPerson:v15 status:v16 isUser:v17 isEventOrganizer:v19];

    ++v10;
    if (v20)
    {
      MEMORY[0x2667887C0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v10 = v13;
    }
  }
}

uint64_t sub_2666683AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC38, &unk_266672210);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v22 - v7;
  if (sub_26666C388() < 2 || (sub_26666C3A8(), sub_26666C408(), v9 = sub_26666C288(), , (v9 & 1) != 0))
  {
  }

  else
  {

    v23 = sub_2665E89D0(1);
    v24 = v10;
    v25 = v11;
    v26 = v12;
    v13 = sub_266668D98();
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    sub_2666685B0();
    v14 = sub_26666C6D8();
    v16 = v15;
    sub_266595FDC(v8);

    v17 = sub_2665E8A54(1uLL);
    v22[0] = v14;
    v22[1] = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    sub_2665E8AEC();

    sub_26666C3B8();

    return v22[0];
  }

  return a2;
}

unint64_t sub_2666685B0()
{
  result = qword_280080090;
  if (!qword_280080090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080090);
  }

  return result;
}

uint64_t sub_266668604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2666686A4, 0, 0);
}

uint64_t sub_2666686A4()
{
  v1 = v0[5];
  v12 = v0[3];
  v2 = sub_266668D38();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = *(v12 + 24);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2666687D8;
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return (v11)(0, v6, v8, v9);
}

uint64_t sub_2666687D8(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v7 = *v1;

  sub_266574608(v4);

  v5 = *(v7 + 8);

  return v5(a1);
}