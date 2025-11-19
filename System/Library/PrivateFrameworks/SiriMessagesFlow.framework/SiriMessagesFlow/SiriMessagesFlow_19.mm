void sub_267D2687C()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD000000000000059, 0x8000000267F17C40, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_2_35();
  __break(1u);
}

uint64_t sub_267D269B0()
{
  v10 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000056, 0x8000000267F17BE0, &v9);
    OUTLINED_FUNCTION_8_26(&dword_267B93000, v6, v7, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_2_35();
}

void sub_267D26AF4()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_52();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_267BA33E8(0xD00000000000005BLL, 0x8000000267F17B80, &v7);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v5, v6, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_2_35();
  __break(1u);
}

uint64_t sub_267D26C28()
{
  v10 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_48();
    v5 = OUTLINED_FUNCTION_52();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_267BA33E8(0xD000000000000058, 0x8000000267F17AE0, &v9);
    OUTLINED_FUNCTION_8_26(&dword_267B93000, v6, v7, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  return OUTLINED_FUNCTION_2_35();
}

uint64_t sub_267D26D90()
{
  v2 = *v0;
  v3 = sub_267D266E8();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_267D26DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B628] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_267CDC6B8;

  return MEMORY[0x2821BA008](a1, a2, a3, a4);
}

uint64_t sub_267D26EC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267D2699C();
}

uint64_t sub_267D26F60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CDC6B8;

  return sub_267D26C14();
}

uint64_t sub_267D2707C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267D270C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0A8, &qword_267F04AE8);
  v7 = OUTLINED_FUNCTION_58(v6);
  v90 = v8;
  v91 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v89 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v85 - v14;
  v16 = sub_267EF8AE8();
  v17 = OUTLINED_FUNCTION_58(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v92 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v23 = sub_267EF8A08();
  v24 = __swift_project_value_buffer(v23, qword_280240FB0);

  v93 = v24;
  v25 = sub_267EF89F8();
  v26 = sub_267EF95D8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v87 = v16;
    v28 = v27;
    v29 = swift_slowAlloc();
    v88 = v2;
    v86 = v29;
    v95 = v29;
    *v28 = 136315138;
    v30 = sub_267EF66B8();
    v32 = v15;
    v33 = a1;
    v34 = a2;
    v35 = v19;
    v36 = sub_267BA33E8(v30, v31, &v95);

    *(v28 + 4) = v36;
    v19 = v35;
    a2 = v34;
    a1 = v33;
    v15 = v32;
    _os_log_impl(&dword_267B93000, v25, v26, "#ReferenceResolution calling SRR for resolving %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    v3 = v88;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
    v16 = v87;
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  v37 = a2[3];
  v38 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v37);
  sub_267EBD060(a1, v37, v38);
  sub_267BBE6E0(v39, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_267D279A4(v15);
LABEL_7:
    v40 = sub_267EF89F8();
    v41 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v41))
    {
      OUTLINED_FUNCTION_14_0();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v42);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v43, v44, "#ReferenceResolution reference not found");
      v45 = OUTLINED_FUNCTION_3_35();
      MEMORY[0x26D60A7B0](v45);
    }

    return 1;
  }

  v47 = v92;
  (*(v19 + 32))(v92, v15, v16);
  sub_267BCA2C8();
  v48 = sub_267EF8A98();
  if (v3)
  {
  }

  else
  {
    v46 = v48;
    if (v48)
    {
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v56))
      {
        OUTLINED_FUNCTION_14_0();
        v57 = swift_slowAlloc();
        OUTLINED_FUNCTION_61(v57);
        OUTLINED_FUNCTION_4_5(&dword_267B93000, v58, v59, "#ReferenceResolution calling SRR resolved to an INPerson");
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      [v46 setCustomIdentifier_];
      v60 = OUTLINED_FUNCTION_1_40();
      v61(v60);
      return v46;
    }
  }

  sub_267EF8AD8();
  sub_267EF5C28();
  OUTLINED_FUNCTION_6_26();

  if (v95)
  {
    v49 = sub_267EF89F8();
    v50 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v50))
    {
      OUTLINED_FUNCTION_14_0();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v51);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v52, v53, "#ReferenceResolution calling SRR resolved to a common_Person");
      v54 = OUTLINED_FUNCTION_3_35();
      MEMORY[0x26D60A7B0](v54);

      (*(v19 + 8))(v47, v16);
    }

    else
    {

      v68 = OUTLINED_FUNCTION_1_40();
      v70(v68, v69);
    }

    return 0;
  }

  sub_267EF8AD8();
  sub_267EF5BC8();
  OUTLINED_FUNCTION_6_26();

  if (v95)
  {
    v62 = sub_267EF89F8();
    v63 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v63))
    {
      OUTLINED_FUNCTION_14_0();
      v64 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v64);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v65, v66, "#ReferenceResolution calling SRR resolved to a common_Group");
      v67 = OUTLINED_FUNCTION_3_35();
      MEMORY[0x26D60A7B0](v67);
    }

    (*(v19 + 8))(v92, v16);
    return 0;
  }

  else
  {
    sub_267EF8AD8();
    sub_267EF5B98();
    OUTLINED_FUNCTION_6_26();

    v71 = v95;
    if (!v95)
    {
      v81 = OUTLINED_FUNCTION_1_40();
      v82(v81);
      goto LABEL_7;
    }

    v72 = sub_267EF89F8();
    v73 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v73))
    {
      OUTLINED_FUNCTION_14_0();
      v74 = swift_slowAlloc();
      OUTLINED_FUNCTION_61(v74);
      OUTLINED_FUNCTION_4_5(&dword_267B93000, v75, v76, "#ReferenceResolution calling SRR resolved to a common_Agent");
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    v77 = v89;
    sub_267EF7018();
    v78 = v91;
    v79 = sub_267EF7068();
    (*(v90 + 8))(v77, v78);
    v95 = v71;
    v79(&v94, &v95);

    v83 = OUTLINED_FUNCTION_1_40();
    v84(v83);

    return 0;
  }
}

uint64_t sub_267D27798@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
    sub_267EF97D8();

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (a2)
  {

    sub_267EF5BE8();

    goto LABEL_5;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95E8();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_14_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_61(v12);
    _os_log_impl(&dword_267B93000, v10, v11, "#ReferenceResolution not resolved to person", v3, 2u);
    v13 = OUTLINED_FUNCTION_3_35();
    MEMORY[0x26D60A7B0](v13);
  }

  v6 = 1;
LABEL_6:
  v7 = sub_267EF6A08();

  return __swift_storeEnumTagSinglePayload(a3, v6, 1, v7);
}

uint64_t sub_267D278C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5FEE0];
  v3 = sub_267EF8AF8();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_267D279A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_267D27A0C(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = a1;
  v2[6] = a2;
  return v2;
}

uint64_t sub_267D27A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v8 = v6[8];
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v9);
  v11 = *(v10 + 16);
  v12 = v8;
  v11(v15, v9, v10);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v3;

  sub_267C86088(v7, v12, v15, sub_267D28AB8, v13);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_267D27B20(void *a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    sub_267EF95E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_267EFC020;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    sub_267EF9C58();
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_267BFBEB4();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_267EF8998();
  }

  else
  {
    sub_267D27C88(a1);
  }

  return a3(0);
}

uint64_t sub_267D27C88(void *a1)
{
  v2 = v1;
  v3 = sub_267D27D3C(a1);
  v4 = *(v1 + 48);
  sub_267E2D070(v3);
  if (sub_267BAF0DC(v3))
  {
    sub_267BBD0EC(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](0, v3);
    }

    else
    {
      v5 = *(v3 + 32);
    }
  }

  else
  {

    v5 = 0;
  }

  v6 = *(v2 + 32);
  *(v2 + 32) = v5;
}

uint64_t sub_267D27D3C(void *a1)
{
  v2 = v1;
  v4 = sub_267EF2E38();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267C86CD0(a1);
  if (v12)
  {
    v13 = v12;
    v14 = sub_267BAF0DC(v12);
    if (v14)
    {
      v15 = v14;
      v43 = v11;
      v44 = v7;
      v45 = v4;
      v16 = 0;
      v48[0] = MEMORY[0x277D84F90];
      v46 = v13 & 0xC000000000000001;
      while (1)
      {
        if (v15 == v16)
        {
          v26 = v48[0];
          if (qword_280228820 != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          sub_267EF95D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_267EFCC90;
          v28 = sub_267BAF0DC(v26);
          v29 = MEMORY[0x277D83B88];
          v30 = MEMORY[0x277D83C10];
          *(v27 + 56) = MEMORY[0x277D83B88];
          *(v27 + 64) = v30;
          *(v27 + 32) = v28;
          v31 = sub_267BAF0DC(v13);

          *(v27 + 96) = v29;
          *(v27 + 104) = v30;
          *(v27 + 72) = v31;
          sub_267EF8998();

          if (sub_267BAF0DC(v26))
          {
            v32 = *(v2 + 48);
            v33 = *(*(v2 + 40) + 128);
            v34 = v32[5];
            v35 = v32[6];
            __swift_project_boxed_opaque_existential_0(v32 + 2, v34);
            v36 = *(v35 + 8);

            v36(v48, v34, v35);
            __swift_project_boxed_opaque_existential_0(v48, v48[3]);
            v37 = v43;
            sub_267EF3B68();
            LOBYTE(v32) = v32[11] != 0;
            sub_267EF42D8();
            sub_267EF6FF8();
            sub_267EF6FE8();
            sub_267EF6FB8();

            sub_267EF42C8();

            v38 = sub_267BDD444(v26, v33, v47, 0, 2u, 0, 0, v37, 0, 0, v32);

            __swift_destroy_boxed_opaque_existential_0(v47);
            (*(v44 + 8))(v37, v45);
            __swift_destroy_boxed_opaque_existential_0(v48);
            sub_267EF95D8();
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_267EFC020;
            v40 = sub_267BAF0DC(v38);
            *(v39 + 56) = MEMORY[0x277D83B88];
            *(v39 + 64) = MEMORY[0x277D83C10];
            *(v39 + 32) = v40;
            sub_267EF8998();

            return v38;
          }

          sub_267EF95D8();
          v38 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }

        if (v46)
        {
          v17 = MEMORY[0x26D609870](v16, v13);
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v19 = *(v2 + 48);
        swift_beginAccess();
        v20 = *(v19 + 144);

        v21 = [v18 identifier];
        sub_267EF9028();

        if (*(v20 + 16))
        {
          sub_267BA9948();
          v23 = v22;

          if (v23)
          {

            goto LABEL_17;
          }
        }

        else
        {
        }

        sub_267D282B4(v18);
        if ((v24 & 1) != 0 && [v18 messageType] != 1000)
        {
          sub_267EF9BD8();
          v25 = *(v48[0] + 16);
          sub_267EF9C08();
          sub_267EF9C18();
          sub_267EF9BE8();
        }

        else
        {
        }

LABEL_17:
        ++v16;
      }
    }
  }

  if (qword_280228820 != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_0_6();
  }

  sub_267EF95D8();
  v38 = MEMORY[0x277D84F90];
LABEL_26:
  sub_267EF8998();
  return v38;
}

void sub_267D282B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v42 - v8;
  v9 = sub_267EF2CC8();
  v10 = OUTLINED_FUNCTION_58(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v47 = a1;
  sub_267BDC968(a1);
  if (v25)
  {
    v26 = *(v1 + 48);
    v27 = sub_267E2C8B0();

    v28 = sub_267BAF0DC(v27);
    if (v28)
    {
      v29 = v28;
      v51 = MEMORY[0x277D84F90];
      sub_267C725A4();
      if (v29 < 0)
      {
        __break(1u);
        return;
      }

      v43 = v24;
      v44 = v19;
      v45 = v7;
      v30 = 0;
      v31 = v51;
      v49 = v27 & 0xC000000000000001;
      v50 = v29;
      v32 = v9;
      v33 = v27;
      do
      {
        if (v49)
        {
          MEMORY[0x26D609870](v30, v27);
        }

        else
        {
          v34 = *(v27 + 8 * v30 + 32);
        }

        sub_267DE0D58(v22);

        v51 = v31;
        v35 = *(v31 + 16);
        if (v35 >= *(v31 + 24) >> 1)
        {
          sub_267C725A4();
          v31 = v51;
        }

        ++v30;
        *(v31 + 16) = v35 + 1;
        v9 = v32;
        (*(v12 + 32))(v31 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35, v22, v32);
        v27 = v33;
      }

      while (v50 != v30);

      v19 = v44;
      v7 = v45;
      v24 = v43;
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    v36 = v48;
    sub_267D286FC(v31, v48);

    if (__swift_getEnumTagSinglePayload(v36, 1, v9) == 1)
    {
      sub_267C1D46C(v36);
    }

    else
    {
      v37 = *(v12 + 32);
      v37(v24, v36, v9);
      v38 = [v47 dateSent];
      if (v38)
      {
        v39 = v38;
        v40 = v46;
        sub_267EF2C98();

        v37(v7, v40, v9);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
        v37(v19, v7, v9);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
        sub_267EF2C28();
        if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
        {
          sub_267C1D46C(v7);
        }
      }

      sub_267EF2C58();
      v41 = *(v12 + 8);
      v41(v19, v9);
      v41(v24, v9);
    }
  }
}

uint64_t sub_267D286FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267EF2CC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_267D28A70(&qword_28022B0C0, 255, MEMORY[0x277CC9578]);
      v16 = sub_267EF8FD8();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_267D28994()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267D28A70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267D28AB8(void *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_267D27B20(a1, a2 & 1, *(v2 + 16));
}

void sub_267D28AC8()
{
  v1 = sub_267E76140(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_267BAF0DC(v1);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
LABEL_11:

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D609870](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = [v5 currentLocation];

      ++v4;
      if (v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_267D28BAC()
{
  v1 = sub_267BE28D0(v0, &selRef_conversationIdentifier);
  v3 = v2;
  v4 = *MEMORY[0x277D18D18];
  v5 = sub_267EF9028();
  if (v3)
  {
    if (v1 == v5 && v3 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_267EF9EA8();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id sub_267D28C4C(void *a1, unint64_t a2)
{
  sub_267ECEE14(a2);

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v3 = sub_267EF92D8();

  v4 = [a1 outgoingMessageType];
  sub_267ED9A2C(a1);
  if (v5)
  {
    v6 = sub_267EF8FF8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 speakableGroupName];
  sub_267BE28D0(a1, &selRef_conversationIdentifier);
  if (v8)
  {
    v9 = sub_267EF8FF8();
  }

  else
  {
    v9 = 0;
  }

  sub_267BE28D0(a1, &selRef_serviceName);
  if (v10)
  {
    v11 = sub_267EF8FF8();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 sender];
  if (sub_267E76140(a1))
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v13 = sub_267EF92D8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v3 outgoingMessageType:v4 content:v6 speakableGroupName:v7 conversationIdentifier:v9 serviceName:v11 sender:v12 attachments:v13];

  v15 = v14;
  v16 = [a1 _metadata];
  [v15 _setMetadata_];

  return v15;
}

uint64_t sub_267D28E98()
{
  OUTLINED_FUNCTION_1_41();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_8_27();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v16, v17, v18);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D88, &qword_267EFF528);
    if (OUTLINED_FUNCTION_3_36())
    {
      return v15;
    }
  }

  else
  {
    sub_267B9FF34(v19, &qword_28022AEF0, &qword_267EFCDE0);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_267D28F5C()
{
  OUTLINED_FUNCTION_1_41();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_8_27();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v16, v17, v18);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0E0, &unk_267F04BE0);
    if (OUTLINED_FUNCTION_3_36())
    {
      return v15;
    }
  }

  else
  {
    sub_267B9FF34(v19, &qword_28022AEF0, &qword_267EFCDE0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D8, &unk_267F0AC70);
  return sub_267EF8F28();
}

uint64_t sub_267D2904C()
{
  OUTLINED_FUNCTION_1_41();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_8_27();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v3, v4, v5, v6, v7, v8, v9, v10, v13, v15, v16, v17, v18);
  if (v11)
  {
    if (OUTLINED_FUNCTION_3_36())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9FF34(v19, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D29108()
{
  OUTLINED_FUNCTION_1_41();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_8_27();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v16, v17, v18);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D0, &qword_267F04BD8);
    if (OUTLINED_FUNCTION_3_36())
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9FF34(v19, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267D291CC(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
    sub_267EF8EE8();
  }

  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_32();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267D29264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D8, &unk_267F0AC70);
  v0 = sub_267EF8EE8();

  OUTLINED_FUNCTION_1_41();
  v1 = OUTLINED_FUNCTION_66();
  objc_setAssociatedObject(v1, v2, v0, 1);
  swift_endAccess();
}

uint64_t sub_267D292FC()
{
  OUTLINED_FUNCTION_1_41();
  v0 = OUTLINED_FUNCTION_66();
  v2 = objc_getAssociatedObject(v0, v1);
  swift_endAccess();
  if (v2)
  {
    OUTLINED_FUNCTION_8_27();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_6_27();
  }

  OUTLINED_FUNCTION_0_27(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v16, v17, v18);
  if (v11)
  {
    result = OUTLINED_FUNCTION_3_36();
    if (result)
    {
      return v15;
    }
  }

  else
  {
    sub_267B9FF34(v19, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }

  return result;
}

uint64_t sub_267D293AC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &unk_28022B0CC);
  swift_endAccess();
  if (v3)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v4 = sub_267EF2D28();
    v5 = swift_dynamicCast() ^ 1;
    v6 = a1;
    v7 = v4;
  }

  else
  {
    sub_267B9FF34(v11, &qword_28022AEF0, &qword_267EFCDE0);
    v7 = sub_267EF2D28();
    v6 = a1;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v6, v5, 1, v7);
}

uint64_t sub_267D294C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_267EF8FF8();
  }

  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_32();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void sub_267D2952C()
{
  type metadata accessor for FLOWSchemaFLOWPersonType(0);
  v0 = sub_267EF92D8();

  OUTLINED_FUNCTION_1_41();
  v1 = OUTLINED_FUNCTION_66();
  objc_setAssociatedObject(v1, v2, v0, 1);
  swift_endAccess();
}

void sub_267D295A8()
{
  v0 = sub_267EF9378();
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_5_32();
  swift_endAccess();
}

uint64_t sub_267D295F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_267C3348C(a1, &v11 - v6);
  v8 = sub_267EF2D28();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    v9 = sub_267EF2CF8();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_28022B0CC, v9, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_267B9FF34(a1, &qword_280229430, &qword_267EFD2C0);
}

void *sub_267D29748()
{
  v1 = sub_267BCEA0C(v0);
  if (v1)
  {
    v2 = v1;
    if (sub_267BAF0DC(v1))
    {
      return v2;
    }
  }

  v3 = [v0 speakableGroupName];
  if (v3)
  {
    v2 = v3;
    v4 = [v3 spokenPhrases];
    v5 = sub_267EF92F8();

    v6 = *(v5 + 16);

    if (v6)
    {
      return v2;
    }
  }

  v7 = sub_267BE28D0(v0, &selRef_groupName);
  if (!v8)
  {
    return 0;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
  }

  return 0;
}

uint64_t sub_267D29870()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E18, &unk_267F0D0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - v4;
  v6 = sub_267EF8818();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  result = sub_267E76140(v1);
  if (result)
  {
    v19 = result;
    if (!sub_267BAF0DC(result))
    {

      return 0;
    }

    sub_267BBD0EC(0, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D609870](0, v19);
    }

    else
    {
      v20 = *(v19 + 32);
    }

    v21 = v20;

    v22 = [v21 audioMessageFile];
    if (v22)
    {
      v23 = v22;

      return 0;
    }

    if ([v21 currentLocation])
    {

      return OUTLINED_FUNCTION_7_26();
    }

    v24 = [v21 sharedLink];
    if (v24)
    {
      v25 = v24;
      sub_267EF2B48();

      v26 = sub_267EF2BA8();
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
      sub_267B9FF34(v17, &qword_280229E20, &unk_267EFDCC0);

      return 0x65676170626577;
    }

    v27 = sub_267EF2BA8();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
    sub_267B9FF34(v17, &qword_280229E20, &unk_267EFDCC0);
    v28 = [v21 file];
    if (v28)
    {
      v29 = v28;
      sub_267E761B0(v28);
      if (v30)
      {
        sub_267EF8828();
        if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
        {

          sub_267B9FF34(v5, &qword_280229E18, &unk_267F0D0C0);
          return 0;
        }

        (*(v7 + 32))(v13, v5, v6);
        sub_267EF87D8();
        v31 = sub_267EF8808();
        v32 = *(v7 + 8);
        v32(v11, v6);
        if (v31)
        {

          v33 = OUTLINED_FUNCTION_66();
          (v32)(v33);
          v34 = 1953458288;
          return v34 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        }

        sub_267EF87E8();
        v35 = sub_267EF8808();
        v32(v11, v6);
        if (v35)
        {

          v36 = OUTLINED_FUNCTION_66();
          (v32)(v36);
          v34 = 1701079414;
          return v34 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
        }

        v37 = OUTLINED_FUNCTION_66();
        (v32)(v37);
      }
    }

    return 0;
  }

  return result;
}

id sub_267D29C90(void *a1, void *a2)
{
  if (sub_267BCEA0C(a1))
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v4 = sub_267EF92D8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 outgoingMessageType];
  sub_267ED9A2C(a1);
  if (v6)
  {
    v7 = sub_267EF8FF8();
  }

  else
  {
    v7 = 0;
  }

  sub_267BE28D0(a1, &selRef_conversationIdentifier);
  if (v8)
  {
    v9 = sub_267EF8FF8();
  }

  else
  {
    v9 = 0;
  }

  sub_267BE28D0(a1, &selRef_serviceName);
  if (v10)
  {
    v11 = sub_267EF8FF8();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 sender];
  if (sub_267E76140(a1))
  {
    sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
    v13 = sub_267EF92D8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecipients:v4 outgoingMessageType:v5 content:v7 speakableGroupName:a2 conversationIdentifier:v9 serviceName:v11 sender:v12 attachments:v13];

  v15 = v14;
  v16 = [a1 _metadata];
  [v15 _setMetadata_];

  return v15;
}

uint64_t sub_267D29ED4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_267D29F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_267D29F84(uint64_t a1, void *a2)
{
  v3 = 0;
  v23 = *(a1 + 16);
  v21 = a1 + 32;
  while (v3 != v23)
  {
    v4 = *(v21 + 8 * v3++);
    v5 = a2[1];
    if (!*(v5 + 16))
    {
      v8 = v4;
      goto LABEL_17;
    }

    v6 = *(v5 + 40);
    sub_267EF9FC8();
    sub_267EF9FE8();
    if (v4)
    {
      v7 = v4;
      sub_267EF9828();
    }

    v9 = sub_267EFA018();
    v10 = -1 << *(v5 + 32);
    v11 = v9 & ~v10;
    if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v20 = v3;
      v12 = ~v10;
      while (1)
      {
        v13 = *(*(v5 + 48) + 8 * v11);
        if (v13)
        {
          break;
        }

        if (!v4)
        {
          goto LABEL_20;
        }

LABEL_14:
        v11 = (v11 + 1) & v12;
        if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          v8 = v4;
          v3 = v20;
          goto LABEL_17;
        }
      }

      if (!v4)
      {
        goto LABEL_14;
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v14 = v4;
      v15 = v13;
      v16 = sub_267EF9818();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_20:
      v3 = v20;
    }

    else
    {
      v8 = v4;
LABEL_17:
      v17 = v8;
      MEMORY[0x26D608F90]();
      if (*(*a2 + 16) >= *(*a2 + 24) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v18 = v17;
      sub_267D2FF84(&v22, v4);
      v19 = v22;
    }
  }
}

uint64_t sub_267D2A194(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x656E696C6E69;
  }

  else
  {
    return 0x6F6C61646E617473;
  }
}

uint64_t sub_267D2A1CC()
{
  OUTLINED_FUNCTION_12();
  v1[84] = v0;
  v1[83] = v2;
  v1[82] = v3;
  v1[81] = v4;
  v1[80] = v5;
  v6 = sub_267EF2E38();
  v1[85] = v6;
  v7 = *(v6 - 8);
  v1[86] = v7;
  v8 = *(v7 + 64) + 15;
  v1[87] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_267D2A290()
{
  v4 = *(v1 + 672);
  if (!v4[1])
  {
    memcpy((v1 + 16), v4, 0x71uLL);
    *(v1 + 496) = 0u;
    *(v1 + 512) = 0u;
    *(v1 + 528) = 0;
    OUTLINED_FUNCTION_10(&unk_267F062D8);
    v44 = swift_task_alloc();
    *(v1 + 704) = v44;
    *v44 = v1;
    v44[1] = sub_267D2A49C;
    v45 = *(v1 + 640);
    OUTLINED_FUNCTION_89();

    __asm { BR              X2 }
  }

  v5 = 0;
  v6 = *(v1 + 688);
  v7 = *(v1 + 640);
  v8 = v4[9];
  v9 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_13();
LABEL_3:
  *(v1 + 736) = v9;
  while (v0 != v5)
  {
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    v10 = *(v3 + 8 * v5++);
    if (v10)
    {
      OUTLINED_FUNCTION_16_17();
      v11 = OUTLINED_FUNCTION_23_13();
      v12(v11);
      OUTLINED_FUNCTION_17_15();
      v13 = *(v7 + 416);

      v2 = OUTLINED_FUNCTION_25_15();

      v22 = OUTLINED_FUNCTION_35_13(v14, v15, v16, v17, v18, v19, v20, v21, v48, v50, v52, v54, v56, v58);
      v23(v22);
      v24 = __swift_destroy_boxed_opaque_existential_0((v1 + 536));
      v25 = MEMORY[0x26D608F90](v24);
      OUTLINED_FUNCTION_34_3(v25, v26, v27, v28, v29, v30, v31, v32, v49, v51, v53, v55, v57, v59, v60);
      if (v33)
      {
        OUTLINED_FUNCTION_30_16();
      }

      sub_267EF9368();
      v9 = v60;
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_28_19();
  v34 = sub_267D2B0D4(v2);
  OUTLINED_FUNCTION_27_15(v34);
  v35 = *(v1 + 256);
  v36 = *(v1 + 264);
  v37 = swift_task_alloc();
  *(v1 + 744) = v37;
  *v37 = v1;
  OUTLINED_FUNCTION_5_33(v37);
  OUTLINED_FUNCTION_89();

  sub_267C756EC(v38, v39, v40, v41, v42);
}

uint64_t sub_267D2A49C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v7 = v6;
  v8 = *(v6 + 704);
  v9 = *v3;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v7 + 712) = v2;

  if (v2)
  {
    sub_267B9F98C(v7 + 496, &qword_28022B0F0, &qword_267F0E670);
    v11 = sub_267D2B078;
  }

  else
  {
    *(v7 + 720) = a2;
    *(v7 + 728) = a1;
    *(v7 + 624) = *(v7 + 16);
    sub_267B9F98C(v7 + 496, &qword_28022B0F0, &qword_267F0E670);
    v11 = sub_267D2A5F4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_267D2A5F4()
{
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[84];
  sub_267B9F98C((v0 + 78), &qword_28022A300, &qword_267EFEEE0);
  v6 = 0;
  *v5 = v3;
  v5[1] = v4;
  v7 = v0[86];
  v8 = v0[80];
  v9 = *(v0[84] + 72);
  v10 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_13();
LABEL_2:
  v0[92] = v10;
  while (v5 != v6)
  {
    if (v6 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    v11 = *(v2 + 8 * v6++);
    if (v11)
    {
      OUTLINED_FUNCTION_16_17();
      v12 = OUTLINED_FUNCTION_23_13();
      v13(v12);
      OUTLINED_FUNCTION_17_15();
      v14 = *(v8 + 416);

      v1 = OUTLINED_FUNCTION_25_15();

      v23 = OUTLINED_FUNCTION_35_13(v15, v16, v17, v18, v19, v20, v21, v22, v45, v47, v49, v51, v53, v55);
      v24(v23);
      v25 = __swift_destroy_boxed_opaque_existential_0(v0 + 67);
      v26 = MEMORY[0x26D608F90](v25);
      OUTLINED_FUNCTION_34_3(v26, v27, v28, v29, v30, v31, v32, v33, v46, v48, v50, v52, v54, v56, v57);
      if (v34)
      {
        OUTLINED_FUNCTION_30_16();
      }

      sub_267EF9368();
      v10 = v57;
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_28_19();
  v35 = sub_267D2B0D4(v1);
  OUTLINED_FUNCTION_27_15(v35);
  v36 = v0[32];
  v37 = v0[33];
  v38 = swift_task_alloc();
  v0[93] = v38;
  *v38 = v0;
  OUTLINED_FUNCTION_5_33(v38);
  OUTLINED_FUNCTION_89();

  sub_267C756EC(v39, v40, v41, v42, v43);
}

uint64_t sub_267D2A784()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 744);
  *v2 = *v0;
  *(v1 + 752) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D2A86C()
{
  v1 = *(v0 + 640);
  if (*(v1 + 88))
  {
    memcpy((v0 + 376), *(v0 + 672), 0x71uLL);
    OUTLINED_FUNCTION_10(dword_267F08D28);
    v17 = v2;
    v3 = swift_task_alloc();
    *(v0 + 760) = v3;
    *v3 = v0;
    v3[1] = sub_267D2AA30;
    v4 = *(v0 + 648);
    v5 = *(v0 + 640);

    return v17(v0 + 376, v5, v4);
  }

  else
  {
    v7 = *(v0 + 752);
    v8 = *(v0 + 672);
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = __swift_project_boxed_opaque_existential_0(*(v0 + 664), *(*(v0 + 664) + 24));
    v12 = *v9;
    v18 = *(v1 + 426);
    sub_267BB8364();
    v13 = swift_task_alloc();
    *(v0 + 800) = v13;
    v13[2] = v9;
    v13[3] = v7;
    v13[4] = v10;
    v13[5] = v1;
    v13[6] = v8;
    v14 = *v11;
    v15 = swift_task_alloc();
    *(v0 + 808) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_37_9(v15);
    OUTLINED_FUNCTION_18_17();

    return sub_267D4474C();
  }
}

uint64_t sub_267D2AA30()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 760);
  *v2 = *v0;
  *(v1 + 768) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D2AB18()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 672);
  v4 = *(v0 + 656);
  v5 = *(v0 + 640);
  v6 = __swift_project_boxed_opaque_existential_0(*(v0 + 664), *(*(v0 + 664) + 24));
  v7 = *v4;
  v13 = *(v5 + 426);
  sub_267BB8364();
  v8 = swift_task_alloc();
  *(v0 + 776) = v8;
  v8[2] = v4;
  v8[3] = v2;
  v8[4] = v1;
  v8[5] = v5;
  v8[6] = v3;
  v9 = *v6;
  v10 = swift_task_alloc();
  *(v0 + 784) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_37_9(v10);
  OUTLINED_FUNCTION_18_17();

  return sub_267D46EDC();
}

uint64_t sub_267D2AC34()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[72] = v1;
  v2[73] = v4;
  v2[74] = v0;
  v6 = v5[98];
  v7 = v5[97];
  v8 = v5[92];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 792) = v0;

  if (v0)
  {
    v12 = sub_267D2ADF0;
  }

  else
  {
    v12 = sub_267D2AD80;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_267D2AD80()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[96];

  v2 = v0[73];
  v3 = v0[94];
  v4 = v0[87];

  v5 = OUTLINED_FUNCTION_18_7();

  return v6(v5);
}

uint64_t sub_267D2ADF0()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[96];
  v2 = v0[94];

  v3 = v0[99];
  v4 = v0[87];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267D2AE60()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[75] = v1;
  v2[76] = v4;
  v2[77] = v0;
  v6 = v5[101];
  v7 = v5[100];
  v8 = v5[92];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v11 + 816) = v0;

  if (v0)
  {
    v12 = sub_267D2B014;
  }

  else
  {
    v12 = sub_267D2AFAC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_267D2AFAC()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[76];
  v2 = v0[94];
  v3 = v0[87];

  v4 = OUTLINED_FUNCTION_18_7();

  return v5(v4);
}

uint64_t sub_267D2B014()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[94];

  v2 = v0[102];
  v3 = v0[87];

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267D2B078()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267D2B0D4(uint64_t a1)
{
  v2 = sub_267EF2E98();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267EF2778();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_267EF2CC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  sub_267BEB520(a1 + 152, v50);
  v47 = xmmword_267F00630;
  v48 = xmmword_267F00630;
  v49 = 0;
  sub_267C5DD80(&v48, v22, v23, v24, v25, v26, v27, v28, v41, v42, v43);
  v30 = v29;
  sub_267B9EF14(v50);
  if (!v30)
  {
    sub_267BEB520(a1 + 152, v50);
    v48 = v47;
    v49 = 0;
    sub_267EF2CB8();
    sub_267C5BD60(&v48, v19);
    (*(v15 + 8))(v19, v14);
    sub_267B9EF14(v50);
    return 1;
  }

  result = 0;
  if (v30 != 1)
  {
    return result;
  }

  sub_267BEB520(a1 + 152, v50);
  v48 = v47;
  v49 = 0;
  sub_267C5C400(&v48, v13);
  sub_267B9EF14(v50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v42 = a1;
  v43 = v2;
  if (EnumTagSinglePayload == 1)
  {
    sub_267EF2CB8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_267B9F98C(v13, &qword_28022BD90, &unk_267EFCDD0);
    }
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
  }

  sub_267EF2E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
  v33 = sub_267EF2E88();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_267EFC020;
  (*(v34 + 104))(v37 + v36, *MEMORY[0x277CC9968], v33);
  sub_267E6EAA0();
  sub_267EF2CB8();
  sub_267EF2E48();

  v38 = *(v15 + 8);
  v38(v19, v14);
  (*(v46 + 8))(v5, v43);
  v39 = sub_267EF2758();
  LOBYTE(v34) = v40;
  (*(v44 + 8))(v9, v45);
  if ((v34 & 1) == 0 && v39 >= 14)
  {
    sub_267BEB520(v42 + 152, v50);
    v48 = v47;
    v49 = 0;
    sub_267EF2CB8();
    sub_267C5BD60(&v48, v19);
    v38(v19, v14);
    sub_267B9EF14(v50);
    v38(v21, v14);
    return 1;
  }

  v38(v21, v14);
  return 0;
}

uint64_t sub_267D2B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  v7 = sub_267EF8248();
  v6[43] = v7;
  v8 = *(v7 - 8);
  v6[44] = v8;
  v9 = *(v8 + 64) + 15;
  v6[45] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D2B748, 0, 0);
}

void sub_267D2B748()
{
  v2 = *(v0 + 400);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  SpokenReactionComponentParameters = type metadata accessor for SearchForMessagesReadSpokenReactionComponentParameters(0);
  *(v0 + 408) = SpokenReactionComponentParameters;
  sub_267B9F98C(v3 + SpokenReactionComponentParameters[6], &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v7 = ComponentPatternCommonParameters[5];
  v8 = sub_267EF79B8();
  *(v0 + 416) = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 16);
  v11 = OUTLINED_FUNCTION_36_12();
  v12(v11);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  *(v0 + 256) = *(v4 + ComponentPatternCommonParameters[6]);
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v17 = *(v0 + 392);
  v16 = *(v0 + 400);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(SpokenReactionComponentParameters[11]);
  *(v0 + 272) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_29_0();
  v19 = *(v0 + 384);
  v18 = *(v0 + 392);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(SpokenReactionComponentParameters[12]);
  *(v0 + 280) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_0();
  v21 = *(v0 + 376);
  v20 = *(v0 + 384);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(SpokenReactionComponentParameters[16]);
  *(v0 + 288) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_0();
  v42 = *(v0 + 376);
  v43 = *(v0 + 296);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v42, v43 + SpokenReactionComponentParameters[18]);
  OUTLINED_FUNCTION_33_9();
  v22 = SpokenReactionComponentParameters[10];
  v23 = *(v21 + v22);

  *(v21 + v22) = v8;
  v24 = SpokenReactionComponentParameters[17];
  v25 = *(v21 + v24);

  *(v21 + v24) = v42;
  v26 = sub_267EF7998();
  OUTLINED_FUNCTION_21_13(v26, v27);
  sub_267C772E8(v0 + 16, v0 + 136);
  *(v0 + 456) = sub_267DB3E10();
  sub_267C77240(v0 + 16);
  v28 = sub_267BDAF74();
  *(v0 + 129) = v28 & 1;
  if (v28)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v29 = swift_task_alloc();
    *(v0 + 464) = v29;
    *v29 = v0;
    v29[1] = sub_267D2BC48;
    OUTLINED_FUNCTION_15();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v43)
  {
    v32 = *(v0 + 392);
    v33 = *(v0 + 400);
    OUTLINED_FUNCTION_3_37();
    (*(v34 + 8))(v21);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_1_42();
    v36(v35);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v37, v38, v39);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D2BC48()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 464);
  *v2 = *v0;
  *(v1 + 130) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D2BD30()
{
  v1 = *(v0 + 130);
  v2 = *(v0 + 129);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v20 = *(v0 + 424);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 344);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v20)
  {
    v10 = *(v0 + 392);
    v11 = *(v0 + 400);
    OUTLINED_FUNCTION_3_37();
    (*(v12 + 8))(v1);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_1_42();
    v15(v14);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v16, v17, v18);
  }

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267D2BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  v7 = sub_267EF8248();
  v6[43] = v7;
  v8 = *(v7 - 8);
  v6[44] = v8;
  v9 = *(v8 + 64) + 15;
  v6[45] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D2BFFC, 0, 0);
}

void sub_267D2BFFC()
{
  v2 = *(v0 + 400);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  ReactionComponentParameters = type metadata accessor for SearchForMessagesReadReactionComponentParameters(0);
  *(v0 + 408) = ReactionComponentParameters;
  sub_267B9F98C(v3 + ReactionComponentParameters[6], &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v7 = ComponentPatternCommonParameters[5];
  v8 = sub_267EF79B8();
  *(v0 + 416) = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 16);
  v11 = OUTLINED_FUNCTION_36_12();
  v12(v11);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  *(v0 + 256) = *(v4 + ComponentPatternCommonParameters[6]);
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v17 = *(v0 + 392);
  v16 = *(v0 + 400);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(ReactionComponentParameters[12]);
  *(v0 + 272) = *(v1 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_29_0();
  v19 = *(v0 + 384);
  v18 = *(v0 + 392);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(ReactionComponentParameters[13]);
  *(v0 + 280) = *(v1 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_0();
  v21 = *(v0 + 376);
  v20 = *(v0 + 384);
  OUTLINED_FUNCTION_0_28();
  OUTLINED_FUNCTION_24_12(ReactionComponentParameters[17]);
  *(v0 + 288) = *(v1 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_0();
  v42 = *(v0 + 376);
  v43 = *(v0 + 296);
  OUTLINED_FUNCTION_2_1();
  sub_267BD3DDC(v42, v43 + ReactionComponentParameters[18]);
  OUTLINED_FUNCTION_33_9();
  v22 = ReactionComponentParameters[11];
  v23 = *(v21 + v22);

  *(v21 + v22) = v8;
  v24 = ReactionComponentParameters[7];
  v25 = *(v21 + v24);

  *(v21 + v24) = v42;
  v26 = sub_267EF7998();
  OUTLINED_FUNCTION_21_13(v26, v27);
  sub_267C772E8(v0 + 16, v0 + 136);
  *(v0 + 456) = sub_267DB3E10();
  sub_267C77240(v0 + 16);
  v28 = sub_267BDAF74();
  *(v0 + 129) = v28 & 1;
  if (v28)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v29 = swift_task_alloc();
    *(v0 + 464) = v29;
    *v29 = v0;
    v29[1] = sub_267D2C4FC;
    OUTLINED_FUNCTION_15();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v43)
  {
    v32 = *(v0 + 392);
    v33 = *(v0 + 400);
    OUTLINED_FUNCTION_3_37();
    (*(v34 + 8))(v21);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_1_42();
    v36(v35);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18_3(v37, v38, v39);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D2C4FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 464);
  *v2 = *v0;
  *(v1 + 130) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D2C5E4(uint64_t a1)
{
  v2 = v1;
  sub_267BE4994(a1, v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x71uLL);
      v3 = *(v1 + 88);
      if (v3)
      {
        v4 = __dst[11];
        if (__dst[11])
        {
          sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
          v5 = v3;
          v6 = v4;
          v7 = sub_267EF9818();

          if (v7)
          {
            v8 = *(v2 + 40);
            if (sub_267BAF0DC(v8))
            {
              sub_267BBD0EC(0, (v8 & 0xC000000000000001) == 0, v8);
              v9 = (v8 & 0xC000000000000001) != 0 ? MEMORY[0x26D609870](0, v8) : *(v8 + 32);
              v10 = v9;
              v11 = [v9 reaction];

              if (v11)
              {
                v12 = __dst[5];
                if (sub_267BAF0DC(__dst[5]) && ((sub_267BBD0EC(0, (v12 & 0xC000000000000001) == 0, v12), (v12 & 0xC000000000000001) != 0) ? (v13 = MEMORY[0x26D609870](0, v12)) : (v13 = *(v12 + 32)), v14 = v13, v15 = [v13 reaction], v14, v15))
                {
                  sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
                  if (sub_267EF9818())
                  {
                    sub_267BE22E4(v12, (v2 + 40));
                    sub_267D29F84(__dst[9], (v2 + 72));

                    sub_267C77240(__dst);
                    return 1;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }

      sub_267C77240(__dst);
    }
  }

  else
  {
    sub_267B9F98C(v19, &qword_280229910, &unk_267EFEB70);
  }

  return 0;
}

uint64_t sub_267D2C830()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_267D2C870()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267D2A1CC();
}

unint64_t sub_267D2C970(uint64_t a1)
{
  result = sub_267C77294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D2C998(uint64_t a1)
{
  result = sub_267D2C9C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D2C9C0()
{
  result = qword_28022B0E8;
  if (!qword_28022B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B0E8);
  }

  return result;
}

uint64_t sub_267D2CA4C()
{
  OUTLINED_FUNCTION_38_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_14_23(v1);

  return sub_267D2BECC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_267D2CAE8()
{
  OUTLINED_FUNCTION_38_12();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_14_23(v1);

  return sub_267D2B618(v2, v3, v4, v5, v6, v7);
}

uint64_t getEnumTagSinglePayload for ReactionType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ReactionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_267D2CC30(uint64_t a1, void *a2)
{
  v26 = a2;
  v2 = a1;
  v3 = sub_267BAF0DC(a1);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v19 = v2 & 0xFFFFFFFFFFFFFF8;
  v20 = v2;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x26D609870](v4, v2);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v9 = sub_267EF8FF8();
    v10 = [v8 valueForKey_];

    if (v10)
    {
      sub_267EF99B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (!*(&v24 + 1))
    {
      sub_267C0BFFC(v25);
LABEL_18:

      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v11 = v26;
    v12 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v12 + 16);
      sub_267BF4EE8();
      v12 = v17;
      *v26 = v17;
    }

    v14 = *(v12 + 16);
    if (v14 >= *(v12 + 24) >> 1)
    {
      sub_267BF4EE8();
      v12 = v18;
      *v26 = v18;
    }

    *(v12 + 16) = v14 + 1;
    v15 = v12 + 16 * v14;
    *(v15 + 32) = v21;
    *(v15 + 40) = v22;

    v6 = v19;
    v2 = v20;
LABEL_19:
    ++v4;
  }
}

void sub_267D2CE50(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_267EF8FF8();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v12;
      v7 = v13;
      goto LABEL_13;
    }
  }

  else
  {
    sub_267C0BFFC(v16);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "#SearchForMessagesFlowSource: Does not contain sessionId field", v11, 2u);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  v6 = 0;
  v7 = 0xE000000000000000;
LABEL_13:
  *a2 = v6;
  a2[1] = v7;
}

void sub_267D2D004(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22[0] = MEMORY[0x277D84F90];
  v6 = sub_267BAF0DC(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = sub_267EF8FF8();
    v4 = [v9 valueForKey_];

    if (v4)
    {
      sub_267EF99B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26 = v24;
    v27 = v25;
    if (*(&v25 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && (v23 & 0x8000000000000000) == 0 && v23 == 2)
      {
        sub_267EF9BD8();
        v11 = *(v22[0] + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        v4 = v22;
        sub_267EF9BE8();
      }

      else
      {
      }
    }

    else
    {

      sub_267C0BFFC(&v26);
    }
  }

  v4 = v22[0];
  if (!sub_267BAF0DC(v22[0]))
  {

    sub_267D2CC30(a3, a4);
    return;
  }

  sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v12 = *(v4 + 32);
    goto LABEL_22;
  }

LABEL_34:
  v12 = MEMORY[0x26D609870](0, v4);
LABEL_22:
  v13 = v12;

  v14 = sub_267EF8FF8();
  v15 = [v13 valueForKey_];

  if (v15)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    if (swift_dynamicCast())
    {
      v16 = v22[0];
      v17 = v22[1];
      sub_267C705CC();
      v18 = *(*a4 + 16);
      sub_267BE55DC(v18);

      v19 = *a4;
      *(v19 + 16) = v18 + 1;
      v20 = v19 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
    }

    else
    {
    }
  }

  else
  {

    sub_267C0BFFC(&v26);
  }
}

unint64_t sub_267D2D32C()
{
  result = qword_28022B0F8;
  if (!qword_28022B0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022B0F8);
  }

  return result;
}

char *sub_267D2D370()
{
  v1 = sub_267C86CD0(v0);
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v3 = sub_267BAF0DC(v1);
  if (!v3)
  {

    v7 = MEMORY[0x277D84F90];
LABEL_13:
    v2 = *(sub_267D2F824(v7) + 16);

    return v2;
  }

  v4 = v3;
  v17 = MEMORY[0x277D84F90];
  result = sub_267BC7934(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v17;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D609870](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_267EF9028();
      v13 = v12;

      v15 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_267BC7934((v14 > 1), v15 + 1, 1);
      }

      ++v6;
      *(v17 + 16) = v15 + 1;
      v16 = v17 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v4 != v6);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_267D2D4D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v64 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = sub_267BBD380(a1);
  if (v16)
  {
    v17 = v16;
    v65 = v15;
    v18 = [a1 nameComponents];
    if (v18)
    {
      v19 = v18;
      sub_267EF2A18();

      v20 = sub_267EF2A58();
      v21 = 0;
    }

    else
    {
      v20 = sub_267EF2A58();
      v21 = 1;
    }

    __swift_storeEnumTagSinglePayload(v12, v21, 1, v20);
    sub_267D2E49C(v12, v14);
    sub_267EF2A58();
    if (__swift_getEnumTagSinglePayload(v14, 1, v20))
    {
      sub_267B9FF34(v14, &unk_28022BCA0, &unk_267EFD990);
    }

    else
    {
      v33 = sub_267EF2A28();
      v35 = v34;
      sub_267B9FF34(v14, &unk_28022BCA0, &unk_267EFD990);
      if (v35)
      {
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v37 = swift_allocObject();
          v37[2] = v65;
          v37[3] = v17;
          v37[4] = v33;
          v37[5] = v35;

          v38 = sub_267D2DA70(v33, v35, sub_267D2E51C, v37);

          if (v38)
          {

            if (qword_280228818 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            v39 = sub_267EF8A08();
            OUTLINED_FUNCTION_30_1(v39, qword_280240FB0);
            v40 = sub_267EF89F8();
            v41 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_36(v41))
            {
              v42 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v42);
              OUTLINED_FUNCTION_17_0(&dword_267B93000, v43, v44, "#ContactsUtils canUseConversationalName for nickname - true");
              OUTLINED_FUNCTION_26();
            }

            goto LABEL_36;
          }
        }

        else
        {
        }
      }
    }

    v30 = [a1 nameComponents];
    if (v30)
    {
      v31 = v30;
      sub_267EF2A18();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v32, 1, v20);
    sub_267D2E49C(v6, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v20))
    {

      sub_267B9FF34(v9, &unk_28022BCA0, &unk_267EFD990);
LABEL_42:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v57 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v57, qword_280240FB0);
      v58 = sub_267EF89F8();
      v59 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v59))
      {
        v60 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v60);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v61, v62, "#ContactsUtils canUseConversationalName failed to determine - returning false");
        OUTLINED_FUNCTION_26();
      }

      v29 = 0;
      goto LABEL_47;
    }

    v45 = sub_267EF2988();
    v47 = v46;
    sub_267B9FF34(v9, &unk_28022BCA0, &unk_267EFD990);
    if (v47)
    {
      v48 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v48 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        v49 = swift_allocObject();
        v49[2] = v65;
        v49[3] = v17;
        v49[4] = v45;
        v49[5] = v47;
        v49[6] = a1;

        v50 = a1;
        v51 = sub_267D2DA70(v45, v47, sub_267D2E50C, v49);

        if ((v51 & 1) == 0)
        {

          goto LABEL_42;
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v52 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v52, qword_280240FB0);
        v40 = sub_267EF89F8();
        v53 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v53))
        {
          v54 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v54);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v55, v56, "#ContactsUtils canUseConversationalName for givenName - true");
          OUTLINED_FUNCTION_26();
        }

LABEL_36:

        v29 = 1;
LABEL_47:
        v28 = 256;
        return v28 | v29;
      }
    }

    goto LABEL_42;
  }

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
    v25 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v25);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v26, v27, "#ContactsUtils canUseConversationalName failed to get contactIdentifier - returning false");
    OUTLINED_FUNCTION_26();
  }

  v28 = 0;
  v29 = 0;
  return v28 | v29;
}

uint64_t sub_267D2DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_267BA9F38(0, &qword_28022B138, 0x277CBDA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  OUTLINED_FUNCTION_94();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267EFCA40;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v7 = sub_267D2DD64();
  v8 = objc_opt_self();
  v9 = sub_267EF8FF8();
  v10 = [v8 predicateForContactsMatchingName_];

  [v7 setPredicate_];
  v23 = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  OUTLINED_FUNCTION_94();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = &v23;
  v13 = swift_allocObject();
  v13[2] = sub_267D2E528;
  v13[3] = v12;
  aBlock[4] = sub_267D2E574;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267D2DDE8;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v15 = [v11 enumerateContactsWithFetchRequest:v7 error:aBlock usingBlock:v14];
  _Block_release(v14);

  v16 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v15)
  {

    v18 = v23;
  }

  else
  {
    v19 = sub_267EF2A78();

    swift_willThrow();
    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

id sub_267D2DD64()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B110, &qword_267F04E38);
  v1 = sub_267EF92D8();

  v2 = [v0 initWithKeysToFetch_];

  return v2;
}

void sub_267D2DDE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

BOOL sub_267D2DE44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 identifier];
  v11 = sub_267EF9028();
  v13 = v12;

  if (v11 == a2 && v13 == a3)
  {
  }

  else
  {
    v15 = sub_267EF9EA8();

    if ((v15 & 1) == 0)
    {
      v16 = [a1 nickname];
      v17 = sub_267EF9028();
      v19 = v18;

      sub_267BB5034();
      v20 = sub_267EF9948();

      if (!v20)
      {
        return 1;
      }

      v21 = [a1 givenName];
      v22 = sub_267EF9028();
      v24 = v23;

      v25 = sub_267EF9948();

      if (!v25)
      {
        return 1;
      }

      v26 = [a1 givenName];
      v27 = sub_267EF9028();
      v29 = v28;

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {
        v31 = [a1 familyName];
        sub_267EF9028();

        v32 = sub_267EF9948();

        return v32 == 0;
      }
    }
  }

  return 0;
}

BOOL sub_267D2E084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v61 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v18 = [a1 identifier];
  v19 = sub_267EF9028();
  v21 = v20;

  if (v19 == a2 && v21 == a3)
  {
  }

  else
  {
    v23 = sub_267EF9EA8();

    if ((v23 & 1) == 0)
    {
      v24 = [a1 nickname];
      v25 = sub_267EF9028();
      v27 = v26;

      v28 = v61;
      v64 = a4;
      v65 = v61;
      v62 = v25;
      v63 = v27;
      sub_267BB5034();
      v29 = sub_267EF9948();

      if (!v29)
      {
        return 1;
      }

      v60 = a6;
      v30 = [a1 givenName];
      v31 = sub_267EF9028();
      v33 = v32;

      v59 = a4;
      v64 = a4;
      v65 = v28;
      v62 = v31;
      v63 = v33;
      v34 = sub_267EF9948();

      if (v34)
      {
        goto LABEL_8;
      }

      v46 = [a1 familyName];
      v47 = sub_267EF9028();
      v49 = v48;

      v50 = [v60 nameComponents];
      if (v50)
      {
        v51 = v50;
        sub_267EF2A18();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v53 = sub_267EF2A58();
      __swift_storeEnumTagSinglePayload(v15, v52, 1, v53);
      sub_267D2E49C(v15, v17);
      if (__swift_getEnumTagSinglePayload(v17, 1, v53))
      {
        sub_267B9FF34(v17, &unk_28022BCA0, &unk_267EFD990);
      }

      else
      {
        v54 = sub_267EF29A8();
        v55 = v56;
        sub_267B9FF34(v17, &unk_28022BCA0, &unk_267EFD990);
        if (v55)
        {
LABEL_22:
          v64 = v54;
          v65 = v55;
          v62 = v47;
          v63 = v49;
          v57 = sub_267EF9948();

          if (!v57)
          {
LABEL_8:
            v35 = [a1 givenName];
            v36 = sub_267EF9028();
            v38 = v37;

            v39 = HIBYTE(v38) & 0xF;
            if ((v38 & 0x2000000000000000) == 0)
            {
              v39 = v36 & 0xFFFFFFFFFFFFLL;
            }

            if (!v39)
            {
              v40 = [a1 familyName];
              v41 = sub_267EF9028();
              v43 = v42;

              v64 = v59;
              v65 = v61;
              v62 = v41;
              v63 = v43;
              v44 = sub_267EF9948();

              return v44 == 0;
            }

            return 0;
          }

          return 1;
        }
      }

      v54 = 0;
      v55 = 0xE000000000000000;
      goto LABEL_22;
    }
  }

  return 0;
}

uint64_t sub_267D2E49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D2E528(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  result = (*(v2 + 16))();
  if (result)
  {
    *a2 = 1;
    *v5 = 0;
  }

  return result;
}

uint64_t sub_267D2E574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_267D2E59C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_267BAF0DC(a2);
  v5 = sub_267C74150(v4, -a1, 0, a2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_267C74A48(v7, a2);
  result = sub_267C74A48(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_267CF6EB4();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_267EF9B98();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_267EF9CC8();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_267D2E6EC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    }

    if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for MessageReadingQualifier(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessageReadingQualifier(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_267D2E7DC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_267D2E7F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_267D2E81C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_267EF9BF8();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v12[0] = *(i - 1);
      v12[1] = v10;

      a1(&v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_267EF9BD8();
      v11 = *(v14 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_267D2E924(void (*a1)(char **__return_ptr, id *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6)
{
  v18 = a6 >> 1;
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v6;
  result = MEMORY[0x277D84F90];
  if (!v8)
  {
    return result;
  }

  v7 = a4;
  v21 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = &v7[8 * a5];
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((a5 + v12) >= v18 || v12 >= v8)
      {
        goto LABEL_15;
      }

      v19 = *&v13[8 * v12];
      v7 = v19;
      a1(&v20, &v19);
      if (v9)
      {
        goto LABEL_18;
      }

      v9 = 0;

      v7 = v20;
      sub_267EF9BD8();
      v16 = *(v21 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      ++v12;
      if (v14 == v8)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

uint64_t sub_267D2EA6C(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    result = sub_267EF9BF8();
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
        v9 = MEMORY[0x26D609870](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v13 = v9;
      a1(&v14, &v13, &v12);

      if (v3)
      {
      }

      sub_267EF9BD8();
      v10 = *(v15 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      if (v8 == i)
      {
        return v15;
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

void sub_267D2EBEC(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v108 - v8;
  v10 = sub_267EF6EA8();
  v11 = OUTLINED_FUNCTION_58(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B140, &qword_267F04E80);
  v19 = OUTLINED_FUNCTION_22(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v113 = v108 - v22;
  v23 = a1[15];
  v120 = v9;
  v115 = v17;
  v116 = v13;
  if (v23)
  {
    v24 = [v23 spokenPhrase];
    v25 = sub_267EF9028();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = *(v18 + 48);
  v29 = v113;
  v30 = sub_267C160C8(&v113[v28], v25, v27);

  v31 = v30;
  *v29 = v30;
  v32 = a1[2];
  swift_bridgeObjectRetain_n();
  sub_267C6F008(3, v32);
  OUTLINED_FUNCTION_11_25();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_16();
  v34 = OUTLINED_FUNCTION_19_15();
  v35 = 0;
  v117 = sub_267D2E924(v34, v36, v37, v38, v39, v40);
  swift_unknownObjectRelease();
  v112 = a3;
  v111 = a1;
  v119 = v28;
  LODWORD(v118) = v31;
  if (a2)
  {
    v110 = 0;
    v114 = v10;
    v41 = a2;
    v122[0] = MEMORY[0x277D84F90];
    v42 = sub_267BAF0DC(v32);
    for (i = 0; v42 != i; ++i)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x26D609870](i, v32);
      }

      else
      {
        if (i >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v44 = *(v32 + 8 * i + 32);
      }

      v45 = v44;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v46 = v45;
      v47 = v41;
      v48 = sub_267EF9818();

      if (v48)
      {
      }

      else
      {
        sub_267EF9BD8();
        v49 = *(v122[0] + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }
    }

    v50 = v122[0];
    a3 = v112;
    a2 = v41;
    a1 = v111;
    v10 = v114;
    v35 = v110;
  }

  else
  {

    v50 = sub_267D2FC10(v51);
  }

  sub_267C6F008(3, v50);
  OUTLINED_FUNCTION_11_25();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25_16();
  v53 = OUTLINED_FUNCTION_19_15();
  v59 = sub_267D2E924(v53, v54, v55, v56, v57, v58);
  swift_unknownObjectRelease();
  v60 = v120;
  sub_267EF6E98();
  if (v35)
  {

    __swift_storeEnumTagSinglePayload(v60, 1, 1, v10);
    sub_267B9F98C(v60, &unk_28022BD40, &unk_267F003E0);
    v61 = 0;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v10);
    v63 = v115;
    v62 = v116;
    (*(v116 + 32))(v115, v60, v10);
    v64 = sub_267DA98DC(a1[13], a1[14], v63);
    v65 = v10;
    v61 = v64;
    (*(v62 + 8))(v63, v65);
  }

  v66 = type metadata accessor for MessagesGroup.Builder(0);
  v67 = OUTLINED_FUNCTION_97(v66);
  v68 = sub_267D55A88();
  sub_267BAF0DC(v32);
  OUTLINED_FUNCTION_43();

  if (__OFADD__(v67, 1))
  {
    goto LABEL_72;
  }

  *(v68 + 16) = (v67 + 1);
  *(v68 + 24) = 0;
  *(v68 + 32) = v67;
  *(v68 + 40) = 0;
  if (__OFSUB__(v67, 1))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  *(v68 + 48) = (v67 - 1);
  *(v68 + 56) = 0;
  if (__OFSUB__(v67, 2))
  {
LABEL_74:
    __break(1u);
    return;
  }

  *(v68 + 64) = (v67 - 2);
  *(v68 + 72) = 0;
  *(v68 + 73) = sub_267BF4920();
  *(v68 + 74) = v61 & 1;
  if (a2)
  {
    v69 = a2;

    v70 = sub_267BC20F4(a3, 0, 0, a1, v69);
  }

  else
  {
    v70 = 0;
  }

  v71 = sub_267D55B40(v70);

  v72 = OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_speakableGroupName;
  swift_beginAccess();
  sub_267BE855C(&v113[v119], v71 + v72);
  swift_endAccess();
  *(v71 + OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_hasLongEmojiOnlyGroupName) = v118;
  sub_267D55B84(v117);
  OUTLINED_FUNCTION_58_1();

  v73 = v72;
  v110 = sub_267D55B90(v59);

  swift_beginAccess();
  v74 = a1[3];
  v75 = *(v74 + 16);
  if (v75)
  {
    v109 = a2;
    v119 = v74 + 32;
    v108[1] = v74;

    v76 = 0;
    v77 = MEMORY[0x277D84F90];
    v114 = v75;
    while (1)
    {
      sub_267B9AFEC(v119 + 40 * v76, v122);
      v78 = v122[4];
      __swift_project_boxed_opaque_existential_0(v122, v122[3]);
      v79 = *(v78 + 16);
      v80 = OUTLINED_FUNCTION_43();
      v73 = v81(v80, v78);

      __swift_destroy_boxed_opaque_existential_0(v122);
      if (v73 >> 62)
      {
        v82 = sub_267EF9A68();
      }

      else
      {
        v82 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v77 >> 62;
      if (v77 >> 62)
      {
        v84 = sub_267EF9A68();
      }

      else
      {
        v84 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v85 = v84 + v82;
      if (__OFADD__(v84, v82))
      {
        goto LABEL_66;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v83)
        {
          goto LABEL_41;
        }

        v86 = v77 & 0xFFFFFFFFFFFFFF8;
        if (v85 <= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v83)
        {
LABEL_41:
          sub_267EF9A68();
          goto LABEL_42;
        }

        v86 = v77 & 0xFFFFFFFFFFFFFF8;
      }

      v87 = *(v86 + 16);
LABEL_42:
      v77 = sub_267EF9BB8();
      v86 = v77 & 0xFFFFFFFFFFFFFF8;
LABEL_43:
      v88 = *(v86 + 16);
      v89 = (*(v86 + 24) >> 1) - v88;
      v90 = v86 + 8 * v88;
      v120 = v86;
      if (v73 >> 62)
      {
        v92 = sub_267EF9A68();
        if (!v92)
        {
LABEL_57:

          if (v82 > 0)
          {
            goto LABEL_67;
          }

          goto LABEL_58;
        }

        v93 = v92;
        v118 = sub_267EF9A68();
        if (v89 < v118)
        {
          goto LABEL_69;
        }

        if (v93 < 1)
        {
          goto LABEL_71;
        }

        v115 = v82;
        v116 = v76;
        v117 = v77;
        v94 = v90 + 32;
        sub_267CF6EF8();
        for (j = 0; j != v93; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v96 = sub_267C73FD8(v121, j, v73);
          v98 = *v97;
          v96(v121, 0);
          *(v94 + 8 * j) = v98;
        }

        v76 = v116;
        v77 = v117;
        v75 = v114;
        v82 = v115;
        v91 = v118;
      }

      else
      {
        v91 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v91)
        {
          goto LABEL_57;
        }

        if (v89 < v91)
        {
          goto LABEL_70;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        swift_arrayInitWithCopy();
      }

      if (v91 < v82)
      {
        goto LABEL_67;
      }

      if (v91 > 0)
      {
        v99 = *(v120 + 2);
        v100 = __OFADD__(v99, v91);
        v101 = v99 + v91;
        if (v100)
        {
          goto LABEL_68;
        }

        *(v120 + 2) = v101;
      }

LABEL_58:
      if (++v76 == v75)
      {

        a3 = v112;
        a2 = v109;
        goto LABEL_63;
      }
    }
  }

  v77 = MEMORY[0x277D84F90];
LABEL_63:
  v102 = sub_267D2F69C(v77);
  sub_267D2F9D8(v102);
  OUTLINED_FUNCTION_43();

  v103 = v110 + OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_numberOfMessages;
  *v103 = v73;
  *(v103 + 8) = 0;
  v104 = type metadata accessor for MessagesGroup(0);
  OUTLINED_FUNCTION_97(v104);
  v105 = OUTLINED_FUNCTION_43();
  sub_267D55C70(v105);

  sub_267B9F98C(v113, &qword_28022B140, &qword_267F04E80);
  v106 = sub_267EF2E38();
  OUTLINED_FUNCTION_22(v106);
  (*(v107 + 8))(a3);
}

uint64_t sub_267D2F790(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_267D327B0();
  v8 = MEMORY[0x26D6091A0](v2, &type metadata for SmsReferenceValue, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_267D30128(&v7, *(a1 + v5++));
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_43();
  }

  return v2;
}

uint64_t sub_267D2F824(uint64_t a1)
{
  result = MEMORY[0x26D6091A0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_267D302A8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_267D2F9D8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_267EF9A68();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_267D2F9F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_267BCEA0C(a1);
  if (v6)
  {
    v7 = sub_267BAF0DC(v6);

    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [a1 speakableGroupName];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];

    sub_267EF9028();
    sub_267EF90F8();

    v12 = sub_267EF79B8();
    v13 = 0;
  }

  else
  {
    v12 = sub_267EF79B8();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v13, 1, v12);
  if (v8 < 2.0 && (v14 = sub_267EF79B8(), __swift_getEnumTagSinglePayload(v5, 1, v14) == 1))
  {

    v15 = 0;
  }

  else
  {
    v16 = type metadata accessor for MessagesGroup.Builder(0);
    OUTLINED_FUNCTION_97(v16);
    v17 = sub_267D55A88();
    *(v17 + 16) = v8;
    *(v17 + 24) = 0;
    v18 = OBJC_IVAR____TtCC16SiriMessagesFlow13MessagesGroup7Builder_speakableGroupName;
    swift_beginAccess();
    sub_267BE855C(v5, v17 + v18);
    swift_endAccess();
    v19 = type metadata accessor for MessagesGroup(0);
    OUTLINED_FUNCTION_97(v19);
    v15 = sub_267D55C70(v17);
  }

  sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
  return v15;
}

unint64_t sub_267D2FC10(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = sub_267EF9A68();
    if (v19)
    {
      v20 = v19;
      v2 = sub_267C74A44(v19, 0);
      sub_267CA201C(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = sub_267EF9A68();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x26D609870]();
          v12 = MEMORY[0x26D609870](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_267D60234(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_267D60234(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

uint64_t sub_267D2FE30(uint64_t result)
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
      sub_267EF7C38();
      result = sub_267EF9358();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_267D2FEA0(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_267BA9F38(0, a2, a3);
      result = sub_267EF9358();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_267D2FEFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_267EFC050;
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

uint64_t sub_267D2FF84(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_267EF9FC8();
  sub_267EF9FE8();
  if (a2)
  {
    v6 = a2;
    sub_267EF9828();
  }

  sub_267EFA018();
  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_16_18();
  v10 = v9 & ~v8;
  if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_11:
    v16 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v18 = a2;
    sub_267D31220(a2, v10, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    *a1 = a2;
    return 1;
  }

  v11 = ~v8;
  while (1)
  {
    v12 = *(*(v4 + 48) + 8 * v10);
    if (!v12)
    {
      break;
    }

    if (a2)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v13 = a2;
      v14 = v12;
      v15 = sub_267EF9818();

      if (v15)
      {

        v20 = *(*(v4 + 48) + 8 * v10);
        goto LABEL_13;
      }
    }

LABEL_10:
    v10 = (v10 + 1) & v11;
    if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v20 = 0;
LABEL_13:
  *a1 = v20;
  v21 = v20;
  return 0;
}

BOOL sub_267D30128(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_267EF9FC8();
  sub_267D6C0D4(a2);
  sub_267EF9128();

  v6 = sub_267EFA018();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v18 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v21;
      sub_267D31400(a2, v8, isUniquelyReferenced_nonNull_native);
      *v21 = v23;
      goto LABEL_12;
    }

    sub_267D6C0D4(*(*(v4 + 48) + v8));
    v11 = v10;
    v13 = v12;
    sub_267D6C0D4(a2);
    if (v11 == v15 && v13 == v14)
    {
      break;
    }

    v17 = sub_267EF9EA8();

    if (v17)
    {
      goto LABEL_11;
    }

    v6 = v8 + 1;
  }

LABEL_11:
  LOBYTE(a2) = *(*(v4 + 48) + v8);
LABEL_12:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_267D302A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_267EF9FC8();
  sub_267EF9128();
  sub_267EFA018();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_16_18();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_267EF9EA8() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_267D315C0(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

BOOL sub_267D303F0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_267EF9FB8();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_267D31728(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_267D304C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_267EF9B18();
    v24 = v10;
    sub_267EF9A28();
    while (1)
    {
      if (!sub_267EF9A98())
      {

        return v10;
      }

      sub_267BA9F38(0, a5, a6);
      swift_dynamicCast();
      v11 = *(v10 + 16);
      if (*(v10 + 24) <= v11)
      {
        sub_267D30FF8(v11 + 1, a3, a4);
      }

      v10 = v24;
      v12 = *(v24 + 40);
      result = sub_267EF9808();
      v14 = v24 + 56;
      v15 = -1 << *(v24 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v24 + 56 + 8 * (v16 >> 6))) == 0)
      {
        break;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v24 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v24 + 48) + 8 * v18) = v23;
      ++*(v24 + 16);
    }

    v19 = 0;
    v20 = (63 - v15) >> 6;
    while (++v17 != v20 || (v19 & 1) == 0)
    {
      v21 = v17 == v20;
      if (v17 == v20)
      {
        v17 = 0;
      }

      v19 |= v21;
      v22 = *(v14 + 8 * v17);
      if (v22 != -1)
      {
        v18 = __clz(__rbit64(~v22)) + (v17 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_267D306A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B180, &qword_267F04EA0);
  result = sub_267EF9B08();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v29 = v2;
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
        goto LABEL_33;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_267D2FEFC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_267EF9FC8();
    sub_267EF9FE8();
    if (v17)
    {
      v19 = v17;
      sub_267EF9828();
    }

    result = sub_267EFA018();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v17;
    ++*(v6 + 16);
    if (!v11)
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
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_267D30910(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B178, &qword_267F04E98);
  result = sub_267EF9B08();
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
      sub_267D2FEFC(0, (v27 + 63) >> 6, v3 + 56);
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
    sub_267EF9FC8();
    sub_267D6C0D4(v17);
    sub_267EF9128();

    result = sub_267EFA018();
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

uint64_t sub_267D30B78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050);
  result = sub_267EF9B08();
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
      sub_267D2FEFC(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_267EF9FC8();
    sub_267EF9128();
    result = sub_267EFA018();
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

uint64_t sub_267D30DD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B190, &unk_267F04EB0);
  result = sub_267EF9B08();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
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

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_267D2FEFC(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_267EF9FB8();
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
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
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

void sub_267D30FF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_15_19(a1, a2, a3);
  v5 = sub_267EF9B08();
  v6 = v5;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v3 = v6;
    return;
  }

  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_12_5();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v4 + 32);
    if (v28 >= 64)
    {
      sub_267D2FEFC(0, (v28 + 63) >> 6, v4 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_16_18();
      *v8 = v29;
    }

    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_4_35();
LABEL_12:
    v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = *(v6 + 40);
    v20 = sub_267EF9808() & ~(-1 << *(v6 + 32));
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_21:
    OUTLINED_FUNCTION_22_16();
    *(v13 + v25) |= v26;
    OUTLINED_FUNCTION_18_18(v27);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (*(v13 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_267D311A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_267EF9808();
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_16_18();
  result = sub_267EF9A08();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_267D31220(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_267D306A0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_267D3182C();
        goto LABEL_18;
      }

      sub_267D31DC4(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_267EF9FC8();
    sub_267EF9FE8();
    if (a1)
    {
      v11 = a1;
      sub_267EF9828();
    }

    v12 = sub_267EFA018();
    v13 = -1 << *(v9 + 32);
    a2 = v12 & ~v13;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v9 + 48) + 8 * a2);
        if (v15)
        {
          if (a1)
          {
            sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
            v16 = a1;
            v17 = v15;
            v18 = sub_267EF9818();

            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        else if (!a1)
        {
          goto LABEL_21;
        }

        a2 = (a2 + 1) & v14;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_18:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229790, &qword_267EFE4C0);
    sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }
}

uint64_t sub_267D31400(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_267D30910(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_267D32008(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_267EF9FC8();
      sub_267D6C0D4(v5);
      sub_267EF9128();

      result = sub_267EFA018();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_267D6C0D4(*(*(v12 + 48) + a2));
        v16 = v15;
        v18 = v17;
        sub_267D6C0D4(v5);
        if (v16 == v20 && v18 == v19)
        {
          goto LABEL_19;
        }

        v22 = sub_267EF9EA8();

        if (v22)
        {
          goto LABEL_20;
        }

        result = a2 + 1;
      }
    }

    result = sub_267D3197C();
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
LABEL_19:

LABEL_20:
    result = sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_267D315C0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_267D30B78(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_267D32240(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_267EF9FC8();
      sub_267EF9128();
      v17 = sub_267EFA018();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_267EF9EA8() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_267D31ABC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_267D31728(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_267D30DD4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_267D32474(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_267EF9FB8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_267D31BAC();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

id sub_267D3182C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B180, &qword_267F04EA0);
  v2 = *v0;
  v3 = sub_267EF9AF8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_267D3197C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B178, &qword_267F04E98);
  v2 = *v0;
  v3 = sub_267EF9AF8();
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

void sub_267D31ABC()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050);
  v6 = *v0;
  v7 = sub_267EF9AF8();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_5_34();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_0_30();
    while (v4)
    {
      OUTLINED_FUNCTION_4_35();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_12_5();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_267D31BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B190, &unk_267F04EB0);
  v2 = *v0;
  v3 = sub_267EF9AF8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void sub_267D31CEC(uint64_t *a1, uint64_t *a2)
{
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_267EF9AF8();
  if (*(v8 + 16))
  {
    v10 = OUTLINED_FUNCTION_5_34();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v3, 8 * v11);
    }

    OUTLINED_FUNCTION_0_30();
    for (; v6; v21 = v20)
    {
      OUTLINED_FUNCTION_4_35();
LABEL_15:
      v19 = v15 | (v4 << 6);
      v20 = *(*(v8 + 48) + 8 * v19);
      *(*(v9 + 48) + 8 * v19) = v20;
    }

    v16 = v4;
    while (1)
    {
      v4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v3 + v4))
      {
        OUTLINED_FUNCTION_12_5();
        v6 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v7 = v9;
  }
}

uint64_t sub_267D31DC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B180, &qword_267F04EA0);
  result = sub_267EF9B08();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_267EF9FC8();
        sub_267EF9FE8();
        if (v16)
        {
          v18 = v16;
          sub_267EF9828();
        }

        result = sub_267EFA018();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v16;
        ++*(v6 + 16);
        if (!v10)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
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

          v2 = v27;
          goto LABEL_29;
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

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_267D32008(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B178, &qword_267F04E98);
  result = sub_267EF9B08();
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
        sub_267EF9FC8();
        sub_267D6C0D4(v16);
        sub_267EF9128();

        result = sub_267EFA018();
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

uint64_t sub_267D32240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B148, &qword_267F0D050);
  result = sub_267EF9B08();
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
        sub_267EF9FC8();

        sub_267EF9128();
        result = sub_267EFA018();
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

uint64_t sub_267D32474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B190, &unk_267F04EB0);
  result = sub_267EF9B08();
  v6 = result;
  if (*(v3 + 16))
  {
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
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_267EF9FB8();
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
        *(*(v6 + 48) + 8 * v21) = v16;
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
          goto LABEL_25;
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
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_267D32660(void *a1)
{
  v1 = [a1 pronouns];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BA9F38(0, &qword_28022B158, 0x277CCAB38);
  v3 = sub_267EF92F8();

  return v3;
}

id sub_267D3276C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_267BC20F4(*(v2 + 16), 0, 0, *(v2 + 24), *a1);
  *a2 = result;
  return result;
}

unint64_t sub_267D327B0()
{
  result = qword_28022B170;
  if (!qword_28022B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B170);
  }

  return result;
}

uint64_t sub_267D32820(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v7 = v4;
      if (v3 == v4)
      {
LABEL_20:
        v16 = 0;
        while (v3 != v16)
        {
          if (v5)
          {
            v17 = MEMORY[0x26D609870](v16, a1);
          }

          else
          {
            if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

            v17 = *(a1 + 8 * v16 + 32);
          }

          v18 = v17;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_102;
          }

          v19 = sub_267DEC22C(v17);
          v21 = v20;

          if (v21)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = 0;
          }

          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = 0xE000000000000000;
          }

          v24 = HIBYTE(v23) & 0xF;
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = v22;
          }

          ++v16;
          if (!v24)
          {
            if (v3 == v7)
            {
              goto LABEL_58;
            }

            OUTLINED_FUNCTION_1_44();
            if (v5)
            {
              v49 = MEMORY[0x26D609870](0, a1);
            }

            else
            {
              v49 = *(a1 + 32);
            }

            v50 = v49;
            v51 = [v49 displayName];

            v52 = sub_267EF9028();
            v54 = v53;

            v55 = HIBYTE(v54) & 0xF;
            v75 = v52;
            if ((v54 & 0x2000000000000000) == 0)
            {
              v55 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (!v55)
            {
LABEL_99:

              return 0;
            }

            for (i = 0; v3 != i; ++i)
            {
              if (v5)
              {
                v57 = MEMORY[0x26D609870](i, a1);
              }

              else
              {
                if (i >= *(v6 + 16))
                {
                  goto LABEL_109;
                }

                v57 = *(a1 + 8 * i + 32);
              }

              v58 = v57;
              if (__OFADD__(i, 1))
              {
                goto LABEL_107;
              }

              v59 = v6;
              v60 = [v57 displayName];
              v61 = sub_267EF9028();
              v63 = v62;

              if (v75 == v61 && v54 == v63)
              {
              }

              else
              {
                v65 = sub_267EF9EA8();

                if ((v65 & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              v6 = v59;
            }

            goto LABEL_98;
          }
        }

        if (v3 == v7)
        {
LABEL_58:
          OUTLINED_FUNCTION_1_44();
          if (v5)
          {
            goto LABEL_110;
          }

          v37 = *(a1 + 32);
          goto LABEL_60;
        }

        OUTLINED_FUNCTION_1_44();
        if (v5)
        {
          v25 = MEMORY[0x26D609870](0, a1);
        }

        else
        {
          v25 = *(a1 + 32);
        }

        v26 = sub_267BC3164(v25, &selRef_customIdentifier);
        if (!v27)
        {
          goto LABEL_115;
        }

        v28 = v26;
        v29 = v27;
        for (j = 0; v3 != j; ++j)
        {
          if (v5)
          {
            v31 = MEMORY[0x26D609870](j, a1);
          }

          else
          {
            if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_108;
            }

            v31 = *(a1 + 8 * j + 32);
          }

          v32 = v31;
          if (__OFADD__(j, 1))
          {
            goto LABEL_105;
          }

          v33 = sub_267DEC22C(v31);
          if (!v34)
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          if (v28 == v33 && v29 == v34)
          {
          }

          else
          {
            v36 = OUTLINED_FUNCTION_4_36();

            if ((v36 & 1) == 0)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_98;
      }

      if (v5)
      {
        v8 = MEMORY[0x26D609870](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_101;
        }

        v8 = *(a1 + 8 * v4 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v10 = sub_267BBD380(v8);
      v12 = v11;

      if (v12)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      if ((v14 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v15 = v13;
      }

      v4 = v7 + 1;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
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
    v37 = MEMORY[0x26D609870](0, a1);
LABEL_60:
    v38 = sub_267BC3164(v37, &selRef_contactIdentifier);
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      for (k = 0; v3 != k; ++k)
      {
        if (v5)
        {
          v43 = MEMORY[0x26D609870](k, a1);
        }

        else
        {
          if (k >= *(v6 + 16))
          {
            goto LABEL_106;
          }

          v43 = *(a1 + 8 * k + 32);
        }

        v44 = v43;
        if (__OFADD__(k, 1))
        {
          goto LABEL_104;
        }

        v45 = sub_267BBD380(v43);
        if (!v46)
        {
          __break(1u);
          goto LABEL_113;
        }

        if (v40 == v45 && v41 == v46)
        {
        }

        else
        {
          v48 = OUTLINED_FUNCTION_4_36();

          if ((v48 & 1) == 0)
          {
            goto LABEL_99;
          }
        }
      }

LABEL_98:

      return 1;
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v67 = sub_267EF8A08();
  __swift_project_value_buffer(v67, qword_280240FB0);
  v68 = sub_267EF89F8();
  v69 = sub_267EF95E8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *(v70 + 4) = OUTLINED_FUNCTION_3_38(4.8149e-34, v76, v71, v72);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v73, v74, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  result = OUTLINED_FUNCTION_2_37();
  __break(1u);
  return result;
}

uint64_t sub_267D32DB4(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = v4;
      if (v3 == v4)
      {
        return v3 == v5;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D609870](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((sub_267DEAE28() & 1) == 0 && (sub_267DEAF90() & 1) == 0 || (v8 = [v7 personHandle]) == 0)
      {

        return v3 == v5;
      }

      v9 = v8;
      v10 = [v8 type];

      v4 = v5 + 1;
      if (v10 != 2)
      {
        return v3 == v5;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *(v15 + 4) = OUTLINED_FUNCTION_3_38(4.8149e-34, v20, v16, v17);
    OUTLINED_FUNCTION_13_20(&dword_267B93000, v18, v19, "Fatal error: %s");
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  result = OUTLINED_FUNCTION_2_37();
  __break(1u);
  return result;
}

uint64_t sub_267D32FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_267EF4BA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = qword_280228818;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);

  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v6;
    v17 = v16;
    v29 = swift_slowAlloc();
    v30 = v29;
    *v17 = 136315138;
    v19 = v3[10];
    v18 = v3[11];
    __swift_project_boxed_opaque_existential_0(v3 + 7, v19);
    (*(v18 + 8))(v19, v18);
    sub_267C31120();
    v20 = v28;
    v21 = sub_267EF9E58();
    v23 = v22;
    (*(v7 + 8))(v10, v20);
    v24 = sub_267BA33E8(v21, v23, &v30);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_267B93000, v14, v15, "#UnsupportedRequestFlow unsupported request: %s", v17, 0xCu);
    v25 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x26D60A7B0](v25, -1, -1);
    MEMORY[0x26D60A7B0](v17, -1, -1);
  }

  sub_267EF4318();
}

uint64_t sub_267D33254(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v6 = sub_267EF4028();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v55 - v12;
  v14 = sub_267EF4CC8();
  v15 = *(v14 - 8);
  v57 = v14;
  v58 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_267EF4228();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v55 - v26);
  sub_267C6D464(a1, &v55 - v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v30 = v28;
    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66[0] = v34;
      *v33 = 136315138;
      v63[0] = v28;
      v35 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v36 = sub_267EF9098();
      v38 = sub_267BA33E8(v36, v37, v66);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_267B93000, v31, v32, "#UnsupportedRequestFlow templating result creation failed: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x26D60A7B0](v34, -1, -1);
      MEMORY[0x26D60A7B0](v33, -1, -1);
    }

    sub_267EF4018();
    v59(v9);

    return (*(v55 + 8))(v9, v56);
  }

  else
  {
    (*(v20 + 32))(v23, v27, v19);
    v40 = a2[5];
    v41 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v40);
    (*(v41 + 8))(v66, v40, v41);
    v42 = a2[5];
    v43 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v42);
    (*(v43 + 8))(v63, v42, v43);
    __swift_project_boxed_opaque_existential_0(v63, v64);
    sub_267EF3BC8();
    v44 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v44);
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    sub_267EF3F48();
    sub_267B9FF34(v61, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v13, &unk_28022AE40, &unk_267EFCB60);
    __swift_destroy_boxed_opaque_existential_0(v66);
    __swift_destroy_boxed_opaque_existential_0(v63);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v45 = sub_267EF8A08();
    __swift_project_value_buffer(v45, qword_280240FB0);
    v46 = sub_267EF89F8();
    v47 = sub_267EF95C8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_267B93000, v46, v47, "#UnsupportedRequestFlow publishing output", v48, 2u);
      MEMORY[0x26D60A7B0](v48, -1, -1);
    }

    v49 = a2[5];
    v50 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v49);
    (*(v50 + 32))(v66, v49, v50);
    __swift_project_boxed_opaque_existential_0(v66, v66[3]);
    v51 = v57;
    v64 = v57;
    v65 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v63);
    v53 = v58;
    (*(v58 + 16))(boxed_opaque_existential_0, v18, v51);
    v54 = swift_allocObject();
    *(v54 + 16) = v59;
    *(v54 + 24) = v60;

    sub_267EF4168();

    (*(v53 + 8))(v18, v51);
    (*(v20 + 8))(v23, v19);
    __swift_destroy_boxed_opaque_existential_0(v63);
    return __swift_destroy_boxed_opaque_existential_0(v66);
  }
}

uint64_t sub_267D33960(void *a1, char a2, void (*a3)(char *), uint64_t *a4)
{
  v8 = sub_267EF4028();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a1;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = a1;
    v16 = sub_267EF89F8();
    v17 = sub_267EF95E8();
    sub_267C16E28(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26[1] = a4;
      v19 = v18;
      v26[0] = swift_slowAlloc();
      v26[2] = a1;
      v27 = v26[0];
      *v19 = 136315138;
      v20 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v21 = sub_267EF9098();
      v23 = sub_267BA33E8(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_267B93000, v16, v17, "#UnsupportedRequestFlow: publishing output failed: %s", v19, 0xCu);
      v24 = v26[0];
      __swift_destroy_boxed_opaque_existential_0(v26[0]);
      MEMORY[0x26D60A7B0](v24, -1, -1);
      MEMORY[0x26D60A7B0](v19, -1, -1);
      sub_267C16E28(a1, 1);
    }

    else
    {

      sub_267C16E28(a1, 1);
    }
  }

  sub_267EF4018();
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_267D33BD4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  return __swift_destroy_boxed_opaque_existential_0(v0 + 13);
}

uint64_t sub_267D33C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_267BCE5E4;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_267D33CFC()
{
  type metadata accessor for UnsupportedRequestFlow();

  return sub_267EF3748();
}

uint64_t sub_267D33D4C(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, char a11, char a12, uint64_t a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v32 = type metadata accessor for MessagesReactionComponentDialogContext.Builder(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  sub_267D34038();
  v35[16] = a1;
  v35[17] = a2;
  v35[18] = a3;
  v35[19] = a4;
  v35[20] = a5;
  v35[21] = a6;
  v35[22] = a7;
  v35[23] = a8;
  v36 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type;
  OUTLINED_FUNCTION_8_28();
  sub_267BE855C(a9, &v35[v36]);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment;
  OUTLINED_FUNCTION_8_28();
  sub_267BE855C(a10, &v35[v37]);
  swift_endAccess();
  v35[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnMyMessage] = a11;
  v35[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage] = a12;
  sub_267D3413C(a13);

  v35[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAndConnector] = a14;
  v35[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAlsoConnector] = a15;
  v35[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsRandomConnector] = a16;
  v38 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_reactionCategory;
  OUTLINED_FUNCTION_8_28();
  sub_267BE855C(a17, &v35[v38]);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_expressionDescription;
  OUTLINED_FUNCTION_8_28();
  sub_267BE855C(a18, &v35[v39]);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_avatarDescription;
  OUTLINED_FUNCTION_8_28();
  sub_267BE855C(a19, &v35[v40]);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_emojiDescription;
  OUTLINED_FUNCTION_8_28();
  sub_267BE855C(a20, &v35[v41]);
  swift_endAccess();
  v42 = &v35[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders];
  *v42 = a21;
  v42[8] = a22 & 1;
  v43 = &v35[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo];
  *v43 = a23;
  v43[8] = a24 & 1;
  v44 = type metadata accessor for MessagesReactionComponentDialogContext(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  sub_267D34250(v35);

  sub_267BBD6F0(a20);
  sub_267BBD6F0(a19);
  sub_267BBD6F0(a18);
  sub_267BBD6F0(a17);
  sub_267BBD6F0(a10);
  sub_267BBD6F0(a9);
  return v47;
}

uint64_t sub_267D34038()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type;
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment);
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnMyMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAndConnector) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAlsoConnector) = 0;
  *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsRandomConnector) = 0;
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_reactionCategory);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_expressionDescription);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_avatarDescription);
  OUTLINED_FUNCTION_23_1(OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_emojiDescription);
  v3 = v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo;
  *v4 = 0;
  *(v4 + 8) = 1;
  return v0;
}

uint64_t sub_267D3413C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage);
  *(v1 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage) = a1;
}

uint64_t sub_267D34188()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment);
  v1 = *(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage);

  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_reactionCategory);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_expressionDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_avatarDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_emojiDescription);
  return v0;
}

uint64_t sub_267D34250(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  *(v1 + 29) = a1[21];
  *(v1 + 30) = a1[22];
  *(v1 + 31) = a1[23];
  v3 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_type;
  OUTLINED_FUNCTION_83();
  sub_267C12290(&a1[v3], v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type);
  v4 = OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_sentiment;
  OUTLINED_FUNCTION_83();
  sub_267C12290(&a1[v4], v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_sentiment);
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnMyMessage) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnMyMessage];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnSendersOwnMessage) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_isReactionOnSendersOwnMessage];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage) = *&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_referencedMessage];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAndConnector) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAndConnector];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAlsoConnector) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsAlsoConnector];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsRandomConnector) = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_needsRandomConnector];
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_reactionCategory);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_avatarDescription);
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_30_17(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_emojiDescription);
  v5 = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders + 8];
  v6 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders;
  *v6 = *&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSenders];
  *(v6 + 8) = v5;
  v7 = *&a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo];
  v8 = a1[OBJC_IVAR____TtCC16SiriMessagesFlow38MessagesReactionComponentDialogContext7Builder_numberOfSendersMinusTwo + 8];

  v9 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo;
  *v9 = v7;
  *(v9 + 8) = v8;
  return v1;
}

void sub_267D34490(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v82 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_2();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  v22 = a1 == 0x6361627061547369 && a2 == 0xE90000000000006BLL;
  if (v22 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[24];
LABEL_7:
    v24 = v85;
    *(v85 + 24) = MEMORY[0x277D839B0];
    *v24 = v23;
    return;
  }

  v26 = a1 == OUTLINED_FUNCTION_21_14() && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[25];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_18_19();
  v28 = v22 && v27 == a2;
  if (v28 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[26];
    goto LABEL_7;
  }

  v29 = a1 == 0x646E657070417369 && a2 == 0xEA00000000006465;
  if (v29 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[27];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v31 = a1 == 0xD000000000000018 && v30 == a2;
  if (v31 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[28];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v33 = a1 == 0xD000000000000017 && v32 == a2;
  if (v33 || (OUTLINED_FUNCTION_0_31(), v83 = v34, (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[29];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v36 = a1 == 0xD00000000000001ALL && v35 == a2;
  if (v36 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[30];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v38 = a1 == 0xD000000000000019 && v37 == a2;
  if (v38 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v23 = v84[31];
    goto LABEL_7;
  }

  v39 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v39 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v40 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type);
    sub_267C12290(v40, v21);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v21);
    if (!v22)
    {
      goto LABEL_138;
    }

    v41 = v21;
    goto LABEL_58;
  }

  v43 = a1 == 0x6E656D69746E6573 && a2 == 0xE900000000000074;
  if (v43 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v44 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_sentiment);
    sub_267C12290(v44, v19);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v19);
    if (!v22)
    {
      goto LABEL_138;
    }

    v41 = v19;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_2_4();
  v46 = a1 == 0xD000000000000015 && v45 == a2;
  if (v46 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnMyMessage;
LABEL_74:
    v23 = v84[v47];
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v49 = a1 == 0xD00000000000001DLL && v48 == a2;
  if (v49 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnSendersOwnMessage;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_18_19();
  v51 = v22 && v50 == a2;
  if (v51 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v52 = *&v84[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage];
    if (!v52)
    {
      goto LABEL_59;
    }

    v53 = type metadata accessor for MessagesReferencedReactionMessage(0);
    v54 = v85;
    *(v85 + 24) = v53;
    *v54 = v52;

    return;
  }

  OUTLINED_FUNCTION_18_19();
  v56 = v22 && v55 == a2;
  if (v56 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAndConnector;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_2_4();
  v58 = a1 == 0xD000000000000012 && v57 == a2;
  if (v58 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAlsoConnector;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_2_4();
  v60 = a1 == 0xD000000000000014 && v59 == a2;
  if (v60 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v47 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsRandomConnector;
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_2_4();
  v62 = a1 == 0xD000000000000010 && v61 == a2;
  if (v62 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v63 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_reactionCategory);
    sub_267C12290(v63, v4);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v4);
    if (!v22)
    {
      goto LABEL_138;
    }

    v41 = v4;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_2_4();
  v65 = a1 == 0xD000000000000015 && v64 == a2;
  if (v65 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v66 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
    sub_267C12290(v66, v3);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v3);
    if (!v22)
    {
      goto LABEL_138;
    }

    v41 = v3;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_18_19();
  v68 = v22 && v67 == a2;
  if (v68 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v69 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_avatarDescription);
    sub_267C12290(v69, v14);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v14);
    if (!v22)
    {
      goto LABEL_138;
    }

    v41 = v14;
LABEL_58:
    sub_267BBD6F0(v41);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_2_4();
  v71 = a1 == 0xD000000000000010 && v70 == a2;
  if (v71 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v72 = OUTLINED_FUNCTION_17_16(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_emojiDescription);
    sub_267C12290(v72, v11);
    sub_267EF79B8();
    OUTLINED_FUNCTION_8_7(v11);
    if (!v22)
    {
LABEL_138:
      OUTLINED_FUNCTION_23_14();
      OUTLINED_FUNCTION_18_0();
      (*(v73 + 32))();
      return;
    }

    v41 = v11;
    goto LABEL_58;
  }

  v75 = a1 == OUTLINED_FUNCTION_9_18() && a2 == v74;
  if (v75 || (OUTLINED_FUNCTION_0_31(), (sub_267EF9EA8() & 1) != 0))
  {
    v76 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders;
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    if (a1 != v83 || v77 != a2)
    {
      OUTLINED_FUNCTION_0_31();
      if ((sub_267EF9EA8() & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v76 = OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo;
  }

  v79 = &v84[v76];
  if (v79[8])
  {
LABEL_59:
    v42 = v85;
    *v85 = 0u;
    *(v42 + 16) = 0u;
    return;
  }

  v80 = *v79;
  v81 = v85;
  *(v85 + 24) = MEMORY[0x277D839F8];
  *v81 = v80;
}

uint64_t sub_267D34CC0()
{
  v0 = sub_267EF9EE8();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

void sub_267D34D18(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_21_14();
      break;
    case 2:
    case 12:
    case 13:
    case 18:
      OUTLINED_FUNCTION_2_4();
      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 10:
    case 11:
    case 14:
    case 15:
    case 16:
    case 17:
    case 19:
    case 21:
      OUTLINED_FUNCTION_11_0();
      break;
    case 20:
      OUTLINED_FUNCTION_9_18();
      break;
    default:
      return;
  }
}

uint64_t sub_267D34FC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D34CC0();
  *a2 = result;
  return result;
}

void sub_267D34FF0(void *a1@<X8>)
{
  sub_267D34D18(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_267D35024@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267D34D14();
  *a1 = result;
  return result;
}

uint64_t sub_267D35058(uint64_t a1)
{
  v2 = sub_267D361F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267D35094(uint64_t a1)
{
  v2 = sub_267D361F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267D350D0()
{
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_sentiment);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage);

  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_reactionCategory);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_avatarDescription);
  sub_267BBD6F0(v0 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_emojiDescription);
  return v0;
}

uint64_t sub_267D35178(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_267D351FC()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267D352D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B1D8, &qword_267F05130);
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v36[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267D361F8();
  sub_267EFA088();
  v14 = v3[24];
  LOBYTE(v37) = 0;
  OUTLINED_FUNCTION_9_3();
  sub_267EF9E18();
  if (!v2)
  {
    v15 = v3[25];
    OUTLINED_FUNCTION_2_38(1);
    v16 = v3[26];
    OUTLINED_FUNCTION_2_38(2);
    v17 = v3[27];
    OUTLINED_FUNCTION_2_38(3);
    v18 = v3[28];
    OUTLINED_FUNCTION_2_38(4);
    v19 = v3[29];
    OUTLINED_FUNCTION_2_38(5);
    v20 = v3[30];
    OUTLINED_FUNCTION_2_38(6);
    v21 = v3[31];
    OUTLINED_FUNCTION_2_38(7);
    LOBYTE(v37) = 8;
    sub_267EF79B8();
    OUTLINED_FUNCTION_14_24();
    sub_267D361B0(v22, v23);
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DF8();
    OUTLINED_FUNCTION_3_39();
    v24 = v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnMyMessage];
    OUTLINED_FUNCTION_2_38(10);
    v25 = v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnSendersOwnMessage];
    OUTLINED_FUNCTION_2_38(11);
    v37 = *&v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage];
    v36[7] = 12;
    type metadata accessor for MessagesReferencedReactionMessage(0);
    OUTLINED_FUNCTION_15_20();
    sub_267D361B0(v26, v27);
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DF8();
    v28 = v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAndConnector];
    OUTLINED_FUNCTION_2_38(13);
    v29 = v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAlsoConnector];
    OUTLINED_FUNCTION_2_38(14);
    v30 = v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsRandomConnector];
    OUTLINED_FUNCTION_2_38(15);
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_3_39();
    v31 = *&v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders];
    v32 = v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders + 8];
    LOBYTE(v37) = 20;
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DD8();
    v33 = *&v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo];
    v34 = v3[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo + 8];
    LOBYTE(v37) = 21;
    OUTLINED_FUNCTION_9_3();
    sub_267EF9DD8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_267D356CC(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_267D35810(a1);
  return v5;
}

void sub_267D35744()
{
  sub_267C11A54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267D35810(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B1C8, &qword_267F05128);
  v20 = OUTLINED_FUNCTION_58(v19);
  v64 = v21;
  v65 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v68 = v1;
  *(v1 + 16) = 0;
  v25 = a1[3];
  v24 = a1[4];
  v66 = a1;
  v26 = a1;
  v28 = &v60 - v27;
  __swift_project_boxed_opaque_existential_0(v26, v25);
  sub_267D361F8();
  v29 = v67;
  sub_267EFA078();
  if (v29)
  {
    v58 = v68;

    v31 = v66;
    type metadata accessor for MessagesReactionComponentDialogContext(0);
    v32 = *(*v58 + 48);
    v33 = *(*v58 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v67 = v14;
    LOBYTE(v70) = 0;
    v30 = sub_267EF9DA8();
    v35 = v68;
    *(v68 + 24) = v30 & 1;
    LOBYTE(v70) = 1;
    v62 = v28;
    v35[25] = sub_267EF9DA8() & 1;
    v35[26] = OUTLINED_FUNCTION_4_37(2) & 1;
    v35[27] = OUTLINED_FUNCTION_4_37(3) & 1;
    v35[28] = OUTLINED_FUNCTION_4_37(4) & 1;
    v35[29] = OUTLINED_FUNCTION_4_37(5) & 1;
    v35[30] = OUTLINED_FUNCTION_4_37(6) & 1;
    v36 = OUTLINED_FUNCTION_4_37(7);
    v60 = v11;
    v61 = v3;
    v35[31] = v36 & 1;
    sub_267EF79B8();
    LOBYTE(v70) = 8;
    OUTLINED_FUNCTION_14_24();
    sub_267D361B0(v37, v38);
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    sub_267C12220(v18, &v35[OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_type]);
    OUTLINED_FUNCTION_11_26(9);
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_sentiment);
    sub_267C12220(v2, v39);
    LOBYTE(v70) = 10;
    v40 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v40, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnMyMessage);
    OUTLINED_FUNCTION_1_45(11);
    v41 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v41, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_isReactionOnSendersOwnMessage);
    type metadata accessor for MessagesReferencedReactionMessage(0);
    v69 = 12;
    OUTLINED_FUNCTION_15_20();
    sub_267D361B0(v42, v43);
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    *(v68 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_referencedMessage) = v70;
    OUTLINED_FUNCTION_1_45(13);
    v44 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v44, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAndConnector);
    OUTLINED_FUNCTION_1_45(14);
    v45 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v45, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsAlsoConnector);
    OUTLINED_FUNCTION_1_45(15);
    v46 = sub_267EF9DA8();
    OUTLINED_FUNCTION_12_21(v46, OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_needsRandomConnector);
    OUTLINED_FUNCTION_11_26(16);
    OUTLINED_FUNCTION_7_28();
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_reactionCategory);
    sub_267C12220(v61, v47);
    OUTLINED_FUNCTION_11_26(17);
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    sub_267C12220(v67, v68 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_expressionDescription);
    OUTLINED_FUNCTION_11_26(18);
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_16_19();
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_avatarDescription);
    sub_267C12220(v60, v48);
    OUTLINED_FUNCTION_11_26(19);
    OUTLINED_FUNCTION_7_28();
    sub_267EF9D88();
    OUTLINED_FUNCTION_31_1(OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_emojiDescription);
    sub_267C12220(v63, v49);
    OUTLINED_FUNCTION_1_45(20);
    v50 = sub_267EF9D68();
    v51 = v68 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSenders;
    *v51 = v50;
    *(v51 + 8) = v52 & 1;
    OUTLINED_FUNCTION_1_45(21);
    v53 = sub_267EF9D68();
    v55 = v54;
    v56 = OUTLINED_FUNCTION_5_35();
    v57(v56);
    v58 = v68;
    v59 = v68 + OBJC_IVAR____TtC16SiriMessagesFlow38MessagesReactionComponentDialogContext_numberOfSendersMinusTwo;
    *v59 = v53;
    *(v59 + 8) = v55 & 1;
    __swift_destroy_boxed_opaque_existential_0(v66);
  }

  return v58;
}

uint64_t sub_267D360D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267D356CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267D361B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267D361F8()
{
  result = qword_28022B1D0;
  if (!qword_28022B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesReactionComponentDialogContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesReactionComponentDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267D363B4()
{
  result = qword_28022B1E0;
  if (!qword_28022B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1E0);
  }

  return result;
}

unint64_t sub_267D3640C()
{
  result = qword_28022B1E8;
  if (!qword_28022B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1E8);
  }

  return result;
}

unint64_t sub_267D36464()
{
  result = qword_28022B1F0;
  if (!qword_28022B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B1F0);
  }

  return result;
}

uint64_t sub_267D364F8(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_267F01440;
  *(v6 + 32) = 7368801;
  *(v6 + 40) = 0xE300000000000000;
  if (a1)
  {
    sub_267EF7958();
    v7 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v7;
  OUTLINED_FUNCTION_12_1();
  *(v6 + 72) = v8;
  *(v6 + 80) = 0xD000000000000017;
  *(v6 + 88) = v9;
  *(v6 + 96) = 0;
  OUTLINED_FUNCTION_202();
  *(v6 + 120) = v10;
  *(v6 + 128) = v11;
  *(v6 + 136) = v12;
  *(v6 + 144) = a2 & 1;
  *(v6 + 168) = v10;
  *(v6 + 176) = 0x7265646E6573;
  *(v6 + 184) = 0xE600000000000000;
  if (a3)
  {
    v13 = sub_267EF77C8();
    v14 = a3;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_38();
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
  }

  *(v6 + 192) = v14;
  *(v6 + 216) = v13;

  return v6;
}

void sub_267D36624()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v10, v80);
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_1(v12, v13, v14, v15, v16, v17, v18, v19, v81);
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_22(v21, v22, v23, v24, v25, v26, v27, v28, v82);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_66_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v34 = swift_allocObject();
  v35 = OUTLINED_FUNCTION_64_7(v34, xmmword_267EFE4F0);
  OUTLINED_FUNCTION_114_3(v35, v36);
  OUTLINED_FUNCTION_170();
  sub_267C2FB6C(v37, v38, v39, &qword_267EFC0B0);
  v40 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v2);
  if (v41)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_169_0();
  }

  else
  {
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_8_9();
    v43 = *(v42 + 32);
    OUTLINED_FUNCTION_170();
    v44();
  }

  OUTLINED_FUNCTION_12_1();
  *(v34 + 80) = 0xD000000000000011;
  *(v34 + 88) = v45;
  Parameters = type metadata accessor for SearchForMessagesOfferFullMessageReadParameters(0);
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, Parameters[5]);
  OUTLINED_FUNCTION_4_38();
  if (v41)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_8_9();
    v48 = *(v47 + 32);
    OUTLINED_FUNCTION_178();
    v49();
  }

  OUTLINED_FUNCTION_12_1();
  *(v34 + 128) = 0xD000000000000011;
  *(v34 + 136) = v50;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, Parameters[6]);
  OUTLINED_FUNCTION_7_0(v5);
  if (v41)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    OUTLINED_FUNCTION_283();
    OUTLINED_FUNCTION_8_9();
    v52 = *(v51 + 32);
    OUTLINED_FUNCTION_159_0();
    v53();
  }

  OUTLINED_FUNCTION_12_1();
  *(v34 + 176) = 0xD000000000000017;
  *(v34 + 184) = v54;
  v55 = MEMORY[0x277D839B0];
  *(v34 + 192) = 0;
  *(v34 + 216) = v55;
  strcpy((v34 + 224), "isAudioReply");
  *(v34 + 237) = 0;
  *(v34 + 238) = -5120;
  *(v34 + 240) = *(v1 + Parameters[7]);
  OUTLINED_FUNCTION_196();
  *(v34 + 264) = v56;
  *(v34 + 272) = v57;
  OUTLINED_FUNCTION_249();
  *(v34 + 280) = v58;
  *(v34 + 288) = *(v1 + Parameters[8]);
  OUTLINED_FUNCTION_202();
  *(v34 + 312) = v59;
  *(v34 + 320) = 0xD000000000000017;
  *(v34 + 328) = v60;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, Parameters[9]);
  OUTLINED_FUNCTION_7_0(v4);
  if (v41)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_214();
  }

  else
  {
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_8_9();
    v62 = *(v61 + 32);
    OUTLINED_FUNCTION_158_1();
    v63();
  }

  OUTLINED_FUNCTION_12_1();
  *(v34 + 368) = 0xD000000000000017;
  *(v34 + 376) = v64;
  OUTLINED_FUNCTION_48_4(&unk_28022AE30, &qword_267EFC0B0, Parameters[10]);
  OUTLINED_FUNCTION_7_0(v3);
  if (v41)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_291();
  }

  else
  {
    OUTLINED_FUNCTION_324();
    OUTLINED_FUNCTION_8_9();
    v66 = *(v65 + 32);
    OUTLINED_FUNCTION_150_0();
    v67();
  }

  OUTLINED_FUNCTION_12_1();
  *(v34 + 416) = 0xD000000000000017;
  *(v34 + 424) = v68;
  sub_267C2FB6C(v1 + Parameters[11], v83, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v83);
  if (v41)
  {
    sub_267B9F98C(v83, &unk_28022AE30, &qword_267EFC0B0);
    *(v34 + 432) = 0u;
    *(v34 + 448) = 0u;
  }

  else
  {
    *(v34 + 456) = v40;
    __swift_allocate_boxed_opaque_existential_0((v34 + 432));
    OUTLINED_FUNCTION_8_9();
    v70 = *(v69 + 32);
    OUTLINED_FUNCTION_150_0();
    v71();
  }

  OUTLINED_FUNCTION_12_1();
  *(v34 + 464) = 0xD000000000000013;
  *(v34 + 472) = v72;
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, Parameters[12]);
  OUTLINED_FUNCTION_7_0(v84);
  if (v41)
  {
    sub_267B9F98C(v84, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    *(v34 + 504) = v40;
    __swift_allocate_boxed_opaque_existential_0((v34 + 480));
    OUTLINED_FUNCTION_8_9();
    v74 = *(v73 + 32);
    OUTLINED_FUNCTION_193();
    v75();
  }

  OUTLINED_FUNCTION_12_1();
  *(v34 + 512) = 0xD000000000000012;
  *(v34 + 520) = v76;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, Parameters[13]);
  OUTLINED_FUNCTION_4_38();
  if (v41)
  {
    sub_267B9F98C(v85, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    OUTLINED_FUNCTION_331();
    OUTLINED_FUNCTION_8_9();
    v78 = *(v77 + 32);
    OUTLINED_FUNCTION_178();
    v79();
  }

  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}

void sub_267D36BF0()
{
  OUTLINED_FUNCTION_48_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_10(v9, v105);
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_1(v11, v12, v13, v14, v15, v16, v17, v18, v106);
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_22(v20, v21, v22, v23, v24, v25, v26, v27, v107);
  v29 = MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_23(v29, v30, v31, v32, v33, v34, v35, v36, v108);
  v38 = MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18_12(v38, v39, v40, v41, v42, v43, v44, v45, v109);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v51 = swift_allocObject();
  v52 = OUTLINED_FUNCTION_64_7(v51, xmmword_267F016E0);
  v54 = OUTLINED_FUNCTION_113_4(v52, v53);
  sub_267C2FB6C(v54, v55, v56, &qword_267EFC0B0);
  v57 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v3);
  if (v58)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_294_0();
  }

  else
  {
    *(v51 + 72) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 48));
    OUTLINED_FUNCTION_8_9();
    v60 = *(v59 + 32);
    OUTLINED_FUNCTION_136();
    v61();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 80) = 0xD000000000000011;
  *(v51 + 88) = v62;
  v63 = type metadata accessor for SearchForMessagesOfferMultilingualReplyParameters(0);
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v63[5]);
  OUTLINED_FUNCTION_7_0(v2);
  if (v58)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    *(v51 + 120) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 96));
    OUTLINED_FUNCTION_8_9();
    v65 = *(v64 + 32);
    OUTLINED_FUNCTION_193();
    v66();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 128) = 0xD000000000000011;
  *(v51 + 136) = v67;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, v63[6]);
  OUTLINED_FUNCTION_7_0(v1);
  if (v58)
  {
    sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    *(v51 + 168) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 144));
    OUTLINED_FUNCTION_8_9();
    v69 = *(v68 + 32);
    OUTLINED_FUNCTION_271();
    v70();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_316(v71);
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v72);
  OUTLINED_FUNCTION_4_38();
  if (v58)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 192) = 0u;
    *(v51 + 208) = 0u;
  }

  else
  {
    *(v51 + 216) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 192));
    OUTLINED_FUNCTION_8_9();
    v74 = *(v73 + 32);
    OUTLINED_FUNCTION_178();
    v75();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 224) = v1;
  *(v51 + 232) = v76;
  OUTLINED_FUNCTION_149_0(MEMORY[0x277D839B0]);
  *(v51 + 360) = v78;
  *(v51 + 368) = v77 | 0x43726566664F0000;
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_202();
  *(v51 + 408) = v79;
  *(v51 + 416) = 0xD000000000000011;
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_202();
  *(v51 + 456) = v80;
  *(v51 + 464) = v1 - 7;
  *(v51 + 472) = v81;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, v63[12]);
  OUTLINED_FUNCTION_7_0(v4);
  if (v58)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 480) = 0u;
    *(v51 + 496) = 0u;
  }

  else
  {
    *(v51 + 504) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 480));
    OUTLINED_FUNCTION_8_9();
    v83 = *(v82 + 32);
    OUTLINED_FUNCTION_159_0();
    v84();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 512) = v1;
  *(v51 + 520) = v85;
  OUTLINED_FUNCTION_240(&unk_28022AE30, &qword_267EFC0B0, v63[13]);
  OUTLINED_FUNCTION_7_0(v4);
  if (v58)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 528) = 0u;
    *(v51 + 544) = 0u;
  }

  else
  {
    *(v51 + 552) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 528));
    OUTLINED_FUNCTION_8_9();
    v87 = *(v86 + 32);
    OUTLINED_FUNCTION_159_0();
    v88();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 560) = v1;
  *(v51 + 568) = v89;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, v63[14]);
  OUTLINED_FUNCTION_7_0(v110);
  if (v58)
  {
    sub_267B9F98C(v110, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 576) = 0u;
    *(v51 + 592) = 0u;
  }

  else
  {
    *(v51 + 600) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 576));
    OUTLINED_FUNCTION_8_9();
    v91 = *(v90 + 32);
    OUTLINED_FUNCTION_158_1();
    v92();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 608) = v1;
  *(v51 + 616) = v93;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v63[15]);
  OUTLINED_FUNCTION_7_0(v111);
  if (v58)
  {
    sub_267B9F98C(v111, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 624) = 0u;
    *(v51 + 640) = 0u;
  }

  else
  {
    *(v51 + 648) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 624));
    OUTLINED_FUNCTION_8_9();
    v95 = *(v94 + 32);
    OUTLINED_FUNCTION_136();
    v96();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 656) = v1 - 4;
  *(v51 + 664) = v97;
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v63[16]);
  OUTLINED_FUNCTION_7_0(v112);
  if (v58)
  {
    sub_267B9F98C(v112, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 672) = 0u;
    *(v51 + 688) = 0u;
  }

  else
  {
    *(v51 + 696) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 672));
    OUTLINED_FUNCTION_8_9();
    v99 = *(v98 + 32);
    OUTLINED_FUNCTION_193();
    v100();
  }

  OUTLINED_FUNCTION_12_1();
  *(v51 + 704) = v1 + 3;
  *(v51 + 712) = v101;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v63[17]);
  OUTLINED_FUNCTION_4_38();
  if (v58)
  {
    sub_267B9F98C(v113, &unk_28022AE30, &qword_267EFC0B0);
    *(v51 + 720) = 0u;
    *(v51 + 736) = 0u;
  }

  else
  {
    *(v51 + 744) = v57;
    __swift_allocate_boxed_opaque_existential_0((v51 + 720));
    OUTLINED_FUNCTION_8_9();
    v103 = *(v102 + 32);
    OUTLINED_FUNCTION_178();
    v104();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267D3731C()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v10, v109);
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_1(v12, v13, v14, v15, v16, v17, v18, v19, v110);
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_22(v21, v22, v23, v24, v25, v26, v27, v28, v111);
  v30 = MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_23(v30, v31, v32, v33, v34, v35, v36, v37, v112);
  v39 = MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18_12(v39, v40, v41, v42, v43, v44, v45, v46, v113);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_89_5();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v52 = OUTLINED_FUNCTION_329();
  v53 = OUTLINED_FUNCTION_64_7(v52, xmmword_267F05290);
  v55 = OUTLINED_FUNCTION_113_4(v53, v54);
  sub_267C2FB6C(v55, v56, v57, &qword_267EFC0B0);
  v58 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v4);
  if (v59)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_294_0();
  }

  else
  {
    *(v52 + 72) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 48));
    OUTLINED_FUNCTION_8_9();
    v61 = *(v60 + 32);
    OUTLINED_FUNCTION_136();
    v62();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 80) = 0xD000000000000011;
  *(v52 + 88) = v63;
  v64 = type metadata accessor for SearchForMessagesOfferReplyParameters(0);
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v64[5]);
  OUTLINED_FUNCTION_7_0(v3);
  if (v59)
  {
    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_129_0();
  }

  else
  {
    *(v52 + 120) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 96));
    OUTLINED_FUNCTION_8_9();
    v66 = *(v65 + 32);
    OUTLINED_FUNCTION_193();
    v67();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 128) = 0xD000000000000011;
  *(v52 + 136) = v68;
  OUTLINED_FUNCTION_281(&unk_28022AE30, &qword_267EFC0B0, v64[6]);
  OUTLINED_FUNCTION_7_0(v2);
  if (v59)
  {
    sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_128_0();
  }

  else
  {
    *(v52 + 168) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 144));
    OUTLINED_FUNCTION_8_9();
    v70 = *(v69 + 32);
    OUTLINED_FUNCTION_271();
    v71();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_316(v72);
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v73);
  OUTLINED_FUNCTION_4_38();
  if (v59)
  {
    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    *(v52 + 192) = 0u;
    *(v52 + 208) = 0u;
  }

  else
  {
    *(v52 + 216) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 192));
    OUTLINED_FUNCTION_8_9();
    v75 = *(v74 + 32);
    OUTLINED_FUNCTION_178();
    v76();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 224) = v2;
  *(v52 + 232) = v77;
  OUTLINED_FUNCTION_149_0(MEMORY[0x277D839B0]);
  *(v52 + 360) = v79;
  *(v52 + 368) = v78 | 0x70756F72470000;
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_196();
  *(v52 + 408) = v80;
  *(v52 + 416) = v81;
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_314();
  OUTLINED_FUNCTION_202();
  *(v52 + 456) = v82;
  *(v52 + 464) = 0xD000000000000011;
  *(v52 + 472) = v83;
  *(v52 + 480) = *(v1 + v64[12]);
  OUTLINED_FUNCTION_202();
  *(v52 + 504) = v84;
  *(v52 + 512) = v2 - 7;
  *(v52 + 520) = v85;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, v64[13]);
  OUTLINED_FUNCTION_7_0(v5);
  if (v59)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    *(v52 + 528) = 0u;
    *(v52 + 544) = 0u;
  }

  else
  {
    *(v52 + 552) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 528));
    OUTLINED_FUNCTION_8_9();
    v87 = *(v86 + 32);
    OUTLINED_FUNCTION_159_0();
    v88();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 560) = v2;
  *(v52 + 568) = v89;
  OUTLINED_FUNCTION_240(&unk_28022AE30, &qword_267EFC0B0, v64[14]);
  OUTLINED_FUNCTION_7_0(v5);
  if (v59)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    *(v52 + 576) = 0u;
    *(v52 + 592) = 0u;
  }

  else
  {
    *(v52 + 600) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 576));
    OUTLINED_FUNCTION_8_9();
    v91 = *(v90 + 32);
    OUTLINED_FUNCTION_159_0();
    v92();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 608) = v2;
  *(v52 + 616) = v93;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, v64[15]);
  OUTLINED_FUNCTION_7_0(v114);
  if (v59)
  {
    sub_267B9F98C(v114, &unk_28022AE30, &qword_267EFC0B0);
    *(v52 + 624) = 0u;
    *(v52 + 640) = 0u;
  }

  else
  {
    *(v52 + 648) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 624));
    OUTLINED_FUNCTION_8_9();
    v95 = *(v94 + 32);
    OUTLINED_FUNCTION_158_1();
    v96();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 656) = v2;
  *(v52 + 664) = v97;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, v64[16]);
  OUTLINED_FUNCTION_7_0(v115);
  if (v59)
  {
    sub_267B9F98C(v115, &unk_28022AE30, &qword_267EFC0B0);
    *(v52 + 672) = 0u;
    *(v52 + 688) = 0u;
  }

  else
  {
    *(v52 + 696) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 672));
    OUTLINED_FUNCTION_8_9();
    v99 = *(v98 + 32);
    OUTLINED_FUNCTION_136();
    v100();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 704) = v2 - 4;
  *(v52 + 712) = v101;
  OUTLINED_FUNCTION_275(&unk_28022AE30, &qword_267EFC0B0, v64[17]);
  OUTLINED_FUNCTION_7_0(v116);
  if (v59)
  {
    sub_267B9F98C(v116, &unk_28022AE30, &qword_267EFC0B0);
    *(v52 + 720) = 0u;
    *(v52 + 736) = 0u;
  }

  else
  {
    *(v52 + 744) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 720));
    OUTLINED_FUNCTION_8_9();
    v103 = *(v102 + 32);
    OUTLINED_FUNCTION_193();
    v104();
  }

  OUTLINED_FUNCTION_12_1();
  *(v52 + 752) = v2 + 3;
  *(v52 + 760) = v105;
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, v64[18]);
  OUTLINED_FUNCTION_4_38();
  if (v59)
  {
    sub_267B9F98C(v117, &unk_28022AE30, &qword_267EFC0B0);
    *(v52 + 768) = 0u;
    *(v52 + 784) = 0u;
  }

  else
  {
    *(v52 + 792) = v58;
    __swift_allocate_boxed_opaque_existential_0((v52 + 768));
    OUTLINED_FUNCTION_8_9();
    v107 = *(v106 + 32);
    OUTLINED_FUNCTION_178();
    v108();
  }

  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_47();
}

void sub_267D37A5C()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_10(v10, v84);
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_1(v12, v13, v14, v15, v16, v17, v18, v19, v85);
  v21 = MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_22(v21, v22, v23, v24, v25, v26, v27, v28, v86);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_142();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v33 = OUTLINED_FUNCTION_329();
  *(v33 + 16) = xmmword_267F05290;
  OUTLINED_FUNCTION_72_7();
  *(v34 + 32) = 0xD000000000000019;
  *(v34 + 40) = v35;
  v36 = *v1;
  if (*v1)
  {
    type metadata accessor for MessagesAggregatedReactionComponentDialogContext(0);
    v37 = v36;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
  }

  *(v33 + 48) = v37;
  OUTLINED_FUNCTION_12_1();
  *(v33 + 72) = v38;
  *(v33 + 80) = v2 + 3;
  *(v33 + 88) = v39;
  AggregatedReactionComponentParameters = type metadata accessor for SearchForMessagesReadAggregatedReactionComponentParameters(0);
  OUTLINED_FUNCTION_35_6(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[5]);
  v41 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v0);
  if (v42)
  {

    sub_267B9F98C(v0, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_166_0();
  }

  else
  {
    *(v33 + 120) = v41;
    __swift_allocate_boxed_opaque_existential_0((v33 + 96));
    OUTLINED_FUNCTION_2_2();
    v44 = *(v43 + 32);
    OUTLINED_FUNCTION_36_5();
    v45();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 128) = v2;
  *(v33 + 136) = v46;
  OUTLINED_FUNCTION_50_5(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[6]);
  OUTLINED_FUNCTION_0_11(v5);
  if (v42)
  {
    sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    *(v33 + 168) = v41;
    __swift_allocate_boxed_opaque_existential_0((v33 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v47 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_305();
  *(v33 + 176) = v5;
  *(v33 + 184) = v48;
  OUTLINED_FUNCTION_49_3(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[7]);
  OUTLINED_FUNCTION_0_11(v4);
  if (v42)
  {
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_217();
  }

  else
  {
    *(v33 + 216) = v41;
    __swift_allocate_boxed_opaque_existential_0((v33 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v49 + 32))();
  }

  OUTLINED_FUNCTION_20_13();
  *(v33 + 224) = v50;
  *(v33 + 232) = v51;
  v52 = *(v1 + AggregatedReactionComponentParameters[8]);
  if (v52)
  {
    type metadata accessor for MessagesDialogContext();
    v53 = v52;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    *(v33 + 248) = 0;
    *(v33 + 256) = 0;
  }

  *(v33 + 240) = v53;
  OUTLINED_FUNCTION_266();
  *(v33 + 264) = v54;
  *(v33 + 272) = v5 + 6;
  *(v33 + 280) = v55;
  v56 = MEMORY[0x277D839B0];
  *(v33 + 288) = 0;
  OUTLINED_FUNCTION_12_1();
  *(v33 + 312) = v56;
  *(v33 + 320) = v5 + 2;
  *(v33 + 328) = v57;
  *(v33 + 336) = *(v1 + AggregatedReactionComponentParameters[9]);
  OUTLINED_FUNCTION_37_10();
  *(v33 + 360) = v56;
  *(v33 + 368) = v58;
  OUTLINED_FUNCTION_36_13();
  *(v33 + 376) = v59;
  *(v33 + 384) = *(v1 + AggregatedReactionComponentParameters[10]);
  OUTLINED_FUNCTION_38_13();
  *(v33 + 408) = v56;
  *(v33 + 416) = v60;
  OUTLINED_FUNCTION_171_0();
  *(v33 + 424) = v61;
  *(v33 + 432) = *(v1 + AggregatedReactionComponentParameters[11]);
  OUTLINED_FUNCTION_12_1();
  *(v33 + 456) = v56;
  *(v33 + 464) = v62;
  *(v33 + 472) = v63;
  OUTLINED_FUNCTION_48_4(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[12]);
  OUTLINED_FUNCTION_0_11(v3);
  if (v42)
  {

    sub_267B9F98C(v3, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_242();
  }

  else
  {
    *(v33 + 504) = v41;
    __swift_allocate_boxed_opaque_existential_0((v33 + 480));
    OUTLINED_FUNCTION_2_2();
    v65 = *(v64 + 32);
    OUTLINED_FUNCTION_104_3();
    v66();
  }

  OUTLINED_FUNCTION_12_1();
  *(v33 + 512) = v5 + 2;
  *(v33 + 520) = v67;
  OUTLINED_FUNCTION_280(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[13]);
  OUTLINED_FUNCTION_0_11(v52);
  if (v42)
  {
    sub_267B9F98C(v52, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_227();
  }

  else
  {
    *(v33 + 552) = v41;
    __swift_allocate_boxed_opaque_existential_0((v33 + 528));
    OUTLINED_FUNCTION_2_2();
    v69 = *(v68 + 32);
    OUTLINED_FUNCTION_36_5();
    v70();
  }

  OUTLINED_FUNCTION_61_10();
  *(v33 + 560) = v71 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
  *(v33 + 568) = 0xE700000000000000;
  v72 = *(v1 + AggregatedReactionComponentParameters[14]);
  *(v33 + 600) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v33 + 576) = v72;
  OUTLINED_FUNCTION_12_1();
  *(v33 + 608) = v5 + 10;
  *(v33 + 616) = v73;
  LOBYTE(v73) = *(v1 + AggregatedReactionComponentParameters[15]);
  *(v33 + 648) = v56;
  *(v33 + 624) = v73;
  OUTLINED_FUNCTION_108_4();
  *(v33 + 656) = v74;
  *(v33 + 664) = v75;
  OUTLINED_FUNCTION_222(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[16]);
  OUTLINED_FUNCTION_0_11(v87);
  if (v42)
  {

    sub_267B9F98C(v87, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_216();
  }

  else
  {
    *(v33 + 696) = v41;
    __swift_allocate_boxed_opaque_existential_0((v33 + 672));
    OUTLINED_FUNCTION_2_2();
    (*(v76 + 32))();
  }

  OUTLINED_FUNCTION_108_4();
  *(v33 + 704) = v77;
  *(v33 + 712) = v78;
  OUTLINED_FUNCTION_186_0(&unk_28022AE30, &qword_267EFC0B0, AggregatedReactionComponentParameters[17]);
  OUTLINED_FUNCTION_0_11(v72);
  if (v42)
  {
    sub_267B9F98C(v72, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_187_0();
  }

  else
  {
    *(v33 + 744) = v41;
    __swift_allocate_boxed_opaque_existential_0((v33 + 720));
    OUTLINED_FUNCTION_2_2();
    v80 = *(v79 + 32);
    OUTLINED_FUNCTION_36_5();
    v81();
  }

  OUTLINED_FUNCTION_35_14();
  *(v33 + 752) = v82;
  OUTLINED_FUNCTION_34_12();
  *(v33 + 760) = v83;
  LOBYTE(v83) = *(v1 + AggregatedReactionComponentParameters[18]);
  *(v33 + 792) = v56;
  *(v33 + 768) = v83;
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_47();
}